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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.baseline
# Parameters: (size = 16384)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.990 ns/op
# Warmup Iteration   2: 6.680 ns/op
# Warmup Iteration   3: 6.951 ns/op
# Warmup Iteration   4: 6.961 ns/op
# Warmup Iteration   5: 6.961 ns/op
Iteration   1: 6.959 ns/op
Iteration   2: 6.959 ns/op
Iteration   3: 6.996 ns/op
Iteration   4: 6.966 ns/op
Iteration   5: 6.962 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.baseline":
  6.968 ±(99.9%) 0.060 ns/op [Average]
  (min, avg, max) = (6.959, 6.968, 6.996), stdev = 0.016
  CI (99.9%): [6.908, 7.028] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.baseline:·asm":
PrintAssembly processed: 191720 total address lines.
Perf output processed (skipped 59.016 seconds):
 Column 1: cycles (50861 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 5, compile id 749 

              0x00007f990affef75:   mov    0x18(%rsp),%rsi
              0x00007f990affef7a:   nopw   0x0(%rax,%rax,1)
              0x00007f990affef80:   cmpb   $0x0,0x94(%rsi)
              0x00007f990affef87:   jne    0x00007f990afff00e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 188)
              0x00007f990affef8d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f990affef96:   jmp    0x00007f990affefaf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@13 (line 186)
          │   0x00007f990affef9b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 188)
   5.44%  │↗  0x00007f990affefa0:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 188)
          ││  0x00007f990affefa7:   test   %eax,(%r11)                  ;   {poll}
   5.40%  ││  0x00007f990affefaa:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@13 (line 186)
          ↘│  0x00007f990affefaf:   mov    0x8(%rsp),%r10
           │  0x00007f990affefb4:   mov    %r10,%rsi
           │  0x00007f990affefb7:   call   0x00007f99034ffa80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual baseline {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@17 (line 186)
           │                                                            ;   {optimized virtual_call}
           │  0x00007f990affefbc:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@20 (line 186)
           │  0x00007f990affefbd:   mov    0x20(%rsp),%r10
  16.07%   │  0x00007f990affefc2:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@26 (line 187)
   5.35%   │  0x00007f990affefc5:   mov    0x18(%rsp),%rsi
   0.00%   │  0x00007f990affefca:   cmpb   $0x0,0x94(%rsi)
  21.29%   ╰  0x00007f990affefd1:   je     0x00007f990affefa0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 188)
              0x00007f990affefd3:   mov    %r10,0x20(%rsp)
              0x00007f990affefd8:   call   0x00007f9923d336f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f990affefdd:   nop
              0x00007f990affefde:   mov    0x10(%rsp),%rdx
              0x00007f990affefe3:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@40 (line 189)
              0x00007f990affefe7:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@46 (line 190)
              0x00007f990affefef:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  53.55%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline, version 2, compile id 735 

            #           [sp+0x10]  (sp of caller)
            0x00007f990affac00:   mov    0x8(%rsi),%r10d
            0x00007f990affac04:   movabs $0x800000000,%r12
            0x00007f990affac0e:   add    %r12,%r10
            0x00007f990affac11:   xor    %r12,%r12
            0x00007f990affac14:   cmp    %r10,%rax
            0x00007f990affac17:   jne    0x00007f99034ff780           ;   {runtime_call ic_miss_stub}
            0x00007f990affac1d:   nop
            0x00007f990affac1e:   xchg   %ax,%ax
          [Verified Entry Point]
   5.16%    0x00007f990affac20:   nopl   0x0(%rax,%rax,1)
            0x00007f990affac25:   mov    0xc(%rsi),%eax               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@1 (line 61)
            0x00007f990affac28:   mov    %eax,%r10d
   5.29%    0x00007f990affac2b:   inc    %r10d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@9 (line 61)
            0x00007f990affac2e:   imul   %eax,%r10d                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@10 (line 61)
  21.69%    0x00007f990affac32:   mov    %r10d,%eax
            0x00007f990affac35:   shr    $0x1f,%eax
   0.01%    0x00007f990affac38:   add    %r10d,%eax
   0.01%    0x00007f990affac3b:   sar    %eax                         ;*idiv {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@12 (line 61)
   5.66%    0x00007f990affac3d:   mov    0x348(%r15),%rcx
            0x00007f990affac44:   test   %eax,(%rcx)                  ;   {poll_return}
   5.59%    0x00007f990affac46:   ret    
          [Exception Handler]
            0x00007f990affac47:   call   0x00007f9903649e00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007f990affac4c:   nop
          [Deopt Handler Code]
            0x00007f990affac4d:   call   0x00007f9903505020           ;   {runtime_call DeoptimizationBlob}
            0x00007f990affac52:   nop
          [Stub Code]
            0x00007f990affac53:   hlt    
            0x00007f990affac54:   hlt    
            0x00007f990affac55:   hlt    
....................................................................................................
  43.41%  <total for region 2>

....[Hottest Regions]...............................................................................
  53.55%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 5, compile id 749 
  43.41%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline, version 2, compile id 735 
   1.42%    [kernel.kallsyms]  native_write_msr 
   0.10%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.08%    [kernel.kallsyms]  __entry_text_start 
   0.07%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.05%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.05%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.05%    [kernel.kallsyms]  page_remove_rmap 
   0.04%    [kernel.kallsyms]  __free_one_page 
   0.04%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.03%    [kernel.kallsyms]  __mod_zone_page_state 
   0.02%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.02%    [kernel.kallsyms]  release_pages 
   0.02%    [kernel.kallsyms]  free_pcppages_bulk 
   0.02%    [kernel.kallsyms]  __mod_node_page_state 
   0.02%    [kernel.kallsyms]  free_swap_cache 
   0.02%    [kernel.kallsyms]  free_unref_page_commit.isra.0 
   0.02%    [kernel.kallsyms]  __mod_lruvec_page_state 
   0.02%    [kernel.kallsyms]  mutex_lock 
   0.96%  <...other 285 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  53.55%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 5, compile id 749 
  43.41%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline, version 2, compile id 735 
   1.42%    [kernel.kallsyms]  native_write_msr 
   0.10%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.10%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.09%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.08%    [kernel.kallsyms]  __entry_text_start 
   0.08%    [kernel.kallsyms]  __free_one_page 
   0.07%                       <unknown> 
   0.06%    [kernel.kallsyms]  release_pages 
   0.05%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.05%    [kernel.kallsyms]  page_remove_rmap 
   0.04%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.03%    [kernel.kallsyms]  free_pcppages_bulk 
   0.03%    [kernel.kallsyms]  __mod_zone_page_state 
   0.03%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.02%    [kernel.kallsyms]  free_swap_cache 
   0.02%    [kernel.kallsyms]  __mod_node_page_state 
   0.02%    [kernel.kallsyms]  free_unref_page_commit.isra.0 
   0.02%    [kernel.kallsyms]  uncharge_page 
   0.74%  <...other 200 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.96%       jvmci, level 4
   2.67%    [kernel.kallsyms]
   0.13%            libjvm.so
   0.07%         libc-2.31.so
   0.07%                     
   0.02%   libpthread-2.31.so
   0.02%          interpreter
   0.02%           ld-2.31.so
   0.01%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.01%               [vdso]
   0.01%      perf-161865.map
   0.00%          c1, level 1
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop
# Parameters: (size = 16384)

# Run progress: 50.00% complete, ETA 00:01:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6771.842 ns/op
# Warmup Iteration   2: 6733.003 ns/op
# Warmup Iteration   3: 6732.057 ns/op
# Warmup Iteration   4: 6731.705 ns/op
# Warmup Iteration   5: 6731.701 ns/op
Iteration   1: 6731.683 ns/op
Iteration   2: 6732.251 ns/op
Iteration   3: 6731.960 ns/op
Iteration   4: 6731.872 ns/op
Iteration   5: 6731.585 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop":
  6731.870 ±(99.9%) 1.000 ns/op [Average]
  (min, avg, max) = (6731.585, 6731.870, 6732.251), stdev = 0.260
  CI (99.9%): [6730.870, 6732.870] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop:·asm":
PrintAssembly processed: 191973 total address lines.
Perf output processed (skipped 59.020 seconds):
 Column 1: cycles (51023 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 4, compile id 735 

                0x00007f216affda80:   mov    0x8(%rsi),%r10d
                0x00007f216affda84:   movabs $0x800000000,%r12
                0x00007f216affda8e:   add    %r12,%r10
                0x00007f216affda91:   xor    %r12,%r12
                0x00007f216affda94:   cmp    %r10,%rax
                0x00007f216affda97:   jne    0x00007f21634ff780           ;   {runtime_call ic_miss_stub}
                0x00007f216affda9d:   nop
                0x00007f216affda9e:   xchg   %ax,%ax
              [Verified Entry Point]
                0x00007f216affdaa0:   mov    %eax,-0x14000(%rsp)
   0.01%        0x00007f216affdaa7:   sub    $0x8,%rsp
                0x00007f216affdaab:   mov    0xc(%rsi),%eax
                0x00007f216affdaae:   cmp    $0x1,%eax
                0x00007f216affdab1:   jl     0x00007f216affdba6           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@9 (line 52)
   0.00%        0x00007f216affdab7:   cmp    $0x3,%eax
                0x00007f216affdaba:   mov    $0x2,%r10d
                0x00007f216affdac0:   cmovl  %eax,%r10d
                0x00007f216affdac4:   mov    $0x0,%r8d
   0.01%        0x00007f216affdaca:   mov    $0x1,%r11d
          ╭     0x00007f216affdad0:   jmp    0x00007f216affdae6           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@4 (line 52)
          │     0x00007f216affdad5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@9 (line 52)
   0.01%  │↗    0x00007f216affdae0:   add    %r11d,%r8d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@14 (line 53)
          ││    0x00007f216affdae3:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@16 (line 52)
          ↘│    0x00007f216affdae6:   cmp    %r11d,%r10d
           ╰    0x00007f216affdae9:   jg     0x00007f216affdae0
                0x00007f216affdaeb:   lea    -0x10(%rax),%r10d
   0.00%        0x00007f216affdaef:   mov    %r8d,0x4(%rsp)
                0x00007f216affdaf4:   mov    %r11d,%r8d
                0x00007f216affdaf7:   mov    0x4(%rsp),%r11d
                0x00007f216affdafc:   nopl   0x0(%rax)
   0.01%    ╭   0x00007f216affdb00:   jmp    0x00007f216affdb5b
            │   0x00007f216affdb05:   data16 data16 nopw 0x0(%rax,%rax,1)
            │   0x00007f216affdb10:   data16 data16 xchg %ax,%ax
            │   0x00007f216affdb14:   nopl   0x0(%rax,%rax,1)
            │   0x00007f216affdb1c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@9 (line 52)
   0.01%    │↗  0x00007f216affdb20:   lea    0x10(%r8),%r9d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@16 (line 52)
            ││  0x00007f216affdb24:   add    %r8d,%r11d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@14 (line 53)
   8.64%    ││  0x00007f216affdb27:   add    %r8d,%r11d
   4.18%    ││  0x00007f216affdb2a:   add    %r8d,%r11d
   4.53%    ││  0x00007f216affdb2d:   add    %r8d,%r11d
   6.29%    ││  0x00007f216affdb30:   add    %r8d,%r11d
   7.65%    ││  0x00007f216affdb33:   add    %r8d,%r11d
   4.36%    ││  0x00007f216affdb36:   add    %r8d,%r11d
   5.91%    ││  0x00007f216affdb39:   add    %r8d,%r11d
   5.69%    ││  0x00007f216affdb3c:   add    %r8d,%r11d
   5.51%    ││  0x00007f216affdb3f:   add    %r8d,%r11d
   4.58%    ││  0x00007f216affdb42:   add    %r8d,%r11d
   6.41%    ││  0x00007f216affdb45:   add    %r8d,%r11d
   8.44%    ││  0x00007f216affdb48:   add    %r8d,%r11d
   5.26%    ││  0x00007f216affdb4b:   add    %r8d,%r11d
   3.47%    ││  0x00007f216affdb4e:   add    %r8d,%r11d
   4.13%    ││  0x00007f216affdb51:   add    %r8d,%r11d
   5.60%    ││  0x00007f216affdb54:   lea    0x78(%r11),%r11d
   5.90%    ││  0x00007f216affdb58:   mov    %r9d,%r8d                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@4 (line 52)
            ↘│  0x00007f216affdb5b:   cmp    %r8d,%r10d
             ╰  0x00007f216affdb5e:   jg     0x00007f216affdb20
                0x00007f216affdb60:   jmp    0x00007f216affdb90
                0x00007f216affdb65:   data16 data16 nopw 0x0(%rax,%rax,1)
                0x00007f216affdb70:   data16 data16 xchg %ax,%ax
                0x00007f216affdb74:   nopl   0x0(%rax,%rax,1)
                0x00007f216affdb7c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@9 (line 52)
   0.06%        0x00007f216affdb80:   mov    %r8d,%r10d
....................................................................................................
  96.62%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.62%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 4, compile id 735 
   1.46%    [kernel.kallsyms]  native_write_msr 
   0.27%    [kernel.kallsyms]  __intel_pmu_enable_all.constprop.0 
   0.14%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 4, compile id 735 
   0.10%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.07%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.05%    [kernel.kallsyms]  __entry_text_start 
   0.05%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.04%    [kernel.kallsyms]  page_remove_rmap 
   0.04%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.04%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.04%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.03%    [kernel.kallsyms]  release_pages 
   0.03%    [kernel.kallsyms]  __free_one_page 
   0.03%    [kernel.kallsyms]  __mod_zone_page_state 
   0.03%    [kernel.kallsyms]  free_pcppages_bulk 
   0.02%    [kernel.kallsyms]  release_pages 
   0.02%    [kernel.kallsyms]  __mod_node_page_state 
   0.02%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.02%    [kernel.kallsyms]  unlock_page_memcg 
   0.89%  <...other 238 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.76%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 4, compile id 735 
   1.46%    [kernel.kallsyms]  native_write_msr 
   0.27%    [kernel.kallsyms]  __intel_pmu_enable_all.constprop.0 
   0.12%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.10%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.09%    [kernel.kallsyms]  release_pages 
   0.07%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.07%    [kernel.kallsyms]  __free_one_page 
   0.05%    [kernel.kallsyms]  __entry_text_start 
   0.05%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.04%    [kernel.kallsyms]  page_remove_rmap 
   0.04%                       <unknown> 
   0.04%    [kernel.kallsyms]  free_pcppages_bulk 
   0.04%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.03%    [kernel.kallsyms]  __mod_zone_page_state 
   0.03%    [kernel.kallsyms]  __mod_node_page_state 
   0.02%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_scev_loop_jmhTest::scev_loop_avgt_jmhStub, version 5, compile id 750 
   0.02%    [kernel.kallsyms]  unlock_page_memcg 
   0.02%         libc-2.31.so  _IO_fwrite 
   0.66%  <...other 162 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.78%       jvmci, level 4
   2.91%    [kernel.kallsyms]
   0.10%         libc-2.31.so
   0.09%            libjvm.so
   0.04%                     
   0.02%  libjvmcicompiler.so
   0.02%       hsdis-amd64.so
   0.02%   libpthread-2.31.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.00%      perf-161954.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:03:45

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
ScalarEvolutionAndLoopOptimizationBenchmark.baseline         16384  avgt    5     6.968 ± 0.060  ns/op
ScalarEvolutionAndLoopOptimizationBenchmark.baseline:·asm    16384  avgt            NaN            ---
ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop        16384  avgt    5  6731.870 ± 1.000  ns/op
ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop:·asm   16384  avgt            NaN            ---
