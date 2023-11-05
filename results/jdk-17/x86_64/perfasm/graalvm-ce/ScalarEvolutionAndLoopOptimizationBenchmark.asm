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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.baseline
# Parameters: (size = 16384)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.114 ns/op
# Warmup Iteration   2: 6.660 ns/op
# Warmup Iteration   3: 6.582 ns/op
# Warmup Iteration   4: 6.961 ns/op
# Warmup Iteration   5: 6.961 ns/op
Iteration   1: 6.961 ns/op
Iteration   2: 6.961 ns/op
Iteration   3: 6.961 ns/op
Iteration   4: 6.964 ns/op
Iteration   5: 6.960 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.baseline":
  6.961 ±(99.9%) 0.006 ns/op [Average]
  (min, avg, max) = (6.960, 6.961, 6.964), stdev = 0.002
  CI (99.9%): [6.955, 6.968] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.baseline:·asm":
PrintAssembly processed: 193051 total address lines.
Perf output processed (skipped 58.586 seconds):
 Column 1: cycles (50806 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 5, compile id 750 

              0x00007fe642fff3f5:   mov    0x18(%rsp),%rsi
              0x00007fe642fff3fa:   nopw   0x0(%rax,%rax,1)
              0x00007fe642fff400:   cmpb   $0x0,0x94(%rsi)
              0x00007fe642fff407:   jne    0x00007fe642fff48e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 188)
              0x00007fe642fff40d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007fe642fff416:   jmp    0x00007fe642fff42f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@13 (line 186)
          │   0x00007fe642fff41b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 188)
   5.57%  │↗  0x00007fe642fff420:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 188)
          ││  0x00007fe642fff427:   test   %eax,(%r11)                  ;   {poll}
   4.25%  ││  0x00007fe642fff42a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@13 (line 186)
          ↘│  0x00007fe642fff42f:   mov    0x8(%rsp),%r10
   1.12%   │  0x00007fe642fff434:   mov    %r10,%rsi
           │  0x00007fe642fff437:   call   0x00007fe63b4ffa80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual baseline {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@17 (line 186)
           │                                                            ;   {optimized virtual_call}
           │  0x00007fe642fff43c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@20 (line 186)
   1.10%   │  0x00007fe642fff43d:   mov    0x20(%rsp),%r10
  14.17%   │  0x00007fe642fff442:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@26 (line 187)
   5.42%   │  0x00007fe642fff445:   mov    0x18(%rsp),%rsi
   0.00%   │  0x00007fe642fff44a:   cmpb   $0x0,0x94(%rsi)
  28.17%   ╰  0x00007fe642fff451:   je     0x00007fe642fff420           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 188)
              0x00007fe642fff453:   mov    %r10,0x20(%rsp)
              0x00007fe642fff458:   call   0x00007fe658fb16f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fe642fff45d:   nop
              0x00007fe642fff45e:   mov    0x10(%rsp),%rdx
              0x00007fe642fff463:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@40 (line 189)
              0x00007fe642fff467:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@46 (line 190)
              0x00007fe642fff46f:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  59.80%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline, version 2, compile id 734 

            #           [sp+0x10]  (sp of caller)
            0x00007fe642ffb380:   mov    0x8(%rsi),%r10d
            0x00007fe642ffb384:   movabs $0x800000000,%r12
            0x00007fe642ffb38e:   add    %r12,%r10
            0x00007fe642ffb391:   xor    %r12,%r12
            0x00007fe642ffb394:   cmp    %r10,%rax
            0x00007fe642ffb397:   jne    0x00007fe63b4ff780           ;   {runtime_call ic_miss_stub}
            0x00007fe642ffb39d:   nop
            0x00007fe642ffb39e:   xchg   %ax,%ax
          [Verified Entry Point]
   4.40%    0x00007fe642ffb3a0:   nopl   0x0(%rax,%rax,1)
   1.08%    0x00007fe642ffb3a5:   mov    0xc(%rsi),%eax               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@1 (line 73)
            0x00007fe642ffb3a8:   mov    %eax,%r10d
   4.39%    0x00007fe642ffb3ab:   inc    %r10d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@9 (line 73)
            0x00007fe642ffb3ae:   imul   %eax,%r10d                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@10 (line 73)
  18.19%    0x00007fe642ffb3b2:   mov    %r10d,%eax
            0x00007fe642ffb3b5:   shr    $0x1f,%eax
   0.00%    0x00007fe642ffb3b8:   add    %r10d,%eax
            0x00007fe642ffb3bb:   sar    %eax                         ;*idiv {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@12 (line 73)
   5.52%    0x00007fe642ffb3bd:   mov    0x348(%r15),%rcx
            0x00007fe642ffb3c4:   test   %eax,(%rcx)                  ;   {poll_return}
   4.57%    0x00007fe642ffb3c6:   ret    
          [Exception Handler]
            0x00007fe642ffb3c7:   call   0x00007fe63b64ab00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007fe642ffb3cc:   nop
          [Deopt Handler Code]
            0x00007fe642ffb3cd:   call   0x00007fe63b505020           ;   {runtime_call DeoptimizationBlob}
            0x00007fe642ffb3d2:   nop
          [Stub Code]
            0x00007fe642ffb3d3:   hlt    
            0x00007fe642ffb3d4:   hlt    
            0x00007fe642ffb3d5:   hlt    
....................................................................................................
  38.14%  <total for region 2>

....[Hottest Regions]...............................................................................
  59.80%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 5, compile id 750 
  38.14%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline, version 2, compile id 734 
   0.71%               kernel  [unknown] 
   0.12%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%               kernel  [unknown] 
   0.80%  <...other 289 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  59.80%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 5, compile id 750 
  38.14%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline, version 2, compile id 734 
   1.73%               kernel  [unknown] 
   0.06%                       <unknown> 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%            libjvm.so  os::elapsedTime 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%   libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%            libjvm.so  os::current_thread_id 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.00%       hsdis-amd64.so  print_insn_i386 
   0.15%  <...other 70 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.94%       jvmci, level 4
   1.73%               kernel
   0.14%            libjvm.so
   0.06%                     
   0.06%         libc-2.31.so
   0.02%       hsdis-amd64.so
   0.02%   libpthread-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.00%               [vdso]
   0.00%        libdl-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop
# Parameters: (size = 16384)

# Run progress: 50.00% complete, ETA 00:01:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6768.908 ns/op
# Warmup Iteration   2: 6732.727 ns/op
# Warmup Iteration   3: 6732.244 ns/op
# Warmup Iteration   4: 6733.145 ns/op
# Warmup Iteration   5: 6732.593 ns/op
Iteration   1: 6732.481 ns/op
Iteration   2: 6732.268 ns/op
Iteration   3: 6731.707 ns/op
Iteration   4: 6731.835 ns/op
Iteration   5: 6731.782 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop":
  6732.015 ±(99.9%) 1.309 ns/op [Average]
  (min, avg, max) = (6731.707, 6732.015, 6732.481), stdev = 0.340
  CI (99.9%): [6730.706, 6733.323] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop:·asm":
PrintAssembly processed: 186670 total address lines.
Perf output processed (skipped 58.437 seconds):
 Column 1: cycles (50622 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 3, compile id 732 

                0x00007fcd52ffcb00:   mov    0x8(%rsi),%r10d
                0x00007fcd52ffcb04:   movabs $0x800000000,%r12
                0x00007fcd52ffcb0e:   add    %r12,%r10
                0x00007fcd52ffcb11:   xor    %r12,%r12
                0x00007fcd52ffcb14:   cmp    %r10,%rax
                0x00007fcd52ffcb17:   jne    0x00007fcd4b4ff780           ;   {runtime_call ic_miss_stub}
                0x00007fcd52ffcb1d:   nop
                0x00007fcd52ffcb1e:   xchg   %ax,%ax
              [Verified Entry Point]
                0x00007fcd52ffcb20:   mov    %eax,-0x14000(%rsp)
   0.00%        0x00007fcd52ffcb27:   sub    $0x8,%rsp
                0x00007fcd52ffcb2b:   mov    0xc(%rsi),%eax
                0x00007fcd52ffcb2e:   cmp    $0x1,%eax
                0x00007fcd52ffcb31:   jl     0x00007fcd52ffcc26           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@9 (line 64)
   0.00%        0x00007fcd52ffcb37:   cmp    $0x3,%eax
                0x00007fcd52ffcb3a:   mov    $0x2,%r10d
                0x00007fcd52ffcb40:   cmovl  %eax,%r10d
                0x00007fcd52ffcb44:   mov    $0x0,%r8d
   0.00%        0x00007fcd52ffcb4a:   mov    $0x1,%r11d
          ╭     0x00007fcd52ffcb50:   jmp    0x00007fcd52ffcb66           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@4 (line 64)
          │     0x00007fcd52ffcb55:   data16 data16 nopw 0x0(%rax,%rax,1) ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@9 (line 64)
   0.01%  │↗    0x00007fcd52ffcb60:   add    %r11d,%r8d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@14 (line 65)
          ││    0x00007fcd52ffcb63:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@16 (line 64)
          ↘│    0x00007fcd52ffcb66:   cmp    %r11d,%r10d
           ╰    0x00007fcd52ffcb69:   jg     0x00007fcd52ffcb60
                0x00007fcd52ffcb6b:   lea    -0x10(%rax),%r10d
   0.00%        0x00007fcd52ffcb6f:   mov    %r8d,0x4(%rsp)
                0x00007fcd52ffcb74:   mov    %r11d,%r8d
                0x00007fcd52ffcb77:   mov    0x4(%rsp),%r11d
   0.00%        0x00007fcd52ffcb7c:   nopl   0x0(%rax)
   0.01%    ╭   0x00007fcd52ffcb80:   jmp    0x00007fcd52ffcbdb
            │   0x00007fcd52ffcb85:   data16 data16 nopw 0x0(%rax,%rax,1)
            │   0x00007fcd52ffcb90:   data16 data16 xchg %ax,%ax
            │   0x00007fcd52ffcb94:   nopl   0x0(%rax,%rax,1)
            │   0x00007fcd52ffcb9c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@9 (line 64)
   0.01%    │↗  0x00007fcd52ffcba0:   lea    0x10(%r8),%r9d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@16 (line 64)
            ││  0x00007fcd52ffcba4:   add    %r8d,%r11d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@14 (line 65)
   8.53%    ││  0x00007fcd52ffcba7:   add    %r8d,%r11d
   4.46%    ││  0x00007fcd52ffcbaa:   add    %r8d,%r11d
   4.84%    ││  0x00007fcd52ffcbad:   add    %r8d,%r11d
   6.28%    ││  0x00007fcd52ffcbb0:   add    %r8d,%r11d
   7.87%    ││  0x00007fcd52ffcbb3:   add    %r8d,%r11d
   4.51%    ││  0x00007fcd52ffcbb6:   add    %r8d,%r11d
   5.85%    ││  0x00007fcd52ffcbb9:   add    %r8d,%r11d
   5.97%    ││  0x00007fcd52ffcbbc:   add    %r8d,%r11d
   5.53%    ││  0x00007fcd52ffcbbf:   add    %r8d,%r11d
   4.66%    ││  0x00007fcd52ffcbc2:   add    %r8d,%r11d
   6.58%    ││  0x00007fcd52ffcbc5:   add    %r8d,%r11d
   8.39%    ││  0x00007fcd52ffcbc8:   add    %r8d,%r11d
   5.38%    ││  0x00007fcd52ffcbcb:   add    %r8d,%r11d
   3.51%    ││  0x00007fcd52ffcbce:   add    %r8d,%r11d
   4.07%    ││  0x00007fcd52ffcbd1:   add    %r8d,%r11d
   5.57%    ││  0x00007fcd52ffcbd4:   lea    0x78(%r11),%r11d
   5.76%    ││  0x00007fcd52ffcbd8:   mov    %r9d,%r8d                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@4 (line 64)
            ↘│  0x00007fcd52ffcbdb:   cmp    %r8d,%r10d
             ╰  0x00007fcd52ffcbde:   jg     0x00007fcd52ffcba0
                0x00007fcd52ffcbe0:   jmp    0x00007fcd52ffcc10
                0x00007fcd52ffcbe5:   data16 data16 nopw 0x0(%rax,%rax,1)
                0x00007fcd52ffcbf0:   data16 data16 xchg %ax,%ax
                0x00007fcd52ffcbf4:   nopl   0x0(%rax,%rax,1)
                0x00007fcd52ffcbfc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@9 (line 64)
   0.04%        0x00007fcd52ffcc00:   mov    %r8d,%r10d
....................................................................................................
  97.79%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.79%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 3, compile id 732 
   0.48%               kernel  [unknown] 
   0.14%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 3, compile id 732 
   0.09%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   1.05%  <...other 342 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.93%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 3, compile id 732 
   1.80%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.01%            libjvm.so  fileStream::write 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_scev_loop_jmhTest::scev_loop_avgt_jmhStub, version 5, compile id 748 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  defaultStream::hold 
   0.00%         libc-2.31.so  re_search_stub 
   0.00%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%       hsdis-amd64.so  print_insn 
   0.00%               [vdso]  __vdso_clock_gettime 
   0.00%            libjvm.so  stringStream::write 
   0.00%            libjvm.so  ImplicitExceptionTable::continuation_offset 
   0.12%  <...other 63 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.93%       jvmci, level 4
   1.80%               kernel
   0.11%            libjvm.so
   0.05%         libc-2.31.so
   0.03%                     
   0.02%   libpthread-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.00%               [vdso]
   0.00%          interpreter
   0.00%          c1, level 3
   0.00%       perf-34746.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:03:42

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
ScalarEvolutionAndLoopOptimizationBenchmark.baseline         16384  avgt    5     6.961 ± 0.006  ns/op
ScalarEvolutionAndLoopOptimizationBenchmark.baseline:·asm    16384  avgt            NaN            ---
ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop        16384  avgt    5  6732.015 ± 1.309  ns/op
ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop:·asm   16384  avgt            NaN            ---
