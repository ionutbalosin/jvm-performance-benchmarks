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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark.baseline
# Parameters: (size = 32768)

# Run progress: 0.00% complete, ETA 00:06:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 135.303 us/op
# Warmup Iteration   2: 133.235 us/op
# Warmup Iteration   3: 132.996 us/op
# Warmup Iteration   4: 133.003 us/op
# Warmup Iteration   5: 133.002 us/op
Iteration   1: 133.002 us/op
Iteration   2: 132.993 us/op
Iteration   3: 133.001 us/op
Iteration   4: 132.663 us/op
Iteration   5: 132.665 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark.baseline":
  132.865 ±(99.9%) 0.705 us/op [Average]
  (min, avg, max) = (132.663, 132.865, 133.002), stdev = 0.183
  CI (99.9%): [132.160, 133.570] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark.baseline:asm":
PrintAssembly processed: 275492 total address lines.
Perf output processed (skipped 60.516 seconds):
 Column 1: cycles (53947 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline, version 3, compile id 971 

               0x00007ff76b241092:   mov    $0x1,%r11d
               0x00007ff76b241098:   mov    0x10(%rsp),%r9
               0x00007ff76b24109d:   data16 xchg %ax,%ax
          ╭    0x00007ff76b2410a0:   jmp    0x00007ff76b241162           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@2 (line 81)
          │    0x00007ff76b2410a5:   data16 data16 nopw 0x0(%rax,%rax,1)
          │    0x00007ff76b2410b0:   data16 data16 xchg %ax,%ax
          │    0x00007ff76b2410b4:   nopl   0x0(%rax,%rax,1)
          │    0x00007ff76b2410bc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@7 (line 81)
   1.50%  │↗   0x00007ff76b2410c0:   vmulss 0x10(%rdx,%r11,4),%xmm4,%xmm0;*faload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@41 (line 82)
   6.14%  ││   0x00007ff76b2410c7:   vmulss 0x10(%r8,%r11,4),%xmm2,%xmm11;*faload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@22 (line 82)
   3.85%  ││   0x00007ff76b2410ce:   vmulss 0x10(%rbx,%r11,4),%xmm3,%xmm12;*fmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@32 (line 82)
   5.92%  ││   0x00007ff76b2410d5:   vaddss %xmm12,%xmm11,%xmm11         ;*fadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@33 (line 82)
   3.15%  ││   0x00007ff76b2410da:   vaddss %xmm0,%xmm11,%xmm0           ;*fadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@43 (line 82)
   3.99%  ││   0x00007ff76b2410de:   vmovss %xmm0,0x10(%r9,%r11,4)       ;*fastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@44 (line 82)
   3.00%  ││   0x00007ff76b2410e5:   vmulss 0x10(%rdx,%r11,4),%xmm7,%xmm0;*faload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@76 (line 83)
   4.50%  ││   0x00007ff76b2410ec:   vmulss 0x10(%r8,%r11,4),%xmm5,%xmm11;*faload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@57 (line 83)
   4.26%  ││   0x00007ff76b2410f3:   vmulss 0x10(%rbx,%r11,4),%xmm6,%xmm12;*fmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@67 (line 83)
   4.66%  ││   0x00007ff76b2410fa:   vaddss %xmm12,%xmm11,%xmm11         ;*fadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@68 (line 83)
   1.24%  ││   0x00007ff76b2410ff:   vaddss %xmm0,%xmm11,%xmm0           ;*fadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@78 (line 83)
   3.15%  ││   0x00007ff76b241103:   vmovss %xmm0,0x10(%rax,%r11,4)      ;*fastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@79 (line 83)
   3.27%  ││   0x00007ff76b24110a:   vmulss 0x10(%r8,%r11,4),%xmm9,%xmm0 ;*faload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@92 (line 84)
   2.77%  ││   0x00007ff76b241111:   vmulss 0x10(%rbx,%r11,4),%xmm10,%xmm11;*faload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@101 (line 84)
   6.04%  ││   0x00007ff76b241118:   vaddss %xmm11,%xmm0,%xmm0           ;*fadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@103 (line 84)
   1.50%  ││   0x00007ff76b24111d:   vmulss 0x10(%rdx,%r11,4),%xmm1,%xmm11;*fmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@112 (line 84)
          ││                                                             ;   {no_reloc}
   4.10%  ││   0x00007ff76b241124:   vaddss %xmm11,%xmm0,%xmm0           ;*fadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@113 (line 84)
   3.20%  ││   0x00007ff76b241129:   vucomiss %xmm8,%xmm0
   2.47%  ││   0x00007ff76b24112e:   ja     0x00007ff76b2411df           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@164 (line 91)
   2.20%  ││   0x00007ff76b241134:   vmovss %xmm0,0x10(%r14,%r11,4)      ;*fastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@114 (line 84)
   3.08%  ││   0x00007ff76b24113b:   vmovss 0x10(%r9,%r11,4),%xmm0       ;*faload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@120 (line 85)
   2.78%  ││   0x00007ff76b241142:   vucomiss %xmm8,%xmm0
   1.51%  ││   0x00007ff76b241147:   ja     0x00007ff76b2411b9           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@124 (line 85)
   3.04%  ││   0x00007ff76b24114d:   vmovss 0x10(%rax,%r11,4),%xmm0      ;*faload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@140 (line 88)
   1.84%  ││   0x00007ff76b241154:   vucomiss %xmm8,%xmm0
   3.92%  ││   0x00007ff76b241159:   ja     0x00007ff76b241326           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@144 (line 88)
   3.20%  ││   0x00007ff76b24115f:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@175 (line 81)
   1.84%  ↘│   0x00007ff76b241162:   cmp    %r11d,%r10d
           ╰   0x00007ff76b241165:   jg     0x00007ff76b2410c0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@7 (line 81)
            ↗  0x00007ff76b24116b:   mov    %r9,%rax                     ;*areturn {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@185 (line 95)
            │  0x00007ff76b24116e:   mov    0x20(%rsp),%rbp
   0.00%    │  0x00007ff76b241173:   add    $0x28,%rsp
            │  0x00007ff76b241177:   nopw   0x0(%rax,%rax,1)
            │  0x00007ff76b241180:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            │  0x00007ff76b241187:   ja     0x00007ff76b241361
            │  0x00007ff76b24118d:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@7 (line 81)
            │  0x00007ff76b24118e:   mov    %r11,%r9
            ╰  0x00007ff76b241191:   jmp    0x00007ff76b24116b           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@181 (line 95)
               0x00007ff76b241193:   mov    $0x798,%r10
               0x00007ff76b24119a:   movl   $0xffffffe5,0x484(%r15)      ;*faload {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  92.10%  <total for region 1>

....[Hottest Regions]...............................................................................
  92.10%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline, version 3, compile id 971 
   0.70%              kernel  [unknown] 
   0.49%              kernel  [unknown] 
   0.46%              kernel  [unknown] 
   0.35%              kernel  [unknown] 
   0.29%              kernel  [unknown] 
   0.26%              kernel  [unknown] 
   0.14%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.09%           libjvm.so  ElfSymbolTable::lookup 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.05%        libc-2.31.so  __strchrnul_avx2 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%           libjvm.so  fileStream::flush 
   0.05%          ld-2.31.so  __tls_get_addr 
   4.39%  <...other 1065 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  92.12%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline, version 3, compile id 971 
   5.00%              kernel  [unknown] 
   0.64%                      <unknown> 
   0.18%        libc-2.31.so  __vfprintf_internal 
   0.10%           libjvm.so  xmlStream::write_text 
   0.09%           libjvm.so  ElfSymbolTable::lookup 
   0.08%           libjvm.so  defaultStream::write 
   0.07%        libc-2.31.so  _IO_fwrite 
   0.07%        libc-2.31.so  __strchrnul_avx2 
   0.06%      hsdis-amd64.so  print_insn 
   0.05%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.05%        libc-2.31.so  _IO_default_xsputn 
   0.05%        libc-2.31.so  __strchr_avx2 
   0.05%           libjvm.so  fileStream::flush 
   0.05%          ld-2.31.so  __tls_get_addr 
   0.04%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.04%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.04%           libjvm.so  stringStream::write 
   0.04%        libc-2.31.so  syscall 
   0.03%        libc-2.31.so  __vsnprintf_internal 
   1.13%  <...other 250 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  92.16%      jvmci, level 4
   5.00%              kernel
   0.88%           libjvm.so
   0.80%        libc-2.31.so
   0.64%                    
   0.23%         interpreter
   0.11%      hsdis-amd64.so
   0.07%  libpthread-2.31.so
   0.05%          ld-2.31.so
   0.04%         c1, level 3
   0.01%              [vdso]
   0.01%    perf-2128810.map
   0.01%         c1, level 2
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark.baseline
# Parameters: (size = 65536)

# Run progress: 25.00% complete, ETA 00:05:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 267.375 us/op
# Warmup Iteration   2: 263.179 us/op
# Warmup Iteration   3: 262.830 us/op
# Warmup Iteration   4: 262.807 us/op
# Warmup Iteration   5: 263.209 us/op
Iteration   1: 263.184 us/op
Iteration   2: 263.191 us/op
Iteration   3: 262.867 us/op
Iteration   4: 262.828 us/op
Iteration   5: 262.851 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark.baseline":
  262.984 ±(99.9%) 0.718 us/op [Average]
  (min, avg, max) = (262.828, 262.984, 263.191), stdev = 0.186
  CI (99.9%): [262.266, 263.702] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark.baseline:asm":
PrintAssembly processed: 273586 total address lines.
Perf output processed (skipped 60.508 seconds):
 Column 1: cycles (54304 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline, version 3, compile id 968 

              0x00007f5ba723ff12:   mov    $0x1,%r11d
              0x00007f5ba723ff18:   mov    0x10(%rsp),%r9
              0x00007f5ba723ff1d:   data16 xchg %ax,%ax
          ╭   0x00007f5ba723ff20:   jmp    0x00007f5ba723ffe2           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@2 (line 81)
          │   0x00007f5ba723ff25:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f5ba723ff30:   data16 data16 xchg %ax,%ax
          │   0x00007f5ba723ff34:   nopl   0x0(%rax,%rax,1)
          │   0x00007f5ba723ff3c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@7 (line 81)
   1.26%  │↗  0x00007f5ba723ff40:   vmulss 0x10(%rdx,%r11,4),%xmm4,%xmm0;*faload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@41 (line 82)
   7.01%  ││  0x00007f5ba723ff47:   vmulss 0x10(%r8,%r11,4),%xmm2,%xmm11;*faload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@22 (line 82)
   2.92%  ││  0x00007f5ba723ff4e:   vmulss 0x10(%rbx,%r11,4),%xmm3,%xmm12;*fmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@32 (line 82)
   6.80%  ││  0x00007f5ba723ff55:   vaddss %xmm12,%xmm11,%xmm11         ;*fadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@33 (line 82)
   1.64%  ││  0x00007f5ba723ff5a:   vaddss %xmm0,%xmm11,%xmm0           ;*fadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@43 (line 82)
   1.95%  ││  0x00007f5ba723ff5e:   vmovss %xmm0,0x10(%r9,%r11,4)       ;*fastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@44 (line 82)
   2.72%  ││  0x00007f5ba723ff65:   vmulss 0x10(%rdx,%r11,4),%xmm7,%xmm0;*faload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@76 (line 83)
   4.68%  ││  0x00007f5ba723ff6c:   vmulss 0x10(%r8,%r11,4),%xmm5,%xmm11;*faload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@57 (line 83)
   4.20%  ││  0x00007f5ba723ff73:   vmulss 0x10(%rbx,%r11,4),%xmm6,%xmm12;*fmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@67 (line 83)
   4.73%  ││  0x00007f5ba723ff7a:   vaddss %xmm12,%xmm11,%xmm11         ;*fadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@68 (line 83)
   1.22%  ││  0x00007f5ba723ff7f:   vaddss %xmm0,%xmm11,%xmm0           ;*fadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@78 (line 83)
   3.22%  ││  0x00007f5ba723ff83:   vmovss %xmm0,0x10(%rax,%r11,4)      ;*fastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@79 (line 83)
   4.11%  ││  0x00007f5ba723ff8a:   vmulss 0x10(%r8,%r11,4),%xmm9,%xmm0 ;*faload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@92 (line 84)
   2.22%  ││  0x00007f5ba723ff91:   vmulss 0x10(%rbx,%r11,4),%xmm10,%xmm11;*faload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@101 (line 84)
   6.66%  ││  0x00007f5ba723ff98:   vaddss %xmm11,%xmm0,%xmm0           ;*fadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@103 (line 84)
   1.07%  ││  0x00007f5ba723ff9d:   vmulss 0x10(%rdx,%r11,4),%xmm1,%xmm11;*fmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@112 (line 84)
          ││                                                            ;   {no_reloc}
   3.64%  ││  0x00007f5ba723ffa4:   vaddss %xmm11,%xmm0,%xmm0           ;*fadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@113 (line 84)
   4.33%  ││  0x00007f5ba723ffa9:   vucomiss %xmm8,%xmm0
   2.44%  ││  0x00007f5ba723ffae:   ja     0x00007f5ba724005f           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@164 (line 91)
   2.99%  ││  0x00007f5ba723ffb4:   vmovss %xmm0,0x10(%r14,%r11,4)      ;*fastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@114 (line 84)
   2.11%  ││  0x00007f5ba723ffbb:   vmovss 0x10(%r9,%r11,4),%xmm0       ;*faload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@120 (line 85)
   3.07%  ││  0x00007f5ba723ffc2:   vucomiss %xmm8,%xmm0
   1.11%  ││  0x00007f5ba723ffc7:   ja     0x00007f5ba7240039           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@124 (line 85)
   3.48%  ││  0x00007f5ba723ffcd:   vmovss 0x10(%rax,%r11,4),%xmm0      ;*faload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@140 (line 88)
   1.52%  ││  0x00007f5ba723ffd4:   vucomiss %xmm8,%xmm0
   5.05%  ││  0x00007f5ba723ffd9:   ja     0x00007f5ba72401a6           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@144 (line 88)
   4.00%  ││  0x00007f5ba723ffdf:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@175 (line 81)
   1.39%  ↘│  0x00007f5ba723ffe2:   cmp    %r11d,%r10d
           ╰  0x00007f5ba723ffe5:   jg     0x00007f5ba723ff40           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@7 (line 81)
              0x00007f5ba723ffeb:   mov    %r9,%rax                     ;*areturn {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@185 (line 95)
              0x00007f5ba723ffee:   mov    0x20(%rsp),%rbp
              0x00007f5ba723fff3:   add    $0x28,%rsp
              0x00007f5ba723fff7:   nopw   0x0(%rax,%rax,1)
              0x00007f5ba7240000:   cmp    0x450(%r15),%rsp             ;   {poll_return}
              0x00007f5ba7240007:   ja     0x00007f5ba72401e1
....................................................................................................
  91.53%  <total for region 1>

....[Hottest Regions]...............................................................................
  91.53%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline, version 3, compile id 968 
   0.86%              kernel  [unknown] 
   0.71%              kernel  [unknown] 
   0.59%              kernel  [unknown] 
   0.44%              kernel  [unknown] 
   0.31%              kernel  [unknown] 
   0.25%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.11%           libjvm.so  ElfSymbolTable::lookup 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%  libpthread-2.31.so  __libc_write 
   0.05%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.05%              kernel  [unknown] 
   0.05%           libjvm.so  defaultStream::write 
   4.43%  <...other 1159 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  91.54%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline, version 3, compile id 968 
   5.32%              kernel  [unknown] 
   0.85%                      <unknown> 
   0.16%        libc-2.31.so  __vfprintf_internal 
   0.11%           libjvm.so  ElfSymbolTable::lookup 
   0.08%        libc-2.31.so  _IO_fwrite 
   0.08%        libc-2.31.so  _IO_default_xsputn 
   0.07%           libjvm.so  defaultStream::write 
   0.07%           libjvm.so  xmlStream::write_text 
   0.07%      hsdis-amd64.so  print_insn 
   0.06%        libc-2.31.so  __strchrnul_avx2 
   0.05%        libc-2.31.so  __strchr_avx2 
   0.05%           libjvm.so  fileStream::write 
   0.05%  libpthread-2.31.so  __libc_write 
   0.05%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.04%        libc-2.31.so  __strlen_avx2 
   0.04%        libc-2.31.so  syscall 
   0.04%          ld-2.31.so  __tls_get_addr 
   0.03%         interpreter  return entry points  
   0.03%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   1.21%  <...other 268 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  91.55%      jvmci, level 4
   5.32%              kernel
   0.87%           libjvm.so
   0.85%                    
   0.82%        libc-2.31.so
   0.23%         interpreter
   0.12%  libpthread-2.31.so
   0.10%      hsdis-amd64.so
   0.07%         c1, level 3
   0.04%          ld-2.31.so
   0.02%         c1, level 2
   0.01%              [vdso]
   0.01%    perf-2128881.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark.vectorized
# Parameters: (size = 32768)

# Run progress: 50.00% complete, ETA 00:03:54
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2305.399 us/op
# Warmup Iteration   2: 845.304 us/op
# Warmup Iteration   3: 845.140 us/op
# Warmup Iteration   4: 845.281 us/op
# Warmup Iteration   5: 845.327 us/op
Iteration   1: 845.078 us/op
Iteration   2: 841.615 us/op
Iteration   3: 840.340 us/op
Iteration   4: 840.474 us/op
Iteration   5: 841.017 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark.vectorized":
  841.705 ±(99.9%) 7.516 us/op [Average]
  (min, avg, max) = (840.340, 841.705, 845.078), stdev = 1.952
  CI (99.9%): [834.189, 849.220] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark.vectorized:asm":
PrintAssembly processed: 299670 total address lines.
Perf output processed (skipped 60.214 seconds):
 Column 1: cycles (50706 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized, version 4, compile id 1196 

 <region is too big to display, has 3063 lines, but threshold is 1000>
....................................................................................................
  37.47%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, jdk.internal.vm.vector.VectorSupport::blend, version 2, compile id 1168 

             [Verified Entry Point]
               # {method} {0x00007f4e0b03b200} &apos;blend&apos; &apos;(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;ILjdk/internal/vm/vector/VectorSupport$Vector;Ljdk/internal/vm/vector/VectorSupport$Vector;Ljdk/internal/vm/vector/VectorSupport$VectorMask;Ljdk/internal/vm/vector/VectorSupport$VectorBlendOp;)Ljdk/internal/vm/vector/VectorSupport$Vector;&apos; in &apos;jdk/internal/vm/vector/VectorSupport&apos;
               # parm0:    rsi:rsi   = &apos;java/lang/Class&apos;
               # parm1:    rdx:rdx   = &apos;java/lang/Class&apos;
               # parm2:    rcx:rcx   = &apos;java/lang/Class&apos;
               # parm3:    r8        = int
               # parm4:    r9:r9     = &apos;jdk/internal/vm/vector/VectorSupport$Vector&apos;
               # parm5:    rdi:rdi   = &apos;jdk/internal/vm/vector/VectorSupport$Vector&apos;
               # parm6:    [sp+0x20]   = &apos;jdk/internal/vm/vector/VectorSupport$VectorMask&apos;  (sp of caller)
               # parm7:    [sp+0x28]   = &apos;jdk/internal/vm/vector/VectorSupport$VectorBlendOp&apos;
   0.25%       0x00007f4e87271cc0:   mov    %eax,-0x14000(%rsp)
   0.11%       0x00007f4e87271cc7:   sub    $0x18,%rsp
   0.27%       0x00007f4e87271ccb:   nop
   0.01%       0x00007f4e87271ccc:   cmpl   $0x0,0x20(%r15)
   0.02%       0x00007f4e87271cd4:   jne    0x00007f4e8727221f
   0.08%       0x00007f4e87271cda:   mov    %rbp,0x10(%rsp)
   0.25%       0x00007f4e87271cdf:   mov    0x20(%rsp),%r10
   0.01%       0x00007f4e87271ce4:   mov    0x28(%rsp),%r11              ; ImmutableOopMap {rdi=Oop r9=Oop r10=Oop r11=Oop }
                                                                         ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) jdk.internal.vm.vector.VectorSupport::blend@0 (line 624)
   0.01%       0x00007f4e87271ce9:   cmpl   $0x10c4910,0x8(%r9)          ; implicit exception: dispatches to 0x00007f4e87272246
                                                                         ;   {metadata(&apos;jdk/incubator/vector/Float256Vector&apos;)}
   0.11%       0x00007f4e87271cf1:   jne    0x00007f4e8727220d           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d22f0::apply@1
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.27%       0x00007f4e87271cf7:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rdi=Oop r9=Oop r10=Oop r11=Oop }
                                                                         ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) jdk.internal.vm.vector.VectorSupport::blend@0 (line 624)
   0.00%       0x00007f4e87271d00:   cmpl   $0x10c4910,0x8(%rdi)         ; implicit exception: dispatches to 0x00007f4e8727226d
                                                                         ;   {metadata(&apos;jdk/incubator/vector/Float256Vector&apos;)}
   0.01%       0x00007f4e87271d07:   jne    0x00007f4e872721e9           ; ImmutableOopMap {rdi=Oop r9=Oop r10=Oop r11=Oop }
                                                                         ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) jdk.internal.vm.vector.VectorSupport::blend@0 (line 624)
   0.11%       0x00007f4e87271d0d:   cmpl   $0x10c4f80,0x8(%r10)         ; implicit exception: dispatches to 0x00007f4e87272290
                                                                         ;   {metadata(&apos;jdk/incubator/vector/Float256Vector$Float256Mask&apos;)}
   0.29%       0x00007f4e87271d15:   jne    0x00007f4e872721c5           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d22f0::apply@9
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.03%       0x00007f4e87271d1b:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rdi=Oop r9=Oop r10=Oop r11=Oop }
                                                                         ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) jdk.internal.vm.vector.VectorSupport::blend@0 (line 624)
   0.01%       0x00007f4e87271d20:   cmpl   $0x10d22f0,0x8(%r11)         ; implicit exception: dispatches to 0x00007f4e872722b3
                                                                         ;   {metadata(&apos;jdk/incubator/vector/FloatVector$$Lambda+0x00007f4e0c0d22f0&apos;)}
   0.10%       0x00007f4e87271d28:   jne    0x00007f4e872721af           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.27%       0x00007f4e87271d2e:   mov    0xc(%r9),%r8d                ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                         ; - jdk.incubator.vector.Float256Vector::vec@1 (line 117)
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@8 (line 205)
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@7 (line 224)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.02%       0x00007f4e87271d32:   test   %r8d,%r8d
               0x00007f4e87271d35:   je     0x00007f4e87272031
   0.01%       0x00007f4e87271d3b:   mov    0x8(,%r8,8),%esi
   0.23%       0x00007f4e87271d43:   movabs $0x7f4e0b000000,%rax         ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Float256Vector::vec@4 (line 117)
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@20 (line 227)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.22%       0x00007f4e87271d4d:   lea    (%rax,%rsi,1),%rsi
   0.07%       0x00007f4e87271d51:   movabs $0x7f4e0b001ee0,%rdx         ;   {metadata({type array float})}
   0.00%       0x00007f4e87271d5b:   nopl   0x0(%rax,%rax,1)
   0.06%       0x00007f4e87271d60:   test   %r8d,%r8d
          ╭    0x00007f4e87271d63:   je     0x00007f4e87271d72
   0.22%  │    0x00007f4e87271d69:   cmp    %rsi,%rdx
          │    0x00007f4e87271d6c:   jne    0x00007f4e872720e5           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.incubator.vector.Float256Vector::vec@4 (line 117)
          │                                                              ; - jdk.incubator.vector.FloatVector::bOpTemplate@8 (line 205)
          │                                                              ; - jdk.incubator.vector.FloatVector::bOpTemplate@7 (line 224)
          │                                                              ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
          │                                                              ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
          │                                                              ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
          │                                                              ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d22f0::apply@12
          │                                                              ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.08%  ↘    0x00007f4e87271d72:   data16 nopw 0x0(%rax,%rax,1)
   0.01%       0x00007f4e87271d7c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rdi=Oop r8=NarrowOop r9=Oop r10=Oop r11=Oop }
                                                                         ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) jdk.internal.vm.vector.VectorSupport::blend@0 (line 624)
   0.08%       0x00007f4e87271d80:   cmpl   $0x8,0xc(,%r8,8)             ; implicit exception: dispatches to 0x00007f4e872722d6
   0.27%       0x00007f4e87271d89:   jb     0x00007f4e872721d7           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d22f0::apply@1
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.01%       0x00007f4e87271d8f:   mov    0xc(%rdi),%esi               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                         ; - jdk.incubator.vector.Float256Vector::vec@1 (line 117)
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@17 (line 206)
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@7 (line 224)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.08%       0x00007f4e87271d92:   test   %esi,%esi
               0x00007f4e87271d94:   je     0x00007f4e87272049
   0.25%       0x00007f4e87271d9a:   mov    0x8(,%rsi,8),%eax
   0.07%       0x00007f4e87271da1:   movabs $0x7f4e0b000000,%rcx
   0.00%       0x00007f4e87271dab:   lea    (%rcx,%rax,1),%rax           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Float256Vector::vec@4 (line 117)
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@29 (line 228)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.07%       0x00007f4e87271daf:   test   %esi,%esi
           ╭   0x00007f4e87271db1:   je     0x00007f4e87271dc0
   0.23%   │   0x00007f4e87271db7:   cmp    %rax,%rdx
           │   0x00007f4e87271dba:   jne    0x00007f4e8727219d           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - jdk.incubator.vector.Float256Vector::vec@4 (line 117)
           │                                                             ; - jdk.incubator.vector.FloatVector::bOpTemplate@17 (line 206)
           │                                                             ; - jdk.incubator.vector.FloatVector::bOpTemplate@7 (line 224)
           │                                                             ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
           │                                                             ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
           │                                                             ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
           │                                                             ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d22f0::apply@12
           │                                                             ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.07%   ↘   0x00007f4e87271dc0:   mov    0xc(%r10),%esi               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                         ; - jdk.incubator.vector.Float256Vector$Float256Mask::getBits@1 (line 595)
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@38 (line 229)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.01%       0x00007f4e87271dc4:   test   %esi,%esi
               0x00007f4e87271dc6:   je     0x00007f4e8727203d
   0.07%       0x00007f4e87271dcc:   mov    0x8(,%rsi,8),%eax
   0.36%       0x00007f4e87271dd3:   movabs $0x7f4e0b000000,%rcx
   0.01%       0x00007f4e87271ddd:   lea    (%rcx,%rax,1),%rax
   0.17%       0x00007f4e87271de1:   test   %esi,%esi
            ╭  0x00007f4e87271de3:   je     0x00007f4e87271dfc
   0.04%    │  0x00007f4e87271de9:   movabs $0x7f4e0b001b00,%rcx         ;   {metadata({type array bool})}
   0.17%    │  0x00007f4e87271df3:   cmp    %rax,%rcx
            │  0x00007f4e87271df6:   jne    0x00007f4e87272149           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - jdk.incubator.vector.Float256Vector$Float256Mask::getBits@4 (line 595)
            │                                                            ; - jdk.incubator.vector.FloatVector::bOpTemplate@38 (line 229)
            │                                                            ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
            │                                                            ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
            │                                                            ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
            │                                                            ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d22f0::apply@12
            │                                                            ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.16%    ↘  0x00007f4e87271dfc:   nopl   0x0(%rax)                    ; ImmutableOopMap {rsi=NarrowOop rdi=Oop r8=NarrowOop r9=Oop r10=Oop r11=Oop }
                                                                         ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) jdk.internal.vm.vector.VectorSupport::blend@0 (line 624)
   0.01%       0x00007f4e87271e00:   cmpl   $0x8,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f4e872722f9
   0.22%       0x00007f4e87271e08:   jb     0x00007f4e8727210d           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d22f0::apply@1
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.18%       0x00007f4e87271e0e:   cmpb   $0x0,0x10(,%rsi,8)
   0.08%       0x00007f4e87271e16:   jne    0x00007f4e87272158
   0.26%       0x00007f4e87271e1c:   nopl   0x0(%rax)
   0.06%       0x00007f4e87271e20:   cmpb   $0x0,0x11(,%rsi,8)
   0.05%       0x00007f4e87271e28:   jne    0x00007f4e8727213a
   0.28%       0x00007f4e87271e2e:   cmpb   $0x0,0x12(,%rsi,8)
   0.06%       0x00007f4e87271e36:   jne    0x00007f4e8727212b
   0.12%       0x00007f4e87271e3c:   nopl   0x0(%rax)
   0.21%       0x00007f4e87271e40:   cmpb   $0x0,0x13(,%rsi,8)
   0.06%       0x00007f4e87271e48:   jne    0x00007f4e8727218b
   0.11%       0x00007f4e87271e4e:   cmpb   $0x0,0x14(,%rsi,8)
   0.26%       0x00007f4e87271e56:   jne    0x00007f4e8727211c
   0.04%       0x00007f4e87271e5c:   nopl   0x0(%rax)
   0.07%       0x00007f4e87271e60:   cmpb   $0x0,0x15(,%rsi,8)
   0.26%       0x00007f4e87271e68:   jne    0x00007f4e87272167
   0.05%       0x00007f4e87271e6e:   cmpb   $0x0,0x16(,%rsi,8)
   0.26%       0x00007f4e87271e76:   jne    0x00007f4e872721fb
   0.05%       0x00007f4e87271e7c:   nopl   0x0(%rax)
   0.05%       0x00007f4e87271e80:   cmpb   $0x0,0x17(,%rsi,8)
   0.27%       0x00007f4e87271e88:   jne    0x00007f4e87272179           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@63 (line 231)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.04%       0x00007f4e87271e8e:   mov    0x1b8(%r15),%rsi
   0.06%       0x00007f4e87271e95:   lea    0x10(%rsi),%rax
   0.13%       0x00007f4e87271e99:   nopl   0x0(%rax)
   0.20%       0x00007f4e87271ea0:   cmp    0x1c8(%r15),%rax
               0x00007f4e87271ea7:   ja     0x00007f4e87272092
   0.07%       0x00007f4e87271ead:   mov    %rax,0x1b8(%r15)
   0.05%       0x00007f4e87271eb4:   prefetchw 0xd0(%rsi)
   0.17%       0x00007f4e87271ebb:   movq   $0x1,(%rsi)
   0.51%       0x00007f4e87271ec2:   movl   $0x10c4910,0x8(%rsi)         ;   {metadata(&apos;jdk/incubator/vector/Float256Vector&apos;)}
   0.19%       0x00007f4e87271ec9:   movl   $0x0,0xc(%rsi)
   0.11%       0x00007f4e87271ed0:   mov    %rsi,%rcx                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Float256Vector::vectorFactory@0 (line 171)
                                                                         ; - jdk.incubator.vector.Float256Vector::vectorFactory@2 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@102 (line 233)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.03%       0x00007f4e87271ed3:   mov    0x1b8(%r15),%rsi
   0.44%       0x00007f4e87271eda:   lea    0x30(%rsi),%rax
   0.19%       0x00007f4e87271ede:   xchg   %ax,%ax
   0.04%       0x00007f4e87271ee0:   cmp    0x1c8(%r15),%rax
               0x00007f4e87271ee7:   ja     0x00007f4e872720b7
   0.21%       0x00007f4e87271eed:   mov    %rax,0x1b8(%r15)
   0.52%       0x00007f4e87271ef4:   prefetchw 0xf0(%rsi)
   0.45%       0x00007f4e87271efb:   prefetchw 0x130(%rsi)
   0.12%       0x00007f4e87271f02:   prefetchw 0x170(%rsi)
   0.14%       0x00007f4e87271f09:   prefetchw 0x1b0(%rsi)
   0.30%       0x00007f4e87271f10:   movq   $0x1,(%rsi)
   0.95%       0x00007f4e87271f17:   movl   $0x1ee0,0x8(%rsi)            ;   {metadata({type array float})}
   0.86%       0x00007f4e87271f1e:   movl   $0x8,0xc(%rsi)
   0.14%       0x00007f4e87271f25:   movq   $0x0,0x10(%rsi)
   0.40%       0x00007f4e87271f2d:   movq   $0x0,0x18(%rsi)
   0.07%       0x00007f4e87271f35:   movq   $0x0,0x20(%rsi)
   0.19%       0x00007f4e87271f3d:   movq   $0x0,0x28(%rsi)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@4 (line 204)
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@7 (line 224)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.28%       0x00007f4e87271f45:   vmovss 0x2c(,%r8,8),%xmm0           ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@91 (line 231)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.08%       0x00007f4e87271f4f:   vmovss %xmm0,0x2c(%rsi)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@4 (line 204)
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@7 (line 224)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.19%       0x00007f4e87271f54:   vmovss 0x28(,%r8,8),%xmm0           ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@91 (line 231)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.08%       0x00007f4e87271f5e:   vmovss %xmm0,0x28(%rsi)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@4 (line 204)
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@7 (line 224)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.19%       0x00007f4e87271f63:   vmovss 0x24(,%r8,8),%xmm0           ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@91 (line 231)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.06%       0x00007f4e87271f6d:   vmovss %xmm0,0x24(%rsi)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@4 (line 204)
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@7 (line 224)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.10%       0x00007f4e87271f72:   vmovss 0x20(,%r8,8),%xmm0           ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@91 (line 231)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.07%       0x00007f4e87271f7c:   vmovss %xmm0,0x20(%rsi)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@4 (line 204)
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@7 (line 224)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.27%       0x00007f4e87271f81:   vmovss 0x1c(,%r8,8),%xmm0           ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@91 (line 231)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.04%       0x00007f4e87271f8b:   vmovss %xmm0,0x1c(%rsi)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@4 (line 204)
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@7 (line 224)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.08%       0x00007f4e87271f90:   vmovss 0x18(,%r8,8),%xmm0           ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@91 (line 231)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.07%       0x00007f4e87271f9a:   vmovss %xmm0,0x18(%rsi)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@4 (line 204)
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@7 (line 224)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.28%       0x00007f4e87271f9f:   vmovss 0x14(,%r8,8),%xmm0           ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@91 (line 231)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.04%       0x00007f4e87271fa9:   vmovss %xmm0,0x14(%rsi)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@4 (line 204)
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@7 (line 224)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.25%       0x00007f4e87271fae:   vmovss 0x10(,%r8,8),%xmm0           ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@91 (line 231)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.00%       0x00007f4e87271fb8:   vmovss %xmm0,0x10(%rsi)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@4 (line 204)
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@7 (line 224)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.35%       0x00007f4e87271fbd:   mov    %rsi,%rax
   0.01%       0x00007f4e87271fc0:   shr    $0x3,%rax
   0.00%       0x00007f4e87271fc4:   mov    %eax,0xc(%rcx)
   0.31%       0x00007f4e87271fc7:   mov    %rcx,%rax
   0.05%       0x00007f4e87271fca:   xor    %rsi,%rax
   0.01%       0x00007f4e87271fcd:   test   $0xffffffffffe00000,%rax
               0x00007f4e87271fd4:   je     0x00007f4e8727200b
               0x00007f4e87271fda:   nopw   0x0(%rax,%rax,1)
               0x00007f4e87271fe0:   test   %rsi,%rsi
               0x00007f4e87271fe3:   je     0x00007f4e8727200b
               0x00007f4e87271fe9:   mov    %rcx,%r10
               0x00007f4e87271fec:   shr    $0x9,%r10
               0x00007f4e87271ff0:   movabs $0x7f4e99a5b000,%r11
               0x00007f4e87271ffa:   nopw   0x0(%rax,%rax,1)
               0x00007f4e87272000:   cmpb   $0x2,(%r10,%r11,1)
   0.00%       0x00007f4e87272005:   jne    0x00007f4e87272055           ;*new {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  17.64%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, jdk.internal.vm.vector.VectorSupport::compare, version 2, compile id 1182 

                    0x00007f4e872558b0:   cmp    $0x7,%r10d
                    0x00007f4e872558b4:   je     0x00007f4e87255d2e
                    0x00007f4e872558ba:   jmp    0x00007f4e87255d2e           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.incubator.vector.FloatVector::compareWithOp@1 (line 1939)
                                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$60@4 (line 1908)
                                                                              ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d1ee0::apply@9
                                                                              ; - jdk.incubator.vector.FloatVector::bTest@53 (line 476)
                                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
                                                                              ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d1ad0::apply@14
                                                                              ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
   0.41%            0x00007f4e872558bf:   vmovss 0x10(,%rcx,8),%xmm0          ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.incubator.vector.FloatVector::bTest@52 (line 476)
                                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
                                                                              ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d1ad0::apply@14
                                                                              ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
   0.01%            0x00007f4e872558c8:   vucomiss 0x10(,%rsi,8),%xmm0
   0.02%  ╭         0x00007f4e872558d1:   jp     0x00007f4e872558d9
   0.35%  │         0x00007f4e872558d3:   jb     0x00007f4e87255bd3           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - jdk.incubator.vector.FloatVector::compareWithOp@107 (line 1944)
          │                                                                   ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$60@4 (line 1908)
          │                                                                   ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d1ee0::apply@9
          │                                                                   ; - jdk.incubator.vector.FloatVector::bTest@53 (line 476)
          │                                                                   ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
          │                                                                   ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d1ad0::apply@14
          │                                                                   ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
   0.01%  ↘         0x00007f4e872558d9:   nopl   0x0(%rax)
   0.00%            0x00007f4e872558e0:   cmp    $0x2,%eax
                    0x00007f4e872558e3:   jb     0x00007f4e87255d3f           ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.incubator.vector.FloatVector::bTest@47 (line 476)
                                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
                                                                              ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d1ad0::apply@14
                                                                              ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
   0.01%            0x00007f4e872558e9:   cmp    $0x2,%edx
                    0x00007f4e872558ec:   jb     0x00007f4e87255cfb           ;   {no_reloc}
   0.33%            0x00007f4e872558f2:   vmovss 0x14(,%rcx,8),%xmm0          ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.incubator.vector.FloatVector::bTest@52 (line 476)
                                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
                                                                              ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d1ad0::apply@14
                                                                              ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
   0.01%            0x00007f4e872558fb:   vucomiss 0x14(,%rsi,8),%xmm0
   0.02%   ╭        0x00007f4e87255904:   jp     0x00007f4e8725590c
   0.35%   │        0x00007f4e87255906:   jb     0x00007f4e87255c16           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - jdk.incubator.vector.FloatVector::compareWithOp@107 (line 1944)
           │                                                                  ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$60@4 (line 1908)
           │                                                                  ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d1ee0::apply@9
           │                                                                  ; - jdk.incubator.vector.FloatVector::bTest@53 (line 476)
           │                                                                  ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
           │                                                                  ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d1ad0::apply@14
           │                                                                  ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
   0.00%   ↘        0x00007f4e8725590c:   cmp    $0x3,%eax
                    0x00007f4e8725590f:   jb     0x00007f4e87255dba           ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.incubator.vector.FloatVector::bTest@47 (line 476)
                                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
                                                                              ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d1ad0::apply@14
                                                                              ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
   0.01%            0x00007f4e87255915:   cmp    $0x3,%edx
                    0x00007f4e87255918:   jb     0x00007f4e87255c08
   0.06%            0x00007f4e8725591e:   vmovss 0x18(,%rcx,8),%xmm0          ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.incubator.vector.FloatVector::bTest@52 (line 476)
                                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
                                                                              ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d1ad0::apply@14
                                                                              ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
   0.30%            0x00007f4e87255927:   vucomiss 0x18(,%rsi,8),%xmm0
   0.02%    ╭       0x00007f4e87255930:   jp     0x00007f4e87255938
   0.09%    │       0x00007f4e87255932:   jb     0x00007f4e87255d87           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │                                                                 ; - jdk.incubator.vector.FloatVector::compareWithOp@107 (line 1944)
            │                                                                 ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$60@4 (line 1908)
            │                                                                 ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d1ee0::apply@9
            │                                                                 ; - jdk.incubator.vector.FloatVector::bTest@53 (line 476)
            │                                                                 ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
            │                                                                 ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d1ad0::apply@14
            │                                                                 ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
   0.40%    ↘       0x00007f4e87255938:   nopl   0x0(%rax,%rax,1)
   0.01%            0x00007f4e87255940:   cmp    $0x4,%eax
                    0x00007f4e87255943:   jb     0x00007f4e87255cb1           ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.incubator.vector.FloatVector::bTest@47 (line 476)
                                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
                                                                              ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d1ad0::apply@14
                                                                              ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
   0.09%            0x00007f4e87255949:   cmp    $0x4,%edx
                    0x00007f4e8725594c:   jb     0x00007f4e87255dcb
   0.13%            0x00007f4e87255952:   vmovss 0x1c(,%rcx,8),%xmm0          ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.incubator.vector.FloatVector::bTest@52 (line 476)
                                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
                                                                              ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d1ad0::apply@14
                                                                              ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
   0.17%            0x00007f4e8725595b:   vucomiss 0x1c(,%rsi,8),%xmm0
   0.06%     ╭      0x00007f4e87255964:   jp     0x00007f4e8725596c
   0.27%     │      0x00007f4e87255966:   jb     0x00007f4e87255c8f           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
             │                                                                ; - jdk.incubator.vector.FloatVector::compareWithOp@107 (line 1944)
             │                                                                ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$60@4 (line 1908)
             │                                                                ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d1ee0::apply@9
             │                                                                ; - jdk.incubator.vector.FloatVector::bTest@53 (line 476)
             │                                                                ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
             │                                                                ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d1ad0::apply@14
             │                                                                ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
   0.26%     ↘      0x00007f4e8725596c:   cmp    $0x5,%eax
                    0x00007f4e8725596f:   jb     0x00007f4e87255c7e           ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.incubator.vector.FloatVector::bTest@47 (line 476)
                                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
                                                                              ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d1ad0::apply@14
                                                                              ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
   0.22%            0x00007f4e87255975:   cmp    $0x5,%edx
                    0x00007f4e87255978:   jb     0x00007f4e87255c6d
   0.18%            0x00007f4e8725597e:   vmovss 0x20(,%rcx,8),%xmm0          ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.incubator.vector.FloatVector::bTest@52 (line 476)
                                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
                                                                              ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d1ad0::apply@14
                                                                              ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
   0.02%            0x00007f4e87255987:   vucomiss 0x20(,%rsi,8),%xmm0
   0.16%      ╭     0x00007f4e87255990:   jp     0x00007f4e87255998
   0.34%      │     0x00007f4e87255992:   jb     0x00007f4e87255c5c           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
              │                                                               ; - jdk.incubator.vector.FloatVector::compareWithOp@107 (line 1944)
              │                                                               ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$60@4 (line 1908)
              │                                                               ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d1ee0::apply@9
              │                                                               ; - jdk.incubator.vector.FloatVector::bTest@53 (line 476)
              │                                                               ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
              │                                                               ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d1ad0::apply@14
              │                                                               ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
   0.65%      ↘     0x00007f4e87255998:   nopl   0x0(%rax,%rax,1)
   0.08%            0x00007f4e872559a0:   cmp    $0x6,%eax
                    0x00007f4e872559a3:   jb     0x00007f4e87255c4e           ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.incubator.vector.FloatVector::bTest@47 (line 476)
                                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
                                                                              ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d1ad0::apply@14
                                                                              ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
   0.05%            0x00007f4e872559a9:   cmp    $0x6,%edx
                    0x00007f4e872559ac:   jb     0x00007f4e87255c40
   0.11%            0x00007f4e872559b2:   vmovss 0x24(,%rcx,8),%xmm0          ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.incubator.vector.FloatVector::bTest@52 (line 476)
                                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
                                                                              ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d1ad0::apply@14
                                                                              ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
   0.24%            0x00007f4e872559bb:   vucomiss 0x24(,%rsi,8),%xmm0
   0.05%       ╭    0x00007f4e872559c4:   jp     0x00007f4e872559cc
   0.19%       │    0x00007f4e872559c6:   jb     0x00007f4e87255c24           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
               │                                                              ; - jdk.incubator.vector.FloatVector::compareWithOp@107 (line 1944)
               │                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$60@4 (line 1908)
               │                                                              ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d1ee0::apply@9
               │                                                              ; - jdk.incubator.vector.FloatVector::bTest@53 (line 476)
               │                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
               │                                                              ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d1ad0::apply@14
               │                                                              ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
   0.30%       ↘    0x00007f4e872559cc:   cmp    $0x7,%eax
                    0x00007f4e872559cf:   jb     0x00007f4e87255bfa           ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.incubator.vector.FloatVector::bTest@47 (line 476)
                                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
                                                                              ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d1ad0::apply@14
                                                                              ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
   0.30%            0x00007f4e872559d5:   cmp    $0x7,%edx
                    0x00007f4e872559d8:   jb     0x00007f4e87255c32
   0.26%            0x00007f4e872559de:   vmovss 0x28(,%rcx,8),%xmm0          ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.incubator.vector.FloatVector::bTest@52 (line 476)
                                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
                                                                              ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d1ad0::apply@14
                                                                              ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
   0.01%            0x00007f4e872559e7:   vucomiss 0x28(,%rsi,8),%xmm0        ;   {no_reloc}
   0.07%        ╭   0x00007f4e872559f0:   jp     0x00007f4e872559f8
   0.40%        │   0x00007f4e872559f2:   jb     0x00007f4e87255ca0           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - jdk.incubator.vector.FloatVector::compareWithOp@107 (line 1944)
                │                                                             ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$60@4 (line 1908)
                │                                                             ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d1ee0::apply@9
                │                                                             ; - jdk.incubator.vector.FloatVector::bTest@53 (line 476)
                │                                                             ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
                │                                                             ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d1ad0::apply@14
                │                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
   0.60%        ↘   0x00007f4e872559f8:   nopl   0x0(%rax,%rax,1)
   0.02%            0x00007f4e87255a00:   cmp    $0x8,%eax
                    0x00007f4e87255a03:   jb     0x00007f4e87255d98           ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.incubator.vector.FloatVector::bTest@47 (line 476)
                                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
                                                                              ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d1ad0::apply@14
                                                                              ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
   0.02%            0x00007f4e87255a09:   cmp    $0x8,%edx
                    0x00007f4e87255a0c:   jb     0x00007f4e87255ded
   0.11%            0x00007f4e87255a12:   vmovss 0x2c(,%rcx,8),%xmm0          ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.incubator.vector.FloatVector::bTest@52 (line 476)
                                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
                                                                              ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d1ad0::apply@14
                                                                              ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
   0.30%            0x00007f4e87255a1b:   vucomiss 0x2c(,%rsi,8),%xmm0
   0.03%         ╭  0x00007f4e87255a24:   jp     0x00007f4e87255a2c
   0.11%         │  0x00007f4e87255a26:   jb     0x00007f4e87255d76           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - jdk.incubator.vector.FloatVector::compareWithOp@107 (line 1944)
                 │                                                            ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$60@4 (line 1908)
                 │                                                            ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d1ee0::apply@9
                 │                                                            ; - jdk.incubator.vector.FloatVector::bTest@53 (line 476)
                 │                                                            ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
                 │                                                            ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d1ad0::apply@14
                 │                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
   0.28%         ↘  0x00007f4e87255a2c:   mov    0x1b8(%r15),%rsi
   0.01%            0x00007f4e87255a33:   lea    0x10(%rsi),%rax
   0.01%            0x00007f4e87255a37:   nopw   0x0(%rax,%rax,1)
   0.09%            0x00007f4e87255a40:   cmp    0x1c8(%r15),%rax
                    0x00007f4e87255a47:   ja     0x00007f4e87255b7d
   0.27%            0x00007f4e87255a4d:   mov    %rax,0x1b8(%r15)
   0.01%            0x00007f4e87255a54:   prefetchw 0xd0(%rsi)
   0.01%            0x00007f4e87255a5b:   movq   $0x1,(%rsi)
   0.09%            0x00007f4e87255a62:   movl   $0x10c4f80,0x8(%rsi)         ;   {metadata(&apos;jdk/incubator/vector/Float256Vector$Float256Mask&apos;)}
   0.27%            0x00007f4e87255a69:   movl   $0x0,0xc(%rsi)
   0.01%            0x00007f4e87255a70:   mov    %rsi,%rcx                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.incubator.vector.Float256Vector::maskFromArray@0 (line 137)
                                                                              ; - jdk.incubator.vector.Float256Vector::maskFromArray@2 (line 41)
                                                                              ; - jdk.incubator.vector.AbstractSpecies::maskFactory@5 (line 328)
                                                                              ; - jdk.incubator.vector.FloatVector::maskFactory@5 (line 116)
                                                                              ; - jdk.incubator.vector.FloatVector::bTest@68 (line 478)
                                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
                                                                              ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d1ad0::apply@14
                                                                              ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
   0.00%            0x00007f4e87255a73:   mov    0x1b8(%r15),%rsi
   0.08%            0x00007f4e87255a7a:   lea    0x18(%rsi),%rax
   0.29%            0x00007f4e87255a7e:   xchg   %ax,%ax
   0.01%            0x00007f4e87255a80:   cmp    0x1c8(%r15),%rax
                    0x00007f4e87255a87:   ja     0x00007f4e87255b9e
   0.01%            0x00007f4e87255a8d:   mov    %rax,0x1b8(%r15)
   0.10%            0x00007f4e87255a94:   prefetchw 0xd8(%rsi)
   0.27%            0x00007f4e87255a9b:   prefetchw 0x118(%rsi)
   0.02%            0x00007f4e87255aa2:   prefetchw 0x158(%rsi)
   0.01%            0x00007f4e87255aa9:   prefetchw 0x198(%rsi)
   0.15%            0x00007f4e87255ab0:   movq   $0x1,(%rsi)
   0.24%            0x00007f4e87255ab7:   movl   $0x1b00,0x8(%rsi)            ;   {metadata({type array bool})}
   0.01%            0x00007f4e87255abe:   movl   $0x8,0xc(%rsi)
   0.01%            0x00007f4e87255ac5:   movq   $0x0,0x10(%rsi)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.incubator.vector.Float256Vector$Float256Mask::prepare@6 (line 571)
                                                                              ; - jdk.incubator.vector.Float256Vector$Float256Mask::&lt;init&gt;@3 (line 563)
                                                                              ; - jdk.incubator.vector.Float256Vector$Float256Mask::&lt;init&gt;@3 (line 559)
                                                                              ; - jdk.incubator.vector.Float256Vector::maskFromArray@5 (line 137)
                                                                              ; - jdk.incubator.vector.Float256Vector::maskFromArray@2 (line 41)
                                                                              ; - jdk.incubator.vector.AbstractSpecies::maskFactory@5 (line 328)
                                                                              ; - jdk.incubator.vector.FloatVector::maskFactory@5 (line 116)
                                                                              ; - jdk.incubator.vector.FloatVector::bTest@68 (line 478)
                                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
                                                                              ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f4e0c0d1ad0::apply@14
                                                                              ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
   0.11%            0x00007f4e87255acd:   mov    %rsi,%rax
   0.25%            0x00007f4e87255ad0:   shr    $0x3,%rax
   0.01%            0x00007f4e87255ad4:   mov    %eax,0xc(%rcx)
   0.01%            0x00007f4e87255ad7:   mov    %rcx,%rax
   0.09%            0x00007f4e87255ada:   xor    %rsi,%rax
   0.26%            0x00007f4e87255add:   data16 xchg %ax,%ax
   0.01%            0x00007f4e87255ae0:   test   $0xffffffffffe00000,%rax
                    0x00007f4e87255ae7:   je     0x00007f4e87255b12
                    0x00007f4e87255aed:   test   %rsi,%rsi
                    0x00007f4e87255af0:   je     0x00007f4e87255b12
                    0x00007f4e87255af6:   mov    %rcx,%r10
                    0x00007f4e87255af9:   shr    $0x9,%r10
                    0x00007f4e87255afd:   movabs $0x7f4e99a5b000,%r11
                    0x00007f4e87255b07:   cmpb   $0x2,(%r10,%r11,1)
                    0x00007f4e87255b0c:   jne    0x00007f4e87255b49           ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.incubator.vector.Float256Vector::maskFromArray@0 (line 137)
                                                                              ; - jdk.incubator.vector.Float256Vector::maskFromArray@2 (line 41)
....................................................................................................
  11.26%  <total for region 3>

....[Hottest Regions]...............................................................................
  37.47%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized, version 4, compile id 1196 
  17.64%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::blend, version 2, compile id 1168 
  11.26%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::compare, version 2, compile id 1182 
   7.86%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized, version 4, compile id 1196 
   6.35%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized, version 4, compile id 1196 
   5.34%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized, version 4, compile id 1196 
   4.83%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized, version 4, compile id 1196 
   2.26%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::compare, version 2, compile id 1182 
   1.95%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::compare, version 2, compile id 1182 
   1.16%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::blend, version 2, compile id 1168 
   0.87%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::compare, version 2, compile id 1182 
   0.41%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized, version 4, compile id 1196 
   0.18%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized, version 4, compile id 1196 
   0.12%               kernel  [unknown] 
   0.12%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   1.88%  <...other 499 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  62.46%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized, version 4, compile id 1196 
  18.80%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::blend, version 2, compile id 1168 
  16.34%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::compare, version 2, compile id 1182 
   1.32%               kernel  [unknown] 
   0.08%                       <unknown> 
   0.05%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%         libc-2.31.so  __vfprintf_internal 
   0.03%            libjvm.so  G1CardSet::reset_table_scanner 
   0.02%         libc-2.31.so  __memset_avx2_unaligned_erms 
   0.02%            libjvm.so  G1CollectedHeap::fill_with_dummy_object 
   0.02%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.02%            libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.02%          interpreter  fast_aaccess_0  222 fast_aaccess_0  
   0.02%            libjvm.so  HeapRegionManager::par_iterate 
   0.02%            libjvm.so  HeapRegionClaimer::claim_region 
   0.02%            libjvm.so  ObjArrayAllocator::initialize 
   0.01%            libjvm.so  G1FromCardCache::clear 
   0.01%          interpreter  iload_1  27 iload_1  
   0.01%            libjvm.so  HeapRegionManager::allocate_free_region 
   0.01%         libc-2.31.so  __memset_avx2_erms 
   0.68%  <...other 206 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.60%       jvmci, level 4
   1.32%               kernel
   0.56%            libjvm.so
   0.13%         libc-2.31.so
   0.12%          interpreter
   0.08%                     
   0.07%  libjvmcicompiler.so
   0.05%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%          c1, level 3
   0.01%               [vdso]
   0.01%     perf-2128944.map
   0.00%            libnio.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark.vectorized
# Parameters: (size = 65536)

# Run progress: 75.00% complete, ETA 00:01:56
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 4848.037 us/op
# Warmup Iteration   2: 1768.747 us/op
# Warmup Iteration   3: 1767.071 us/op
# Warmup Iteration   4: 1766.374 us/op
# Warmup Iteration   5: 1765.996 us/op
Iteration   1: 1766.444 us/op
Iteration   2: 1771.253 us/op
Iteration   3: 1914.240 us/op
Iteration   4: 1765.332 us/op
Iteration   5: 1765.890 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark.vectorized":
  1796.632 ±(99.9%) 253.323 us/op [Average]
  (min, avg, max) = (1765.332, 1796.632, 1914.240), stdev = 65.787
  CI (99.9%): [1543.309, 2049.955] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark.vectorized:asm":
PrintAssembly processed: 306197 total address lines.
Perf output processed (skipped 60.333 seconds):
 Column 1: cycles (50823 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized, version 4, compile id 1219 

 <region is too big to display, has 3061 lines, but threshold is 1000>
....................................................................................................
  31.93%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, jdk.internal.vm.vector.VectorSupport::blend, version 2, compile id 1194 

             [Verified Entry Point]
               # {method} {0x00007f3c2b03b200} &apos;blend&apos; &apos;(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;ILjdk/internal/vm/vector/VectorSupport$Vector;Ljdk/internal/vm/vector/VectorSupport$Vector;Ljdk/internal/vm/vector/VectorSupport$VectorMask;Ljdk/internal/vm/vector/VectorSupport$VectorBlendOp;)Ljdk/internal/vm/vector/VectorSupport$Vector;&apos; in &apos;jdk/internal/vm/vector/VectorSupport&apos;
               # parm0:    rsi:rsi   = &apos;java/lang/Class&apos;
               # parm1:    rdx:rdx   = &apos;java/lang/Class&apos;
               # parm2:    rcx:rcx   = &apos;java/lang/Class&apos;
               # parm3:    r8        = int
               # parm4:    r9:r9     = &apos;jdk/internal/vm/vector/VectorSupport$Vector&apos;
               # parm5:    rdi:rdi   = &apos;jdk/internal/vm/vector/VectorSupport$Vector&apos;
               # parm6:    [sp+0x20]   = &apos;jdk/internal/vm/vector/VectorSupport$VectorMask&apos;  (sp of caller)
               # parm7:    [sp+0x28]   = &apos;jdk/internal/vm/vector/VectorSupport$VectorBlendOp&apos;
   0.33%       0x00007f3ca725d6c0:   mov    %eax,-0x14000(%rsp)
   0.65%       0x00007f3ca725d6c7:   sub    $0x18,%rsp
   0.00%       0x00007f3ca725d6cb:   nop
   0.12%       0x00007f3ca725d6cc:   cmpl   $0x0,0x20(%r15)
   0.01%       0x00007f3ca725d6d4:   jne    0x00007f3ca725dc1f
   0.21%       0x00007f3ca725d6da:   mov    %rbp,0x10(%rsp)
   0.06%       0x00007f3ca725d6df:   mov    0x20(%rsp),%r10
   0.08%       0x00007f3ca725d6e4:   mov    0x28(%rsp),%r11              ; ImmutableOopMap {rdi=Oop r9=Oop r10=Oop r11=Oop }
                                                                         ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) jdk.internal.vm.vector.VectorSupport::blend@0 (line 624)
   0.01%       0x00007f3ca725d6e9:   cmpl   $0x10c4910,0x8(%r9)          ; implicit exception: dispatches to 0x00007f3ca725dc46
                                                                         ;   {metadata(&apos;jdk/incubator/vector/Float256Vector&apos;)}
   0.24%       0x00007f3ca725d6f1:   jne    0x00007f3ca725dc0d           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d22f0::apply@1
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.06%       0x00007f3ca725d6f7:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rdi=Oop r9=Oop r10=Oop r11=Oop }
                                                                         ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) jdk.internal.vm.vector.VectorSupport::blend@0 (line 624)
   0.07%       0x00007f3ca725d700:   cmpl   $0x10c4910,0x8(%rdi)         ; implicit exception: dispatches to 0x00007f3ca725dc6d
                                                                         ;   {metadata(&apos;jdk/incubator/vector/Float256Vector&apos;)}
   0.05%       0x00007f3ca725d707:   jne    0x00007f3ca725dbe9           ; ImmutableOopMap {rdi=Oop r9=Oop r10=Oop r11=Oop }
                                                                         ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) jdk.internal.vm.vector.VectorSupport::blend@0 (line 624)
   0.24%       0x00007f3ca725d70d:   cmpl   $0x10c4f80,0x8(%r10)         ; implicit exception: dispatches to 0x00007f3ca725dc90
                                                                         ;   {metadata(&apos;jdk/incubator/vector/Float256Vector$Float256Mask&apos;)}
   0.22%       0x00007f3ca725d715:   jne    0x00007f3ca725dbc5           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d22f0::apply@9
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.32%       0x00007f3ca725d71b:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rdi=Oop r9=Oop r10=Oop r11=Oop }
                                                                         ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) jdk.internal.vm.vector.VectorSupport::blend@0 (line 624)
               0x00007f3ca725d720:   cmpl   $0x10d22f0,0x8(%r11)         ; implicit exception: dispatches to 0x00007f3ca725dcb3
                                                                         ;   {metadata(&apos;jdk/incubator/vector/FloatVector$$Lambda+0x00007f3c2c0d22f0&apos;)}
   0.01%       0x00007f3ca725d728:   jne    0x00007f3ca725dbaf           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.09%       0x00007f3ca725d72e:   mov    0xc(%r9),%r8d                ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                         ; - jdk.incubator.vector.Float256Vector::vec@1 (line 117)
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@8 (line 205)
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@7 (line 224)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.26%       0x00007f3ca725d732:   test   %r8d,%r8d
               0x00007f3ca725d735:   je     0x00007f3ca725da31
   0.09%       0x00007f3ca725d73b:   mov    0x8(,%r8,8),%esi
   0.94%       0x00007f3ca725d743:   movabs $0x7f3c2b000000,%rax         ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Float256Vector::vec@4 (line 117)
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@20 (line 227)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
               0x00007f3ca725d74d:   lea    (%rax,%rsi,1),%rsi
   0.33%       0x00007f3ca725d751:   movabs $0x7f3c2b001ee0,%rdx         ;   {metadata({type array float})}
   0.00%       0x00007f3ca725d75b:   nopl   0x0(%rax,%rax,1)
   0.00%       0x00007f3ca725d760:   test   %r8d,%r8d
          ╭    0x00007f3ca725d763:   je     0x00007f3ca725d772
   0.00%  │    0x00007f3ca725d769:   cmp    %rsi,%rdx
          │    0x00007f3ca725d76c:   jne    0x00007f3ca725dae5           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.incubator.vector.Float256Vector::vec@4 (line 117)
          │                                                              ; - jdk.incubator.vector.FloatVector::bOpTemplate@8 (line 205)
          │                                                              ; - jdk.incubator.vector.FloatVector::bOpTemplate@7 (line 224)
          │                                                              ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
          │                                                              ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
          │                                                              ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
          │                                                              ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d22f0::apply@12
          │                                                              ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.34%  ↘    0x00007f3ca725d772:   data16 nopw 0x0(%rax,%rax,1)
   0.00%       0x00007f3ca725d77c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rdi=Oop r8=NarrowOop r9=Oop r10=Oop r11=Oop }
                                                                         ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) jdk.internal.vm.vector.VectorSupport::blend@0 (line 624)
   0.00%       0x00007f3ca725d780:   cmpl   $0x8,0xc(,%r8,8)             ; implicit exception: dispatches to 0x00007f3ca725dcd6
   0.41%       0x00007f3ca725d789:   jb     0x00007f3ca725dbd7           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d22f0::apply@1
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.00%       0x00007f3ca725d78f:   mov    0xc(%rdi),%esi               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                         ; - jdk.incubator.vector.Float256Vector::vec@1 (line 117)
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@17 (line 206)
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@7 (line 224)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.00%       0x00007f3ca725d792:   test   %esi,%esi
               0x00007f3ca725d794:   je     0x00007f3ca725da49
   0.00%       0x00007f3ca725d79a:   mov    0x8(,%rsi,8),%eax
   0.35%       0x00007f3ca725d7a1:   movabs $0x7f3c2b000000,%rcx
   0.01%       0x00007f3ca725d7ab:   lea    (%rcx,%rax,1),%rax           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Float256Vector::vec@4 (line 117)
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@29 (line 228)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
               0x00007f3ca725d7af:   test   %esi,%esi
           ╭   0x00007f3ca725d7b1:   je     0x00007f3ca725d7c0
   0.01%   │   0x00007f3ca725d7b7:   cmp    %rax,%rdx
           │   0x00007f3ca725d7ba:   jne    0x00007f3ca725db9d           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - jdk.incubator.vector.Float256Vector::vec@4 (line 117)
           │                                                             ; - jdk.incubator.vector.FloatVector::bOpTemplate@17 (line 206)
           │                                                             ; - jdk.incubator.vector.FloatVector::bOpTemplate@7 (line 224)
           │                                                             ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
           │                                                             ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
           │                                                             ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
           │                                                             ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d22f0::apply@12
           │                                                             ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.34%   ↘   0x00007f3ca725d7c0:   mov    0xc(%r10),%esi               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                         ; - jdk.incubator.vector.Float256Vector$Float256Mask::getBits@1 (line 595)
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@38 (line 229)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.00%       0x00007f3ca725d7c4:   test   %esi,%esi
               0x00007f3ca725d7c6:   je     0x00007f3ca725da3d
               0x00007f3ca725d7cc:   mov    0x8(,%rsi,8),%eax
   0.66%       0x00007f3ca725d7d3:   movabs $0x7f3c2b000000,%rcx
   0.01%       0x00007f3ca725d7dd:   lea    (%rcx,%rax,1),%rax
   0.30%       0x00007f3ca725d7e1:   test   %esi,%esi
            ╭  0x00007f3ca725d7e3:   je     0x00007f3ca725d7fc
   0.00%    │  0x00007f3ca725d7e9:   movabs $0x7f3c2b001b00,%rcx         ;   {metadata({type array bool})}
   0.00%    │  0x00007f3ca725d7f3:   cmp    %rax,%rcx
            │  0x00007f3ca725d7f6:   jne    0x00007f3ca725db49           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - jdk.incubator.vector.Float256Vector$Float256Mask::getBits@4 (line 595)
            │                                                            ; - jdk.incubator.vector.FloatVector::bOpTemplate@38 (line 229)
            │                                                            ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
            │                                                            ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
            │                                                            ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
            │                                                            ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d22f0::apply@12
            │                                                            ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.30%    ↘  0x00007f3ca725d7fc:   nopl   0x0(%rax)                    ; ImmutableOopMap {rsi=NarrowOop rdi=Oop r8=NarrowOop r9=Oop r10=Oop r11=Oop }
                                                                         ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) jdk.internal.vm.vector.VectorSupport::blend@0 (line 624)
   0.01%       0x00007f3ca725d800:   cmpl   $0x8,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f3ca725dcf9
   0.01%       0x00007f3ca725d808:   jb     0x00007f3ca725db0d           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d22f0::apply@1
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.34%       0x00007f3ca725d80e:   cmpb   $0x0,0x10(,%rsi,8)
   0.01%       0x00007f3ca725d816:   jne    0x00007f3ca725db58
   0.33%       0x00007f3ca725d81c:   nopl   0x0(%rax)
   0.01%       0x00007f3ca725d820:   cmpb   $0x0,0x11(,%rsi,8)
   0.01%       0x00007f3ca725d828:   jne    0x00007f3ca725db3a
   0.36%       0x00007f3ca725d82e:   cmpb   $0x0,0x12(,%rsi,8)
   0.02%       0x00007f3ca725d836:   jne    0x00007f3ca725db2b
   0.36%       0x00007f3ca725d83c:   nopl   0x0(%rax)
   0.00%       0x00007f3ca725d840:   cmpb   $0x0,0x13(,%rsi,8)
   0.01%       0x00007f3ca725d848:   jne    0x00007f3ca725db8b
   0.30%       0x00007f3ca725d84e:   cmpb   $0x0,0x14(,%rsi,8)
   0.01%       0x00007f3ca725d856:   jne    0x00007f3ca725db1c
   0.38%       0x00007f3ca725d85c:   nopl   0x0(%rax)
   0.00%       0x00007f3ca725d860:   cmpb   $0x0,0x15(,%rsi,8)
   0.01%       0x00007f3ca725d868:   jne    0x00007f3ca725db67
   0.31%       0x00007f3ca725d86e:   cmpb   $0x0,0x16(,%rsi,8)
   0.01%       0x00007f3ca725d876:   jne    0x00007f3ca725dbfb
   0.30%       0x00007f3ca725d87c:   nopl   0x0(%rax)
   0.01%       0x00007f3ca725d880:   cmpb   $0x0,0x17(,%rsi,8)
   0.00%       0x00007f3ca725d888:   jne    0x00007f3ca725db79           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@63 (line 231)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.30%       0x00007f3ca725d88e:   mov    0x1b8(%r15),%rsi
   0.02%       0x00007f3ca725d895:   lea    0x10(%rsi),%rax
   0.01%       0x00007f3ca725d899:   nopl   0x0(%rax)
               0x00007f3ca725d8a0:   cmp    0x1c8(%r15),%rax
               0x00007f3ca725d8a7:   ja     0x00007f3ca725da92
   0.35%       0x00007f3ca725d8ad:   mov    %rax,0x1b8(%r15)
   0.01%       0x00007f3ca725d8b4:   prefetchw 0xd0(%rsi)
   0.01%       0x00007f3ca725d8bb:   movq   $0x1,(%rsi)
   0.56%       0x00007f3ca725d8c2:   movl   $0x10c4910,0x8(%rsi)         ;   {metadata(&apos;jdk/incubator/vector/Float256Vector&apos;)}
   0.27%       0x00007f3ca725d8c9:   movl   $0x0,0xc(%rsi)
   0.17%       0x00007f3ca725d8d0:   mov    %rsi,%rcx                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Float256Vector::vectorFactory@0 (line 171)
                                                                         ; - jdk.incubator.vector.Float256Vector::vectorFactory@2 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@102 (line 233)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.00%       0x00007f3ca725d8d3:   mov    0x1b8(%r15),%rsi
   0.18%       0x00007f3ca725d8da:   lea    0x30(%rsi),%rax
   0.10%       0x00007f3ca725d8de:   xchg   %ax,%ax
   0.16%       0x00007f3ca725d8e0:   cmp    0x1c8(%r15),%rax
               0x00007f3ca725d8e7:   ja     0x00007f3ca725dab7
   0.02%       0x00007f3ca725d8ed:   mov    %rax,0x1b8(%r15)
   0.65%       0x00007f3ca725d8f4:   prefetchw 0xf0(%rsi)
   0.08%       0x00007f3ca725d8fb:   prefetchw 0x130(%rsi)
   0.01%       0x00007f3ca725d902:   prefetchw 0x170(%rsi)
   0.02%       0x00007f3ca725d909:   prefetchw 0x1b0(%rsi)
   0.40%       0x00007f3ca725d910:   movq   $0x1,(%rsi)
   0.95%       0x00007f3ca725d917:   movl   $0x1ee0,0x8(%rsi)            ;   {metadata({type array float})}
   0.23%       0x00007f3ca725d91e:   movl   $0x8,0xc(%rsi)
   0.03%       0x00007f3ca725d925:   movq   $0x0,0x10(%rsi)
   0.40%       0x00007f3ca725d92d:   movq   $0x0,0x18(%rsi)
   0.12%       0x00007f3ca725d935:   movq   $0x0,0x20(%rsi)
   0.27%       0x00007f3ca725d93d:   movq   $0x0,0x28(%rsi)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@4 (line 204)
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@7 (line 224)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.25%       0x00007f3ca725d945:   vmovss 0x2c(,%r8,8),%xmm0           ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@91 (line 231)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.04%       0x00007f3ca725d94f:   vmovss %xmm0,0x2c(%rsi)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@4 (line 204)
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@7 (line 224)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.34%       0x00007f3ca725d954:   vmovss 0x28(,%r8,8),%xmm0           ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@91 (line 231)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.02%       0x00007f3ca725d95e:   vmovss %xmm0,0x28(%rsi)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@4 (line 204)
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@7 (line 224)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.20%       0x00007f3ca725d963:   vmovss 0x24(,%r8,8),%xmm0           ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@91 (line 231)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.03%       0x00007f3ca725d96d:   vmovss %xmm0,0x24(%rsi)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@4 (line 204)
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@7 (line 224)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.23%       0x00007f3ca725d972:   vmovss 0x20(,%r8,8),%xmm0           ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@91 (line 231)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.00%       0x00007f3ca725d97c:   vmovss %xmm0,0x20(%rsi)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@4 (line 204)
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@7 (line 224)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.36%       0x00007f3ca725d981:   vmovss 0x1c(,%r8,8),%xmm0           ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@91 (line 231)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.01%       0x00007f3ca725d98b:   vmovss %xmm0,0x1c(%rsi)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@4 (line 204)
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@7 (line 224)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.05%       0x00007f3ca725d990:   vmovss 0x18(,%r8,8),%xmm0           ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@91 (line 231)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.01%       0x00007f3ca725d99a:   vmovss %xmm0,0x18(%rsi)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@4 (line 204)
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@7 (line 224)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.33%       0x00007f3ca725d99f:   vmovss 0x14(,%r8,8),%xmm0           ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@91 (line 231)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.01%       0x00007f3ca725d9a9:   vmovss %xmm0,0x14(%rsi)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@4 (line 204)
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@7 (line 224)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.30%       0x00007f3ca725d9ae:   vmovss 0x10(,%r8,8),%xmm0           ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@91 (line 231)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
               0x00007f3ca725d9b8:   vmovss %xmm0,0x10(%rsi)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@4 (line 204)
                                                                         ; - jdk.incubator.vector.FloatVector::bOpTemplate@7 (line 224)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::lambda$blendTemplate$65@8 (line 2054)
                                                                         ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d22f0::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 625)
   0.36%       0x00007f3ca725d9bd:   mov    %rsi,%rax
               0x00007f3ca725d9c0:   shr    $0x3,%rax
               0x00007f3ca725d9c4:   mov    %eax,0xc(%rcx)
   0.35%       0x00007f3ca725d9c7:   mov    %rcx,%rax
   0.00%       0x00007f3ca725d9ca:   xor    %rsi,%rax
   0.01%       0x00007f3ca725d9cd:   test   $0xffffffffffe00000,%rax
               0x00007f3ca725d9d4:   je     0x00007f3ca725da0b
               0x00007f3ca725d9da:   nopw   0x0(%rax,%rax,1)
               0x00007f3ca725d9e0:   test   %rsi,%rsi
               0x00007f3ca725d9e3:   je     0x00007f3ca725da0b
               0x00007f3ca725d9e9:   mov    %rcx,%r10
               0x00007f3ca725d9ec:   shr    $0x9,%r10
               0x00007f3ca725d9f0:   movabs $0x7f3c9aeef000,%r11
               0x00007f3ca725d9fa:   nopw   0x0(%rax,%rax,1)
               0x00007f3ca725da00:   cmpb   $0x2,(%r10,%r11,1)
               0x00007f3ca725da05:   jne    0x00007f3ca725da55           ;*new {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  18.16%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized, version 4, compile id 1219 

                                                                               ; - jdk.incubator.vector.Float256Vector::vectorFactory@0 (line 171)
                                                                               ; - jdk.incubator.vector.Float256Vector::vectorFactory@2 (line 41)
                                                                               ; - jdk.incubator.vector.FloatVector$FloatSpecies::rvOp@45 (line 3774)
                                                                               ; - jdk.incubator.vector.FloatVector$FloatSpecies::lambda$broadcastBits$1@7 (line 3695)
                                                                               ; - jdk.incubator.vector.FloatVector$FloatSpecies$$Lambda/0x00007f3c2c0c7fc8::fromBits@5
                                                                               ; - jdk.internal.vm.vector.VectorSupport::fromBitsCoerced@29 (line 210)
                                                                               ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcastBits@19 (line 3692)
                                                                               ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcast@5 (line 3701)
                                                                               ; - jdk.incubator.vector.FloatVector::broadcast@7 (line 600)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@111 (line 111)
   0.01%             0x00007f3ca727192a:   mov    $0x1,%esi
   0.08%             0x00007f3ca727192f:   mov    %r14,%rdx
   0.11%             0x00007f3ca7271932:   mov    %rax,%rcx
                     0x00007f3ca7271935:   mov    $0x0,%r8                     ;*invokestatic lambda$compareTemplate$61 {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d1ad0::apply@14
                                                                               ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
                                                                               ; - jdk.incubator.vector.FloatVector::compareTemplate@42 (line 1902)
                                                                               ; - jdk.incubator.vector.Float256Vector::compare@5 (line 371)
                                                                               ; - jdk.incubator.vector.Float256Vector::compare@3 (line 41)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@276 (line 119)
                                                                               ;   {no_reloc}
                     0x00007f3ca727193c:   mov    %rax,0x38(%rsp)
   0.06%             0x00007f3ca7271941:   mov    %r14,0x30(%rsp)
   0.14%             0x00007f3ca7271946:   nop
                     0x00007f3ca7271947:   call   0x00007f3ca6c2f980           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop }
                                                                               ;*invokestatic lambda$compareTemplate$61 {reexecute=0 rethrow=0 return_oop=1}
                                                                               ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d1ad0::apply@14
                                                                               ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
                                                                               ; - jdk.incubator.vector.FloatVector::compareTemplate@42 (line 1902)
                                                                               ; - jdk.incubator.vector.Float256Vector::compare@5 (line 371)
                                                                               ; - jdk.incubator.vector.Float256Vector::compare@3 (line 41)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@276 (line 119)
                                                                               ;   {static_call}
   0.03%             0x00007f3ca727194c:   nopl   0x400103c(%rax,%rax,1)       ;   {other}
   0.07%             0x00007f3ca7271954:   nopl   0x0(%rax,%rax,1)
   0.12%             0x00007f3ca727195c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rax=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop }
                                                                               ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
                                                                               ; - (reexecute) jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d1ad0::apply@17
                                                                               ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
                                                                               ; - jdk.incubator.vector.FloatVector::compareTemplate@42 (line 1902)
                                                                               ; - jdk.incubator.vector.Float256Vector::compare@5 (line 371)
                                                                               ; - jdk.incubator.vector.Float256Vector::compare@3 (line 41)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@276 (line 119)
                     0x00007f3ca7271960:   cmpl   $0x10c4f80,0x8(%rax)         ; implicit exception: dispatches to 0x00007f3ca727303b
                                                                               ;   {metadata(&apos;jdk/incubator/vector/Float256Vector$Float256Mask&apos;)}
   0.05%             0x00007f3ca7271967:   jne    0x00007f3ca7272e65
   0.05%             0x00007f3ca727196d:   movabs $0x7f2636ed0,%rbx            ;   {oop(a &apos;jdk/incubator/vector/FloatVector$$Lambda+0x00007f3c2c0d22f0&apos;{0x00000007f2636ed0})}
   0.12%             0x00007f3ca7271977:   mov    0x50(%rsp),%rsi
   0.13%             0x00007f3ca727197c:   mov    0x48(%rsp),%rdx
   0.07%             0x00007f3ca7271981:   mov    0x40(%rsp),%rcx
   0.11%             0x00007f3ca7271986:   mov    $0x8,%r8d
                     0x00007f3ca727198c:   mov    0x30(%rsp),%r9
   0.15%             0x00007f3ca7271991:   mov    0x38(%rsp),%rdi
   0.02%             0x00007f3ca7271996:   mov    %rax,(%rsp)
   0.01%             0x00007f3ca727199a:   mov    %rbx,0x8(%rsp)               ;*invokestatic blend {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.incubator.vector.FloatVector::blendTemplate@26 (line 2051)
                                                                               ; - jdk.incubator.vector.Float256Vector::blend@11 (line 397)
                                                                               ; - jdk.incubator.vector.Float256Vector::blend@3 (line 41)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@279 (line 119)
   0.55%             0x00007f3ca727199f:   mov    %rax,0x28(%rsp)
   0.01%             0x00007f3ca72719a4:   data16 xchg %ax,%ax
   0.00%             0x00007f3ca72719a7:   call   0x00007f3ca6c2f980           ; ImmutableOopMap {[40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop }
                                                                               ;*invokestatic blend {reexecute=0 rethrow=0 return_oop=1}
                                                                               ; - jdk.incubator.vector.FloatVector::blendTemplate@26 (line 2051)
                                                                               ; - jdk.incubator.vector.Float256Vector::blend@11 (line 397)
                                                                               ; - jdk.incubator.vector.Float256Vector::blend@3 (line 41)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@279 (line 119)
                                                                               ;   {static_call}
   0.03%             0x00007f3ca72719ac:   nopl   0x600109c(%rax,%rax,1)       ;   {other}
   0.00%             0x00007f3ca72719b4:   mov    %rax,%r10                    ;*invokestatic blend {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.incubator.vector.FloatVector::blendTemplate@26 (line 2051)
                                                                               ; - jdk.incubator.vector.Float256Vector::blend@11 (line 397)
                                                                               ; - jdk.incubator.vector.Float256Vector::blend@3 (line 41)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@279 (line 119)
                     0x00007f3ca72719b7:   mov    %r10,0x20(%rsp)
   1.09%             0x00007f3ca72719bc:   nopl   0x0(%rax)                    ; ImmutableOopMap {r10=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop }
                                                                               ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
                                                                               ; - (reexecute) jdk.incubator.vector.FloatVector::blendTemplate@29 (line 2051)
                                                                               ; - jdk.incubator.vector.Float256Vector::blend@11 (line 397)
                                                                               ; - jdk.incubator.vector.Float256Vector::blend@3 (line 41)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@279 (line 119)
   0.00%             0x00007f3ca72719c0:   cmpl   $0x10c4910,0x8(%r10)         ; implicit exception: dispatches to 0x00007f3ca727305e
                                                                               ;   {metadata(&apos;jdk/incubator/vector/Float256Vector&apos;)}
   0.03%             0x00007f3ca72719c8:   jne    0x00007f3ca72728d5           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.incubator.vector.FloatVector::blendTemplate@29 (line 2051)
                                                                               ; - jdk.incubator.vector.Float256Vector::blend@11 (line 397)
                                                                               ; - jdk.incubator.vector.Float256Vector::blend@3 (line 41)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@279 (line 119)
   0.01%             0x00007f3ca72719ce:   mov    0x58(%rsp),%rsi
   0.18%             0x00007f3ca72719d3:   mov    0x20(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop r10=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop }
                                                                               ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
                                                                               ; - (reexecute) jdk.incubator.vector.FloatVector::blendTemplate@29 (line 2051)
                                                                               ; - jdk.incubator.vector.Float256Vector::blend@11 (line 397)
                                                                               ; - jdk.incubator.vector.Float256Vector::blend@3 (line 41)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@279 (line 119)
   0.47%             0x00007f3ca72719d6:   mov    0xc(,%rax,8),%edx            ; implicit exception: dispatches to 0x00007f3ca7273081
   2.41%             0x00007f3ca72719dd:   data16 xchg %ax,%ax
                     0x00007f3ca72719e0:   cmp    $0x7,%edx
                     0x00007f3ca72719e3:   jb     0x00007f3ca727286a           ;* unwind (locked if synchronized)
                                                                               ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                               ; - java.util.Objects::checkIndex@3 (line 385)
                                                                               ; - jdk.incubator.vector.VectorIntrinsics::checkFromIndexSize@43 (line 61)
                                                                               ; - jdk.incubator.vector.FloatVector::intoArray@7 (line 3070)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
   0.17%             0x00007f3ca72719e9:   lea    -0x7(%rdx),%ecx              ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.incubator.vector.VectorIntrinsics::checkFromIndexSize@42 (line 61)
                                                                               ; - jdk.incubator.vector.FloatVector::intoArray@7 (line 3070)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
                     0x00007f3ca72719ec:   cmp    0xc0(%rsp),%ecx
                     0x00007f3ca72719f3:   jbe    0x00007f3ca72727ff           ;* unwind (locked if synchronized)
                                                                               ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                               ; - java.util.Objects::checkIndex@3 (line 385)
                                                                               ; - jdk.incubator.vector.VectorIntrinsics::checkFromIndexSize@43 (line 61)
                                                                               ; - jdk.incubator.vector.FloatVector::intoArray@7 (line 3070)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
   0.17%             0x00007f3ca72719f9:   mov    0xc(%r10),%ecx               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                               ; - jdk.incubator.vector.Float256Vector::vec@1 (line 117)
                                                                               ; - jdk.incubator.vector.FloatVector::stOp@1 (line 404)
                                                                               ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
                                                                               ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
                                                                               ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
                                                                               ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
                     0x00007f3ca72719fd:   data16 xchg %ax,%ax
                     0x00007f3ca7271a00:   test   %ecx,%ecx
                     0x00007f3ca7271a02:   je     0x00007f3ca7272096
                     0x00007f3ca7271a08:   mov    0x8(,%rcx,8),%r8d
   0.17%             0x00007f3ca7271a10:   movabs $0x7f3c2b000000,%r11
   0.00%             0x00007f3ca7271a1a:   lea    (%r11,%r8,1),%r8
                     0x00007f3ca7271a1e:   xchg   %ax,%ax
                     0x00007f3ca7271a20:   test   %ecx,%ecx
                     0x00007f3ca7271a22:   je     0x00007f3ca7271ffc           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.incubator.vector.Float256Vector::vec@4 (line 117)
                                                                               ; - jdk.incubator.vector.FloatVector::stOp@1 (line 404)
                                                                               ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
                                                                               ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
                                                                               ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
                                                                               ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
   0.12%             0x00007f3ca7271a28:   mov    0x110(%rsp),%r13
                     0x00007f3ca7271a30:   cmp    %r8,%r13
                     0x00007f3ca7271a33:   jne    0x00007f3ca727275f           ; ImmutableOopMap {rax=NarrowOop rcx=NarrowOop rsi=Oop r10=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop }
                                                                               ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
                                                                               ; - (reexecute) jdk.incubator.vector.FloatVector::blendTemplate@29 (line 2051)
                                                                               ; - jdk.incubator.vector.Float256Vector::blend@11 (line 397)
                                                                               ; - jdk.incubator.vector.Float256Vector::blend@3 (line 41)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@279 (line 119)
                     0x00007f3ca7271a39:   mov    0xc(,%rcx,8),%r8d            ; implicit exception: dispatches to 0x00007f3ca72730a4
                     0x00007f3ca7271a41:   mov    %eax,%r11d
   0.17%             0x00007f3ca7271a44:   shl    $0x3,%r11                    ;*getfield resultG {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@283 (line 119)
                     0x00007f3ca7271a48:   test   %r8d,%r8d
                     0x00007f3ca7271a4b:   je     0x00007f3ca7272050           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.incubator.vector.FloatVector::stOp@14 (line 405)
                                                                               ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
                                                                               ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
                                                                               ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
                                                                               ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
   0.00%             0x00007f3ca7271a51:   mov    %r8d,%eax
                     0x00007f3ca7271a54:   dec    %eax
   0.18%             0x00007f3ca7271a56:   movslq %eax,%rax
                     0x00007f3ca7271a59:   mov    %r8d,%r9d
                     0x00007f3ca7271a5c:   nopl   0x0(%rax)
                     0x00007f3ca7271a60:   cmp    %rax,%r9
          ╭          0x00007f3ca7271a63:   ja     0x00007f3ca7271a73
          │          0x00007f3ca7271a69:   cmp    $0x2,%r8d
          │          0x00007f3ca7271a6d:   jae    0x00007f3ca7272ca5           ;*faload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - jdk.incubator.vector.FloatVector::stOp@26 (line 406)
          │                                                                    ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
          │                                                                    ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
          │                                                                    ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
          │                                                                    ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
   0.18%  ↘          0x00007f3ca7271a73:   cmp    $0x2,%r8d
           ╭         0x00007f3ca7271a77:   jb     0x00007f3ca7271a9b
   0.03%   │         0x00007f3ca7271a7d:   add    0x70(%rsp),%rax
   0.03%   │         0x00007f3ca7271a82:   mov    %edx,%r9d
           │         0x00007f3ca7271a85:   cmp    %rax,%r9
           │         0x00007f3ca7271a88:   jbe    0x00007f3ca7272f1d
   0.16%   │         0x00007f3ca7271a8e:   cmp    0xe4(%rsp),%edx
           │         0x00007f3ca7271a95:   jbe    0x00007f3ca7272b05
   0.00%   ↘         0x00007f3ca7271a9b:   nopl   0x0(%rax,%rax,1)
                     0x00007f3ca7271aa0:   cmp    0xc0(%rsp),%edx
                     0x00007f3ca7271aa7:   jbe    0x00007f3ca7272653           ;*fastore {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.incubator.vector.FloatVector::lambda$intoArray$87@5 (line 3079)
                                                                               ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2d28::apply@8
                                                                               ; - jdk.incubator.vector.FloatVector::stOp@27 (line 406)
                                                                               ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
                                                                               ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
                                                                               ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
                                                                               ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
   0.00%             0x00007f3ca7271aad:   mov    0xc0(%rsp),%r9d
   0.16%             0x00007f3ca7271ab5:   vmovss 0x10(,%rcx,8),%xmm0          ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.incubator.vector.FloatVector::stOp@26 (line 406)
                                                                               ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
                                                                               ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
                                                                               ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
                                                                               ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
   0.00%             0x00007f3ca7271abe:   vmovss %xmm0,0x10(%r11,%r9,4)       ;*fastore {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.incubator.vector.FloatVector::lambda$intoArray$87@5 (line 3079)
                                                                               ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2d28::apply@8
                                                                               ; - jdk.incubator.vector.FloatVector::stOp@27 (line 406)
                                                                               ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
                                                                               ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
                                                                               ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
                                                                               ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
                                                                               ;   {no_reloc}
   0.23%             0x00007f3ca7271ac5:   cmp    $0x3,%r8d
                     0x00007f3ca7271ac9:   mov    $0x2,%eax
   0.12%             0x00007f3ca7271ace:   cmovb  %r8d,%eax
                     0x00007f3ca7271ad2:   shl    $0x3,%rcx                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                               ; - jdk.incubator.vector.Float256Vector::vec@1 (line 117)
                                                                               ; - jdk.incubator.vector.FloatVector::stOp@1 (line 404)
                                                                               ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
                                                                               ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
                                                                               ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
                                                                               ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
   0.04%             0x00007f3ca7271ad6:   mov    $0x1,%edx
            ╭        0x00007f3ca7271adb:   jmp    0x00007f3ca7271af4           ;*iload {reexecute=0 rethrow=0 return_oop=0}
            │                                                                  ; - jdk.incubator.vector.FloatVector::stOp@9 (line 405)
            │                                                                  ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
            │                                                                  ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
            │                                                                  ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
            │                                                                  ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
            │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
   0.20%    │↗       0x00007f3ca7271ae0:   vmovss 0x10(%rcx,%rdx,4),%xmm0      ;*faload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                 ; - jdk.incubator.vector.FloatVector::stOp@26 (line 406)
            ││                                                                 ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
            ││                                                                 ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
            ││                                                                 ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
            ││                                                                 ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
            ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
   0.04%    ││       0x00007f3ca7271ae6:   mov    %r9d,%ebx
            ││       0x00007f3ca7271ae9:   add    %edx,%ebx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                 ; - jdk.incubator.vector.FloatVector::lambda$intoArray$87@3 (line 3079)
            ││                                                                 ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2d28::apply@8
            ││                                                                 ; - jdk.incubator.vector.FloatVector::stOp@27 (line 406)
            ││                                                                 ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
            ││                                                                 ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
            ││                                                                 ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
            ││                                                                 ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
            ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
            ││       0x00007f3ca7271aeb:   vmovss %xmm0,0x10(%r11,%rbx,4)      ;*fastore {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                 ; - jdk.incubator.vector.FloatVector::lambda$intoArray$87@5 (line 3079)
            ││                                                                 ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2d28::apply@8
            ││                                                                 ; - jdk.incubator.vector.FloatVector::stOp@27 (line 406)
            ││                                                                 ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
            ││                                                                 ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
            ││                                                                 ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
            ││                                                                 ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
            ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
   0.20%    ││       0x00007f3ca7271af2:   inc    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                 ; - jdk.incubator.vector.FloatVector::stOp@32 (line 405)
            ││                                                                 ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
            ││                                                                 ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
            ││                                                                 ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
            ││                                                                 ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
            ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
   0.09%    ↘│       0x00007f3ca7271af4:   cmp    %edx,%eax
             ╰       0x00007f3ca7271af6:   jg     0x00007f3ca7271ae0
                     0x00007f3ca7271af8:   lea    -0x4(%r8),%eax
                     0x00007f3ca7271afc:   mov    0xdc(%rsp),%ebp
   0.15%             0x00007f3ca7271b03:   mov    0xe0(%rsp),%edi
   0.01%             0x00007f3ca7271b0a:   mov    0xe4(%rsp),%ebx
   0.00%      ╭      0x00007f3ca7271b11:   jmp    0x00007f3ca7271bb5
              │      0x00007f3ca7271b16:   data16 nopw 0x0(%rax,%rax,1)        ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │                                                                ; - jdk.incubator.vector.FloatVector::stOp@14 (line 405)
              │                                                                ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
              │                                                                ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
              │                                                                ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
              │                                                                ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
              │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
   0.38%      │ ↗    0x00007f3ca7271b20:   vmovss 0x10(%rcx,%rdx,4),%xmm0      ;*faload {reexecute=0 rethrow=0 return_oop=0}
              │ │                                                              ; - jdk.incubator.vector.FloatVector::stOp@26 (line 406)
              │ │                                                              ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
              │ │                                                              ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
              │ │                                                              ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
              │ │                                                              ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
              │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
   0.02%      │ │    0x00007f3ca7271b26:   mov    %r9d,%r10d
              │ │    0x00007f3ca7271b29:   add    %edx,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
              │ │                                                              ; - jdk.incubator.vector.FloatVector::lambda$intoArray$87@3 (line 3079)
              │ │                                                              ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2d28::apply@8
              │ │                                                              ; - jdk.incubator.vector.FloatVector::stOp@27 (line 406)
              │ │                                                              ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
              │ │                                                              ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
              │ │                                                              ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
              │ │                                                              ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
              │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
              │ │    0x00007f3ca7271b2c:   vmovss %xmm0,0x10(%r11,%r10,4)      ;*fastore {reexecute=0 rethrow=0 return_oop=0}
              │ │                                                              ; - jdk.incubator.vector.FloatVector::lambda$intoArray$87@5 (line 3079)
              │ │                                                              ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2d28::apply@8
              │ │                                                              ; - jdk.incubator.vector.FloatVector::stOp@27 (line 406)
              │ │                                                              ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
              │ │                                                              ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
              │ │                                                              ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
              │ │                                                              ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
              │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
   0.38%      │ │    0x00007f3ca7271b33:   inc    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              │ │                                                              ; - jdk.incubator.vector.FloatVector::stOp@32 (line 405)
              │ │                                                              ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
              │ │                                                              ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
              │ │                                                              ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
              │ │                                                              ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
              │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
              │ │    0x00007f3ca7271b35:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.12%      │ │↗   0x00007f3ca7271b40:   cmp    %edx,%r8d
              │╭││   0x00007f3ca7271b43:   jle    0x00007f3ca7271bbb
   0.02%      ││╰│   0x00007f3ca7271b49:   jmp    0x00007f3ca7271b20
              ││ │   0x00007f3ca7271b4b:   data16 data16 nopw 0x0(%rax,%rax,1)
              ││ │   0x00007f3ca7271b56:   data16 data16 xchg %ax,%ax
              ││ │   0x00007f3ca7271b5a:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              ││ │                                                             ; - jdk.incubator.vector.FloatVector::stOp@14 (line 405)
              ││ │                                                             ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
              ││ │                                                             ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
              ││ │                                                             ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
              ││ │                                                             ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
              ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
   0.00%      ││ │↗  0x00007f3ca7271b60:   vmovss 0x10(%rcx,%rdx,4),%xmm0      ;*faload {reexecute=0 rethrow=0 return_oop=0}
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector::stOp@26 (line 406)
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
              ││ ││                                                            ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
              ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
   0.00%      ││ ││  0x00007f3ca7271b66:   mov    %r9d,%r14d
              ││ ││  0x00007f3ca7271b69:   add    %edx,%r14d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector::lambda$intoArray$87@3 (line 3079)
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2d28::apply@8
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector::stOp@27 (line 406)
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
              ││ ││                                                            ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
              ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
   0.18%      ││ ││  0x00007f3ca7271b6c:   vmovss %xmm0,0x10(%r11,%r14,4)      ;*fastore {reexecute=0 rethrow=0 return_oop=0}
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector::lambda$intoArray$87@5 (line 3079)
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2d28::apply@8
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector::stOp@27 (line 406)
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
              ││ ││                                                            ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
              ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
   0.11%      ││ ││  0x00007f3ca7271b73:   movslq %edx,%r14
              ││ ││  0x00007f3ca7271b76:   vmovss 0x14(%rcx,%r14,4),%xmm0      ;*faload {reexecute=0 rethrow=0 return_oop=0}
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector::stOp@26 (line 406)
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
              ││ ││                                                            ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
              ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
   0.00%      ││ ││  0x00007f3ca7271b7d:   mov    %ebx,%r10d
   0.09%      ││ ││  0x00007f3ca7271b80:   add    %edx,%r10d
   0.07%      ││ ││  0x00007f3ca7271b83:   vmovss %xmm0,0x10(%r11,%r10,4)      ;*fastore {reexecute=0 rethrow=0 return_oop=0}
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector::lambda$intoArray$87@5 (line 3079)
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2d28::apply@8
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector::stOp@27 (line 406)
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
              ││ ││                                                            ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
              ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
   0.09%      ││ ││  0x00007f3ca7271b8a:   vmovss 0x18(%rcx,%r14,4),%xmm0      ;*faload {reexecute=0 rethrow=0 return_oop=0}
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector::stOp@26 (line 406)
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
              ││ ││                                                            ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
              ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
              ││ ││  0x00007f3ca7271b91:   mov    %edi,%r10d
   0.13%      ││ ││  0x00007f3ca7271b94:   add    %edx,%r10d
              ││ ││  0x00007f3ca7271b97:   vmovss %xmm0,0x10(%r11,%r10,4)      ;*fastore {reexecute=0 rethrow=0 return_oop=0}
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector::lambda$intoArray$87@5 (line 3079)
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2d28::apply@8
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector::stOp@27 (line 406)
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
              ││ ││                                                            ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
              ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
   0.06%      ││ ││  0x00007f3ca7271b9e:   vmovss 0x1c(%rcx,%r14,4),%xmm0      ;*faload {reexecute=0 rethrow=0 return_oop=0}
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector::stOp@26 (line 406)
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
              ││ ││                                                            ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
              ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
   0.00%      ││ ││  0x00007f3ca7271ba5:   mov    %ebp,%r10d
   0.10%      ││ ││  0x00007f3ca7271ba8:   add    %edx,%r10d
              ││ ││  0x00007f3ca7271bab:   vmovss %xmm0,0x10(%r11,%r10,4)      ;*fastore {reexecute=0 rethrow=0 return_oop=0}
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector::lambda$intoArray$87@5 (line 3079)
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2d28::apply@8
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector::stOp@27 (line 406)
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
              ││ ││                                                            ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
              ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
   0.08%      ││ ││  0x00007f3ca7271bb2:   lea    0x4(%rdx),%edx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector::stOp@32 (line 405)
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
              ││ ││                                                            ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
              ││ ││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
              ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
              ↘│ ││  0x00007f3ca7271bb5:   cmp    %edx,%eax
               │ ╰│  0x00007f3ca7271bb7:   jle    0x00007f3ca7271b40
   0.18%       │  ╰  0x00007f3ca7271bb9:   jmp    0x00007f3ca7271b60           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               │                                                               ; - jdk.incubator.vector.FloatVector::stOp@14 (line 405)
               │                                                               ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
               │                                                               ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
               │                                                               ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
               │                                                               ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
               │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
   0.05%       ↘     0x00007f3ca7271bbb:   mov    0x1b8(%r15),%rax
   0.27%             0x00007f3ca7271bc2:   lea    0x10(%rax),%rdx              ;   {no_reloc}
   0.01%             0x00007f3ca7271bc6:   cmp    0x1c8(%r15),%rdx
                     0x00007f3ca7271bcd:   ja     0x00007f3ca7272134
   0.04%             0x00007f3ca7271bd3:   mov    %rdx,0x1b8(%r15)
   0.07%             0x00007f3ca7271bda:   prefetchw 0xd0(%rax)
   0.18%             0x00007f3ca7271be1:   movq   $0x1,(%rax)
   0.02%             0x00007f3ca7271be8:   movl   $0x10c4910,0x8(%rax)         ;   {metadata(&apos;jdk/incubator/vector/Float256Vector&apos;)}
   0.45%             0x00007f3ca7271bef:   movl   $0x0,0xc(%rax)               ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.incubator.vector.Float256Vector::vectorFactory@0 (line 171)
                                                                               ; - jdk.incubator.vector.Float256Vector::vectorFactory@2 (line 41)
                                                                               ; - jdk.incubator.vector.FloatVector::bOpTemplate@62 (line 210)
                                                                               ; - jdk.incubator.vector.FloatVector::bOpTemplate@7 (line 224)
                                                                               ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                               ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                               ; - jdk.incubator.vector.FloatVector::lambda$binaryOperations$39@8 (line 821)
                                                                               ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d14a8::apply@12
                                                                               ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                               ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
                                                                               ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
                                                                               ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
                                                                               ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@235 (line 117)
   0.07%             0x00007f3ca7271bf6:   mov    0x1b8(%r15),%rdx
   0.01%             0x00007f3ca7271bfd:   lea    0x30(%rdx),%rcx
   0.02%             0x00007f3ca7271c01:   cmp    0x1c8(%r15),%rcx
                     0x00007f3ca7271c08:   ja     0x00007f3ca727219c
   0.13%             0x00007f3ca7271c0e:   mov    %rcx,0x1b8(%r15)
   0.05%             0x00007f3ca7271c15:   prefetchw 0xf0(%rdx)
   0.17%             0x00007f3ca7271c1c:   prefetchw 0x130(%rdx)
   0.01%             0x00007f3ca7271c23:   prefetchw 0x170(%rdx)
   0.21%             0x00007f3ca7271c2a:   prefetchw 0x1b0(%rdx)
   0.12%             0x00007f3ca7271c31:   movq   $0x1,(%rdx)
   0.88%             0x00007f3ca7271c38:   movl   $0x1ee0,0x8(%rdx)            ;   {metadata({type array float})}
                     0x00007f3ca7271c3f:   movl   $0x8,0xc(%rdx)
   0.16%             0x00007f3ca7271c46:   movq   $0x0,0x10(%rdx)
   0.00%             0x00007f3ca7271c4e:   movq   $0x0,0x18(%rdx)
   0.20%             0x00007f3ca7271c56:   movq   $0x0,0x20(%rdx)
                     0x00007f3ca7271c5e:   movq   $0x0,0x28(%rdx)
   0.07%             0x00007f3ca7271c66:   vmovss 0x7c(%rsp),%xmm1
   0.01%             0x00007f3ca7271c6c:   vmovss 0x88(%rsp),%xmm8
   0.13%             0x00007f3ca7271c75:   vmovss 0x94(%rsp),%xmm6
   0.01%             0x00007f3ca7271c7e:   vmovss 0xa4(%rsp),%xmm5
   0.06%             0x00007f3ca7271c87:   vmovss 0xbc(%rsp),%xmm4
   0.01%             0x00007f3ca7271c90:   vmovss 0x64(%rsp),%xmm0
   0.12%             0x00007f3ca7271c96:   vmovss 0x68(%rsp),%xmm7
   0.02%             0x00007f3ca7271c9c:   vmovss 0xcc(%rsp),%xmm10
   0.05%             0x00007f3ca7271ca5:   vmovss %xmm1,0x2c(%rdx)
   0.00%             0x00007f3ca7271caa:   vmovss %xmm8,0x28(%rdx)
   0.09%             0x00007f3ca7271caf:   vmovss %xmm6,0x24(%rdx)
   0.01%             0x00007f3ca7271cb4:   vmovss %xmm5,0x20(%rdx)
   0.08%             0x00007f3ca7271cb9:   vmovss %xmm4,0x1c(%rdx)
   0.10%             0x00007f3ca7271cbe:   vmovss %xmm0,0x18(%rdx)
   0.04%             0x00007f3ca7271cc3:   vmovss %xmm7,0x14(%rdx)
   0.12%             0x00007f3ca7271cc8:   vmovss %xmm10,0x10(%rdx)            ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.incubator.vector.FloatVector::bOpTemplate@4 (line 204)
                                                                               ; - jdk.incubator.vector.FloatVector::bOpTemplate@7 (line 224)
                                                                               ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                               ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                               ; - jdk.incubator.vector.FloatVector::lambda$binaryOperations$39@8 (line 821)
                                                                               ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d14a8::apply@12
                                                                               ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                               ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
                                                                               ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
                                                                               ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
                                                                               ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@235 (line 117)
   0.14%             0x00007f3ca7271ccd:   mov    %rdx,%rcx
   0.01%             0x00007f3ca7271cd0:   shr    $0x3,%rcx
   0.01%             0x00007f3ca7271cd4:   mov    %ecx,0xc(%rax)
   0.11%             0x00007f3ca7271cd7:   mov    %rax,%rcx
   0.02%             0x00007f3ca7271cda:   xor    %rdx,%rcx
   0.01%             0x00007f3ca7271cdd:   data16 xchg %ax,%ax
   0.01%             0x00007f3ca7271ce0:   test   $0xffffffffffe00000,%rcx
                     0x00007f3ca7271ce7:   je     0x00007f3ca7272072
                     0x00007f3ca7271ced:   test   %rdx,%rdx
                     0x00007f3ca7271cf0:   je     0x00007f3ca72720a5
                     0x00007f3ca7271cf6:   mov    0x120(%rsp),%r10
                     0x00007f3ca7271cfe:   mov    %rax,%rcx
                     0x00007f3ca7271d01:   shr    $0x9,%rcx
                     0x00007f3ca7271d05:   cmpb   $0x2,(%rcx,%r10,1)
                     0x00007f3ca7271d0a:   jne    0x00007f3ca72720bd
                     0x00007f3ca7271d10:   mov    %rax,%r8                     ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.incubator.vector.Float256Vector::vectorFactory@0 (line 171)
....................................................................................................
  15.13%  <total for region 3>

....[Hottest Region 4]..............................................................................
jvmci, level 4, jdk.incubator.vector.FloatVector::lambda$compareTemplate$61, version 2, compile id 1203 

                    0x00007f3ca7258fd4:   je     0x00007f3ca72594d1
                    0x00007f3ca7258fda:   cmp    $0x7,%r10d
                    0x00007f3ca7258fde:   xchg   %ax,%ax
                    0x00007f3ca7258fe0:   je     0x00007f3ca72594d1
                    0x00007f3ca7258fe6:   jmp    0x00007f3ca72594d1           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.incubator.vector.FloatVector::compareWithOp@1 (line 1939)
                                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$60@4 (line 1908)
                                                                              ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d1ee0::apply@9
                                                                              ; - jdk.incubator.vector.FloatVector::bTest@53 (line 476)
                                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
   0.19%            0x00007f3ca7258feb:   vmovss 0x10(,%r8,8),%xmm0           ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.incubator.vector.FloatVector::bTest@52 (line 476)
                                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
   0.07%            0x00007f3ca7258ff5:   vucomiss 0x10(,%rsi,8),%xmm0
   0.23%  ╭         0x00007f3ca7258ffe:   jp     0x00007f3ca7259006
   0.16%  │         0x00007f3ca7259000:   jb     0x00007f3ca7259465           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - jdk.incubator.vector.FloatVector::compareWithOp@107 (line 1944)
          │                                                                   ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$60@4 (line 1908)
          │                                                                   ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d1ee0::apply@9
          │                                                                   ; - jdk.incubator.vector.FloatVector::bTest@53 (line 476)
          │                                                                   ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
   0.03%  ↘         0x00007f3ca7259006:   cmp    $0x2,%edx
                    0x00007f3ca7259009:   jb     0x00007f3ca7259451           ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.incubator.vector.FloatVector::bTest@47 (line 476)
                                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
   0.02%            0x00007f3ca725900f:   cmp    $0x2,%eax
                    0x00007f3ca7259012:   jb     0x00007f3ca725942d
   0.23%            0x00007f3ca7259018:   vmovss 0x14(,%r8,8),%xmm0           ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.incubator.vector.FloatVector::bTest@52 (line 476)
                                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
   0.12%            0x00007f3ca7259022:   vucomiss 0x14(,%rsi,8),%xmm0        ;   {no_reloc}
   0.07%   ╭        0x00007f3ca725902b:   jp     0x00007f3ca7259033
   0.21%   │        0x00007f3ca725902d:   jb     0x00007f3ca725931b           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - jdk.incubator.vector.FloatVector::compareWithOp@107 (line 1944)
           │                                                                  ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$60@4 (line 1908)
           │                                                                  ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d1ee0::apply@9
           │                                                                  ; - jdk.incubator.vector.FloatVector::bTest@53 (line 476)
           │                                                                  ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
   0.31%   ↘        0x00007f3ca7259033:   cmp    $0x3,%edx
                    0x00007f3ca7259036:   jb     0x00007f3ca72593f7           ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.incubator.vector.FloatVector::bTest@47 (line 476)
                                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
   0.01%            0x00007f3ca725903c:   nopl   0x0(%rax)
   0.01%            0x00007f3ca7259040:   cmp    $0x3,%eax
                    0x00007f3ca7259043:   jb     0x00007f3ca725943f
   0.10%            0x00007f3ca7259049:   vmovss 0x18(,%r8,8),%xmm0           ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.incubator.vector.FloatVector::bTest@52 (line 476)
                                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
   0.26%            0x00007f3ca7259053:   vucomiss 0x18(,%rsi,8),%xmm0
   0.06%    ╭       0x00007f3ca725905c:   jp     0x00007f3ca7259066
   0.13%    │       0x00007f3ca725905e:   xchg   %ax,%ax
   0.19%    │       0x00007f3ca7259060:   jb     0x00007f3ca7259409           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │                                                                 ; - jdk.incubator.vector.FloatVector::compareWithOp@107 (line 1944)
            │                                                                 ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$60@4 (line 1908)
            │                                                                 ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d1ee0::apply@9
            │                                                                 ; - jdk.incubator.vector.FloatVector::bTest@53 (line 476)
            │                                                                 ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
   0.06%    ↘       0x00007f3ca7259066:   cmp    $0x4,%edx
                    0x00007f3ca7259069:   jb     0x00007f3ca72594bf           ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.incubator.vector.FloatVector::bTest@47 (line 476)
                                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
   0.14%            0x00007f3ca725906f:   cmp    $0x4,%eax
                    0x00007f3ca7259072:   jb     0x00007f3ca72593e5
   0.19%            0x00007f3ca7259078:   vmovss 0x1c(,%r8,8),%xmm0           ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.incubator.vector.FloatVector::bTest@52 (line 476)
                                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
   0.08%            0x00007f3ca7259082:   vucomiss 0x1c(,%rsi,8),%xmm0
   0.15%     ╭      0x00007f3ca725908b:   jp     0x00007f3ca7259093
   0.22%     │      0x00007f3ca725908d:   jb     0x00007f3ca72593cf           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
             │                                                                ; - jdk.incubator.vector.FloatVector::compareWithOp@107 (line 1944)
             │                                                                ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$60@4 (line 1908)
             │                                                                ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d1ee0::apply@9
             │                                                                ; - jdk.incubator.vector.FloatVector::bTest@53 (line 476)
             │                                                                ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
   0.36%     ↘      0x00007f3ca7259093:   cmp    $0x5,%edx
                    0x00007f3ca7259096:   jb     0x00007f3ca72593bd           ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.incubator.vector.FloatVector::bTest@47 (line 476)
                                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
   0.06%            0x00007f3ca725909c:   nopl   0x0(%rax)
   0.01%            0x00007f3ca72590a0:   cmp    $0x5,%eax
                    0x00007f3ca72590a3:   jb     0x00007f3ca7259477
   0.16%            0x00007f3ca72590a9:   vmovss 0x20(,%r8,8),%xmm0           ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.incubator.vector.FloatVector::bTest@52 (line 476)
                                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
   0.29%            0x00007f3ca72590b3:   vucomiss 0x20(,%rsi,8),%xmm0
   0.31%      ╭     0x00007f3ca72590bc:   jp     0x00007f3ca72590c6
   0.14%      │     0x00007f3ca72590be:   xchg   %ax,%ax
   0.12%      │     0x00007f3ca72590c0:   jb     0x00007f3ca7259399           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
              │                                                               ; - jdk.incubator.vector.FloatVector::compareWithOp@107 (line 1944)
              │                                                               ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$60@4 (line 1908)
              │                                                               ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d1ee0::apply@9
              │                                                               ; - jdk.incubator.vector.FloatVector::bTest@53 (line 476)
              │                                                               ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
   0.08%      ↘     0x00007f3ca72590c6:   cmp    $0x6,%edx
                    0x00007f3ca72590c9:   jb     0x00007f3ca7259387           ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.incubator.vector.FloatVector::bTest@47 (line 476)
                                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
   0.11%            0x00007f3ca72590cf:   cmp    $0x6,%eax
                    0x00007f3ca72590d2:   jb     0x00007f3ca7259375
   0.17%            0x00007f3ca72590d8:   vmovss 0x24(,%r8,8),%xmm0           ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.incubator.vector.FloatVector::bTest@52 (line 476)
                                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
   0.14%            0x00007f3ca72590e2:   vucomiss 0x24(,%rsi,8),%xmm0
   0.49%       ╭    0x00007f3ca72590eb:   jp     0x00007f3ca72590f3
   0.20%       │    0x00007f3ca72590ed:   jb     0x00007f3ca7259366           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
               │                                                              ; - jdk.incubator.vector.FloatVector::compareWithOp@107 (line 1944)
               │                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$60@4 (line 1908)
               │                                                              ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d1ee0::apply@9
               │                                                              ; - jdk.incubator.vector.FloatVector::bTest@53 (line 476)
               │                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
   0.20%       ↘    0x00007f3ca72590f3:   cmp    $0x7,%edx
                    0x00007f3ca72590f6:   jb     0x00007f3ca7259357           ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.incubator.vector.FloatVector::bTest@47 (line 476)
                                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
   0.00%            0x00007f3ca72590fc:   nopl   0x0(%rax)
   0.04%            0x00007f3ca7259100:   cmp    $0x7,%eax
                    0x00007f3ca7259103:   jb     0x00007f3ca7259348
   0.14%            0x00007f3ca7259109:   vmovss 0x28(,%r8,8),%xmm0           ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.incubator.vector.FloatVector::bTest@52 (line 476)
                                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
   0.42%            0x00007f3ca7259113:   vucomiss 0x28(,%rsi,8),%xmm0
   0.44%        ╭   0x00007f3ca725911c:   jp     0x00007f3ca7259126
   0.22%        │   0x00007f3ca725911e:   xchg   %ax,%ax
   0.02%        │   0x00007f3ca7259120:   jb     0x00007f3ca7259339           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - jdk.incubator.vector.FloatVector::compareWithOp@107 (line 1944)
                │                                                             ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$60@4 (line 1908)
                │                                                             ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d1ee0::apply@9
                │                                                             ; - jdk.incubator.vector.FloatVector::bTest@53 (line 476)
                │                                                             ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
                │                                                             ;   {no_reloc}
   0.13%        ↘   0x00007f3ca7259126:   cmp    $0x8,%edx
                    0x00007f3ca7259129:   jb     0x00007f3ca725932a           ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.incubator.vector.FloatVector::bTest@47 (line 476)
                                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
   0.08%            0x00007f3ca725912f:   cmp    $0x8,%eax
                    0x00007f3ca7259132:   jb     0x00007f3ca725949b
   0.24%            0x00007f3ca7259138:   vmovss 0x2c(,%r8,8),%xmm0           ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.incubator.vector.FloatVector::bTest@52 (line 476)
                                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
   0.02%            0x00007f3ca7259142:   vucomiss 0x2c(,%rsi,8),%xmm0
   0.84%         ╭  0x00007f3ca725914b:   jp     0x00007f3ca7259153
   0.37%         │  0x00007f3ca725914d:   jb     0x00007f3ca725941b           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - jdk.incubator.vector.FloatVector::compareWithOp@107 (line 1944)
                 │                                                            ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$60@4 (line 1908)
                 │                                                            ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d1ee0::apply@9
                 │                                                            ; - jdk.incubator.vector.FloatVector::bTest@53 (line 476)
                 │                                                            ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
   0.21%         ↘  0x00007f3ca7259153:   mov    0x1b8(%r15),%rsi
   0.01%            0x00007f3ca725915a:   lea    0x10(%rsi),%rdx
   0.00%            0x00007f3ca725915e:   xchg   %ax,%ax
   0.12%            0x00007f3ca7259160:   cmp    0x1c8(%r15),%rdx
                    0x00007f3ca7259167:   ja     0x00007f3ca725929d
   0.25%            0x00007f3ca725916d:   mov    %rdx,0x1b8(%r15)
                    0x00007f3ca7259174:   prefetchw 0xd0(%rsi)
   0.56%            0x00007f3ca725917b:   movq   $0x1,(%rsi)
   0.17%            0x00007f3ca7259182:   movl   $0x10c4f80,0x8(%rsi)         ;   {metadata(&apos;jdk/incubator/vector/Float256Vector$Float256Mask&apos;)}
   1.66%            0x00007f3ca7259189:   movl   $0x0,0xc(%rsi)
                    0x00007f3ca7259190:   mov    %rsi,%r8                     ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.incubator.vector.Float256Vector::maskFromArray@0 (line 137)
                                                                              ; - jdk.incubator.vector.Float256Vector::maskFromArray@2 (line 41)
                                                                              ; - jdk.incubator.vector.AbstractSpecies::maskFactory@5 (line 328)
                                                                              ; - jdk.incubator.vector.FloatVector::maskFactory@5 (line 116)
                                                                              ; - jdk.incubator.vector.FloatVector::bTest@68 (line 478)
                                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
                    0x00007f3ca7259193:   mov    0x1b8(%r15),%rsi
   0.01%            0x00007f3ca725919a:   lea    0x18(%rsi),%rdx
   0.30%            0x00007f3ca725919e:   xchg   %ax,%ax
                    0x00007f3ca72591a0:   cmp    0x1c8(%r15),%rdx
                    0x00007f3ca72591a7:   ja     0x00007f3ca72592be
   0.03%            0x00007f3ca72591ad:   mov    %rdx,0x1b8(%r15)
   0.06%            0x00007f3ca72591b4:   prefetchw 0xd8(%rsi)
   0.58%            0x00007f3ca72591bb:   prefetchw 0x118(%rsi)
   0.00%            0x00007f3ca72591c2:   prefetchw 0x158(%rsi)
   0.18%            0x00007f3ca72591c9:   prefetchw 0x198(%rsi)
   0.14%            0x00007f3ca72591d0:   movq   $0x1,(%rsi)
   0.77%            0x00007f3ca72591d7:   movl   $0x1b00,0x8(%rsi)            ;   {metadata({type array bool})}
   0.10%            0x00007f3ca72591de:   movl   $0x8,0xc(%rsi)
   0.24%            0x00007f3ca72591e5:   movq   $0x0,0x10(%rsi)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.incubator.vector.Float256Vector$Float256Mask::prepare@6 (line 571)
                                                                              ; - jdk.incubator.vector.Float256Vector$Float256Mask::&lt;init&gt;@3 (line 563)
                                                                              ; - jdk.incubator.vector.Float256Vector$Float256Mask::&lt;init&gt;@3 (line 559)
                                                                              ; - jdk.incubator.vector.Float256Vector::maskFromArray@5 (line 137)
                                                                              ; - jdk.incubator.vector.Float256Vector::maskFromArray@2 (line 41)
                                                                              ; - jdk.incubator.vector.AbstractSpecies::maskFactory@5 (line 328)
                                                                              ; - jdk.incubator.vector.FloatVector::maskFactory@5 (line 116)
                                                                              ; - jdk.incubator.vector.FloatVector::bTest@68 (line 478)
                                                                              ; - jdk.incubator.vector.FloatVector::lambda$compareTemplate$61@9 (line 1907)
   0.00%            0x00007f3ca72591ed:   mov    %rsi,%rdx
   0.03%            0x00007f3ca72591f0:   shr    $0x3,%rdx
   0.11%            0x00007f3ca72591f4:   mov    %edx,0xc(%r8)
   0.18%            0x00007f3ca72591f8:   mov    %r8,%rdx
   0.01%            0x00007f3ca72591fb:   xor    %rsi,%rdx
   0.03%            0x00007f3ca72591fe:   xchg   %ax,%ax
   0.10%            0x00007f3ca7259200:   test   $0xffffffffffe00000,%rdx
                    0x00007f3ca7259207:   je     0x00007f3ca7259232
                    0x00007f3ca725920d:   test   %rsi,%rsi
                    0x00007f3ca7259210:   je     0x00007f3ca7259232
                    0x00007f3ca7259216:   mov    %r8,%r10
                    0x00007f3ca7259219:   shr    $0x9,%r10
                    0x00007f3ca725921d:   movabs $0x7f3c9aeef000,%r11
                    0x00007f3ca7259227:   cmpb   $0x2,(%r10,%r11,1)
                    0x00007f3ca725922c:   jne    0x00007f3ca7259269           ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.incubator.vector.Float256Vector::maskFromArray@0 (line 137)
                                                                              ; - jdk.incubator.vector.Float256Vector::maskFromArray@2 (line 41)
....................................................................................................
  14.88%  <total for region 4>

....[Hottest Region 5]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized, version 4, compile id 1219 

                                                                                ; - jdk.incubator.vector.Float256Vector::bOp@10 (line 214)
                                                                                ; - jdk.incubator.vector.Float256Vector::bOp@4 (line 41)
                                                                                ; - jdk.incubator.vector.FloatVector::lambda$binaryOperations$39@8 (line 821)
                                                                                ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d14a8::apply@12
                                                                                ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                                ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
                                                                                ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
                                                                                ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
                                                                                ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@235 (line 117)
   0.14%              0x00007f3ca7271d13:   mov    $0x1,%esi
                      0x00007f3ca7271d18:   mov    %r8,%rdx
                      0x00007f3ca7271d1b:   mov    0x38(%rsp),%rcx
   0.08%              0x00007f3ca7271d20:   mov    %r8,0x20(%rsp)
   0.15%              0x00007f3ca7271d25:   mov    $0x0,%r8                     ;*invokestatic lambda$compareTemplate$61 {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d1ad0::apply@14
                                                                                ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
                                                                                ; - jdk.incubator.vector.FloatVector::compareTemplate@42 (line 1902)
                                                                                ; - jdk.incubator.vector.Float256Vector::compare@5 (line 371)
                                                                                ; - jdk.incubator.vector.Float256Vector::compare@3 (line 41)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@301 (line 120)
                      0x00007f3ca7271d2c:   data16 xchg %ax,%ax
                      0x00007f3ca7271d2f:   call   0x00007f3ca6c2f980           ; ImmutableOopMap {[32]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop }
                                                                                ;*invokestatic lambda$compareTemplate$61 {reexecute=0 rethrow=0 return_oop=1}
                                                                                ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d1ad0::apply@14
                                                                                ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
                                                                                ; - jdk.incubator.vector.FloatVector::compareTemplate@42 (line 1902)
                                                                                ; - jdk.incubator.vector.Float256Vector::compare@5 (line 371)
                                                                                ; - jdk.incubator.vector.Float256Vector::compare@3 (line 41)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@301 (line 120)
                                                                                ;   {static_call}
   0.03%              0x00007f3ca7271d34:   nopl   0xa001424(%rax,%rax,1)       ;   {other}
   0.05%              0x00007f3ca7271d3c:   nopl   0x0(%rax)                    ; ImmutableOopMap {rax=Oop [32]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop }
                                                                                ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d1ad0::apply@17
                                                                                ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
                                                                                ; - jdk.incubator.vector.FloatVector::compareTemplate@42 (line 1902)
                                                                                ; - jdk.incubator.vector.Float256Vector::compare@5 (line 371)
                                                                                ; - jdk.incubator.vector.Float256Vector::compare@3 (line 41)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@301 (line 120)
   0.11%              0x00007f3ca7271d40:   cmpl   $0x10c4f80,0x8(%rax)         ; implicit exception: dispatches to 0x00007f3ca72730c7
                                                                                ;   {metadata(&apos;jdk/incubator/vector/Float256Vector$Float256Mask&apos;)}
   0.05%              0x00007f3ca7271d47:   jne    0x00007f3ca7272b85
   0.01%              0x00007f3ca7271d4d:   movabs $0x7f2636ed0,%rbx            ;   {oop(a &apos;jdk/incubator/vector/FloatVector$$Lambda+0x00007f3c2c0d22f0&apos;{0x00000007f2636ed0})}
   0.05%              0x00007f3ca7271d57:   mov    0x50(%rsp),%rsi
   0.08%              0x00007f3ca7271d5c:   mov    0x48(%rsp),%rdx
   0.02%              0x00007f3ca7271d61:   mov    0x40(%rsp),%rcx
   0.14%              0x00007f3ca7271d66:   mov    $0x8,%r8d
   0.00%              0x00007f3ca7271d6c:   mov    0x20(%rsp),%r9
   0.01%              0x00007f3ca7271d71:   mov    0x38(%rsp),%rdi
   0.09%              0x00007f3ca7271d76:   mov    %rax,(%rsp)
   0.06%              0x00007f3ca7271d7a:   mov    %rbx,0x8(%rsp)               ;*invokestatic blend {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.incubator.vector.FloatVector::blendTemplate@26 (line 2051)
                                                                                ; - jdk.incubator.vector.Float256Vector::blend@11 (line 397)
                                                                                ; - jdk.incubator.vector.Float256Vector::blend@3 (line 41)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@304 (line 120)
   0.58%              0x00007f3ca7271d7f:   mov    %rax,0x18(%rsp)
   0.00%              0x00007f3ca7271d84:   data16 xchg %ax,%ax
   0.00%              0x00007f3ca7271d87:   call   0x00007f3ca6c2f980           ; ImmutableOopMap {[24]=Oop [32]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop }
                                                                                ;*invokestatic blend {reexecute=0 rethrow=0 return_oop=1}
                                                                                ; - jdk.incubator.vector.FloatVector::blendTemplate@26 (line 2051)
                                                                                ; - jdk.incubator.vector.Float256Vector::blend@11 (line 397)
                                                                                ; - jdk.incubator.vector.Float256Vector::blend@3 (line 41)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@304 (line 120)
                                                                                ;   {static_call}
   0.02%              0x00007f3ca7271d8c:   nopl   0xc00147c(%rax,%rax,1)       ;   {other}
   0.01%              0x00007f3ca7271d94:   nopl   0x0(%rax,%rax,1)
                      0x00007f3ca7271d9c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rax=Oop [24]=Oop [32]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop }
                                                                                ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) jdk.incubator.vector.FloatVector::blendTemplate@29 (line 2051)
                                                                                ; - jdk.incubator.vector.Float256Vector::blend@11 (line 397)
                                                                                ; - jdk.incubator.vector.Float256Vector::blend@3 (line 41)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@304 (line 120)
   0.16%              0x00007f3ca7271da0:   cmpl   $0x10c4910,0x8(%rax)         ; implicit exception: dispatches to 0x00007f3ca72730ed
                                                                                ;   {metadata(&apos;jdk/incubator/vector/Float256Vector&apos;)}
   0.46%              0x00007f3ca7271da7:   jne    0x00007f3ca7272974           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.incubator.vector.FloatVector::blendTemplate@29 (line 2051)
                                                                                ; - jdk.incubator.vector.Float256Vector::blend@11 (line 397)
                                                                                ; - jdk.incubator.vector.Float256Vector::blend@3 (line 41)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@304 (line 120)
   0.14%              0x00007f3ca7271dad:   mov    0x58(%rsp),%rsi
   0.32%              0x00007f3ca7271db2:   mov    0x24(%rsi),%r10d             ; ImmutableOopMap {rax=Oop rsi=Oop r10=NarrowOop [24]=Oop [32]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop }
                                                                                ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) jdk.incubator.vector.FloatVector::blendTemplate@29 (line 2051)
                                                                                ; - jdk.incubator.vector.Float256Vector::blend@11 (line 397)
                                                                                ; - jdk.incubator.vector.Float256Vector::blend@3 (line 41)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@304 (line 120)
   0.69%              0x00007f3ca7271db6:   mov    0xc(,%r10,8),%r11d           ; implicit exception: dispatches to 0x00007f3ca7273110
   1.78%              0x00007f3ca7271dbe:   xchg   %ax,%ax
                      0x00007f3ca7271dc0:   cmp    $0x7,%r11d
                      0x00007f3ca7271dc4:   jb     0x00007f3ca7272d7f           ;* unwind (locked if synchronized)
                                                                                ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                                ; - java.util.Objects::checkIndex@3 (line 385)
                                                                                ; - jdk.incubator.vector.VectorIntrinsics::checkFromIndexSize@43 (line 61)
                                                                                ; - jdk.incubator.vector.FloatVector::intoArray@7 (line 3070)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.17%              0x00007f3ca7271dca:   lea    -0x7(%r11),%r8d              ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.incubator.vector.VectorIntrinsics::checkFromIndexSize@42 (line 61)
                                                                                ; - jdk.incubator.vector.FloatVector::intoArray@7 (line 3070)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.00%              0x00007f3ca7271dce:   cmp    0xc0(%rsp),%r8d
                      0x00007f3ca7271dd6:   jbe    0x00007f3ca7272dd6           ;* unwind (locked if synchronized)
                                                                                ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                                ; - java.util.Objects::checkIndex@3 (line 385)
                                                                                ; - jdk.incubator.vector.VectorIntrinsics::checkFromIndexSize@43 (line 61)
                                                                                ; - jdk.incubator.vector.FloatVector::intoArray@7 (line 3070)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.19%              0x00007f3ca7271ddc:   mov    0xc(%rax),%r8d               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                                ; - jdk.incubator.vector.Float256Vector::vec@1 (line 117)
                                                                                ; - jdk.incubator.vector.FloatVector::stOp@1 (line 404)
                                                                                ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
                                                                                ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
                                                                                ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
                                                                                ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
                      0x00007f3ca7271de0:   test   %r8d,%r8d
                      0x00007f3ca7271de3:   je     0x00007f3ca727207a
   0.00%              0x00007f3ca7271de9:   mov    0x8(,%r8,8),%r9d
                      0x00007f3ca7271df1:   movabs $0x7f3c2b000000,%rcx
   0.16%              0x00007f3ca7271dfb:   lea    (%rcx,%r9,1),%r9
                      0x00007f3ca7271dff:   nop
                      0x00007f3ca7271e00:   test   %r8d,%r8d
          ╭           0x00007f3ca7271e03:   je     0x00007f3ca7271fe7
          │           0x00007f3ca7271e09:   mov    0x110(%rsp),%r13
   0.21%  │           0x00007f3ca7271e11:   cmp    %r9,%r13
          │           0x00007f3ca7271e14:   jne    0x00007f3ca7272e0f           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - jdk.incubator.vector.Float256Vector::vec@4 (line 117)
          │                                                                     ; - jdk.incubator.vector.FloatVector::stOp@1 (line 404)
          │                                                                     ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
          │                                                                     ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
          │                                                                     ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
          │                                                                     ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
          │           0x00007f3ca7271e1a:   mov    0xc0(%rsp),%r9d              ; ImmutableOopMap {rax=Oop rsi=Oop r8=NarrowOop r10=NarrowOop [24]=Oop [32]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop }
          │                                                                     ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
          │                                                                     ; - (reexecute) jdk.incubator.vector.FloatVector::blendTemplate@29 (line 2051)
          │                                                                     ; - jdk.incubator.vector.Float256Vector::blend@11 (line 397)
          │                                                                     ; - jdk.incubator.vector.Float256Vector::blend@3 (line 41)
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@304 (line 120)
          │           0x00007f3ca7271e22:   mov    0xc(,%r8,8),%ecx             ; implicit exception: dispatches to 0x00007f3ca7273133
   0.00%  │           0x00007f3ca7271e2a:   lea    0x8(%r9),%ebx                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@324 (line 101)
   0.17%  │           0x00007f3ca7271e2e:   test   %ecx,%ecx
          │           0x00007f3ca7271e30:   je     0x00007f3ca7272009           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - jdk.incubator.vector.FloatVector::stOp@14 (line 405)
          │                                                                     ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
          │                                                                     ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
          │                                                                     ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
          │                                                                     ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
          │           0x00007f3ca7271e36:   mov    %ecx,%edi
          │           0x00007f3ca7271e38:   dec    %edi
   0.00%  │           0x00007f3ca7271e3a:   movslq %edi,%rdi
   0.20%  │           0x00007f3ca7271e3d:   mov    %ecx,%edx
          │           0x00007f3ca7271e3f:   nop
          │           0x00007f3ca7271e40:   cmp    %rdi,%rdx
          │╭          0x00007f3ca7271e43:   ja     0x00007f3ca7271e52
          ││          0x00007f3ca7271e49:   cmp    $0x2,%ecx
          ││          0x00007f3ca7271e4c:   jae    0x00007f3ca72726d4           ;*faload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                    ; - jdk.incubator.vector.FloatVector::stOp@26 (line 406)
          ││                                                                    ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
          ││                                                                    ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
          ││                                                                    ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
          ││                                                                    ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.01%  │↘          0x00007f3ca7271e52:   cmp    $0x2,%ecx
          │ ╭         0x00007f3ca7271e55:   jb     0x00007f3ca7271e7d
   0.17%  │ │         0x00007f3ca7271e5b:   mov    0x70(%rsp),%rdx
   0.01%  │ │         0x00007f3ca7271e60:   add    %rdx,%rdi
   0.00%  │ │         0x00007f3ca7271e63:   mov    %r11d,%edx
          │ │         0x00007f3ca7271e66:   cmp    %rdi,%rdx
          │ │         0x00007f3ca7271e69:   jbe    0x00007f3ca7272dba
   0.16%  │ │         0x00007f3ca7271e6f:   cmp    0xe4(%rsp),%r11d
          │ │         0x00007f3ca7271e77:   jbe    0x00007f3ca7272a73
   0.01%  │ ↘         0x00007f3ca7271e7d:   data16 xchg %ax,%ax
          │           0x00007f3ca7271e80:   cmp    %r9d,%r11d
          │           0x00007f3ca7271e83:   jbe    0x00007f3ca7272aa5           ;*fastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - jdk.incubator.vector.FloatVector::lambda$intoArray$87@5 (line 3079)
          │                                                                     ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2d28::apply@8
          │                                                                     ; - jdk.incubator.vector.FloatVector::stOp@27 (line 406)
          │                                                                     ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
          │                                                                     ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
          │                                                                     ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
          │                                                                     ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.00%  │           0x00007f3ca7271e89:   vmovss 0x10(,%r8,8),%xmm0           ;*faload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - jdk.incubator.vector.FloatVector::stOp@26 (line 406)
          │                                                                     ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
          │                                                                     ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
          │                                                                     ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
          │                                                                     ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.19%  │           0x00007f3ca7271e93:   shl    $0x3,%r10                    ;*getfield resultB {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@308 (line 120)
   0.01%  │           0x00007f3ca7271e97:   vmovss %xmm0,0x10(%r10,%r9,4)       ;*fastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - jdk.incubator.vector.FloatVector::lambda$intoArray$87@5 (line 3079)
          │                                                                     ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2d28::apply@8
          │                                                                     ; - jdk.incubator.vector.FloatVector::stOp@27 (line 406)
          │                                                                     ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
          │                                                                     ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
          │                                                                     ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
          │                                                                     ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.12%  │           0x00007f3ca7271e9e:   cmp    $0x3,%ecx
          │           0x00007f3ca7271ea1:   mov    $0x2,%eax                    ;   {no_reloc}
   0.13%  │           0x00007f3ca7271ea6:   cmovb  %ecx,%eax
          │           0x00007f3ca7271ea9:   shl    $0x3,%r8                     ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
          │                                                                     ; - jdk.incubator.vector.Float256Vector::vec@1 (line 117)
          │                                                                     ; - jdk.incubator.vector.FloatVector::stOp@1 (line 404)
          │                                                                     ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
          │                                                                     ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
          │                                                                     ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
          │                                                                     ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.03%  │           0x00007f3ca7271ead:   mov    $0x1,%r11d
   0.00%  │  ╭        0x00007f3ca7271eb3:   jmp    0x00007f3ca7271ed7           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                                  ; - jdk.incubator.vector.FloatVector::stOp@9 (line 405)
          │  │                                                                  ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
          │  │                                                                  ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
          │  │                                                                  ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
          │  │                                                                  ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │  │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
          │  │        0x00007f3ca7271eb8:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                                  ; - jdk.incubator.vector.FloatVector::stOp@14 (line 405)
          │  │                                                                  ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
          │  │                                                                  ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
          │  │                                                                  ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
          │  │                                                                  ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │  │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.19%  │  │↗       0x00007f3ca7271ec0:   vmovss 0x10(%r8,%r11,4),%xmm0       ;*faload {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                                 ; - jdk.incubator.vector.FloatVector::stOp@26 (line 406)
          │  ││                                                                 ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
          │  ││                                                                 ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
          │  ││                                                                 ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
          │  ││                                                                 ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │  ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.04%  │  ││       0x00007f3ca7271ec7:   mov    %r9d,%edi
          │  ││       0x00007f3ca7271eca:   add    %r11d,%edi                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                                 ; - jdk.incubator.vector.FloatVector::lambda$intoArray$87@3 (line 3079)
          │  ││                                                                 ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2d28::apply@8
          │  ││                                                                 ; - jdk.incubator.vector.FloatVector::stOp@27 (line 406)
          │  ││                                                                 ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
          │  ││                                                                 ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
          │  ││                                                                 ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
          │  ││                                                                 ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │  ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
          │  ││       0x00007f3ca7271ecd:   vmovss %xmm0,0x10(%r10,%rdi,4)      ;*fastore {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                                 ; - jdk.incubator.vector.FloatVector::lambda$intoArray$87@5 (line 3079)
          │  ││                                                                 ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2d28::apply@8
          │  ││                                                                 ; - jdk.incubator.vector.FloatVector::stOp@27 (line 406)
          │  ││                                                                 ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
          │  ││                                                                 ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
          │  ││                                                                 ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
          │  ││                                                                 ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │  ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.21%  │  ││       0x00007f3ca7271ed4:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                                 ; - jdk.incubator.vector.FloatVector::stOp@32 (line 405)
          │  ││                                                                 ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
          │  ││                                                                 ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
          │  ││                                                                 ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
          │  ││                                                                 ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │  ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.18%  │  ↘│       0x00007f3ca7271ed7:   cmp    %r11d,%eax
          │   ╰       0x00007f3ca7271eda:   jg     0x00007f3ca7271ec0
          │           0x00007f3ca7271edc:   lea    -0x4(%rcx),%eax
          │           0x00007f3ca7271edf:   mov    0xdc(%rsp),%ebp
   0.18%  │           0x00007f3ca7271ee6:   mov    0xe0(%rsp),%edx
          │           0x00007f3ca7271eed:   mov    0xe4(%rsp),%edi
   0.00%  │    ╭      0x00007f3ca7271ef4:   jmp    0x00007f3ca7271f94
          │    │      0x00007f3ca7271ef9:   nopl   0x0(%rax)                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                ; - jdk.incubator.vector.FloatVector::stOp@14 (line 405)
          │    │                                                                ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
          │    │                                                                ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
          │    │                                                                ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
          │    │                                                                ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │    │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.23%  │    │ ↗    0x00007f3ca7271f00:   vmovss 0x10(%r8,%r11,4),%xmm0       ;*faload {reexecute=0 rethrow=0 return_oop=0}
          │    │ │                                                              ; - jdk.incubator.vector.FloatVector::stOp@26 (line 406)
          │    │ │                                                              ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
          │    │ │                                                              ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
          │    │ │                                                              ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
          │    │ │                                                              ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │    │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.02%  │    │ │    0x00007f3ca7271f07:   mov    %r9d,%eax
          │    │ │    0x00007f3ca7271f0a:   add    %r11d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │    │ │                                                              ; - jdk.incubator.vector.FloatVector::lambda$intoArray$87@3 (line 3079)
          │    │ │                                                              ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2d28::apply@8
          │    │ │                                                              ; - jdk.incubator.vector.FloatVector::stOp@27 (line 406)
          │    │ │                                                              ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
          │    │ │                                                              ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
          │    │ │                                                              ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
          │    │ │                                                              ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │    │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.11%  │    │ │    0x00007f3ca7271f0d:   vmovss %xmm0,0x10(%r10,%rax,4)      ;*fastore {reexecute=0 rethrow=0 return_oop=0}
          │    │ │                                                              ; - jdk.incubator.vector.FloatVector::lambda$intoArray$87@5 (line 3079)
          │    │ │                                                              ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2d28::apply@8
          │    │ │                                                              ; - jdk.incubator.vector.FloatVector::stOp@27 (line 406)
          │    │ │                                                              ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
          │    │ │                                                              ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
          │    │ │                                                              ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
          │    │ │                                                              ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │    │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.39%  │    │ │    0x00007f3ca7271f14:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │    │ │                                                              ; - jdk.incubator.vector.FloatVector::stOp@32 (line 405)
          │    │ │                                                              ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
          │    │ │                                                              ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
          │    │ │                                                              ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
          │    │ │                                                              ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │    │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
          │    │ │    0x00007f3ca7271f17:   nopw   0x0(%rax,%rax,1)
   0.06%  │    │ │↗   0x00007f3ca7271f20:   cmp    %r11d,%ecx
          │    │╭││   0x00007f3ca7271f23:   jle    0x00007f3ca7271f9b
   0.11%  │    ││╰│   0x00007f3ca7271f29:   jmp    0x00007f3ca7271f00
          │    ││ │   0x00007f3ca7271f2b:   data16 data16 nopw 0x0(%rax,%rax,1)
          │    ││ │   0x00007f3ca7271f36:   data16 data16 xchg %ax,%ax
          │    ││ │   0x00007f3ca7271f3a:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │    ││ │                                                             ; - jdk.incubator.vector.FloatVector::stOp@14 (line 405)
          │    ││ │                                                             ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
          │    ││ │                                                             ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
          │    ││ │                                                             ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
          │    ││ │                                                             ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │    ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
          │    ││ │↗  0x00007f3ca7271f40:   vmovss 0x10(%r8,%r11,4),%xmm0       ;*faload {reexecute=0 rethrow=0 return_oop=0}
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector::stOp@26 (line 406)
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
          │    ││ ││                                                            ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │    ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.06%  │    ││ ││  0x00007f3ca7271f47:   mov    %r9d,%r14d
          │    ││ ││  0x00007f3ca7271f4a:   add    %r11d,%r14d                  ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector::lambda$intoArray$87@3 (line 3079)
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2d28::apply@8
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector::stOp@27 (line 406)
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
          │    ││ ││                                                            ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │    ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.12%  │    ││ ││  0x00007f3ca7271f4d:   vmovss %xmm0,0x10(%r10,%r14,4)      ;*fastore {reexecute=0 rethrow=0 return_oop=0}
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector::lambda$intoArray$87@5 (line 3079)
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2d28::apply@8
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector::stOp@27 (line 406)
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
          │    ││ ││                                                            ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │    ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.31%  │    ││ ││  0x00007f3ca7271f54:   movslq %r11d,%r14
          │    ││ ││  0x00007f3ca7271f57:   vmovss 0x14(%r8,%r14,4),%xmm0       ;*faload {reexecute=0 rethrow=0 return_oop=0}
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector::stOp@26 (line 406)
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
          │    ││ ││                                                            ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │    ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
          │    ││ ││  0x00007f3ca7271f5e:   mov    %edi,%esi
   0.07%  │    ││ ││  0x00007f3ca7271f60:   add    %r11d,%esi
   0.11%  │    ││ ││  0x00007f3ca7271f63:   vmovss %xmm0,0x10(%r10,%rsi,4)      ;*fastore {reexecute=0 rethrow=0 return_oop=0}
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector::lambda$intoArray$87@5 (line 3079)
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2d28::apply@8
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector::stOp@27 (line 406)
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
          │    ││ ││                                                            ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │    ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.10%  │    ││ ││  0x00007f3ca7271f6a:   vmovss 0x18(%r8,%r14,4),%xmm0       ;*faload {reexecute=0 rethrow=0 return_oop=0}
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector::stOp@26 (line 406)
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
          │    ││ ││                                                            ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │    ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
          │    ││ ││  0x00007f3ca7271f71:   mov    %edx,%esi
   0.07%  │    ││ ││  0x00007f3ca7271f73:   add    %r11d,%esi
   0.04%  │    ││ ││  0x00007f3ca7271f76:   vmovss %xmm0,0x10(%r10,%rsi,4)      ;*fastore {reexecute=0 rethrow=0 return_oop=0}
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector::lambda$intoArray$87@5 (line 3079)
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2d28::apply@8
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector::stOp@27 (line 406)
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
          │    ││ ││                                                            ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │    ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.07%  │    ││ ││  0x00007f3ca7271f7d:   vmovss 0x1c(%r8,%r14,4),%xmm0       ;*faload {reexecute=0 rethrow=0 return_oop=0}
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector::stOp@26 (line 406)
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
          │    ││ ││                                                            ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │    ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
          │    ││ ││  0x00007f3ca7271f84:   mov    %ebp,%esi
   0.05%  │    ││ ││  0x00007f3ca7271f86:   add    %r11d,%esi
   0.06%  │    ││ ││  0x00007f3ca7271f89:   vmovss %xmm0,0x10(%r10,%rsi,4)      ;*fastore {reexecute=0 rethrow=0 return_oop=0}
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector::lambda$intoArray$87@5 (line 3079)
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2d28::apply@8
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector::stOp@27 (line 406)
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
          │    ││ ││                                                            ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │    ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.09%  │    ││ ││  0x00007f3ca7271f90:   lea    0x4(%r11),%r11d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector::stOp@32 (line 405)
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
          │    ││ ││                                                            ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
          │    ││ ││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │    ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
          │    ↘│ ││  0x00007f3ca7271f94:   cmp    %r11d,%eax
          │     │ ╰│  0x00007f3ca7271f97:   jle    0x00007f3ca7271f20
   0.18%  │     │  ╰  0x00007f3ca7271f99:   jmp    0x00007f3ca7271f40           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │     │                                                               ; - jdk.incubator.vector.FloatVector::stOp@14 (line 405)
          │     │                                                               ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
          │     │                                                               ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
          │     │                                                               ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
          │     │                                                               ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │     │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.07%  │     ↘     0x00007f3ca7271f9b:   mov    %ebx,%r10d
   0.09%  │           0x00007f3ca7271f9e:   vmovss 0xe8(%rsp),%xmm9             ;   {no_reloc}
   0.03%  │           0x00007f3ca7271fa7:   vmovss 0xec(%rsp),%xmm8
          │           0x00007f3ca7271fb0:   vmovss 0xf0(%rsp),%xmm7
   0.06%  │           0x00007f3ca7271fb9:   vmovss 0x100(%rsp),%xmm3
   0.10%  │           0x00007f3ca7271fc2:   vmovss 0x104(%rsp),%xmm2
   0.02%  │           0x00007f3ca7271fcb:   vmovss 0x108(%rsp),%xmm1
   0.05%  │           0x00007f3ca7271fd4:   vmovss 0x10c(%rsp),%xmm0
   0.04%  │           0x00007f3ca7271fdd:   mov    0x58(%rsp),%rsi
   0.06%  │           0x00007f3ca7271fe2:   jmp    0x00007f3ca7270d50           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@2 (line 101)
          ↘           0x00007f3ca7271fe7:   mov    0xc0(%rsp),%r9d
                      0x00007f3ca7271fef:   mov    0x110(%rsp),%r13
                      0x00007f3ca7271ff7:   jmp    0x00007f3ca7271e22           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.incubator.vector.Float256Vector::vec@4 (line 117)
                                                                                ; - jdk.incubator.vector.FloatVector::stOp@1 (line 404)
                                                                                ; - jdk.incubator.vector.FloatVector::lambda$intoArray$88@9 (line 3078)
                                                                                ; - jdk.incubator.vector.FloatVector$$Lambda/0x00007f3c2c0d2918::store@10
                                                                                ; - jdk.internal.vm.vector.VectorSupport::store@32 (line 501)
                                                                                ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
....................................................................................................
  10.79%  <total for region 5>

....[Hottest Regions]...............................................................................
  31.93%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized, version 4, compile id 1219 
  18.16%      jvmci, level 4  jdk.internal.vm.vector.VectorSupport::blend, version 2, compile id 1194 
  15.13%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized, version 4, compile id 1219 
  14.88%      jvmci, level 4  jdk.incubator.vector.FloatVector::lambda$compareTemplate$61, version 2, compile id 1203 
  10.79%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized, version 4, compile id 1219 
   3.11%      jvmci, level 4  jdk.incubator.vector.FloatVector::lambda$compareTemplate$61, version 2, compile id 1203 
   1.29%      jvmci, level 4  jdk.internal.vm.vector.VectorSupport::blend, version 2, compile id 1194 
   1.05%      jvmci, level 4  jdk.incubator.vector.FloatVector::lambda$compareTemplate$61, version 2, compile id 1203 
   0.49%              kernel  [unknown] 
   0.39%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized, version 4, compile id 1219 
   0.38%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized, version 4, compile id 1219 
   0.10%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%         interpreter  faload  48 faload  
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  FreeListAllocator::reset 
   0.03%           libjvm.so  G1CardSet::reset_table_scanner 
   1.95%  <...other 554 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  58.64%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized, version 4, compile id 1219 
  19.45%      jvmci, level 4  jdk.internal.vm.vector.VectorSupport::blend, version 2, compile id 1194 
  19.03%      jvmci, level 4  jdk.incubator.vector.FloatVector::lambda$compareTemplate$61, version 2, compile id 1203 
   1.64%              kernel  [unknown] 
   0.15%                      <unknown> 
   0.04%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.03%         interpreter  faload  48 faload  
   0.03%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.03%           libjvm.so  FreeListAllocator::reset 
   0.03%           libjvm.so  G1CardSet::reset_table_scanner 
   0.02%         interpreter  ldc  18 ldc  
   0.02%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.02%           libjvm.so  xmlStream::write_text 
   0.02%        libc-2.31.so  __memset_avx2_erms 
   0.02%         interpreter  fast_aaccess_0  222 fast_aaccess_0  
   0.02%         interpreter  return entry points  
   0.02%           libjvm.so  HeapRegionManager::par_iterate 
   0.02%         interpreter  iload_1  27 iload_1  
   0.02%        libc-2.31.so  _IO_default_xsputn 
   0.73%  <...other 192 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  97.12%      jvmci, level 4
   1.64%              kernel
   0.61%           libjvm.so
   0.19%         interpreter
   0.18%        libc-2.31.so
   0.15%                    
   0.06%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%              [vdso]
   0.01%          ld-2.31.so
   0.01%    perf-2129009.map
   0.01%         c1, level 3
   0.00%         c1, level 1
   0.00%         c1, level 2
....................................................................................................
  99.99%  <totals>



# Run complete. Total time: 00:07:41

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

Benchmark                               (size)  Mode  Cnt     Score     Error  Units
SepiaVectorApiBenchmark.baseline         32768  avgt    5   132.865 ±   0.705  us/op
SepiaVectorApiBenchmark.baseline:asm     32768  avgt            NaN              ---
SepiaVectorApiBenchmark.baseline         65536  avgt    5   262.984 ±   0.718  us/op
SepiaVectorApiBenchmark.baseline:asm     65536  avgt            NaN              ---
SepiaVectorApiBenchmark.vectorized       32768  avgt    5   841.705 ±   7.516  us/op
SepiaVectorApiBenchmark.vectorized:asm   32768  avgt            NaN              ---
SepiaVectorApiBenchmark.vectorized       65536  avgt    5  1796.632 ± 253.323  us/op
SepiaVectorApiBenchmark.vectorized:asm   65536  avgt            NaN              ---
