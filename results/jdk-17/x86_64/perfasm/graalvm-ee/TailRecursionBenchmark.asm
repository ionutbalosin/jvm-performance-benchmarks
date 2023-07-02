# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Xss64M
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark.iterative
# Parameters: (n = 262144)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 261.600 us/op
# Warmup Iteration   2: 260.686 us/op
# Warmup Iteration   3: 260.506 us/op
# Warmup Iteration   4: 260.471 us/op
# Warmup Iteration   5: 260.466 us/op
Iteration   1: 260.462 us/op
Iteration   2: 260.474 us/op
Iteration   3: 260.472 us/op
Iteration   4: 261.788 us/op
Iteration   5: 261.781 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark.iterative":
  260.995 ±(99.9%) 2.773 us/op [Average]
  (min, avg, max) = (260.462, 260.995, 261.788), stdev = 0.720
  CI (99.9%): [258.222, 263.769] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark.iterative:·asm":
PrintAssembly processed: 191652 total address lines.
Perf output processed (skipped 58.979 seconds):
 Column 1: cycles (50340 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative, version 3, compile id 727 

               0x00007f9ee2b1ac17:   vmovdqa -0xcf(%rip),%xmm6        # 0x00007f9ee2b1ab50
                                                                         ;   {section_word}
               0x00007f9ee2b1ac1f:   vpcmpeqd %ymm7,%ymm7,%ymm7
               0x00007f9ee2b1ac23:   vmovdqu %xmm1,%xmm9
               0x00007f9ee2b1ac27:   vmovdqu %xmm1,%xmm8
               0x00007f9ee2b1ac2b:   mov    $0x0,%r9
               0x00007f9ee2b1ac32:   vmovdqu %ymm0,%ymm1
          ╭    0x00007f9ee2b1ac36:   jmp    0x00007f9ee2b1ac8e
          │    0x00007f9ee2b1ac3b:   nopl   0x0(%rax,%rax,1)             ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@0 (line 81)
   8.06%  │ ↗  0x00007f9ee2b1ac40:   vpsrad $0x1f,%xmm9,%xmm0
   1.24%  │ │  0x00007f9ee2b1ac46:   vpsrld $0x16,%xmm0,%xmm0
          │ │  0x00007f9ee2b1ac4b:   vpaddd %xmm9,%xmm0,%xmm0
          │ │  0x00007f9ee2b1ac50:   vpand  %xmm6,%xmm0,%xmm0
   8.28%  │ │  0x00007f9ee2b1ac54:   vpsubd %xmm0,%xmm9,%xmm0
   1.34%  │ │  0x00007f9ee2b1ac58:   vpmovzxdq %xmm0,%ymm0
          │ │  0x00007f9ee2b1ac5d:   vpsllq $0x2,%ymm0,%ymm0
          │ │  0x00007f9ee2b1ac62:   vpaddq %ymm4,%ymm0,%ymm10           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@16 (line 84)
   8.38%  │ │  0x00007f9ee2b1ac66:   vpcmpeqd %ymm0,%ymm0,%ymm0
   1.21%  │ │  0x00007f9ee2b1ac6a:   vpgatherqd %xmm0,(%rax,%ymm10,1),%xmm11
  28.47%  │ │  0x00007f9ee2b1ac70:   vpmovsxdq %xmm11,%ymm0
   9.53%  │ │  0x00007f9ee2b1ac75:   vpaddq %ymm0,%ymm1,%ymm1
   2.43%  │ │  0x00007f9ee2b1ac79:   vpaddd %xmm5,%xmm9,%xmm9
          │ │  0x00007f9ee2b1ac7d:   vpaddd %xmm5,%xmm8,%xmm8
          │ │  0x00007f9ee2b1ac81:   lea    0x4(%r9),%r9
   8.32%  │ │  0x00007f9ee2b1ac85:   cmp    %r8,%r9
          │╭│  0x00007f9ee2b1ac88:   jg     0x00007f9ee2b1acbe
   1.34%  ↘││  0x00007f9ee2b1ac8e:   vpsrad $0x1f,%xmm8,%xmm0
           ││  0x00007f9ee2b1ac94:   vpsrld $0x16,%xmm0,%xmm0
           ││  0x00007f9ee2b1ac99:   vpaddd %xmm8,%xmm0,%xmm0
   8.41%   ││  0x00007f9ee2b1ac9e:   vpand  %xmm6,%xmm0,%xmm0
   1.33%   ││  0x00007f9ee2b1aca2:   vpsubd %xmm0,%xmm8,%xmm0
           ││  0x00007f9ee2b1aca6:   vpxor  %xmm3,%xmm0,%xmm0
           ││  0x00007f9ee2b1acaa:   vpcmpgtd %xmm0,%xmm2,%xmm0
   8.39%   ││  0x00007f9ee2b1acae:   vpxor  %xmm7,%xmm0,%xmm0
   1.28%   ││  0x00007f9ee2b1acb2:   vptest %xmm0,%xmm0
           │╰  0x00007f9ee2b1acb7:   je     0x00007f9ee2b1ac40
           │   0x00007f9ee2b1acb9:   jmp    0x00007f9ee2b1ada6
           ↘   0x00007f9ee2b1acbe:   vmovd  %xmm9,%r8d
               0x00007f9ee2b1acc3:   vmovd  %xmm8,%ebx                   ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@0 (line 81)
               0x00007f9ee2b1acc7:   vextracti128 $0x1,%ymm1,%xmm0
               0x00007f9ee2b1accd:   vpaddq %xmm0,%xmm1,%xmm0
               0x00007f9ee2b1acd1:   vmovq  %xmm0,%rdi
               0x00007f9ee2b1acd6:   vpextrq $0x1,%xmm0,%rbp
               0x00007f9ee2b1acdc:   add    %rbp,%rdi
....................................................................................................
  98.00%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.00%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative, version 3, compile id 727 
   0.59%    [kernel.kallsyms]  native_write_msr 
   0.09%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.07%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.06%    [kernel.kallsyms]  __entry_text_start 
   0.06%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.04%    [kernel.kallsyms]  page_remove_rmap 
   0.04%    [kernel.kallsyms]  __free_one_page 
   0.03%    [kernel.kallsyms]  free_pcppages_bulk 
   0.03%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.03%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.03%    [kernel.kallsyms]  __mod_lruvec_state 
   0.03%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.02%    [kernel.kallsyms]  __mod_zone_page_state 
   0.02%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.02%    [kernel.kallsyms]  release_pages 
   0.02%    [kernel.kallsyms]  release_pages 
   0.02%    [kernel.kallsyms]  __mod_node_page_state 
   0.02%    [kernel.kallsyms]  __free_one_page 
   0.02%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.77%  <...other 222 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.00%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative, version 3, compile id 727 
   0.59%    [kernel.kallsyms]  native_write_msr 
   0.10%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.09%    [kernel.kallsyms]  release_pages 
   0.09%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.08%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.08%    [kernel.kallsyms]  __free_one_page 
   0.07%                       <unknown> 
   0.06%    [kernel.kallsyms]  __entry_text_start 
   0.04%    [kernel.kallsyms]  page_remove_rmap 
   0.04%    [kernel.kallsyms]  free_pcppages_bulk 
   0.03%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.03%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.03%    [kernel.kallsyms]  __mod_lruvec_state 
   0.03%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.02%    [kernel.kallsyms]  __mod_zone_page_state 
   0.02%    [kernel.kallsyms]  uncharge_page 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%    [kernel.kallsyms]  free_unref_page_list 
   0.02%    [kernel.kallsyms]  __mod_node_page_state 
   0.53%  <...other 146 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.01%       jvmci, level 4
   1.71%    [kernel.kallsyms]
   0.11%            libjvm.so
   0.07%                     
   0.07%         libc-2.31.so
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.00%  libjvmcicompiler.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Xss64M
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark.tail_recursive
# Parameters: (n = 262144)

# Run progress: 50.00% complete, ETA 00:01:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5203.741 us/op
# Warmup Iteration   2: 5216.828 us/op
# Warmup Iteration   3: 5215.756 us/op
# Warmup Iteration   4: 5190.966 us/op
# Warmup Iteration   5: 5178.016 us/op
Iteration   1: 5210.855 us/op
Iteration   2: 5174.403 us/op
Iteration   3: 5179.032 us/op
Iteration   4: 5179.877 us/op
Iteration   5: 5175.984 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark.tail_recursive":
  5184.030 ±(99.9%) 58.373 us/op [Average]
  (min, avg, max) = (5174.403, 5184.030, 5210.855), stdev = 15.159
  CI (99.9%): [5125.657, 5242.403] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark.tail_recursive:·asm":
PrintAssembly processed: 194850 total address lines.
Perf output processed (skipped 59.141 seconds):
 Column 1: cycles (50760 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive, version 2, compile id 734 

              #           [sp+0x20]  (sp of caller)
              0x00007fa482b1bea0:   mov    0x8(%rsi),%r10d
              0x00007fa482b1bea4:   movabs $0x800000000,%r12
              0x00007fa482b1beae:   add    %r12,%r10
              0x00007fa482b1beb1:   xor    %r12,%r12
              0x00007fa482b1beb4:   cmp    %r10,%rax
              0x00007fa482b1beb7:   jne    0x00007fa47b01e780           ;   {runtime_call ic_miss_stub}
              0x00007fa482b1bebd:   nop
              0x00007fa482b1bebe:   xchg   %ax,%ax
            [Verified Entry Point]
   8.67%   ↗  0x00007fa482b1bec0:   mov    %eax,-0x14000(%rsp)
   9.85%   │  0x00007fa482b1bec7:   sub    $0x18,%rsp
   0.90%   │  0x00007fa482b1becb:   mov    %rbp,0x10(%rsp)
   3.08%   │  0x00007fa482b1bed0:   test   %edx,%edx
          ╭│  0x00007fa482b1bed2:   je     0x00007fa482b1bf3c           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@1 (line 72)
   0.01%  ││  0x00007fa482b1bed8:   mov    0x14(%rsi),%r10d             ;*getfield A {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@12 (line 75)
   0.01%  ││  0x00007fa482b1bedc:   mov    %edx,%r11d
   0.89%  ││  0x00007fa482b1bedf:   sar    $0x1f,%r11d
   0.96%  ││  0x00007fa482b1bee3:   shr    $0x16,%r11d
   0.01%  ││  0x00007fa482b1bee7:   add    %edx,%r11d
   0.03%  ││  0x00007fa482b1beea:   and    $0xfffffc00,%r11d
   0.90%  ││  0x00007fa482b1bef1:   mov    %edx,%r8d
   1.00%  ││  0x00007fa482b1bef4:   sub    %r11d,%r8d
   0.01%  ││  0x00007fa482b1bef7:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rsi=Oop r10=NarrowOop }
          ││                                                            ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@0 (line 72)
   0.03%  ││  0x00007fa482b1bf00:   cmp    0xc(,%r10,8),%r8d            ; implicit exception: dispatches to 0x00007fa482b1bf6a
          ││  0x00007fa482b1bf08:   jae    0x00007fa482b1bf52           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@20 (line 75)
   3.13%  ││  0x00007fa482b1bf0e:   shl    $0x3,%r10                    ;*getfield A {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@12 (line 75)
   0.01%  ││  0x00007fa482b1bf12:   dec    %edx                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@9 (line 75)
   0.02%  ││  0x00007fa482b1bf14:   movslq 0x10(%r10,%r8,4),%r10        ;*i2l {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@21 (line 75)
   3.39%  ││  0x00007fa482b1bf19:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@22 (line 75)
   1.63%  ││  0x00007fa482b1bf1c:   data16 xchg %ax,%ax
   0.02%  ││  0x00007fa482b1bf1f:   nop
   0.02%  ││  0x00007fa482b1bf20:   data16 xchg %ax,%ax
   0.28%  │╰  0x00007fa482b1bf23:   call   0x00007fa482b1bec0           ; ImmutableOopMap {}
          │                                                             ;*invokevirtual recursive {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          │                                                             ;   {optimized virtual_call}
  28.59%  │   0x00007fa482b1bf28:   nop
   1.74%  │   0x00007fa482b1bf29:   mov    0x10(%rsp),%rbp
  28.13%  │   0x00007fa482b1bf2e:   add    $0x18,%rsp
   0.08%  │   0x00007fa482b1bf32:   mov    0x348(%r15),%rcx
   0.01%  │   0x00007fa482b1bf39:   test   %eax,(%rcx)                  ;   {poll_return}
   3.81%  │   0x00007fa482b1bf3b:   ret                                 ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@1 (line 72)
          ↘   0x00007fa482b1bf3c:   mov    %rcx,%rax                    ;*lreturn {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@5 (line 73)
              0x00007fa482b1bf3f:   mov    0x10(%rsp),%rbp
              0x00007fa482b1bf44:   add    $0x18,%rsp
              0x00007fa482b1bf48:   mov    0x348(%r15),%rcx
              0x00007fa482b1bf4f:   test   %eax,(%rcx)                  ;   {poll_return}
              0x00007fa482b1bf51:   ret                                 ;*lreturn {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@26 (line 75)
              0x00007fa482b1bf52:   movl   $0xffffffe5,0x370(%r15)      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  97.21%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.21%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive, version 2, compile id 734 
   1.07%    [kernel.kallsyms]  native_write_msr 
   0.10%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.09%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.07%                       <unknown> 
   0.06%    [kernel.kallsyms]  __entry_text_start 
   0.05%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.05%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.04%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.04%    [kernel.kallsyms]  page_remove_rmap 
   0.03%    [kernel.kallsyms]  free_pcppages_bulk 
   0.03%    [kernel.kallsyms]  __mod_node_page_state 
   0.03%    [kernel.kallsyms]  __free_one_page 
   0.03%    [kernel.kallsyms]  release_pages 
   0.02%                       <unknown> 
   0.02%    [kernel.kallsyms]  free_unref_page_commit.isra.0 
   0.02%    [kernel.kallsyms]  release_pages 
   0.02%    [kernel.kallsyms]  __mod_zone_page_state 
   0.02%    [kernel.kallsyms]  release_pages 
   0.02%    [kernel.kallsyms]  __tlb_remove_page_size 
   0.99%  <...other 295 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.21%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive, version 2, compile id 734 
   1.07%    [kernel.kallsyms]  native_write_msr 
   0.17%                       <unknown> 
   0.13%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.10%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.09%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.08%    [kernel.kallsyms]  __free_one_page 
   0.07%    [kernel.kallsyms]  release_pages 
   0.06%    [kernel.kallsyms]  __entry_text_start 
   0.06%    [kernel.kallsyms]  free_pcppages_bulk 
   0.05%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.04%    [kernel.kallsyms]  page_remove_rmap 
   0.03%    [kernel.kallsyms]  free_unref_page_commit.isra.0 
   0.03%    [kernel.kallsyms]  __mod_node_page_state 
   0.02%    [kernel.kallsyms]  cgroup_rstat_updated 
   0.02%    [kernel.kallsyms]  free_pcp_prepare 
   0.02%    [kernel.kallsyms]  __mod_zone_page_state 
   0.02%    [kernel.kallsyms]  lock_page_memcg 
   0.02%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.02%    [kernel.kallsyms]  __tlb_remove_page_size 
   0.70%  <...other 198 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.21%       jvmci, level 4
   2.32%    [kernel.kallsyms]
   0.17%                     
   0.16%            libjvm.so
   0.07%         libc-2.31.so
   0.03%          interpreter
   0.01%           ld-2.31.so
   0.01%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.00%  libjvmcicompiler.so
   0.00%         libjimage.so
   0.00%      perf-164692.map
   0.00%     Unknown, level 0
   0.00%         libm-2.31.so
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

Benchmark                                      (n)  Mode  Cnt     Score    Error  Units
TailRecursionBenchmark.iterative            262144  avgt    5   260.995 ±  2.773  us/op
TailRecursionBenchmark.iterative:·asm       262144  avgt            NaN             ---
TailRecursionBenchmark.tail_recursive       262144  avgt    5  5184.030 ± 58.373  us/op
TailRecursionBenchmark.tail_recursive:·asm  262144  avgt            NaN             ---
