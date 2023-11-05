# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
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
# Warmup Iteration   1: 33.648 ms/op
# Warmup Iteration   2: 33.390 ms/op
# Warmup Iteration   3: 33.405 ms/op
# Warmup Iteration   4: 33.388 ms/op
# Warmup Iteration   5: 33.387 ms/op
Iteration   1: 33.388 ms/op
Iteration   2: 33.389 ms/op
Iteration   3: 33.389 ms/op
Iteration   4: 33.388 ms/op
Iteration   5: 33.386 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline":
  33.388 ±(99.9%) 0.005 ms/op [Average]
  (min, avg, max) = (33.386, 33.388, 33.389), stdev = 0.001
  CI (99.9%): [33.382, 33.393] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline:·asm":
PrintAssembly processed: 274553 total address lines.
Perf output processed (skipped 58.911 seconds):
 Column 1: cycles (55537 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 3, compile id 736 

                      0x00007fe36ab1dbe7:   movslq %ecx,%rbx
                      0x00007fe36ab1dbea:   add    %rdx,%rbx
                      0x00007fe36ab1dbed:   cmp    %rbx,%rbp
                      0x00007fe36ab1dbf0:   jbe    0x00007fe36ab1dfcf
                      0x00007fe36ab1dbf6:   cmp    %ecx,%r10d
                      0x00007fe36ab1dbf9:   jbe    0x00007fe36ab1dfcf           ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@190 (line 89)
                      0x00007fe36ab1dbff:   vxorpd %xmm6,%xmm6,%xmm6
                      0x00007fe36ab1dc03:   vcvtsi2sd %r9d,%xmm6,%xmm6          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@52 (line 78)
   0.00%              0x00007fe36ab1dc08:   vsubsd %xmm4,%xmm6,%xmm6            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@62 (line 78)
                      0x00007fe36ab1dc0c:   vmulsd %xmm1,%xmm6,%xmm6            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@66 (line 78)
                      0x00007fe36ab1dc10:   vdivsd %xmm2,%xmm6,%xmm6            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@72 (line 78)
                      0x00007fe36ab1dc14:   vaddsd %xmm5,%xmm6,%xmm7            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
   0.00%              0x00007fe36ab1dc18:   mov    $0x0,%ebx
                      0x00007fe36ab1dc1d:   data16 xchg %ax,%ax                 ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@17 (line 76)
                 ↗ ↗  0x00007fe36ab1dc20:   cmp    %ebx,%r11d
          ╭      │ │  0x00007fe36ab1dc23:   jle    0x00007fe36ab1dcdd           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │      │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@23 (line 76)
          │      │ │  0x00007fe36ab1dc29:   mov    %ebx,%edi
   0.01%  │      │ │  0x00007fe36ab1dc2b:   add    %ecx,%edi                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │      │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@188 (line 89)
   0.05%  │      │ │  0x00007fe36ab1dc2d:   vxorpd %xmm8,%xmm8,%xmm8
          │      │ │  0x00007fe36ab1dc32:   vcvtsi2sd %ebx,%xmm8,%xmm8          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          │      │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@28 (line 77)
   0.03%  │      │ │  0x00007fe36ab1dc36:   vsubsd %xmm4,%xmm8,%xmm8            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │      │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@38 (line 77)
   0.08%  │      │ │  0x00007fe36ab1dc3a:   vmulsd %xmm1,%xmm8,%xmm8            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │      │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@42 (line 77)
   0.01%  │      │ │  0x00007fe36ab1dc3e:   vdivsd %xmm2,%xmm8,%xmm8            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │      │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@48 (line 77)
   0.05%  │      │ │  0x00007fe36ab1dc42:   vaddsd %xmm5,%xmm8,%xmm9            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │      │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   0.03%  │      │ │  0x00007fe36ab1dc46:   mov    $0x1,%r13d
   0.06%  │      │ │  0x00007fe36ab1dc4c:   vmovupd %xmm7,%xmm10
          │╭     │ │  0x00007fe36ab1dc50:   jmp    0x00007fe36ab1dc80           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││     │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@84 (line 81)
          ││     │ │  0x00007fe36ab1dc55:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          ││     │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   5.76%  ││  ↗  │ │  0x00007fe36ab1dc60:   cmp    %r13d,%r8d
          ││╭ │  │ │  0x00007fe36ab1dc63:   jle    0x00007fe36ab1dc9f           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@90 (line 81)
   0.03%  │││ │  │ │  0x00007fe36ab1dc69:   vmulsd %xmm3,%xmm9,%xmm9            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@130 (line 83)
   0.02%  │││ │  │ │  0x00007fe36ab1dc6d:   vmulsd %xmm10,%xmm9,%xmm9           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@133 (line 83)
   1.14%  │││ │  │ │  0x00007fe36ab1dc72:   vaddsd %xmm6,%xmm9,%xmm10           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
   5.64%  │││ │  │ │  0x00007fe36ab1dc76:   vsubsd %xmm12,%xmm11,%xmm9          ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │││ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@119 (line 82)
   0.01%  │││ │  │ │  0x00007fe36ab1dc7b:   vaddsd %xmm8,%xmm9,%xmm9            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   3.48%  │↘│ │  │ │  0x00007fe36ab1dc80:   inc    %r13d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@143 (line 86)
   0.84%  │ │ │  │ │  0x00007fe36ab1dc83:   vmulsd %xmm9,%xmm9,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │ │ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 81)
  23.77%  │ │ │  │ │  0x00007fe36ab1dc88:   vmulsd %xmm10,%xmm10,%xmm12         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │ │ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@102 (line 81)
   1.82%  │ │ │  │ │  0x00007fe36ab1dc8d:   vaddsd %xmm12,%xmm11,%xmm13         ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │ │ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@103 (line 81)
  28.31%  │ │ │  │ │  0x00007fe36ab1dc92:   vucomisd %xmm1,%xmm13
  11.04%  │ │╭│  │ │  0x00007fe36ab1dc96:   jp     0x00007fe36ab1dc9a
   7.50%  │ ││╰  │ │  0x00007fe36ab1dc98:   jbe    0x00007fe36ab1dc60
   0.08%  │ │↘ ╭ │ │  0x00007fe36ab1dc9a:   jmp    0x00007fe36ab1dcbf           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          │ │  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
          │ ↘  │ │ │  0x00007fe36ab1dc9f:   nop
          │    │ │ │  0x00007fe36ab1dca0:   cmp    %r13d,%r8d
          │    │╭│ │  0x00007fe36ab1dca3:   jle    0x00007fe36ab1dcc7           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │    │││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@155 (line 88)
   0.09%  │    │││↗│  0x00007fe36ab1dca9:   vmovsd %xmm5,0x10(%rax,%rdi,8)      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │    │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@172 (line 88)
   0.03%  │    │││││  0x00007fe36ab1dcaf:   mov    0x348(%r15),%rdi             ; ImmutableOopMap {rax=Oop rsi=Oop }
          │    │││││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │    │││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@173 (line 88)
          │    │││││  0x00007fe36ab1dcb6:   test   %eax,(%rdi)                  ;   {poll}
   0.03%  │    │││││  0x00007fe36ab1dcb8:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │    │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@191 (line 76)
   0.04%  │    ││╰││  0x00007fe36ab1dcba:   jmp    0x00007fe36ab1dc20           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │    ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@17 (line 76)
   0.02%  │    ↘│ ││  0x00007fe36ab1dcbf:   dec    %r13d
   0.01%  │     │ ││  0x00007fe36ab1dcc2:   cmp    %r13d,%r8d
          │     │ ╰│  0x00007fe36ab1dcc5:   jg     0x00007fe36ab1dca9           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │     │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@155 (line 88)
   0.01%  │     ↘  │  0x00007fe36ab1dcc7:   vmovsd %xmm0,0x10(%rax,%rdi,8)      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@190 (line 89)
          │        │  0x00007fe36ab1dccd:   mov    0x348(%r15),%rdi             ; ImmutableOopMap {rax=Oop rsi=Oop }
          │        │                                                            ;*iinc {reexecute=1 rethrow=0 return_oop=0}
          │        │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@191 (line 76)
          │        │  0x00007fe36ab1dcd4:   test   %eax,(%rdi)                  ;   {poll}
          │        │  0x00007fe36ab1dcd6:   inc    %ebx
   0.01%  │        ╰  0x00007fe36ab1dcd8:   jmp    0x00007fe36ab1dc20           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@191 (line 76)
          ↘           0x00007fe36ab1dcdd:   mov    0x348(%r15),%rcx             ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                                ;*iinc {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@197 (line 75)
                      0x00007fe36ab1dce4:   test   %eax,(%rcx)                  ;   {poll}
                      0x00007fe36ab1dce6:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@197 (line 75)
                      0x00007fe36ab1dce9:   cmp    %r9d,%r11d
                      0x00007fe36ab1dcec:   jg     0x00007fe36ab1dbe0
                      0x00007fe36ab1dcf2:   mov    0x20(%rsp),%rbp
....................................................................................................
  89.98%  <total for region 1>

....[Hottest Regions]...............................................................................
  89.98%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 3, compile id 736 
   1.14%               kernel  [unknown] 
   1.06%               kernel  [unknown] 
   0.95%               kernel  [unknown] 
   0.20%               kernel  [unknown] 
   0.18%               kernel  [unknown] 
   0.15%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.12%               kernel  [unknown] 
   0.12%            libjvm.so  ElfSymbolTable::lookup 
   0.09%               kernel  [unknown] 
   0.09%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.08%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%                       <unknown> 
   0.05%                       <unknown> 
   0.05%            libjvm.so  xmlStream::write_text 
   0.05%         libc-2.31.so  getifaddrs_internal 
   5.30%  <...other 1257 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  89.98%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 3, compile id 736 
   6.13%               kernel  [unknown] 
   0.53%                       <unknown> 
   0.14%         libc-2.31.so  __strxfrm_l 
   0.13%         libc-2.31.so  __strncat_ssse3 
   0.12%       jvmci, level 4  jdk.incubator.vector.Double256Vector::lanewise, version 2, compile id 950 
   0.12%            libjvm.so  ElfSymbolTable::lookup 
   0.10%            libjvm.so  xmlStream::write_text 
   0.09%       hsdis-amd64.so  print_insn 
   0.09%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.07%         libc-2.31.so  tcache_init.part.0 
   0.07%          c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 1, compile id 1045 
   0.06%   libpthread-2.31.so  __libc_write 
   0.06%            libjvm.so  defaultStream::write 
   0.05%          interpreter  return entry points  
   0.05%         libc-2.31.so  getifaddrs_internal 
   0.05%            libjvm.so  stringStream::write 
   0.05%          interpreter  invokevirtual  182 invokevirtual  
   0.05%            libjvm.so  event_to_env 
   0.04%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   2.03%  <...other 538 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  90.17%       jvmci, level 4
   6.13%               kernel
   1.12%            libjvm.so
   0.66%         libc-2.31.so
   0.53%  libjvmcicompiler.so
   0.53%                     
   0.30%          interpreter
   0.15%       hsdis-amd64.so
   0.14%          c1, level 3
   0.11%   libpthread-2.31.so
   0.09%           ld-2.31.so
   0.04%       perf-40481.map
   0.03%          c1, level 2
   0.01%               [vdso]
   0.00%          c1, level 1
   0.00%     Unknown, level 0
   0.00%         libm-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline
# Parameters: (iterations = 1000, size = 512)

# Run progress: 12.50% complete, ETA 00:13:42
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 133.744 ms/op
# Warmup Iteration   2: 133.177 ms/op
# Warmup Iteration   3: 133.177 ms/op
# Warmup Iteration   4: 133.180 ms/op
# Warmup Iteration   5: 133.187 ms/op
Iteration   1: 133.185 ms/op
Iteration   2: 133.179 ms/op
Iteration   3: 133.188 ms/op
Iteration   4: 132.885 ms/op
Iteration   5: 133.169 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline":
  133.121 ±(99.9%) 0.509 ms/op [Average]
  (min, avg, max) = (132.885, 133.121, 133.188), stdev = 0.132
  CI (99.9%): [132.612, 133.630] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline:·asm":
PrintAssembly processed: 276347 total address lines.
Perf output processed (skipped 59.327 seconds):
 Column 1: cycles (57850 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 5, compile id 747 

                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@72 (line 78)
                      0x00007f7b6ab1f494:   vaddsd %xmm5,%xmm6,%xmm7            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
                      0x00007f7b6ab1f498:   mov    $0x0,%ebx
                      0x00007f7b6ab1f49d:   data16 xchg %ax,%ax                 ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@17 (line 76)
                 ↗ ↗  0x00007f7b6ab1f4a0:   cmp    %ebx,%r11d
          ╭      │ │  0x00007f7b6ab1f4a3:   jle    0x00007f7b6ab1f55d           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │      │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@23 (line 76)
          │      │ │  0x00007f7b6ab1f4a9:   mov    %ebx,%edi
   0.01%  │      │ │  0x00007f7b6ab1f4ab:   add    %ecx,%edi                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │      │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@188 (line 89)
   0.07%  │      │ │  0x00007f7b6ab1f4ad:   vxorpd %xmm8,%xmm8,%xmm8
          │      │ │  0x00007f7b6ab1f4b2:   vcvtsi2sd %ebx,%xmm8,%xmm8          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          │      │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@28 (line 77)
   0.02%  │      │ │  0x00007f7b6ab1f4b6:   vsubsd %xmm4,%xmm8,%xmm8            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │      │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@38 (line 77)
   0.05%  │      │ │  0x00007f7b6ab1f4ba:   vmulsd %xmm1,%xmm8,%xmm8            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │      │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@42 (line 77)
   0.00%  │      │ │  0x00007f7b6ab1f4be:   vdivsd %xmm2,%xmm8,%xmm8            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │      │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@48 (line 77)
   0.05%  │      │ │  0x00007f7b6ab1f4c2:   vaddsd %xmm5,%xmm8,%xmm9            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │      │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   0.02%  │      │ │  0x00007f7b6ab1f4c6:   mov    $0x1,%r13d
   0.05%  │      │ │  0x00007f7b6ab1f4cc:   vmovupd %xmm7,%xmm10
          │╭     │ │  0x00007f7b6ab1f4d0:   jmp    0x00007f7b6ab1f500           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││     │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@84 (line 81)
          ││     │ │  0x00007f7b6ab1f4d5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          ││     │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   5.30%  ││  ↗  │ │  0x00007f7b6ab1f4e0:   cmp    %r13d,%r8d
          ││╭ │  │ │  0x00007f7b6ab1f4e3:   jle    0x00007f7b6ab1f51f           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@90 (line 81)
   0.02%  │││ │  │ │  0x00007f7b6ab1f4e9:   vmulsd %xmm3,%xmm9,%xmm9            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@130 (line 83)
   0.01%  │││ │  │ │  0x00007f7b6ab1f4ed:   vmulsd %xmm10,%xmm9,%xmm9           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@133 (line 83)
   1.18%  │││ │  │ │  0x00007f7b6ab1f4f2:   vaddsd %xmm6,%xmm9,%xmm10           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
   5.51%  │││ │  │ │  0x00007f7b6ab1f4f6:   vsubsd %xmm12,%xmm11,%xmm9          ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │││ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@119 (line 82)
   0.00%  │││ │  │ │  0x00007f7b6ab1f4fb:   vaddsd %xmm8,%xmm9,%xmm9            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   3.48%  │↘│ │  │ │  0x00007f7b6ab1f500:   inc    %r13d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@143 (line 86)
   0.76%  │ │ │  │ │  0x00007f7b6ab1f503:   vmulsd %xmm9,%xmm9,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │ │ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 81)
  23.29%  │ │ │  │ │  0x00007f7b6ab1f508:   vmulsd %xmm10,%xmm10,%xmm12         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │ │ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@102 (line 81)
   1.90%  │ │ │  │ │  0x00007f7b6ab1f50d:   vaddsd %xmm12,%xmm11,%xmm13         ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │ │ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@103 (line 81)
  26.92%  │ │ │  │ │  0x00007f7b6ab1f512:   vucomisd %xmm1,%xmm13
  10.94%  │ │╭│  │ │  0x00007f7b6ab1f516:   jp     0x00007f7b6ab1f51a
   7.65%  │ ││╰  │ │  0x00007f7b6ab1f518:   jbe    0x00007f7b6ab1f4e0
   0.06%  │ │↘ ╭ │ │  0x00007f7b6ab1f51a:   jmp    0x00007f7b6ab1f53f           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          │ │  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   0.01%  │ ↘  │ │ │  0x00007f7b6ab1f51f:   nop
          │    │ │ │  0x00007f7b6ab1f520:   cmp    %r13d,%r8d
          │    │╭│ │  0x00007f7b6ab1f523:   jle    0x00007f7b6ab1f547           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │    │││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@155 (line 88)
   0.08%  │    │││↗│  0x00007f7b6ab1f529:   vmovsd %xmm5,0x10(%rax,%rdi,8)      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │    │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@172 (line 88)
   0.02%  │    │││││  0x00007f7b6ab1f52f:   mov    0x348(%r15),%rdi             ; ImmutableOopMap {rax=Oop rsi=Oop }
          │    │││││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │    │││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@173 (line 88)
          │    │││││  0x00007f7b6ab1f536:   test   %eax,(%rdi)                  ;   {poll}
   0.01%  │    │││││  0x00007f7b6ab1f538:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │    │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@191 (line 76)
   0.05%  │    ││╰││  0x00007f7b6ab1f53a:   jmp    0x00007f7b6ab1f4a0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │    ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@17 (line 76)
   0.02%  │    ↘│ ││  0x00007f7b6ab1f53f:   dec    %r13d
   0.01%  │     │ ││  0x00007f7b6ab1f542:   cmp    %r13d,%r8d
          │     │ ╰│  0x00007f7b6ab1f545:   jg     0x00007f7b6ab1f529           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │     │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@155 (line 88)
   0.00%  │     ↘  │  0x00007f7b6ab1f547:   vmovsd %xmm0,0x10(%rax,%rdi,8)      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@190 (line 89)
          │        │  0x00007f7b6ab1f54d:   mov    0x348(%r15),%rdi             ; ImmutableOopMap {rax=Oop rsi=Oop }
          │        │                                                            ;*iinc {reexecute=1 rethrow=0 return_oop=0}
          │        │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@191 (line 76)
          │        │  0x00007f7b6ab1f554:   test   %eax,(%rdi)                  ;   {poll}
          │        │  0x00007f7b6ab1f556:   inc    %ebx
   0.00%  │        ╰  0x00007f7b6ab1f558:   jmp    0x00007f7b6ab1f4a0           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@191 (line 76)
          ↘           0x00007f7b6ab1f55d:   mov    0x348(%r15),%rcx             ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                                ;*iinc {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@197 (line 75)
                      0x00007f7b6ab1f564:   test   %eax,(%rcx)                  ;   {poll}
                      0x00007f7b6ab1f566:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@197 (line 75)
                      0x00007f7b6ab1f569:   cmp    %r9d,%r11d
                      0x00007f7b6ab1f56c:   jg     0x00007f7b6ab1f460
                      0x00007f7b6ab1f572:   mov    0x20(%rsp),%rbp
....................................................................................................
  87.48%  <total for region 1>

....[Hottest Regions]...............................................................................
  87.48%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 5, compile id 747 
   1.03%               kernel  [unknown] 
   0.94%               kernel  [unknown] 
   0.93%               kernel  [unknown] 
   0.55%               kernel  [unknown] 
   0.54%               kernel  [unknown] 
   0.16%               kernel  [unknown] 
   0.15%               kernel  [unknown] 
   0.15%       jvmci, level 4  jdk.incubator.vector.Double256Vector::lanewise, version 2, compile id 960 
   0.14%               kernel  [unknown] 
   0.14%       jvmci, level 4  jdk.incubator.vector.Double256Vector::lanewise, version 2, compile id 960 
   0.13%            libjvm.so  ElfSymbolTable::lookup 
   0.11%       jvmci, level 4  jdk.incubator.vector.Double256Vector::lanewise, version 2, compile id 960 
   0.09%               kernel  [unknown] 
   0.08%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.08%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.08%            libjvm.so  xmlStream::write_text 
   0.07%               kernel  [unknown] 
   0.07%            libjvm.so  fileStream::write 
   0.06%         libc-2.31.so  __strchr_sse2 
   7.03%  <...other 1705 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  87.48%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 5, compile id 747 
   6.91%               kernel  [unknown] 
   0.60%                       <unknown> 
   0.50%       jvmci, level 4  jdk.incubator.vector.Double256Vector::lanewise, version 2, compile id 960 
   0.26%          c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 1, compile id 1061 
   0.16%         libc-2.31.so  __strncat_ssse3 
   0.13%            libjvm.so  ElfSymbolTable::lookup 
   0.12%         libc-2.31.so  __strxfrm_l 
   0.12%            libjvm.so  xmlStream::write_text 
   0.09%       hsdis-amd64.so  print_insn 
   0.08%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.08%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.08%  libjvmcicompiler.so  GreyObjectsWalker_walkGreyObjects_eb32754f646620dd6416e9c72990a79fa796f775 
   0.07%   libpthread-2.31.so  __libc_write 
   0.07%          c1, level 3  jdk.incubator.vector.Double256Vector::compare, version 1, compile id 993 
   0.07%            libjvm.so  defaultStream::write 
   0.07%            libjvm.so  fileStream::write 
   0.06%         libc-2.31.so  __strchr_sse2 
   0.06%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.06%         libc-2.31.so  tcache_init.part.0 
   2.92%  <...other 709 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  88.15%       jvmci, level 4
   6.91%               kernel
   1.39%            libjvm.so
   0.96%  libjvmcicompiler.so
   0.72%         libc-2.31.so
   0.60%                     
   0.39%          c1, level 3
   0.35%          interpreter
   0.15%       hsdis-amd64.so
   0.15%   libpthread-2.31.so
   0.11%          c1, level 2
   0.08%           ld-2.31.so
   0.03%       perf-40547.map
   0.01%               [vdso]
   0.00%          c1, level 1
   0.00%         libm-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline
# Parameters: (iterations = 2000, size = 256)

# Run progress: 25.00% complete, ETA 00:11:47
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 66.187 ms/op
# Warmup Iteration   2: 65.848 ms/op
# Warmup Iteration   3: 65.847 ms/op
# Warmup Iteration   4: 65.846 ms/op
# Warmup Iteration   5: 65.845 ms/op
Iteration   1: 65.847 ms/op
Iteration   2: 65.847 ms/op
Iteration   3: 65.843 ms/op
Iteration   4: 65.844 ms/op
Iteration   5: 65.845 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline":
  65.845 ±(99.9%) 0.007 ms/op [Average]
  (min, avg, max) = (65.843, 65.845, 65.847), stdev = 0.002
  CI (99.9%): [65.838, 65.852] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline:·asm":
PrintAssembly processed: 271332 total address lines.
Perf output processed (skipped 58.757 seconds):
 Column 1: cycles (55868 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 5, compile id 740 

                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@190 (line 89)
                      0x00007f4c3ab1d93e:   vxorpd %xmm6,%xmm6,%xmm6
                      0x00007f4c3ab1d942:   vcvtsi2sd %ebx,%xmm6,%xmm6          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@52 (line 78)
                      0x00007f4c3ab1d946:   vsubsd %xmm4,%xmm6,%xmm6            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@62 (line 78)
                      0x00007f4c3ab1d94a:   vmulsd %xmm1,%xmm6,%xmm6            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@66 (line 78)
                      0x00007f4c3ab1d94e:   vdivsd %xmm2,%xmm6,%xmm6            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@72 (line 78)
   0.00%              0x00007f4c3ab1d952:   mov    $0x0,%edx
                      0x00007f4c3ab1d957:   nopw   0x0(%rax,%rax,1)             ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@17 (line 76)
   0.00%        ↗↗    0x00007f4c3ab1d960:   cmp    %edx,%r11d
          ╭     ││    0x00007f4c3ab1d963:   jle    0x00007f4c3ab1da1e           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │     ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@23 (line 76)
   0.00%  │     ││    0x00007f4c3ab1d969:   vxorpd %xmm7,%xmm7,%xmm7
   0.00%  │     ││    0x00007f4c3ab1d96d:   vcvtsi2sd %edx,%xmm7,%xmm7          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          │     ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@28 (line 77)
   0.02%  │     ││    0x00007f4c3ab1d971:   vsubsd %xmm4,%xmm7,%xmm7            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │     ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@38 (line 77)
   0.01%  │     ││    0x00007f4c3ab1d975:   vmulsd %xmm1,%xmm7,%xmm7            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │     ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@42 (line 77)
   0.00%  │     ││    0x00007f4c3ab1d979:   vdivsd %xmm2,%xmm7,%xmm7            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │     ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@48 (line 77)
   0.04%  │     ││    0x00007f4c3ab1d97d:   mov    %edx,%ebp
   0.02%  │     ││    0x00007f4c3ab1d97f:   add    %edi,%ebp                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │     ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@188 (line 89)
          │     ││    0x00007f4c3ab1d981:   mov    $0x0,%r13d
   0.00%  │     ││    0x00007f4c3ab1d987:   vmovupd %xmm5,%xmm9
   0.01%  │     ││    0x00007f4c3ab1d98b:   vmovupd %xmm5,%xmm8
   0.01%  │╭    ││    0x00007f4c3ab1d98f:   jmp    0x00007f4c3ab1d9c1           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││    ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@84 (line 81)
          ││    ││    0x00007f4c3ab1d994:   nopl   0x0(%rax,%rax,1)
          ││    ││    0x00007f4c3ab1d99c:   data16 data16 xchg %ax,%ax          ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          ││    ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   5.60%  ││  ↗ ││    0x00007f4c3ab1d9a0:   cmp    %r13d,%r8d
          ││╭ │ ││    0x00007f4c3ab1d9a3:   jle    0x00007f4c3ab1da17           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││ │ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@90 (line 81)
   0.02%  │││ │ ││    0x00007f4c3ab1d9a9:   vmulsd %xmm3,%xmm8,%xmm8            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││ │ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@130 (line 83)
   0.03%  │││ │ ││    0x00007f4c3ab1d9ad:   vmulsd %xmm9,%xmm8,%xmm8            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││ │ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@133 (line 83)
   1.08%  │││ │ ││    0x00007f4c3ab1d9b2:   vaddsd %xmm8,%xmm6,%xmm9            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││ │ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
   5.83%  │││ │ ││    0x00007f4c3ab1d9b7:   vsubsd %xmm11,%xmm10,%xmm8          ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │││ │ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@119 (line 82)
   0.02%  │││ │ ││    0x00007f4c3ab1d9bc:   vaddsd %xmm8,%xmm7,%xmm8            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││ │ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   3.58%  │↘│ │ ││    0x00007f4c3ab1d9c1:   inc    %r13d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │ │ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@143 (line 86)
   0.81%  │ │ │ ││    0x00007f4c3ab1d9c4:   vmulsd %xmm8,%xmm8,%xmm10           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │ │ │ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 81)
  23.76%  │ │ │ ││    0x00007f4c3ab1d9c9:   vmulsd %xmm9,%xmm9,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │ │ │ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@102 (line 81)
   1.74%  │ │ │ ││    0x00007f4c3ab1d9ce:   vaddsd %xmm11,%xmm10,%xmm12         ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │ │ │ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@103 (line 81)
  28.00%  │ │ │ ││    0x00007f4c3ab1d9d3:   vucomisd %xmm1,%xmm12
  10.91%  │ │╭│ ││    0x00007f4c3ab1d9d7:   jp     0x00007f4c3ab1d9db
   7.59%  │ ││╰ ││    0x00007f4c3ab1d9d9:   jbe    0x00007f4c3ab1d9a0           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          │ ││  ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   0.07%  │ │↘  ││    0x00007f4c3ab1d9db:   dec    %r13d
   0.01%  │ │   ││    0x00007f4c3ab1d9de:   xchg   %ax,%ax
   0.01%  │ │   ││    0x00007f4c3ab1d9e0:   cmp    %r13d,%r8d
          │ │  ╭││    0x00007f4c3ab1d9e3:   jle    0x00007f4c3ab1da00           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │  │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@155 (line 88)
   0.01%  │ │  │││↗   0x00007f4c3ab1d9e9:   vmovsd %xmm5,0x10(%rax,%rbp,8)      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │ │  ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@172 (line 88)
   0.03%  │ │  ││││   0x00007f4c3ab1d9ef:   mov    0x348(%r15),%rbp             ; ImmutableOopMap {rax=Oop rsi=Oop }
          │ │  ││││                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ │  ││││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@173 (line 88)
   0.00%  │ │  ││││   0x00007f4c3ab1d9f6:   test   %eax,0x0(%rbp)               ;   {poll}
   0.02%  │ │  ││││   0x00007f4c3ab1d9f9:   inc    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │  ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@191 (line 76)
   0.01%  │ │  │╰││   0x00007f4c3ab1d9fb:   jmp    0x00007f4c3ab1d960           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │ │  │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@17 (line 76)
   0.00%  │ │  ↘ ││↗  0x00007f4c3ab1da00:   vmovsd %xmm0,0x10(%rax,%rbp,8)      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │ │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@190 (line 89)
          │ │    │││  0x00007f4c3ab1da06:   mov    0x348(%r15),%rbp             ; ImmutableOopMap {rax=Oop rsi=Oop }
          │ │    │││                                                            ;*iinc {reexecute=1 rethrow=0 return_oop=0}
          │ │    │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@191 (line 76)
          │ │    │││  0x00007f4c3ab1da0d:   test   %eax,0x0(%rbp)               ;   {poll}
          │ │    │││  0x00007f4c3ab1da10:   inc    %edx
   0.00%  │ │    ╰││  0x00007f4c3ab1da12:   jmp    0x00007f4c3ab1d960           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@191 (line 76)
          │ ↘     ││  0x00007f4c3ab1da17:   cmp    %r13d,%r8d
          │       ╰│  0x00007f4c3ab1da1a:   jg     0x00007f4c3ab1d9e9
          │        ╰  0x00007f4c3ab1da1c:   jmp    0x00007f4c3ab1da00           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@155 (line 88)
          ↘           0x00007f4c3ab1da1e:   mov    0x348(%r15),%rdi             ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                                ;*iinc {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@197 (line 75)
                      0x00007f4c3ab1da25:   test   %eax,(%rdi)                  ;   {poll}
                      0x00007f4c3ab1da27:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  89.25%  <total for region 1>

....[Hottest Regions]...............................................................................
  89.25%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 5, compile id 740 
   1.10%               kernel  [unknown] 
   1.04%               kernel  [unknown] 
   0.98%               kernel  [unknown] 
   0.67%               kernel  [unknown] 
   0.38%               kernel  [unknown] 
   0.17%               kernel  [unknown] 
   0.14%               kernel  [unknown] 
   0.12%            libjvm.so  ElfSymbolTable::lookup 
   0.10%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%   libpthread-2.31.so  __libc_write 
   0.06%               kernel  [unknown] 
   0.06%       jvmci, level 4  jdk.incubator.vector.Double256Vector::lanewise, version 2, compile id 965 
   0.06%            libjvm.so  xmlStream::write_text 
   0.06%         libc-2.31.so  getifaddrs_internal 
   5.39%  <...other 1257 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  89.25%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 5, compile id 740 
   6.75%               kernel  [unknown] 
   0.50%                       <unknown> 
   0.26%       jvmci, level 4  jdk.incubator.vector.Double256Vector::lanewise, version 2, compile id 965 
   0.14%          c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 1, compile id 1046 
   0.12%            libjvm.so  ElfSymbolTable::lookup 
   0.12%         libc-2.31.so  __strxfrm_l 
   0.11%         libc-2.31.so  __strncat_ssse3 
   0.10%            libjvm.so  xmlStream::write_text 
   0.08%       hsdis-amd64.so  print_insn 
   0.07%          c1, level 3  jdk.incubator.vector.Double256Vector::compare, version 1, compile id 982 
   0.06%   libpthread-2.31.so  __libc_write 
   0.06%         libc-2.31.so  getifaddrs_internal 
   0.06%            libjvm.so  defaultStream::write 
   0.05%          interpreter  invokevirtual  182 invokevirtual  
   0.05%            libjvm.so  stringStream::write 
   0.05%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.05%          interpreter  aload  25 aload  
   0.05%          interpreter  return entry points  
   0.04%         libc-2.31.so  tcache_init.part.0 
   2.04%  <...other 509 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  89.61%       jvmci, level 4
   6.75%               kernel
   1.09%            libjvm.so
   0.60%         libc-2.31.so
   0.50%                     
   0.48%  libjvmcicompiler.so
   0.33%          interpreter
   0.25%          c1, level 3
   0.14%       hsdis-amd64.so
   0.11%   libpthread-2.31.so
   0.05%          c1, level 2
   0.04%           ld-2.31.so
   0.04%       perf-40614.map
   0.00%               [vdso]
   0.00%     Unknown, level 0
   0.00%          c1, level 1
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline
# Parameters: (iterations = 2000, size = 512)

# Run progress: 37.50% complete, ETA 00:09:46
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 263.515 ms/op
# Warmup Iteration   2: 262.693 ms/op
# Warmup Iteration   3: 262.687 ms/op
# Warmup Iteration   4: 262.691 ms/op
# Warmup Iteration   5: 262.684 ms/op
Iteration   1: 262.684 ms/op
Iteration   2: 262.680 ms/op
Iteration   3: 262.670 ms/op
Iteration   4: 262.671 ms/op
Iteration   5: 262.668 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline":
  262.675 ±(99.9%) 0.028 ms/op [Average]
  (min, avg, max) = (262.668, 262.675, 262.684), stdev = 0.007
  CI (99.9%): [262.647, 262.703] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline:·asm":
PrintAssembly processed: 275412 total address lines.
Perf output processed (skipped 59.781 seconds):
 Column 1: cycles (60053 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 5, compile id 743 

                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@72 (line 78)
                     0x00007f0c2eb20894:   vaddsd %xmm5,%xmm6,%xmm7            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
                     0x00007f0c2eb20898:   mov    $0x0,%ebx
                     0x00007f0c2eb2089d:   data16 xchg %ax,%ax                 ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@17 (line 76)
                ↗ ↗  0x00007f0c2eb208a0:   cmp    %ebx,%r11d
                │ │  0x00007f0c2eb208a3:   jle    0x00007f0c2eb2095d           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@23 (line 76)
                │ │  0x00007f0c2eb208a9:   mov    %ebx,%edi
   0.00%        │ │  0x00007f0c2eb208ab:   add    %ecx,%edi                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@188 (line 89)
   0.02%        │ │  0x00007f0c2eb208ad:   vxorpd %xmm8,%xmm8,%xmm8
                │ │  0x00007f0c2eb208b2:   vcvtsi2sd %ebx,%xmm8,%xmm8          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
                │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@28 (line 77)
   0.01%        │ │  0x00007f0c2eb208b6:   vsubsd %xmm4,%xmm8,%xmm8            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@38 (line 77)
   0.02%        │ │  0x00007f0c2eb208ba:   vmulsd %xmm1,%xmm8,%xmm8            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@42 (line 77)
   0.00%        │ │  0x00007f0c2eb208be:   vdivsd %xmm2,%xmm8,%xmm8            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
                │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@48 (line 77)
   0.01%        │ │  0x00007f0c2eb208c2:   vaddsd %xmm5,%xmm8,%xmm9            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   0.01%        │ │  0x00007f0c2eb208c6:   mov    $0x1,%r13d
   0.04%        │ │  0x00007f0c2eb208cc:   vmovupd %xmm7,%xmm10
          ╭     │ │  0x00007f0c2eb208d0:   jmp    0x00007f0c2eb20900           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │     │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@84 (line 81)
          │     │ │  0x00007f0c2eb208d5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          │     │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   5.31%  │  ↗  │ │  0x00007f0c2eb208e0:   cmp    %r13d,%r8d
          │╭ │  │ │  0x00007f0c2eb208e3:   jle    0x00007f0c2eb2091f           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@90 (line 81)
   0.01%  ││ │  │ │  0x00007f0c2eb208e9:   vmulsd %xmm3,%xmm9,%xmm9            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@130 (line 83)
   0.01%  ││ │  │ │  0x00007f0c2eb208ed:   vmulsd %xmm10,%xmm9,%xmm9           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@133 (line 83)
   1.01%  ││ │  │ │  0x00007f0c2eb208f2:   vaddsd %xmm6,%xmm9,%xmm10           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
   5.42%  ││ │  │ │  0x00007f0c2eb208f6:   vsubsd %xmm12,%xmm11,%xmm9          ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@119 (line 82)
   0.00%  ││ │  │ │  0x00007f0c2eb208fb:   vaddsd %xmm8,%xmm9,%xmm9            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   3.39%  ↘│ │  │ │  0x00007f0c2eb20900:   inc    %r13d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@143 (line 86)
   0.65%   │ │  │ │  0x00007f0c2eb20903:   vmulsd %xmm9,%xmm9,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           │ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 81)
  22.92%   │ │  │ │  0x00007f0c2eb20908:   vmulsd %xmm10,%xmm10,%xmm12         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           │ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@102 (line 81)
   1.65%   │ │  │ │  0x00007f0c2eb2090d:   vaddsd %xmm12,%xmm11,%xmm13         ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@103 (line 81)
  27.02%   │ │  │ │  0x00007f0c2eb20912:   vucomisd %xmm1,%xmm13
  10.47%   │╭│  │ │  0x00007f0c2eb20916:   jp     0x00007f0c2eb2091a
   7.21%   ││╰  │ │  0x00007f0c2eb20918:   jbe    0x00007f0c2eb208e0
   0.04%   │↘ ╭ │ │  0x00007f0c2eb2091a:   jmp    0x00007f0c2eb2093f           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
           │  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   0.00%   ↘  │ │ │  0x00007f0c2eb2091f:   nop
              │ │ │  0x00007f0c2eb20920:   cmp    %r13d,%r8d
              │╭│ │  0x00007f0c2eb20923:   jle    0x00007f0c2eb20947           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@155 (line 88)
   0.04%      │││↗│  0x00007f0c2eb20929:   vmovsd %xmm5,0x10(%rax,%rdi,8)      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
              │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@172 (line 88)
   0.01%      │││││  0x00007f0c2eb2092f:   mov    0x348(%r15),%rdi             ; ImmutableOopMap {rax=Oop rsi=Oop }
              │││││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
              │││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@173 (line 88)
              │││││  0x00007f0c2eb20936:   test   %eax,(%rdi)                  ;   {poll}
   0.01%      │││││  0x00007f0c2eb20938:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@191 (line 76)
   0.02%      ││╰││  0x00007f0c2eb2093a:   jmp    0x00007f0c2eb208a0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
              ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@17 (line 76)
   0.01%      ↘│ ││  0x00007f0c2eb2093f:   dec    %r13d
   0.00%       │ ││  0x00007f0c2eb20942:   cmp    %r13d,%r8d
               │ ╰│  0x00007f0c2eb20945:   jg     0x00007f0c2eb20929           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@155 (line 88)
   0.01%       ↘  │  0x00007f0c2eb20947:   vmovsd %xmm0,0x10(%rax,%rdi,8)      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@190 (line 89)
                  │  0x00007f0c2eb2094d:   mov    0x348(%r15),%rdi             ; ImmutableOopMap {rax=Oop rsi=Oop }
                  │                                                            ;*iinc {reexecute=1 rethrow=0 return_oop=0}
                  │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@191 (line 76)
                  │  0x00007f0c2eb20954:   test   %eax,(%rdi)                  ;   {poll}
                  │  0x00007f0c2eb20956:   inc    %ebx
                  ╰  0x00007f0c2eb20958:   jmp    0x00007f0c2eb208a0           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@191 (line 76)
                     0x00007f0c2eb2095d:   mov    0x348(%r15),%rcx             ; ImmutableOopMap {rax=Oop rsi=Oop }
....................................................................................................
  85.33%  <total for region 1>

....[Hottest Regions]...............................................................................
  85.33%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 5, compile id 743 
   1.52%               kernel  [unknown] 
   1.00%               kernel  [unknown] 
   0.85%               kernel  [unknown] 
   0.54%               kernel  [unknown] 
   0.45%       jvmci, level 4  jdk.incubator.vector.Double256Vector::lanewise, version 2, compile id 967 
   0.30%       jvmci, level 4  jdk.incubator.vector.Double256Vector::lanewise, version 2, compile id 967 
   0.21%          c1, level 2  jdk.incubator.vector.Double256Vector::bOp, version 1, compile id 985 
   0.17%               kernel  [unknown] 
   0.16%  libjvmcicompiler.so  NodeMap$2_advance_01ad00432814b613116d607b4febe5d760106843 
   0.13%               kernel  [unknown] 
   0.12%               kernel  [unknown] 
   0.11%            libjvm.so  ElfSymbolTable::lookup 
   0.10%       jvmci, level 4  jdk.incubator.vector.Double256Vector::lanewise, version 2, compile id 967 
   0.10%  libjvmcicompiler.so  NodeCostUtil_computeGraphSize_1263a33a4a8178f15e926bfc5b16b71352edddab 
   0.10%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.09%               kernel  [unknown] 
   0.08%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   8.52%  <...other 2048 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  85.33%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 5, compile id 743 
   6.92%               kernel  [unknown] 
   0.89%       jvmci, level 4  jdk.incubator.vector.Double256Vector::lanewise, version 2, compile id 967 
   0.64%                       <unknown> 
   0.57%          c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 1, compile id 1084 
   0.31%          c1, level 2  jdk.incubator.vector.Double256Vector::bOp, version 1, compile id 985 
   0.16%  libjvmcicompiler.so  NodeMap$2_advance_01ad00432814b613116d607b4febe5d760106843 
   0.15%  libjvmcicompiler.so  GreyObjectsWalker_walkGreyObjects_eb32754f646620dd6416e9c72990a79fa796f775 
   0.14%         libc-2.31.so  __strncat_ssse3 
   0.14%         libc-2.31.so  __strxfrm_l 
   0.13%            libjvm.so  xmlStream::write_text 
   0.12%  libjvmcicompiler.so  NodeCostUtil_computeGraphSize_1263a33a4a8178f15e926bfc5b16b71352edddab 
   0.11%       jvmci, level 4  jdk.incubator.vector.Double256Vector::compare, version 2, compile id 1077 
   0.11%            libjvm.so  ElfSymbolTable::lookup 
   0.10%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.10%          c1, level 2  jdk.incubator.vector.Double256Vector::blend, version 1, compile id 977 
   0.08%       hsdis-amd64.so  print_insn 
   0.08%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.08%            libjvm.so  fileStream::write 
   0.06%   libpthread-2.31.so  __libc_write 
   3.80%  <...other 818 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  86.44%       jvmci, level 4
   6.92%               kernel
   2.18%  libjvmcicompiler.so
   1.30%            libjvm.so
   0.68%         libc-2.31.so
   0.65%          c1, level 3
   0.64%                     
   0.47%          c1, level 2
   0.30%          interpreter
   0.15%       hsdis-amd64.so
   0.13%   libpthread-2.31.so
   0.08%           ld-2.31.so
   0.04%       perf-40671.map
   0.01%               [vdso]
   0.00%     Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized
# Parameters: (iterations = 1000, size = 256)

# Run progress: 50.00% complete, ETA 00:07:50
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 88.611 ms/op
# Warmup Iteration   2: 27.013 ms/op
# Warmup Iteration   3: 26.987 ms/op
# Warmup Iteration   4: 26.987 ms/op
# Warmup Iteration   5: 26.993 ms/op
Iteration   1: 26.983 ms/op
Iteration   2: 26.947 ms/op
Iteration   3: 26.946 ms/op
Iteration   4: 26.951 ms/op
Iteration   5: 27.253 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized":
  27.016 ±(99.9%) 0.514 ms/op [Average]
  (min, avg, max) = (26.946, 27.016, 27.253), stdev = 0.134
  CI (99.9%): [26.502, 27.531] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized:·asm":
PrintAssembly processed: 304395 total address lines.
Perf output processed (skipped 58.935 seconds):
 Column 1: cycles (51003 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1038 

 <region is too big to display, has 2245 lines, but threshold is 1000>
....................................................................................................
  71.97%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, jdk.incubator.vector.Double256Vector::bOp, version 2, compile id 1040 

                #           [sp+0x60]  (sp of caller)
                0x00007fbf42b62d60:   mov    0x8(%rsi),%r10d
                0x00007fbf42b62d64:   movabs $0x800000000,%r12
                0x00007fbf42b62d6e:   add    %r12,%r10
                0x00007fbf42b62d71:   xor    %r12,%r12
                0x00007fbf42b62d74:   cmp    %r10,%rax
                0x00007fbf42b62d77:   jne    0x00007fbf3b01e780           ;   {runtime_call ic_miss_stub}
                0x00007fbf42b62d7d:   nop
                0x00007fbf42b62d7e:   xchg   %ax,%ax
              [Verified Entry Point]
   0.63%        0x00007fbf42b62d80:   mov    %eax,-0x14000(%rsp)
   0.63%        0x00007fbf42b62d87:   sub    $0x58,%rsp
   0.05%        0x00007fbf42b62d8b:   mov    %rbp,0x50(%rsp)
   0.64%        0x00007fbf42b62d90:   mov    %rsi,%r10
   0.01%        0x00007fbf42b62d93:   mov    %rdx,%r11
   0.03%        0x00007fbf42b62d96:   test   %r11,%r11
                0x00007fbf42b62d99:   je     0x00007fbf42b63028
   0.04%        0x00007fbf42b62d9f:   mov    0x8(%r11),%eax
   0.59%        0x00007fbf42b62da3:   movabs $0x800000000,%rsi
                0x00007fbf42b62dad:   lea    (%rsi,%rax,1),%rax           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@2 (line 206)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.03%        0x00007fbf42b62db1:   test   %r11,%r11
          ╭     0x00007fbf42b62db4:   je     0x00007fbf42b62dcd
   0.05%  │     0x00007fbf42b62dba:   movabs $0x800c3d000,%rsi            ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.52%  │     0x00007fbf42b62dc4:   cmp    %rax,%rsi
          │     0x00007fbf42b62dc7:   jne    0x00007fbf42b6347c           ; ImmutableOopMap {rcx=Oop r10=Oop r11=Oop }
          │                                                               ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                               ; - (reexecute) jdk.incubator.vector.Double256Vector::bOp@0 (line 41)
   0.01%  ↘     0x00007fbf42b62dcd:   test   %eax,(%r11)                  ; implicit exception: dispatches to 0x00007fbf42b6349a
   0.03%        0x00007fbf42b62dd0:   mov    0xc(%r10),%esi               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                          ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 201)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.04%        0x00007fbf42b62dd4:   test   %esi,%esi
                0x00007fbf42b62dd6:   je     0x00007fbf42b63034
   0.53%        0x00007fbf42b62ddc:   mov    0x8(,%rsi,8),%eax
   0.15%        0x00007fbf42b62de3:   movabs $0x800000000,%rdx
   0.04%        0x00007fbf42b62ded:   lea    (%rdx,%rax,1),%rax
   0.04%        0x00007fbf42b62df1:   movabs $0x800006650,%rbp            ;   {metadata({type array double})}
   0.53%        0x00007fbf42b62dfb:   nopl   0x0(%rax,%rax,1)
   0.00%        0x00007fbf42b62e00:   test   %esi,%esi
           ╭    0x00007fbf42b62e02:   je     0x00007fbf42b62e11           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
           │                                                              ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 201)
           │                                                              ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           │                                                              ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.03%   │    0x00007fbf42b62e08:   cmp    %rax,%rbp
           │    0x00007fbf42b62e0b:   jne    0x00007fbf42b6344f           ; ImmutableOopMap {rcx=Oop rsi=NarrowOop r10=Oop r11=Oop }
           │                                                              ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
           │                                                              ; - (reexecute) jdk.incubator.vector.Double256Vector::bOp@0 (line 41)
   0.08%   ↘    0x00007fbf42b62e11:   cmpl   $0x4,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007fbf42b634b6
   0.54%        0x00007fbf42b62e19:   jb     0x00007fbf42b6342e
   0.06%        0x00007fbf42b62e1f:   mov    0xc(%r11),%edx               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                          ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 202)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.06%        0x00007fbf42b62e23:   test   %edx,%edx
                0x00007fbf42b62e25:   je     0x00007fbf42b63040
   0.48%        0x00007fbf42b62e2b:   mov    0x8(,%rdx,8),%eax
   0.05%        0x00007fbf42b62e32:   movabs $0x800000000,%r8
   0.04%        0x00007fbf42b62e3c:   lea    (%r8,%rax,1),%rax
   0.04%        0x00007fbf42b62e40:   test   %edx,%edx
            ╭   0x00007fbf42b62e42:   je     0x00007fbf42b62e51           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │                                                             ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
            │                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 202)
            │                                                             ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            │                                                             ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.49%    │   0x00007fbf42b62e48:   cmp    %rax,%rbp
            │   0x00007fbf42b62e4b:   jne    0x00007fbf42b6346d           ; ImmutableOopMap {rcx=Oop rdx=NarrowOop rsi=NarrowOop r10=Oop r11=Oop }
            │                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
            │                                                             ; - (reexecute) jdk.incubator.vector.Double256Vector::bOp@0 (line 41)
   0.01%    ↘   0x00007fbf42b62e51:   mov    0xc(,%rdx,8),%eax            ; implicit exception: dispatches to 0x00007fbf42b634d2
   0.03%        0x00007fbf42b62e58:   vmovupd 0x10(,%rdx,8),%ymm0
   7.76%        0x00007fbf42b62e61:   cmp    $0x4,%eax
                0x00007fbf42b62e64:   jb     0x00007fbf42b6348b           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 204)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.04%        0x00007fbf42b62e6a:   vmovupd 0x10(,%rsi,8),%ymm1
   0.11%        0x00007fbf42b62e73:   test   %rcx,%rcx
             ╭  0x00007fbf42b62e76:   je     0x00007fbf42b62f19
   0.04%     │  0x00007fbf42b62e7c:   mov    0x8(%rcx),%r8d
   0.59%     │  0x00007fbf42b62e80:   cmp    $0xc84aa0,%r8d               ;   {metadata(&apos;jdk/incubator/vector/DoubleVector$$Lambda$69+0x0000000800c84aa0&apos;)}
             │  0x00007fbf42b62e87:   jne    0x00007fbf42b63085           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.03%     │  0x00007fbf42b62e8d:   mov    0x108(%r15),%rax
   0.01%     │  0x00007fbf42b62e94:   lea    0x40(%rax),%rsi
   0.02%     │  0x00007fbf42b62e98:   vsubpd %ymm0,%ymm1,%ymm0
   2.92%     │  0x00007fbf42b62e9c:   nopl   0x0(%rax)
   0.01%     │  0x00007fbf42b62ea0:   cmp    0x118(%r15),%rsi
             │  0x00007fbf42b62ea7:   ja     0x00007fbf42b63098
   0.00%     │  0x00007fbf42b62ead:   mov    %rsi,0x108(%r15)
   0.02%     │  0x00007fbf42b62eb4:   prefetchw 0x100(%rax)
   0.57%     │  0x00007fbf42b62ebb:   nopl   0x0(%rax,%rax,1)
   0.01%     │  0x00007fbf42b62ec0:   test   %rax,%rax
             │  0x00007fbf42b62ec3:   je     0x00007fbf42b63098
   0.01%     │  0x00007fbf42b62ec9:   mov    %rax,%rsi                    ;*new {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
             │                                                            ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
             │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@62 (line 206)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.03%     │  0x00007fbf42b62ecc:   lea    0x10(%rax),%rdx              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.59%     │  0x00007fbf42b62ed0:   movq   $0x1,(%rax)
   0.01%     │  0x00007fbf42b62ed7:   movl   $0xc3d000,0x8(%rax)          ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
             │  0x00007fbf42b62ede:   shr    $0x3,%rdx                    ;*new {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
             │                                                            ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
             │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@62 (line 206)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.02%     │  0x00007fbf42b62ee2:   mov    %edx,0xc(%rax)
   0.61%     │  0x00007fbf42b62ee5:   movl   $0x4,0x1c(%rax)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.01%     │  0x00007fbf42b62eec:   movq   $0x1,0x10(%rax)
   0.00%     │  0x00007fbf42b62ef4:   movl   $0x6650,0x18(%rax)           ;   {metadata({type array double})}
   0.02%     │  0x00007fbf42b62efb:   vmovupd %ymm0,0x20(%rax)
   0.58%     │  0x00007fbf42b62f00:   mov    %rsi,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 41)
   0.01%     │  0x00007fbf42b62f03:   mov    0x50(%rsp),%rbp
   0.07%     │  0x00007fbf42b62f08:   add    $0x58,%rsp
   0.02%     │  0x00007fbf42b62f0c:   mov    0x348(%r15),%rcx
   0.65%     │  0x00007fbf42b62f13:   test   %eax,(%rcx)                  ;   {poll_return}
   0.10%     │  0x00007fbf42b62f15:   vzeroupper 
   0.71%     │  0x00007fbf42b62f18:   ret    
             ↘  0x00007fbf42b62f19:   mov    $0x0,%r8
                0x00007fbf42b62f20:   movabs $0x800c84638,%rax            ;   {metadata(&apos;jdk/incubator/vector/DoubleVector$$Lambda$67+0x0000000800c84638&apos;)}
                0x00007fbf42b62f2a:   cmp    %r8,%rax
                0x00007fbf42b62f2d:   jne    0x00007fbf42b63067           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                0x00007fbf42b62f33:   vaddsd %xmm1,%xmm0,%xmm2            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84638::apply@4
....................................................................................................
  22.03%  <total for region 2>

....[Hottest Regions]...............................................................................
  71.97%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1038 
  22.03%       jvmci, level 4  jdk.incubator.vector.Double256Vector::bOp, version 2, compile id 1040 
   0.92%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1038 
   0.35%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1038 
   0.18%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1038 
   0.17%               kernel  [unknown] 
   0.17%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.08%            libjvm.so  HeapRegionClaimer::claim_region 
   0.07%               kernel  [unknown] 
   0.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1038 
   0.05%          c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 1089 
   0.05%            libjvm.so  HeapRegionManager::par_iterate 
   0.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1038 
   0.05%                       <unknown> 
   0.05%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.05%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.04%   libpthread-2.31.so  __pthread_mutex_trylock 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1038 
   3.42%  <...other 688 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  74.23%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1038 
  22.04%       jvmci, level 4  jdk.incubator.vector.Double256Vector::bOp, version 2, compile id 1040 
   1.35%               kernel  [unknown] 
   0.25%                       <unknown> 
   0.08%            libjvm.so  HeapRegionClaimer::claim_region 
   0.07%          c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 1089 
   0.06%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.06%            libjvm.so  G1Policy::preventive_collection_required 
   0.05%            libjvm.so  HeapRegionManager::par_iterate 
   0.05%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.05%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.04%   libpthread-2.31.so  __pthread_mutex_trylock 
   0.04%            libjvm.so  ObjArrayAllocator::initialize 
   0.04%            libjvm.so  MemAllocator::allocate_inside_tlab_slow 
   0.04%            libjvm.so  G1FromCardCache::clear 
   0.04%            libjvm.so  FreeCSetClosure::do_heap_region 
   0.04%            libjvm.so  G1RebuildFreeListTask::work 
   0.04%               [vdso]  __vdso_clock_gettime 
   0.04%            libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.03%            libjvm.so  JVMCIRuntime::new_array_common 
   1.36%  <...other 269 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.27%       jvmci, level 4
   1.53%            libjvm.so
   1.35%               kernel
   0.25%                     
   0.15%          interpreter
   0.12%   libpthread-2.31.so
   0.09%         libc-2.31.so
   0.07%  libjvmcicompiler.so
   0.07%          c1, level 3
   0.05%           ld-2.31.so
   0.04%               [vdso]
   0.02%       hsdis-amd64.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized
# Parameters: (iterations = 1000, size = 512)

# Run progress: 62.50% complete, ETA 00:05:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1667.659 ms/op
# Warmup Iteration   2: 142.910 ms/op
# Warmup Iteration   3: 100.221 ms/op
# Warmup Iteration   4: 100.272 ms/op
# Warmup Iteration   5: 100.304 ms/op
Iteration   1: 100.137 ms/op
Iteration   2: 100.298 ms/op
Iteration   3: 100.203 ms/op
Iteration   4: 100.321 ms/op
Iteration   5: 100.180 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized":
  100.228 ±(99.9%) 0.303 ms/op [Average]
  (min, avg, max) = (100.137, 100.228, 100.321), stdev = 0.079
  CI (99.9%): [99.924, 100.531] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized:·asm":
PrintAssembly processed: 329744 total address lines.
Perf output processed (skipped 58.765 seconds):
 Column 1: cycles (51455 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 4, compile id 1042 

 <region is too big to display, has 1037 lines, but threshold is 1000>
....................................................................................................
  36.33%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 4, compile id 1042 

 <region is too big to display, has 1194 lines, but threshold is 1000>
....................................................................................................
  33.27%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, jdk.incubator.vector.Double256Vector::bOp, version 2, compile id 1044 

                #           [sp+0x60]  (sp of caller)
                0x00007f8b3abac5e0:   mov    0x8(%rsi),%r10d
                0x00007f8b3abac5e4:   movabs $0x800000000,%r12
                0x00007f8b3abac5ee:   add    %r12,%r10
                0x00007f8b3abac5f1:   xor    %r12,%r12
                0x00007f8b3abac5f4:   cmp    %r10,%rax
                0x00007f8b3abac5f7:   jne    0x00007f8b3301e780           ;   {runtime_call ic_miss_stub}
                0x00007f8b3abac5fd:   nop
                0x00007f8b3abac5fe:   xchg   %ax,%ax
              [Verified Entry Point]
   0.66%        0x00007f8b3abac600:   mov    %eax,-0x14000(%rsp)
   0.63%        0x00007f8b3abac607:   sub    $0x58,%rsp
   0.05%        0x00007f8b3abac60b:   mov    %rbp,0x50(%rsp)
   0.65%        0x00007f8b3abac610:   mov    %rsi,%r10
   0.01%        0x00007f8b3abac613:   mov    %rdx,%r11
   0.02%        0x00007f8b3abac616:   test   %r11,%r11
                0x00007f8b3abac619:   je     0x00007f8b3abac8a8
   0.02%        0x00007f8b3abac61f:   mov    0x8(%r11),%eax
   0.59%        0x00007f8b3abac623:   movabs $0x800000000,%rsi
   0.01%        0x00007f8b3abac62d:   lea    (%rsi,%rax,1),%rax           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@2 (line 206)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.03%        0x00007f8b3abac631:   test   %r11,%r11
          ╭     0x00007f8b3abac634:   je     0x00007f8b3abac64d
   0.01%  │     0x00007f8b3abac63a:   movabs $0x800c3d000,%rsi            ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.61%  │     0x00007f8b3abac644:   cmp    %rax,%rsi
          │     0x00007f8b3abac647:   jne    0x00007f8b3abaccfc           ; ImmutableOopMap {rcx=Oop r10=Oop r11=Oop }
          │                                                               ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                               ; - (reexecute) jdk.incubator.vector.Double256Vector::bOp@0 (line 41)
   0.01%  ↘     0x00007f8b3abac64d:   test   %eax,(%r11)                  ; implicit exception: dispatches to 0x00007f8b3abacd1a
   0.06%        0x00007f8b3abac650:   mov    0xc(%r10),%esi               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                          ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 201)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.04%        0x00007f8b3abac654:   test   %esi,%esi
                0x00007f8b3abac656:   je     0x00007f8b3abac8b4
   0.59%        0x00007f8b3abac65c:   mov    0x8(,%rsi,8),%eax
   0.12%        0x00007f8b3abac663:   movabs $0x800000000,%rdx
   0.03%        0x00007f8b3abac66d:   lea    (%rdx,%rax,1),%rax
   0.05%        0x00007f8b3abac671:   movabs $0x800006650,%rbp            ;   {metadata({type array double})}
   0.54%        0x00007f8b3abac67b:   nopl   0x0(%rax,%rax,1)
   0.00%        0x00007f8b3abac680:   test   %esi,%esi
           ╭    0x00007f8b3abac682:   je     0x00007f8b3abac691           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
           │                                                              ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 201)
           │                                                              ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           │                                                              ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.03%   │    0x00007f8b3abac688:   cmp    %rax,%rbp
           │    0x00007f8b3abac68b:   jne    0x00007f8b3abaccde           ; ImmutableOopMap {rcx=Oop rsi=NarrowOop r10=Oop r11=Oop }
           │                                                              ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
           │                                                              ; - (reexecute) jdk.incubator.vector.Double256Vector::bOp@0 (line 41)
   0.07%   ↘    0x00007f8b3abac691:   cmpl   $0x4,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f8b3abacd36
   0.58%        0x00007f8b3abac699:   jb     0x00007f8b3abacced
   0.03%        0x00007f8b3abac69f:   mov    0xc(%r11),%edx               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                          ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 202)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.05%        0x00007f8b3abac6a3:   test   %edx,%edx
                0x00007f8b3abac6a5:   je     0x00007f8b3abac8c0
   0.56%        0x00007f8b3abac6ab:   mov    0x8(,%rdx,8),%eax
   0.07%        0x00007f8b3abac6b2:   movabs $0x800000000,%r8
   0.04%        0x00007f8b3abac6bc:   lea    (%r8,%rax,1),%rax
   0.06%        0x00007f8b3abac6c0:   test   %edx,%edx
            ╭   0x00007f8b3abac6c2:   je     0x00007f8b3abac6d1           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │                                                             ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
            │                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 202)
            │                                                             ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            │                                                             ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.55%    │   0x00007f8b3abac6c8:   cmp    %rax,%rbp
            │   0x00007f8b3abac6cb:   jne    0x00007f8b3abacd0b           ; ImmutableOopMap {rcx=Oop rdx=NarrowOop rsi=NarrowOop r10=Oop r11=Oop }
            │                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
            │                                                             ; - (reexecute) jdk.incubator.vector.Double256Vector::bOp@0 (line 41)
   0.04%    ↘   0x00007f8b3abac6d1:   mov    0xc(,%rdx,8),%eax            ; implicit exception: dispatches to 0x00007f8b3abacd52
   0.05%        0x00007f8b3abac6d8:   vmovupd 0x10(,%rdx,8),%ymm0
   7.12%        0x00007f8b3abac6e1:   cmp    $0x4,%eax
                0x00007f8b3abac6e4:   jb     0x00007f8b3abaccae           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 204)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.07%        0x00007f8b3abac6ea:   vmovupd 0x10(,%rsi,8),%ymm1
   0.09%        0x00007f8b3abac6f3:   test   %rcx,%rcx
             ╭  0x00007f8b3abac6f6:   je     0x00007f8b3abac799
   0.02%     │  0x00007f8b3abac6fc:   mov    0x8(%rcx),%r8d
   0.51%     │  0x00007f8b3abac700:   cmp    $0xc84aa0,%r8d               ;   {metadata(&apos;jdk/incubator/vector/DoubleVector$$Lambda$69+0x0000000800c84aa0&apos;)}
             │  0x00007f8b3abac707:   jne    0x00007f8b3abacb14           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.09%     │  0x00007f8b3abac70d:   mov    0x108(%r15),%rax
   0.03%     │  0x00007f8b3abac714:   lea    0x40(%rax),%rsi
   0.02%     │  0x00007f8b3abac718:   vsubpd %ymm0,%ymm1,%ymm0
   2.92%     │  0x00007f8b3abac71c:   nopl   0x0(%rax)
   0.02%     │  0x00007f8b3abac720:   cmp    0x118(%r15),%rsi
             │  0x00007f8b3abac727:   ja     0x00007f8b3abac905
   0.00%     │  0x00007f8b3abac72d:   mov    %rsi,0x108(%r15)
   0.01%     │  0x00007f8b3abac734:   prefetchw 0x100(%rax)
   0.55%     │  0x00007f8b3abac73b:   nopl   0x0(%rax,%rax,1)
   0.02%     │  0x00007f8b3abac740:   test   %rax,%rax
             │  0x00007f8b3abac743:   je     0x00007f8b3abac905
             │  0x00007f8b3abac749:   mov    %rax,%rsi                    ;*new {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
             │                                                            ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
             │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@62 (line 206)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.02%     │  0x00007f8b3abac74c:   lea    0x10(%rax),%rdx              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.60%     │  0x00007f8b3abac750:   movq   $0x1,(%rax)
   0.01%     │  0x00007f8b3abac757:   movl   $0xc3d000,0x8(%rax)          ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.01%     │  0x00007f8b3abac75e:   shr    $0x3,%rdx                    ;*new {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
             │                                                            ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
             │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@62 (line 206)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.01%     │  0x00007f8b3abac762:   mov    %edx,0xc(%rax)
   0.60%     │  0x00007f8b3abac765:   movl   $0x4,0x1c(%rax)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.01%     │  0x00007f8b3abac76c:   movq   $0x1,0x10(%rax)
             │  0x00007f8b3abac774:   movl   $0x6650,0x18(%rax)           ;   {metadata({type array double})}
   0.00%     │  0x00007f8b3abac77b:   vmovupd %ymm0,0x20(%rax)
   0.56%     │  0x00007f8b3abac780:   mov    %rsi,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 41)
   0.01%     │  0x00007f8b3abac783:   mov    0x50(%rsp),%rbp
   0.06%     │  0x00007f8b3abac788:   add    $0x58,%rsp
   0.01%     │  0x00007f8b3abac78c:   mov    0x348(%r15),%rcx
   0.55%     │  0x00007f8b3abac793:   test   %eax,(%rcx)                  ;   {poll_return}
   0.06%     │  0x00007f8b3abac795:   vzeroupper 
   0.66%     │  0x00007f8b3abac798:   ret    
             ↘  0x00007f8b3abac799:   mov    $0x0,%rax
                0x00007f8b3abac7a0:   movabs $0x800c84638,%r8             ;   {metadata(&apos;jdk/incubator/vector/DoubleVector$$Lambda$67+0x0000000800c84638&apos;)}
                0x00007f8b3abac7aa:   cmp    %rax,%r8
                0x00007f8b3abac7ad:   jne    0x00007f8b3abac8e7           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                0x00007f8b3abac7b3:   vaddsd %xmm1,%xmm0,%xmm2            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84638::apply@4
....................................................................................................
  21.52%  <total for region 3>

....[Hottest Regions]...............................................................................
  36.33%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 4, compile id 1042 
  33.27%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 4, compile id 1042 
  21.52%       jvmci, level 4  jdk.incubator.vector.Double256Vector::bOp, version 2, compile id 1044 
   2.79%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 4, compile id 1042 
   0.38%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 4, compile id 1042 
   0.36%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 4, compile id 1042 
   0.24%               kernel  [unknown] 
   0.20%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 4, compile id 1042 
   0.14%          c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 1089 
   0.13%               kernel  [unknown] 
   0.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 4, compile id 1042 
   0.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 2, compile id 1090 
   0.09%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.07%            libjvm.so  HeapRegionClaimer::claim_region 
   0.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 4, compile id 1042 
   0.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 4, compile id 1042 
   0.06%                       <unknown> 
   0.06%            libjvm.so  HeapRegionManager::par_iterate 
   3.81%  <...other 737 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  74.31%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 4, compile id 1042 
  21.53%       jvmci, level 4  jdk.incubator.vector.Double256Vector::bOp, version 2, compile id 1044 
   1.43%               kernel  [unknown] 
   0.33%                       <unknown> 
   0.15%          c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 1089 
   0.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 2, compile id 1090 
   0.07%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.07%            libjvm.so  HeapRegionClaimer::claim_region 
   0.06%            libjvm.so  HeapRegionManager::par_iterate 
   0.05%            libjvm.so  TypeArrayKlass::allocate_common 
   0.05%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.04%            libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.04%            libjvm.so  FreeCSetClosure::do_heap_region 
   0.04%            libjvm.so  G1FromCardCache::clear 
   0.04%               [vdso]  __vdso_clock_gettime 
   0.04%            libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.04%            libjvm.so  CardTableBarrierSet::on_slowpath_allocation_exit 
   0.03%   libpthread-2.31.so  __pthread_mutex_trylock 
   0.03%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.03%            libjvm.so  OtherRegionsTable::is_empty 
   1.49%  <...other 282 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.96%       jvmci, level 4
   1.57%            libjvm.so
   1.43%               kernel
   0.33%                     
   0.15%          c1, level 3
   0.14%          interpreter
   0.12%         libc-2.31.so
   0.09%  libjvmcicompiler.so
   0.09%   libpthread-2.31.so
   0.05%           ld-2.31.so
   0.04%               [vdso]
   0.03%       hsdis-amd64.so
   0.00%         runtime stub
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized
# Parameters: (iterations = 2000, size = 256)

# Run progress: 75.00% complete, ETA 00:03:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 149.345 ms/op
# Warmup Iteration   2: 44.361 ms/op
# Warmup Iteration   3: 44.320 ms/op
# Warmup Iteration   4: 44.286 ms/op
# Warmup Iteration   5: 44.330 ms/op
Iteration   1: 44.316 ms/op
Iteration   2: 44.336 ms/op
Iteration   3: 44.313 ms/op
Iteration   4: 44.332 ms/op
Iteration   5: 44.721 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized":
  44.404 ±(99.9%) 0.684 ms/op [Average]
  (min, avg, max) = (44.313, 44.404, 44.721), stdev = 0.178
  CI (99.9%): [43.720, 45.088] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized:·asm":
PrintAssembly processed: 301854 total address lines.
Perf output processed (skipped 58.899 seconds):
 Column 1: cycles (51297 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1061 

 <region is too big to display, has 1765 lines, but threshold is 1000>
....................................................................................................
  71.53%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, jdk.incubator.vector.Double256Vector::bOp, version 2, compile id 914 

                #           [sp+0x40]  (sp of caller)
                0x00007f440eb24cc0:   mov    0x8(%rsi),%r10d
                0x00007f440eb24cc4:   movabs $0x800000000,%r12
                0x00007f440eb24cce:   add    %r12,%r10
                0x00007f440eb24cd1:   xor    %r12,%r12
                0x00007f440eb24cd4:   cmp    %r10,%rax
                0x00007f440eb24cd7:   jne    0x00007f440701e780           ;   {runtime_call ic_miss_stub}
                0x00007f440eb24cdd:   nop
                0x00007f440eb24cde:   xchg   %ax,%ax
              [Verified Entry Point]
   0.10%        0x00007f440eb24ce0:   mov    %eax,-0x14000(%rsp)
   0.76%        0x00007f440eb24ce7:   sub    $0x38,%rsp
   0.05%        0x00007f440eb24ceb:   mov    %rbp,0x30(%rsp)
   0.58%        0x00007f440eb24cf0:   mov    %rsi,%r10
   0.01%        0x00007f440eb24cf3:   mov    %rdx,%r11
   0.06%        0x00007f440eb24cf6:   test   %r11,%r11
                0x00007f440eb24cf9:   je     0x00007f440eb24fa6
   0.03%        0x00007f440eb24cff:   mov    0x8(%r11),%eax
   0.76%        0x00007f440eb24d03:   movabs $0x800000000,%rsi
   0.01%        0x00007f440eb24d0d:   lea    (%rsi,%rax,1),%rax           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@2 (line 206)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.07%        0x00007f440eb24d11:   test   %r11,%r11
          ╭     0x00007f440eb24d14:   je     0x00007f440eb24d2d
   0.05%  │     0x00007f440eb24d1a:   movabs $0x800c3d000,%rsi            ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.64%  │     0x00007f440eb24d24:   cmp    %rax,%rsi
          │     0x00007f440eb24d27:   jne    0x00007f440eb25223           ; ImmutableOopMap {rcx=Oop r10=Oop r11=Oop }
          │                                                               ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                               ; - (reexecute) jdk.incubator.vector.Double256Vector::bOp@0 (line 41)
   0.02%  ↘     0x00007f440eb24d2d:   test   %eax,(%r11)                  ; implicit exception: dispatches to 0x00007f440eb25232
   0.07%        0x00007f440eb24d30:   mov    0xc(%r10),%esi               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                          ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 201)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.05%        0x00007f440eb24d34:   test   %esi,%esi
                0x00007f440eb24d36:   je     0x00007f440eb24f8e
   0.62%        0x00007f440eb24d3c:   mov    0x8(,%rsi,8),%eax
   0.06%        0x00007f440eb24d43:   movabs $0x800000000,%rdx
   0.08%        0x00007f440eb24d4d:   lea    (%rdx,%rax,1),%rax
   0.03%        0x00007f440eb24d51:   movabs $0x800006650,%rdx            ;   {metadata({type array double})}
   0.56%        0x00007f440eb24d5b:   nopl   0x0(%rax,%rax,1)
   0.02%        0x00007f440eb24d60:   test   %esi,%esi
           ╭    0x00007f440eb24d62:   je     0x00007f440eb24d71           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
           │                                                              ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 201)
           │                                                              ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           │                                                              ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.06%   │    0x00007f440eb24d68:   cmp    %rax,%rdx
           │    0x00007f440eb24d6b:   jne    0x00007f440eb251e7           ; ImmutableOopMap {rcx=Oop rsi=NarrowOop r10=Oop r11=Oop }
           │                                                              ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
           │                                                              ; - (reexecute) jdk.incubator.vector.Double256Vector::bOp@0 (line 41)
   0.07%   ↘    0x00007f440eb24d71:   cmpl   $0x4,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f440eb2524e
   0.54%        0x00007f440eb24d79:   jb     0x00007f440eb251f6
   0.08%        0x00007f440eb24d7f:   mov    0xc(%r11),%ebp               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                          ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 202)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.04%        0x00007f440eb24d83:   test   %ebp,%ebp
                0x00007f440eb24d85:   je     0x00007f440eb24fb2
   0.59%        0x00007f440eb24d8b:   mov    0x8(,%rbp,8),%eax
   0.07%        0x00007f440eb24d92:   movabs $0x800000000,%r8
   0.06%        0x00007f440eb24d9c:   lea    (%r8,%rax,1),%rax
   0.05%        0x00007f440eb24da0:   test   %ebp,%ebp
            ╭   0x00007f440eb24da2:   je     0x00007f440eb24db1           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │                                                             ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
            │                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 202)
            │                                                             ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            │                                                             ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.65%    │   0x00007f440eb24da8:   cmp    %rax,%rdx
            │   0x00007f440eb24dab:   jne    0x00007f440eb25205           ; ImmutableOopMap {rcx=Oop rbp=NarrowOop rsi=NarrowOop r10=Oop r11=Oop }
            │                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
            │                                                             ; - (reexecute) jdk.incubator.vector.Double256Vector::bOp@0 (line 41)
   0.02%    ↘   0x00007f440eb24db1:   cmpl   $0x4,0xc(,%rbp,8)            ; implicit exception: dispatches to 0x00007f440eb2526a
   0.11%        0x00007f440eb24db9:   jb     0x00007f440eb251c6
   0.65%        0x00007f440eb24dbf:   nop
   0.02%        0x00007f440eb24dc0:   test   %rcx,%rcx
                0x00007f440eb24dc3:   je     0x00007f440eb24f9a
   0.07%        0x00007f440eb24dc9:   mov    0x8(%rcx),%eax
   0.04%        0x00007f440eb24dcc:   movabs $0x800000000,%r8
   0.56%        0x00007f440eb24dd6:   lea    (%r8,%rax,1),%rax            ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.03%        0x00007f440eb24dda:   vmovsd 0x10(,%rbp,8),%xmm0          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 204)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.08%        0x00007f440eb24de3:   vmovsd 0x10(,%rsi,8),%xmm1
   0.04%        0x00007f440eb24dec:   movabs $0x800c84f08,%r8             ;   {metadata(&apos;jdk/incubator/vector/DoubleVector$$Lambda$71+0x0000000800c84f08&apos;)}
   0.57%        0x00007f440eb24df6:   movabs $0x800c84638,%r9             ;   {metadata(&apos;jdk/incubator/vector/DoubleVector$$Lambda$67+0x0000000800c84638&apos;)}
   0.03%        0x00007f440eb24e00:   cmp    %rax,%r9
             ╭  0x00007f440eb24e03:   je     0x00007f440eb24f28
   0.08%     │  0x00007f440eb24e09:   cmp    %rax,%r8
             │  0x00007f440eb24e0c:   jne    0x00007f440eb24f4e           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │  0x00007f440eb24e12:   vmulsd %xmm1,%xmm0,%xmm0            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
             │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800c84f08::apply@4
             │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.66%     │  0x00007f440eb24e16:   vmovsd 0x18(,%rbp,8),%xmm1          ;*daload {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 204)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.04%     │  0x00007f440eb24e1f:   vmovsd 0x18(,%rsi,8),%xmm2          ;*daload {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.10%     │  0x00007f440eb24e28:   cmp    %rax,%r9
             │  0x00007f440eb24e2b:   je     0x00007f440eb24f31
   0.03%     │  0x00007f440eb24e31:   cmp    %rax,%r8
             │  0x00007f440eb24e34:   jne    0x00007f440eb24f85           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │  0x00007f440eb24e3a:   vmulsd %xmm2,%xmm1,%xmm1            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
             │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800c84f08::apply@4
             │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.74%     │  0x00007f440eb24e3e:   vmovsd 0x20(,%rbp,8),%xmm2          ;*daload {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 204)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.01%     │  0x00007f440eb24e47:   vmovsd 0x20(,%rsi,8),%xmm3          ;*daload {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.04%     │  0x00007f440eb24e50:   cmp    %rax,%r9
             │  0x00007f440eb24e53:   je     0x00007f440eb24f45
   0.01%     │  0x00007f440eb24e59:   nopl   0x0(%rax)
   0.69%     │  0x00007f440eb24e60:   cmp    %rax,%r8
             │  0x00007f440eb24e63:   jne    0x00007f440eb24f7b           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │  0x00007f440eb24e69:   vmulsd %xmm3,%xmm2,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
             │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800c84f08::apply@4
             │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.68%     │  0x00007f440eb24e6d:   vmovsd 0x28(,%rbp,8),%xmm3          ;*daload {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 204)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.00%     │  0x00007f440eb24e76:   vmovsd 0x28(,%rsi,8),%xmm4          ;*daload {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.01%     │  0x00007f440eb24e7f:   nop
   0.02%     │  0x00007f440eb24e80:   cmp    %rax,%r9
             │  0x00007f440eb24e83:   je     0x00007f440eb24f3a
   0.72%     │  0x00007f440eb24e89:   cmp    %rax,%r8
             │  0x00007f440eb24e8c:   jne    0x00007f440eb24f72           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │  0x00007f440eb24e92:   vmulsd %xmm4,%xmm3,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
             │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800c84f08::apply@4
             │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.74%     │  0x00007f440eb24e96:   mov    0x108(%r15),%rax
   0.00%     │  0x00007f440eb24e9d:   lea    0x40(%rax),%r8
             │  0x00007f440eb24ea1:   cmp    0x118(%r15),%r8
             │  0x00007f440eb24ea8:   ja     0x00007f440eb24fbe
   0.01%     │  0x00007f440eb24eae:   mov    %r8,0x108(%r15)
   0.73%     │  0x00007f440eb24eb5:   prefetchw 0x100(%rax)
   0.00%     │  0x00007f440eb24ebc:   nopl   0x0(%rax)
             │  0x00007f440eb24ec0:   test   %rax,%rax
             │  0x00007f440eb24ec3:   je     0x00007f440eb24fbe
   0.01%     │  0x00007f440eb24ec9:   mov    %rax,%rsi                    ;*new {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
             │                                                            ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
             │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@62 (line 206)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.82%     │  0x00007f440eb24ecc:   lea    0x10(%rax),%rdx              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │  0x00007f440eb24ed0:   movq   $0x1,(%rax)
             │  0x00007f440eb24ed7:   movl   $0xc3d000,0x8(%rax)          ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.02%     │  0x00007f440eb24ede:   shr    $0x3,%rdx                    ;*new {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
             │                                                            ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
             │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@62 (line 206)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
   0.74%     │  0x00007f440eb24ee2:   mov    %edx,0xc(%rax)
   0.00%     │  0x00007f440eb24ee5:   movl   $0x4,0x1c(%rax)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │  0x00007f440eb24eec:   movq   $0x1,0x10(%rax)
   1.05%     │  0x00007f440eb24ef4:   movl   $0x6650,0x18(%rax)           ;   {metadata({type array double})}
   0.75%     │  0x00007f440eb24efb:   vmovsd %xmm0,0x20(%rax)
   0.00%     │  0x00007f440eb24f00:   vmovsd %xmm1,0x28(%rax)
   0.73%     │  0x00007f440eb24f05:   vmovsd %xmm2,0x30(%rax)
   0.11%     │  0x00007f440eb24f0a:   vmovsd %xmm3,0x38(%rax)
   0.67%     │  0x00007f440eb24f0f:   mov    %rsi,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 41)
             │  0x00007f440eb24f12:   mov    0x30(%rsp),%rbp
   0.02%     │  0x00007f440eb24f17:   add    $0x38,%rsp
   0.02%     │  0x00007f440eb24f1b:   mov    0x348(%r15),%rcx
   0.77%     │  0x00007f440eb24f22:   test   %eax,(%rcx)                  ;   {poll_return}
   0.10%     │  0x00007f440eb24f24:   vzeroupper 
   0.76%     │  0x00007f440eb24f27:   ret                                 ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             ↘  0x00007f440eb24f28:   vaddsd %xmm1,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84638::apply@4
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                0x00007f440eb24f2c:   jmp    0x00007f440eb24e16           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  20.95%  <total for region 2>

....[Hottest Regions]...............................................................................
  71.53%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1061 
  20.95%       jvmci, level 4  jdk.incubator.vector.Double256Vector::bOp, version 2, compile id 914 
   1.51%       jvmci, level 4  jdk.incubator.vector.Double256Vector::bOp, version 2, compile id 914 
   0.65%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1061 
   0.20%               kernel  [unknown] 
   0.16%               kernel  [unknown] 
   0.15%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1061 
   0.14%         libc-2.31.so  [unknown] 
   0.14%          c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 2, compile id 1106 
   0.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1061 
   0.12%            libjvm.so  HeapRegionClaimer::claim_region 
   0.10%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.08%            libjvm.so  HeapRegionManager::par_iterate 
   0.06%            libjvm.so  OtherRegionsTable::occupied 
   0.06%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.06%               kernel  [unknown] 
   0.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1061 
   0.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1061 
   3.66%  <...other 740 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  73.14%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1061 
  22.47%       jvmci, level 4  jdk.incubator.vector.Double256Vector::bOp, version 2, compile id 914 
   1.51%               kernel  [unknown] 
   0.22%         libc-2.31.so  [unknown] 
   0.14%          c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 2, compile id 1106 
   0.12%            libjvm.so  HeapRegionClaimer::claim_region 
   0.12%                       <unknown> 
   0.09%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.08%            libjvm.so  HeapRegionManager::par_iterate 
   0.06%            libjvm.so  OtherRegionsTable::occupied 
   0.06%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.05%            libjvm.so  G1Policy::preventive_collection_required 
   0.05%               [vdso]  __vdso_clock_gettime 
   0.05%            libjvm.so  HeapRegionManager::allocate_free_region 
   0.05%            libjvm.so  TypeArrayKlass::allocate_common 
   0.05%            libjvm.so  G1RebuildFreeListTask::work 
   0.04%            libjvm.so  G1FromCardCache::clear 
   0.04%            libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.04%            libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.04%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   1.56%  <...other 280 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.62%       jvmci, level 4
   1.84%            libjvm.so
   1.51%               kernel
   0.33%         libc-2.31.so
   0.16%          interpreter
   0.14%          c1, level 3
   0.12%                     
   0.07%  libjvmcicompiler.so
   0.06%           ld-2.31.so
   0.06%   libpthread-2.31.so
   0.05%               [vdso]
   0.03%       hsdis-amd64.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized
# Parameters: (iterations = 2000, size = 512)

# Run progress: 87.50% complete, ETA 00:01:55
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2535.866 ms/op
# Warmup Iteration   2: 200.883 ms/op
# Warmup Iteration   3: 147.005 ms/op
# Warmup Iteration   4: 147.131 ms/op
# Warmup Iteration   5: 147.157 ms/op
Iteration   1: 147.096 ms/op
Iteration   2: 147.358 ms/op
Iteration   3: 147.294 ms/op
Iteration   4: 147.259 ms/op
Iteration   5: 148.241 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized":
  147.450 ±(99.9%) 1.744 ms/op [Average]
  (min, avg, max) = (147.096, 147.450, 148.241), stdev = 0.453
  CI (99.9%): [145.705, 149.194] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized:·asm":
PrintAssembly processed: 341955 total address lines.
Perf output processed (skipped 60.433 seconds):
 Column 1: cycles (51542 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 1076 

                   0x00007f7b3ebbef42:   movq   $0x1,0x100(%rsi)
   0.00%           0x00007f7b3ebbef4d:   movl   $0x6650,0x108(%rsi)          ;   {metadata({type array double})}
                   0x00007f7b3ebbef57:   vmovsd 0xb0(%rsp),%xmm2
                   0x00007f7b3ebbef60:   vmovsd %xmm2,0x110(%rsi)
                   0x00007f7b3ebbef68:   vmovsd 0x110(%rsp),%xmm11
                   0x00007f7b3ebbef71:   vmovsd %xmm11,0x118(%rsi)
                   0x00007f7b3ebbef79:   vmovsd 0x200(%rsp),%xmm3
                   0x00007f7b3ebbef82:   vmovsd %xmm3,0x120(%rsi)
                   0x00007f7b3ebbef8a:   vmovsd 0xd0(%rsp),%xmm6
                   0x00007f7b3ebbef93:   vmovsd %xmm6,0x128(%rsi)
   0.00%           0x00007f7b3ebbef9b:   mov    %r13,%rbx
                   0x00007f7b3ebbef9e:   vmovsd 0x420(%rsp),%xmm6
   0.00%           0x00007f7b3ebbefa7:   vmovsd 0x460(%rsp),%xmm7
                   0x00007f7b3ebbefb0:   vmovsd 0x468(%rsp),%xmm12
   0.00%           0x00007f7b3ebbefb9:   vmovsd 0x480(%rsp),%xmm8
                   0x00007f7b3ebbefc2:   vmovsd 0x4c0(%rsp),%xmm4
                   0x00007f7b3ebbefcb:   mov    0x4d8(%rsp),%r14
                   0x00007f7b3ebbefd3:   mov    $0xa,%r13d
   0.00%           0x00007f7b3ebbefd9:   mov    %rdx,0x10(%rsp)
                   0x00007f7b3ebbefde:   mov    %r8,%rdx
                   0x00007f7b3ebbefe1:   mov    %r10,%r8
                   0x00007f7b3ebbefe4:   mov    0x10(%rsp),%r10
                   0x00007f7b3ebbefe9:   nopl   0x0(%rax)                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@171 (line 121)
   0.03%           0x00007f7b3ebbeff0:   mov    0x10(%r11),%esi              ;*getfield iterations {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@174 (line 121)
   0.77%           0x00007f7b3ebbeff4:   cmp    %r13d,%esi
                   0x00007f7b3ebbeff7:   jle    0x00007f7b3ebc7ad9           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@177 (line 121)
   0.06%           0x00007f7b3ebbeffd:   data16 xchg %ax,%ax
   0.11%           0x00007f7b3ebbf000:   cmpl   $0x4,0xc(%rdx)
   0.04%           0x00007f7b3ebbf004:   jb     0x00007f7b3ebd18d4           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c841f0::apply@8
                                                                             ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@198 (line 123)
   0.56%           0x00007f7b3ebbf00a:   mov    0xc(%r8),%esi                ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                             ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 201)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c84858::apply@8
                                                                             ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1098)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@184 (line 122)
   0.05%           0x00007f7b3ebbf00e:   test   %esi,%esi
                   0x00007f7b3ebbf010:   je     0x00007f7b3ebc021f
   0.10%           0x00007f7b3ebbf016:   mov    0x8(,%rsi,8),%eax
   0.04%           0x00007f7b3ebbf01d:   movabs $0x800000000,%rbp
   0.62%           0x00007f7b3ebbf027:   lea    0x0(%rbp,%rax,1),%rax
   0.14%           0x00007f7b3ebbf02c:   test   %esi,%esi
          ╭        0x00007f7b3ebbf02e:   je     0x00007f7b3ebbf03d
   0.11%  │        0x00007f7b3ebbf034:   cmp    %rax,%rcx
          │        0x00007f7b3ebbf037:   jne    0x00007f7b3ebd1150           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
          │                                                                  ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 201)
          │                                                                  ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
          │                                                                  ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
          │                                                                  ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
          │                                                                  ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c84858::apply@8
          │                                                                  ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
          │                                                                  ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
          │                                                                  ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
          │                                                                  ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │                                                                  ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1098)
          │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@184 (line 122)
   0.10%  ↘        0x00007f7b3ebbf03d:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rdx=Oop rbx=Oop rsi=NarrowOop rdi=Oop r8=Oop r10=Oop r11=Oop [56]=Oop }
                                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@171 (line 121)
   0.59%           0x00007f7b3ebbf040:   cmpl   $0x4,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f7b3ebd20a6
   0.16%           0x00007f7b3ebbf048:   jb     0x00007f7b3ebd193c
   0.08%           0x00007f7b3ebbf04e:   mov    0xc(%rbx),%eax               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                             ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 202)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c84858::apply@8
                                                                             ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1098)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@184 (line 122)
   0.54%           0x00007f7b3ebbf051:   test   %eax,%eax
                   0x00007f7b3ebbf053:   je     0x00007f7b3ebc0248
   0.07%           0x00007f7b3ebbf059:   mov    %r8,0x10(%rsp)
   0.10%           0x00007f7b3ebbf05e:   mov    0x8(,%rax,8),%ebp
   0.09%           0x00007f7b3ebbf065:   movabs $0x800000000,%r8
   0.64%           0x00007f7b3ebbf06f:   lea    (%r8,%rbp,1),%rbp
   0.05%           0x00007f7b3ebbf073:   test   %eax,%eax
           ╭       0x00007f7b3ebbf075:   je     0x00007f7b3ebbf089           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                                 ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
           │                                                                 ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 202)
           │                                                                 ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           │                                                                 ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
           │                                                                 ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
           │                                                                 ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c84858::apply@8
           │                                                                 ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
           │                                                                 ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
           │                                                                 ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
           │                                                                 ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           │                                                                 ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1098)
           │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@184 (line 122)
   0.08%   │       0x00007f7b3ebbf07b:   nopl   0x0(%rax,%rax,1)
   0.10%   │       0x00007f7b3ebbf080:   cmp    %rbp,%rcx
           │       0x00007f7b3ebbf083:   jne    0x00007f7b3ebd1240           ; ImmutableOopMap {rax=NarrowOop rdx=Oop rbx=Oop rsi=NarrowOop rdi=Oop r10=Oop r11=Oop [16]=Oop [56]=Oop }
           │                                                                 ;*iload {reexecute=1 rethrow=0 return_oop=0}
           │                                                                 ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@171 (line 121)
   0.60%   ↘       0x00007f7b3ebbf089:   cmpl   $0x4,0xc(,%rax,8)            ; implicit exception: dispatches to 0x00007f7b3ebd20c6
   0.19%           0x00007f7b3ebbf091:   jb     0x00007f7b3ebd1d3d
   0.09%           0x00007f7b3ebbf097:   vmovsd 0x28(,%rsi,8),%xmm9
   0.64%           0x00007f7b3ebbf0a0:   vmovsd 0x20(,%rsi,8),%xmm11
   0.06%           0x00007f7b3ebbf0a9:   vmovsd 0x18(,%rsi,8),%xmm13
   0.09%           0x00007f7b3ebbf0b2:   vmovsd 0x10(,%rsi,8),%xmm14         ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c84858::apply@8
                                                                             ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1098)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@184 (line 122)
   0.08%           0x00007f7b3ebbf0bb:   vsubsd 0x10(,%rax,8),%xmm14,%xmm14
   0.71%           0x00007f7b3ebbf0c4:   vsubsd 0x18(,%rax,8),%xmm13,%xmm13
   0.21%           0x00007f7b3ebbf0cd:   vsubsd 0x20(,%rax,8),%xmm11,%xmm11
   0.73%           0x00007f7b3ebbf0d6:   vsubsd 0x28(,%rax,8),%xmm9,%xmm9    ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 204)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c84858::apply@8
                                                                             ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1098)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@184 (line 122)
   0.24%           0x00007f7b3ebbf0df:   vmovsd 0x10(%rdx),%xmm15
   0.58%           0x00007f7b3ebbf0e4:   vmovsd 0x18(%rdx),%xmm0
   0.07%           0x00007f7b3ebbf0e9:   vmovsd 0x20(%rdx),%xmm1
   0.15%           0x00007f7b3ebbf0ee:   vmovsd 0x28(%rdx),%xmm2             ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c841f0::apply@8
                                                                             ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@198 (line 123)
   0.04%           0x00007f7b3ebbf0f3:   mov    0xc(%r10),%esi               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                             ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 202)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c84cc0::apply@8
                                                                             ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@203 (line 123)
   0.57%           0x00007f7b3ebbf0f7:   test   %esi,%esi
                   0x00007f7b3ebbf0f9:   je     0x00007f7b3ebc0259
   0.06%           0x00007f7b3ebbf0ff:   mov    0x8(,%rsi,8),%eax
   0.17%           0x00007f7b3ebbf106:   movabs $0x800000000,%rbp
   0.03%           0x00007f7b3ebbf110:   lea    0x0(%rbp,%rax,1),%rax
   0.83%           0x00007f7b3ebbf115:   test   %esi,%esi
            ╭      0x00007f7b3ebbf117:   je     0x00007f7b3ebbf129           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │                                                                ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
            │                                                                ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 202)
            │                                                                ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            │                                                                ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
            │                                                                ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
            │                                                                ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c84cc0::apply@8
            │                                                                ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
            │                                                                ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
            │                                                                ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
            │                                                                ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
            │                                                                ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
            │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@203 (line 123)
   0.06%    │      0x00007f7b3ebbf11d:   data16 xchg %ax,%ax
   0.11%    │      0x00007f7b3ebbf120:   cmp    %rax,%rcx
            │      0x00007f7b3ebbf123:   jne    0x00007f7b3ebd15ba           ; ImmutableOopMap {rdx=Oop rbx=Oop rsi=NarrowOop rdi=Oop r10=Oop r11=Oop [16]=Oop [56]=Oop }
            │                                                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
            │                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@171 (line 121)
   0.05%    ↘      0x00007f7b3ebbf129:   cmpl   $0x4,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f7b3ebd20e6
   0.64%           0x00007f7b3ebbf131:   jb     0x00007f7b3ebd157d
   0.09%           0x00007f7b3ebbf137:   vmovsd %xmm2,0xd0(%rsp)
   0.04%           0x00007f7b3ebbf140:   vmovsd %xmm9,0x200(%rsp)
   0.64%           0x00007f7b3ebbf149:   vmovsd 0x10(,%rsi,8),%xmm3
   0.06%           0x00007f7b3ebbf152:   vmovsd 0x18(,%rsi,8),%xmm5
   0.11%           0x00007f7b3ebbf15b:   vmovsd 0x20(,%rsi,8),%xmm2
   0.10%           0x00007f7b3ebbf164:   vmovsd 0x28(,%rsi,8),%xmm9          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 204)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c84cc0::apply@8
                                                                             ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@203 (line 123)
   0.59%           0x00007f7b3ebbf16d:   mov    0x1c(%r11),%esi              ;*getfield ones {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@254 (line 131)
   0.05%           0x00007f7b3ebbf171:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.10%           0x00007f7b3ebbf17c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rdx=Oop rbx=Oop rsi=NarrowOop rdi=Oop r10=Oop r11=Oop [16]=Oop [56]=Oop }
                                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@171 (line 121)
   0.05%           0x00007f7b3ebbf180:   cmpl   $0xc3d000,0x8(,%rsi,8)       ; implicit exception: dispatches to 0x00007f7b3ebd2106
                                                                             ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.76%           0x00007f7b3ebbf18b:   jne    0x00007f7b3ebd127d           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@1 (line 614)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                             ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.12%           0x00007f7b3ebbf191:   mov    0xc(%rdi),%eax               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                             ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 201)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c841f0::apply@8
                                                                             ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                             ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.05%           0x00007f7b3ebbf194:   test   %eax,%eax
                   0x00007f7b3ebbf196:   je     0x00007f7b3ebc023c
   0.73%           0x00007f7b3ebbf19c:   mov    0x8(,%rax,8),%ebp
   0.05%           0x00007f7b3ebbf1a3:   movabs $0x800000000,%r8
   0.13%           0x00007f7b3ebbf1ad:   lea    (%r8,%rbp,1),%rbp
   0.07%           0x00007f7b3ebbf1b1:   test   %eax,%eax
             ╭     0x00007f7b3ebbf1b3:   je     0x00007f7b3ebbf1c9           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
             │                                                               ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
             │                                                               ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 201)
             │                                                               ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │                                                               ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │                                                               ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
             │                                                               ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c841f0::apply@8
             │                                                               ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
             │                                                               ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
             │                                                               ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
             │                                                               ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
             │                                                               ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
             │                                                               ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.60%     │     0x00007f7b3ebbf1b9:   nopl   0x0(%rax)
   0.05%     │     0x00007f7b3ebbf1c0:   cmp    %rbp,%rcx
             │     0x00007f7b3ebbf1c3:   jne    0x00007f7b3ebd13ca           ; ImmutableOopMap {rax=NarrowOop rdx=Oop rbx=Oop rsi=NarrowOop rdi=Oop r10=Oop r11=Oop [16]=Oop [56]=Oop }
             │                                                               ;*iload {reexecute=1 rethrow=0 return_oop=0}
             │                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@171 (line 121)
   0.11%     ↘     0x00007f7b3ebbf1c9:   cmpl   $0x4,0xc(,%rax,8)            ; implicit exception: dispatches to 0x00007f7b3ebd2126
   0.78%           0x00007f7b3ebbf1d1:   jb     0x00007f7b3ebd1977
   0.05%           0x00007f7b3ebbf1d7:   mov    0xc(,%rsi,8),%ebp            ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                             ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 202)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c841f0::apply@8
                                                                             ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                             ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.11%           0x00007f7b3ebbf1de:   xchg   %ax,%ax
   0.08%           0x00007f7b3ebbf1e0:   test   %ebp,%ebp
                   0x00007f7b3ebbf1e2:   je     0x00007f7b3ebc022b
   0.58%           0x00007f7b3ebbf1e8:   mov    %r10,0x18(%rsp)
   0.05%           0x00007f7b3ebbf1ed:   mov    0x8(,%rbp,8),%r8d
   0.19%           0x00007f7b3ebbf1f5:   movabs $0x800000000,%r10
   0.05%           0x00007f7b3ebbf1ff:   lea    (%r10,%r8,1),%r8
   0.66%           0x00007f7b3ebbf203:   test   %ebp,%ebp
              ╭    0x00007f7b3ebbf205:   je     0x00007f7b3ebbf214
   0.05%      │    0x00007f7b3ebbf20b:   cmp    %r8,%rcx
              │    0x00007f7b3ebbf20e:   jne    0x00007f7b3ebd1cfe           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              │                                                              ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
              │                                                              ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 202)
              │                                                              ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
              │                                                              ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
              │                                                              ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
              │                                                              ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c841f0::apply@8
              │                                                              ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
              │                                                              ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
              │                                                              ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
              │                                                              ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              │                                                              ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
              │                                                              ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
              │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.17%      ↘    0x00007f7b3ebbf214:   nopl   0x0(%rax,%rax,1)
   0.06%           0x00007f7b3ebbf21c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rax=NarrowOop rdx=Oop rbx=Oop rbp=NarrowOop rsi=NarrowOop rdi=Oop r11=Oop [16]=Oop [24]=Oop [56]=Oop }
                                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@171 (line 121)
   0.57%           0x00007f7b3ebbf220:   cmpl   $0x4,0xc(,%rbp,8)            ; implicit exception: dispatches to 0x00007f7b3ebd2146
   0.22%           0x00007f7b3ebbf228:   jb     0x00007f7b3ebd1a51
   0.05%           0x00007f7b3ebbf22e:   vmovsd %xmm9,0x110(%rsp)
   0.61%           0x00007f7b3ebbf237:   vmovsd %xmm2,0xb0(%rsp)
   0.05%           0x00007f7b3ebbf240:   vmovsd %xmm1,0xd8(%rsp)
   0.14%           0x00007f7b3ebbf249:   vmovsd 0x10(,%rax,8),%xmm9
   0.06%           0x00007f7b3ebbf252:   vmovsd 0x18(,%rax,8),%xmm10
   0.53%           0x00007f7b3ebbf25b:   vmovsd 0x20(,%rax,8),%xmm2
   0.05%           0x00007f7b3ebbf264:   vmovsd 0x28(,%rax,8),%xmm1          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c841f0::apply@8
                                                                             ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                             ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.13%           0x00007f7b3ebbf26d:   vaddsd 0x28(,%rbp,8),%xmm1,%xmm1
   0.81%           0x00007f7b3ebbf276:   vmovsd %xmm1,0x140(%rsp)
   0.15%           0x00007f7b3ebbf27f:   vaddsd 0x20(,%rbp,8),%xmm2,%xmm2
   0.20%           0x00007f7b3ebbf288:   vmovsd %xmm2,0x348(%rsp)
   0.67%           0x00007f7b3ebbf291:   vaddsd 0x18(,%rbp,8),%xmm10,%xmm10
   0.16%           0x00007f7b3ebbf29a:   vmovsd %xmm10,0xb8(%rsp)
   0.18%           0x00007f7b3ebbf2a3:   vaddsd 0x10(,%rbp,8),%xmm9,%xmm9    ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 204)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c841f0::apply@8
                                                                             ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                             ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.54%           0x00007f7b3ebbf2ac:   vmovsd %xmm9,0xa0(%rsp)
   0.30%           0x00007f7b3ebbf2b5:   mov    0xc(%rdi),%eax               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                             ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@9 (line 220)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800c85fa8::apply@12
                                                                             ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
                                                                             ; - jdk.incubator.vector.DoubleVector::blendTemplate@26 (line 1793)
                                                                             ; - jdk.incubator.vector.Double256Vector::blend@11 (line 364)
                                                                             ; - jdk.incubator.vector.Double256Vector::blend@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::lanewise@8 (line 669)
                                                                             ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.04%           0x00007f7b3ebbf2b8:   test   %eax,%eax
                   0x00007f7b3ebbf2ba:   je     0x00007f7b3ebc0213
   0.45%           0x00007f7b3ebbf2c0:   mov    0x8(,%rax,8),%r10d
   0.06%           0x00007f7b3ebbf2c8:   movabs $0x800000000,%rbp
   0.29%           0x00007f7b3ebbf2d2:   lea    0x0(%rbp,%r10,1),%r10
   0.05%           0x00007f7b3ebbf2d7:   test   %eax,%eax
               ╭   0x00007f7b3ebbf2d9:   je     0x00007f7b3ebbf2e9           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
               │                                                             ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
               │                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@9 (line 220)
               │                                                             ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
               │                                                             ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
               │                                                             ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
               │                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800c85fa8::apply@12
               │                                                             ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
               │                                                             ; - jdk.incubator.vector.DoubleVector::blendTemplate@26 (line 1793)
               │                                                             ; - jdk.incubator.vector.Double256Vector::blend@11 (line 364)
               │                                                             ; - jdk.incubator.vector.Double256Vector::blend@3 (line 41)
               │                                                             ; - jdk.incubator.vector.DoubleVector::lanewise@8 (line 669)
               │                                                             ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
               │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.46%       │   0x00007f7b3ebbf2df:   nop
   0.05%       │   0x00007f7b3ebbf2e0:   cmp    %r10,%rcx
               │   0x00007f7b3ebbf2e3:   jne    0x00007f7b3ebd1407           ; ImmutableOopMap {rax=NarrowOop rdx=Oop rbx=Oop rsi=NarrowOop rdi=Oop r11=Oop [16]=Oop [24]=Oop [56]=Oop }
               │                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
               │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@171 (line 121)
   0.28%       ↘   0x00007f7b3ebbf2e9:   cmpl   $0x4,0xc(,%rax,8)            ; implicit exception: dispatches to 0x00007f7b3ebd2166
   0.49%           0x00007f7b3ebbf2f1:   jb     0x00007f7b3ebd1787
   0.06%           0x00007f7b3ebbf2f7:   vaddsd %xmm8,%xmm13,%xmm13          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84638::apply@4
                                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c841f0::apply@8
                                                                             ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@189 (line 122)
   0.27%           0x00007f7b3ebbf2fc:   vmovsd %xmm13,0x120(%rsp)
   0.05%           0x00007f7b3ebbf305:   vmulsd %xmm13,%xmm13,%xmm1          ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800c84f08::apply@4
                                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c84cc0::apply@8
                                                                             ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@221 (line 126)
   0.45%           0x00007f7b3ebbf30a:   vmovsd %xmm1,0x128(%rsp)
   0.08%           0x00007f7b3ebbf313:   vaddsd %xmm0,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84638::apply@4
                                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c841f0::apply@8
                                                                             ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@198 (line 123)
   0.22%           0x00007f7b3ebbf317:   vmulsd %xmm5,%xmm0,%xmm0            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800c84f08::apply@4
                                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c84cc0::apply@8
                                                                             ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@203 (line 123)
   0.05%           0x00007f7b3ebbf31b:   vaddsd %xmm12,%xmm0,%xmm0           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84638::apply@4
                                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c841f0::apply@8
                                                                             ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@208 (line 123)
   0.60%           0x00007f7b3ebbf320:   vmovsd %xmm0,0x138(%rsp)
   0.12%           0x00007f7b3ebbf329:   vmulsd %xmm0,%xmm0,%xmm5            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800c84f08::apply@4
                                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c84cc0::apply@8
                                                                             ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@230 (line 127)
   0.50%           0x00007f7b3ebbf32d:   vmovsd %xmm5,0x1a0(%rsp)
   0.24%           0x00007f7b3ebbf336:   vaddsd %xmm5,%xmm1,%xmm8            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84638::apply@4
                                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c841f0::apply@8
                                                                             ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@239 (line 130)
   1.35%           0x00007f7b3ebbf33a:   vaddsd %xmm7,%xmm14,%xmm14          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84638::apply@4
                                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c841f0::apply@8
                                                                             ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@189 (line 122)
   0.03%           0x00007f7b3ebbf33e:   vmovsd %xmm14,0x170(%rsp)
   0.12%           0x00007f7b3ebbf347:   vmulsd %xmm14,%xmm14,%xmm7          ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800c84f08::apply@4
                                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c84cc0::apply@8
                                                                             ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@221 (line 126)
   0.02%           0x00007f7b3ebbf34c:   vmovsd %xmm7,0x58(%rsp)
   0.62%           0x00007f7b3ebbf352:   vaddsd %xmm15,%xmm15,%xmm15         ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84638::apply@4
                                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c841f0::apply@8
                                                                             ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@198 (line 123)
   0.06%           0x00007f7b3ebbf357:   vmulsd %xmm3,%xmm15,%xmm3           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800c84f08::apply@4
                                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c84cc0::apply@8
                                                                             ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@203 (line 123)
   0.12%           0x00007f7b3ebbf35b:   vaddsd %xmm12,%xmm3,%xmm3           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84638::apply@4
                                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c841f0::apply@8
                                                                             ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@208 (line 123)
   0.03%           0x00007f7b3ebbf360:   vmovsd %xmm3,0x60(%rsp)
   0.58%           0x00007f7b3ebbf366:   vmulsd %xmm3,%xmm3,%xmm15           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800c84f08::apply@4
                                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c84cc0::apply@8
                                                                             ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@230 (line 127)
   0.16%           0x00007f7b3ebbf36a:   vmovsd %xmm15,0x68(%rsp)
   0.27%           0x00007f7b3ebbf370:   vaddsd %xmm15,%xmm7,%xmm13          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84638::apply@4
                                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c841f0::apply@8
                                                                             ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@239 (line 130)
   0.89%           0x00007f7b3ebbf375:   vucomisd %xmm4,%xmm13
   1.76%        ╭  0x00007f7b3ebbf379:   jp     0x00007f7b3ebbf386
   0.14%        │  0x00007f7b3ebbf37b:   nopl   0x0(%rax,%rax,1)
   0.06%        │  0x00007f7b3ebbf380:   jbe    0x00007f7b3ebbfac5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@52 (line 224)
                │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800c85fa8::apply@12
                │                                                            ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
                │                                                            ; - jdk.incubator.vector.DoubleVector::blendTemplate@26 (line 1793)
                │                                                            ; - jdk.incubator.vector.Double256Vector::blend@11 (line 364)
                │                                                            ; - jdk.incubator.vector.Double256Vector::blend@3 (line 41)
                │                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@8 (line 669)
                │                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.03%        ↘  0x00007f7b3ebbf386:   vmovsd 0x10(,%rax,8),%xmm14         ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@80 (line 224)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800c85fa8::apply@12
                                                                             ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
                                                                             ; - jdk.incubator.vector.DoubleVector::blendTemplate@26 (line 1793)
                                                                             ; - jdk.incubator.vector.Double256Vector::blend@11 (line 364)
                                                                             ; - jdk.incubator.vector.Double256Vector::blend@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::lanewise@8 (line 669)
                                                                             ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.01%           0x00007f7b3ebbf38f:   vucomisd %xmm4,%xmm8
   0.00%           0x00007f7b3ebbf393:   jp     0x00007f7b3ebbf39b
   0.00%           0x00007f7b3ebbf395:   jbe    0x00007f7b3ebbfe28           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@52 (line 224)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                             ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800c85fa8::apply@12
                                                                             ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
                                                                             ; - jdk.incubator.vector.DoubleVector::blendTemplate@26 (line 1793)
                                                                             ; - jdk.incubator.vector.Double256Vector::blend@11 (line 364)
                                                                             ; - jdk.incubator.vector.Double256Vector::blend@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::lanewise@8 (line 669)
                                                                             ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
....................................................................................................
  36.15%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 1076 

                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c84cc0::apply@8
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@203 (line 123)
            0x00007f7b3ebc0265:   vmovupd %xmm0,%xmm13
            0x00007f7b3ebc0269:   vmovsd 0x200(%rsp),%xmm0
   0.04%    0x00007f7b3ebc0272:   vmovsd %xmm3,0x118(%rsp)
            0x00007f7b3ebc027b:   mov    0x108(%r15),%rsi
   0.75%    0x00007f7b3ebc0282:   lea    0x130(%rsi),%rdx
   0.01%    0x00007f7b3ebc0289:   cmp    0x118(%r15),%rdx
            0x00007f7b3ebc0290:   ja     0x00007f7b3ebc0896
   0.06%    0x00007f7b3ebc0296:   mov    %rdx,0x108(%r15)
            0x00007f7b3ebc029d:   prefetchw 0x1f0(%rsi)
   1.01%    0x00007f7b3ebc02a4:   prefetchw 0x230(%rsi)
   0.36%    0x00007f7b3ebc02ab:   prefetchw 0x270(%rsi)
   0.30%    0x00007f7b3ebc02b2:   prefetchw 0x2b0(%rsi)
   0.49%    0x00007f7b3ebc02b9:   nopl   0x0(%rax)
   0.60%    0x00007f7b3ebc02c0:   test   %rsi,%rsi
            0x00007f7b3ebc02c3:   je     0x00007f7b3ebc1793           ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
                                                                      ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@91 (line 226)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800c85fa8::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
                                                                      ; - jdk.incubator.vector.DoubleVector::blendTemplate@26 (line 1793)
                                                                      ; - jdk.incubator.vector.Double256Vector::blend@11 (line 364)
                                                                      ; - jdk.incubator.vector.Double256Vector::blend@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewise@8 (line 669)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.01%    0x00007f7b3ebc02c9:   vmovsd 0x140(%rsp),%xmm13
   0.05%    0x00007f7b3ebc02d2:   mov    %rsi,%rdx                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
                                                                      ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@62 (line 206)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c841f0::apply@8
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@208 (line 123)
   0.04%    0x00007f7b3ebc02d5:   lea    0x10(%rsi),%rax              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c841f0::apply@8
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@208 (line 123)
   0.65%    0x00007f7b3ebc02d9:   lea    0x40(%rsi),%r10              ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
                                                                      ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@62 (line 206)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c84cc0::apply@8
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@221 (line 126)
   0.01%    0x00007f7b3ebc02dd:   lea    0x50(%rsi),%r11              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c84cc0::apply@8
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@221 (line 126)
   0.03%    0x00007f7b3ebc02e1:   lea    0x80(%rsi),%r8               ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
                                                                      ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@62 (line 206)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c84cc0::apply@8
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@230 (line 127)
   0.07%    0x00007f7b3ebc02e8:   lea    0x90(%rsi),%r9               ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c84cc0::apply@8
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@230 (line 127)
   0.67%    0x00007f7b3ebc02ef:   lea    0xc0(%rsi),%rbx              ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
                                                                      ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@91 (line 226)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800c85fa8::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
                                                                      ; - jdk.incubator.vector.DoubleVector::blendTemplate@26 (line 1793)
                                                                      ; - jdk.incubator.vector.Double256Vector::blend@11 (line 364)
                                                                      ; - jdk.incubator.vector.Double256Vector::blend@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewise@8 (line 669)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.01%    0x00007f7b3ebc02f6:   lea    0xd0(%rsi),%rdi              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 219)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800c85fa8::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
                                                                      ; - jdk.incubator.vector.DoubleVector::blendTemplate@26 (line 1793)
                                                                      ; - jdk.incubator.vector.Double256Vector::blend@11 (line 364)
                                                                      ; - jdk.incubator.vector.Double256Vector::blend@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewise@8 (line 669)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.05%    0x00007f7b3ebc02fd:   lea    0x100(%rsi),%r13             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c841f0::apply@8
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@189 (line 122)
   0.04%    0x00007f7b3ebc0304:   movq   $0x1,(%rsi)
   0.67%    0x00007f7b3ebc030b:   movl   $0xc3d000,0x8(%rsi)          ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.02%    0x00007f7b3ebc0312:   shr    $0x3,%rax                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
                                                                      ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@62 (line 206)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c841f0::apply@8
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@208 (line 123)
   0.04%    0x00007f7b3ebc0316:   mov    %eax,0xc(%rsi)
   0.06%    0x00007f7b3ebc0319:   movl   $0x4,0x1c(%rsi)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c841f0::apply@8
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@208 (line 123)
   0.62%    0x00007f7b3ebc0320:   movq   $0x1,0x10(%rsi)
   0.01%    0x00007f7b3ebc0328:   movl   $0x6650,0x18(%rsi)           ;   {metadata({type array double})}
   0.05%    0x00007f7b3ebc032f:   vmovsd %xmm1,0x20(%rsi)
   0.08%    0x00007f7b3ebc0334:   vmovsd %xmm7,0x28(%rsi)
   0.66%    0x00007f7b3ebc0339:   vmovsd %xmm5,0x30(%rsi)
   0.00%    0x00007f7b3ebc033e:   vmovsd %xmm10,0x38(%rsi)
   0.05%    0x00007f7b3ebc0343:   movq   $0x1,0x40(%rsi)
   0.04%    0x00007f7b3ebc034b:   movl   $0xc3d000,0x48(%rsi)         ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.70%    0x00007f7b3ebc0352:   shr    $0x3,%r11                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
                                                                      ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@62 (line 206)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c84cc0::apply@8
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@221 (line 126)
   0.00%    0x00007f7b3ebc0356:   mov    %r11d,0x4c(%rsi)
   0.07%    0x00007f7b3ebc035a:   movl   $0x4,0x5c(%rsi)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c84cc0::apply@8
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@221 (line 126)
   0.06%    0x00007f7b3ebc0361:   movq   $0x1,0x50(%rsi)
   0.64%    0x00007f7b3ebc0369:   movl   $0x6650,0x58(%rsi)           ;   {metadata({type array double})}
   0.02%    0x00007f7b3ebc0370:   vmovsd %xmm12,0x60(%rsi)
   0.09%    0x00007f7b3ebc0375:   vmovsd %xmm11,0x68(%rsi)
   0.06%    0x00007f7b3ebc037a:   vmovsd %xmm6,0x70(%rsi)
   0.70%    0x00007f7b3ebc037f:   vmovsd %xmm14,0x78(%rsi)
   0.03%    0x00007f7b3ebc0384:   movq   $0x1,0x80(%rsi)
   0.12%    0x00007f7b3ebc038f:   movl   $0xc3d000,0x88(%rsi)         ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.11%    0x00007f7b3ebc0399:   shr    $0x3,%r9                     ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
                                                                      ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@62 (line 206)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c84cc0::apply@8
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@230 (line 127)
   0.52%    0x00007f7b3ebc039d:   mov    %r9d,0x8c(%rsi)
   0.04%    0x00007f7b3ebc03a4:   movl   $0x4,0x9c(%rsi)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c84cc0::apply@8
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@230 (line 127)
   0.69%    0x00007f7b3ebc03ae:   movq   $0x1,0x90(%rsi)
   0.40%    0x00007f7b3ebc03b9:   movl   $0x6650,0x98(%rsi)           ;   {metadata({type array double})}
   0.50%    0x00007f7b3ebc03c3:   vmovsd %xmm8,0xa0(%rsi)
   0.28%    0x00007f7b3ebc03cb:   vmovsd %xmm9,0xa8(%rsi)
   1.20%    0x00007f7b3ebc03d3:   vmovsd %xmm2,0xb0(%rsi)
   0.66%    0x00007f7b3ebc03db:   vmovsd %xmm15,0xb8(%rsi)
   0.46%    0x00007f7b3ebc03e3:   movq   $0x1,0xc0(%rsi)
   0.37%    0x00007f7b3ebc03ee:   movl   $0xc3d000,0xc8(%rsi)         ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   1.36%    0x00007f7b3ebc03f8:   shr    $0x3,%rdi                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
                                                                      ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@91 (line 226)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800c85fa8::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
                                                                      ; - jdk.incubator.vector.DoubleVector::blendTemplate@26 (line 1793)
                                                                      ; - jdk.incubator.vector.Double256Vector::blend@11 (line 364)
                                                                      ; - jdk.incubator.vector.Double256Vector::blend@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewise@8 (line 669)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.02%    0x00007f7b3ebc03fc:   mov    %edi,0xcc(%rsi)
   0.47%    0x00007f7b3ebc0402:   movl   $0x4,0xdc(%rsi)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 219)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800c85fa8::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
                                                                      ; - jdk.incubator.vector.DoubleVector::blendTemplate@26 (line 1793)
                                                                      ; - jdk.incubator.vector.Double256Vector::blend@11 (line 364)
                                                                      ; - jdk.incubator.vector.Double256Vector::blend@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewise@8 (line 669)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.41%    0x00007f7b3ebc040c:   movq   $0x1,0xd0(%rsi)
   1.40%    0x00007f7b3ebc0417:   movl   $0x6650,0xd8(%rsi)           ;   {metadata({type array double})}
   0.66%    0x00007f7b3ebc0421:   vmovsd %xmm4,0xe0(%rsi)
   0.53%    0x00007f7b3ebc0429:   vmovsd %xmm0,0xe8(%rsi)
   0.39%    0x00007f7b3ebc0431:   vmovsd %xmm3,0xf0(%rsi)
   1.53%    0x00007f7b3ebc0439:   vmovsd %xmm13,0xf8(%rsi)
   0.78%    0x00007f7b3ebc0441:   movl   $0x4,0x10c(%rsi)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c841f0::apply@8
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@189 (line 122)
   0.44%    0x00007f7b3ebc044b:   movq   $0x1,0x100(%rsi)
   0.38%    0x00007f7b3ebc0456:   movl   $0x6650,0x108(%rsi)          ;   {metadata({type array double})}
   1.08%    0x00007f7b3ebc0460:   vmovsd 0x170(%rsp),%xmm13
   0.07%    0x00007f7b3ebc0469:   vmovsd %xmm13,0x110(%rsi)
   0.44%    0x00007f7b3ebc0471:   vmovsd 0x120(%rsp),%xmm3
   0.09%    0x00007f7b3ebc047a:   vmovsd %xmm3,0x118(%rsi)
   1.10%    0x00007f7b3ebc0482:   vmovsd 0xd8(%rsp),%xmm3
   0.12%    0x00007f7b3ebc048b:   vmovsd %xmm3,0x120(%rsi)
   0.41%    0x00007f7b3ebc0493:   vmovsd 0x78(%rsp),%xmm3
   0.10%    0x00007f7b3ebc0499:   vmovsd %xmm3,0x128(%rsi)
   0.72%    0x00007f7b3ebc04a1:   mov    0x348(%r15),%rsi             ; ImmutableOopMap {rdx=Oop rbx=Oop r8=Oop r10=Oop r13=Oop [8]=Oop [32]=Oop [40]=Oop [56]=Oop }
                                                                      ;*dastore {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) jdk.incubator.vector.DoubleVector::bOpTemplate@81 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800c85fa8::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
                                                                      ; - jdk.incubator.vector.DoubleVector::blendTemplate@26 (line 1793)
                                                                      ; - jdk.incubator.vector.Double256Vector::blend@11 (line 364)
                                                                      ; - jdk.incubator.vector.Double256Vector::blend@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewise@8 (line 669)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.12%    0x00007f7b3ebc04a8:   test   %eax,(%rsi)                  ;   {poll}
   0.32%    0x00007f7b3ebc04aa:   mov    %rbx,%rdi
   0.00%    0x00007f7b3ebc04ad:   mov    %r8,%rbx
   0.71%    0x00007f7b3ebc04b0:   mov    %r10,%r8
   0.01%    0x00007f7b3ebc04b3:   mov    %rdx,%r10
   0.08%    0x00007f7b3ebc04b6:   vmovsd 0x420(%rsp),%xmm6
   0.04%    0x00007f7b3ebc04bf:   vmovsd 0x460(%rsp),%xmm7
   0.71%    0x00007f7b3ebc04c8:   vmovsd 0x468(%rsp),%xmm12
   0.04%    0x00007f7b3ebc04d1:   vmovsd 0x480(%rsp),%xmm8
   0.10%    0x00007f7b3ebc04da:   vmovsd 0x4c0(%rsp),%xmm4
   0.03%    0x00007f7b3ebc04e3:   mov    0x38(%rsp),%r11
   0.70%    0x00007f7b3ebc04e8:   mov    %r13,%rdx
   0.01%    0x00007f7b3ebc04eb:   mov    %ebp,%r13d
   0.10%    0x00007f7b3ebc04ee:   jmp    0x00007f7b3ebbeff0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@171 (line 121)
            0x00007f7b3ebc04f3:   vmovsd 0x78(%rsp),%xmm3
   0.00%    0x00007f7b3ebc04f9:   vmovsd 0x200(%rsp),%xmm0
            0x00007f7b3ebc0502:   mov    0x108(%r15),%rsi
   0.01%    0x00007f7b3ebc0509:   lea    0x130(%rsi),%rdx
            0x00007f7b3ebc0510:   cmp    0x118(%r15),%rdx
            0x00007f7b3ebc0517:   ja     0x00007f7b3ebc08b1
            0x00007f7b3ebc051d:   mov    %rdx,0x108(%r15)
            0x00007f7b3ebc0524:   prefetchw 0x1f0(%rsi)
   0.02%    0x00007f7b3ebc052b:   prefetchw 0x230(%rsi)
   0.01%    0x00007f7b3ebc0532:   prefetchw 0x270(%rsi)
   0.01%    0x00007f7b3ebc0539:   prefetchw 0x2b0(%rsi)
   0.01%    0x00007f7b3ebc0540:   test   %rsi,%rsi
            0x00007f7b3ebc0543:   je     0x00007f7b3ebc21b3           ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
....................................................................................................
  30.81%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 1076 

                                                                           ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
                                                                           ; - jdk.incubator.vector.DoubleVector::blendTemplate@26 (line 1793)
                                                                           ; - jdk.incubator.vector.Double256Vector::blend@11 (line 364)
                                                                           ; - jdk.incubator.vector.Double256Vector::blend@3 (line 41)
                                                                           ; - jdk.incubator.vector.DoubleVector::lanewise@8 (line 669)
                                                                           ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
                 0x00007f7b3ebbf3a4:   vmovsd 0x110(%rsp),%xmm15
                 0x00007f7b3ebbf3ad:   vmovsd 0xd0(%rsp),%xmm10
                 0x00007f7b3ebbf3b6:   vmovsd 0x200(%rsp),%xmm9
   0.02%         0x00007f7b3ebbf3bf:   vmovupd %xmm14,%xmm7
                 0x00007f7b3ebbf3c4:   vmovupd %xmm5,%xmm1
   0.00%         0x00007f7b3ebbf3c8:   vmovsd 0xb0(%rsp),%xmm14
                 0x00007f7b3ebbf3d1:   vmovsd 0xd8(%rsp),%xmm5             ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.DoubleVector::bOpTemplate@81 (line 224)
                                                                           ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                           ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                           ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                           ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800c85fa8::apply@12
                                                                           ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
                                                                           ; - jdk.incubator.vector.DoubleVector::blendTemplate@26 (line 1793)
                                                                           ; - jdk.incubator.vector.Double256Vector::blend@11 (line 364)
                                                                           ; - jdk.incubator.vector.Double256Vector::blend@3 (line 41)
                                                                           ; - jdk.incubator.vector.DoubleVector::lanewise@8 (line 669)
                                                                           ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.35%         0x00007f7b3ebbf3da:   vmovsd %xmm1,0x200(%rsp)
                 0x00007f7b3ebbf3e3:   vmovsd %xmm7,0xd0(%rsp)
   0.47%         0x00007f7b3ebbf3ec:   vmovsd 0x28(,%rax,8),%xmm0
   0.06%         0x00007f7b3ebbf3f5:   vmovsd 0x20(,%rax,8),%xmm3          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.DoubleVector::bOpTemplate@80 (line 224)
                                                                           ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                           ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                           ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                           ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800c85fa8::apply@12
                                                                           ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
                                                                           ; - jdk.incubator.vector.DoubleVector::blendTemplate@26 (line 1793)
                                                                           ; - jdk.incubator.vector.Double256Vector::blend@11 (line 364)
                                                                           ; - jdk.incubator.vector.Double256Vector::blend@3 (line 41)
                                                                           ; - jdk.incubator.vector.DoubleVector::lanewise@8 (line 669)
                                                                           ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.36%         0x00007f7b3ebbf3fe:   mov    %eax,%r8d
                 0x00007f7b3ebbf401:   shl    $0x3,%r8                     ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                           ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                           ; - jdk.incubator.vector.DoubleVector::bOpTemplate@9 (line 220)
                                                                           ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                           ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                           ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                           ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800c85fa8::apply@12
                                                                           ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
                                                                           ; - jdk.incubator.vector.DoubleVector::blendTemplate@26 (line 1793)
                                                                           ; - jdk.incubator.vector.Double256Vector::blend@11 (line 364)
                                                                           ; - jdk.incubator.vector.Double256Vector::blend@3 (line 41)
                                                                           ; - jdk.incubator.vector.DoubleVector::lanewise@8 (line 669)
                                                                           ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.44%         0x00007f7b3ebbf405:   mov    %esi,%ebx
   0.07%         0x00007f7b3ebbf407:   shl    $0x3,%rbx                    ;*getfield ones {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@254 (line 131)
   0.34%         0x00007f7b3ebbf40b:   vucomisd %xmm13,%xmm4
   0.00%         0x00007f7b3ebbf410:   setb   %sil
   0.44%         0x00007f7b3ebbf414:   movzbl %sil,%esi
   0.05%         0x00007f7b3ebbf418:   xor    $0x1,%esi
   0.35%         0x00007f7b3ebbf41b:   mov    %esi,0x54(%rsp)
   0.00%         0x00007f7b3ebbf41f:   vucomisd %xmm8,%xmm4
   0.40%         0x00007f7b3ebbf424:   setb   %dl
   0.09%         0x00007f7b3ebbf427:   movzbl %dl,%edx
   0.34%         0x00007f7b3ebbf42a:   xor    $0x1,%edx                    ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.DoubleVector::compareWithOp@93 (line 1673)
                                                                           ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@4 (line 1660)
                                                                           ; - jdk.incubator.vector.DoubleVector$$Lambda$75/0x0000000800c85b88::apply@9
                                                                           ; - jdk.incubator.vector.DoubleVector::bTest@53 (line 378)
                                                                           ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$62@9 (line 1659)
                                                                           ; - jdk.incubator.vector.DoubleVector$$Lambda$74/0x0000000800c85768::apply@9
                                                                           ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
                                                                           ; - jdk.incubator.vector.DoubleVector::compareTemplate@52 (line 1654)
                                                                           ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1723)
                                                                           ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
                                                                           ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
                 0x00007f7b3ebbf42d:   mov    %edx,0x50(%rsp)
   0.45%         0x00007f7b3ebbf431:   vaddsd %xmm6,%xmm11,%xmm11          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                           ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84638::apply@4
                                                                           ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                           ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                           ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                           ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                           ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c841f0::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                           ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                           ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                           ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                           ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@189 (line 122)
   0.06%         0x00007f7b3ebbf435:   vmovsd %xmm11,0xd8(%rsp)
   0.37%         0x00007f7b3ebbf43e:   vmulsd %xmm11,%xmm11,%xmm6          ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
                                                                           ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800c84f08::apply@4
                                                                           ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                           ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                           ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                           ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                           ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c84cc0::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                           ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                           ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                           ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                           ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@221 (line 126)
                 0x00007f7b3ebbf443:   vmovsd %xmm6,0xb0(%rsp)
   0.43%         0x00007f7b3ebbf44c:   vaddsd %xmm5,%xmm5,%xmm5            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                           ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84638::apply@4
                                                                           ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                           ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                           ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                           ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                           ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c841f0::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                           ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                           ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                           ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                           ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@198 (line 123)
   0.08%         0x00007f7b3ebbf450:   vmulsd %xmm14,%xmm5,%xmm5           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
                                                                           ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800c84f08::apply@4
                                                                           ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                           ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                           ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                           ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                           ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c84cc0::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                           ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                           ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                           ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                           ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@203 (line 123)
   0.95%         0x00007f7b3ebbf455:   vaddsd %xmm12,%xmm5,%xmm5           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                           ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84638::apply@4
                                                                           ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                           ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                           ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                           ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                           ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c841f0::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                           ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                           ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                           ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                           ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@208 (line 123)
   0.08%         0x00007f7b3ebbf45a:   vmovsd %xmm5,0x110(%rsp)
   0.45%         0x00007f7b3ebbf463:   vmulsd %xmm5,%xmm5,%xmm14           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
                                                                           ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800c84f08::apply@4
                                                                           ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                           ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                           ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                           ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                           ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c84cc0::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                           ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                           ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                           ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                           ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@230 (line 127)
   0.09%         0x00007f7b3ebbf467:   vmovsd %xmm14,0x70(%rsp)
   0.34%         0x00007f7b3ebbf46d:   vaddsd %xmm14,%xmm6,%xmm11          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                           ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84638::apply@4
                                                                           ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                           ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                           ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                           ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                           ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c841f0::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                           ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                           ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                           ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                           ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@239 (line 130)
   0.08%         0x00007f7b3ebbf472:   vucomisd %xmm11,%xmm4
   0.59%         0x00007f7b3ebbf477:   setb   %al
   0.35%         0x00007f7b3ebbf47a:   movzbl %al,%eax
   0.94%         0x00007f7b3ebbf47d:   xor    $0x1,%eax                    ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.DoubleVector::compareWithOp@93 (line 1673)
                                                                           ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@4 (line 1660)
                                                                           ; - jdk.incubator.vector.DoubleVector$$Lambda$75/0x0000000800c85b88::apply@9
                                                                           ; - jdk.incubator.vector.DoubleVector::bTest@53 (line 378)
                                                                           ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$62@9 (line 1659)
                                                                           ; - jdk.incubator.vector.DoubleVector$$Lambda$74/0x0000000800c85768::apply@9
                                                                           ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
                                                                           ; - jdk.incubator.vector.DoubleVector::compareTemplate@52 (line 1654)
                                                                           ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1723)
                                                                           ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
                                                                           ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
   0.31%         0x00007f7b3ebbf480:   mov    %eax,0x4c(%rsp)
   1.16%         0x00007f7b3ebbf484:   vaddsd 0x438(%rsp),%xmm9,%xmm9      ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                           ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84638::apply@4
                                                                           ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                           ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                           ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                           ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                           ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c841f0::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                           ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                           ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                           ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                           ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@189 (line 122)
   0.07%         0x00007f7b3ebbf48d:   vmovsd %xmm9,0x78(%rsp)
   0.69%         0x00007f7b3ebbf493:   vmulsd %xmm9,%xmm9,%xmm14           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
                                                                           ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800c84f08::apply@4
                                                                           ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                           ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                           ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                           ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                           ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c84cc0::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                           ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                           ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                           ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                           ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@221 (line 126)
   0.06%         0x00007f7b3ebbf498:   vmovsd %xmm14,0x80(%rsp)
   0.71%         0x00007f7b3ebbf4a1:   vaddsd %xmm10,%xmm10,%xmm10         ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                           ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84638::apply@4
                                                                           ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                           ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                           ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                           ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                           ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c841f0::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                           ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                           ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                           ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                           ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@198 (line 123)
   0.03%         0x00007f7b3ebbf4a6:   vmulsd %xmm15,%xmm10,%xmm10         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
                                                                           ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800c84f08::apply@4
                                                                           ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                           ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                           ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                           ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                           ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c84cc0::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                           ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                           ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                           ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                           ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@203 (line 123)
   0.11%         0x00007f7b3ebbf4ab:   vaddsd %xmm12,%xmm10,%xmm10         ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                           ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84638::apply@4
                                                                           ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                           ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                           ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                           ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                           ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c841f0::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                           ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                           ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                           ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                           ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@208 (line 123)
   0.04%         0x00007f7b3ebbf4b0:   vmovsd %xmm10,0x88(%rsp)
   0.71%         0x00007f7b3ebbf4b9:   vmulsd %xmm10,%xmm10,%xmm15         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
                                                                           ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800c84f08::apply@4
                                                                           ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                           ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                           ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                           ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                           ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c84cc0::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                           ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                           ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                           ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                           ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@230 (line 127)
   0.06%         0x00007f7b3ebbf4be:   vmovsd %xmm15,0x90(%rsp)
   0.10%         0x00007f7b3ebbf4c7:   vaddsd %xmm15,%xmm14,%xmm12         ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                           ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84638::apply@4
                                                                           ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                           ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                           ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                           ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                           ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c841f0::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                           ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                           ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                           ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                           ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@239 (line 130)
   0.07%         0x00007f7b3ebbf4cc:   vucomisd %xmm12,%xmm4
   0.72%         0x00007f7b3ebbf4d1:   setb   %r10b
   0.08%         0x00007f7b3ebbf4d5:   movzbl %r10b,%r10d
   0.13%         0x00007f7b3ebbf4d9:   xor    $0x1,%r10d                   ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.DoubleVector::compareWithOp@93 (line 1673)
                                                                           ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@4 (line 1660)
                                                                           ; - jdk.incubator.vector.DoubleVector$$Lambda$75/0x0000000800c85b88::apply@9
                                                                           ; - jdk.incubator.vector.DoubleVector::bTest@53 (line 378)
                                                                           ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$62@9 (line 1659)
                                                                           ; - jdk.incubator.vector.DoubleVector$$Lambda$74/0x0000000800c85768::apply@9
                                                                           ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
                                                                           ; - jdk.incubator.vector.DoubleVector::compareTemplate@52 (line 1654)
                                                                           ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1723)
                                                                           ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
                                                                           ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
   0.22%         0x00007f7b3ebbf4dd:   mov    %r10d,0x48(%rsp)
   1.10%         0x00007f7b3ebbf4e2:   mov    %r13d,%ebp
   0.03%         0x00007f7b3ebbf4e5:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@275 (line 135)
   0.07%         0x00007f7b3ebbf4e7:   vucomisd %xmm4,%xmm11
   0.00%  ╭      0x00007f7b3ebbf4eb:   jp     0x00007f7b3ebbf4f3
   0.66%  │      0x00007f7b3ebbf4ed:   jbe    0x00007f7b3ebbfb15
   0.03%  ↘      0x00007f7b3ebbf4f3:   vucomisd %xmm4,%xmm12
   0.01%   ╭     0x00007f7b3ebbf4f7:   jp     0x00007f7b3ebbf4ff
   0.00%   │     0x00007f7b3ebbf4f9:   jbe    0x00007f7b3ebbfe65           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │                                                               ; - jdk.incubator.vector.DoubleVector::bOpTemplate@52 (line 224)
           │                                                               ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
           │                                                               ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
           │                                                               ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
           │                                                               ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800c85fa8::apply@12
           │                                                               ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
           │                                                               ; - jdk.incubator.vector.DoubleVector::blendTemplate@26 (line 1793)
           │                                                               ; - jdk.incubator.vector.Double256Vector::blend@11 (line 364)
           │                                                               ; - jdk.incubator.vector.Double256Vector::blend@3 (line 41)
           │                                                               ; - jdk.incubator.vector.DoubleVector::lanewise@8 (line 669)
           │                                                               ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
           │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.02%   ↘     0x00007f7b3ebbf4ff:   vucomisd %xmm4,%xmm13
            ╭    0x00007f7b3ebbf503:   jp     0x00007f7b3ebbf50b
            │    0x00007f7b3ebbf505:   jbe    0x00007f7b3ebbf807
   0.00%    ↘    0x00007f7b3ebbf50b:   vucomisd %xmm4,%xmm8
             ╭   0x00007f7b3ebbf50f:   jp     0x00007f7b3ebbf517
             │   0x00007f7b3ebbf511:   jbe    0x00007f7b3ebbfb3f
   0.00%     ↘   0x00007f7b3ebbf517:   vucomisd %xmm4,%xmm11
                 0x00007f7b3ebbf51b:   vmovupd %xmm0,%xmm13
                 0x00007f7b3ebbf51f:   nop
              ╭  0x00007f7b3ebbf520:   jp     0x00007f7b3ebbf528
   0.00%      │  0x00007f7b3ebbf522:   jbe    0x00007f7b3ebbff3c
              ↘  0x00007f7b3ebbf528:   vmovupd %xmm12,%xmm0
                 0x00007f7b3ebbf52d:   mov    %rbx,0x8(%rsp)
                 0x00007f7b3ebbf532:   mov    %r8,0x20(%rsp)
                 0x00007f7b3ebbf537:   vmovsd 0x68(%rsp),%xmm8
                 0x00007f7b3ebbf53d:   vmovsd 0x60(%rsp),%xmm1
                 0x00007f7b3ebbf543:   vmovsd 0x58(%rsp),%xmm12
                 0x00007f7b3ebbf549:   vmovsd 0x1a0(%rsp),%xmm9
                 0x00007f7b3ebbf552:   vmovsd 0x128(%rsp),%xmm11
                 0x00007f7b3ebbf55b:   mov    %r13d,0x44(%rsp)
                 0x00007f7b3ebbf560:   mov    %rdi,0x28(%rsp)
....................................................................................................
  16.25%  <total for region 3>

....[Hottest Regions]...............................................................................
  36.15%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 1076 
  30.81%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 1076 
  16.25%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 1076 
   6.73%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 1076 
   3.53%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 1076 
   0.36%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 1076 
   0.36%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 2, compile id 1107 
   0.22%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 1076 
   0.15%               kernel  [unknown] 
   0.15%          c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 1106 
   0.15%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 1076 
   0.14%               kernel  [unknown] 
   0.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 1076 
   0.10%         libc-2.31.so  [unknown] 
   0.09%            libjvm.so  HeapRegionManager::par_iterate 
   0.09%            libjvm.so  HeapRegionClaimer::claim_region 
   0.09%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 1076 
   0.09%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 1076 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   4.28%  <...other 821 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.37%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 1076 
   1.47%               kernel  [unknown] 
   0.36%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 2, compile id 1107 
   0.20%         libc-2.31.so  [unknown] 
   0.15%          c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 1106 
   0.13%                       <unknown> 
   0.09%            libjvm.so  HeapRegionManager::par_iterate 
   0.09%            libjvm.so  HeapRegionClaimer::claim_region 
   0.06%            libjvm.so  G1Policy::preventive_collection_required 
   0.06%            libjvm.so  TypeArrayKlass::allocate_common 
   0.06%            libjvm.so  ObjArrayAllocator::initialize 
   0.05%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.05%            libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.05%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.05%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.04%            libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.04%               [vdso]  __vdso_clock_gettime 
   0.04%            libjvm.so  G1FromCardCache::clear 
   0.04%            libjvm.so  JVMCIRuntime::new_array_common 
   0.04%            libjvm.so  G1RebuildFreeListTask::work 
   1.56%  <...other 270 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.73%       jvmci, level 4
   1.78%            libjvm.so
   1.47%               kernel
   0.32%         libc-2.31.so
   0.15%          c1, level 3
   0.14%          interpreter
   0.13%                     
   0.09%   libpthread-2.31.so
   0.08%  libjvmcicompiler.so
   0.05%           ld-2.31.so
   0.04%               [vdso]
   0.01%       hsdis-amd64.so
   0.00%       perf-40900.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:15:20

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
MandelbrotVectorApiBenchmark.baseline                 1000     256  avgt    5   33.388 ± 0.005  ms/op
MandelbrotVectorApiBenchmark.baseline:·asm            1000     256  avgt           NaN            ---
MandelbrotVectorApiBenchmark.baseline                 1000     512  avgt    5  133.121 ± 0.509  ms/op
MandelbrotVectorApiBenchmark.baseline:·asm            1000     512  avgt           NaN            ---
MandelbrotVectorApiBenchmark.baseline                 2000     256  avgt    5   65.845 ± 0.007  ms/op
MandelbrotVectorApiBenchmark.baseline:·asm            2000     256  avgt           NaN            ---
MandelbrotVectorApiBenchmark.baseline                 2000     512  avgt    5  262.675 ± 0.028  ms/op
MandelbrotVectorApiBenchmark.baseline:·asm            2000     512  avgt           NaN            ---
MandelbrotVectorApiBenchmark.vectorized               1000     256  avgt    5   27.016 ± 0.514  ms/op
MandelbrotVectorApiBenchmark.vectorized:·asm          1000     256  avgt           NaN            ---
MandelbrotVectorApiBenchmark.vectorized               1000     512  avgt    5  100.228 ± 0.303  ms/op
MandelbrotVectorApiBenchmark.vectorized:·asm          1000     512  avgt           NaN            ---
MandelbrotVectorApiBenchmark.vectorized               2000     256  avgt    5   44.404 ± 0.684  ms/op
MandelbrotVectorApiBenchmark.vectorized:·asm          2000     256  avgt           NaN            ---
MandelbrotVectorApiBenchmark.vectorized               2000     512  avgt    5  147.450 ± 1.744  ms/op
MandelbrotVectorApiBenchmark.vectorized:·asm          2000     512  avgt           NaN            ---
