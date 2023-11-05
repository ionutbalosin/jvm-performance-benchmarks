# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.baseline
# Parameters: (size = 16384)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.349 ns/op
# Warmup Iteration   2: 6.559 ns/op
# Warmup Iteration   3: 6.609 ns/op
# Warmup Iteration   4: 6.574 ns/op
# Warmup Iteration   5: 6.574 ns/op
Iteration   1: 6.574 ns/op
Iteration   2: 6.574 ns/op
Iteration   3: 6.574 ns/op
Iteration   4: 6.574 ns/op
Iteration   5: 6.574 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.baseline":
  6.574 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (6.574, 6.574, 6.574), stdev = 0.001
  CI (99.9%): [6.573, 6.575] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.baseline:·asm":
PrintAssembly processed: 189512 total address lines.
Perf output processed (skipped 58.460 seconds):
 Column 1: cycles (50613 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 751 

              0x00007fa102b1c0d8:   call   0x00007fa11c68b4f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fa102b1c0dd:   nop
              0x00007fa102b1c0de:   mov    0x10(%rsp),%rdx
              0x00007fa102b1c0e3:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@10 (line 184)
              0x00007fa102b1c0e7:   movq   $0x0,0x20(%rsp)
          ╭   0x00007fa102b1c0f0:   jmp    0x00007fa102b1c10f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@13 (line 186)
          │   0x00007fa102b1c0f5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 188)
   5.75%  │↗  0x00007fa102b1c100:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 188)
          ││  0x00007fa102b1c107:   test   %eax,(%r11)                  ;   {poll}
   5.67%  ││  0x00007fa102b1c10a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@13 (line 186)
          ↘│  0x00007fa102b1c10f:   mov    0x8(%rsp),%r10
           │  0x00007fa102b1c114:   mov    %r10,%rsi
           │  0x00007fa102b1c117:   call   0x00007fa0fb01ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual baseline {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@17 (line 186)
           │                                                            ;   {optimized virtual_call}
           │  0x00007fa102b1c11c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@20 (line 186)
           │  0x00007fa102b1c11d:   mov    0x20(%rsp),%r10
  11.49%   │  0x00007fa102b1c122:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@26 (line 187)
   5.67%   │  0x00007fa102b1c125:   mov    0x18(%rsp),%rsi
           │  0x00007fa102b1c12a:   cmpb   $0x0,0x94(%rsi)
  22.99%   ╰  0x00007fa102b1c131:   je     0x00007fa102b1c100           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 188)
              0x00007fa102b1c133:   mov    %r10,0x20(%rsp)
              0x00007fa102b1c138:   call   0x00007fa11c68b4f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fa102b1c13d:   nop
              0x00007fa102b1c13e:   mov    0x10(%rsp),%rdx
              0x00007fa102b1c143:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@40 (line 189)
              0x00007fa102b1c147:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@46 (line 190)
              0x00007fa102b1c14b:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  51.58%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline, version 2, compile id 727 

            #           [sp+0x10]  (sp of caller)
            0x00007fa102b18780:   mov    0x8(%rsi),%r10d
            0x00007fa102b18784:   movabs $0x800000000,%r12
            0x00007fa102b1878e:   add    %r12,%r10
            0x00007fa102b18791:   xor    %r12,%r12
            0x00007fa102b18794:   cmp    %r10,%rax
            0x00007fa102b18797:   jne    0x00007fa0fb01e780           ;   {runtime_call ic_miss_stub}
            0x00007fa102b1879d:   nop
            0x00007fa102b1879e:   xchg   %ax,%ax
          [Verified Entry Point]
   5.91%    0x00007fa102b187a0:   nopl   0x0(%rax,%rax,1)
            0x00007fa102b187a5:   mov    0xc(%rsi),%eax               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@1 (line 73)
            0x00007fa102b187a8:   mov    %eax,%r10d
   5.86%    0x00007fa102b187ab:   inc    %r10d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@9 (line 73)
            0x00007fa102b187ae:   imul   %eax,%r10d                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@10 (line 73)
  23.16%    0x00007fa102b187b2:   mov    %r10d,%eax
            0x00007fa102b187b5:   shr    $0x1f,%eax
            0x00007fa102b187b8:   add    %r10d,%eax
            0x00007fa102b187bb:   sar    %eax                         ;*idiv {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@12 (line 73)
   5.79%    0x00007fa102b187bd:   mov    0x348(%r15),%rcx
            0x00007fa102b187c4:   test   %eax,(%rcx)                  ;   {poll_return}
   5.98%    0x00007fa102b187c6:   ret    
          [Exception Handler]
            0x00007fa102b187c7:   call   0x00007fa0fb169d00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007fa102b187cc:   nop
          [Deopt Handler Code]
            0x00007fa102b187cd:   call   0x00007fa0fb024020           ;   {runtime_call DeoptimizationBlob}
            0x00007fa102b187d2:   nop
          [Stub Code]
            0x00007fa102b187d3:   hlt    
            0x00007fa102b187d4:   hlt    
            0x00007fa102b187d5:   hlt    
....................................................................................................
  46.69%  <total for region 2>

....[Hottest Regions]...............................................................................
  51.58%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 751 
  46.69%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline, version 2, compile id 727 
   0.51%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.72%  <...other 269 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  51.58%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 751 
  46.69%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline, version 2, compile id 727 
   1.43%               kernel  [unknown] 
   0.03%         libc-2.31.so  [unknown] 
   0.03%                       <unknown> 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%            libjvm.so  WatcherThread::run 
   0.00%            libjvm.so  WatcherThread::sleep 
   0.00%         libc-2.31.so  re_search_stub 
   0.00%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%            libjvm.so  printf_to_env 
   0.00%            libjvm.so  fileStream::write 
   0.00%         libc-2.31.so  tcache_init.part.0 
   0.00%            libjvm.so  defaultStream::hold 
   0.13%  <...other 65 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.27%       jvmci, level 4
   1.43%               kernel
   0.11%            libjvm.so
   0.09%         libc-2.31.so
   0.03%                     
   0.02%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%   libpthread-2.31.so
   0.01%          interpreter
   0.01%               [vdso]
   0.00%         runtime stub
   0.00%       perf-44621.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop
# Parameters: (size = 16384)

# Run progress: 50.00% complete, ETA 00:01:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1039.791 ns/op
# Warmup Iteration   2: 1042.211 ns/op
# Warmup Iteration   3: 1040.416 ns/op
# Warmup Iteration   4: 1040.365 ns/op
# Warmup Iteration   5: 1040.354 ns/op
Iteration   1: 1040.438 ns/op
Iteration   2: 1040.489 ns/op
Iteration   3: 1040.448 ns/op
Iteration   4: 1040.376 ns/op
Iteration   5: 1040.884 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop":
  1040.527 ±(99.9%) 0.783 ns/op [Average]
  (min, avg, max) = (1040.376, 1040.527, 1040.884), stdev = 0.203
  CI (99.9%): [1039.744, 1041.310] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop:·asm":
PrintAssembly processed: 190936 total address lines.
Perf output processed (skipped 58.658 seconds):
 Column 1: cycles (50723 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 3, compile id 721 

              0x00007f3ed6b1c960:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
              0x00007f3ed6b1c964:   movabs $0x800000000,%r12
              0x00007f3ed6b1c96e:   add    %r12,%r10
              0x00007f3ed6b1c971:   xor    %r12,%r12
              0x00007f3ed6b1c974:   cmp    %r10,%rax
              0x00007f3ed6b1c977:   jne    0x00007f3ecf01e780           ;   {runtime_call ic_miss_stub}
              0x00007f3ed6b1c97d:   nop
              0x00007f3ed6b1c97e:   xchg   %ax,%ax
            [Verified Entry Point]
              0x00007f3ed6b1c980:   mov    %eax,-0x14000(%rsp)
   0.04%      0x00007f3ed6b1c987:   sub    $0x38,%rsp
              0x00007f3ed6b1c98b:   mov    0xc(%rsi),%eax
              0x00007f3ed6b1c98e:   test   %eax,%eax
   0.04%      0x00007f3ed6b1c990:   mov    $0x0,%r10d
   0.01%      0x00007f3ed6b1c996:   cmovl  %r10d,%eax
   0.04%      0x00007f3ed6b1c99a:   mov    %eax,%eax
              0x00007f3ed6b1c99c:   nopl   0x0(%rax)
   0.03%      0x00007f3ed6b1c9a0:   test   %rax,%rax
              0x00007f3ed6b1c9a3:   je     0x00007f3ed6b1ca9e
   0.01%      0x00007f3ed6b1c9a9:   vpxor  %xmm0,%xmm0,%xmm0
   0.01%      0x00007f3ed6b1c9ad:   cmp    $0x8,%rax
              0x00007f3ed6b1c9b1:   jb     0x00007f3ed6b1ca88
              0x00007f3ed6b1c9b7:   lea    -0x8(%rax),%r10
   0.02%      0x00007f3ed6b1c9bb:   vmovdqa -0xa3(%rip),%ymm1        # 0x00007f3ed6b1c920
                                                                        ;   {section_word}
   0.01%      0x00007f3ed6b1c9c3:   vmovdqa -0x8b(%rip),%ymm2        # 0x00007f3ed6b1c940
                                                                        ;   {section_word}
   0.01%      0x00007f3ed6b1c9cb:   mov    $0x0,%r11
              0x00007f3ed6b1c9d2:   vmovdqu %ymm2,(%rsp)
   0.01%      0x00007f3ed6b1c9d7:   vmovdqu %ymm0,%ymm2
   0.00%      0x00007f3ed6b1c9db:   vmovdqu (%rsp),%ymm0
   0.11%  ╭   0x00007f3ed6b1c9e0:   jmp    0x00007f3ed6b1ca04
          │   0x00007f3ed6b1c9e5:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f3ed6b1c9f0:   data16 data16 xchg %ax,%ax
          │   0x00007f3ed6b1c9f4:   nopl   0x0(%rax,%rax,1)
          │   0x00007f3ed6b1c9fc:   data16 data16 xchg %ax,%ax
  19.30%  │↗  0x00007f3ed6b1ca00:   vmovdqu %ymm3,%ymm0
  19.09%  ↘│  0x00007f3ed6b1ca04:   vpaddd %ymm1,%ymm0,%ymm3
  20.02%   │  0x00007f3ed6b1ca08:   vpaddd %ymm0,%ymm2,%ymm2
  18.76%   │  0x00007f3ed6b1ca0c:   lea    0x8(%r11),%r11
  18.95%   │  0x00007f3ed6b1ca10:   cmp    %r10,%r11
           ╰  0x00007f3ed6b1ca13:   jle    0x00007f3ed6b1ca00
   0.34%      0x00007f3ed6b1ca15:   vmovd  %xmm3,%r10d
   0.42%      0x00007f3ed6b1ca1a:   vextracti128 $0x1,%ymm2,%xmm0
              0x00007f3ed6b1ca20:   vpaddd %xmm0,%xmm2,%xmm0
   0.11%      0x00007f3ed6b1ca24:   vpshufd $0xe,%xmm0,%xmm1
              0x00007f3ed6b1ca29:   vpaddd %xmm1,%xmm0,%xmm0
   0.05%      0x00007f3ed6b1ca2d:   vmovd  %xmm0,%r8d
              0x00007f3ed6b1ca32:   vpextrd $0x1,%xmm0,%r9d
              0x00007f3ed6b1ca38:   add    %r9d,%r8d
   0.04%      0x00007f3ed6b1ca3b:   dec    %rax
              0x00007f3ed6b1ca3e:   xchg   %ax,%ax
              0x00007f3ed6b1ca40:   jmp    0x00007f3ed6b1ca6f
              0x00007f3ed6b1ca45:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f3ed6b1ca50:   data16 data16 xchg %ax,%ax
              0x00007f3ed6b1ca54:   nopl   0x0(%rax,%rax,1)
              0x00007f3ed6b1ca5c:   data16 data16 xchg %ax,%ax
              0x00007f3ed6b1ca60:   mov    %r10d,%r9d
              0x00007f3ed6b1ca63:   inc    %r9d
              0x00007f3ed6b1ca66:   add    %r10d,%r8d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@14 (line 65)
....................................................................................................
  97.41%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.41%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 3, compile id 721 
   0.59%               kernel  [unknown] 
   0.43%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_scev_loop_jmhTest::scev_loop_avgt_jmhStub, version 5, compile id 739 
   0.23%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 3, compile id 721 
   0.09%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.83%  <...other 277 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.64%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 3, compile id 721 
   1.59%               kernel  [unknown] 
   0.43%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_scev_loop_jmhTest::scev_loop_avgt_jmhStub, version 5, compile id 739 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  [unknown] 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  os::elapsed_counter 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%            libjvm.so  StatSamplerTask::task 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  Monitor::wait_without_safepoint_check 
   0.16%  <...other 68 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.08%       jvmci, level 4
   1.59%               kernel
   0.15%            libjvm.so
   0.07%         libc-2.31.so
   0.03%                     
   0.02%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
   0.01%               [vdso]
   0.01%           ld-2.31.so
   0.00%       perf-44685.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:03:44

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

Benchmark                                                   (size)  Mode  Cnt     Score   Error  Units
ScalarEvolutionAndLoopOptimizationBenchmark.baseline         16384  avgt    5     6.574 ± 0.001  ns/op
ScalarEvolutionAndLoopOptimizationBenchmark.baseline:·asm    16384  avgt            NaN            ---
ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop        16384  avgt    5  1040.527 ± 0.783  ns/op
ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop:·asm   16384  avgt            NaN            ---
