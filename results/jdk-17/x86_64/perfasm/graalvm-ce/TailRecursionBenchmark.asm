# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
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
# Warmup Iteration   1: 332.089 us/op
# Warmup Iteration   2: 329.790 us/op
# Warmup Iteration   3: 331.200 us/op
# Warmup Iteration   4: 329.834 us/op
# Warmup Iteration   5: 329.534 us/op
Iteration   1: 329.542 us/op
Iteration   2: 331.593 us/op
Iteration   3: 329.535 us/op
Iteration   4: 329.518 us/op
Iteration   5: 329.518 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark.iterative":
  329.941 ±(99.9%) 3.556 us/op [Average]
  (min, avg, max) = (329.518, 329.941, 331.593), stdev = 0.923
  CI (99.9%): [326.385, 333.497] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark.iterative:·asm":
PrintAssembly processed: 193198 total address lines.
Perf output processed (skipped 59.033 seconds):
 Column 1: cycles (50570 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative, version 4, compile id 729 

               0x00007f5362ffbd77:   mov    %edx,%r8d
               0x00007f5362ffbd7a:   mov    %rcx,%r11
               0x00007f5362ffbd7d:   data16 xchg %ax,%ax
          ╭    0x00007f5362ffbd80:   jmp    0x00007f5362ffbdd4           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@0 (line 81)
          │    0x00007f5362ffbd85:   data16 data16 nopw 0x0(%rax,%rax,1)
          │    0x00007f5362ffbd90:   data16 data16 xchg %ax,%ax
          │    0x00007f5362ffbd94:   nopl   0x0(%rax,%rax,1)
          │    0x00007f5362ffbd9c:   data16 data16 xchg %ax,%ax          ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@1 (line 81)
   7.66%  │↗   0x00007f5362ffbda0:   mov    %r8d,%r9d
   7.64%  ││   0x00007f5362ffbda3:   sar    $0x1f,%r9d
   7.38%  ││   0x00007f5362ffbda7:   shr    $0x16,%r9d
   7.30%  ││   0x00007f5362ffbdab:   add    %r8d,%r9d
   7.35%  ││   0x00007f5362ffbdae:   and    $0xfffffc00,%r9d
   7.40%  ││   0x00007f5362ffbdb5:   mov    %r8d,%ecx
   7.65%  ││   0x00007f5362ffbdb8:   sub    %r9d,%ecx
   7.67%  ││   0x00007f5362ffbdbb:   nopl   0x0(%rax,%rax,1)
   7.17%  ││   0x00007f5362ffbdc0:   cmp    %ecx,%r10d
          ││   0x00007f5362ffbdc3:   jbe    0x00007f5362ffbe10           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@16 (line 84)
   7.57%  ││   0x00007f5362ffbdc9:   movslq 0x10(%rax,%rcx,4),%r9        ;*i2l {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@17 (line 84)
   7.71%  ││   0x00007f5362ffbdce:   add    %r9,%r11                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@18 (line 84)
   7.49%  ││   0x00007f5362ffbdd1:   dec    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@20 (line 85)
   7.51%  ↘│   0x00007f5362ffbdd4:   test   %r8d,%r8d
           ╰   0x00007f5362ffbdd7:   jne    0x00007f5362ffbda0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@1 (line 81)
            ↗  0x00007f5362ffbdd9:   mov    %r11,%rax                    ;*lreturn {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@5 (line 82)
            │  0x00007f5362ffbddc:   mov    0x10(%rsp),%rbp
   0.00%    │  0x00007f5362ffbde1:   add    $0x18,%rsp
            │  0x00007f5362ffbde5:   mov    0x348(%r15),%rcx
            │  0x00007f5362ffbdec:   test   %eax,(%rcx)                  ;   {poll_return}
   0.00%    │  0x00007f5362ffbdee:   ret                                 ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@1 (line 81)
            │  0x00007f5362ffbdef:   mov    %rcx,%r11
            ╰  0x00007f5362ffbdf2:   jmp    0x00007f5362ffbdd9
               0x00007f5362ffbdf4:   movl   $0xffffffe5,0x370(%r15)      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@16 (line 84)
               0x00007f5362ffbdff:   movq   $0x0,0x378(%r15)
               0x00007f5362ffbe0a:   call   0x00007f535b50527a           ; ImmutableOopMap {rsi=Oop }
                                                                         ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@0 (line 81)
                                                                         ;   {runtime_call DeoptimizationBlob}
....................................................................................................
  97.52%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.52%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative, version 4, compile id 729 
   0.79%    [kernel.kallsyms]  native_write_msr 
   0.12%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.07%    [kernel.kallsyms]  __entry_text_start 
   0.07%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.06%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.05%    [kernel.kallsyms]  page_remove_rmap 
   0.05%    [kernel.kallsyms]  __free_one_page 
   0.05%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.04%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.03%    [kernel.kallsyms]  __mod_zone_page_state 
   0.03%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.03%    [kernel.kallsyms]  free_pcppages_bulk 
   0.02%    [kernel.kallsyms]  __intel_pmu_enable_all.constprop.0 
   0.02%    [kernel.kallsyms]  release_pages 
   0.02%    [kernel.kallsyms]  __free_one_page 
   0.02%    [kernel.kallsyms]  uncharge_page 
   0.02%    [kernel.kallsyms]  mutex_unlock 
   0.02%           ld-2.31.so  __tls_get_addr 
   0.02%    [kernel.kallsyms]  free_swap_cache 
   0.96%  <...other 294 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.52%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative, version 4, compile id 729 
   0.79%    [kernel.kallsyms]  native_write_msr 
   0.12%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.10%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.09%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.09%    [kernel.kallsyms]  __free_one_page 
   0.09%                       <unknown> 
   0.07%    [kernel.kallsyms]  __entry_text_start 
   0.07%    [kernel.kallsyms]  release_pages 
   0.05%    [kernel.kallsyms]  page_remove_rmap 
   0.05%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.03%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.03%    [kernel.kallsyms]  free_pcppages_bulk 
   0.03%    [kernel.kallsyms]  __mod_zone_page_state 
   0.03%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.02%    [kernel.kallsyms]  __intel_pmu_enable_all.constprop.0 
   0.02%    [kernel.kallsyms]  uncharge_page 
   0.02%    [kernel.kallsyms]  mutex_unlock 
   0.02%           ld-2.31.so  __tls_get_addr 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.73%  <...other 193 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.53%       jvmci, level 4
   2.05%    [kernel.kallsyms]
   0.15%            libjvm.so
   0.09%                     
   0.09%         libc-2.31.so
   0.02%           ld-2.31.so
   0.02%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.02%  libjvmcicompiler.so
   0.01%          interpreter
   0.00%               [vdso]
   0.00%         libm-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
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
# Warmup Iteration   1: 855.528 us/op
# Warmup Iteration   2: 855.383 us/op
# Warmup Iteration   3: 855.464 us/op
# Warmup Iteration   4: 854.796 us/op
# Warmup Iteration   5: 851.000 us/op
Iteration   1: 855.057 us/op
Iteration   2: 852.815 us/op
Iteration   3: 853.446 us/op
Iteration   4: 853.460 us/op
Iteration   5: 853.288 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark.tail_recursive":
  853.613 ±(99.9%) 3.267 us/op [Average]
  (min, avg, max) = (852.815, 853.613, 855.057), stdev = 0.848
  CI (99.9%): [850.346, 856.880] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark.tail_recursive:·asm":
PrintAssembly processed: 193242 total address lines.
Perf output processed (skipped 59.066 seconds):
 Column 1: cycles (50405 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive, version 2, compile id 727 

              #           [sp+0x20]  (sp of caller)
              0x00007f3976ffc820:   mov    0x8(%rsi),%r10d
              0x00007f3976ffc824:   movabs $0x800000000,%r12
              0x00007f3976ffc82e:   add    %r12,%r10
              0x00007f3976ffc831:   xor    %r12,%r12
              0x00007f3976ffc834:   cmp    %r10,%rax
              0x00007f3976ffc837:   jne    0x00007f396f4ff780           ;   {runtime_call ic_miss_stub}
              0x00007f3976ffc83d:   nop
              0x00007f3976ffc83e:   xchg   %ax,%ax
            [Verified Entry Point]
   0.81%   ↗  0x00007f3976ffc840:   mov    %eax,-0x14000(%rsp)
   0.85%   │  0x00007f3976ffc847:   sub    $0x18,%rsp
   0.43%   │  0x00007f3976ffc84b:   mov    %rbp,0x10(%rsp)
   0.38%   │  0x00007f3976ffc850:   test   %edx,%edx
          ╭│  0x00007f3976ffc852:   je     0x00007f3976ffc9c4           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@1 (line 72)
   0.42%  ││  0x00007f3976ffc858:   mov    0x14(%rsi),%r10d             ; ImmutableOopMap {rsi=Oop r10=NarrowOop }
          ││                                                            ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@0 (line 72)
   0.44%  ││  0x00007f3976ffc85c:   mov    0xc(,%r10,8),%r11d           ; implicit exception: dispatches to 0x00007f3976ffca0f
   0.42%  ││  0x00007f3976ffc864:   mov    %edx,%r8d
   0.36%  ││  0x00007f3976ffc867:   sar    $0x1f,%r8d
   0.44%  ││  0x00007f3976ffc86b:   shr    $0x16,%r8d
   0.37%  ││  0x00007f3976ffc86f:   add    %edx,%r8d
   0.41%  ││  0x00007f3976ffc872:   and    $0xfffffc00,%r8d
   0.44%  ││  0x00007f3976ffc879:   mov    %edx,%r9d
   0.45%  ││  0x00007f3976ffc87c:   sub    %r8d,%r9d
   0.43%  ││  0x00007f3976ffc87f:   nop
   0.39%  ││  0x00007f3976ffc880:   cmp    %r9d,%r11d
          ││  0x00007f3976ffc883:   jbe    0x00007f3976ffc9f3           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@20 (line 75)
   0.44%  ││  0x00007f3976ffc889:   shl    $0x3,%r10                    ;*getfield A {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@12 (line 75)
   0.43%  ││  0x00007f3976ffc88d:   movslq 0x10(%r10,%r9,4),%r8         ;*i2l {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@21 (line 75)
   0.40%  ││  0x00007f3976ffc892:   add    %rcx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@22 (line 75)
   0.44%  ││  0x00007f3976ffc895:   cmp    $0x1,%edx
          ││  0x00007f3976ffc898:   je     0x00007f3976ffc9da           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@1 (line 72)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
   0.38%  ││  0x00007f3976ffc89e:   mov    %edx,%r9d
   0.43%  ││  0x00007f3976ffc8a1:   dec    %r9d                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@9 (line 75)
   0.42%  ││  0x00007f3976ffc8a4:   mov    %r9d,%ebx
   0.39%  ││  0x00007f3976ffc8a7:   sar    $0x1f,%ebx
   0.39%  ││  0x00007f3976ffc8aa:   shr    $0x16,%ebx
   0.47%  ││  0x00007f3976ffc8ad:   add    %r9d,%ebx
   0.38%  ││  0x00007f3976ffc8b0:   and    $0xfffffc00,%ebx
   0.42%  ││  0x00007f3976ffc8b6:   sub    %ebx,%r9d
   0.39%  ││  0x00007f3976ffc8b9:   nopl   0x0(%rax)
   0.40%  ││  0x00007f3976ffc8c0:   cmp    %r9d,%r11d
          ││  0x00007f3976ffc8c3:   jbe    0x00007f3976ffc9f3           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@20 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
   0.38%  ││  0x00007f3976ffc8c9:   movslq 0x10(%r10,%r9,4),%r9         ;*i2l {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@21 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
   0.41%  ││  0x00007f3976ffc8ce:   add    %r9,%r8                      ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@22 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
   0.38%  ││  0x00007f3976ffc8d1:   cmp    $0x2,%edx
          ││  0x00007f3976ffc8d4:   je     0x00007f3976ffc9df           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@1 (line 72)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
   0.48%  ││  0x00007f3976ffc8da:   lea    -0x2(%rdx),%r9d              ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@9 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
   0.41%  ││  0x00007f3976ffc8de:   mov    %r9d,%ebx
   0.41%  ││  0x00007f3976ffc8e1:   sar    $0x1f,%ebx
   0.37%  ││  0x00007f3976ffc8e4:   shr    $0x16,%ebx
   0.39%  ││  0x00007f3976ffc8e7:   add    %r9d,%ebx
   0.39%  ││  0x00007f3976ffc8ea:   and    $0xfffffc00,%ebx
   0.45%  ││  0x00007f3976ffc8f0:   sub    %ebx,%r9d
   0.44%  ││  0x00007f3976ffc8f3:   cmp    %r9d,%r11d
          ││  0x00007f3976ffc8f6:   jbe    0x00007f3976ffc9f3           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@20 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
   0.42%  ││  0x00007f3976ffc8fc:   movslq 0x10(%r10,%r9,4),%r9         ;*i2l {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@21 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
   0.38%  ││  0x00007f3976ffc901:   add    %r9,%r8                      ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@22 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
   0.40%  ││  0x00007f3976ffc904:   cmp    $0x3,%edx
          ││  0x00007f3976ffc907:   je     0x00007f3976ffc9e4           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@1 (line 72)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
   0.38%  ││  0x00007f3976ffc90d:   lea    -0x3(%rdx),%r9d              ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@9 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
   0.44%  ││  0x00007f3976ffc911:   mov    %r9d,%ebx
   0.38%  ││  0x00007f3976ffc914:   sar    $0x1f,%ebx
   0.45%  ││  0x00007f3976ffc917:   shr    $0x16,%ebx
   0.40%  ││  0x00007f3976ffc91a:   add    %r9d,%ebx
   0.43%  ││  0x00007f3976ffc91d:   and    $0xfffffc00,%ebx
   0.39%  ││  0x00007f3976ffc923:   sub    %ebx,%r9d
   0.43%  ││  0x00007f3976ffc926:   cmp    %r9d,%r11d
          ││  0x00007f3976ffc929:   jbe    0x00007f3976ffc9f3           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@20 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
   0.34%  ││  0x00007f3976ffc92f:   movslq 0x10(%r10,%r9,4),%r9         ;*i2l {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@21 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
   0.45%  ││  0x00007f3976ffc934:   add    %r9,%r8                      ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@22 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
   0.43%  ││  0x00007f3976ffc937:   cmp    $0x4,%edx
          ││  0x00007f3976ffc93a:   je     0x00007f3976ffc9e9           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@1 (line 72)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
   0.44%  ││  0x00007f3976ffc940:   lea    -0x4(%rdx),%r9d              ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@9 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
   0.38%  ││  0x00007f3976ffc944:   mov    %r9d,%ebx
   0.43%  ││  0x00007f3976ffc947:   sar    $0x1f,%ebx
   0.38%  ││  0x00007f3976ffc94a:   shr    $0x16,%ebx
   0.43%  ││  0x00007f3976ffc94d:   add    %r9d,%ebx
   0.40%  ││  0x00007f3976ffc950:   and    $0xfffffc00,%ebx
   0.39%  ││  0x00007f3976ffc956:   sub    %ebx,%r9d
   0.45%  ││  0x00007f3976ffc959:   nopl   0x0(%rax)
   0.48%  ││  0x00007f3976ffc960:   cmp    %r9d,%r11d
          ││  0x00007f3976ffc963:   jbe    0x00007f3976ffc9f3           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@20 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
   0.39%  ││  0x00007f3976ffc969:   movslq 0x10(%r10,%r9,4),%r9         ;*i2l {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@21 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
   0.41%  ││  0x00007f3976ffc96e:   add    %r9,%r8                      ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@22 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
   0.43%  ││  0x00007f3976ffc971:   cmp    $0x5,%edx
          ││  0x00007f3976ffc974:   je     0x00007f3976ffc9ee           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@1 (line 72)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
   0.43%  ││  0x00007f3976ffc97a:   lea    -0x5(%rdx),%r9d              ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@9 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
   0.37%  ││  0x00007f3976ffc97e:   mov    %r9d,%ebx
   0.42%  ││  0x00007f3976ffc981:   sar    $0x1f,%ebx
   0.46%  ││  0x00007f3976ffc984:   shr    $0x16,%ebx
   0.43%  ││  0x00007f3976ffc987:   add    %r9d,%ebx
   0.43%  ││  0x00007f3976ffc98a:   and    $0xfffffc00,%ebx
   0.44%  ││  0x00007f3976ffc990:   sub    %ebx,%r9d
   0.42%  ││  0x00007f3976ffc993:   cmp    %r9d,%r11d
          ││  0x00007f3976ffc996:   jbe    0x00007f3976ffc9f3           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@20 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
   0.43%  ││  0x00007f3976ffc99c:   lea    -0x6(%rdx),%edx              ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@9 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
   0.39%  ││  0x00007f3976ffc99f:   movslq 0x10(%r10,%r9,4),%rcx        ;*i2l {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@21 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
   0.43%  ││  0x00007f3976ffc9a4:   add    %rcx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@22 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
   0.40%  ││  0x00007f3976ffc9a7:   mov    %r8,%rcx                     ;*invokevirtual recursive {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
   0.42%  ││  0x00007f3976ffc9aa:   nop
   0.35%  │╰  0x00007f3976ffc9ab:   call   0x00007f3976ffc840           ; ImmutableOopMap {}
          │                                                             ;*invokevirtual recursive {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          │                                                             ;   {optimized virtual_call}
  27.23%  │   0x00007f3976ffc9b0:   nop
   1.67%  │   0x00007f3976ffc9b1:   mov    0x10(%rsp),%rbp
  28.93%  │   0x00007f3976ffc9b6:   add    $0x18,%rsp
   0.23%  │   0x00007f3976ffc9ba:   mov    0x348(%r15),%rcx
   0.01%  │   0x00007f3976ffc9c1:   test   %eax,(%rcx)                  ;   {poll_return}
   5.60%  │   0x00007f3976ffc9c3:   ret                                 ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@1 (line 72)
          ↘   0x00007f3976ffc9c4:   mov    %rcx,%rax                    ;*lreturn {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@5 (line 73)
              0x00007f3976ffc9c7:   mov    0x10(%rsp),%rbp
              0x00007f3976ffc9cc:   add    $0x18,%rsp
              0x00007f3976ffc9d0:   mov    0x348(%r15),%rcx
              0x00007f3976ffc9d7:   test   %eax,(%rcx)                  ;   {poll_return}
              0x00007f3976ffc9d9:   ret                                 ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@1 (line 72)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
....................................................................................................
  97.61%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.61%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive, version 2, compile id 727 
   0.22%    [kernel.kallsyms]  native_write_msr 
   0.13%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.08%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.08%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.07%    [kernel.kallsyms]  __entry_text_start 
   0.07%    [kernel.kallsyms]  irqentry_exit_to_user_mode 
   0.06%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.05%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.04%    [kernel.kallsyms]  __free_one_page 
   0.03%    [kernel.kallsyms]  release_pages 
   0.03%    [kernel.kallsyms]  free_pcppages_bulk 
   0.02%    [kernel.kallsyms]  __mod_node_page_state 
   0.02%    [kernel.kallsyms]  mutex_unlock 
   0.02%    [kernel.kallsyms]  mutex_lock 
   0.02%    [kernel.kallsyms]  rcu_read_unlock_strict 
   0.02%    [kernel.kallsyms]  free_unref_page_commit.isra.0 
   0.02%    [kernel.kallsyms]  release_pages 
   0.02%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.02%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   1.37%  <...other 411 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.61%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive, version 2, compile id 727 
   0.22%    [kernel.kallsyms]  native_write_msr 
   0.14%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.13%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.11%                       <unknown> 
   0.10%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.08%    [kernel.kallsyms]  __free_one_page 
   0.08%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.07%    [kernel.kallsyms]  __entry_text_start 
   0.07%    [kernel.kallsyms]  irqentry_exit_to_user_mode 
   0.06%    [kernel.kallsyms]  release_pages 
   0.04%    [kernel.kallsyms]  free_pcppages_bulk 
   0.04%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.03%    [kernel.kallsyms]  __irqentry_text_end 
   0.03%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.03%    [kernel.kallsyms]  free_unref_page_commit.isra.0 
   0.02%    [kernel.kallsyms]  mutex_lock 
   0.02%    [kernel.kallsyms]  __mod_node_page_state 
   0.02%    [kernel.kallsyms]  mutex_unlock 
   0.02%    [kernel.kallsyms]  page_remove_rmap 
   1.09%  <...other 293 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.61%       jvmci, level 4
   1.89%    [kernel.kallsyms]
   0.16%            libjvm.so
   0.11%                     
   0.09%         libc-2.31.so
   0.07%  libjvmcicompiler.so
   0.02%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%          c1, level 3
   0.01%          interpreter
   0.00%      perf-162230.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:03:46

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

Benchmark                                      (n)  Mode  Cnt    Score   Error  Units
TailRecursionBenchmark.iterative            262144  avgt    5  329.941 ± 3.556  us/op
TailRecursionBenchmark.iterative:·asm       262144  avgt           NaN            ---
TailRecursionBenchmark.tail_recursive       262144  avgt    5  853.613 ± 3.267  us/op
TailRecursionBenchmark.tail_recursive:·asm  262144  avgt           NaN            ---
