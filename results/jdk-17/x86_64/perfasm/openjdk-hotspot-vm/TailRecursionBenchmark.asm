# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Xss64M
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
# Warmup Iteration   1: 269.630 us/op
# Warmup Iteration   2: 266.935 us/op
# Warmup Iteration   3: 266.779 us/op
# Warmup Iteration   4: 266.747 us/op
# Warmup Iteration   5: 266.762 us/op
Iteration   1: 266.739 us/op
Iteration   2: 266.769 us/op
Iteration   3: 266.751 us/op
Iteration   4: 266.734 us/op
Iteration   5: 266.745 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark.iterative":
  266.747 ±(99.9%) 0.052 us/op [Average]
  (min, avg, max) = (266.734, 266.747, 266.769), stdev = 0.014
  CI (99.9%): [266.695, 266.799] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark.iterative:·asm":
PrintAssembly processed: 117187 total address lines.
Perf output processed (skipped 56.021 seconds):
 Column 1: cycles (50471 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative, version 3, compile id 474 

               0x00007f8de8f655b3:   cmp    %r8d,%edx
               0x00007f8de8f655b6:   jg     0x00007f8de8f65582           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@1 (line 81)
               0x00007f8de8f655b8:   cmp    $0x3,%edx
               0x00007f8de8f655bb:   nopl   0x0(%rax,%rax,1)
          ╭    0x00007f8de8f655c0:   jle    0x00007f8de8f656b0
          │    0x00007f8de8f655c6:   mov    $0xfa0,%r8d
          │ ↗  0x00007f8de8f655cc:   mov    %edx,%r9d
          │ │  0x00007f8de8f655cf:   add    $0xfffffffd,%r9d
          │ │  0x00007f8de8f655d3:   cmp    $0xfa0,%r9d
   0.01%  │ │  0x00007f8de8f655da:   cmova  %r8d,%r9d
          │ │  0x00007f8de8f655de:   mov    %edx,%r11d
          │ │  0x00007f8de8f655e1:   sub    %r9d,%r11d
   0.01%  │ │  0x00007f8de8f655e4:   nopl   0x0(%rax,%rax,1)
          │ │  0x00007f8de8f655ec:   data16 data16 xchg %ax,%ax          ;*lload_2 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@4 (line 82)
   1.54%  │↗│  0x00007f8de8f655f0:   mov    %edx,%r9d
   3.24%  │││  0x00007f8de8f655f3:   and    $0xfffffc00,%r9d
   1.47%  │││  0x00007f8de8f655fa:   mov    %edx,%eax
   3.03%  │││  0x00007f8de8f655fc:   sub    %r9d,%eax                    ;*irem {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@15 (line 84)
   1.54%  │││  0x00007f8de8f655ff:   nop
   3.12%  │││  0x00007f8de8f65600:   cmp    %r10d,%eax
          │││  0x00007f8de8f65603:   jae    0x00007f8de8f65700
   1.42%  │││  0x00007f8de8f65609:   movslq 0x10(%rbx,%rax,4),%rbp
   3.05%  │││  0x00007f8de8f6560e:   add    %rcx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@18 (line 84)
   1.49%  │││  0x00007f8de8f65611:   mov    %edx,%r9d
   2.98%  │││  0x00007f8de8f65614:   dec    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@20 (line 85)
   1.50%  │││  0x00007f8de8f65617:   mov    %r9d,%esi
   3.25%  │││  0x00007f8de8f6561a:   and    $0xfffffc00,%esi
   1.60%  │││  0x00007f8de8f65620:   mov    %edx,%r13d
   3.05%  │││  0x00007f8de8f65623:   sub    %esi,%r13d
   1.47%  │││  0x00007f8de8f65626:   mov    %r13d,%eax
   3.11%  │││  0x00007f8de8f65629:   dec    %eax                         ;*irem {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@15 (line 84)
   1.54%  │││  0x00007f8de8f6562b:   cmp    %r10d,%eax
          │││  0x00007f8de8f6562e:   jae    0x00007f8de8f65706
   3.16%  │││  0x00007f8de8f65634:   movslq 0xc(%rbx,%r13,4),%rcx
   1.62%  │││  0x00007f8de8f65639:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@18 (line 84)
   3.16%  │││  0x00007f8de8f6563c:   mov    %edx,%r9d
   1.48%  │││  0x00007f8de8f6563f:   add    $0xfffffffe,%r9d             ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@20 (line 85)
   3.06%  │││  0x00007f8de8f65643:   mov    %r9d,%esi
   1.46%  │││  0x00007f8de8f65646:   and    $0xfffffc00,%esi
   2.99%  │││  0x00007f8de8f6564c:   mov    %edx,%eax
   1.51%  │││  0x00007f8de8f6564e:   sub    %esi,%eax
   3.07%  │││  0x00007f8de8f65650:   add    $0xfffffffe,%eax             ;*irem {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@15 (line 84)
   1.62%  │││  0x00007f8de8f65653:   cmp    %r10d,%eax
          │││  0x00007f8de8f65656:   jae    0x00007f8de8f65703
   3.19%  │││  0x00007f8de8f6565c:   movslq 0x10(%rbx,%rax,4),%rbp
   1.54%  │││  0x00007f8de8f65661:   add    %rcx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@18 (line 84)
   3.18%  │││  0x00007f8de8f65664:   mov    %edx,%r9d
   1.65%  │││  0x00007f8de8f65667:   add    $0xfffffffd,%r9d             ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@20 (line 85)
   3.12%  │││  0x00007f8de8f6566b:   mov    %r9d,%esi
   1.56%  │││  0x00007f8de8f6566e:   and    $0xfffffc00,%esi
   3.12%  │││  0x00007f8de8f65674:   mov    %edx,%eax
   1.53%  │││  0x00007f8de8f65676:   sub    %esi,%eax
   3.15%  │││  0x00007f8de8f65678:   add    $0xfffffffd,%eax             ;*irem {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@15 (line 84)
   1.54%  │││  0x00007f8de8f6567b:   nopl   0x0(%rax,%rax,1)
   3.08%  │││  0x00007f8de8f65680:   cmp    %r10d,%eax
          │││  0x00007f8de8f65683:   jae    0x00007f8de8f65706
   1.66%  │││  0x00007f8de8f65689:   movslq 0x10(%rbx,%rax,4),%rcx
   2.92%  │││  0x00007f8de8f6568e:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@18 (line 84)
   1.59%  │││  0x00007f8de8f65691:   add    $0xfffffffc,%edx             ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@20 (line 85)
   3.33%  │││  0x00007f8de8f65694:   cmp    %r11d,%edx
          │╰│  0x00007f8de8f65697:   jg     0x00007f8de8f655f0           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@23 (line 85)
   0.00%  │ │  0x00007f8de8f6569d:   mov    0x348(%r15),%r9              ; ImmutableOopMap {rbx=Oop rdi=NarrowOop r14=Oop }
          │ │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@23 (line 85)
   0.07%  │ │  0x00007f8de8f656a4:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@23 (line 85)
          │ │                                                            ;   {poll}
   0.04%  │ │  0x00007f8de8f656a7:   cmp    $0x3,%edx
          │ ╰  0x00007f8de8f656aa:   jg     0x00007f8de8f655cc
          ↘    0x00007f8de8f656b0:   test   %edx,%edx
               0x00007f8de8f656b2:   jle    0x00007f8de8f656e5           ;*lload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@4 (line 82)
   0.01%       0x00007f8de8f656b4:   mov    %edx,%r11d
               0x00007f8de8f656b7:   sar    $0x1f,%r11d
               0x00007f8de8f656bb:   shr    $0x16,%r11d
               0x00007f8de8f656bf:   add    %edx,%r11d
   0.00%       0x00007f8de8f656c2:   and    $0xfffffc00,%r11d
               0x00007f8de8f656c9:   mov    %edx,%eax
               0x00007f8de8f656cb:   sub    %r11d,%eax                   ;*irem {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@15 (line 84)
               0x00007f8de8f656ce:   cmp    %r10d,%eax
               0x00007f8de8f656d1:   jae    0x00007f8de8f65744
               0x00007f8de8f656d7:   movslq 0x10(%rbx,%rax,4),%r11
               0x00007f8de8f656dc:   add    %r11,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@18 (line 84)
               0x00007f8de8f656df:   dec    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@20 (line 85)
....................................................................................................
  97.81%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.81%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative, version 3, compile id 474 
   0.19%   [kernel.kallsyms]  native_write_msr 
   0.13%   [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.10%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.06%   [kernel.kallsyms]  zap_pte_range.isra.0 
   0.05%   [kernel.kallsyms]  page_remove_rmap 
   0.05%   [kernel.kallsyms]  __entry_text_start 
   0.05%   [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.05%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.04%   [kernel.kallsyms]  free_pcppages_bulk 
   0.04%   [kernel.kallsyms]  __mod_zone_page_state 
   0.03%   [kernel.kallsyms]  __free_one_page 
   0.03%   [kernel.kallsyms]  release_pages 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%   [kernel.kallsyms]  __mod_node_page_state 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%   [kernel.kallsyms]  __intel_pmu_enable_all.constprop.0 
   0.02%   [kernel.kallsyms]  cpuacct_charge 
   0.02%   [kernel.kallsyms]  __mod_lruvec_state 
   0.02%   [kernel.kallsyms]  free_unref_page_commit.isra.0 
   1.20%  <...other 316 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.82%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative, version 3, compile id 474 
   0.19%   [kernel.kallsyms]  native_write_msr 
   0.15%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.13%   [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.12%                      <unknown> 
   0.08%   [kernel.kallsyms]  zap_pte_range.isra.0 
   0.07%   [kernel.kallsyms]  __free_one_page 
   0.07%   [kernel.kallsyms]  release_pages 
   0.05%   [kernel.kallsyms]  page_remove_rmap 
   0.05%   [kernel.kallsyms]  __entry_text_start 
   0.05%   [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.05%   [kernel.kallsyms]  free_pcppages_bulk 
   0.04%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.04%   [kernel.kallsyms]  __mod_zone_page_state 
   0.03%   [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%   [kernel.kallsyms]  __mod_node_page_state 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%   [kernel.kallsyms]  __mod_lruvec_state 
   0.92%  <...other 199 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  97.83%         c2, level 4
   1.64%   [kernel.kallsyms]
   0.18%           libjvm.so
   0.12%                    
   0.10%        libc-2.31.so
   0.07%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.01%              [vdso]
....................................................................................................
  99.99%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Xss64M
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark.tail_recursive
# Parameters: (n = 262144)

# Run progress: 50.00% complete, ETA 00:01:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3405.798 us/op
# Warmup Iteration   2: 3369.357 us/op
# Warmup Iteration   3: 3390.222 us/op
# Warmup Iteration   4: 3338.844 us/op
# Warmup Iteration   5: 3338.192 us/op
Iteration   1: 3339.818 us/op
Iteration   2: 3342.708 us/op
Iteration   3: 3340.557 us/op
Iteration   4: 3338.721 us/op
Iteration   5: 3338.147 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark.tail_recursive":
  3339.990 ±(99.9%) 6.874 us/op [Average]
  (min, avg, max) = (3338.147, 3339.990, 3342.708), stdev = 1.785
  CI (99.9%): [3333.116, 3346.864] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark.tail_recursive:·asm":
PrintAssembly processed: 116785 total address lines.
Perf output processed (skipped 56.073 seconds):
 Column 1: cycles (50621 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive, version 4, compile id 476 

                 # parm1:    rcx:rcx   = long
                 #           [sp+0x40]  (sp of caller)
                 0x00007f28a4f652a0:   mov    0x8(%rsi),%r10d
                 0x00007f28a4f652a4:   movabs $0x800000000,%r11
                 0x00007f28a4f652ae:   add    %r11,%r10
                 0x00007f28a4f652b1:   cmp    %r10,%rax
                 0x00007f28a4f652b4:   jne    0x00007f28a49fbd80           ;   {runtime_call ic_miss_stub}
                 0x00007f28a4f652ba:   xchg   %ax,%ax
                 0x00007f28a4f652bc:   nopl   0x0(%rax)
               [Verified Entry Point]
   1.40%     ↗   0x00007f28a4f652c0:   mov    %eax,-0x14000(%rsp)
  30.32%     │   0x00007f28a4f652c7:   push   %rbp
   0.02%     │   0x00007f28a4f652c8:   sub    $0x30,%rsp                   ;*synchronization entry
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@-1 (line 72)
   0.03%     │   0x00007f28a4f652cc:   mov    %rsi,%rdi
   1.56%     │   0x00007f28a4f652cf:   test   %edx,%edx
          ╭  │   0x00007f28a4f652d1:   je     0x00007f28a4f6536b           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@1 (line 72)
   0.00%  │  │   0x00007f28a4f652d7:   mov    0x14(%rsi),%r8d              ;*getfield A {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@12 (line 75)
   0.02%  │  │   0x00007f28a4f652db:   mov    %edx,%r11d
          │  │   0x00007f28a4f652de:   sar    $0x1f,%r11d
   1.47%  │  │   0x00007f28a4f652e2:   shr    $0x16,%r11d
   0.00%  │  │   0x00007f28a4f652e6:   add    %edx,%r11d
   0.01%  │  │   0x00007f28a4f652e9:   and    $0xfffffc00,%r11d
          │  │   0x00007f28a4f652f0:   mov    %edx,%r10d
   1.53%  │  │   0x00007f28a4f652f3:   sub    %r11d,%r10d                  ;*irem {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@19 (line 75)
   0.00%  │  │   0x00007f28a4f652f6:   data16 nopw 0x0(%rax,%rax,1)
   0.03%  │  │   0x00007f28a4f65300:   mov    0xc(%r12,%r8,8),%ebx         ; implicit exception: dispatches to 0x00007f28a4f653bd
          │  │                                                             ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@20 (line 75)
   0.03%  │  │   0x00007f28a4f65305:   mov    %edx,%ebp
   1.46%  │  │   0x00007f28a4f65307:   dec    %ebp                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@9 (line 75)
   0.01%  │  │   0x00007f28a4f65309:   cmp    %ebx,%r10d
          │╭ │   0x00007f28a4f6530c:   jae    0x00007f28a4f65370
   0.04%  ││ │   0x00007f28a4f65312:   lea    (%r12,%r8,8),%r11
   0.00%  ││ │   0x00007f28a4f65316:   movslq 0x10(%r11,%r10,4),%rax
   2.26%  ││ │   0x00007f28a4f6531b:   add    %rcx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@22 (line 75)
   0.09%  ││ │   0x00007f28a4f6531e:   xchg   %ax,%ax
   0.03%  ││ │   0x00007f28a4f65320:   cmp    $0x1,%edx
          ││╭│   0x00007f28a4f65323:   je     0x00007f28a4f65358           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@1 (line 72)
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
   0.00%  ││││   0x00007f28a4f65325:   mov    %edx,%r9d
   1.39%  ││││   0x00007f28a4f65328:   add    $0xfffffffe,%r9d             ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@9 (line 75)
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
   0.09%  ││││   0x00007f28a4f6532c:   sar    $0x1f,%ebp
   0.03%  ││││   0x00007f28a4f6532f:   shr    $0x16,%ebp
   0.00%  ││││   0x00007f28a4f65332:   add    %edx,%ebp
   1.41%  ││││   0x00007f28a4f65334:   dec    %ebp
   0.11%  ││││   0x00007f28a4f65336:   and    $0xfffffc00,%ebp
   0.02%  ││││   0x00007f28a4f6533c:   sub    %ebp,%edx
   0.00%  ││││   0x00007f28a4f6533e:   mov    %edx,%ebp
   1.33%  ││││   0x00007f28a4f65340:   dec    %ebp                         ;*irem {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@19 (line 75)
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
   0.11%  ││││   0x00007f28a4f65342:   cmp    %ebx,%ebp
          ││││   0x00007f28a4f65344:   jae    0x00007f28a4f65390
   0.03%  ││││   0x00007f28a4f65346:   movslq 0xc(%r11,%rdx,4),%rcx
   1.87%  ││││   0x00007f28a4f6534b:   add    %rax,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@22 (line 75)
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
   1.28%  ││││   0x00007f28a4f6534e:   mov    %r9d,%edx
   0.09%  ││││   0x00007f28a4f65351:   xchg   %ax,%ax
   0.03%  │││╰   0x00007f28a4f65353:   call   0x00007f28a4f652c0           ; ImmutableOopMap {}
          │││                                                              ;*invokevirtual recursive {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 75)
          │││                                                              ;   {optimized virtual_call}
  24.65%  ││↘ ↗  0x00007f28a4f65358:   add    $0x30,%rsp
  10.33%  ││  │  0x00007f28a4f6535c:   pop    %rbp
  14.31%  ││  │  0x00007f28a4f6535d:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ││  │  0x00007f28a4f65364:   ja     0x00007f28a4f653cc
   0.06%  ││  │  0x00007f28a4f6536a:   ret    
          ↘│  │  0x00007f28a4f6536b:   mov    %rcx,%rax
           │  ╰  0x00007f28a4f6536e:   jmp    0x00007f28a4f65358
           ↘     0x00007f28a4f65370:   mov    $0xffffffe4,%esi
                 0x00007f28a4f65375:   mov    %rdi,(%rsp)
                 0x00007f28a4f65379:   mov    %rcx,0x8(%rsp)
                 0x00007f28a4f6537e:   mov    %r8d,0x10(%rsp)
                 0x00007f28a4f65383:   mov    %r10d,0x14(%rsp)
                 0x00007f28a4f65388:   data16 xchg %ax,%ax
                 0x00007f28a4f6538b:   call   0x00007f28a4a01600           ; ImmutableOopMap {[0]=Oop [16]=NarrowOop }
                                                                           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  97.48%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.48%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive, version 4, compile id 476 
   0.89%   [kernel.kallsyms]  native_write_msr 
   0.08%                      <unknown> 
   0.07%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.06%                      <unknown> 
   0.06%   [kernel.kallsyms]  __entry_text_start 
   0.05%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.05%   [kernel.kallsyms]  zap_pte_range.isra.0 
   0.04%   [kernel.kallsyms]  page_remove_rmap 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.04%   [kernel.kallsyms]  free_pcppages_bulk 
   0.04%   [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.03%   [kernel.kallsyms]  __mod_zone_page_state 
   0.03%   [kernel.kallsyms]  __mod_node_page_state 
   0.03%   [kernel.kallsyms]  __free_one_page 
   0.03%   [kernel.kallsyms]  release_pages 
   0.02%   [kernel.kallsyms]  free_swap_cache 
   0.02%   [kernel.kallsyms]  release_pages 
   0.02%   [kernel.kallsyms]  free_unref_page_list 
   0.02%   [kernel.kallsyms]  __mod_lruvec_state 
   0.92%  <...other 278 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.48%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive, version 4, compile id 476 
   0.89%   [kernel.kallsyms]  native_write_msr 
   0.22%                      <unknown> 
   0.12%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.08%   [kernel.kallsyms]  release_pages 
   0.08%   [kernel.kallsyms]  __free_one_page 
   0.08%   [kernel.kallsyms]  zap_pte_range.isra.0 
   0.06%   [kernel.kallsyms]  __entry_text_start 
   0.05%   [kernel.kallsyms]  free_pcppages_bulk 
   0.04%   [kernel.kallsyms]  page_remove_rmap 
   0.04%   [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.03%   [kernel.kallsyms]  __mod_node_page_state 
   0.03%   [kernel.kallsyms]  __mod_zone_page_state 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.03%   [kernel.kallsyms]  uncharge_page 
   0.02%   [kernel.kallsyms]  free_swap_cache 
   0.02%   [kernel.kallsyms]  cgroup_rstat_updated 
   0.02%   [kernel.kallsyms]  free_unref_page_list 
   0.02%   [kernel.kallsyms]  __mod_lruvec_state 
   0.64%  <...other 183 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.48%         c2, level 4
   1.96%   [kernel.kallsyms]
   0.22%                    
   0.16%           libjvm.so
   0.10%        libc-2.31.so
   0.04%         interpreter
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.01%              [vdso]
   0.00%          ld-2.31.so
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:03:39

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

Benchmark                                      (n)  Mode  Cnt     Score   Error  Units
TailRecursionBenchmark.iterative            262144  avgt    5   266.747 ± 0.052  us/op
TailRecursionBenchmark.iterative:·asm       262144  avgt            NaN            ---
TailRecursionBenchmark.tail_recursive       262144  avgt    5  3339.990 ± 6.874  us/op
TailRecursionBenchmark.tail_recursive:·asm  262144  avgt            NaN            ---
