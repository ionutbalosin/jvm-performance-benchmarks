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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.baseline
# Parameters: (size = 16384)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.037 ns/op
# Warmup Iteration   2: 6.574 ns/op
# Warmup Iteration   3: 6.634 ns/op
# Warmup Iteration   4: 6.574 ns/op
# Warmup Iteration   5: 6.576 ns/op
Iteration   1: 6.575 ns/op
Iteration   2: 6.606 ns/op
Iteration   3: 6.574 ns/op
Iteration   4: 6.582 ns/op
Iteration   5: 6.581 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.baseline":
  6.584 ±(99.9%) 0.051 ns/op [Average]
  (min, avg, max) = (6.574, 6.584, 6.606), stdev = 0.013
  CI (99.9%): [6.533, 6.634] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.baseline:·asm":
PrintAssembly processed: 187969 total address lines.
Perf output processed (skipped 58.969 seconds):
 Column 1: cycles (50490 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 746 

              0x00007f0ed6b1d158:   call   0x00007f0eee4184f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f0ed6b1d15d:   nop
              0x00007f0ed6b1d15e:   mov    0x10(%rsp),%rdx
              0x00007f0ed6b1d163:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@10 (line 184)
              0x00007f0ed6b1d167:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f0ed6b1d170:   jmp    0x00007f0ed6b1d18f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@13 (line 186)
          │   0x00007f0ed6b1d175:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 188)
   5.74%  │↗  0x00007f0ed6b1d180:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 188)
   0.00%  ││  0x00007f0ed6b1d187:   test   %eax,(%r11)                  ;   {poll}
   5.87%  ││  0x00007f0ed6b1d18a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@13 (line 186)
   0.00%  ↘│  0x00007f0ed6b1d18f:   mov    0x8(%rsp),%r10
           │  0x00007f0ed6b1d194:   mov    %r10,%rsi
           │  0x00007f0ed6b1d197:   call   0x00007f0ecf01ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual baseline {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@17 (line 186)
           │                                                            ;   {optimized virtual_call}
           │  0x00007f0ed6b1d19c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@20 (line 186)
           │  0x00007f0ed6b1d19d:   mov    0x20(%rsp),%r10
  11.25%   │  0x00007f0ed6b1d1a2:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@26 (line 187)
   5.71%   │  0x00007f0ed6b1d1a5:   mov    0x18(%rsp),%rsi
   0.00%   │  0x00007f0ed6b1d1aa:   cmpb   $0x0,0x94(%rsi)
  22.58%   ╰  0x00007f0ed6b1d1b1:   je     0x00007f0ed6b1d180           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 188)
              0x00007f0ed6b1d1b3:   mov    %r10,0x20(%rsp)
              0x00007f0ed6b1d1b8:   call   0x00007f0eee4184f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f0ed6b1d1bd:   nop
              0x00007f0ed6b1d1be:   mov    0x10(%rsp),%rdx
              0x00007f0ed6b1d1c3:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@40 (line 189)
              0x00007f0ed6b1d1c7:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@46 (line 190)
              0x00007f0ed6b1d1cb:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  51.16%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline, version 2, compile id 722 

            #           [sp+0x10]  (sp of caller)
            0x00007f0ed6b1a700:   mov    0x8(%rsi),%r10d
            0x00007f0ed6b1a704:   movabs $0x800000000,%r12
            0x00007f0ed6b1a70e:   add    %r12,%r10
            0x00007f0ed6b1a711:   xor    %r12,%r12
            0x00007f0ed6b1a714:   cmp    %r10,%rax
            0x00007f0ed6b1a717:   jne    0x00007f0ecf01e780           ;   {runtime_call ic_miss_stub}
            0x00007f0ed6b1a71d:   nop
            0x00007f0ed6b1a71e:   xchg   %ax,%ax
          [Verified Entry Point]
   5.65%    0x00007f0ed6b1a720:   nopl   0x0(%rax,%rax,1)
            0x00007f0ed6b1a725:   mov    0xc(%rsi),%eax               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@1 (line 61)
            0x00007f0ed6b1a728:   mov    %eax,%r10d
   5.83%    0x00007f0ed6b1a72b:   inc    %r10d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@9 (line 61)
            0x00007f0ed6b1a72e:   imul   %eax,%r10d                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@10 (line 61)
  23.17%    0x00007f0ed6b1a732:   mov    %r10d,%eax
            0x00007f0ed6b1a735:   shr    $0x1f,%eax
   0.00%    0x00007f0ed6b1a738:   add    %r10d,%eax
   0.00%    0x00007f0ed6b1a73b:   sar    %eax                         ;*idiv {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@12 (line 61)
   5.60%    0x00007f0ed6b1a73d:   mov    0x348(%r15),%rcx
   0.00%    0x00007f0ed6b1a744:   test   %eax,(%rcx)                  ;   {poll_return}
   5.91%    0x00007f0ed6b1a746:   ret    
          [Exception Handler]
            0x00007f0ed6b1a747:   call   0x00007f0ecf169d00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007f0ed6b1a74c:   nop
          [Deopt Handler Code]
            0x00007f0ed6b1a74d:   call   0x00007f0ecf024020           ;   {runtime_call DeoptimizationBlob}
            0x00007f0ed6b1a752:   nop
          [Stub Code]
            0x00007f0ed6b1a753:   hlt    
            0x00007f0ed6b1a754:   hlt    
            0x00007f0ed6b1a755:   hlt    
....................................................................................................
  46.18%  <total for region 2>

....[Hottest Regions]...............................................................................
  51.16%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 746 
  46.18%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline, version 2, compile id 722 
   0.75%    [kernel.kallsyms]  native_write_msr 
   0.12%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.07%    [kernel.kallsyms]  __entry_text_start 
   0.06%    [kernel.kallsyms]  page_remove_rmap 
   0.05%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.05%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.05%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.05%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.04%    [kernel.kallsyms]  irqentry_exit_to_user_mode 
   0.04%    [kernel.kallsyms]  __mod_zone_page_state 
   0.03%    [kernel.kallsyms]  asm_sysvec_apic_timer_interrupt 
   0.03%    [kernel.kallsyms]  release_pages 
   0.03%    [kernel.kallsyms]  __free_one_page 
   0.03%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.03%    [kernel.kallsyms]  free_pcppages_bulk 
   0.03%    [kernel.kallsyms]  error_entry 
   0.03%            libjvm.so  ElfSymbolTable::lookup 
   0.02%    [kernel.kallsyms]  __mod_node_page_state 
   1.17%  <...other 316 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  51.16%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 746 
  46.18%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline, version 2, compile id 722 
   0.75%    [kernel.kallsyms]  native_write_msr 
   0.12%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.10%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.10%                       <unknown> 
   0.08%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.07%    [kernel.kallsyms]  release_pages 
   0.07%    [kernel.kallsyms]  __entry_text_start 
   0.06%    [kernel.kallsyms]  __free_one_page 
   0.06%    [kernel.kallsyms]  page_remove_rmap 
   0.05%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.04%    [kernel.kallsyms]  irqentry_exit_to_user_mode 
   0.04%    [kernel.kallsyms]  free_pcppages_bulk 
   0.04%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.04%    [kernel.kallsyms]  __mod_zone_page_state 
   0.03%    [kernel.kallsyms]  asm_sysvec_apic_timer_interrupt 
   0.03%    [kernel.kallsyms]  __mod_node_page_state 
   0.03%    [kernel.kallsyms]  error_entry 
   0.03%    [kernel.kallsyms]  uncharge_page 
   0.94%  <...other 223 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.34%       jvmci, level 4
   2.30%    [kernel.kallsyms]
   0.11%            libjvm.so
   0.10%                     
   0.08%         libc-2.31.so
   0.03%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.01%  libjvmcicompiler.so
   0.00%      perf-164342.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop
# Parameters: (size = 16384)

# Run progress: 50.00% complete, ETA 00:01:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1040.870 ns/op
# Warmup Iteration   2: 1042.768 ns/op
# Warmup Iteration   3: 1043.246 ns/op
# Warmup Iteration   4: 1043.018 ns/op
# Warmup Iteration   5: 1047.159 ns/op
Iteration   1: 1042.852 ns/op
Iteration   2: 1042.764 ns/op
Iteration   3: 1043.296 ns/op
Iteration   4: 1043.359 ns/op
Iteration   5: 1043.582 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop":
  1043.171 ±(99.9%) 1.344 ns/op [Average]
  (min, avg, max) = (1042.764, 1043.171, 1043.582), stdev = 0.349
  CI (99.9%): [1041.827, 1044.514] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop:·asm":
PrintAssembly processed: 189650 total address lines.
Perf output processed (skipped 59.047 seconds):
 Column 1: cycles (50565 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 4, compile id 730 

              #           [sp+0x40]  (sp of caller)
              0x00007f17c6b19b60:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
              0x00007f17c6b19b64:   movabs $0x800000000,%r12
              0x00007f17c6b19b6e:   add    %r12,%r10
              0x00007f17c6b19b71:   xor    %r12,%r12
              0x00007f17c6b19b74:   cmp    %r10,%rax
              0x00007f17c6b19b77:   jne    0x00007f17bf01e780           ;   {runtime_call ic_miss_stub}
              0x00007f17c6b19b7d:   nop
              0x00007f17c6b19b7e:   xchg   %ax,%ax
            [Verified Entry Point]
   0.00%      0x00007f17c6b19b80:   mov    %eax,-0x14000(%rsp)
   0.03%      0x00007f17c6b19b87:   sub    $0x38,%rsp
   0.01%      0x00007f17c6b19b8b:   mov    0xc(%rsi),%eax
              0x00007f17c6b19b8e:   test   %eax,%eax
   0.02%      0x00007f17c6b19b90:   mov    $0x0,%r10d
   0.01%      0x00007f17c6b19b96:   cmovl  %r10d,%eax
   0.03%      0x00007f17c6b19b9a:   mov    %eax,%eax
   0.02%      0x00007f17c6b19b9c:   nopl   0x0(%rax)
   0.03%      0x00007f17c6b19ba0:   test   %rax,%rax
              0x00007f17c6b19ba3:   je     0x00007f17c6b19c9e
   0.01%      0x00007f17c6b19ba9:   vpxor  %xmm0,%xmm0,%xmm0
   0.01%      0x00007f17c6b19bad:   cmp    $0x8,%rax
              0x00007f17c6b19bb1:   jb     0x00007f17c6b19c88
   0.02%      0x00007f17c6b19bb7:   lea    -0x8(%rax),%r10
   0.01%      0x00007f17c6b19bbb:   vmovdqa -0xa3(%rip),%ymm1        # 0x00007f17c6b19b20
                                                                        ;   {section_word}
   0.00%      0x00007f17c6b19bc3:   vmovdqa -0x8b(%rip),%ymm2        # 0x00007f17c6b19b40
                                                                        ;   {section_word}
   0.01%      0x00007f17c6b19bcb:   mov    $0x0,%r11
   0.01%      0x00007f17c6b19bd2:   vmovdqu %ymm2,(%rsp)
   0.01%      0x00007f17c6b19bd7:   vmovdqu %ymm0,%ymm2
   0.01%      0x00007f17c6b19bdb:   vmovdqu (%rsp),%ymm0
   0.15%  ╭   0x00007f17c6b19be0:   jmp    0x00007f17c6b19c04
          │   0x00007f17c6b19be5:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f17c6b19bf0:   data16 data16 xchg %ax,%ax
          │   0x00007f17c6b19bf4:   nopl   0x0(%rax,%rax,1)
          │   0x00007f17c6b19bfc:   data16 data16 xchg %ax,%ax
  18.95%  │↗  0x00007f17c6b19c00:   vmovdqu %ymm3,%ymm0
  19.24%  ↘│  0x00007f17c6b19c04:   vpaddd %ymm1,%ymm0,%ymm3
  19.83%   │  0x00007f17c6b19c08:   vpaddd %ymm0,%ymm2,%ymm2
  18.45%   │  0x00007f17c6b19c0c:   lea    0x8(%r11),%r11
  18.74%   │  0x00007f17c6b19c10:   cmp    %r10,%r11
           ╰  0x00007f17c6b19c13:   jle    0x00007f17c6b19c00
   0.27%      0x00007f17c6b19c15:   vmovd  %xmm3,%r10d
   0.47%      0x00007f17c6b19c1a:   vextracti128 $0x1,%ymm2,%xmm0
              0x00007f17c6b19c20:   vpaddd %xmm0,%xmm2,%xmm0
   0.10%      0x00007f17c6b19c24:   vpshufd $0xe,%xmm0,%xmm1
              0x00007f17c6b19c29:   vpaddd %xmm1,%xmm0,%xmm0
   0.04%      0x00007f17c6b19c2d:   vmovd  %xmm0,%r8d
              0x00007f17c6b19c32:   vpextrd $0x1,%xmm0,%r9d
              0x00007f17c6b19c38:   add    %r9d,%r8d
   0.02%      0x00007f17c6b19c3b:   dec    %rax
              0x00007f17c6b19c3e:   xchg   %ax,%ax
              0x00007f17c6b19c40:   jmp    0x00007f17c6b19c6f
              0x00007f17c6b19c45:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f17c6b19c50:   data16 data16 xchg %ax,%ax
              0x00007f17c6b19c54:   nopl   0x0(%rax,%rax,1)
              0x00007f17c6b19c5c:   data16 data16 xchg %ax,%ax
              0x00007f17c6b19c60:   mov    %r10d,%r9d
              0x00007f17c6b19c63:   inc    %r9d
              0x00007f17c6b19c66:   add    %r10d,%r8d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@14 (line 53)
....................................................................................................
  96.49%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.49%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 4, compile id 730 
   0.81%    [kernel.kallsyms]  native_write_msr 
   0.45%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_scev_loop_jmhTest::scev_loop_avgt_jmhStub, version 5, compile id 749 
   0.25%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 4, compile id 730 
   0.12%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.07%    [kernel.kallsyms]  __entry_text_start 
   0.06%    [kernel.kallsyms]  page_remove_rmap 
   0.06%    [kernel.kallsyms]  __intel_pmu_enable_all.constprop.0 
   0.05%    [kernel.kallsyms]  irqentry_exit_to_user_mode 
   0.05%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.05%    [kernel.kallsyms]  free_pcppages_bulk 
   0.05%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.04%    [kernel.kallsyms]  __irqentry_text_end 
   0.03%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.03%                       <unknown> 
   0.03%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.03%    [kernel.kallsyms]  error_entry 
   0.02%    [kernel.kallsyms]  __mod_node_page_state 
   0.02%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.02%    [kernel.kallsyms]  release_pages 
   1.28%  <...other 339 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.74%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 4, compile id 730 
   0.81%    [kernel.kallsyms]  native_write_msr 
   0.45%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_scev_loop_jmhTest::scev_loop_avgt_jmhStub, version 5, compile id 749 
   0.14%                       <unknown> 
   0.12%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.08%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.07%    [kernel.kallsyms]  __entry_text_start 
   0.07%    [kernel.kallsyms]  release_pages 
   0.06%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.06%    [kernel.kallsyms]  page_remove_rmap 
   0.06%    [kernel.kallsyms]  __intel_pmu_enable_all.constprop.0 
   0.05%    [kernel.kallsyms]  irqentry_exit_to_user_mode 
   0.05%    [kernel.kallsyms]  free_pcppages_bulk 
   0.05%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.04%    [kernel.kallsyms]  __free_one_page 
   0.04%    [kernel.kallsyms]  __irqentry_text_end 
   0.04%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.03%    [kernel.kallsyms]  error_entry 
   0.02%    [kernel.kallsyms]  __mod_node_page_state 
   0.02%    [kernel.kallsyms]  _raw_spin_lock_irqsave 
   1.01%  <...other 234 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.19%       jvmci, level 4
   2.43%    [kernel.kallsyms]
   0.14%                     
   0.11%            libjvm.so
   0.07%         libc-2.31.so
   0.02%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%               [vdso]
   0.00%  libjvmcicompiler.so
   0.00%          c1, level 1
   0.00%          interpreter
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:03:47

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
ScalarEvolutionAndLoopOptimizationBenchmark.baseline         16384  avgt    5     6.584 ± 0.051  ns/op
ScalarEvolutionAndLoopOptimizationBenchmark.baseline:·asm    16384  avgt            NaN            ---
ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop        16384  avgt    5  1043.171 ± 1.344  ns/op
ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop:·asm   16384  avgt            NaN            ---
