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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.baseline
# Parameters: (size = 16384)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.777 ns/op
# Warmup Iteration   2: 6.997 ns/op
# Warmup Iteration   3: 6.991 ns/op
# Warmup Iteration   4: 6.963 ns/op
# Warmup Iteration   5: 6.961 ns/op
Iteration   1: 6.961 ns/op
Iteration   2: 6.962 ns/op
Iteration   3: 6.961 ns/op
Iteration   4: 6.963 ns/op
Iteration   5: 6.961 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.baseline":
  6.962 ±(99.9%) 0.003 ns/op [Average]
  (min, avg, max) = (6.961, 6.962, 6.963), stdev = 0.001
  CI (99.9%): [6.959, 6.964] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.baseline:asm":
PrintAssembly processed: 228234 total address lines.
Perf output processed (skipped 60.809 seconds):
 Column 1: cycles (50670 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 986 

              0x00007f22f2d814f3:   mov    0x10(%rsp),%rdx
              0x00007f22f2d814f8:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@10 (line 188)
              0x00007f22f2d814fc:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f22f2d81505:   jmp    0x00007f22f2d8152f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@13 (line 190)
          │   0x00007f22f2d8150a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f22f2d81515:   data16 data16 xchg %ax,%ax
          │   0x00007f22f2d81519:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 192)
   5.52%  │↗  0x00007f22f2d81520:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 192)
          ││  0x00007f22f2d81527:   test   %eax,(%r11)                  ;   {poll}
   0.00%  ││  0x00007f22f2d8152a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@13 (line 190)
          ↘│  0x00007f22f2d8152f:   mov    0x8(%rsp),%r10
   5.27%   │  0x00007f22f2d81534:   mov    %r10,%rsi
           │  0x00007f22f2d81537:   call   0x00007f22f2764380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual baseline {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
  13.65%   │  0x00007f22f2d8153c:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@20 (line 190)
           │                                                            ;   {other}
   0.00%   │  0x00007f22f2d81544:   mov    0x20(%rsp),%r10
   0.01%   │  0x00007f22f2d81549:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@26 (line 191)
   5.39%   │  0x00007f22f2d8154c:   mov    0x18(%rsp),%rsi
           │  0x00007f22f2d81551:   cmpb   $0x0,0x94(%rsi)
  21.56%   ╰  0x00007f22f2d81558:   je     0x00007f22f2d81520           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 192)
              0x00007f22f2d8155a:   mov    %r10,0x20(%rsp)
              0x00007f22f2d8155f:   nop
              0x00007f22f2d81560:   call   0x00007f2309d0bdf0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f22f2d81565:   nop
              0x00007f22f2d81566:   mov    0x10(%rsp),%rdx
              0x00007f22f2d8156b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@40 (line 193)
              0x00007f22f2d8156f:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@46 (line 194)
....................................................................................................
  51.41%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline, version 2, compile id 957 

                #           [sp+0x20]  (sp of caller)
                0x00007f22f2d7d780:   mov    0x8(%rsi),%r10d
                0x00007f22f2d7d784:   movabs $0x7f2277000000,%r12
                0x00007f22f2d7d78e:   add    %r12,%r10
                0x00007f22f2d7d791:   xor    %r12,%r12
                0x00007f22f2d7d794:   cmp    %r10,%rax
                0x00007f22f2d7d797:   jne    0x00007f22f2764080           ;   {runtime_call ic_miss_stub}
                0x00007f22f2d7d79d:   data16 xchg %ax,%ax
              [Verified Entry Point]
                0x00007f22f2d7d7a0:   mov    %eax,-0x14000(%rsp)
   5.35%        0x00007f22f2d7d7a7:   sub    $0x18,%rsp
                0x00007f22f2d7d7ab:   nop
                0x00007f22f2d7d7ac:   cmpl   $0x1,0x20(%r15)
   5.39%  ╭     0x00007f22f2d7d7b4:   jne    0x00007f22f2d7d7ee
   3.10%  │ ↗   0x00007f22f2d7d7ba:   mov    0xc(%rsi),%eax               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@1 (line 71)
          │ │   0x00007f22f2d7d7bd:   mov    %eax,%r10d
          │ │   0x00007f22f2d7d7c0:   inc    %r10d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@9 (line 71)
   2.28%  │ │   0x00007f22f2d7d7c3:   imul   %eax,%r10d                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@10 (line 71)
  24.41%  │ │   0x00007f22f2d7d7c7:   mov    %r10d,%eax
   0.00%  │ │   0x00007f22f2d7d7ca:   shr    $0x1f,%eax
   0.00%  │ │   0x00007f22f2d7d7cd:   add    %r10d,%eax
   0.00%  │ │   0x00007f22f2d7d7d0:   sar    %eax                         ;*idiv {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@12 (line 71)
   5.53%  │ │   0x00007f22f2d7d7d2:   add    $0x18,%rsp
          │ │   0x00007f22f2d7d7d6:   data16 nopw 0x0(%rax,%rax,1)
          │ │↗  0x00007f22f2d7d7e0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f22f2d7d7e7:   ja     0x00007f22f2d7d7fb
   0.00%  ││││  0x00007f22f2d7d7ed:   ret    
          ↘│││  0x00007f22f2d7d7ee:   mov    %rbp,0x10(%rsp)
           │││  0x00007f22f2d7d7f3:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007f22f2d7d7f8:   jmp    0x00007f22f2d7d7ba
           │ │  0x00007f22f2d7d7fa:   hlt    
           ↘ ╰  0x00007f22f2d7d7fb:   lea    -0x22(%rip),%rcx        # 0x00007f22f2d7d7e0
                0x00007f22f2d7d802:   mov    %rcx,0x468(%r15)
                0x00007f22f2d7d809:   jmp    0x00007f22f276b000           ;   {runtime_call SafepointBlob}
                0x00007f22f2d7d80e:   hlt    
              [Exception Handler]
                0x00007f22f2d7d80f:   call   0x00007f22f28e9300           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
....................................................................................................
  46.07%  <total for region 2>

....[Hottest Regions]...............................................................................
  51.41%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 986 
  46.07%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline, version 2, compile id 957 
   0.28%              kernel  [unknown] 
   0.15%              kernel  [unknown] 
   0.14%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.34%  <...other 416 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  51.41%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 986 
  46.07%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline, version 2, compile id 957 
   2.09%              kernel  [unknown] 
   0.07%                      <unknown> 
   0.02%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%        libc-2.31.so  _IO_default_xsputn 
   0.02%           libjvm.so  defaultStream::write 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  ObjectSynchronizer::is_async_deflation_needed 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%        libc-2.31.so  syscall 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.17%  <...other 66 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.48%      jvmci, level 4
   2.09%              kernel
   0.18%           libjvm.so
   0.11%        libc-2.31.so
   0.07%                    
   0.03%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%              [vdso]
   0.00%         interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop
# Parameters: (size = 16384)

# Run progress: 50.00% complete, ETA 00:01:55
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1054.775 ns/op
# Warmup Iteration   2: 1032.033 ns/op
# Warmup Iteration   3: 1032.851 ns/op
# Warmup Iteration   4: 1030.325 ns/op
# Warmup Iteration   5: 1029.868 ns/op
Iteration   1: 1029.833 ns/op
Iteration   2: 1029.855 ns/op
Iteration   3: 1029.752 ns/op
Iteration   4: 1029.509 ns/op
Iteration   5: 1030.166 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop":
  1029.823 ±(99.9%) 0.908 ns/op [Average]
  (min, avg, max) = (1029.509, 1029.823, 1030.166), stdev = 0.236
  CI (99.9%): [1028.915, 1030.732] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop:asm":
PrintAssembly processed: 227565 total address lines.
Perf output processed (skipped 60.703 seconds):
 Column 1: cycles (50803 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 4, compile id 956 

              # {method} {0x00007fef5f47cd18} &apos;scev_loop&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarEvolutionAndLoopOptimizationBenchmark&apos;
              #           [sp+0x40]  (sp of caller)
              0x00007fefded7ccc0:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
              0x00007fefded7ccc4:   movabs $0x7fef63000000,%r12
              0x00007fefded7ccce:   add    %r12,%r10
              0x00007fefded7ccd1:   xor    %r12,%r12
              0x00007fefded7ccd4:   cmp    %r10,%rax
              0x00007fefded7ccd7:   jne    0x00007fefde764080           ;   {runtime_call ic_miss_stub}
              0x00007fefded7ccdd:   data16 xchg %ax,%ax
            [Verified Entry Point]
   0.01%      0x00007fefded7cce0:   mov    %eax,-0x14000(%rsp)
   0.03%      0x00007fefded7cce7:   sub    $0x38,%rsp
   0.01%      0x00007fefded7cceb:   nop
              0x00007fefded7ccec:   cmpl   $0x1,0x20(%r15)
   0.03%      0x00007fefded7ccf4:   jne    0x00007fefded7ce0f
   0.03%      0x00007fefded7ccfa:   mov    0xc(%rsi),%eax               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@6 (line 62)
   0.00%      0x00007fefded7ccfd:   test   %eax,%eax
              0x00007fefded7ccff:   mov    $0x0,%r10d
   0.01%      0x00007fefded7cd05:   cmovl  %r10d,%eax
   0.02%      0x00007fefded7cd09:   mov    %eax,%eax
   0.04%      0x00007fefded7cd0b:   test   %rax,%rax
              0x00007fefded7cd0e:   je     0x00007fefded7ce07
   0.08%      0x00007fefded7cd14:   vpxor  %xmm0,%xmm0,%xmm0
              0x00007fefded7cd18:   nopl   0x0(%rax,%rax,1)
              0x00007fefded7cd20:   cmp    $0x8,%rax
              0x00007fefded7cd24:   jb     0x00007fefded7cdf1
   0.00%      0x00007fefded7cd2a:   lea    -0x8(%rax),%r10
   0.03%      0x00007fefded7cd2e:   vmovdqa -0xb6(%rip),%ymm1        # 0x00007fefded7cc80
                                                                        ;   {section_word}
              0x00007fefded7cd36:   vmovdqa -0x9e(%rip),%ymm2        # 0x00007fefded7cca0
                                                                        ;   {section_word}
              0x00007fefded7cd3e:   mov    $0x0,%r11
   0.00%      0x00007fefded7cd45:   vmovdqu %ymm2,(%rsp)
   0.08%      0x00007fefded7cd4a:   vmovdqu %ymm0,%ymm2
              0x00007fefded7cd4e:   vmovdqu (%rsp),%ymm0
          ╭   0x00007fefded7cd53:   jmp    0x00007fefded7cd64
          │   0x00007fefded7cd58:   nopl   0x0(%rax,%rax,1)
  19.50%  │↗  0x00007fefded7cd60:   vmovdqu %ymm3,%ymm0
  19.26%  ↘│  0x00007fefded7cd64:   vpaddd %ymm1,%ymm0,%ymm3
  19.66%   │  0x00007fefded7cd68:   vpaddd %ymm0,%ymm2,%ymm2
  18.76%   │  0x00007fefded7cd6c:   lea    0x8(%r11),%r11
  18.72%   │  0x00007fefded7cd70:   cmp    %r10,%r11
           ╰  0x00007fefded7cd73:   jle    0x00007fefded7cd60
   0.11%      0x00007fefded7cd75:   vmovd  %xmm3,%r10d                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@4 (line 62)
   0.44%      0x00007fefded7cd7a:   vextracti128 $0x1,%ymm2,%xmm0
   0.01%      0x00007fefded7cd80:   vpaddd %xmm0,%xmm2,%xmm0
   0.13%      0x00007fefded7cd84:   vpshufd $0xe,%xmm0,%xmm1
              0x00007fefded7cd89:   vpaddd %xmm1,%xmm0,%xmm0
   0.04%      0x00007fefded7cd8d:   vmovd  %xmm0,%r8d
              0x00007fefded7cd92:   vpextrd $0x1,%xmm0,%r9d
              0x00007fefded7cd98:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@14 (line 63)
   0.04%      0x00007fefded7cd9b:   dec    %rax
              0x00007fefded7cd9e:   xchg   %ax,%ax
              0x00007fefded7cda0:   jmp    0x00007fefded7cdcf
              0x00007fefded7cda5:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007fefded7cdb0:   data16 data16 xchg %ax,%ax
              0x00007fefded7cdb4:   nopl   0x0(%rax,%rax,1)
              0x00007fefded7cdbc:   data16 data16 xchg %ax,%ax          ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@4 (line 62)
              0x00007fefded7cdc0:   mov    %r10d,%r9d
              0x00007fefded7cdc3:   inc    %r9d
....................................................................................................
  97.04%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 4, compile id 956 
   0.62%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_scev_loop_jmhTest::scev_loop_avgt_jmhStub, version 5, compile id 982 
   0.45%               kernel  [unknown] 
   0.20%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 4, compile id 956 
   0.14%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   1.02%  <...other 365 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.24%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 4, compile id 956 
   1.73%               kernel  [unknown] 
   0.62%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_scev_loop_jmhTest::scev_loop_avgt_jmhStub, version 5, compile id 982 
   0.05%                       <unknown> 
   0.02%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%            libjvm.so  fileStream::write 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%  libjvmcicompiler.so  com.oracle.svm.core.util.Utf8::utf8ToString 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%         libc-2.31.so  __vsnprintf_internal 
   0.01%            libjvm.so  WatcherThread::sleep 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.00%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.21%  <...other 91 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.85%       jvmci, level 4
   1.73%               kernel
   0.15%            libjvm.so
   0.11%         libc-2.31.so
   0.05%                     
   0.04%  libjvmcicompiler.so
   0.03%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.00%               [vdso]
   0.00%          interpreter
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:03:49

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

Benchmark                                                  (size)  Mode  Cnt     Score   Error  Units
ScalarEvolutionAndLoopOptimizationBenchmark.baseline        16384  avgt    5     6.962 ± 0.003  ns/op
ScalarEvolutionAndLoopOptimizationBenchmark.baseline:asm    16384  avgt            NaN            ---
ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop       16384  avgt    5  1029.823 ± 0.908  ns/op
ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop:asm   16384  avgt            NaN            ---
