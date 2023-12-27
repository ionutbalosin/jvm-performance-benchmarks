# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.if_instanceof_concrete_array

# Run progress: 0.00% complete, ETA 00:13:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 4.431 ns/op
# Warmup Iteration   2: 4.390 ns/op
# Warmup Iteration   3: 4.373 ns/op
# Warmup Iteration   4: 4.131 ns/op
# Warmup Iteration   5: 4.222 ns/op
Iteration   1: 4.114 ns/op
Iteration   2: 4.117 ns/op
Iteration   3: 3.703 ns/op
Iteration   4: 3.661 ns/op
Iteration   5: 3.716 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.if_instanceof_concrete_array":
  3.862 ±(99.9%) 0.894 ns/op [Average]
  (min, avg, max) = (3.661, 3.862, 4.117), stdev = 0.232
  CI (99.9%): [2.968, 4.756] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.if_instanceof_concrete_array:asm":
PrintAssembly processed: 222186 total address lines.
Perf output processed (skipped 82.871 seconds):
 Column 1: cycles (49927 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array, version 3, compile id 1081 

                  # {method} {0x00007f89b4484480} &apos;if_instanceof_concrete_array&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark&apos;
                  #           [sp+0x20]  (sp of caller)
                  0x00007f8a43194600:   mov    0x8(%rsi),%r10d
                  0x00007f8a43194604:   movabs $0x7f89bf000000,%r12
                  0x00007f8a4319460e:   add    %r12,%r10
                  0x00007f8a43194611:   xor    %r12,%r12
                  0x00007f8a43194614:   cmp    %r10,%rax
                  0x00007f8a43194617:   jne    0x00007f8a42af9080           ;   {runtime_call ic_miss_stub}
                  0x00007f8a4319461d:   data16 xchg %ax,%ax
                [Verified Entry Point]
   0.00%          0x00007f8a43194620:   mov    %eax,-0x14000(%rsp)
   0.00%          0x00007f8a43194627:   sub    $0x18,%rsp
                  0x00007f8a4319462b:   nop
                  0x00007f8a4319462c:   cmpl   $0x1,0x20(%r15)
                  0x00007f8a43194634:   jne    0x00007f8a43194700
                  0x00007f8a4319463a:   mov    %rbp,0x10(%rsp)
                  0x00007f8a4319463f:   mov    0x14(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                            ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@0 (line 88)
                  0x00007f8a43194642:   mov    0xc(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007f8a43194726
   0.01%          0x00007f8a4319464a:   test   %r10d,%r10d
          ╭       0x00007f8a4319464d:   je     0x00007f8a431946d5           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@16 (line 89)
   0.00%  │       0x00007f8a43194653:   mov    0x10(,%rax,8),%r11d          ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
          │                                                                 ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                                 ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@0 (line 88)
          │       0x00007f8a4319465b:   mov    0xc(,%r11,8),%r11d           ; implicit exception: dispatches to 0x00007f8a4319474d
   0.02%  │       0x00007f8a43194663:   mov    %r10d,%r8d
          │       0x00007f8a43194666:   dec    %r8d
          │       0x00007f8a43194669:   movslq %r8d,%r8
          │       0x00007f8a4319466c:   mov    %r10d,%r9d
          │       0x00007f8a4319466f:   cmp    %r8,%r9
          │╭      0x00007f8a43194672:   ja     0x00007f8a4319468a
          ││      0x00007f8a43194678:   nopl   0x0(%rax,%rax,1)
          ││      0x00007f8a43194680:   cmp    $0x2,%r10d
          ││╭     0x00007f8a43194684:   jae    0x00007f8a431946dd           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@22 (line 89)
          │↘│     0x00007f8a4319468a:   shl    $0x3,%rax                    ;*getfield asIsArray {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@3 (line 89)
          │ │     0x00007f8a4319468e:   mov    %r11d,%r8d
          │ │     0x00007f8a43194691:   mov    $0x1,%r11d
          │ │╭    0x00007f8a43194697:   jmp    0x00007f8a431946b6           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@13 (line 89)
          │ ││    0x00007f8a4319469c:   nopl   0x0(%rax)                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@16 (line 89)
   0.05%  │ ││↗   0x00007f8a431946a0:   mov    0x10(%rax,%r11,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@22 (line 89)
  15.55%  │ │││   0x00007f8a431946a5:   mov    %r8d,%ecx                    ; ImmutableOopMap {rax=Oop r9=NarrowOop }
          │ │││                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │ │││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@13 (line 89)
   0.07%  │ │││   0x00007f8a431946a8:   add    0xc(,%r9,8),%ecx             ; implicit exception: dispatches to 0x00007f8a43194770
  67.19%  │ │││   0x00007f8a431946b0:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@33 (line 89)
   0.34%  │ │││   0x00007f8a431946b3:   mov    %ecx,%r8d                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@13 (line 89)
  12.04%  │ │↘│   0x00007f8a431946b6:   cmp    %r11d,%r10d
          │ │ ╰   0x00007f8a431946b9:   jg     0x00007f8a431946a0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@16 (line 89)
          │ │  ↗  0x00007f8a431946bb:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │ │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@40 (line 92)
   0.00%  │ │  │  0x00007f8a431946be:   mov    0x10(%rsp),%rbp
   0.00%  │ │  │  0x00007f8a431946c3:   add    $0x18,%rsp
          │ │  │  0x00007f8a431946c7:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │ │  │  0x00007f8a431946ce:   ja     0x00007f8a43194710
          │ │  │  0x00007f8a431946d4:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@16 (line 89)
          ↘ │  │  0x00007f8a431946d5:   mov    $0x0,%r8d
            │  ╰  0x00007f8a431946db:   jmp    0x00007f8a431946bb           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
            │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@39 (line 92)
            ↘     0x00007f8a431946dd:   movl   $0xffffffe5,0x484(%r15)      ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@8 (line 89)
                  0x00007f8a431946e8:   movq   $0x298,0x490(%r15)
....................................................................................................
  95.29%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.29%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array, version 3, compile id 1081 
   0.54%     [kernel.kallsyms]  native_read_msr 
   0.37%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.21%     [kernel.kallsyms]  __mod_lruvec_state 
   0.21%     [kernel.kallsyms]  exc_page_fault 
   0.20%     [kernel.kallsyms]  release_pages 
   0.20%     [kernel.kallsyms]  __free_one_page 
   0.18%     [kernel.kallsyms]  zap_pte_range 
   0.17%     [kernel.kallsyms]  page_remove_rmap 
   0.12%     [kernel.kallsyms]  asm_exc_page_fault 
   0.11%     [kernel.kallsyms]  __mod_memcg_state 
   0.10%     [kernel.kallsyms]  free_unref_page_list 
   0.08%     [kernel.kallsyms]  lock_page_memcg 
   0.08%     [kernel.kallsyms]  __mod_node_page_state 
   0.08%     [kernel.kallsyms]  __rcu_read_unlock 
   0.08%     [kernel.kallsyms]  __mod_zone_page_state 
   0.06%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.05%     [kernel.kallsyms]  free_unref_page_commit 
   0.04%     [kernel.kallsyms]  __rcu_read_lock 
   0.04%     [kernel.kallsyms]  free_swap_cache 
   1.79%  <...other 384 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.29%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array, version 3, compile id 1081 
   0.54%     [kernel.kallsyms]  native_read_msr 
   0.37%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.21%     [kernel.kallsyms]  __mod_lruvec_state 
   0.21%     [kernel.kallsyms]  exc_page_fault 
   0.20%     [kernel.kallsyms]  release_pages 
   0.20%     [kernel.kallsyms]  __free_one_page 
   0.18%     [kernel.kallsyms]  zap_pte_range 
   0.17%     [kernel.kallsyms]  page_remove_rmap 
   0.12%     [kernel.kallsyms]  asm_exc_page_fault 
   0.11%     [kernel.kallsyms]  __mod_memcg_state 
   0.10%     [kernel.kallsyms]  free_unref_page_list 
   0.08%     [kernel.kallsyms]  lock_page_memcg 
   0.08%     [kernel.kallsyms]  __mod_node_page_state 
   0.08%     [kernel.kallsyms]  __rcu_read_unlock 
   0.08%     [kernel.kallsyms]  __mod_zone_page_state 
   0.06%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.05%     [kernel.kallsyms]  free_unref_page_commit 
   0.04%     [kernel.kallsyms]  __rcu_read_lock 
   0.04%     [kernel.kallsyms]  free_swap_cache 
   1.79%  <...other 380 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.31%        jvmci, level 4
   3.88%     [kernel.kallsyms]
   0.32%   libjvmcicompiler.so
   0.27%             libjvm.so
   0.13%             libc.so.6
   0.03%           interpreter
   0.02%        hsdis-amd64.so
   0.02%  ld-linux-x86-64.so.2
   0.01%           c1, level 3
   0.00%                      
   0.00%           c1, level 1
   0.00%           c1, level 2
   0.00%        libz.so.1.2.11
   0.00%        perf-10933.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.if_instanceof_interface_array

# Run progress: 12.50% complete, ETA 00:16:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 41.965 ns/op
# Warmup Iteration   2: 39.817 ns/op
# Warmup Iteration   3: 39.915 ns/op
# Warmup Iteration   4: 39.593 ns/op
# Warmup Iteration   5: 39.354 ns/op
Iteration   1: 39.525 ns/op
Iteration   2: 39.709 ns/op
Iteration   3: 39.511 ns/op
Iteration   4: 39.529 ns/op
Iteration   5: 41.015 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.if_instanceof_interface_array":
  39.858 ±(99.9%) 2.511 ns/op [Average]
  (min, avg, max) = (39.511, 39.858, 41.015), stdev = 0.652
  CI (99.9%): [37.347, 42.369] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.if_instanceof_interface_array:asm":
PrintAssembly processed: 225909 total address lines.
Perf output processed (skipped 83.313 seconds):
 Column 1: cycles (49720 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array, version 3, compile id 1100 

                                                                                                           ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@0 (line 77)
                                                 0x00007f7c2f19a9a3:   mov    0xc(,%r10,8),%r11d           ; implicit exception: dispatches to 0x00007f7c2f19adda
                                                 0x00007f7c2f19a9ab:   test   %r11d,%r11d
                                                 0x00007f7c2f19a9ae:   je     0x00007f7c2f19ad3d           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@16 (line 78)
                                                 0x00007f7c2f19a9b4:   mov    0x10(,%r10,8),%eax           ; ImmutableOopMap {rax=NarrowOop rsi=Oop r10=NarrowOop }
                                                                                                           ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@0 (line 77)
                                                 0x00007f7c2f19a9bc:   mov    0x8(,%rax,8),%r8d            ; implicit exception: dispatches to 0x00007f7c2f19adfd
   0.00%                                         0x00007f7c2f19a9c4:   vxorps %xmm0,%xmm0,%xmm0            ;*f2i {reexecute=0 rethrow=0 return_oop=0}
                                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@106 (line 280)
                                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
                                                 0x00007f7c2f19a9c8:   vxorpd %xmm1,%xmm1,%xmm1
                                                 0x00007f7c2f19a9cc:   cmp    $0x102b260,%r8d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
          ╭                                      0x00007f7c2f19a9d3:   je     0x00007f7c2f19ac34
          │                                      0x00007f7c2f19a9d9:   nopl   0x0(%rax)
          │                                      0x00007f7c2f19a9e0:   cmp    $0x102a868,%r8d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
          │╭                                     0x00007f7c2f19a9e7:   je     0x00007f7c2f19ac6b
          ││                                     0x00007f7c2f19a9ed:   cmp    $0x102b660,%r8d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
          ││╭                                    0x00007f7c2f19a9f4:   je     0x00007f7c2f19ac7a
          │││                                    0x00007f7c2f19a9fa:   nopw   0x0(%rax,%rax,1)
          │││                                    0x00007f7c2f19aa00:   cmp    $0x102ac58,%r8d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
          │││╭                                   0x00007f7c2f19aa07:   je     0x00007f7c2f19ac8a
          ││││                                   0x00007f7c2f19aa0d:   cmp    $0x102ae58,%r8d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
          ││││                                   0x00007f7c2f19aa14:   je     0x00007f7c2f19ac9a
          ││││                                   0x00007f7c2f19aa1a:   nopw   0x0(%rax,%rax,1)
          ││││                                   0x00007f7c2f19aa20:   cmp    $0x102b860,%r8d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
          ││││                                   0x00007f7c2f19aa27:   je     0x00007f7c2f19acc5
          ││││                                   0x00007f7c2f19aa2d:   cmp    $0x102b060,%r8d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
          ││││                                   0x00007f7c2f19aa34:   jne    0x00007f7c2f19acd4           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@96 (line 279)
          ││││                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
          ││││                                   0x00007f7c2f19aa3a:   vmovss 0xc(,%rax,8),%xmm2           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@103 (line 280)
          ││││                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
          ││││                                   0x00007f7c2f19aa43:   vcvttss2si %xmm2,%r8d
          ││││                                   0x00007f7c2f19aa47:   cmp    $0x80000000,%r8d
          ││││                                   0x00007f7c2f19aa4e:   je     0x00007f7c2f19acfd           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@106 (line 280)
          ││││                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
          ││││                            ↗↗↗↗↗  0x00007f7c2f19aa54:   mov    %r11d,%ecx
          ││││                            │││││  0x00007f7c2f19aa57:   dec    %ecx
          ││││                            │││││  0x00007f7c2f19aa59:   movslq %ecx,%rcx
          ││││                            │││││  0x00007f7c2f19aa5c:   mov    %r11d,%eax
          ││││                            │││││  0x00007f7c2f19aa5f:   shl    $0x3,%r10                    ;*getfield interfaceArray {reexecute=0 rethrow=0 return_oop=0}
          ││││                            │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@3 (line 78)
          ││││                            │││││  0x00007f7c2f19aa63:   cmp    %rcx,%rax
          ││││╭                           │││││  0x00007f7c2f19aa66:   ja     0x00007f7c2f19aa76
          │││││                           │││││  0x00007f7c2f19aa6c:   cmp    $0x2,%r11d
          │││││                           │││││  0x00007f7c2f19aa70:   jae    0x00007f7c2f19ad90           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││││                           │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@22 (line 78)
          ││││↘                           │││││  0x00007f7c2f19aa76:   mov    %r8d,%r9d
          ││││                            │││││  0x00007f7c2f19aa79:   mov    $0x1,%r8d
          ││││                            │││││  0x00007f7c2f19aa7f:   nop
          ││││ ╭                          │││││  0x00007f7c2f19aa80:   jmp    0x00007f7c2f19ab37           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││││ │                          │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@13 (line 78)
          ││││ │                          │││││  0x00007f7c2f19aa85:   data16 data16 nopw 0x0(%rax,%rax,1)
          ││││ │                          │││││  0x00007f7c2f19aa90:   data16 data16 xchg %ax,%ax
          ││││ │                          │││││  0x00007f7c2f19aa94:   nopl   0x0(%rax,%rax,1)
          ││││ │                          │││││  0x00007f7c2f19aa9c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││││ │                          │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@16 (line 78)
   0.59%  ││││ │        ↗                 │││││  0x00007f7c2f19aaa0:   mov    0x10(%r10,%r8,4),%eax        ; ImmutableOopMap {rax=NarrowOop r10=Oop }
          ││││ │        │                 │││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││││ │        │                 │││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@13 (line 78)
   5.75%  ││││ │        │                 │││││  0x00007f7c2f19aaa5:   mov    0x8(,%rax,8),%ecx            ; implicit exception: dispatches to 0x00007f7c2f19ae20
  10.24%  ││││ │        │                 │││││  0x00007f7c2f19aaac:   cmp    $0x102b260,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
          ││││ │╭       │                 │││││  0x00007f7c2f19aab2:   je     0x00007f7c2f19ab45
   2.55%  ││││ ││       │                 │││││  0x00007f7c2f19aab8:   nopl   0x0(%rax,%rax,1)
   0.26%  ││││ ││       │                 │││││  0x00007f7c2f19aac0:   cmp    $0x102a868,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
          ││││ ││╭      │                 │││││  0x00007f7c2f19aac6:   je     0x00007f7c2f19ab72
   5.81%  ││││ │││      │                 │││││  0x00007f7c2f19aacc:   cmp    $0x102b660,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
          ││││ │││╭     │                 │││││  0x00007f7c2f19aad2:   je     0x00007f7c2f19ab7d
   2.08%  ││││ ││││     │                 │││││  0x00007f7c2f19aad8:   nopl   0x0(%rax,%rax,1)
   0.09%  ││││ ││││     │                 │││││  0x00007f7c2f19aae0:   cmp    $0x102ac58,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
          ││││ ││││╭    │                 │││││  0x00007f7c2f19aae6:   je     0x00007f7c2f19ab89
   1.70%  ││││ │││││    │                 │││││  0x00007f7c2f19aaec:   cmp    $0x102ae58,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
          ││││ │││││╭   │                 │││││  0x00007f7c2f19aaf2:   je     0x00007f7c2f19ab95
   3.35%  ││││ ││││││   │                 │││││  0x00007f7c2f19aaf8:   nopl   0x0(%rax,%rax,1)
   0.43%  ││││ ││││││   │                 │││││  0x00007f7c2f19ab00:   cmp    $0x102b860,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
          ││││ ││││││╭  │                 │││││  0x00007f7c2f19ab06:   je     0x00007f7c2f19abb9
   2.35%  ││││ │││││││  │                 │││││  0x00007f7c2f19ab0c:   cmp    $0x102b060,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
          ││││ │││││││╭ │                 │││││  0x00007f7c2f19ab12:   jne    0x00007f7c2f19abc5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││││││││ │                 │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@96 (line 279)
          ││││ ││││││││ │                 │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   2.82%  ││││ ││││││││ │                 │││││  0x00007f7c2f19ab18:   vmovss 0xc(,%rax,8),%xmm2           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││││││││ │                 │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@103 (line 280)
          ││││ ││││││││ │                 │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   1.96%  ││││ ││││││││ │                 │││││  0x00007f7c2f19ab21:   vcvttss2si %xmm2,%eax
   1.95%  ││││ ││││││││ │                 │││││  0x00007f7c2f19ab25:   cmp    $0x80000000,%eax
          ││││ ││││││││╭│                 │││││  0x00007f7c2f19ab2b:   je     0x00007f7c2f19abde           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││││││││││                 │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@106 (line 280)
          ││││ ││││││││││                 │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   0.16%  ││││ ││││││││││ ↗  ↗↗↗↗↗↗↗ ↗↗↗↗↗│││││  0x00007f7c2f19ab31:   add    %eax,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││││││││││ │  │││││││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@31 (line 79)
   3.81%  ││││ ││││││││││ │  │││││││ ││││││││││  0x00007f7c2f19ab34:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││││││││││ │  │││││││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@33 (line 78)
   1.16%  ││││ ↘│││││││││ │  │││││││ ││││││││││  0x00007f7c2f19ab37:   cmp    %r8d,%r11d
          ││││  ││││││││╰ │  │││││││ ││││││││││  0x00007f7c2f19ab3a:   jg     0x00007f7c2f19aaa0
          ││││  ││││││││ ╭│  │││││││ ││││││││││  0x00007f7c2f19ab40:   jmp    0x00007f7c2f19ac1a           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││││  ││││││││ ││  │││││││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@16 (line 78)
   3.66%  ││││  ↘│││││││ ││  │││││││ ││││││││││  0x00007f7c2f19ab45:   vmovsd 0x10(,%rax,8),%xmm2          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││││   │││││││ ││  │││││││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@87 (line 278)
          ││││   │││││││ ││  │││││││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.16%  ││││   │││││││ ││  │││││││ ││││││││││  0x00007f7c2f19ab4e:   vcvttsd2si %xmm2,%eax
   2.70%  ││││   │││││││ ││  │││││││ ││││││││││  0x00007f7c2f19ab52:   cmp    $0x80000000,%eax
          ││││   │││││││ │╰  │││││││ ││││││││││  0x00007f7c2f19ab58:   jne    0x00007f7c2f19ab31
          ││││   │││││││ │   │││││││ ││││││││││  0x00007f7c2f19ab5a:   vucomisd %xmm2,%xmm2
          ││││   │││││││ │   │││││││ ││││││││││  0x00007f7c2f19ab5e:   xchg   %ax,%ax
          ││││   │││││││ │ ╭ │││││││ ││││││││││  0x00007f7c2f19ab60:   jp     0x00007f7c2f19ac06
          ││││   │││││││ │ │ │││││││ ││││││││││  0x00007f7c2f19ab66:   vucomisd %xmm1,%xmm2
          ││││   │││││││ │ │╭│││││││ ││││││││││  0x00007f7c2f19ab6a:   ja     0x00007f7c2f19abfc
          ││││   │││││││ │ ││╰││││││ ││││││││││  0x00007f7c2f19ab70:   jmp    0x00007f7c2f19ab31           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
          ││││   │││││││ │ ││ ││││││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@90 (line 278)
          ││││   │││││││ │ ││ ││││││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.66%  ││││   ↘││││││ │ ││ ││││││ ││││││││││  0x00007f7c2f19ab72:   mov    0xc(,%rax,8),%ecx            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││││    ││││││ │ ││ ││││││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@11 (line 268)
          ││││    ││││││ │ ││ ││││││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.15%  ││││    ││││││ │ ││ ││││││ ││││││││││  0x00007f7c2f19ab79:   mov    %ecx,%eax
   0.03%  ││││    ││││││ │ ││ ╰│││││ ││││││││││  0x00007f7c2f19ab7b:   jmp    0x00007f7c2f19ab31           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││││    ││││││ │ ││  │││││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@65 (line 275)
          ││││    ││││││ │ ││  │││││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.02%  ││││    ↘│││││ │ ││  │││││ ││││││││││  0x00007f7c2f19ab7d:   movzwl 0xc(,%rax,8),%ecx            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││││     │││││ │ ││  │││││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@72 (line 276)
          ││││     │││││ │ ││  │││││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   2.96%  ││││     │││││ │ ││  │││││ ││││││││││  0x00007f7c2f19ab85:   mov    %ecx,%eax
   0.01%  ││││     │││││ │ ││  ╰││││ ││││││││││  0x00007f7c2f19ab87:   jmp    0x00007f7c2f19ab31           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││││     │││││ │ ││   ││││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@35 (line 271)
          ││││     │││││ │ ││   ││││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.26%  ││││     ↘││││ │ ││   ││││ ││││││││││  0x00007f7c2f19ab89:   movswl 0xc(,%rax,8),%ecx            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││││      ││││ │ ││   ││││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@42 (line 272)
          ││││      ││││ │ ││   ││││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   2.85%  ││││      ││││ │ ││   ││││ ││││││││││  0x00007f7c2f19ab91:   mov    %ecx,%eax
   0.01%  ││││      ││││ │ ││   ╰│││ ││││││││││  0x00007f7c2f19ab93:   jmp    0x00007f7c2f19ab31           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││││      ││││ │ ││    │││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@112 (line 281)
          ││││      ││││ │ ││    │││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.33%  ││││      ↘│││ │ ││    │││ ││││││││││  0x00007f7c2f19ab95:   mov    0xc(,%rax,8),%ecx            ; ImmutableOopMap {rcx=NarrowOop r10=Oop }
          ││││       │││ │ ││    │││ ││││││││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││││       │││ │ ││    │││ ││││││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@13 (line 78)
   2.71%  ││││       │││ │ ││    │││ ││││││││││  0x00007f7c2f19ab9c:   mov    0x14(,%rcx,8),%eax           ; implicit exception: dispatches to 0x00007f7c2f19ae43
   1.94%  ││││       │││ │ ││    │││ ││││││││││  0x00007f7c2f19aba3:   movsbl 0x10(,%rcx,8),%ecx           ; ImmutableOopMap {r10=Oop }
          ││││       │││ │ ││    │││ ││││││││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││││       │││ │ ││    │││ ││││││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@13 (line 78)
   0.27%  ││││       │││ │ ││    │││ ││││││││││  0x00007f7c2f19abab:   mov    0xc(,%rax,8),%eax            ; implicit exception: dispatches to 0x00007f7c2f19ae66
   1.36%  ││││       │││ │ ││    │││ ││││││││││  0x00007f7c2f19abb2:   shr    %cl,%eax                     ;*ishr {reexecute=0 rethrow=0 return_oop=0}
          ││││       │││ │ ││    │││ ││││││││││                                                            ; - java.lang.String::length@9 (line 1519)
          ││││       │││ │ ││    │││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@122 (line 282)
          ││││       │││ │ ││    │││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   0.62%  ││││       │││ │ ││    ╰││ ││││││││││  0x00007f7c2f19abb4:   jmp    0x00007f7c2f19ab31           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││││       │││ │ ││     ││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@19 (line 269)
          ││││       │││ │ ││     ││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   2.75%  ││││       ↘││ │ ││     ││ ││││││││││  0x00007f7c2f19abb9:   mov    0x10(,%rax,8),%eax           ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          ││││        ││ │ ││     ││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@29 (line 270)
          ││││        ││ │ ││     ││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   2.52%  ││││        ││ │ ││     ╰│ ││││││││││  0x00007f7c2f19abc0:   jmp    0x00007f7c2f19ab31
   2.18%  ││││        ↘│ │ ││      │ ││││││││││  0x00007f7c2f19abc5:   cmp    $0x102b460,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
          ││││         │ │ ││      │ ││││││││││  0x00007f7c2f19abcb:   jne    0x00007f7c2f19ad6d           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││││         │ │ ││      │ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@50 (line 273)
          ││││         │ │ ││      │ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   1.11%  ││││         │ │ ││      │ ││││││││││  0x00007f7c2f19abd1:   movsbl 0xc(,%rax,8),%eax            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││││         │ │ ││      │ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@57 (line 274)
          ││││         │ │ ││      │ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   1.15%  ││││         │ │ ││      ╰ ││││││││││  0x00007f7c2f19abd9:   jmp    0x00007f7c2f19ab31
          ││││         ↘ │ ││        ││││││││││  0x00007f7c2f19abde:   vucomiss %xmm2,%xmm2
          ││││           │ ││       ╭││││││││││  0x00007f7c2f19abe2:   jp     0x00007f7c2f19ac10
          ││││           │ ││       │││││││││││  0x00007f7c2f19abe8:   vucomiss %xmm0,%xmm2
          ││││           │ ││       │╰│││││││││  0x00007f7c2f19abec:   jbe    0x00007f7c2f19ab31
          ││││           │ ││       │ │││││││││  0x00007f7c2f19abf2:   mov    $0x7fffffff,%eax
          ││││           │ ││       │ ╰││││││││  0x00007f7c2f19abf7:   jmp    0x00007f7c2f19ab31           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
          ││││           │ ││       │  ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@106 (line 280)
          ││││           │ ││       │  ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
          ││││           │ │↘       │  ││││││││  0x00007f7c2f19abfc:   mov    $0x7fffffff,%eax
          ││││           │ │        │  ╰│││││││  0x00007f7c2f19ac01:   jmp    0x00007f7c2f19ab31
          ││││           │ ↘        │   │││││││  0x00007f7c2f19ac06:   mov    $0x0,%eax
          ││││           │          │   ╰││││││  0x00007f7c2f19ac0b:   jmp    0x00007f7c2f19ab31           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
          ││││           │          │    ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@90 (line 278)
          ││││           │          │    ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
          ││││           │          ↘    ││││││  0x00007f7c2f19ac10:   mov    $0x0,%eax
          ││││           │               ╰│││││  0x00007f7c2f19ac15:   jmp    0x00007f7c2f19ab31           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
          ││││           │                │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@106 (line 280)
          ││││           │                │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   0.00%  ││││           ↘                │││││  0x00007f7c2f19ac1a:   mov    %r9d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││││                            │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@40 (line 81)
          ││││                            │││││  0x00007f7c2f19ac1d:   mov    0x10(%rsp),%rbp
   0.00%  ││││                            │││││  0x00007f7c2f19ac22:   add    $0x18,%rsp
          ││││                            │││││  0x00007f7c2f19ac26:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││││                            │││││  0x00007f7c2f19ac2d:   ja     0x00007f7c2f19adc6
   0.00%  ││││                            │││││  0x00007f7c2f19ac33:   ret                                 ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││││                            │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@80 (line 277)
          ││││                            │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
          ↘│││                            │││││  0x00007f7c2f19ac34:   vmovsd 0x10(,%rax,8),%xmm2          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           │││                            │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@87 (line 278)
           │││                            │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
           │││                            │││││  0x00007f7c2f19ac3d:   vcvttsd2si %xmm2,%r8d
           │││                            │││││  0x00007f7c2f19ac41:   cmp    $0x80000000,%r8d
           │││                            ╰││││  0x00007f7c2f19ac48:   jne    0x00007f7c2f19aa54
           │││                             ││││  0x00007f7c2f19ac4e:   vucomisd %xmm2,%xmm2
           │││                             ││││  0x00007f7c2f19ac52:   jp     0x00007f7c2f19ad27
           │││                             ││││  0x00007f7c2f19ac58:   vucomisd %xmm1,%xmm2
           │││                             ││││  0x00007f7c2f19ac5c:   nopl   0x0(%rax)
           │││                             ││││  0x00007f7c2f19ac60:   ja     0x00007f7c2f19ad1c
           │││                             ╰│││  0x00007f7c2f19ac66:   jmp    0x00007f7c2f19aa54           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
           │││                              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@90 (line 278)
           │││                              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
           ↘││                              │││  0x00007f7c2f19ac6b:   mov    0xc(,%rax,8),%ecx            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
            ││                              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@11 (line 268)
            ││                              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
            ││                              │││  0x00007f7c2f19ac72:   mov    %ecx,%r8d
            ││                              ╰││  0x00007f7c2f19ac75:   jmp    0x00007f7c2f19aa54           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            ││                               ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@65 (line 275)
            ││                               ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
            ↘│                               ││  0x00007f7c2f19ac7a:   movzwl 0xc(,%rax,8),%ecx            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
             │                               ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@72 (line 276)
             │                               ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
             │                               ││  0x00007f7c2f19ac82:   mov    %ecx,%r8d
             │                               ╰│  0x00007f7c2f19ac85:   jmp    0x00007f7c2f19aa54           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
             │                                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@35 (line 271)
             │                                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   0.00%     ↘                                │  0x00007f7c2f19ac8a:   movswl 0xc(,%rax,8),%ecx            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@42 (line 272)
                                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
                                              │  0x00007f7c2f19ac92:   mov    %ecx,%r8d
                                              ╰  0x00007f7c2f19ac95:   jmp    0x00007f7c2f19aa54           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@112 (line 281)
                                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
                                                 0x00007f7c2f19ac9a:   mov    0xc(,%rax,8),%ecx            ; ImmutableOopMap {rcx=NarrowOop rsi=Oop r10=NarrowOop }
                                                                                                           ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  95.52%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.52%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array, version 3, compile id 1100 
   0.55%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.36%     [kernel.kallsyms]  __ptep_modify_prot_commit 
   0.24%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.19%     [kernel.kallsyms]  __mod_lruvec_state 
   0.19%     [kernel.kallsyms]  __free_one_page 
   0.18%     [kernel.kallsyms]  release_pages 
   0.15%     [kernel.kallsyms]  page_remove_rmap 
   0.13%     [kernel.kallsyms]  zap_pte_range 
   0.13%     [kernel.kallsyms]  memcg_account_kmem 
   0.11%     [kernel.kallsyms]  __mod_node_page_state 
   0.11%     [kernel.kallsyms]  asm_exc_page_fault 
   0.10%     [kernel.kallsyms]  free_unref_page_list 
   0.09%     [kernel.kallsyms]  __rcu_read_unlock 
   0.08%     [kernel.kallsyms]  __mod_zone_page_state 
   0.08%     [kernel.kallsyms]  free_unref_page_commit 
   0.07%     [kernel.kallsyms]  lock_page_memcg 
   0.06%     [kernel.kallsyms]  __rcu_read_lock 
   0.05%     [kernel.kallsyms]  free_swap_cache 
   0.04%     [kernel.kallsyms]  free_pcp_prepare 
   1.57%  <...other 308 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.52%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array, version 3, compile id 1100 
   0.55%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.36%     [kernel.kallsyms]  __ptep_modify_prot_commit 
   0.24%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.19%     [kernel.kallsyms]  __mod_lruvec_state 
   0.19%     [kernel.kallsyms]  __free_one_page 
   0.18%     [kernel.kallsyms]  release_pages 
   0.15%     [kernel.kallsyms]  page_remove_rmap 
   0.13%     [kernel.kallsyms]  zap_pte_range 
   0.13%     [kernel.kallsyms]  memcg_account_kmem 
   0.12%                        <unknown> 
   0.11%     [kernel.kallsyms]  __mod_node_page_state 
   0.11%     [kernel.kallsyms]  asm_exc_page_fault 
   0.10%     [kernel.kallsyms]  free_unref_page_list 
   0.09%     [kernel.kallsyms]  __rcu_read_unlock 
   0.08%     [kernel.kallsyms]  __mod_zone_page_state 
   0.08%     [kernel.kallsyms]  free_unref_page_commit 
   0.07%     [kernel.kallsyms]  lock_page_memcg 
   0.06%     [kernel.kallsyms]  __rcu_read_lock 
   0.05%     [kernel.kallsyms]  free_swap_cache 
   1.49%  <...other 255 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.52%        jvmci, level 4
   3.80%     [kernel.kallsyms]
   0.27%             libjvm.so
   0.20%             libc.so.6
   0.12%                      
   0.05%           interpreter
   0.02%  ld-linux-x86-64.so.2
   0.01%        hsdis-amd64.so
   0.00%           c1, level 3
   0.00%        perf-11034.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_concrete_array

# Run progress: 25.00% complete, ETA 00:14:15
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.519 ns/op
# Warmup Iteration   2: 3.289 ns/op
# Warmup Iteration   3: 3.309 ns/op
# Warmup Iteration   4: 3.314 ns/op
# Warmup Iteration   5: 3.284 ns/op
Iteration   1: 3.867 ns/op
Iteration   2: 3.858 ns/op
Iteration   3: 3.885 ns/op
Iteration   4: 3.851 ns/op
Iteration   5: 3.875 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_concrete_array":
  3.867 ±(99.9%) 0.052 ns/op [Average]
  (min, avg, max) = (3.851, 3.867, 3.885), stdev = 0.013
  CI (99.9%): [3.816, 3.919] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_concrete_array:asm":
PrintAssembly processed: 248492 total address lines.
Perf output processed (skipped 83.134 seconds):
 Column 1: cycles (49493 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array, version 3, compile id 1191 

                  0x00007f20cb1a7920:   mov    %eax,-0x14000(%rsp)
                  0x00007f20cb1a7927:   sub    $0x18,%rsp
                  0x00007f20cb1a792b:   nop
                  0x00007f20cb1a792c:   cmpl   $0x1,0x20(%r15)
                  0x00007f20cb1a7934:   jne    0x00007f20cb1a7a00
                  0x00007f20cb1a793a:   mov    %rbp,0x10(%rsp)
                  0x00007f20cb1a793f:   mov    0x14(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                            ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@0 (line 110)
                  0x00007f20cb1a7942:   mov    0xc(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007f20cb1a7a26
   0.02%          0x00007f20cb1a794a:   test   %r10d,%r10d
          ╭       0x00007f20cb1a794d:   je     0x00007f20cb1a79d5           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@16 (line 111)
          │       0x00007f20cb1a7953:   mov    0x10(,%rax,8),%r11d          ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
          │                                                                 ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                                 ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@0 (line 110)
          │       0x00007f20cb1a795b:   mov    0xc(,%r11,8),%r11d           ; implicit exception: dispatches to 0x00007f20cb1a7a4d
   0.02%  │       0x00007f20cb1a7963:   mov    %r10d,%r8d
          │       0x00007f20cb1a7966:   dec    %r8d
          │       0x00007f20cb1a7969:   movslq %r8d,%r8
          │       0x00007f20cb1a796c:   mov    %r10d,%r9d
          │       0x00007f20cb1a796f:   cmp    %r8,%r9
          │╭      0x00007f20cb1a7972:   ja     0x00007f20cb1a798a
          ││      0x00007f20cb1a7978:   nopl   0x0(%rax,%rax,1)
          ││      0x00007f20cb1a7980:   cmp    $0x2,%r10d
          ││╭     0x00007f20cb1a7984:   jae    0x00007f20cb1a79dd           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@22 (line 111)
          │↘│     0x00007f20cb1a798a:   shl    $0x3,%rax                    ;*getfield asIsArray {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@3 (line 111)
          │ │     0x00007f20cb1a798e:   mov    %r11d,%r8d
          │ │     0x00007f20cb1a7991:   mov    $0x1,%r11d
          │ │╭    0x00007f20cb1a7997:   jmp    0x00007f20cb1a79b6           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@13 (line 111)
          │ ││    0x00007f20cb1a799c:   nopl   0x0(%rax)                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@16 (line 111)
   0.01%  │ ││↗   0x00007f20cb1a79a0:   mov    0x10(%rax,%r11,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@22 (line 111)
  14.60%  │ │││   0x00007f20cb1a79a5:   mov    %r8d,%ecx                    ; ImmutableOopMap {rax=Oop r9=NarrowOop }
          │ │││                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │ │││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@13 (line 111)
   0.03%  │ │││   0x00007f20cb1a79a8:   add    0xc(,%r9,8),%ecx             ; implicit exception: dispatches to 0x00007f20cb1a7a70
  69.83%  │ │││   0x00007f20cb1a79b0:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@33 (line 111)
   0.11%  │ │││   0x00007f20cb1a79b3:   mov    %ecx,%r8d                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@13 (line 111)
  11.63%  │ │↘│   0x00007f20cb1a79b6:   cmp    %r11d,%r10d
          │ │ ╰   0x00007f20cb1a79b9:   jg     0x00007f20cb1a79a0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@16 (line 111)
          │ │  ↗  0x00007f20cb1a79bb:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │ │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@40 (line 114)
          │ │  │  0x00007f20cb1a79be:   mov    0x10(%rsp),%rbp
   0.00%  │ │  │  0x00007f20cb1a79c3:   add    $0x18,%rsp
          │ │  │  0x00007f20cb1a79c7:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │ │  │  0x00007f20cb1a79ce:   ja     0x00007f20cb1a7a10
          │ │  │  0x00007f20cb1a79d4:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@16 (line 111)
          ↘ │  │  0x00007f20cb1a79d5:   mov    $0x0,%r8d
            │  ╰  0x00007f20cb1a79db:   jmp    0x00007f20cb1a79bb           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
            │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@39 (line 114)
            ↘     0x00007f20cb1a79dd:   movl   $0xffffffe5,0x484(%r15)      ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@8 (line 111)
                  0x00007f20cb1a79e8:   movq   $0x2d18,0x490(%r15)
....................................................................................................
  96.25%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.25%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array, version 3, compile id 1191 
   0.40%     [kernel.kallsyms]  native_write_msr 
   0.26%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.20%     [kernel.kallsyms]  release_pages 
   0.18%     [kernel.kallsyms]  __free_one_page 
   0.18%     [kernel.kallsyms]  refill_obj_stock 
   0.16%     [kernel.kallsyms]  page_remove_rmap 
   0.15%     [kernel.kallsyms]  zap_pte_range 
   0.13%     [kernel.kallsyms]  free_unref_page_list 
   0.12%     [kernel.kallsyms]  exc_page_fault 
   0.10%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.09%     [kernel.kallsyms]  asm_exc_page_fault 
   0.08%     [kernel.kallsyms]  __mod_node_page_state 
   0.08%     [kernel.kallsyms]  __mod_zone_page_state 
   0.07%     [kernel.kallsyms]  lock_page_memcg 
   0.07%     [kernel.kallsyms]  __rcu_read_unlock 
   0.06%     [kernel.kallsyms]  __rcu_read_lock 
   0.06%     [kernel.kallsyms]  free_unref_page_commit 
   0.04%     [kernel.kallsyms]  folio_lruvec_lock_irqsave 
   0.04%     [kernel.kallsyms]  free_pcp_prepare 
   1.27%  <...other 292 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.25%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array, version 3, compile id 1191 
   0.40%     [kernel.kallsyms]  native_write_msr 
   0.26%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.20%     [kernel.kallsyms]  release_pages 
   0.18%     [kernel.kallsyms]  __free_one_page 
   0.18%     [kernel.kallsyms]  refill_obj_stock 
   0.16%     [kernel.kallsyms]  page_remove_rmap 
   0.15%     [kernel.kallsyms]  zap_pte_range 
   0.13%     [kernel.kallsyms]  free_unref_page_list 
   0.12%     [kernel.kallsyms]  exc_page_fault 
   0.10%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.09%     [kernel.kallsyms]  asm_exc_page_fault 
   0.08%     [kernel.kallsyms]  __mod_node_page_state 
   0.08%     [kernel.kallsyms]  __mod_zone_page_state 
   0.07%     [kernel.kallsyms]  lock_page_memcg 
   0.07%     [kernel.kallsyms]  __rcu_read_unlock 
   0.06%     [kernel.kallsyms]  __rcu_read_lock 
   0.06%     [kernel.kallsyms]  free_unref_page_commit 
   0.04%     [kernel.kallsyms]  folio_lruvec_lock_irqsave 
   0.04%     [kernel.kallsyms]  free_pcp_prepare 
   1.27%  <...other 288 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.27%        jvmci, level 4
   3.20%     [kernel.kallsyms]
   0.20%   libjvmcicompiler.so
   0.18%             libjvm.so
   0.10%             libc.so.6
   0.03%           interpreter
   0.01%        hsdis-amd64.so
   0.00%                      
   0.00%  ld-linux-x86-64.so.2
   0.00%        perf-11134.map
   0.00%          libjimage.so
   0.00%           c1, level 2
   0.00%            libjava.so
   0.00%                [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_if_concrete_array

# Run progress: 37.50% complete, ETA 00:11:52
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.102 ns/op
# Warmup Iteration   2: 4.353 ns/op
# Warmup Iteration   3: 4.328 ns/op
# Warmup Iteration   4: 4.333 ns/op
# Warmup Iteration   5: 4.364 ns/op
Iteration   1: 4.318 ns/op
Iteration   2: 4.310 ns/op
Iteration   3: 4.043 ns/op
Iteration   4: 4.318 ns/op
Iteration   5: 4.324 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_if_concrete_array":
  4.263 ±(99.9%) 0.472 ns/op [Average]
  (min, avg, max) = (4.043, 4.263, 4.324), stdev = 0.123
  CI (99.9%): [3.790, 4.735] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_if_concrete_array:asm":
PrintAssembly processed: 249660 total address lines.
Perf output processed (skipped 82.560 seconds):
 Column 1: cycles (49689 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array, version 3, compile id 1190 

                       0x00007fe69319cc0e:   add    %r12,%r10
                       0x00007fe69319cc11:   xor    %r12,%r12
                       0x00007fe69319cc14:   cmp    %r10,%rax
                       0x00007fe69319cc17:   jne    0x00007fe692af9080           ;   {runtime_call ic_miss_stub}
                       0x00007fe69319cc1d:   data16 xchg %ax,%ax
                     [Verified Entry Point]
                       0x00007fe69319cc20:   mov    %eax,-0x14000(%rsp)
                       0x00007fe69319cc27:   sub    $0x18,%rsp
                       0x00007fe69319cc2b:   nop
                       0x00007fe69319cc2c:   cmpl   $0x1,0x20(%r15)
   0.00%               0x00007fe69319cc34:   jne    0x00007fe69319cd41
                       0x00007fe69319cc3a:   mov    %rbp,0x10(%rsp)
                       0x00007fe69319cc3f:   mov    0x14(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                                 ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                 ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@0 (line 143)
   0.00%               0x00007fe69319cc42:   mov    0xc(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007fe69319cd66
   0.00%               0x00007fe69319cc4a:   test   %r10d,%r10d
          ╭            0x00007fe69319cc4d:   je     0x00007fe69319cd16           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@16 (line 144)
          │            0x00007fe69319cc53:   mov    0x10(,%rax,8),%r11d          ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
          │                                                                      ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@0 (line 143)
   0.00%  │            0x00007fe69319cc5b:   mov    0xc(,%r11,8),%r11d           ; implicit exception: dispatches to 0x00007fe69319cd8d
   0.01%  │            0x00007fe69319cc63:   test   $0x1,%r11d
          │╭           0x00007fe69319cc6a:   je     0x00007fe69319cd0e           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@85 (line 195)
          ││                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
          ││       ↗   0x00007fe69319cc70:   mov    %r10d,%r8d
          ││       │   0x00007fe69319cc73:   dec    %r8d
          ││       │   0x00007fe69319cc76:   movslq %r8d,%r8
          ││       │   0x00007fe69319cc79:   mov    %r10d,%r9d
          ││       │   0x00007fe69319cc7c:   shl    $0x3,%rax                    ;*getfield asIsArray {reexecute=0 rethrow=0 return_oop=0}
          ││       │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@3 (line 144)
          ││       │   0x00007fe69319cc80:   cmp    %r8,%r9
          ││╭      │   0x00007fe69319cc83:   ja     0x00007fe69319cc93
          │││      │   0x00007fe69319cc89:   cmp    $0x2,%r10d
          │││╭     │   0x00007fe69319cc8d:   jae    0x00007fe69319cd1e           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││││     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@22 (line 144)
          ││↘│     │   0x00007fe69319cc93:   mov    %r11d,%r8d
          ││ │     │   0x00007fe69319cc96:   mov    $0x1,%r11d
          ││ │     │   0x00007fe69319cc9c:   nopl   0x0(%rax)
          ││ │╭    │   0x00007fe69319cca0:   jmp    0x00007fe69319cce0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││ ││    │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@13 (line 144)
          ││ ││    │   0x00007fe69319cca5:   data16 data16 nopw 0x0(%rax,%rax,1)
          ││ ││    │   0x00007fe69319ccb0:   data16 data16 xchg %ax,%ax
          ││ ││    │   0x00007fe69319ccb4:   nopl   0x0(%rax,%rax,1)
          ││ ││    │   0x00007fe69319ccbc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││ ││    │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@16 (line 144)
  12.27%  ││ ││ ↗  │   0x00007fe69319ccc0:   mov    0x10(%rax,%r11,4),%r9d       ; ImmutableOopMap {rax=Oop }
          ││ ││ │  │                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││ ││ │  │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@13 (line 144)
   2.11%  ││ ││ │  │   0x00007fe69319ccc5:   mov    0xc(,%r9,8),%r9d             ; implicit exception: dispatches to 0x00007fe69319cdb0
  56.61%  ││ ││ │  │   0x00007fe69319cccd:   test   $0x1,%r9d
          ││ ││╭│  │   0x00007fe69319ccd4:   je     0x00007fe69319ccea           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@85 (line 195)
          ││ ││││  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
  12.86%  ││ ││││ ↗│   0x00007fe69319ccda:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@31 (line 145)
  10.00%  ││ ││││ ││   0x00007fe69319ccdd:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@33 (line 144)
   0.01%  ││ │↘││ ││   0x00007fe69319cce0:   cmp    %r11d,%r10d
          ││ │ │╰ ││   0x00007fe69319cce3:   jg     0x00007fe69319ccc0
          ││ │ │ ╭││   0x00007fe69319cce5:   jmp    0x00007fe69319ccef           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@16 (line 144)
   1.88%  ││ │ ↘ │││   0x00007fe69319ccea:   shl    %r9d                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          ││ │   │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@93 (line 196)
          ││ │   │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
   0.09%  ││ │   │╰│   0x00007fe69319cced:   jmp    0x00007fe69319ccda           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││ │   │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@358 (line 193)
          ││ │   │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
          ││ │   ↘ │↗  0x00007fe69319ccef:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││ │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@40 (line 147)
          ││ │     ││  0x00007fe69319ccf2:   mov    0x10(%rsp),%rbp
          ││ │     ││  0x00007fe69319ccf7:   add    $0x18,%rsp
          ││ │     ││  0x00007fe69319ccfb:   nopl   0x0(%rax,%rax,1)
          ││ │     ││  0x00007fe69319cd00:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││ │     ││  0x00007fe69319cd07:   ja     0x00007fe69319cd51
   0.01%  ││ │     ││  0x00007fe69319cd0d:   ret                                 ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││ │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@85 (line 195)
          ││ │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
   0.00%  │↘ │     ││  0x00007fe69319cd0e:   shl    %r11d                        ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │  │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@93 (line 196)
          │  │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
   0.00%  │  │     ╰│  0x00007fe69319cd11:   jmp    0x00007fe69319cc70           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │  │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@358 (line 193)
          │  │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
          ↘  │      │  0x00007fe69319cd16:   mov    $0x0,%r8d
             │      ╰  0x00007fe69319cd1c:   jmp    0x00007fe69319ccef           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
             │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@39 (line 147)
             ↘         0x00007fe69319cd1e:   movl   $0xffffffe5,0x484(%r15)      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@22 (line 144)
                       0x00007fe69319cd29:   movq   $0x2d18,0x490(%r15)
....................................................................................................
  95.87%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.87%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array, version 3, compile id 1190 
   0.34%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.22%     [kernel.kallsyms]  release_pages 
   0.21%     [kernel.kallsyms]  __free_one_page 
   0.18%     [kernel.kallsyms]  native_read_msr 
   0.17%     [kernel.kallsyms]  __mod_lruvec_state 
   0.16%     [kernel.kallsyms]  page_add_file_rmap 
   0.15%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.15%     [kernel.kallsyms]  zap_pte_range 
   0.11%     [kernel.kallsyms]  mod_zone_page_state 
   0.10%     [kernel.kallsyms]  free_unref_page_list 
   0.10%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.09%     [kernel.kallsyms]  __rcu_read_lock 
   0.08%     [kernel.kallsyms]  __mod_zone_page_state 
   0.08%     [kernel.kallsyms]  asm_exc_page_fault 
   0.07%     [kernel.kallsyms]  lock_page_memcg 
   0.07%     [kernel.kallsyms]  __rcu_read_unlock 
   0.05%             libjvm.so  fileStream::write 
   0.04%     [kernel.kallsyms]  free_swap_cache 
   0.04%     [kernel.kallsyms]  folio_lruvec_lock_irqsave 
   1.70%  <...other 388 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.87%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array, version 3, compile id 1190 
   0.34%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.27%                        <unknown> 
   0.22%     [kernel.kallsyms]  release_pages 
   0.21%     [kernel.kallsyms]  __free_one_page 
   0.18%     [kernel.kallsyms]  native_read_msr 
   0.17%     [kernel.kallsyms]  __mod_lruvec_state 
   0.16%     [kernel.kallsyms]  page_add_file_rmap 
   0.15%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.15%     [kernel.kallsyms]  zap_pte_range 
   0.11%     [kernel.kallsyms]  mod_zone_page_state 
   0.10%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.10%     [kernel.kallsyms]  free_unref_page_list 
   0.09%     [kernel.kallsyms]  __rcu_read_lock 
   0.08%     [kernel.kallsyms]  __mod_zone_page_state 
   0.08%     [kernel.kallsyms]  asm_exc_page_fault 
   0.07%     [kernel.kallsyms]  lock_page_memcg 
   0.07%     [kernel.kallsyms]  __rcu_read_unlock 
   0.05%             libjvm.so  fileStream::write 
   0.04%     [kernel.kallsyms]  free_swap_cache 
   1.48%  <...other 282 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.89%        jvmci, level 4
   3.32%     [kernel.kallsyms]
   0.28%             libjvm.so
   0.27%                      
   0.17%             libc.so.6
   0.03%           interpreter
   0.02%        hsdis-amd64.so
   0.01%                [vdso]
   0.00%           c1, level 3
   0.00%                kvm.ko
   0.00%  ld-linux-x86-64.so.2
   0.00%           c1, level 1
   0.00%        perf-11227.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_if_interface_array

# Run progress: 50.00% complete, ETA 00:09:28
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 99.150 ns/op
# Warmup Iteration   2: 50.383 ns/op
# Warmup Iteration   3: 50.316 ns/op
# Warmup Iteration   4: 50.081 ns/op
# Warmup Iteration   5: 50.114 ns/op
Iteration   1: 49.832 ns/op
Iteration   2: 49.976 ns/op
Iteration   3: 49.766 ns/op
Iteration   4: 49.848 ns/op
Iteration   5: 50.027 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_if_interface_array":
  49.890 ±(99.9%) 0.416 ns/op [Average]
  (min, avg, max) = (49.766, 49.890, 50.027), stdev = 0.108
  CI (99.9%): [49.474, 50.306] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_if_interface_array:asm":
PrintAssembly processed: 252291 total address lines.
Perf output processed (skipped 82.496 seconds):
 Column 1: cycles (49334 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array, version 4, compile id 1199 

                                                                  0x00007f33b71a99b2:   jae    0x00007f33b71aa062           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@22 (line 122)
                                                                  0x00007f33b71a99b8:   mov    %r11d,%r8d
                                                                  0x00007f33b71a99bb:   mov    $0x1,%r11d
          ╭                                                       0x00007f33b71a99c1:   jmp    0x00007f33b71a9b7e           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@13 (line 122)
          │                                                       0x00007f33b71a99c6:   data16 data16 nopw 0x0(%rax,%rax,1)
          │                                                       0x00007f33b71a99d1:   data16 data16 xchg %ax,%ax
          │                                                       0x00007f33b71a99d5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@16 (line 122)
   1.54%  │                   ↗                                   0x00007f33b71a99e0:   mov    0x10(%r9,%r11,4),%eax        ; ImmutableOopMap {rax=NarrowOop r9=Oop }
          │                   │                                                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │                   │                                                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@13 (line 122)
   1.56%  │                   │                                   0x00007f33b71a99e5:   mov    0x8(,%rax,8),%ecx            ; implicit exception: dispatches to 0x00007f33b71aa250
   8.17%  │                   │                                   0x00007f33b71a99ec:   cmp    $0x102b860,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
          │╭                  │                                   0x00007f33b71a99f2:   je     0x00007f33b71a9b8e           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││                  │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334085000::invoke@94
          ││                  │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334087800::tableSwitch@103
          ││                  │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f333408b000::delegate@14
          ││                  │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f333408a400::invoke@114
          ││                  │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f333408ac00::linkToTargetMethod@6
          ││                  │                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
          ││                  │                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   2.15%  ││                  │                                   0x00007f33b71a99f8:   nopl   0x0(%rax,%rax,1)
   0.22%  ││                  │                                   0x00007f33b71a9a00:   cmp    $0x102a868,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
          ││╭                 │                                   0x00007f33b71a9a06:   je     0x00007f33b71a9be4
   3.10%  │││                 │                                   0x00007f33b71a9a0c:   cmp    $0x102ac58,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
   0.33%  │││                 │                                   0x00007f33b71a9a12:   sete   %bl
   0.46%  │││                 │                                   0x00007f33b71a9a15:   movzbl %bl,%ebx                     method is native {reexecute=0 rethrow=0 return_oop=0}
          │││                 │                                                                                             ; - java.lang.Class::isInstance@0
          │││                 │                                                                                             ; - java.lang.invoke.LambdaForm$DMH/0x00007f3334007000::invokeSpecial@11
          │││                 │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334083400::invoke@21
          │││                 │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@32
          │││                 │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││                 │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
          │││                 │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││                 │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334085000::invoke@91
          │││                 │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334087800::tableSwitch@103
          │││                 │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f333408b000::delegate@14
          │││                 │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f333408a400::invoke@114
          │││                 │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f333408ac00::linkToTargetMethod@6
          │││                 │                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
          │││                 │                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.18%  │││                 │                                   0x00007f33b71a9a18:   nopl   0x0(%rax,%rax,1)
   1.21%  │││                 │                                   0x00007f33b71a9a20:   test   $0x1,%ebx
          │││╭                │                                   0x00007f33b71a9a26:   jne    0x00007f33b71a9b98
   0.89%  ││││                │                                   0x00007f33b71a9a2c:   cmp    $0x102b460,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
   0.53%  ││││                │                                   0x00007f33b71a9a32:   sete   %bl
   0.26%  ││││                │                                   0x00007f33b71a9a35:   movzbl %bl,%ebx                     method is native {reexecute=0 rethrow=0 return_oop=0}
          ││││                │                                                                                             ; - java.lang.Class::isInstance@0
          ││││                │                                                                                             ; - java.lang.invoke.LambdaForm$DMH/0x00007f3334007000::invokeSpecial@11
          ││││                │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334083400::invoke@21
          ││││                │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@32
          ││││                │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││                │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
          ││││                │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││                │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
          ││││                │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││                │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334085000::invoke@91
          ││││                │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334087800::tableSwitch@103
          ││││                │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f333408b000::delegate@14
          ││││                │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f333408a400::invoke@114
          ││││                │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f333408ac00::linkToTargetMethod@6
          ││││                │                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
          ││││                │                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.86%  ││││                │                                   0x00007f33b71a9a38:   nopl   0x0(%rax,%rax,1)
   0.14%  ││││                │                                   0x00007f33b71a9a40:   test   $0x1,%ebx
          ││││╭               │                                   0x00007f33b71a9a46:   jne    0x00007f33b71a9cfa
   2.66%  │││││               │                                   0x00007f33b71a9a4c:   cmp    $0x102b660,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
   0.41%  │││││               │                                   0x00007f33b71a9a52:   sete   %bl
   0.25%  │││││               │                                   0x00007f33b71a9a55:   movzbl %bl,%ebx                     method is native {reexecute=0 rethrow=0 return_oop=0}
          │││││               │                                                                                             ; - java.lang.Class::isInstance@0
          │││││               │                                                                                             ; - java.lang.invoke.LambdaForm$DMH/0x00007f3334007000::invokeSpecial@11
          │││││               │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334083400::invoke@21
          │││││               │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@32
          │││││               │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││               │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
          │││││               │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││               │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
          │││││               │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││               │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
          │││││               │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││               │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334085000::invoke@91
          │││││               │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334087800::tableSwitch@103
          │││││               │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f333408b000::delegate@14
          │││││               │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f333408a400::invoke@114
          │││││               │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f333408ac00::linkToTargetMethod@6
          │││││               │                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
          │││││               │                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.15%  │││││               │                                   0x00007f33b71a9a58:   nopl   0x0(%rax,%rax,1)
   0.81%  │││││               │                                   0x00007f33b71a9a60:   test   $0x1,%ebx
          │││││╭              │                                   0x00007f33b71a9a66:   jne    0x00007f33b71a9d05
   1.21%  ││││││              │                                   0x00007f33b71a9a6c:   cmp    $0x102b260,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
   0.50%  ││││││              │                                   0x00007f33b71a9a72:   sete   %bl
   0.37%  ││││││              │                                   0x00007f33b71a9a75:   movzbl %bl,%ebx                     method is native {reexecute=0 rethrow=0 return_oop=0}
          ││││││              │                                                                                             ; - java.lang.Class::isInstance@0
          ││││││              │                                                                                             ; - java.lang.invoke.LambdaForm$DMH/0x00007f3334007000::invokeSpecial@11
          ││││││              │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334083400::invoke@21
          ││││││              │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@32
          ││││││              │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││              │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
          ││││││              │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││              │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
          ││││││              │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││              │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
          ││││││              │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││              │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
          ││││││              │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││              │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334085000::invoke@91
          ││││││              │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334087800::tableSwitch@103
          ││││││              │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f333408b000::delegate@14
          ││││││              │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f333408a400::invoke@114
          ││││││              │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f333408ac00::linkToTargetMethod@6
          ││││││              │                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
          ││││││              │                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.53%  ││││││              │                                   0x00007f33b71a9a78:   nopl   0x0(%rax,%rax,1)
   0.15%  ││││││              │                                   0x00007f33b71a9a80:   test   $0x1,%ebx
          ││││││╭             │                                   0x00007f33b71a9a86:   jne    0x00007f33b71a9d0f
   1.87%  │││││││             │                                   0x00007f33b71a9a8c:   cmp    $0x102b060,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
   0.66%  │││││││             │                                   0x00007f33b71a9a92:   sete   %bl
   0.36%  │││││││             │                                   0x00007f33b71a9a95:   movzbl %bl,%ebx                     method is native {reexecute=0 rethrow=0 return_oop=0}
          │││││││             │                                                                                             ; - java.lang.Class::isInstance@0
          │││││││             │                                                                                             ; - java.lang.invoke.LambdaForm$DMH/0x00007f3334007000::invokeSpecial@11
          │││││││             │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334083400::invoke@21
          │││││││             │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@32
          │││││││             │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││             │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
          │││││││             │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││             │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
          │││││││             │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││             │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
          │││││││             │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││             │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
          │││││││             │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││             │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
          │││││││             │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││             │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334085000::invoke@91
          │││││││             │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334087800::tableSwitch@103
          │││││││             │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f333408b000::delegate@14
          │││││││             │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f333408a400::invoke@114
          │││││││             │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f333408ac00::linkToTargetMethod@6
          │││││││             │                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
          │││││││             │                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.08%  │││││││             │                                   0x00007f33b71a9a98:   nopl   0x0(%rax,%rax,1)
   0.30%  │││││││             │                                   0x00007f33b71a9aa0:   test   $0x1,%ebx
          │││││││╭            │                                   0x00007f33b71a9aa6:   jne    0x00007f33b71a9d29
   1.48%  ││││││││            │                                   0x00007f33b71a9aac:   cmp    $0x102ae58,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
   0.81%  ││││││││            │                                   0x00007f33b71a9ab2:   sete   %bl
   0.63%  ││││││││            │                                   0x00007f33b71a9ab5:   movzbl %bl,%ebx                     method is native {reexecute=0 rethrow=0 return_oop=0}
          ││││││││            │                                                                                             ; - java.lang.Class::isInstance@0
          ││││││││            │                                                                                             ; - java.lang.invoke.LambdaForm$DMH/0x00007f3334007000::invokeSpecial@11
          ││││││││            │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334083400::invoke@21
          ││││││││            │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@32
          ││││││││            │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││            │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
          ││││││││            │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││            │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
          ││││││││            │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││            │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
          ││││││││            │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││            │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
          ││││││││            │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││            │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
          ││││││││            │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││            │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
          ││││││││            │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││            │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334085000::invoke@91
          ││││││││            │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334087800::tableSwitch@103
          ││││││││            │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f333408b000::delegate@14
          ││││││││            │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f333408a400::invoke@114
          ││││││││            │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f333408ac00::linkToTargetMethod@6
          ││││││││            │                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
          ││││││││            │                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.08%  ││││││││            │                                   0x00007f33b71a9ab8:   nopl   0x0(%rax,%rax,1)
   0.02%  ││││││││            │                                   0x00007f33b71a9ac0:   test   $0x1,%ebx
          ││││││││            │                                   0x00007f33b71a9ac6:   je     0x00007f33b71aa0c9           ;* unwind (locked if synchronized)
          ││││││││            │                                                                                             ; - java.lang.invoke.MethodHandleImpl::profileBoolean@-3
          ││││││││            │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@46
          ││││││││            │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││            │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
          ││││││││            │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││            │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
          ││││││││            │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││            │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
          ││││││││            │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││            │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
          ││││││││            │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││            │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
          ││││││││            │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││            │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
          ││││││││            │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││            │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334085000::invoke@91
          ││││││││            │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334087800::tableSwitch@103
          ││││││││            │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f333408b000::delegate@14
          ││││││││            │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f333408a400::invoke@114
          ││││││││            │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f333408ac00::linkToTargetMethod@6
          ││││││││            │                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
          ││││││││            │                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.11%  ││││││││            │                                   0x00007f33b71a9acc:   mov    $0x7,%ebx                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││││││││            │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@92
          ││││││││            │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││            │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
          ││││││││            │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││            │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
          ││││││││            │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││            │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
          ││││││││            │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││            │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
          ││││││││            │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││            │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
          ││││││││            │                                                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││            │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334085000::invoke@91
          ││││││││            │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334087800::tableSwitch@103
          ││││││││            │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f333408b000::delegate@14
          ││││││││            │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f333408a400::invoke@114
          ││││││││            │                                                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f333408ac00::linkToTargetMethod@6
          ││││││││            │                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
          ││││││││            │                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   3.12%  ││││││││            │ ↗↗    ↗           ↗↗↗  ↗          0x00007f33b71a9ad1:   mov    %eax,%edi
   0.05%  ││││││││            │ ││    │           │││  │          0x00007f33b71a9ad3:   shl    $0x3,%rdi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││││││││            │ ││    │           │││  │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@22 (line 122)
   4.25%  ││││││││            │ ││    │           │││  │          0x00007f33b71a9ad7:   cmp    $0x5,%ebx
          ││││││││╭           │ ││    │           │││  │          0x00007f33b71a9ada:   jge    0x00007f33b71a9b19
   0.31%  │││││││││           │ ││    │           │││  │          0x00007f33b71a9ae0:   cmp    $0x3,%ebx
          │││││││││╭          │ ││    │           │││  │          0x00007f33b71a9ae3:   jge    0x00007f33b71a9b0b
   0.56%  ││││││││││          │ ││    │           │││  │          0x00007f33b71a9ae9:   cmp    $0x2,%ebx
          ││││││││││╭         │ ││    │           │││  │          0x00007f33b71a9aec:   jge    0x00007f33b71a9bc4
   0.04%  │││││││││││         │ ││    │           │││  │          0x00007f33b71a9af2:   cmp    $0x0,%ebx
          │││││││││││╭        │ ││    │           │││  │          0x00007f33b71a9af5:   je     0x00007f33b71a9ba5
   0.81%  ││││││││││││        │ ││    │           │││  │          0x00007f33b71a9afb:   cmp    $0x1,%ebx
          ││││││││││││        │ ││    │           │││  │          0x00007f33b71a9afe:   xchg   %ax,%ax
   0.04%  ││││││││││││╭       │ ││    │           │││  │          0x00007f33b71a9b00:   je     0x00007f33b71a9c5e
          │││││││││││││       │ ││    │           │││  │          0x00007f33b71a9b06:   jmp    0x00007f33b71aa157
   0.50%  │││││││││↘│││       │ ││    │           │││  │          0x00007f33b71a9b0b:   cmp    $0x3,%ebx
          │││││││││ │││╭      │ ││    │           │││  │          0x00007f33b71a9b0e:   je     0x00007f33b71a9cd3
   0.06%  │││││││││ ││││╭     │ ││    │           │││  │          0x00007f33b71a9b14:   jmp    0x00007f33b71a9bee
   0.39%  ││││││││↘ │││││     │ ││    │           │││  │          0x00007f33b71a9b19:   cmp    $0x7,%ebx
   0.24%  ││││││││  │││││     │ ││    │           │││  │          0x00007f33b71a9b1c:   nopl   0x0(%rax)
   0.00%  ││││││││  │││││     │ ││    │           │││  │          0x00007f33b71a9b20:   jg     0x00007f33b71aa157
   0.94%  ││││││││  │││││     │ ││    │           │││  │          0x00007f33b71a9b26:   cmp    $0x7,%ebx
          ││││││││  │││││╭    │ ││    │           │││  │          0x00007f33b71a9b29:   jge    0x00007f33b71a9c15
   0.25%  ││││││││  ││││││    │ ││    │           │││  │          0x00007f33b71a9b2f:   cmp    $0x5,%ebx
          ││││││││  ││││││╭   │ ││    │           │││  │          0x00007f33b71a9b32:   je     0x00007f33b71a9b3d
   0.07%  ││││││││  │││││││╭  │ ││    │           │││  │          0x00007f33b71a9b38:   jmp    0x00007f33b71a9c94           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││││││││  ││││││││  │ ││    │           │││  │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@16 (line 193)
          ││││││││  ││││││││  │ ││    │           │││  │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.41%  ││││││││  ││││││↘│  │ ││    │           │││  │          0x00007f33b71a9b3d:   data16 xchg %ax,%ax
   0.00%  ││││││││  ││││││ │  │ ││    │           │││  │          0x00007f33b71a9b40:   cmp    $0x102b260,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
          ││││││││  ││││││ │  │ ││    │           │││  │          0x00007f33b71a9b46:   jne    0x00007f33b71aa17a           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││││││││  ││││││ │  │ ││    │           │││  │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@245 (line 224)
          ││││││││  ││││││ │  │ ││    │           │││  │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.09%  ││││││││  ││││││ │  │ ││    │           │││  │          0x00007f33b71a9b4c:   vmovsd 0x10(,%rax,8),%xmm2          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││││││││  ││││││ │  │ ││    │           │││  │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@252 (line 225)
          ││││││││  ││││││ │  │ ││    │           │││  │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.82%  ││││││││  ││││││ │  │ ││    │           │││  │          0x00007f33b71a9b55:   vcvttsd2si %xmm2,%eax
   1.84%  ││││││││  ││││││ │  │ ││    │           │││  │          0x00007f33b71a9b59:   nopl   0x0(%rax)
   0.00%  ││││││││  ││││││ │  │ ││    │           │││  │          0x00007f33b71a9b60:   cmp    $0x80000000,%eax
          ││││││││  ││││││ │╭ │ ││    │           │││  │          0x00007f33b71a9b66:   je     0x00007f33b71a9d33           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
          ││││││││  ││││││ ││ │ ││    │           │││  │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@255 (line 225)
          ││││││││  ││││││ ││ │ ││    │           │││  │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.03%  ││││││││  ││││││ ││ │ ││    │           │││  │ ↗↗   ↗   0x00007f33b71a9b6c:   test   $0x1,%eax
          ││││││││  ││││││ ││╭│ ││    │           │││  │ ││   │   0x00007f33b71a9b72:   je     0x00007f33b71a9d19           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││││││││  ││││││ ││││ ││    │           │││  │ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@258 (line 225)
          ││││││││  ││││││ ││││ ││    │           │││  │ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   1.02%  ││││││││  ││││││ ││││ ││↗↗↗↗│↗↗↗↗ ↗ ↗↗↗↗│││↗↗│ ││   │   0x00007f33b71a9b78:   add    %eax,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││││  ││││││ ││││ │││││││││││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@31 (line 123)
   0.80%  ││││││││  ││││││ ││││ │││││││││││ │ ││││││││││ ││   │   0x00007f33b71a9b7b:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││││││││  ││││││ ││││ │││││││││││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@33 (line 122)
   0.23%  ↘│││││││  ││││││ ││││ │││││││││││ │ ││││││││││ ││   │   0x00007f33b71a9b7e:   xchg   %ax,%ax
   0.46%   │││││││  ││││││ ││││ │││││││││││ │ ││││││││││ ││   │   0x00007f33b71a9b80:   cmp    %r11d,%r10d
           │││││││  ││││││ │││╰ │││││││││││ │ ││││││││││ ││   │   0x00007f33b71a9b83:   jg     0x00007f33b71a99e0
           │││││││  ││││││ │││ ╭│││││││││││ │ ││││││││││ ││   │   0x00007f33b71a9b89:   jmp    0x00007f33b71a9d85           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │││││││  ││││││ │││ ││││││││││││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@16 (line 122)
   2.83%   ↘││││││  ││││││ │││ ││││││││││││ │ ││││││││││ ││   │   0x00007f33b71a9b8e:   mov    $0x1,%ebx
   2.29%    ││││││  ││││││ │││ │╰││││││││││ │ ││││││││││ ││   │   0x00007f33b71a9b93:   jmp    0x00007f33b71a9ad1           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
            ││││││  ││││││ │││ │ ││││││││││ │ ││││││││││ ││   │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334085000::invoke@94
            ││││││  ││││││ │││ │ ││││││││││ │ ││││││││││ ││   │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334087800::tableSwitch@103
            ││││││  ││││││ │││ │ ││││││││││ │ ││││││││││ ││   │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f333408b000::delegate@14
            ││││││  ││││││ │││ │ ││││││││││ │ ││││││││││ ││   │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f333408a400::invoke@114
            ││││││  ││││││ │││ │ ││││││││││ │ ││││││││││ ││   │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f333408ac00::linkToTargetMethod@6
            ││││││  ││││││ │││ │ ││││││││││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
            ││││││  ││││││ │││ │ ││││││││││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   2.77%    │↘││││  ││││││ │││ │ ││││││││││ │ ││││││││││ ││   │   0x00007f33b71a9b98:   mov    $0x2,%ebx
   1.50%    │ ││││  ││││││ │││ │ ││││││││││ │ ││││││││││ ││   │   0x00007f33b71a9b9d:   data16 xchg %ax,%ax
            │ ││││  ││││││ │││ │ ╰│││││││││ │ ││││││││││ ││   │   0x00007f33b71a9ba0:   jmp    0x00007f33b71a9ad1
   0.28%    │ ││││  │↘││││ │││ │  │││││││││ │ ││││││││││ ││   │   0x00007f33b71a9ba5:   cmp    $0x102a868,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
            │ ││││  │ ││││ │││ │  │││││││││ │ ││││││││││ ││   │   0x00007f33b71a9bab:   jne    0x00007f33b71aa0bb           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │ ││││  │ ││││ │││ │  │││││││││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@75 (line 194)
            │ ││││  │ ││││ │││ │  │││││││││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.18%    │ ││││  │ ││││ │││ │  │││││││││ │ ││││││││││ ││   │   0x00007f33b71a9bb1:   mov    0xc(,%rax,8),%eax            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
            │ ││││  │ ││││ │││ │  │││││││││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@80 (line 195)
            │ ││││  │ ││││ │││ │  │││││││││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   1.10%    │ ││││  │ ││││ │││ │  │││││││││ │ ││││││││││ ││   │   0x00007f33b71a9bb8:   test   $0x1,%eax
            │ ││││  │ ││││ │││ │  ╰││││││││ │ ││││││││││ ││   │   0x00007f33b71a9bbe:   jne    0x00007f33b71a9b78           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            │ ││││  │ ││││ │││ │   ││││││││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@85 (line 195)
            │ ││││  │ ││││ │││ │   ││││││││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.19%    │ ││││  │ ││││ │││ │   ││││││││ │ ││││││││││ ││   │   0x00007f33b71a9bc0:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
            │ ││││  │ ││││ │││ │   ││││││││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@93 (line 196)
            │ ││││  │ ││││ │││ │   ││││││││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.01%    │ ││││  │ ││││ │││ │   ╰│││││││ │ ││││││││││ ││   │   0x00007f33b71a9bc2:   jmp    0x00007f33b71a9b78
   0.00%    │ ││││  ↘ ││││ │││ │    │││││││ │ ││││││││││ ││   │   0x00007f33b71a9bc4:   cmp    $0x102ac58,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
            │ ││││    ││││ │││ │    │││││││ │ ││││││││││ ││   │   0x00007f33b71a9bca:   jne    0x00007f33b71aa111           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │ ││││    ││││ │││ │    │││││││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@143 (line 206)
            │ ││││    ││││ │││ │    │││││││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.38%    │ ││││    ││││ │││ │    │││││││ │ ││││││││││ ││   │   0x00007f33b71a9bd0:   movswl 0xc(,%rax,8),%eax            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
            │ ││││    ││││ │││ │    │││││││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@150 (line 207)
            │ ││││    ││││ │││ │    │││││││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.98%    │ ││││    ││││ │││ │    │││││││ │ ││││││││││ ││   │   0x00007f33b71a9bd8:   test   $0x1,%eax
            │ ││││    ││││ │││ │    ╰││││││ │ ││││││││││ ││   │   0x00007f33b71a9bde:   jne    0x00007f33b71a9b78           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            │ ││││    ││││ │││ │     ││││││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@155 (line 207)
            │ ││││    ││││ │││ │     ││││││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.16%    │ ││││    ││││ │││ │     ││││││ │ ││││││││││ ││   │   0x00007f33b71a9be0:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
            │ ││││    ││││ │││ │     ││││││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@164 (line 208)
            │ ││││    ││││ │││ │     ││││││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.01%    │ ││││    ││││ │││ │     ╰│││││ │ ││││││││││ ││   │   0x00007f33b71a9be2:   jmp    0x00007f33b71a9b78           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
            │ ││││    ││││ │││ │      │││││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@358 (line 193)
            │ ││││    ││││ │││ │      │││││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   3.15%    ↘ ││││    ││││ │││ │      │││││ │ ││││││││││ ││   │   0x00007f33b71a9be4:   mov    $0x0,%ebx
   2.22%      ││││    ││││ │││ │      ╰││││ │ ││││││││││ ││   │   0x00007f33b71a9be9:   jmp    0x00007f33b71a9ad1
   0.39%      ││││    ││↘│ │││ │       ││││ │ ││││││││││ ││   │   0x00007f33b71a9bee:   cmp    $0x102b660,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
              ││││    ││ │ │││ │       ││││ │ ││││││││││ ││   │   0x00007f33b71a9bf4:   jne    0x00007f33b71aa19d           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              ││││    ││ │ │││ │       ││││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@211 (line 218)
              ││││    ││ │ │││ │       ││││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.10%      ││││    ││ │ │││ │       ││││ │ ││││││││││ ││   │   0x00007f33b71a9bfa:   movzwl 0xc(,%rax,8),%eax            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
              ││││    ││ │ │││ │       ││││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@218 (line 219)
              ││││    ││ │ │││ │       ││││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.75%      ││││    ││ │ │││ │       ││││ │ ││││││││││ ││   │   0x00007f33b71a9c02:   test   $0x1,%eax
              ││││    ││ │ │││ │       ╰│││ │ ││││││││││ ││   │   0x00007f33b71a9c08:   jne    0x00007f33b71a9b78           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
              ││││    ││ │ │││ │        │││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@223 (line 219)
              ││││    ││ │ │││ │        │││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.18%      ││││    ││ │ │││ │        │││ │ ││││││││││ ││   │   0x00007f33b71a9c0e:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
              ││││    ││ │ │││ │        │││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@232 (line 220)
              ││││    ││ │ │││ │        │││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.03%      ││││    ││ │ │││ │        ╰││ │ ││││││││││ ││   │   0x00007f33b71a9c10:   jmp    0x00007f33b71a9b78           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
              ││││    ││ │ │││ │         ││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@358 (line 193)
              ││││    ││ │ │││ │         ││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.14%      ││││    ││ ↘ │││ │         ││ │ ││││││││││ ││   │   0x00007f33b71a9c15:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.18%      ││││    ││   │││ │         ││ │ ││││││││││ ││   │   0x00007f33b71a9c20:   cmp    $0x102ae58,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
              ││││    ││   │││ │         ││ │ ││││││││││ ││   │   0x00007f33b71a9c26:   jne    0x00007f33b71aa1ae           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              ││││    ││   │││ │         ││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@319 (line 236)
              ││││    ││   │││ │         ││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.06%      ││││    ││   │││ │         ││ │ ││││││││││ ││   │   0x00007f33b71a9c2c:   mov    0xc(,%rax,8),%ecx            ; ImmutableOopMap {rcx=NarrowOop rdi=Oop r9=Oop }
              ││││    ││   │││ │         ││ │ ││││││││││ ││   │                                                             ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
              ││││    ││   │││ │         ││ │ ││││││││││ ││   │                                                             ; - (reexecute) java.lang.invoke.LambdaForm$MH/0x00007f3334085000::invoke@94
              ││││    ││   │││ │         ││ │ ││││││││││ ││   │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334087800::tableSwitch@103
              ││││    ││   │││ │         ││ │ ││││││││││ ││   │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f333408b000::delegate@14
              ││││    ││   │││ │         ││ │ ││││││││││ ││   │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f333408a400::invoke@114
              ││││    ││   │││ │         ││ │ ││││││││││ ││   │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f333408ac00::linkToTargetMethod@6
              ││││    ││   │││ │         ││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
              ││││    ││   │││ │         ││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.29%      ││││    ││   │││ │         ││ │ ││││││││││ ││   │   0x00007f33b71a9c33:   mov    0x14(,%rcx,8),%eax           ; implicit exception: dispatches to 0x00007f33b71aa273
   1.34%      ││││    ││   │││ │         ││ │ ││││││││││ ││   │   0x00007f33b71a9c3a:   movsbl 0x10(,%rcx,8),%ecx           ; ImmutableOopMap {rdi=Oop r9=Oop }
              ││││    ││   │││ │         ││ │ ││││││││││ ││   │                                                             ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
              ││││    ││   │││ │         ││ │ ││││││││││ ││   │                                                             ; - (reexecute) java.lang.invoke.LambdaForm$MH/0x00007f3334085000::invoke@94
              ││││    ││   │││ │         ││ │ ││││││││││ ││   │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f3334087800::tableSwitch@103
              ││││    ││   │││ │         ││ │ ││││││││││ ││   │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f333408b000::delegate@14
              ││││    ││   │││ │         ││ │ ││││││││││ ││   │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f333408a400::invoke@114
              ││││    ││   │││ │         ││ │ ││││││││││ ││   │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f333408ac00::linkToTargetMethod@6
              ││││    ││   │││ │         ││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
              ││││    ││   │││ │         ││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.16%      ││││    ││   │││ │         ││ │ ││││││││││ ││   │   0x00007f33b71a9c42:   mov    0xc(,%rax,8),%eax            ; implicit exception: dispatches to 0x00007f33b71aa296
   0.87%      ││││    ││   │││ │         ││ │ ││││││││││ ││   │   0x00007f33b71a9c49:   shr    %cl,%eax                     ;*ishr {reexecute=0 rethrow=0 return_oop=0}
              ││││    ││   │││ │         ││ │ ││││││││││ ││   │                                                             ; - java.lang.String::length@9 (line 1519)
              ││││    ││   │││ │         ││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@329 (line 237)
              ││││    ││   │││ │         ││ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.48%      ││││    ││   │││ │         ││ │ ││││││││││ ││   │   0x00007f33b71a9c4b:   test   $0x1,%eax
              ││││    ││   │││ │         ╰│ │ ││││││││││ ││   │   0x00007f33b71a9c51:   jne    0x00007f33b71a9b78           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
              ││││    ││   │││ │          │ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@334 (line 237)
              ││││    ││   │││ │          │ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.02%      ││││    ││   │││ │          │ │ ││││││││││ ││   │   0x00007f33b71a9c57:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
              ││││    ││   │││ │          │ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@346 (line 238)
              ││││    ││   │││ │          │ │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.03%      ││││    ││   │││ │          ╰ │ ││││││││││ ││   │   0x00007f33b71a9c59:   jmp    0x00007f33b71a9b78           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
              ││││    ││   │││ │            │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@358 (line 193)
              ││││    ││   │││ │            │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.07%      ││││    ↘│   │││ │            │ ││││││││││ ││   │   0x00007f33b71a9c5e:   xchg   %ax,%ax
   0.22%      ││││     │   │││ │            │ ││││││││││ ││   │   0x00007f33b71a9c60:   cmp    $0x102b860,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
              ││││     │   │││ │            │ ││││││││││ ││   │   0x00007f33b71a9c66:   jne    0x00007f33b71aa094           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              ││││     │   │││ │            │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@105 (line 200)
              ││││     │   │││ │            │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.00%      ││││     │   │││ │            │ ││││││││││ ││   │   0x00007f33b71a9c6c:   mov    0x10(,%rax,8),%rax           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
              ││││     │   │││ │            │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@112 (line 201)
              ││││     │   │││ │            │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.74%      ││││     │   │││ │            │ ││││││││││ ││   │   0x00007f33b71a9c74:   mov    %eax,%ecx                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
              ││││     │   │││ │            │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@138 (line 204)
              ││││     │   │││ │            │ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.00%      ││││     │   │││ │            │ ││││││││││ ││   │   0x00007f33b71a9c76:   data16 nopw 0x0(%rax,%rax,1)
              ││││     │   │││ │            │ ││││││││││ ││   │   0x00007f33b71a9c80:   test   $0x1,%rax
              ││││     │   │││ │           ╭│ ││││││││││ ││   │   0x00007f33b71a9c87:   je     0x00007f33b71a9d20           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
              ││││     │   │││ │           ││ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@119 (line 201)
              ││││     │   │││ │           ││ ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.18%      ││││     │   │││ │           ││ ││││││││││ ││   │   0x00007f33b71a9c8d:   mov    %ecx,%eax
   0.00%      ││││     │   │││ │           │╰ ││││││││││ ││   │   0x00007f33b71a9c8f:   jmp    0x00007f33b71a9b78
              ││││     │   ↘││ │           │  ││││││││││ ││   │   0x00007f33b71a9c94:   cmp    $0x102b060,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
              ││││     │    ││ │           │  ││││││││││ ││   │   0x00007f33b71a9c9a:   jne    0x00007f33b71aa11f           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              ││││     │    ││ │           │  ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@282 (line 230)
              ││││     │    ││ │           │  ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.27%      ││││     │    ││ │           │  ││││││││││ ││   │   0x00007f33b71a9ca0:   vmovss 0xc(,%rax,8),%xmm2           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
              ││││     │    ││ │           │  ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@289 (line 231)
              ││││     │    ││ │           │  ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.63%      ││││     │    ││ │           │  ││││││││││ ││   │   0x00007f33b71a9ca9:   vcvttss2si %xmm2,%eax
   1.60%      ││││     │    ││ │           │  ││││││││││ ││   │   0x00007f33b71a9cad:   cmp    $0x80000000,%eax
              ││││     │    ││ │           │ ╭││││││││││ ││   │   0x00007f33b71a9cb3:   je     0x00007f33b71a9d51           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
              ││││     │    ││ │           │ │││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@292 (line 231)
              ││││     │    ││ │           │ │││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.01%      ││││     │    ││ │           │ │││││││││││ ││ ↗↗│↗  0x00007f33b71a9cb9:   nopl   0x0(%rax)
   0.08%      ││││     │    ││ │           │ │││││││││││ ││ ││││  0x00007f33b71a9cc0:   test   $0x1,%eax
              ││││     │    ││ │           │ │╰│││││││││ ││ ││││  0x00007f33b71a9cc6:   jne    0x00007f33b71a9b78           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
              ││││     │    ││ │           │ │ │││││││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@295 (line 231)
              ││││     │    ││ │           │ │ │││││││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.05%      ││││     │    ││ │           │ │ │││││││││ ││ ││││  0x00007f33b71a9ccc:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
              ││││     │    ││ │           │ │ │││││││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@305 (line 232)
              ││││     │    ││ │           │ │ │││││││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.11%      ││││     │    ││ │           │ │ ╰││││││││ ││ ││││  0x00007f33b71a9cce:   jmp    0x00007f33b71a9b78
   0.35%      ││││     ↘    ││ │           │ │  ││││││││ ││ ││││  0x00007f33b71a9cd3:   cmp    $0x102b460,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
              ││││          ││ │           │ │  ││││││││ ││ ││││  0x00007f33b71a9cd9:   jne    0x00007f33b71aa130           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              ││││          ││ │           │ │  ││││││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@177 (line 212)
              ││││          ││ │           │ │  ││││││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.03%      ││││          ││ │           │ │  ││││││││ ││ ││││  0x00007f33b71a9cdf:   movsbl 0xc(,%rax,8),%eax            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
              ││││          ││ │           │ │  ││││││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@184 (line 213)
              ││││          ││ │           │ │  ││││││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.91%      ││││          ││ │           │ │  ││││││││ ││ ││││  0x00007f33b71a9ce7:   test   $0x1,%eax
              ││││          ││ │           │ │  ╰│││││││ ││ ││││  0x00007f33b71a9ced:   jne    0x00007f33b71a9b78           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
              ││││          ││ │           │ │   │││││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@189 (line 213)
              ││││          ││ │           │ │   │││││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.16%      ││││          ││ │           │ │   │││││││ ││ ││││  0x00007f33b71a9cf3:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
              ││││          ││ │           │ │   │││││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@198 (line 214)
              ││││          ││ │           │ │   │││││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.04%      ││││          ││ │           │ │   ╰││││││ ││ ││││  0x00007f33b71a9cf5:   jmp    0x00007f33b71a9b78           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
              ││││          ││ │           │ │    ││││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@358 (line 193)
              ││││          ││ │           │ │    ││││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   2.69%      ↘│││          ││ │           │ │    ││││││ ││ ││││  0x00007f33b71a9cfa:   mov    $0x3,%ebx
   1.38%       │││          ││ │           │ │    ││││││ ││ ││││  0x00007f33b71a9cff:   nop
   0.00%       │││          ││ │           │ │    ╰│││││ ││ ││││  0x00007f33b71a9d00:   jmp    0x00007f33b71a9ad1           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
               │││          ││ │           │ │     │││││ ││ ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@92
               │││          ││ │           │ │     │││││ ││ ││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
               │││          ││ │           │ │     │││││ ││ ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
               │││          ││ │           │ │     │││││ ││ ││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
               │││          ││ │           │ │     │││││ ││ ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f3334085000::invoke@91
               │││          ││ │           │ │     │││││ ││ ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f3334087800::tableSwitch@103
               │││          ││ │           │ │     │││││ ││ ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f333408b000::delegate@14
               │││          ││ │           │ │     │││││ ││ ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f333408a400::invoke@114
               │││          ││ │           │ │     │││││ ││ ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f333408ac00::linkToTargetMethod@6
               │││          ││ │           │ │     │││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
               │││          ││ │           │ │     │││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   2.43%       ↘││          ││ │           │ │     │││││ ││ ││││  0x00007f33b71a9d05:   mov    $0x4,%ebx
   2.16%        ││          ││ │           │ │     ╰││││ ││ ││││  0x00007f33b71a9d0a:   jmp    0x00007f33b71a9ad1           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                ││          ││ │           │ │      ││││ ││ ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@92
                ││          ││ │           │ │      ││││ ││ ││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                ││          ││ │           │ │      ││││ ││ ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
                ││          ││ │           │ │      ││││ ││ ││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                ││          ││ │           │ │      ││││ ││ ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
                ││          ││ │           │ │      ││││ ││ ││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                ││          ││ │           │ │      ││││ ││ ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f3334085000::invoke@91
                ││          ││ │           │ │      ││││ ││ ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f3334087800::tableSwitch@103
                ││          ││ │           │ │      ││││ ││ ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f333408b000::delegate@14
                ││          ││ │           │ │      ││││ ││ ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f333408a400::invoke@114
                ││          ││ │           │ │      ││││ ││ ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f333408ac00::linkToTargetMethod@6
                ││          ││ │           │ │      ││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
                ││          ││ │           │ │      ││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   2.52%        ↘│          ││ │           │ │      ││││ ││ ││││  0x00007f33b71a9d0f:   mov    $0x5,%ebx
   1.85%         │          ││ │           │ │      ╰│││ ││ ││││  0x00007f33b71a9d14:   jmp    0x00007f33b71a9ad1           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                 │          ││ │           │ │       │││ ││ ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@92
                 │          ││ │           │ │       │││ ││ ││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                 │          ││ │           │ │       │││ ││ ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
                 │          ││ │           │ │       │││ ││ ││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                 │          ││ │           │ │       │││ ││ ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
                 │          ││ │           │ │       │││ ││ ││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                 │          ││ │           │ │       │││ ││ ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
                 │          ││ │           │ │       │││ ││ ││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                 │          ││ │           │ │       │││ ││ ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f3334085000::invoke@91
                 │          ││ │           │ │       │││ ││ ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f3334087800::tableSwitch@103
                 │          ││ │           │ │       │││ ││ ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f333408b000::delegate@14
                 │          ││ │           │ │       │││ ││ ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f333408a400::invoke@114
                 │          ││ │           │ │       │││ ││ ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f333408ac00::linkToTargetMethod@6
                 │          ││ │           │ │       │││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
                 │          ││ │           │ │       │││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.18%         │          │↘ │           │ │       │││ ││ ││││  0x00007f33b71a9d19:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                 │          │  │           │ │       │││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@268 (line 226)
                 │          │  │           │ │       │││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.03%         │          │  │           │ │       ╰││ ││ ││││  0x00007f33b71a9d1b:   jmp    0x00007f33b71a9b78           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                 │          │  │           │ │        ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@358 (line 193)
                 │          │  │           │ │        ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.15%         │          │  │           ↘ │        ││ ││ ││││  0x00007f33b71a9d20:   shl    %ecx                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                 │          │  │             │        ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@129 (line 202)
                 │          │  │             │        ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.01%         │          │  │             │        ││ ││ ││││  0x00007f33b71a9d22:   mov    %ecx,%eax
                 │          │  │             │        ╰│ ││ ││││  0x00007f33b71a9d24:   jmp    0x00007f33b71a9b78           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                 │          │  │             │         │ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@358 (line 193)
                 │          │  │             │         │ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   1.35%         ↘          │  │             │         │ ││ ││││  0x00007f33b71a9d29:   mov    $0x6,%ebx
   1.16%                    │  │             │         ╰ ││ ││││  0x00007f33b71a9d2e:   jmp    0x00007f33b71a9ad1           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                            │  │             │           ││ ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@92
                            │  │             │           ││ ││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                            │  │             │           ││ ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
                            │  │             │           ││ ││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                            │  │             │           ││ ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
                            │  │             │           ││ ││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                            │  │             │           ││ ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
                            │  │             │           ││ ││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                            │  │             │           ││ ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@89
                            │  │             │           ││ ││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                            │  │             │           ││ ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f3334085000::invoke@91
                            │  │             │           ││ ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f3334087800::tableSwitch@103
                            │  │             │           ││ ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f333408b000::delegate@14
                            │  │             │           ││ ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f333408a400::invoke@114
                            │  │             │           ││ ││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f333408ac00::linkToTargetMethod@6
                            │  │             │           ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
                            │  │             │           ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
                            ↘  │             │           ││ ││││  0x00007f33b71a9d33:   vucomisd %xmm2,%xmm2
                               │             │          ╭││ ││││  0x00007f33b71a9d37:   jp     0x00007f33b71a9d70
                               │             │          │││ ││││  0x00007f33b71a9d3d:   vucomisd %xmm1,%xmm2
                               │             │          │╰│ ││││  0x00007f33b71a9d41:   jbe    0x00007f33b71a9b6c
                               │             │          │ │ ││││  0x00007f33b71a9d47:   mov    $0x7fffffff,%eax
                               │             │          │ ╰ ││││  0x00007f33b71a9d4c:   jmp    0x00007f33b71a9b6c           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
                               │             │          │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@255 (line 225)
                               │             │          │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
                               │             ↘          │   ││││  0x00007f33b71a9d51:   vucomiss %xmm2,%xmm2
                               │                        │  ╭││││  0x00007f33b71a9d55:   jp     0x00007f33b71a9d7a
                               │                        │  │││││  0x00007f33b71a9d5b:   vucomiss %xmm0,%xmm2
                               │                        │  │││││  0x00007f33b71a9d5f:   nop
                               │                        │  │╰│││  0x00007f33b71a9d60:   jbe    0x00007f33b71a9cb9
                               │                        │  │ │││  0x00007f33b71a9d66:   mov    $0x7fffffff,%eax
                               │                        │  │ ╰││  0x00007f33b71a9d6b:   jmp    0x00007f33b71a9cb9           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
                               │                        │  │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@292 (line 231)
                               │                        │  │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
                               │                        ↘  │  ││  0x00007f33b71a9d70:   mov    $0x0,%eax
                               │                           │  ╰│  0x00007f33b71a9d75:   jmp    0x00007f33b71a9b6c           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
                               │                           │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@255 (line 225)
                               │                           │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
                               │                           ↘   │  0x00007f33b71a9d7a:   mov    $0x0,%eax
                               │                               │  0x00007f33b71a9d7f:   nop
                               │                               ╰  0x00007f33b71a9d80:   jmp    0x00007f33b71a9cb9           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
                               │                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@292 (line 231)
                               │                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.00%                       ↘                                  0x00007f33b71a9d85:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@40 (line 125)
                                                                  0x00007f33b71a9d88:   mov    0x10(%rsp),%rbp
                                                                  0x00007f33b71a9d8d:   add    $0x18,%rsp
                                                                  0x00007f33b71a9d91:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                                                                  0x00007f33b71a9d98:   ja     0x00007f33b71aa1f2
                                                                  0x00007f33b71a9d9e:   ret                                 ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@55
                                                                                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f3334085000::invoke@91
                                                                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f3334087800::tableSwitch@103
                                                                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f333408b000::delegate@14
                                                                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f333408a400::invoke@114
                                                                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f333408ac00::linkToTargetMethod@6
                                                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
                                                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
                                                                  0x00007f33b71a9d9f:   mov    $0x1,%r8d
                                                                  0x00007f33b71a9da5:   jmp    0x00007f33b71a98d3           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f3334085000::invoke@94
                                                                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f3334087800::tableSwitch@103
                                                                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f333408b000::delegate@14
                                                                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f333408a400::invoke@114
                                                                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f333408ac00::linkToTargetMethod@6
                                                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
                                                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.00%                                                          0x00007f33b71a9daa:   mov    $0x2,%r8d
                                                                  0x00007f33b71a9db0:   jmp    0x00007f33b71a98d3           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f3334084800::guard@92
                                                                                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
....................................................................................................
  96.84%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.84%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array, version 4, compile id 1199 
   0.25%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.21%     [kernel.kallsyms]  __free_one_page 
   0.21%     [kernel.kallsyms]  release_pages 
   0.20%     [kernel.kallsyms]  refill_obj_stock 
   0.18%     [kernel.kallsyms]  native_read_msr 
   0.15%     [kernel.kallsyms]  page_remove_rmap 
   0.13%     [kernel.kallsyms]  zap_pte_range 
   0.10%     [kernel.kallsyms]  __mod_node_page_state 
   0.10%     [kernel.kallsyms]  free_unref_page_list 
   0.10%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.10%     [kernel.kallsyms]  lock_page_memcg 
   0.08%     [kernel.kallsyms]  __rcu_read_unlock 
   0.08%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.07%     [kernel.kallsyms]  __rcu_read_lock 
   0.06%     [kernel.kallsyms]  __mod_zone_page_state 
   0.05%     [kernel.kallsyms]  free_unref_page_commit 
   0.05%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.04%     [kernel.kallsyms]  free_swap_cache 
   0.04%     [kernel.kallsyms]  __tlb_remove_page_size 
   0.98%  <...other 240 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.84%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array, version 4, compile id 1199 
   0.25%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.21%     [kernel.kallsyms]  __free_one_page 
   0.21%     [kernel.kallsyms]  release_pages 
   0.20%     [kernel.kallsyms]  refill_obj_stock 
   0.18%     [kernel.kallsyms]  native_read_msr 
   0.15%     [kernel.kallsyms]  page_remove_rmap 
   0.13%     [kernel.kallsyms]  zap_pte_range 
   0.10%     [kernel.kallsyms]  __mod_node_page_state 
   0.10%     [kernel.kallsyms]  free_unref_page_list 
   0.10%     [kernel.kallsyms]  lock_page_memcg 
   0.10%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.08%     [kernel.kallsyms]  __rcu_read_unlock 
   0.08%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.07%     [kernel.kallsyms]  __rcu_read_lock 
   0.06%     [kernel.kallsyms]  __mod_zone_page_state 
   0.05%     [kernel.kallsyms]  free_unref_page_commit 
   0.05%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.04%     [kernel.kallsyms]  free_swap_cache 
   0.04%     [kernel.kallsyms]  __tlb_remove_page_size 
   0.98%  <...other 235 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.84%        jvmci, level 4
   2.75%     [kernel.kallsyms]
   0.18%             libjvm.so
   0.09%             libc.so.6
   0.05%   libjvmcicompiler.so
   0.04%           interpreter
   0.02%        hsdis-amd64.so
   0.01%                [vdso]
   0.01%           c1, level 3
   0.00%                      
   0.00%  ld-linux-x86-64.so.2
   0.00%          libjimage.so
   0.00%        libz.so.1.2.11
   0.00%        perf-11324.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_interface_array

# Run progress: 62.50% complete, ETA 00:07:06
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 91.860 ns/op
# Warmup Iteration   2: 48.001 ns/op
# Warmup Iteration   3: 47.702 ns/op
# Warmup Iteration   4: 47.674 ns/op
# Warmup Iteration   5: 47.749 ns/op
Iteration   1: 48.078 ns/op
Iteration   2: 47.579 ns/op
Iteration   3: 47.800 ns/op
Iteration   4: 47.719 ns/op
Iteration   5: 47.902 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_interface_array":
  47.816 ±(99.9%) 0.725 ns/op [Average]
  (min, avg, max) = (47.579, 47.816, 48.078), stdev = 0.188
  CI (99.9%): [47.090, 48.541] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_interface_array:asm":
PrintAssembly processed: 251446 total address lines.
Perf output processed (skipped 82.606 seconds):
 Column 1: cycles (49515 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array, version 4, compile id 1192 

                                                        0x00007efc271a7e33:   mov    %r11d,%r8d
                                                        0x00007efc271a7e36:   mov    $0x1,%r11d
                                                        0x00007efc271a7e3c:   nopl   0x0(%rax)
          ╭                                             0x00007efc271a7e40:   jmp    0x00007efc271a7ff2           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@13 (line 100)
          │                                             0x00007efc271a7e45:   data16 data16 nopw 0x0(%rax,%rax,1)
          │                                             0x00007efc271a7e50:   data16 data16 xchg %ax,%ax
          │                                             0x00007efc271a7e54:   nopl   0x0(%rax,%rax,1)
          │                                             0x00007efc271a7e5c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@16 (line 100)
   0.39%  │                  ↗                          0x00007efc271a7e60:   mov    0x10(%r9,%r11,4),%eax        ; ImmutableOopMap {rax=NarrowOop r9=Oop }
          │                  │                                                                                    ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │                  │                                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@13 (line 100)
   2.67%  │                  │                          0x00007efc271a7e65:   mov    0x8(,%rax,8),%ecx            ; implicit exception: dispatches to 0x00007efc271a8590
   8.88%  │                  │                          0x00007efc271a7e6c:   cmp    $0x102b860,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
          │╭                 │                          0x00007efc271a7e72:   je     0x00007efc271a8000           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││                 │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4085000::invoke@94
          ││                 │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4087800::tableSwitch@103
          ││                 │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba408b000::delegate@14
          ││                 │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba408a400::invoke@114
          ││                 │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba408ac00::linkToTargetMethod@6
          ││                 │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
          ││                 │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   1.71%  ││                 │                          0x00007efc271a7e78:   nopl   0x0(%rax,%rax,1)
   0.31%  ││                 │                          0x00007efc271a7e80:   cmp    $0x102a868,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
          ││╭                │                          0x00007efc271a7e86:   je     0x00007efc271a8014
   3.00%  │││                │                          0x00007efc271a7e8c:   cmp    $0x102ac58,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
   0.26%  │││                │                          0x00007efc271a7e92:   sete   %bl
   0.23%  │││                │                          0x00007efc271a7e95:   movzbl %bl,%ebx                     method is native {reexecute=0 rethrow=0 return_oop=0}
          │││                │                                                                                    ; - java.lang.Class::isInstance@0
          │││                │                                                                                    ; - java.lang.invoke.LambdaForm$DMH/0x00007efba4007000::invokeSpecial@11
          │││                │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4083400::invoke@21
          │││                │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@32
          │││                │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││                │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
          │││                │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││                │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4085000::invoke@91
          │││                │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4087800::tableSwitch@103
          │││                │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba408b000::delegate@14
          │││                │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba408a400::invoke@114
          │││                │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba408ac00::linkToTargetMethod@6
          │││                │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
          │││                │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.49%  │││                │                          0x00007efc271a7e98:   nopl   0x0(%rax,%rax,1)
   1.00%  │││                │                          0x00007efc271a7ea0:   test   $0x1,%ebx
          │││╭               │                          0x00007efc271a7ea6:   jne    0x00007efc271a800a
   1.29%  ││││               │                          0x00007efc271a7eac:   cmp    $0x102b460,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
   0.38%  ││││               │                          0x00007efc271a7eb2:   sete   %bl
   0.33%  ││││               │                          0x00007efc271a7eb5:   movzbl %bl,%ebx                     method is native {reexecute=0 rethrow=0 return_oop=0}
          ││││               │                                                                                    ; - java.lang.Class::isInstance@0
          ││││               │                                                                                    ; - java.lang.invoke.LambdaForm$DMH/0x00007efba4007000::invokeSpecial@11
          ││││               │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4083400::invoke@21
          ││││               │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@32
          ││││               │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││               │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
          ││││               │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││               │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
          ││││               │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││               │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4085000::invoke@91
          ││││               │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4087800::tableSwitch@103
          ││││               │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba408b000::delegate@14
          ││││               │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba408a400::invoke@114
          ││││               │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba408ac00::linkToTargetMethod@6
          ││││               │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
          ││││               │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.74%  ││││               │                          0x00007efc271a7eb8:   nopl   0x0(%rax,%rax,1)
   0.40%  ││││               │                          0x00007efc271a7ec0:   test   $0x1,%ebx
          ││││╭              │                          0x00007efc271a7ec6:   jne    0x00007efc271a811e
   2.05%  │││││              │                          0x00007efc271a7ecc:   cmp    $0x102b660,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
   0.40%  │││││              │                          0x00007efc271a7ed2:   sete   %bl
   0.21%  │││││              │                          0x00007efc271a7ed5:   movzbl %bl,%ebx                     method is native {reexecute=0 rethrow=0 return_oop=0}
          │││││              │                                                                                    ; - java.lang.Class::isInstance@0
          │││││              │                                                                                    ; - java.lang.invoke.LambdaForm$DMH/0x00007efba4007000::invokeSpecial@11
          │││││              │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4083400::invoke@21
          │││││              │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@32
          │││││              │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││              │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
          │││││              │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││              │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
          │││││              │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││              │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
          │││││              │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││              │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4085000::invoke@91
          │││││              │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4087800::tableSwitch@103
          │││││              │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba408b000::delegate@14
          │││││              │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba408a400::invoke@114
          │││││              │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba408ac00::linkToTargetMethod@6
          │││││              │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
          │││││              │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.25%  │││││              │                          0x00007efc271a7ed8:   nopl   0x0(%rax,%rax,1)
   0.64%  │││││              │                          0x00007efc271a7ee0:   test   $0x1,%ebx
          │││││╭             │                          0x00007efc271a7ee6:   jne    0x00007efc271a8128
   1.33%  ││││││             │                          0x00007efc271a7eec:   cmp    $0x102b260,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
   0.56%  ││││││             │                          0x00007efc271a7ef2:   sete   %bl
   0.35%  ││││││             │                          0x00007efc271a7ef5:   movzbl %bl,%ebx                     method is native {reexecute=0 rethrow=0 return_oop=0}
          ││││││             │                                                                                    ; - java.lang.Class::isInstance@0
          ││││││             │                                                                                    ; - java.lang.invoke.LambdaForm$DMH/0x00007efba4007000::invokeSpecial@11
          ││││││             │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4083400::invoke@21
          ││││││             │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@32
          ││││││             │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││             │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
          ││││││             │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││             │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
          ││││││             │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││             │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
          ││││││             │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││             │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
          ││││││             │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││             │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4085000::invoke@91
          ││││││             │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4087800::tableSwitch@103
          ││││││             │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba408b000::delegate@14
          ││││││             │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba408a400::invoke@114
          ││││││             │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba408ac00::linkToTargetMethod@6
          ││││││             │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
          ││││││             │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.46%  ││││││             │                          0x00007efc271a7ef8:   nopl   0x0(%rax,%rax,1)
   0.26%  ││││││             │                          0x00007efc271a7f00:   test   $0x1,%ebx
          ││││││╭            │                          0x00007efc271a7f06:   jne    0x00007efc271a8132
   1.73%  │││││││            │                          0x00007efc271a7f0c:   cmp    $0x102b060,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
   0.54%  │││││││            │                          0x00007efc271a7f12:   sete   %bl
   0.40%  │││││││            │                          0x00007efc271a7f15:   movzbl %bl,%ebx                     method is native {reexecute=0 rethrow=0 return_oop=0}
          │││││││            │                                                                                    ; - java.lang.Class::isInstance@0
          │││││││            │                                                                                    ; - java.lang.invoke.LambdaForm$DMH/0x00007efba4007000::invokeSpecial@11
          │││││││            │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4083400::invoke@21
          │││││││            │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@32
          │││││││            │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││            │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
          │││││││            │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││            │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
          │││││││            │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││            │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
          │││││││            │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││            │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
          │││││││            │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││            │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
          │││││││            │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││            │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4085000::invoke@91
          │││││││            │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4087800::tableSwitch@103
          │││││││            │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba408b000::delegate@14
          │││││││            │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba408a400::invoke@114
          │││││││            │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba408ac00::linkToTargetMethod@6
          │││││││            │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
          │││││││            │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.16%  │││││││            │                          0x00007efc271a7f18:   nopl   0x0(%rax,%rax,1)
   0.31%  │││││││            │                          0x00007efc271a7f20:   test   $0x1,%ebx
          │││││││╭           │                          0x00007efc271a7f26:   jne    0x00007efc271a813c
   1.47%  ││││││││           │                          0x00007efc271a7f2c:   cmp    $0x102ae58,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
   0.74%  ││││││││           │                          0x00007efc271a7f32:   sete   %bl
   0.53%  ││││││││           │                          0x00007efc271a7f35:   movzbl %bl,%ebx                     method is native {reexecute=0 rethrow=0 return_oop=0}
          ││││││││           │                                                                                    ; - java.lang.Class::isInstance@0
          ││││││││           │                                                                                    ; - java.lang.invoke.LambdaForm$DMH/0x00007efba4007000::invokeSpecial@11
          ││││││││           │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4083400::invoke@21
          ││││││││           │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@32
          ││││││││           │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
          ││││││││           │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
          ││││││││           │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
          ││││││││           │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
          ││││││││           │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
          ││││││││           │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
          ││││││││           │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4085000::invoke@91
          ││││││││           │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4087800::tableSwitch@103
          ││││││││           │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba408b000::delegate@14
          ││││││││           │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba408a400::invoke@114
          ││││││││           │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba408ac00::linkToTargetMethod@6
          ││││││││           │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
          ││││││││           │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.07%  ││││││││           │                          0x00007efc271a7f38:   nopl   0x0(%rax,%rax,1)
   0.06%  ││││││││           │                          0x00007efc271a7f40:   test   $0x1,%ebx
          ││││││││           │                          0x00007efc271a7f46:   je     0x00007efc271a84dd           ;* unwind (locked if synchronized)
          ││││││││           │                                                                                    ; - java.lang.invoke.MethodHandleImpl::profileBoolean@-3
          ││││││││           │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@46
          ││││││││           │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
          ││││││││           │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
          ││││││││           │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
          ││││││││           │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
          ││││││││           │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
          ││││││││           │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
          ││││││││           │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4085000::invoke@91
          ││││││││           │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4087800::tableSwitch@103
          ││││││││           │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba408b000::delegate@14
          ││││││││           │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba408a400::invoke@114
          ││││││││           │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba408ac00::linkToTargetMethod@6
          ││││││││           │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
          ││││││││           │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.11%  ││││││││           │                          0x00007efc271a7f4c:   mov    $0x7,%ebx                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││││││││           │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@92
          ││││││││           │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
          ││││││││           │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
          ││││││││           │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
          ││││││││           │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
          ││││││││           │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
          ││││││││           │                                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││           │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4085000::invoke@91
          ││││││││           │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba4087800::tableSwitch@103
          ││││││││           │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba408b000::delegate@14
          ││││││││           │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba408a400::invoke@114
          ││││││││           │                                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007efba408ac00::linkToTargetMethod@6
          ││││││││           │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
          ││││││││           │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   1.45%  ││││││││           │ ↗↗↗          ↗↗↗↗        0x00007efc271a7f51:   mov    %eax,%edi
   0.04%  ││││││││           │ │││          ││││        0x00007efc271a7f53:   shl    $0x3,%rdi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││││││││           │ │││          ││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@22 (line 100)
   2.74%  ││││││││           │ │││          ││││        0x00007efc271a7f57:   cmp    $0x5,%ebx
          ││││││││╭          │ │││          ││││        0x00007efc271a7f5a:   jge    0x00007efc271a7f99
   1.75%  │││││││││          │ │││          ││││        0x00007efc271a7f60:   cmp    $0x3,%ebx
          │││││││││╭         │ │││          ││││        0x00007efc271a7f63:   jge    0x00007efc271a7f8b
   0.30%  ││││││││││         │ │││          ││││        0x00007efc271a7f69:   cmp    $0x2,%ebx
          ││││││││││╭        │ │││          ││││        0x00007efc271a7f6c:   jge    0x00007efc271a80a8
   0.09%  │││││││││││        │ │││          ││││        0x00007efc271a7f72:   cmp    $0x0,%ebx
          │││││││││││╭       │ │││          ││││        0x00007efc271a7f75:   je     0x00007efc271a801e
   0.61%  ││││││││││││       │ │││          ││││        0x00007efc271a7f7b:   cmp    $0x1,%ebx
   0.11%  ││││││││││││       │ │││          ││││        0x00007efc271a7f7e:   xchg   %ax,%ax
   0.05%  ││││││││││││╭      │ │││          ││││        0x00007efc271a7f80:   je     0x00007efc271a8090
          │││││││││││││      │ │││          ││││        0x00007efc271a7f86:   jmp    0x00007efc271a845f
   0.11%  │││││││││↘│││      │ │││          ││││        0x00007efc271a7f8b:   cmp    $0x3,%ebx
          │││││││││ │││╭     │ │││          ││││        0x00007efc271a7f8e:   je     0x00007efc271a8105
   0.21%  │││││││││ ││││╭    │ │││          ││││        0x00007efc271a7f94:   jmp    0x00007efc271a8037
   0.63%  ││││││││↘ │││││    │ │││          ││││        0x00007efc271a7f99:   cmp    $0x7,%ebx
   0.26%  ││││││││  │││││    │ │││          ││││        0x00007efc271a7f9c:   nopl   0x0(%rax)
   0.00%  ││││││││  │││││    │ │││          ││││        0x00007efc271a7fa0:   jg     0x00007efc271a845f
   0.82%  ││││││││  │││││    │ │││          ││││        0x00007efc271a7fa6:   cmp    $0x7,%ebx
          ││││││││  │││││╭   │ │││          ││││        0x00007efc271a7fa9:   jge    0x00007efc271a8058
   0.57%  ││││││││  ││││││   │ │││          ││││        0x00007efc271a7faf:   cmp    $0x5,%ebx
          ││││││││  ││││││╭  │ │││          ││││        0x00007efc271a7fb2:   je     0x00007efc271a7fbd
   0.04%  ││││││││  │││││││╭ │ │││          ││││        0x00007efc271a7fb8:   jmp    0x00007efc271a80c5           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││││││││  ││││││││ │ │││          ││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@16 (line 180)
          ││││││││  ││││││││ │ │││          ││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.25%  ││││││││  ││││││↘│ │ │││          ││││        0x00007efc271a7fbd:   data16 xchg %ax,%ax
          ││││││││  ││││││ │ │ │││          ││││        0x00007efc271a7fc0:   cmp    $0x102b260,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
          ││││││││  ││││││ │ │ │││          ││││        0x00007efc271a7fc6:   jne    0x00007efc271a83cb           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││││││││  ││││││ │ │ │││          ││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@144 (line 186)
          ││││││││  ││││││ │ │ │││          ││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.03%  ││││││││  ││││││ │ │ │││          ││││        0x00007efc271a7fcc:   vmovsd 0x10(,%rax,8),%xmm2          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││││││││  ││││││ │ │ │││          ││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@151 (line 186)
          ││││││││  ││││││ │ │ │││          ││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.79%  ││││││││  ││││││ │ │ │││          ││││        0x00007efc271a7fd5:   vcvttsd2si %xmm2,%eax
   1.85%  ││││││││  ││││││ │ │ │││          ││││        0x00007efc271a7fd9:   nopl   0x0(%rax)
          ││││││││  ││││││ │ │ │││          ││││        0x00007efc271a7fe0:   cmp    $0x80000000,%eax
          ││││││││  ││││││ │╭│ │││          ││││        0x00007efc271a7fe6:   je     0x00007efc271a8146           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
          ││││││││  ││││││ │││ │││          ││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@154 (line 186)
          ││││││││  ││││││ │││ │││          ││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.14%  ││││││││  ││││││ │││ │││↗↗↗↗↗↗  ↗↗││││ ↗↗↗↗↗  0x00007efc271a7fec:   add    %eax,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││││  ││││││ │││ │││││││││  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@31 (line 101)
   1.66%  ││││││││  ││││││ │││ │││││││││  ││││││ │││││  0x00007efc271a7fef:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││││││││  ││││││ │││ │││││││││  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@33 (line 100)
   0.02%  ↘│││││││  ││││││ │││ │││││││││  ││││││ │││││  0x00007efc271a7ff2:   cmp    %r11d,%r10d
           │││││││  ││││││ ││╰ │││││││││  ││││││ │││││  0x00007efc271a7ff5:   jg     0x00007efc271a7e60
           │││││││  ││││││ ││ ╭│││││││││  ││││││ │││││  0x00007efc271a7ffb:   jmp    0x00007efc271a8185           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │││││││  ││││││ ││ ││││││││││  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@16 (line 100)
   3.03%   ↘││││││  ││││││ ││ ││││││││││  ││││││ │││││  0x00007efc271a8000:   mov    $0x1,%ebx
   2.39%    ││││││  ││││││ ││ │╰││││││││  ││││││ │││││  0x00007efc271a8005:   jmp    0x00007efc271a7f51           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
            ││││││  ││││││ ││ │ ││││││││  ││││││ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba4085000::invoke@94
            ││││││  ││││││ ││ │ ││││││││  ││││││ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba4087800::tableSwitch@103
            ││││││  ││││││ ││ │ ││││││││  ││││││ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba408b000::delegate@14
            ││││││  ││││││ ││ │ ││││││││  ││││││ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba408a400::invoke@114
            ││││││  ││││││ ││ │ ││││││││  ││││││ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba408ac00::linkToTargetMethod@6
            ││││││  ││││││ ││ │ ││││││││  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
            ││││││  ││││││ ││ │ ││││││││  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   3.43%    │↘││││  ││││││ ││ │ ││││││││  ││││││ │││││  0x00007efc271a800a:   mov    $0x2,%ebx
   2.39%    │ ││││  ││││││ ││ │ ╰│││││││  ││││││ │││││  0x00007efc271a800f:   jmp    0x00007efc271a7f51           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
            │ ││││  ││││││ ││ │  │││││││  ││││││ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@92
            │ ││││  ││││││ ││ │  │││││││  ││││││ │││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
            │ ││││  ││││││ ││ │  │││││││  ││││││ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba4085000::invoke@91
            │ ││││  ││││││ ││ │  │││││││  ││││││ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba4087800::tableSwitch@103
            │ ││││  ││││││ ││ │  │││││││  ││││││ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba408b000::delegate@14
            │ ││││  ││││││ ││ │  │││││││  ││││││ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba408a400::invoke@114
            │ ││││  ││││││ ││ │  │││││││  ││││││ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba408ac00::linkToTargetMethod@6
            │ ││││  ││││││ ││ │  │││││││  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
            │ ││││  ││││││ ││ │  │││││││  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   3.25%    ↘ ││││  ││││││ ││ │  │││││││  ││││││ │││││  0x00007efc271a8014:   mov    $0x0,%ebx
   2.55%      ││││  ││││││ ││ │  ╰││││││  ││││││ │││││  0x00007efc271a8019:   jmp    0x00007efc271a7f51           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
              ││││  ││││││ ││ │   ││││││  ││││││ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba4085000::invoke@94
              ││││  ││││││ ││ │   ││││││  ││││││ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba4087800::tableSwitch@103
              ││││  ││││││ ││ │   ││││││  ││││││ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba408b000::delegate@14
              ││││  ││││││ ││ │   ││││││  ││││││ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba408a400::invoke@114
              ││││  ││││││ ││ │   ││││││  ││││││ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba408ac00::linkToTargetMethod@6
              ││││  ││││││ ││ │   ││││││  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
              ││││  ││││││ ││ │   ││││││  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.23%      ││││  │↘││││ ││ │   ││││││  ││││││ │││││  0x00007efc271a801e:   xchg   %ax,%ax
   0.12%      ││││  │ ││││ ││ │   ││││││  ││││││ │││││  0x00007efc271a8020:   cmp    $0x102a868,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
              ││││  │ ││││ ││ │   ││││││  ││││││ │││││  0x00007efc271a8026:   jne    0x00007efc271a8470           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              ││││  │ ││││ ││ │   ││││││  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@75 (line 181)
              ││││  │ ││││ ││ │   ││││││  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.02%      ││││  │ ││││ ││ │   ││││││  ││││││ │││││  0x00007efc271a802c:   mov    0xc(,%rax,8),%ecx            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
              ││││  │ ││││ ││ │   ││││││  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@80 (line 181)
              ││││  │ ││││ ││ │   ││││││  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   1.33%      ││││  │ ││││ ││ │   ││││││  ││││││ │││││  0x00007efc271a8033:   mov    %ecx,%eax
   0.01%      ││││  │ ││││ ││ │   ╰│││││  ││││││ │││││  0x00007efc271a8035:   jmp    0x00007efc271a7fec           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
              ││││  │ ││││ ││ │    │││││  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@187 (line 180)
              ││││  │ ││││ ││ │    │││││  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.36%      ││││  │ ││↘│ ││ │    │││││  ││││││ │││││  0x00007efc271a8037:   nopw   0x0(%rax,%rax,1)
              ││││  │ ││ │ ││ │    │││││  ││││││ │││││  0x00007efc271a8040:   cmp    $0x102b660,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
              ││││  │ ││ │ ││ │    │││││  ││││││ │││││  0x00007efc271a8046:   jne    0x00007efc271a8511           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              ││││  │ ││ │ ││ │    │││││  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@130 (line 185)
              ││││  │ ││ │ ││ │    │││││  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.05%      ││││  │ ││ │ ││ │    │││││  ││││││ │││││  0x00007efc271a804c:   movzwl 0xc(,%rax,8),%ecx            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
              ││││  │ ││ │ ││ │    │││││  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@137 (line 185)
              ││││  │ ││ │ ││ │    │││││  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.76%      ││││  │ ││ │ ││ │    │││││  ││││││ │││││  0x00007efc271a8054:   mov    %ecx,%eax
   0.02%      ││││  │ ││ │ ││ │    ╰││││  ││││││ │││││  0x00007efc271a8056:   jmp    0x00007efc271a7fec           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
              ││││  │ ││ │ ││ │     ││││  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@187 (line 180)
              ││││  │ ││ │ ││ │     ││││  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.10%      ││││  │ ││ ↘ ││ │     ││││  ││││││ │││││  0x00007efc271a8058:   nopl   0x0(%rax,%rax,1)
   0.18%      ││││  │ ││   ││ │     ││││  ││││││ │││││  0x00007efc271a8060:   cmp    $0x102ae58,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
              ││││  │ ││   ││ │     ││││  ││││││ │││││  0x00007efc271a8066:   jne    0x00007efc271a84a8           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              ││││  │ ││   ││ │     ││││  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@174 (line 188)
              ││││  │ ││   ││ │     ││││  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.13%      ││││  │ ││   ││ │     ││││  ││││││ │││││  0x00007efc271a806c:   mov    0xc(,%rax,8),%ecx            ; ImmutableOopMap {rcx=NarrowOop rdi=Oop r9=Oop }
              ││││  │ ││   ││ │     ││││  ││││││ │││││                                                            ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
              ││││  │ ││   ││ │     ││││  ││││││ │││││                                                            ; - (reexecute) java.lang.invoke.LambdaForm$MH/0x00007efba4085000::invoke@94
              ││││  │ ││   ││ │     ││││  ││││││ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba4087800::tableSwitch@103
              ││││  │ ││   ││ │     ││││  ││││││ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba408b000::delegate@14
              ││││  │ ││   ││ │     ││││  ││││││ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba408a400::invoke@114
              ││││  │ ││   ││ │     ││││  ││││││ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba408ac00::linkToTargetMethod@6
              ││││  │ ││   ││ │     ││││  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
              ││││  │ ││   ││ │     ││││  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.42%      ││││  │ ││   ││ │     ││││  ││││││ │││││  0x00007efc271a8073:   mov    0x14(,%rcx,8),%eax           ; implicit exception: dispatches to 0x00007efc271a85b3
   1.18%      ││││  │ ││   ││ │     ││││  ││││││ │││││  0x00007efc271a807a:   movsbl 0x10(,%rcx,8),%ecx           ; ImmutableOopMap {rdi=Oop r9=Oop }
              ││││  │ ││   ││ │     ││││  ││││││ │││││                                                            ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
              ││││  │ ││   ││ │     ││││  ││││││ │││││                                                            ; - (reexecute) java.lang.invoke.LambdaForm$MH/0x00007efba4085000::invoke@94
              ││││  │ ││   ││ │     ││││  ││││││ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba4087800::tableSwitch@103
              ││││  │ ││   ││ │     ││││  ││││││ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba408b000::delegate@14
              ││││  │ ││   ││ │     ││││  ││││││ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba408a400::invoke@114
              ││││  │ ││   ││ │     ││││  ││││││ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba408ac00::linkToTargetMethod@6
              ││││  │ ││   ││ │     ││││  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
              ││││  │ ││   ││ │     ││││  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.16%      ││││  │ ││   ││ │     ││││  ││││││ │││││  0x00007efc271a8082:   mov    0xc(,%rax,8),%eax            ; implicit exception: dispatches to 0x00007efc271a85d6
   0.86%      ││││  │ ││   ││ │     ││││  ││││││ │││││  0x00007efc271a8089:   shr    %cl,%eax                     ;*ishr {reexecute=0 rethrow=0 return_oop=0}
              ││││  │ ││   ││ │     ││││  ││││││ │││││                                                            ; - java.lang.String::length@9 (line 1519)
              ││││  │ ││   ││ │     ││││  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@184 (line 188)
              ││││  │ ││   ││ │     ││││  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.46%      ││││  │ ││   ││ │     ╰│││  ││││││ │││││  0x00007efc271a808b:   jmp    0x00007efc271a7fec
   0.13%      ││││  │ ↘│   ││ │      │││  ││││││ │││││  0x00007efc271a8090:   cmp    $0x102b860,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
              ││││  │  │   ││ │      │││  ││││││ │││││  0x00007efc271a8096:   jne    0x00007efc271a8500           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              ││││  │  │   ││ │      │││  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@87 (line 182)
              ││││  │  │   ││ │      │││  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.28%      ││││  │  │   ││ │      │││  ││││││ │││││  0x00007efc271a809c:   mov    0x10(,%rax,8),%eax           ;*l2i {reexecute=0 rethrow=0 return_oop=0}
              ││││  │  │   ││ │      │││  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@97 (line 182)
              ││││  │  │   ││ │      │││  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.67%      ││││  │  │   ││ │      ╰││  ││││││ │││││  0x00007efc271a80a3:   jmp    0x00007efc271a7fec
   0.01%      ││││  ↘  │   ││ │       ││  ││││││ │││││  0x00007efc271a80a8:   cmp    $0x102ac58,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
              ││││     │   ││ │       ││  ││││││ │││││  0x00007efc271a80ae:   jne    0x00007efc271a83d9           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              ││││     │   ││ │       ││  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@102 (line 183)
              ││││     │   ││ │       ││  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.18%      ││││     │   ││ │       ││  ││││││ │││││  0x00007efc271a80b4:   movswl 0xc(,%rax,8),%eax            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
              ││││     │   ││ │       ││  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@109 (line 183)
              ││││     │   ││ │       ││  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   1.21%      ││││     │   ││ │       ││  ││││││ │││││  0x00007efc271a80bc:   nopl   0x0(%rax)
   0.01%      ││││     │   ││ │       ╰│  ││││││ │││││  0x00007efc271a80c0:   jmp    0x00007efc271a7fec
              ││││     │   ↘│ │        │  ││││││ │││││  0x00007efc271a80c5:   cmp    $0x102b060,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
              ││││     │    │ │        │  ││││││ │││││  0x00007efc271a80cb:   jne    0x00007efc271a83ae           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              ││││     │    │ │        │  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@159 (line 187)
              ││││     │    │ │        │  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.17%      ││││     │    │ │        │  ││││││ │││││  0x00007efc271a80d1:   vmovss 0xc(,%rax,8),%xmm2           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
              ││││     │    │ │        │  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@166 (line 187)
              ││││     │    │ │        │  ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.41%      ││││     │    │ │        │  ││││││ │││││  0x00007efc271a80da:   vcvttss2si %xmm2,%eax
   1.41%      ││││     │    │ │        │  ││││││ │││││  0x00007efc271a80de:   xchg   %ax,%ax
              ││││     │    │ │        │  ││││││ │││││  0x00007efc271a80e0:   cmp    $0x80000000,%eax
              ││││     │    │ │        ╰  ││││││ │││││  0x00007efc271a80e6:   jne    0x00007efc271a7fec
              ││││     │    │ │           ││││││ │││││  0x00007efc271a80ec:   vucomiss %xmm2,%xmm2
              ││││     │    │ │         ╭ ││││││ │││││  0x00007efc271a80f0:   jp     0x00007efc271a8179
              ││││     │    │ │         │ ││││││ │││││  0x00007efc271a80f6:   vucomiss %xmm0,%xmm2                ;*f2i {reexecute=0 rethrow=0 return_oop=0}
              ││││     │    │ │         │ ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@169 (line 187)
              ││││     │    │ │         │ ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
              ││││     │    │ │         │╭││││││ │││││  0x00007efc271a80fa:   ja     0x00007efc271a8165
              ││││     │    │ │         ││╰│││││ │││││  0x00007efc271a8100:   jmp    0x00007efc271a7fec
   0.30%      ││││     ↘    │ │         ││ │││││ │││││  0x00007efc271a8105:   cmp    $0x102b460,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
              ││││          │ │         ││ │││││ │││││  0x00007efc271a810b:   jne    0x00007efc271a835f           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              ││││          │ │         ││ │││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@116 (line 184)
              ││││          │ │         ││ │││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.01%      ││││          │ │         ││ │││││ │││││  0x00007efc271a8111:   movsbl 0xc(,%rax,8),%eax            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
              ││││          │ │         ││ │││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@123 (line 184)
              ││││          │ │         ││ │││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.60%      ││││          │ │         ││ ╰││││ │││││  0x00007efc271a8119:   jmp    0x00007efc271a7fec           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
              ││││          │ │         ││  ││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@187 (line 180)
              ││││          │ │         ││  ││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   3.43%      ↘│││          │ │         ││  ││││ │││││  0x00007efc271a811e:   mov    $0x3,%ebx
   2.13%       │││          │ │         ││  ╰│││ │││││  0x00007efc271a8123:   jmp    0x00007efc271a7f51           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
               │││          │ │         ││   │││ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@92
               │││          │ │         ││   │││ │││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
               │││          │ │         ││   │││ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
               │││          │ │         ││   │││ │││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
               │││          │ │         ││   │││ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba4085000::invoke@91
               │││          │ │         ││   │││ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba4087800::tableSwitch@103
               │││          │ │         ││   │││ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba408b000::delegate@14
               │││          │ │         ││   │││ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba408a400::invoke@114
               │││          │ │         ││   │││ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba408ac00::linkToTargetMethod@6
               │││          │ │         ││   │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
               │││          │ │         ││   │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   2.85%       ↘││          │ │         ││   │││ │││││  0x00007efc271a8128:   mov    $0x4,%ebx
   2.04%        ││          │ │         ││   ╰││ │││││  0x00007efc271a812d:   jmp    0x00007efc271a7f51           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                ││          │ │         ││    ││ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@92
                ││          │ │         ││    ││ │││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                ││          │ │         ││    ││ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
                ││          │ │         ││    ││ │││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                ││          │ │         ││    ││ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
                ││          │ │         ││    ││ │││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                ││          │ │         ││    ││ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba4085000::invoke@91
                ││          │ │         ││    ││ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba4087800::tableSwitch@103
                ││          │ │         ││    ││ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba408b000::delegate@14
                ││          │ │         ││    ││ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba408a400::invoke@114
                ││          │ │         ││    ││ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba408ac00::linkToTargetMethod@6
                ││          │ │         ││    ││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
                ││          │ │         ││    ││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   2.83%        ↘│          │ │         ││    ││ │││││  0x00007efc271a8132:   mov    $0x5,%ebx
   1.92%         │          │ │         ││    ╰│ │││││  0x00007efc271a8137:   jmp    0x00007efc271a7f51           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                 │          │ │         ││     │ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@92
                 │          │ │         ││     │ │││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                 │          │ │         ││     │ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
                 │          │ │         ││     │ │││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                 │          │ │         ││     │ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
                 │          │ │         ││     │ │││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                 │          │ │         ││     │ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
                 │          │ │         ││     │ │││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                 │          │ │         ││     │ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba4085000::invoke@91
                 │          │ │         ││     │ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba4087800::tableSwitch@103
                 │          │ │         ││     │ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba408b000::delegate@14
                 │          │ │         ││     │ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba408a400::invoke@114
                 │          │ │         ││     │ │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba408ac00::linkToTargetMethod@6
                 │          │ │         ││     │ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
                 │          │ │         ││     │ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   1.79%         ↘          │ │         ││     │ │││││  0x00007efc271a813c:   mov    $0x6,%ebx
   1.18%                    │ │         ││     ╰ │││││  0x00007efc271a8141:   jmp    0x00007efc271a7f51           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                            │ │         ││       │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@92
                            │ │         ││       │││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                            │ │         ││       │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
                            │ │         ││       │││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                            │ │         ││       │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
                            │ │         ││       │││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                            │ │         ││       │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
                            │ │         ││       │││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                            │ │         ││       │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@89
                            │ │         ││       │││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                            │ │         ││       │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba4085000::invoke@91
                            │ │         ││       │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba4087800::tableSwitch@103
                            │ │         ││       │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba408b000::delegate@14
                            │ │         ││       │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba408a400::invoke@114
                            │ │         ││       │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007efba408ac00::linkToTargetMethod@6
                            │ │         ││       │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
                            │ │         ││       │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
                            ↘ │         ││       │││││  0x00007efc271a8146:   vucomisd %xmm2,%xmm2
                              │         ││      ╭│││││  0x00007efc271a814a:   jp     0x00007efc271a816f
                              │         ││      ││││││  0x00007efc271a8150:   vucomisd %xmm1,%xmm2
                              │         ││      │╰││││  0x00007efc271a8154:   jbe    0x00007efc271a7fec
                              │         ││      │ ││││  0x00007efc271a815a:   mov    $0x7fffffff,%eax
                              │         ││      │ ││││  0x00007efc271a815f:   nop
                              │         ││      │ ╰│││  0x00007efc271a8160:   jmp    0x00007efc271a7fec           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
                              │         ││      │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@154 (line 186)
                              │         ││      │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
                              │         │↘      │  │││  0x00007efc271a8165:   mov    $0x7fffffff,%eax
                              │         │       │  ╰││  0x00007efc271a816a:   jmp    0x00007efc271a7fec           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
                              │         │       │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@169 (line 187)
                              │         │       │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
                              │         │       ↘   ││  0x00007efc271a816f:   mov    $0x0,%eax
                              │         │           ╰│  0x00007efc271a8174:   jmp    0x00007efc271a7fec           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
                              │         │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@154 (line 186)
                              │         │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
                              │         ↘            │  0x00007efc271a8179:   mov    $0x0,%eax
                              │                      │  0x00007efc271a817e:   xchg   %ax,%ax
                              │                      ╰  0x00007efc271a8180:   jmp    0x00007efc271a7fec           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
                              │                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@169 (line 187)
                              │                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
                              ↘                         0x00007efc271a8185:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@40 (line 103)
                                                        0x00007efc271a8188:   mov    0x10(%rsp),%rbp
   0.00%                                                0x00007efc271a818d:   add    $0x18,%rsp
                                                        0x00007efc271a8191:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                                                        0x00007efc271a8198:   ja     0x00007efc271a8535
   0.00%                                                0x00007efc271a819e:   ret                                 ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                  ; - java.lang.invoke.LambdaForm$MH/0x00007efba4084800::guard@55
                                                                                                                  ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                                                                  ; - java.lang.invoke.LambdaForm$MH/0x00007efba4085000::invoke@91
                                                                                                                  ; - java.lang.invoke.LambdaForm$MH/0x00007efba4087800::tableSwitch@103
                                                                                                                  ; - java.lang.invoke.LambdaForm$MH/0x00007efba408b000::delegate@14
                                                                                                                  ; - java.lang.invoke.LambdaForm$MH/0x00007efba408a400::invoke@114
                                                                                                                  ; - java.lang.invoke.LambdaForm$MH/0x00007efba408ac00::linkToTargetMethod@6
                                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
                                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
                                                        0x00007efc271a819f:   mov    $0x1,%r8d
....................................................................................................
  96.21%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.21%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array, version 4, compile id 1192 
   0.30%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.20%     [kernel.kallsyms]  __free_one_page 
   0.20%     [kernel.kallsyms]  __mod_lruvec_state 
   0.19%     [kernel.kallsyms]  release_pages 
   0.18%     [kernel.kallsyms]  zap_pte_range 
   0.16%     [kernel.kallsyms]  native_read_msr 
   0.15%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.15%     [kernel.kallsyms]  page_remove_rmap 
   0.11%     [kernel.kallsyms]  free_unref_page_list 
   0.10%     [kernel.kallsyms]  __mod_node_page_state 
   0.09%     [kernel.kallsyms]  __mod_memcg_state 
   0.09%     [kernel.kallsyms]  __mod_zone_page_state 
   0.09%     [kernel.kallsyms]  lock_page_memcg 
   0.08%     [kernel.kallsyms]  asm_exc_page_fault 
   0.06%     [kernel.kallsyms]  __rcu_read_unlock 
   0.06%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.05%     [kernel.kallsyms]  __rcu_read_lock 
   0.04%     [kernel.kallsyms]  free_unref_page_commit 
   0.03%     [kernel.kallsyms]  __tlb_remove_page_size 
   1.45%  <...other 290 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.21%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array, version 4, compile id 1192 
   0.30%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.20%     [kernel.kallsyms]  __free_one_page 
   0.20%     [kernel.kallsyms]  __mod_lruvec_state 
   0.19%     [kernel.kallsyms]  release_pages 
   0.18%     [kernel.kallsyms]  zap_pte_range 
   0.16%     [kernel.kallsyms]  native_read_msr 
   0.15%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.15%     [kernel.kallsyms]  page_remove_rmap 
   0.11%     [kernel.kallsyms]  free_unref_page_list 
   0.10%     [kernel.kallsyms]  __mod_node_page_state 
   0.09%     [kernel.kallsyms]  __mod_memcg_state 
   0.09%     [kernel.kallsyms]  __mod_zone_page_state 
   0.09%     [kernel.kallsyms]  lock_page_memcg 
   0.08%     [kernel.kallsyms]  asm_exc_page_fault 
   0.06%                        <unknown> 
   0.06%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.06%     [kernel.kallsyms]  __rcu_read_unlock 
   0.05%     [kernel.kallsyms]  __rcu_read_lock 
   0.04%     [kernel.kallsyms]  free_unref_page_commit 
   1.41%  <...other 255 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.22%        jvmci, level 4
   3.31%     [kernel.kallsyms]
   0.19%             libjvm.so
   0.13%             libc.so.6
   0.06%                      
   0.05%           interpreter
   0.01%        hsdis-amd64.so
   0.01%           c1, level 3
   0.01%        perf-11416.map
   0.00%  ld-linux-x86-64.so.2
   0.00%            libjava.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_when_concrete_array

# Run progress: 75.00% complete, ETA 00:04:43
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 23.108 ns/op
# Warmup Iteration   2: 11.319 ns/op
# Warmup Iteration   3: 11.161 ns/op
# Warmup Iteration   4: 11.126 ns/op
# Warmup Iteration   5: 11.311 ns/op
Iteration   1: 11.242 ns/op
Iteration   2: 11.235 ns/op
Iteration   3: 11.256 ns/op
Iteration   4: 11.179 ns/op
Iteration   5: 11.243 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_when_concrete_array":
  11.231 ±(99.9%) 0.115 ns/op [Average]
  (min, avg, max) = (11.179, 11.231, 11.256), stdev = 0.030
  CI (99.9%): [11.116, 11.346] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_when_concrete_array:asm":
PrintAssembly processed: 257146 total address lines.
Perf output processed (skipped 83.794 seconds):
 Column 1: cycles (49579 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array, version 3, compile id 1253 

                      0x00007f108b1a5720:   mov    %eax,-0x14000(%rsp)
                      0x00007f108b1a5727:   sub    $0x18,%rsp
                      0x00007f108b1a572b:   nop
                      0x00007f108b1a572c:   cmpl   $0x1,0x20(%r15)
                      0x00007f108b1a5734:   jne    0x00007f108b1a5859
                      0x00007f108b1a573a:   mov    %rbp,0x10(%rsp)
                      0x00007f108b1a573f:   mov    0x14(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                                ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@0 (line 154)
                      0x00007f108b1a5742:   mov    0xc(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007f108b1a587d
   0.00%              0x00007f108b1a574a:   shl    $0x3,%rax                    ;*getfield asIsArray {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@3 (line 155)
                      0x00007f108b1a574e:   mov    $0x0,%r8d
                      0x00007f108b1a5754:   mov    $0x0,%r11d
          ╭           0x00007f108b1a575a:   jmp    0x00007f108b1a57e7           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@13 (line 155)
          │           0x00007f108b1a575f:   nop                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@16 (line 155)
   0.00%  │      ↗    0x00007f108b1a5760:   mov    0x10(%rax,%r8,4),%r9d        ; ImmutableOopMap {rax=Oop r9=NarrowOop }
          │      │                                                              ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │      │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@13 (line 155)
   3.24%  │      │    0x00007f108b1a5765:   mov    0xc(,%r9,8),%ecx             ; implicit exception: dispatches to 0x00007f108b1a58a0
  25.60%  │      │    0x00007f108b1a576d:   shl    $0x3,%r9                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@22 (line 155)
   2.92%  │      │    0x00007f108b1a5771:   mov    $0x0,%ebx
   0.01%  │╭     │    0x00007f108b1a5776:   jmp    0x00007f108b1a57ba           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││     │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
          ││     │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
          ││     │    0x00007f108b1a577b:   nopl   0x0(%rax,%rax,1)             ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││     │                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f1008087800::tableSwitch@39
          ││     │                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f100808b000::delegate@14
          ││     │                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f100808a400::invoke@114
          ││     │                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f100808ac00::linkToTargetMethod@6
          ││     │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
          ││     │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
   8.88%  ││   ↗ │    0x00007f108b1a5780:   mov    $0x0,%edi                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││   │ │                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f1008087800::tableSwitch@331
          ││   │ │                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f100808b000::delegate@14
          ││   │ │                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f100808a400::invoke@114
          ││   │ │                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f100808ac00::linkToTargetMethod@6
          ││   │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
          ││   │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
   0.01%  ││   │↗│    0x00007f108b1a5785:   cmp    $0x0,%edi
          ││╭  │││    0x00007f108b1a5788:   je     0x00007f108b1a579c
   0.00%  │││  │││    0x00007f108b1a578e:   cmp    $0x1,%edi
          │││╭ │││    0x00007f108b1a5791:   je     0x00007f108b1a57d7
          ││││ │││    0x00007f108b1a5797:   jmp    0x00007f108b1a5836           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││││ │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@16 (line 246)
          ││││ │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
   9.28%  ││↘│ │││    0x00007f108b1a579c:   nopl   0x0(%rax)
   0.03%  ││ │ │││    0x00007f108b1a57a0:   test   $0x1,%ecx
   0.00%  ││ │╭│││    0x00007f108b1a57a6:   je     0x00007f108b1a57f5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@117 (line 247)
          ││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
   0.00%  ││ │││││    0x00007f108b1a57ac:   mov    0x458(%r15),%rdx             ; ImmutableOopMap {rax=Oop r9=Oop }
          ││ │││││                                                              ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
          ││ │││││                                                              ; - (reexecute) java.lang.invoke.LambdaForm$MH/0x00007f1008087800::tableSwitch@331
          ││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f100808b000::delegate@14
          ││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f100808a400::invoke@114
          ││ │││││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f100808ac00::linkToTargetMethod@6
          ││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
          ││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
   0.07%  ││ │││││    0x00007f108b1a57b3:   test   %eax,(%rdx)                  ;   {poll}
  11.93%  ││ │││││    0x00007f108b1a57b5:   mov    $0x1,%ebx                    ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
          ││ │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
   0.04%  │↘ │││││    0x00007f108b1a57ba:   cmp    $0x0,%ebx
          │  ││╰││    0x00007f108b1a57bd:   je     0x00007f108b1a5780
   0.00%  │  ││ ││    0x00007f108b1a57bf:   cmp    $0x1,%ebx
          │  ││ ││    0x00007f108b1a57c2:   jne    0x00007f108b1a5813           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │  ││ ││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f1008087800::tableSwitch@39
          │  ││ ││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f100808b000::delegate@14
          │  ││ ││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f100808a400::invoke@114
          │  ││ ││                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f100808ac00::linkToTargetMethod@6
          │  ││ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
          │  ││ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
   0.00%  │  ││ ││    0x00007f108b1a57c8:   nopl   0x0(%rax,%rax,1)
   4.36%  │  ││ ││    0x00007f108b1a57d0:   mov    $0x1,%edi
   0.01%  │  ││ ╰│    0x00007f108b1a57d5:   jmp    0x00007f108b1a5785           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f1008087800::tableSwitch@331
          │  ││  │                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f100808b000::delegate@14
          │  ││  │                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f100808a400::invoke@114
          │  ││  │                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007f100808ac00::linkToTargetMethod@6
          │  ││  │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
          │  ││  │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
   8.85%  │  ↘│  │ ↗  0x00007f108b1a57d7:   mov    0x458(%r15),%r9              ; ImmutableOopMap {rax=Oop }
          │   │  │ │                                                            ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
          │   │  │ │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@487 (line 246)
          │   │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
   0.05%  │   │  │ │  0x00007f108b1a57de:   test   %eax,(%r9)                   ;   {poll}
  10.04%  │   │  │ │  0x00007f108b1a57e1:   add    %ecx,%r11d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │   │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@31 (line 156)
   0.02%  │   │  │ │  0x00007f108b1a57e4:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │   │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@33 (line 155)
   6.14%  ↘   │  │ │  0x00007f108b1a57e7:   cmp    %r8d,%r10d
              │  ╰ │  0x00007f108b1a57ea:   jg     0x00007f108b1a5760
   0.00%      │   ╭│  0x00007f108b1a57f0:   jmp    0x00007f108b1a57f9           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@16 (line 155)
   4.43%      ↘   ││  0x00007f108b1a57f5:   shl    %ecx                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@130 (line 247)
                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
   0.01%          │╰  0x00007f108b1a57f7:   jmp    0x00007f108b1a57d7           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@487 (line 246)
                  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
   0.00%          ↘   0x00007f108b1a57f9:   mov    %r11d,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@40 (line 158)
                      0x00007f108b1a57fc:   mov    0x10(%rsp),%rbp
   0.00%              0x00007f108b1a5801:   add    $0x18,%rsp
                      0x00007f108b1a5805:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                      0x00007f108b1a580c:   ja     0x00007f108b1a5869
                      0x00007f108b1a5812:   ret                                 ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@16 (line 246)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
                      0x00007f108b1a5813:   movl   $0xffffffed,0x484(%r15)      ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.lang.invoke.LambdaForm$MH/0x00007f1008087800::tableSwitch@39
                                                                                ; - java.lang.invoke.LambdaForm$MH/0x00007f100808b000::delegate@14
                                                                                ; - java.lang.invoke.LambdaForm$MH/0x00007f100808a400::invoke@114
                                                                                ; - java.lang.invoke.LambdaForm$MH/0x00007f100808ac00::linkToTargetMethod@6
....................................................................................................
  95.94%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.94%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array, version 3, compile id 1253 
   0.35%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.24%     [kernel.kallsyms]  native_read_msr 
   0.21%     [kernel.kallsyms]  __free_one_page 
   0.20%     [kernel.kallsyms]  release_pages 
   0.16%     [kernel.kallsyms]  zap_pte_range 
   0.15%     [kernel.kallsyms]  __mod_lruvec_state 
   0.14%     [kernel.kallsyms]  exc_page_fault 
   0.12%     [kernel.kallsyms]  free_unref_page_list 
   0.12%     [kernel.kallsyms]  page_remove_rmap 
   0.10%     [kernel.kallsyms]  __rcu_read_unlock 
   0.10%     [kernel.kallsyms]  __mod_node_page_state 
   0.09%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.09%     [kernel.kallsyms]  __rcu_read_lock 
   0.08%     [kernel.kallsyms]  asm_exc_page_fault 
   0.07%     [kernel.kallsyms]  lock_page_memcg 
   0.06%     [kernel.kallsyms]  __mod_zone_page_state 
   0.06%     [kernel.kallsyms]  free_unref_page_commit 
   0.05%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.04%     [kernel.kallsyms]  vm_normal_page 
   1.63%  <...other 342 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.94%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array, version 3, compile id 1253 
   0.35%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.24%     [kernel.kallsyms]  native_read_msr 
   0.21%     [kernel.kallsyms]  __free_one_page 
   0.20%     [kernel.kallsyms]  release_pages 
   0.16%     [kernel.kallsyms]  zap_pte_range 
   0.15%     [kernel.kallsyms]  __mod_lruvec_state 
   0.14%     [kernel.kallsyms]  exc_page_fault 
   0.12%     [kernel.kallsyms]  free_unref_page_list 
   0.12%     [kernel.kallsyms]  page_remove_rmap 
   0.10%     [kernel.kallsyms]  __rcu_read_unlock 
   0.10%     [kernel.kallsyms]  __mod_node_page_state 
   0.09%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.09%     [kernel.kallsyms]  __rcu_read_lock 
   0.08%     [kernel.kallsyms]  asm_exc_page_fault 
   0.07%     [kernel.kallsyms]  lock_page_memcg 
   0.06%     [kernel.kallsyms]  __mod_zone_page_state 
   0.06%     [kernel.kallsyms]  free_unref_page_commit 
   0.05%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.04%     [kernel.kallsyms]  free_swap_cache 
   1.63%  <...other 334 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.94%        jvmci, level 4
   3.25%     [kernel.kallsyms]
   0.27%             libjvm.so
   0.25%   libjvmcicompiler.so
   0.16%             libc.so.6
   0.06%           interpreter
   0.02%        hsdis-amd64.so
   0.01%           c1, level 3
   0.01%  ld-linux-x86-64.so.2
   0.01%                      
   0.00%        perf-11508.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_when_interface_array

# Run progress: 87.50% complete, ETA 00:02:22
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 193.573 ns/op
# Warmup Iteration   2: 66.771 ns/op
# Warmup Iteration   3: 66.136 ns/op
# Warmup Iteration   4: 66.125 ns/op
# Warmup Iteration   5: 66.369 ns/op
Iteration   1: 65.978 ns/op
Iteration   2: 65.794 ns/op
Iteration   3: 66.431 ns/op
Iteration   4: 65.975 ns/op
Iteration   5: 68.529 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_when_interface_array":
  66.541 ±(99.9%) 4.373 ns/op [Average]
  (min, avg, max) = (65.794, 66.541, 68.529), stdev = 1.136
  CI (99.9%): [62.168, 70.915] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_when_interface_array:asm":
PrintAssembly processed: 262263 total address lines.
Perf output processed (skipped 83.137 seconds):
 Column 1: cycles (49935 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod, version 4, compile id 1237 

                                                                    speculations   [0x00007fa4731a1130,0x00007fa4731a13c8] = 664
                                                                    JVMCI data     [0x00007fa4731a13c8,0x00007fa4731a13e0] = 24
                                                                   [Disassembly]
                                                                   --------------------------------------------------------------------------------
                                                                   [Constant Pool (empty)]
                                                                   --------------------------------------------------------------------------------
                                                                   [Verified Entry Point]
                                                                     # {method} {0x00007fa3eb47e508} &apos;switchWhenMethod&apos; &apos;(Lcom/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$I;)I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark&apos;
                                                                     # parm0:    rsi:rsi   = &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$I&apos;
                                                                     #           [sp+0x20]  (sp of caller)
   1.28%                                                             0x00007fa47319f6a0:   mov    %eax,-0x14000(%rsp)
   0.19%                                                             0x00007fa47319f6a7:   sub    $0x18,%rsp
   0.16%                                                             0x00007fa47319f6ab:   nop
   1.17%                                                             0x00007fa47319f6ac:   cmpl   $0x1,0x20(%r15)
   0.11%                                                             0x00007fa47319f6b4:   jne    0x00007fa4731a0005
   0.08%                                                             0x00007fa47319f6ba:   mov    %rbp,0x10(%rsp)              ; ImmutableOopMap {rsi=Oop }
                                                                                                                               ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@0 (line 246)
   0.18%                                                             0x00007fa47319f6bf:   mov    0x8(%rsi),%r10d              ; implicit exception: dispatches to 0x00007fa4731a0029
   5.25%                                                             0x00007fa47319f6c3:   cmp    $0x102a868,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
          ╭                                                          0x00007fa47319f6ca:   je     0x00007fa47319f85a
   1.70%  │                                                          0x00007fa47319f6d0:   cmp    $0x102b860,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
          │╭                                                         0x00007fa47319f6d7:   je     0x00007fa47319f865
   1.94%  ││                                                         0x00007fa47319f6dd:   cmp    $0x102ac58,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
   0.24%  ││                                                         0x00007fa47319f6e4:   sete   %cl
   0.07%  ││                                                         0x00007fa47319f6e7:   movzbl %cl,%ecx                     ;* unwind (locked if synchronized)
          ││                                                                                                                   ; - java.lang.Class::isInstance@-3
          ││                                                                                                                   ; - java.lang.invoke.LambdaForm$DMH/0x00007fa3f0007000::invokeSpecial@11
          ││                                                                                                                   ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0083400::invoke@21
          ││                                                                                                                   ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0085000::invoke@33
          ││                                                                                                                   ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0087800::tableSwitch@195
          ││                                                                                                                   ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008b000::delegate@14
          ││                                                                                                                   ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008a400::invoke@114
          ││                                                                                                                   ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008ac00::linkToTargetMethod@6
          ││                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.62%  ││                                                         0x00007fa47319f6ea:   test   $0x1,%ecx
          ││╭                                                        0x00007fa47319f6f0:   jne    0x00007fa47319faf8
   1.33%  │││                                                        0x00007fa47319f6f6:   cmp    $0x102b460,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
   0.31%  │││                                                        0x00007fa47319f6fd:   sete   %cl
   0.06%  │││                                                        0x00007fa47319f700:   movzbl %cl,%ecx                     ;* unwind (locked if synchronized)
          │││                                                                                                                  ; - java.lang.Class::isInstance@-3
          │││                                                                                                                  ; - java.lang.invoke.LambdaForm$DMH/0x00007fa3f0007000::invokeSpecial@11
          │││                                                                                                                  ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0083400::invoke@21
          │││                                                                                                                  ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0085000::invoke@33
          │││                                                                                                                  ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0087800::tableSwitch@221
          │││                                                                                                                  ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008b000::delegate@14
          │││                                                                                                                  ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008a400::invoke@114
          │││                                                                                                                  ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008ac00::linkToTargetMethod@6
          │││                                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.67%  │││                                                        0x00007fa47319f703:   test   $0x1,%ecx
          │││╭                                                       0x00007fa47319f709:   jne    0x00007fa47319fb05
   1.20%  ││││                                                       0x00007fa47319f70f:   cmp    $0x102b660,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
   0.20%  ││││                                                       0x00007fa47319f716:   sete   %cl
   0.19%  ││││                                                       0x00007fa47319f719:   movzbl %cl,%ecx                     ;* unwind (locked if synchronized)
          ││││                                                                                                                 ; - java.lang.Class::isInstance@-3
          ││││                                                                                                                 ; - java.lang.invoke.LambdaForm$DMH/0x00007fa3f0007000::invokeSpecial@11
          ││││                                                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0083400::invoke@21
          ││││                                                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0085000::invoke@33
          ││││                                                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0087800::tableSwitch@247
          ││││                                                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008b000::delegate@14
          ││││                                                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008a400::invoke@114
          ││││                                                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008ac00::linkToTargetMethod@6
          ││││                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.57%  ││││                                                       0x00007fa47319f71c:   nopl   0x0(%rax)
   0.17%  ││││                                                       0x00007fa47319f720:   test   $0x1,%ecx
          ││││╭                                                      0x00007fa47319f726:   jne    0x00007fa47319fd25
   0.90%  │││││                                                      0x00007fa47319f72c:   cmp    $0x102b260,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
   0.26%  │││││                                                      0x00007fa47319f733:   sete   %cl
   0.20%  │││││                                                      0x00007fa47319f736:   movzbl %cl,%ecx                     ;* unwind (locked if synchronized)
          │││││                                                                                                                ; - java.lang.Class::isInstance@-3
          │││││                                                                                                                ; - java.lang.invoke.LambdaForm$DMH/0x00007fa3f0007000::invokeSpecial@11
          │││││                                                                                                                ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0083400::invoke@21
          │││││                                                                                                                ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0085000::invoke@33
          │││││                                                                                                                ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0087800::tableSwitch@273
          │││││                                                                                                                ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008b000::delegate@14
          │││││                                                                                                                ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008a400::invoke@114
          │││││                                                                                                                ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008ac00::linkToTargetMethod@6
          │││││                                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.43%  │││││                                                      0x00007fa47319f739:   nopl   0x0(%rax)
   0.08%  │││││                                                      0x00007fa47319f740:   test   $0x1,%ecx
          │││││╭                                                     0x00007fa47319f746:   jne    0x00007fa47319fd30
   1.02%  ││││││                                                     0x00007fa47319f74c:   cmp    $0x102b060,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
   0.37%  ││││││                                                     0x00007fa47319f753:   sete   %cl
   0.30%  ││││││                                                     0x00007fa47319f756:   movzbl %cl,%ecx                     ;* unwind (locked if synchronized)
          ││││││                                                                                                               ; - java.lang.Class::isInstance@-3
          ││││││                                                                                                               ; - java.lang.invoke.LambdaForm$DMH/0x00007fa3f0007000::invokeSpecial@11
          ││││││                                                                                                               ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0083400::invoke@21
          ││││││                                                                                                               ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0085000::invoke@33
          ││││││                                                                                                               ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0087800::tableSwitch@299
          ││││││                                                                                                               ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008b000::delegate@14
          ││││││                                                                                                               ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008a400::invoke@114
          ││││││                                                                                                               ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008ac00::linkToTargetMethod@6
          ││││││                                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.26%  ││││││                                                     0x00007fa47319f759:   nopl   0x0(%rax)
   0.07%  ││││││                                                     0x00007fa47319f760:   test   $0x1,%ecx
          ││││││╭                                                    0x00007fa47319f766:   jne    0x00007fa47319fd3b
   1.11%  │││││││                                                    0x00007fa47319f76c:   cmp    $0x102ae58,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
   0.62%  │││││││                                                    0x00007fa47319f773:   sete   %cl
   0.49%  │││││││                                                    0x00007fa47319f776:   movzbl %cl,%ecx                     ;* unwind (locked if synchronized)
          │││││││                                                                                                              ; - java.lang.Class::isInstance@-3
          │││││││                                                                                                              ; - java.lang.invoke.LambdaForm$DMH/0x00007fa3f0007000::invokeSpecial@11
          │││││││                                                                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0083400::invoke@21
          │││││││                                                                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0085000::invoke@33
          │││││││                                                                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0087800::tableSwitch@325
          │││││││                                                                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008b000::delegate@14
          │││││││                                                                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008a400::invoke@114
          │││││││                                                                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008ac00::linkToTargetMethod@6
          │││││││                                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.06%  │││││││                                                    0x00007fa47319f779:   nopl   0x0(%rax)
   0.02%  │││││││                                                    0x00007fa47319f780:   test   $0x1,%ecx
          │││││││                                                    0x00007fa47319f786:   je     0x00007fa47319ff51           ;* unwind (locked if synchronized)
          │││││││                                                                                                              ; - java.lang.invoke.MethodHandleImpl::profileBoolean@-3
          │││││││                                                                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0084800::guard@46
          │││││││                                                                                                              ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││                                                                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0084800::guard@89
          │││││││                                                                                                              ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││                                                                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0084800::guard@89
          │││││││                                                                                                              ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││                                                                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0084800::guard@89
          │││││││                                                                                                              ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││                                                                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0084800::guard@89
          │││││││                                                                                                              ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││                                                                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0084800::guard@89
          │││││││                                                                                                              ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││                                                                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0084800::guard@89
          │││││││                                                                                                              ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││                                                                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0085000::invoke@91
          │││││││                                                                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0087800::tableSwitch@135
          │││││││                                                                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008b000::delegate@14
          │││││││                                                                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008a400::invoke@114
          │││││││                                                                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008ac00::linkToTargetMethod@6
          │││││││                                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.05%  │││││││                                                    0x00007fa47319f78c:   mov    $0xe,%r11d                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0084800::guard@92
          │││││││                                                                                                              ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││                                                                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0084800::guard@89
          │││││││                                                                                                              ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││                                                                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0084800::guard@89
          │││││││                                                                                                              ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││                                                                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0084800::guard@89
          │││││││                                                                                                              ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││                                                                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0084800::guard@89
          │││││││                                                                                                              ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││                                                                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0084800::guard@89
          │││││││                                                                                                              ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││                                                                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0085000::invoke@91
          │││││││                                                                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0087800::tableSwitch@135
          │││││││                                                                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008b000::delegate@14
          │││││││                                                                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008a400::invoke@114
          │││││││                                                                                                              ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008ac00::linkToTargetMethod@6
          │││││││                                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.88%  │││││││   ↗↗                ↗↗                       ↗↗↗   0x00007fa47319f792:   mov    %r11d,%ecx
   0.00%  │││││││   ││                ││                       │││   0x00007fa47319f795:   sar    %ecx
   0.04%  │││││││   ││                ││                       │││   0x00007fa47319f797:   and    $0x7,%ecx
   2.07%  │││││││╭  ││                ││                       │││   0x00007fa47319f79a:   lea    0x17(%rip),%r8        # 0x00007fa47319f7b8
   0.79%  ││││││││  ││                ││                       │││   0x00007fa47319f7a1:   mov    (%r8,%rcx,8),%r9
   4.83%  ││││││││  ││                ││                       │││   0x00007fa47319f7a5:   cmp    %r11d,%r9d
          ││││││││  ││                ││                       │││   0x00007fa47319f7a8:   jne    0x00007fa47319ff92
   1.43%  ││││││││  ││                ││                       │││   0x00007fa47319f7ae:   sar    $0x20,%r9
   0.27%  ││││││││  ││                ││                       │││   0x00007fa47319f7b2:   add    %r9,%r8
   1.40%  ││││││││  ││                ││                       │││   0x00007fa47319f7b5:   jmp    *%r8
          │││││││↘  ││                ││                       │││   0x00007fa47319f7b8:   add    %al,(%rax)
          │││││││   ││                ││                       │││   0x00007fa47319f7ba:   add    %al,(%rax)
          │││││││   ││                ││                       │││   0x00007fa47319f7bc:   mov    $0x2000000,%eax
          │││││││   ││                ││                       │││   0x00007fa47319f7c1:   add    %al,(%rax)
          │││││││   ││                ││                       │││   0x00007fa47319f7c3:   add    %ah,0x2(%rax)
          │││││││   ││                ││                       │││   0x00007fa47319f7c6:   add    %al,(%rax)
          │││││││   ││                ││                       │││   0x00007fa47319f7c8:   add    $0x0,%al
          │││││││   ││                ││                       │││   0x00007fa47319f7ca:   add    %al,(%rax)
          │││││││   ││                ││                       │││   0x00007fa47319f7cc:   xchg   %eax,%ecx
          │││││││   ││                ││                       │││   0x00007fa47319f7cd:   add    (%rax),%al
          │││││││   ││                ││                       │││   0x00007fa47319f7cf:   add    %al,(%rsi)
          │││││││   ││                ││                       │││   0x00007fa47319f7d1:   add    %al,(%rax)
          │││││││   ││                ││                       │││   0x00007fa47319f7d3:   add    %cl,0x8000003(%rip)        # 0x00007fa47b19f7dc
          │││││││   ││                ││                       │││   0x00007fa47319f7d9:   add    %al,(%rax)
          │││││││   ││                ││                       │││   0x00007fa47319f7db:   add    %bl,%bl
          │││││││   ││                ││                       │││   0x00007fa47319f7dd:   add    %al,(%rax)
          │││││││   ││                ││                       │││   0x00007fa47319f7df:   add    %cl,(%rdx)
          │││││││   ││                ││                       │││   0x00007fa47319f7e1:   add    %al,(%rax)
          │││││││   ││                ││                       │││   0x00007fa47319f7e3:   add    %al,0x0(%rax)
          │││││││   ││                ││                       │││   0x00007fa47319f7e6:   add    %al,(%rax)
          │││││││   ││                ││                       │││   0x00007fa47319f7e8:   or     $0x0,%al
          │││││││   ││                ││                       │││   0x00007fa47319f7ea:   add    %al,(%rax)
          │││││││   ││                ││                       │││   0x00007fa47319f7ec:   mov    $0xe000002,%edi
          │││││││   ││                ││                       │││   0x00007fa47319f7f1:   add    %al,(%rax)
          │││││││   ││                ││                       │││   0x00007fa47319f7f3:   add    %bh,%bh
          │││││││   ││                ││                       │││   0x00007fa47319f7f5:   add    %al,(%rax)
          │││││││   ││                ││                       │││   0x00007fa47319f7f7:   add    %cl,(%rdi)                   ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │││││││   ││                ││                       │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@16 (line 246)
          │││││││   ││                ││                       │││   0x00007fa47319f7f9:   (bad)  
          │││││││   ││                ││                       │││   0x00007fa47319f7fa:   test   %al,(%rax)
          │││││││   ││                ││                       │││   0x00007fa47319f7fc:   add    %al,(%rax)
          │││││││   ││                ││                       │││   0x00007fa47319f7fe:   add    %al,(%rax)
   0.00%  │││││││   ││                ││                       │││   0x00007fa47319f800:   cmp    $0x102b260,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
          │││││││   ││                ││                       │││   0x00007fa47319f807:   jne    0x00007fa47319fecd           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │││││││   ││                ││                       │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@335 (line 257)
   0.10%  │││││││   ││                ││                       │││   0x00007fa47319f80d:   vmovsd 0x10(%rsi),%xmm0             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │││││││   ││                ││                       │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@342 (line 257)
   0.29%  │││││││   ││                ││                       │││   0x00007fa47319f812:   vcvttsd2si %xmm0,%r11d
   1.21%  │││││││   ││                ││                       │││   0x00007fa47319f816:   data16 nopw 0x0(%rax,%rax,1)
          │││││││   ││                ││                       │││   0x00007fa47319f820:   cmp    $0x80000000,%r11d
          │││││││ ╭ ││                ││                       │││   0x00007fa47319f827:   je     0x00007fa47319fd66           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
          │││││││ │ ││                ││                       │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@345 (line 257)
   0.02%  │││││││ │ ││                ││                       │││   0x00007fa47319f82d:   test   $0x1,%r11d
          │││││││ │╭││                ││                       │││   0x00007fa47319f834:   jne    0x00007fa47319fb28           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││││││ ││││                ││                       │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@348 (line 257)
   0.18%  │││││││ ││││                ││                       │││   0x00007fa47319f83a:   shl    %r11d                        ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │││││││ ││││                ││                       │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@364 (line 257)
   0.03%  │││││││ ││││                ││                       │││   0x00007fa47319f83d:   mov    %r11d,%r10d
   0.68%  │││││││ ││││ ↗ ↗   ↗     ↗  ││  ↗↗  ↗  ↗↗↗ ↗↗ ↗↗↗   ↗│││↗  0x00007fa47319f840:   mov    %r10d,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │││││││ ││││ │ │   │     │  ││  ││  │  │││ ││ │││   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@487 (line 246)
   0.28%  │││││││ ││││ │ │   │     │  ││  ││  │  │││ ││ │││   │││││  0x00007fa47319f843:   mov    0x10(%rsp),%rbp
   0.93%  │││││││ ││││ │ │   │     │  ││  ││  │  │││ ││ │││   │││││  0x00007fa47319f848:   add    $0x18,%rsp
   0.34%  │││││││ ││││ │ │   │     │  ││  ││  │  │││ ││ │││   │││││  0x00007fa47319f84c:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││││││ ││││ │ │   │     │  ││  ││  │  │││ ││ │││   │││││  0x00007fa47319f853:   ja     0x00007fa4731a0015
   0.96%  │││││││ ││││ │ │   │     │  ││  ││  │  │││ ││ │││   │││││  0x00007fa47319f859:   ret                                 ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││││││ ││││ │ │   │     │  ││  ││  │  │││ ││ │││   │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0085000::invoke@56
          │││││││ ││││ │ │   │     │  ││  ││  │  │││ ││ │││   │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0087800::tableSwitch@135
          │││││││ ││││ │ │   │     │  ││  ││  │  │││ ││ │││   │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008b000::delegate@14
          │││││││ ││││ │ │   │     │  ││  ││  │  │││ ││ │││   │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008a400::invoke@114
          │││││││ ││││ │ │   │     │  ││  ││  │  │││ ││ │││   │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008ac00::linkToTargetMethod@6
          │││││││ ││││ │ │   │     │  ││  ││  │  │││ ││ │││   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   2.26%  ↘││││││ ││││ │ │   │     │  ││  ││  │  │││ ││ │││   │││││  0x00007fa47319f85a:   mov    $0x0,%r11d
   1.53%   ││││││ ││╰│ │ │   │     │  ││  ││  │  │││ ││ │││   │││││  0x00007fa47319f860:   jmp    0x00007fa47319f792           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           ││││││ ││ │ │ │   │     │  ││  ││  │  │││ ││ │││   │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0087800::tableSwitch@331
           ││││││ ││ │ │ │   │     │  ││  ││  │  │││ ││ │││   │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008b000::delegate@14
           ││││││ ││ │ │ │   │     │  ││  ││  │  │││ ││ │││   │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008a400::invoke@114
           ││││││ ││ │ │ │   │     │  ││  ││  │  │││ ││ │││   │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008ac00::linkToTargetMethod@6
           ││││││ ││ │ │ │   │     │  ││  ││  │  │││ ││ │││   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   2.10%   ↘│││││ ││ │ │ │   │     │  ││  ││  │  │││ ││ │││   │││││  0x00007fa47319f865:   mov    $0x2,%r11d
   1.44%    │││││ ││ ╰ │ │   │     │  ││  ││  │  │││ ││ │││   │││││  0x00007fa47319f86b:   jmp    0x00007fa47319f792
   0.25%    │││││ ││   │ │   │     │  ││  ││  │  │││ ││ │││   │││││  0x00007fa47319f870:   cmp    $0x102a868,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
            │││││ ││   │ │   │     │  ││  ││  │  │││ ││ │││   │││││  0x00007fa47319f877:   jne    0x00007fa47319fee8           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │││││ ││   │ │   │     │  ││  ││  │  │││ ││ │││   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@107 (line 247)
   0.02%    │││││ ││   │ │   │     │  ││  ││  │  │││ ││ │││   │││││  0x00007fa47319f87d:   mov    0xc(%rsi),%ecx               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
            │││││ ││   │ │   │     │  ││  ││  │  │││ ││ │││   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@112 (line 247)
   0.02%    │││││ ││   │ │   │     │  ││  ││  │  │││ ││ │││   │││││  0x00007fa47319f880:   test   $0x1,%ecx
            │││││ ││  ╭│ │   │     │  ││  ││  │  │││ ││ │││   │││││  0x00007fa47319f886:   jne    0x00007fa47319fcd8           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            │││││ ││  ││ │   │     │  ││  ││  │  │││ ││ │││   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@117 (line 247)
   0.06%    │││││ ││  ││ │   │     │  ││  ││  │  │││ ││ │││   │││││  0x00007fa47319f88c:   shl    %ecx                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
            │││││ ││  ││ │   │     │  ││  ││  │  │││ ││ │││   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@130 (line 247)
   0.12%    │││││ ││  ││ │   │     │  ││  ││  │  │││ ││ │││   │││││  0x00007fa47319f88e:   mov    %ecx,%r10d
   0.00%    │││││ ││  │╰ │   │     │  ││  ││  │  │││ ││ │││   │││││  0x00007fa47319f891:   jmp    0x00007fa47319f840
   0.13%    │││││ ││  │  │   │     │  ││  ││  │  │││ ││ │││   │││││  0x00007fa47319f893:   cmp    $0x102b660,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
            │││││ ││  │  │   │     │  ││  ││  │  │││ ││ │││   │││││  0x00007fa47319f89a:   jne    0x00007fa47319ff0c           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │││││ ││  │  │   │     │  ││  ││  │  │││ ││ │││   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@289 (line 255)
   0.05%    │││││ ││  │  │   │     │  ││  ││  │  │││ ││ │││   │││││  0x00007fa47319f8a0:   movzwl 0xc(%rsi),%ecx               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
            │││││ ││  │  │   │     │  ││  ││  │  │││ ││ │││   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@296 (line 255)
   0.15%    │││││ ││  │  │   │     │  ││  ││  │  │││ ││ │││   │││││  0x00007fa47319f8a4:   test   $0x1,%ecx
            │││││ ││  │ ╭│   │     │  ││  ││  │  │││ ││ │││   │││││  0x00007fa47319f8aa:   jne    0x00007fa47319fbd8           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            │││││ ││  │ ││   │     │  ││  ││  │  │││ ││ │││   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@301 (line 255)
   0.34%    │││││ ││  │ ││   │     │  ││  ││  │  │││ ││ │││   │││││  0x00007fa47319f8b0:   shl    %ecx                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
            │││││ ││  │ ││   │     │  ││  ││  │  │││ ││ │││   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@316 (line 255)
   0.16%    │││││ ││  │ ││   │     │  ││  ││  │  │││ ││ │││   │││││  0x00007fa47319f8b2:   mov    %ecx,%r10d
   0.00%    │││││ ││  │ │╰   │     │  ││  ││  │  │││ ││ │││   │││││  0x00007fa47319f8b5:   jmp    0x00007fa47319f840           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
            │││││ ││  │ │    │     │  ││  ││  │  │││ ││ │││   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@487 (line 246)
   0.14%    │││││ ││  │ │    │     │  ││  ││  │  │││ ││ │││   │││││  0x00007fa47319f8b7:   nopw   0x0(%rax,%rax,1)
   0.02%    │││││ ││  │ │    │     │  ││  ││  │  │││ ││ │││   │││││  0x00007fa47319f8c0:   cmp    $0x102ae58,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
            │││││ ││  │ │    │     │  ││  ││  │  │││ ││ │││   │││││  0x00007fa47319f8c7:   jne    0x00007fa47319fe97           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │││││ ││  │ │    │     │  ││  ││  │  │││ ││ │││   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@433 (line 261)
   0.34%    │││││ ││  │ │    │     │  ││  ││  │  │││ ││ │││   │││││  0x00007fa47319f8cd:   mov    0xc(%rsi),%r8d               ; ImmutableOopMap {rsi=Oop r8=NarrowOop }
            │││││ ││  │ │    │     │  ││  ││  │  │││ ││ │││   │││││                                                            ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
            │││││ ││  │ │    │     │  ││  ││  │  │││ ││ │││   │││││                                                            ; - (reexecute) java.lang.invoke.LambdaForm$MH/0x00007fa3f0087800::tableSwitch@331
            │││││ ││  │ │    │     │  ││  ││  │  │││ ││ │││   │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008b000::delegate@14
            │││││ ││  │ │    │     │  ││  ││  │  │││ ││ │││   │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008a400::invoke@114
            │││││ ││  │ │    │     │  ││  ││  │  │││ ││ │││   │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008ac00::linkToTargetMethod@6
            │││││ ││  │ │    │     │  ││  ││  │  │││ ││ │││   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.95%    │││││ ││  │ │    │     │  ││  ││  │  │││ ││ │││   │││││  0x00007fa47319f8d1:   mov    0x14(,%r8,8),%ecx            ; implicit exception: dispatches to 0x00007fa4731a004d
   0.95%    │││││ ││  │ │    │     │  ││  ││  │  │││ ││ │││   │││││  0x00007fa47319f8d9:   movsbl 0x10(,%r8,8),%r9d            ; ImmutableOopMap {rsi=Oop r8=NarrowOop }
            │││││ ││  │ │    │     │  ││  ││  │  │││ ││ │││   │││││                                                            ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
            │││││ ││  │ │    │     │  ││  ││  │  │││ ││ │││   │││││                                                            ; - (reexecute) java.lang.invoke.LambdaForm$MH/0x00007fa3f0087800::tableSwitch@331
            │││││ ││  │ │    │     │  ││  ││  │  │││ ││ │││   │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008b000::delegate@14
            │││││ ││  │ │    │     │  ││  ││  │  │││ ││ │││   │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008a400::invoke@114
            │││││ ││  │ │    │     │  ││  ││  │  │││ ││ │││   │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008ac00::linkToTargetMethod@6
            │││││ ││  │ │    │     │  ││  ││  │  │││ ││ │││   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.15%    │││││ ││  │ │    │     │  ││  ││  │  │││ ││ │││   │││││  0x00007fa47319f8e2:   mov    0xc(,%rcx,8),%ebx            ; implicit exception: dispatches to 0x00007fa4731a0070
   0.79%    │││││ ││  │ │    │     │  ││  ││  │  │││ ││ │││   │││││  0x00007fa47319f8e9:   mov    %r9d,%ecx
            │││││ ││  │ │    │     │  ││  ││  │  │││ ││ │││   │││││  0x00007fa47319f8ec:   shr    %cl,%ebx                     ;*ishr {reexecute=0 rethrow=0 return_oop=0}
            │││││ ││  │ │    │     │  ││  ││  │  │││ ││ │││   │││││                                                            ; - java.lang.String::length@9 (line 1519)
            │││││ ││  │ │    │     │  ││  ││  │  │││ ││ │││   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@443 (line 261)
   0.36%    │││││ ││  │ │    │     │  ││  ││  │  │││ ││ │││   │││││  0x00007fa47319f8ee:   test   $0x1,%ebx
            │││││ ││  │ │ ╭  │     │  ││  ││  │  │││ ││ │││   │││││  0x00007fa47319f8f4:   je     0x00007fa47319fd46           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            │││││ ││  │ │ │  │     │  ││  ││  │  │││ ││ │││   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@448 (line 261)
   0.01%    │││││ ││  │ │ │  │     │  ││  ││  │  │││ ││ │││   │││││  0x00007fa47319f8fa:   mov    $0xf,%r11d                   ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
            │││││ ││  │ │ │  │     │  ││  ││  │  │││ ││ │││   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
   0.34%    │││││ ││  │ │ │  │ ↗ ↗ │ ↗││ ↗││  │ ↗│││↗││ │││↗  │││││  0x00007fa47319f900:   mov    %r11d,%ecx
   0.02%    │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f903:   sar    %ecx
   0.52%    │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f905:   and    $0x7,%ecx                    ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0087800::tableSwitch@39
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008b000::delegate@14
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008a400::invoke@114
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008ac00::linkToTargetMethod@6
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.11%    │││││ ││  │ │ │╭ │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f908:   lea    0x19(%rip),%r8        # 0x00007fa47319f928
   0.51%    │││││ ││  │ │ ││ │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f90f:   mov    (%r8,%rcx,8),%r9
   0.41%    │││││ ││  │ │ ││ │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f913:   cmp    %r11d,%r9d
            │││││ ││  │ │ ││ │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f916:   jne    0x00007fa47319fe62
   0.57%    │││││ ││  │ │ ││ │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f91c:   sar    $0x20,%r9
   0.03%    │││││ ││  │ │ ││ │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f920:   add    %r9,%r8
   0.54%    │││││ ││  │ │ ││ │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f923:   jmp    *%r8
            │││││ ││  │ │ ││ │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f926:   xchg   %ax,%ax
            │││││ ││  │ │ │↘ │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f928:   add    %eax,(%rax)
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f92a:   add    %al,(%rax)
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f92c:   (bad)  
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f92d:   add    (%rax),%eax
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f92f:   add    %al,(%rbx)
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f931:   add    %al,(%rax)
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f933:   add    %ah,0x2(%rbx)
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f936:   add    %al,(%rax)
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f938:   add    $0x95000000,%eax
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f93d:   add    (%rax),%al
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f93f:   add    %al,(%rdi)
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f941:   add    %al,(%rax)
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f943:   add    %cl,0x3(%rax)
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f946:   add    %al,(%rax)
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f948:   or     %eax,(%rax)
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f94a:   add    %al,(%rax)
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f94c:   rex.WXB add (%r8),%al
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f94f:   add    %cl,(%rbx)
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f951:   add    %al,(%rax)
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f953:   add    %ch,%al
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f955:   add    %eax,(%rax)
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f957:   add    %cl,-0x43000000(%rip)        # 0x00007fa43019f95d
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f95d:   add    (%rax),%eax
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f95f:   add    %cl,(%rdi)
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f961:   add    %al,(%rax)
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f963:   add    %al,0x0(%rax)
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f966:   add    %al,(%rax)
   0.04%    │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f968:   cmp    $0x102ae58,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f96f:   jne    0x00007fa47319ff45           ;* unwind (locked if synchronized)
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││                                                            ; - java.lang.invoke.MethodHandleImpl::profileBoolean@-3
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0085000::invoke@47
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0087800::tableSwitch@325
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008b000::delegate@14
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008a400::invoke@114
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008ac00::linkToTargetMethod@6
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.25%    │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││  0x00007fa47319f975:   mov    $0xf,%r8d                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0087800::tableSwitch@331
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008b000::delegate@14
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008a400::invoke@114
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008ac00::linkToTargetMethod@6
            │││││ ││  │ │ │  │ │ │ │ │││ │││  │ │││││││ ││││  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.62%    │││││ ││  │ │ │  │ │ │ │ │││↗│││↗↗│↗│││││││↗││││↗↗│││││  0x00007fa47319f97b:   mov    %r8d,%ecx
   0.09%    │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319f97e:   sar    %ecx
   0.04%    │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319f980:   and    $0x7,%ecx                    ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@16 (line 246)
   0.22%    │││││ ││  │ │ │ ╭│ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319f983:   lea    0x1e(%rip),%r9        # 0x00007fa47319f9a8
   0.92%    │││││ ││  │ │ │ ││ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319f98a:   mov    (%r9,%rcx,8),%rbx
   0.33%    │││││ ││  │ │ │ ││ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319f98e:   cmp    %r8d,%ebx
            │││││ ││  │ │ │ ││ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319f991:   jne    0x00007fa47319ff1e
   0.22%    │││││ ││  │ │ │ ││ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319f997:   sar    $0x20,%rbx
   0.20%    │││││ ││  │ │ │ ││ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319f99b:   add    %rbx,%r9
   0.56%    │││││ ││  │ │ │ ││ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319f99e:   xchg   %ax,%ax
   0.01%    │││││ ││  │ │ │ ││ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319f9a0:   jmp    *%r9
            │││││ ││  │ │ │ ││ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319f9a3:   nopl   0x0(%rax,%rax,1)
            │││││ ││  │ │ │ ↘│ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319f9a8:   add    %eax,(%rax)
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319f9aa:   add    %al,(%rax)
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319f9ac:   adc    %eax,(%rbx)
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319f9ae:   add    %al,(%rax)
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319f9b0:   add    (%rax),%eax
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319f9b2:   add    %al,(%rax)
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319f9b4:   std    
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319f9b5:   add    %eax,(%rax)
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319f9b7:   add    %al,0x56000000(%rip)        # 0x00007fa4c919f9bd
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319f9bd:   add    (%rax),%al
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319f9bf:   add    %al,(%rdi)
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319f9c1:   add    %al,(%rax)
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319f9c3:   add    %ch,%ah
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319f9c5:   add    (%rax),%al
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319f9c7:   add    %cl,(%rcx)
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319f9c9:   add    %al,(%rax)
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319f9cb:   add    %bh,0xb000002(%rip)        # 0x00007fa47e19f9d3
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319f9d1:   add    %al,(%rax)
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319f9d3:   add    %cl,0xd000001(%rbx)
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319f9d9:   add    %al,(%rax)
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319f9db:   add    %cl,0xf000002(%rax)
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319f9e1:   add    %al,(%rax)
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319f9e3:   add    %al,0x0(%rax)
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319f9e6:   add    %al,(%rax)
   0.03%    │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319f9e8:   cmp    $0x102ae58,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319f9ef:   jne    0x00007fa47319fe88           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@471 (line 262)
   0.18%    │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319f9f5:   mov    0xc(%rsi),%ecx               ; ImmutableOopMap {rcx=NarrowOop rsi=Oop }
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││                                                            ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││                                                            ; - (reexecute) java.lang.invoke.LambdaForm$MH/0x00007fa3f0087800::tableSwitch@331
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008b000::delegate@14
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008a400::invoke@114
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008ac00::linkToTargetMethod@6
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.02%    │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319f9f8:   mov    0x14(,%rcx,8),%r10d          ; implicit exception: dispatches to 0x00007fa4731a0093
   0.02%    │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319fa00:   movsbl 0x10(,%rcx,8),%ecx           ; ImmutableOopMap {rsi=Oop }
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││                                                            ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││                                                            ; - (reexecute) java.lang.invoke.LambdaForm$MH/0x00007fa3f0087800::tableSwitch@331
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008b000::delegate@14
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008a400::invoke@114
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008ac00::linkToTargetMethod@6
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.01%    │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319fa08:   mov    0xc(,%r10,8),%r10d           ; implicit exception: dispatches to 0x00007fa4731a00b6
   0.23%    │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319fa10:   shr    %cl,%r10d                    ;*ishr {reexecute=0 rethrow=0 return_oop=0}
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││                                                            ; - java.lang.String::length@9 (line 1519)
            │││││ ││  │ │ │  │ │ │ │ ││││││││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@481 (line 262)
   0.24%    │││││ ││  │ │ │  ╰ │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319fa13:   jmp    0x00007fa47319f840           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
            │││││ ││  │ │ │    │ │ │ ││││││││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@487 (line 246)
   0.18%    │││││ ││  │ │ │    │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319fa18:   nopl   0x0(%rax,%rax,1)
   0.00%    │││││ ││  │ │ │    │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319fa20:   cmp    $0x102b860,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
            │││││ ││  │ │ │    │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319fa27:   jne    0x00007fa47319fe43           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │││││ ││  │ │ │    │ │ │ ││││││││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@149 (line 249)
   0.02%    │││││ ││  │ │ │    │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319fa2d:   mov    0x10(%rsi),%rcx              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
            │││││ ││  │ │ │    │ │ │ ││││││││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@156 (line 249)
   0.06%    │││││ ││  │ │ │    │ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319fa31:   test   $0x1,%rcx
            │││││ ││  │ │ │   ╭│ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319fa38:   je     0x00007fa47319fc88           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            │││││ ││  │ │ │   ││ │ │ ││││││││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@163 (line 249)
   0.15%    │││││ ││  │ │ │   ││ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319fa3e:   mov    $0x3,%r11d
   0.07%    │││││ ││  │ │ │   │╰ │ │ ││││││││││││││││││││││││││││││  0x00007fa47319fa44:   jmp    0x00007fa47319f900
   0.17%    │││││ ││  │ │ │   │  │ │ ││││││││││││││││││││││││││││││  0x00007fa47319fa49:   cmp    $0x102ac58,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
            │││││ ││  │ │ │   │  │ │ ││││││││││││││││││││││││││││││  0x00007fa47319fa50:   jne    0x00007fa47319fff3           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │││││ ││  │ │ │   │  │ │ ││││││││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@198 (line 251)
   0.05%    │││││ ││  │ │ │   │  │ │ ││││││││││││││││││││││││││││││  0x00007fa47319fa56:   movswl 0xc(%rsi),%ecx               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
            │││││ ││  │ │ │   │  │ │ ││││││││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@205 (line 251)
   0.01%    │││││ ││  │ │ │   │  │ │ ││││││││││││││││││││││││││││││  0x00007fa47319fa5a:   nopw   0x0(%rax,%rax,1)
   0.01%    │││││ ││  │ │ │   │  │ │ ││││││││││││││││││││││││││││││  0x00007fa47319fa60:   test   $0x1,%ecx
            │││││ ││  │ │ │   │ ╭│ │ ││││││││││││││││││││││││││││││  0x00007fa47319fa66:   je     0x00007fa47319fc19           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            │││││ ││  │ │ │   │ ││ │ ││││││││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@210 (line 251)
   0.11%    │││││ ││  │ │ │   │ ││ │ ││││││││││││││││││││││││││││││  0x00007fa47319fa6c:   mov    $0x5,%r11d
   0.06%    │││││ ││  │ │ │   │ │╰ │ ││││││││││││││││││││││││││││││  0x00007fa47319fa72:   jmp    0x00007fa47319f900           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
            │││││ ││  │ │ │   │ │  │ ││││││││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
   0.12%    │││││ ││  │ │ │   │ │  │ ││││││││││││││││││││││││││││││  0x00007fa47319fa77:   nopw   0x0(%rax,%rax,1)
   0.02%    │││││ ││  │ │ │   │ │  │ ││││││││││││││││││││││││││││││  0x00007fa47319fa80:   cmp    $0x102b060,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
            │││││ ││  │ │ │   │ │  │ ││││││││││││││││││││││││││││││  0x00007fa47319fa87:   jne    0x00007fa47319fdf3           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │││││ ││  │ │ │   │ │  │ ││││││││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@384 (line 259)
   0.26%    │││││ ││  │ │ │   │ │  │ ││││││││││││││││││││││││││││││  0x00007fa47319fa8d:   vmovss 0xc(%rsi),%xmm0              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
            │││││ ││  │ │ │   │ │  │ ││││││││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@391 (line 259)
   1.10%    │││││ ││  │ │ │   │ │  │ ││││││││││││││││││││││││││││││  0x00007fa47319fa92:   vcvttss2si %xmm0,%r11d
   1.22%    │││││ ││  │ │ │   │ │  │ ││││││││││││││││││││││││││││││  0x00007fa47319fa96:   data16 nopw 0x0(%rax,%rax,1)
            │││││ ││  │ │ │   │ │  │ ││││││││││││││││││││││││││││││  0x00007fa47319faa0:   cmp    $0x80000000,%r11d
            │││││ ││  │ │ │   │ │  │ ││││││││││││││││││││││││││││││  0x00007fa47319faa7:   je     0x00007fa47319fd89           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
            │││││ ││  │ │ │   │ │  │ ││││││││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@394 (line 259)
   0.02%    │││││ ││  │ │ │   │ │  │ ││││││││││││││││││││││││││││││  0x00007fa47319faad:   test   $0x1,%r11d
            │││││ ││  │ │ │   │ │ ╭│ ││││││││││││││││││││││││││││││  0x00007fa47319fab4:   jne    0x00007fa47319fc25           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            │││││ ││  │ │ │   │ │ ││ ││││││││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@397 (line 259)
   0.23%    │││││ ││  │ │ │   │ │ ││ ││││││││││││││││││││││││││││││  0x00007fa47319faba:   shl    %r11d                        ;*imul {reexecute=0 rethrow=0 return_oop=0}
            │││││ ││  │ │ │   │ │ ││ ││││││││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@413 (line 259)
   0.12%    │││││ ││  │ │ │   │ │ ││ ││││││││││││││││││││││││││││││  0x00007fa47319fabd:   mov    %r11d,%r10d
   0.00%    │││││ ││  │ │ │   │ │ │╰ ││││││││││││││││││││││││││││││  0x00007fa47319fac0:   jmp    0x00007fa47319f840
   0.18%    │││││ ││  │ │ │   │ │ │  ││││││││││││││││││││││││││││││  0x00007fa47319fac5:   cmp    $0x102b460,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
            │││││ ││  │ │ │   │ │ │  ││││││││││││││││││││││││││││││  0x00007fa47319facc:   jne    0x00007fa47319ff80           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │││││ ││  │ │ │   │ │ │  ││││││││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@243 (line 253)
   0.03%    │││││ ││  │ │ │   │ │ │  ││││││││││││││││││││││││││││││  0x00007fa47319fad2:   movsbl 0xc(%rsi),%r11d              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
            │││││ ││  │ │ │   │ │ │  ││││││││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@250 (line 253)
   0.02%    │││││ ││  │ │ │   │ │ │  ││││││││││││││││││││││││││││││  0x00007fa47319fad7:   nopw   0x0(%rax,%rax,1)
   0.01%    │││││ ││  │ │ │   │ │ │  ││││││││││││││││││││││││││││││  0x00007fa47319fae0:   test   $0x1,%r11d
            │││││ ││  │ │ │   │ │ │ ╭││││││││││││││││││││││││││││││  0x00007fa47319fae7:   je     0x00007fa47319fd18           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            │││││ ││  │ │ │   │ │ │ │││││││││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@255 (line 253)
   0.25%    │││││ ││  │ │ │   │ │ │ │││││││││││││││││││││││││││││││  0x00007fa47319faed:   mov    $0x7,%r11d
   0.13%    │││││ ││  │ │ │   │ │ │ │╰│││││││││││││││││││││││││││││  0x00007fa47319faf3:   jmp    0x00007fa47319f900           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
            │││││ ││  │ │ │   │ │ │ │ │││││││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
   2.16%    ↘││││ ││  │ │ │   │ │ │ │ │││││││││││││││││││││││││││││  0x00007fa47319faf8:   mov    $0x4,%r11d
   1.15%     ││││ ││  │ │ │   │ │ │ │ │││││││││││││││││││││││││││││  0x00007fa47319fafe:   xchg   %ax,%ax
   0.00%     ││││ ││  │ │ │   │ │ │ │ ╰││││││││││││││││││││││││││││  0x00007fa47319fb00:   jmp    0x00007fa47319f792           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
             ││││ ││  │ │ │   │ │ │ │  ││││││││││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0084800::guard@92
             ││││ ││  │ │ │   │ │ │ │  ││││││││││││││││││││││││││││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
             ││││ ││  │ │ │   │ │ │ │  ││││││││││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0085000::invoke@91
             ││││ ││  │ │ │   │ │ │ │  ││││││││││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0087800::tableSwitch@135
             ││││ ││  │ │ │   │ │ │ │  ││││││││││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008b000::delegate@14
             ││││ ││  │ │ │   │ │ │ │  ││││││││││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008a400::invoke@114
             ││││ ││  │ │ │   │ │ │ │  ││││││││││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008ac00::linkToTargetMethod@6
             ││││ ││  │ │ │   │ │ │ │  ││││││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   2.12%     ↘│││ ││  │ │ │   │ │ │ │  ││││││││││││││││││││││││││││  0x00007fa47319fb05:   mov    $0x6,%r11d
   1.42%      │││ ││  │ │ │   │ │ │ │  ╰│││││││││││││││││││││││││││  0x00007fa47319fb0b:   jmp    0x00007fa47319f792
   0.04%      │││ ││  │ │ │   │ │ │ │   │││││││││││││││││││││││││││  0x00007fa47319fb10:   cmp    $0x102b260,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
              │││ ││  │ │ │   │ │ │ │   │││││││││││││││││││││││││││  0x00007fa47319fb17:   jne    0x00007fa47319ffe7           ;* unwind (locked if synchronized)
              │││ ││  │ │ │   │ │ │ │   │││││││││││││││││││││││││││                                                            ; - java.lang.invoke.MethodHandleImpl::profileBoolean@-3
              │││ ││  │ │ │   │ │ │ │   │││││││││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0085000::invoke@47
              │││ ││  │ │ │   │ │ │ │   │││││││││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0087800::tableSwitch@273
              │││ ││  │ │ │   │ │ │ │   │││││││││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008b000::delegate@14
              │││ ││  │ │ │   │ │ │ │   │││││││││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008a400::invoke@114
              │││ ││  │ │ │   │ │ │ │   │││││││││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008ac00::linkToTargetMethod@6
              │││ ││  │ │ │   │ │ │ │   │││││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.00%      │││ ││  │ │ │   │ │ │ │   │││││││││││││││││││││││││││  0x00007fa47319fb1d:   mov    $0xb,%r8d
   0.00%      │││ ││  │ │ │   │ │ │ │   ╰││││││││││││││││││││││││││  0x00007fa47319fb23:   jmp    0x00007fa47319f97b           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
              │││ ││  │ │ │   │ │ │ │    ││││││││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0087800::tableSwitch@331
              │││ ││  │ │ │   │ │ │ │    ││││││││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008b000::delegate@14
              │││ ││  │ │ │   │ │ │ │    ││││││││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008a400::invoke@114
              │││ ││  │ │ │   │ │ │ │    ││││││││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008ac00::linkToTargetMethod@6
              │││ ││  │ │ │   │ │ │ │    ││││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.19%      │││ │↘  │ │ │   │ │ │ │    ││││││││││││││││││││││││││  0x00007fa47319fb28:   mov    $0xb,%r11d
   0.07%      │││ │   │ │ │   │ │ │ │    ╰│││││││││││││││││││││││││  0x00007fa47319fb2e:   jmp    0x00007fa47319f900
   0.02%      │││ │   │ │ │   │ │ │ │     │││││││││││││││││││││││││  0x00007fa47319fb33:   cmp    $0x102b260,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
              │││ │   │ │ │   │ │ │ │     │││││││││││││││││││││││││  0x00007fa47319fb3a:   jne    0x00007fa47319fe52           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              │││ │   │ │ │   │ │ │ │     │││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@369 (line 258)
   0.00%      │││ │   │ │ │   │ │ │ │     │││││││││││││││││││││││││  0x00007fa47319fb40:   vmovsd 0x10(%rsi),%xmm0             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
              │││ │   │ │ │   │ │ │ │     │││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@376 (line 258)
   0.16%      │││ │   │ │ │   │ │ │ │     │││││││││││││││││││││││││  0x00007fa47319fb45:   vcvttsd2si %xmm0,%r10d
   0.29%      │││ │   │ │ │   │ │ │ │     │││││││││││││││││││││││││  0x00007fa47319fb49:   cmp    $0x80000000,%r10d
              │││ │   │ │ │   │ │ │ │     ╰││││││││││││││││││││││││  0x00007fa47319fb50:   jne    0x00007fa47319f840
              │││ │   │ │ │   │ │ │ │      ││││││││││││││││││││││││  0x00007fa47319fb56:   vucomisd %xmm0,%xmm0
              │││ │   │ │ │   │ │ │ │      ││││││││││││││││││││││││  0x00007fa47319fb5a:   jp     0x00007fa47319fddd
              │││ │   │ │ │   │ │ │ │      ││││││││││││││││││││││││  0x00007fa47319fb60:   vxorpd %xmm1,%xmm1,%xmm1
              │││ │   │ │ │   │ │ │ │      ││││││││││││││││││││││││  0x00007fa47319fb64:   vucomisd %xmm1,%xmm0                ;*d2i {reexecute=0 rethrow=0 return_oop=0}
              │││ │   │ │ │   │ │ │ │      ││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@379 (line 258)
              │││ │   │ │ │   │ │ │ │      ││││││││││││││││││││││││  0x00007fa47319fb68:   ja     0x00007fa47319fdb1
              │││ │   │ │ │   │ │ │ │      ╰│││││││││││││││││││││││  0x00007fa47319fb6e:   jmp    0x00007fa47319f840
   0.10%      │││ │   │ │ │   │ │ │ │       │││││││││││││││││││││││  0x00007fa47319fb73:   cmp    $0x102b660,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
              │││ │   │ │ │   │ │ │ │       │││││││││││││││││││││││  0x00007fa47319fb7a:   jne    0x00007fa47319ffbd           ;* unwind (locked if synchronized)
              │││ │   │ │ │   │ │ │ │       │││││││││││││││││││││││                                                            ; - java.lang.invoke.MethodHandleImpl::profileBoolean@-3
              │││ │   │ │ │   │ │ │ │       │││││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0085000::invoke@47
              │││ │   │ │ │   │ │ │ │       │││││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0087800::tableSwitch@247
              │││ │   │ │ │   │ │ │ │       │││││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008b000::delegate@14
              │││ │   │ │ │   │ │ │ │       │││││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008a400::invoke@114
              │││ │   │ │ │   │ │ │ │       │││││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008ac00::linkToTargetMethod@6
              │││ │   │ │ │   │ │ │ │       │││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.01%      │││ │   │ │ │   │ │ │ │       │││││││││││││││││││││││  0x00007fa47319fb80:   mov    $0x9,%r8d
   0.01%      │││ │   │ │ │   │ │ │ │       ╰││││││││││││││││││││││  0x00007fa47319fb86:   jmp    0x00007fa47319f97b
   0.24%      │││ │   │ │ │   │ │ │ │        ││││││││││││││││││││││  0x00007fa47319fb8b:   cmp    $0x102b860,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
              │││ │   │ │ │   │ │ │ │        ││││││││││││││││││││││  0x00007fa47319fb92:   jne    0x00007fa47319ffa5           ;* unwind (locked if synchronized)
              │││ │   │ │ │   │ │ │ │        ││││││││││││││││││││││                                                            ; - java.lang.invoke.MethodHandleImpl::profileBoolean@-3
              │││ │   │ │ │   │ │ │ │        ││││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0085000::invoke@47
              │││ │   │ │ │   │ │ │ │        ││││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0087800::tableSwitch@171
              │││ │   │ │ │   │ │ │ │        ││││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008b000::delegate@14
              │││ │   │ │ │   │ │ │ │        ││││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008a400::invoke@114
              │││ │   │ │ │   │ │ │ │        ││││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008ac00::linkToTargetMethod@6
              │││ │   │ │ │   │ │ │ │        ││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.13%      │││ │   │ │ │   │ │ │ │        ││││││││││││││││││││││  0x00007fa47319fb98:   mov    $0x3,%r8d
              │││ │   │ │ │   │ │ │ │        ││││││││││││││││││││││  0x00007fa47319fb9e:   xchg   %ax,%ax
              │││ │   │ │ │   │ │ │ │        ╰│││││││││││││││││││││  0x00007fa47319fba0:   jmp    0x00007fa47319f97b
   0.08%      │││ │   │ │ │   │ │ │ │         │││││││││││││││││││││  0x00007fa47319fba5:   cmp    $0x102b860,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
              │││ │   │ │ │   │ │ │ │         │││││││││││││││││││││  0x00007fa47319fbac:   jne    0x00007fa47319ff30           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              │││ │   │ │ │   │ │ │ │         │││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@183 (line 250)
   0.01%      │││ │   │ │ │   │ │ │ │         │││││││││││││││││││││  0x00007fa47319fbb2:   mov    0x10(%rsi),%esi              ;*l2i {reexecute=0 rethrow=0 return_oop=0}
              │││ │   │ │ │   │ │ │ │         │││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@193 (line 250)
   0.01%      │││ │   │ │ │   │ │ │ │         │││││││││││││││││││││  0x00007fa47319fbb5:   mov    %esi,%r10d
   0.00%      │││ │   │ │ │   │ │ │ │         ╰││││││││││││││││││││  0x00007fa47319fbb8:   jmp    0x00007fa47319f840           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
              │││ │   │ │ │   │ │ │ │          ││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@487 (line 246)
   0.18%      │││ │   │ │ │   │ │ │ │          ││││││││││││││││││││  0x00007fa47319fbbd:   data16 xchg %ax,%ax
   0.02%      │││ │   │ │ │   │ │ │ │          ││││││││││││││││││││  0x00007fa47319fbc0:   cmp    $0x102ac58,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
              │││ │   │ │ │   │ │ │ │          ││││││││││││││││││││  0x00007fa47319fbc7:   jne    0x00007fa47319ffb1           ;* unwind (locked if synchronized)
              │││ │   │ │ │   │ │ │ │          ││││││││││││││││││││                                                            ; - java.lang.invoke.MethodHandleImpl::profileBoolean@-3
              │││ │   │ │ │   │ │ │ │          ││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0085000::invoke@47
              │││ │   │ │ │   │ │ │ │          ││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0087800::tableSwitch@195
              │││ │   │ │ │   │ │ │ │          ││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008b000::delegate@14
              │││ │   │ │ │   │ │ │ │          ││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008a400::invoke@114
              │││ │   │ │ │   │ │ │ │          ││││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008ac00::linkToTargetMethod@6
              │││ │   │ │ │   │ │ │ │          ││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.11%      │││ │   │ │ │   │ │ │ │          ││││││││││││││││││││  0x00007fa47319fbcd:   mov    $0x5,%r8d
   0.04%      │││ │   │ │ │   │ │ │ │          ╰│││││││││││││││││││  0x00007fa47319fbd3:   jmp    0x00007fa47319f97b           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
              │││ │   │ │ │   │ │ │ │           │││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0087800::tableSwitch@331
              │││ │   │ │ │   │ │ │ │           │││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008b000::delegate@14
              │││ │   │ │ │   │ │ │ │           │││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008a400::invoke@114
              │││ │   │ │ │   │ │ │ │           │││││││││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008ac00::linkToTargetMethod@6
              │││ │   │ │ │   │ │ │ │           │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.17%      │││ │   │ ↘ │   │ │ │ │           │││││││││││││││││││  0x00007fa47319fbd8:   mov    $0x9,%r11d
   0.04%      │││ │   │   │   │ │ │ │           │││││││││││││││││││  0x00007fa47319fbde:   xchg   %ax,%ax
              │││ │   │   │   │ │ │ │           ╰││││││││││││││││││  0x00007fa47319fbe0:   jmp    0x00007fa47319f900
   0.07%      │││ │   │   │   │ │ │ │            ││││││││││││││││││  0x00007fa47319fbe5:   cmp    $0x102b660,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
              │││ │   │   │   │ │ │ │            ││││││││││││││││││  0x00007fa47319fbec:   jne    0x00007fa47319ffc9           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              │││ │   │   │   │ │ │ │            ││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@321 (line 256)
   0.02%      │││ │   │   │   │ │ │ │            ││││││││││││││││││  0x00007fa47319fbf2:   movzwl 0xc(%rsi),%esi               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
              │││ │   │   │   │ │ │ │            ││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@328 (line 256)
              │││ │   │   │   │ │ │ │            ││││││││││││││││││  0x00007fa47319fbf6:   mov    %esi,%r10d
   0.00%      │││ │   │   │   │ │ │ │            ╰│││││││││││││││││  0x00007fa47319fbf9:   jmp    0x00007fa47319f840           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
              │││ │   │   │   │ │ │ │             │││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@487 (line 246)
   0.09%      │││ │   │   │   │ │ │ │             │││││││││││││││││  0x00007fa47319fbfe:   xchg   %ax,%ax
   0.01%      │││ │   │   │   │ │ │ │             │││││││││││││││││  0x00007fa47319fc00:   cmp    $0x102ac58,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
              │││ │   │   │   │ │ │ │             │││││││││││││││││  0x00007fa47319fc07:   jne    0x00007fa47319fe1b           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              │││ │   │   │   │ │ │ │             │││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@229 (line 252)
   0.01%      │││ │   │   │   │ │ │ │             │││││││││││││││││  0x00007fa47319fc0d:   movswl 0xc(%rsi),%esi               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
              │││ │   │   │   │ │ │ │             │││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@236 (line 252)
   0.02%      │││ │   │   │   │ │ │ │             │││││││││││││││││  0x00007fa47319fc11:   mov    %esi,%r10d
   0.10%      │││ │   │   │   │ │ │ │             ╰││││││││││││││││  0x00007fa47319fc14:   jmp    0x00007fa47319f840           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
              │││ │   │   │   │ │ │ │              ││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@487 (line 246)
   0.15%      │││ │   │   │   │ ↘ │ │              ││││││││││││││││  0x00007fa47319fc19:   shl    %ecx                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
              │││ │   │   │   │   │ │              ││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@224 (line 251)
   0.11%      │││ │   │   │   │   │ │              ││││││││││││││││  0x00007fa47319fc1b:   mov    %ecx,%r10d
              │││ │   │   │   │   │ │              ││││││││││││││││  0x00007fa47319fc1e:   xchg   %ax,%ax
   0.00%      │││ │   │   │   │   │ │              ╰│││││││││││││││  0x00007fa47319fc20:   jmp    0x00007fa47319f840           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
              │││ │   │   │   │   │ │               │││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@487 (line 246)
   0.13%      │││ │   │   │   │   ↘ │               │││││││││││││││  0x00007fa47319fc25:   mov    $0xd,%r11d
   0.05%      │││ │   │   │   │     │               ╰││││││││││││││  0x00007fa47319fc2b:   jmp    0x00007fa47319f900
   0.03%      │││ │   │   │   │     │                ││││││││││││││  0x00007fa47319fc30:   cmp    $0x102b060,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
              │││ │   │   │   │     │                ││││││││││││││  0x00007fa47319fc37:   jne    0x00007fa47319fefa           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              │││ │   │   │   │     │                ││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@418 (line 260)
   0.01%      │││ │   │   │   │     │                ││││││││││││││  0x00007fa47319fc3d:   vmovss 0xc(%rsi),%xmm0              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
              │││ │   │   │   │     │                ││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@425 (line 260)
   0.15%      │││ │   │   │   │     │                ││││││││││││││  0x00007fa47319fc42:   vcvttss2si %xmm0,%r10d
   0.16%      │││ │   │   │   │     │                ││││││││││││││  0x00007fa47319fc46:   cmp    $0x80000000,%r10d
              │││ │   │   │   │     │                ╰│││││││││││││  0x00007fa47319fc4d:   jne    0x00007fa47319f840
              │││ │   │   │   │     │                 │││││││││││││  0x00007fa47319fc53:   vucomiss %xmm0,%xmm0
              │││ │   │   │   │     │                 │││││││││││││  0x00007fa47319fc57:   jp     0x00007fa47319fde8
              │││ │   │   │   │     │                 │││││││││││││  0x00007fa47319fc5d:   vxorps %xmm1,%xmm1,%xmm1
              │││ │   │   │   │     │                 │││││││││││││  0x00007fa47319fc61:   vucomiss %xmm1,%xmm0                ;*f2i {reexecute=0 rethrow=0 return_oop=0}
              │││ │   │   │   │     │                 │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@428 (line 260)
              │││ │   │   │   │     │                 │││││││││││││  0x00007fa47319fc65:   ja     0x00007fa47319fdbc
              │││ │   │   │   │     │                 ╰││││││││││││  0x00007fa47319fc6b:   jmp    0x00007fa47319f840
   0.12%      │││ │   │   │   │     │                  ││││││││││││  0x00007fa47319fc70:   cmp    $0x102b460,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
              │││ │   │   │   │     │                  ││││││││││││  0x00007fa47319fc77:   jne    0x00007fa47319fedf           ;* unwind (locked if synchronized)
              │││ │   │   │   │     │                  ││││││││││││                                                            ; - java.lang.invoke.MethodHandleImpl::profileBoolean@-3
              │││ │   │   │   │     │                  ││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0085000::invoke@47
              │││ │   │   │   │     │                  ││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0087800::tableSwitch@221
              │││ │   │   │   │     │                  ││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008b000::delegate@14
              │││ │   │   │   │     │                  ││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008a400::invoke@114
              │││ │   │   │   │     │                  ││││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008ac00::linkToTargetMethod@6
              │││ │   │   │   │     │                  ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.01%      │││ │   │   │   │     │                  ││││││││││││  0x00007fa47319fc7d:   mov    $0x7,%r8d
   0.00%      │││ │   │   │   │     │                  ╰│││││││││││  0x00007fa47319fc83:   jmp    0x00007fa47319f97b           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
              │││ │   │   │   │     │                   │││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0087800::tableSwitch@331
              │││ │   │   │   │     │                   │││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008b000::delegate@14
              │││ │   │   │   │     │                   │││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008a400::invoke@114
              │││ │   │   │   │     │                   │││││││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008ac00::linkToTargetMethod@6
              │││ │   │   │   │     │                   │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.16%      │││ │   │   │   ↘     │                   │││││││││││  0x00007fa47319fc88:   mov    %ecx,%ecx                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
              │││ │   │   │         │                   │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@177 (line 249)
   0.05%      │││ │   │   │         │                   │││││││││││  0x00007fa47319fc8a:   shl    %ecx                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
              │││ │   │   │         │                   │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@178 (line 249)
   0.01%      │││ │   │   │         │                   │││││││││││  0x00007fa47319fc8c:   mov    %ecx,%r10d
              │││ │   │   │         │                   ╰││││││││││  0x00007fa47319fc8f:   jmp    0x00007fa47319f840           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
              │││ │   │   │         │                    ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@487 (line 246)
   0.13%      │││ │   │   │         │                    ││││││││││  0x00007fa47319fc94:   nopl   0x0(%rax,%rax,1)
              │││ │   │   │         │                    ││││││││││  0x00007fa47319fc9c:   data16 data16 xchg %ax,%ax
   0.01%      │││ │   │   │         │                    ││││││││││  0x00007fa47319fca0:   cmp    $0x102b460,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
              │││ │   │   │         │                    ││││││││││  0x00007fa47319fca7:   jne    0x00007fa47319febb           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              │││ │   │   │         │                    ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@275 (line 254)
   0.00%      │││ │   │   │         │                    ││││││││││  0x00007fa47319fcad:   movsbl 0xc(%rsi),%esi               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
              │││ │   │   │         │                    ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@282 (line 254)
   0.09%      │││ │   │   │         │                    ││││││││││  0x00007fa47319fcb1:   mov    %esi,%r10d
              │││ │   │   │         │                    ╰│││││││││  0x00007fa47319fcb4:   jmp    0x00007fa47319f840           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
              │││ │   │   │         │                     │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@487 (line 246)
   0.10%      │││ │   │   │         │                     │││││││││  0x00007fa47319fcb9:   nopl   0x0(%rax)
   0.01%      │││ │   │   │         │                     │││││││││  0x00007fa47319fcc0:   cmp    $0x102a868,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
              │││ │   │   │         │                     │││││││││  0x00007fa47319fcc7:   jne    0x00007fa47319fea9           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              │││ │   │   │         │                     │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@135 (line 248)
   0.01%      │││ │   │   │         │                     │││││││││  0x00007fa47319fccd:   mov    0xc(%rsi),%esi               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
              │││ │   │   │         │                     │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@142 (line 248)
              │││ │   │   │         │                     │││││││││  0x00007fa47319fcd0:   mov    %esi,%r10d
   0.10%      │││ │   │   │         │                     ╰││││││││  0x00007fa47319fcd3:   jmp    0x00007fa47319f840           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
              │││ │   │   │         │                      ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@487 (line 246)
   0.14%      │││ │   ↘   │         │                      ││││││││  0x00007fa47319fcd8:   mov    $0x1,%r11d
   0.04%      │││ │       │         │                      ││││││││  0x00007fa47319fcde:   xchg   %ax,%ax
              │││ │       │         │                      ╰│││││││  0x00007fa47319fce0:   jmp    0x00007fa47319f900
   0.03%      │││ │       │         │                       │││││││  0x00007fa47319fce5:   cmp    $0x102b060,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
              │││ │       │         │                       │││││││  0x00007fa47319fcec:   jne    0x00007fa47319ffdb           ;* unwind (locked if synchronized)
              │││ │       │         │                       │││││││                                                            ; - java.lang.invoke.MethodHandleImpl::profileBoolean@-3
              │││ │       │         │                       │││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0085000::invoke@47
              │││ │       │         │                       │││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0087800::tableSwitch@299
              │││ │       │         │                       │││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008b000::delegate@14
              │││ │       │         │                       │││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008a400::invoke@114
              │││ │       │         │                       │││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008ac00::linkToTargetMethod@6
              │││ │       │         │                       │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.02%      │││ │       │         │                       │││││││  0x00007fa47319fcf2:   mov    $0xd,%r8d
   0.01%      │││ │       │         │                       ╰││││││  0x00007fa47319fcf8:   jmp    0x00007fa47319f97b           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
              │││ │       │         │                        ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0087800::tableSwitch@331
              │││ │       │         │                        ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008b000::delegate@14
              │││ │       │         │                        ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008a400::invoke@114
              │││ │       │         │                        ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008ac00::linkToTargetMethod@6
              │││ │       │         │                        ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.12%      │││ │       │         │                        ││││││  0x00007fa47319fcfd:   data16 xchg %ax,%ax
   0.00%      │││ │       │         │                        ││││││  0x00007fa47319fd00:   cmp    $0x102a868,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
              │││ │       │         │                        ││││││  0x00007fa47319fd07:   jne    0x00007fa47319ff74           ;* unwind (locked if synchronized)
              │││ │       │         │                        ││││││                                                            ; - java.lang.invoke.MethodHandleImpl::profileBoolean@-3
              │││ │       │         │                        ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0085000::invoke@47
              │││ │       │         │                        ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0087800::tableSwitch@147
              │││ │       │         │                        ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008b000::delegate@14
              │││ │       │         │                        ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008a400::invoke@114
              │││ │       │         │                        ││││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008ac00::linkToTargetMethod@6
              │││ │       │         │                        ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.01%      │││ │       │         │                        ││││││  0x00007fa47319fd0d:   mov    $0x1,%r8d
   0.00%      │││ │       │         │                        ╰│││││  0x00007fa47319fd13:   jmp    0x00007fa47319f97b           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
              │││ │       │         │                         │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0087800::tableSwitch@331
              │││ │       │         │                         │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008b000::delegate@14
              │││ │       │         │                         │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008a400::invoke@114
              │││ │       │         │                         │││││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008ac00::linkToTargetMethod@6
              │││ │       │         │                         │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.34%      │││ │       │         ↘                         │││││  0x00007fa47319fd18:   shl    %r11d                        ;*imul {reexecute=0 rethrow=0 return_oop=0}
              │││ │       │                                   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@270 (line 253)
   0.14%      │││ │       │                                   │││││  0x00007fa47319fd1b:   mov    %r11d,%r10d
              │││ │       │                                   │││││  0x00007fa47319fd1e:   xchg   %ax,%ax
   0.00%      │││ │       │                                   ╰││││  0x00007fa47319fd20:   jmp    0x00007fa47319f840           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
              │││ │       │                                    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@487 (line 246)
   2.35%      ↘││ │       │                                    ││││  0x00007fa47319fd25:   mov    $0x8,%r11d
   1.46%       ││ │       │                                    ╰│││  0x00007fa47319fd2b:   jmp    0x00007fa47319f792           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
               ││ │       │                                     │││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0084800::guard@92
               ││ │       │                                     │││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
               ││ │       │                                     │││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0084800::guard@89
               ││ │       │                                     │││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
               ││ │       │                                     │││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0084800::guard@89
               ││ │       │                                     │││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
               ││ │       │                                     │││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0085000::invoke@91
               ││ │       │                                     │││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0087800::tableSwitch@135
               ││ │       │                                     │││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008b000::delegate@14
               ││ │       │                                     │││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008a400::invoke@114
               ││ │       │                                     │││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008ac00::linkToTargetMethod@6
               ││ │       │                                     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   1.84%       ↘│ │       │                                     │││  0x00007fa47319fd30:   mov    $0xa,%r11d
   1.29%        │ │       │                                     ╰││  0x00007fa47319fd36:   jmp    0x00007fa47319f792           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │ │       │                                      ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0084800::guard@92
                │ │       │                                      ││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                │ │       │                                      ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0084800::guard@89
                │ │       │                                      ││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                │ │       │                                      ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0084800::guard@89
                │ │       │                                      ││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                │ │       │                                      ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0084800::guard@89
                │ │       │                                      ││                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                │ │       │                                      ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0085000::invoke@91
                │ │       │                                      ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0087800::tableSwitch@135
                │ │       │                                      ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008b000::delegate@14
                │ │       │                                      ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008a400::invoke@114
                │ │       │                                      ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008ac00::linkToTargetMethod@6
                │ │       │                                      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   1.19%        ↘ │       │                                      ││  0x00007fa47319fd3b:   mov    $0xc,%r11d
   0.82%          │       │                                      ╰│  0x00007fa47319fd41:   jmp    0x00007fa47319f792           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                  │       │                                       │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0084800::guard@92
                  │       │                                       │                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                  │       │                                       │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0084800::guard@89
                  │       │                                       │                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                  │       │                                       │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0084800::guard@89
                  │       │                                       │                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                  │       │                                       │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0084800::guard@89
                  │       │                                       │                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                  │       │                                       │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0084800::guard@89
                  │       │                                       │                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                  │       │                                       │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0085000::invoke@91
                  │       │                                       │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f0087800::tableSwitch@135
                  │       │                                       │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008b000::delegate@14
                  │       │                                       │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008a400::invoke@114
                  │       │                                       │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007fa3f008ac00::linkToTargetMethod@6
                  │       │                                       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.01%          │       ↘                                       │  0x00007fa47319fd46:   shl    $0x3,%r8                     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                  │                                               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@440 (line 261)
                  │                                               │  0x00007fa47319fd4a:   mov    %r8,%rsi                     ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                  │                                               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@463 (line 261)
                  │                                               │  0x00007fa47319fd4d:   xchg   %ax,%ax
   0.01%          │                                               │  0x00007fa47319fd4f:   call   0x00007fa472af9380           ; ImmutableOopMap {}
                  │                                               │                                                            ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                  │                                               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@463 (line 261)
                  │                                               │                                                            ;   {optimized virtual_call}
   0.07%          │                                               │  0x00007fa47319fd54:   nopl   0x50008c4(%rax,%rax,1)       ;   {other}
                  │                                               │  0x00007fa47319fd5c:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                  │                                               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@466 (line 261)
                  │                                               │  0x00007fa47319fd5e:   mov    %eax,%r10d
                  │                                               ╰  0x00007fa47319fd61:   jmp    0x00007fa47319f840           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                  │                                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@487 (line 246)
                  ↘                                                  0x00007fa47319fd66:   vucomisd %xmm0,%xmm0
                                                                     0x00007fa47319fd6a:   jp     0x00007fa47319fdc7
....................................................................................................
  85.74%  <total for region 1>

....[Hottest Regions]...............................................................................
  85.74%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod, version 4, compile id 1237 
   9.74%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array, version 4, compile id 1239 
   0.28%     [kernel.kallsyms]  native_read_msr 
   0.28%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.27%     [kernel.kallsyms]  __free_one_page 
   0.25%     [kernel.kallsyms]  __mod_lruvec_state 
   0.24%     [kernel.kallsyms]  release_pages 
   0.19%     [kernel.kallsyms]  zap_pte_range 
   0.18%     [kernel.kallsyms]  page_remove_rmap 
   0.13%     [kernel.kallsyms]  free_unref_page_list 
   0.13%     [kernel.kallsyms]  obj_cgroup_uncharge_pages 
   0.12%     [kernel.kallsyms]  __mod_node_page_state 
   0.11%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.10%     [kernel.kallsyms]  __rcu_read_unlock 
   0.09%     [kernel.kallsyms]  lock_page_memcg 
   0.08%        jvmci, level 4  java.lang.String::length, version 2, compile id 558 
   0.08%     [kernel.kallsyms]  __rcu_read_lock 
   0.08%     [kernel.kallsyms]  __mod_zone_page_state 
   0.07%     [kernel.kallsyms]  free_unref_page_commit 
   0.07%     [kernel.kallsyms]  asm_exc_page_fault 
   1.75%  <...other 385 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  85.74%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod, version 4, compile id 1237 
   9.74%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array, version 4, compile id 1239 
   0.38%                        <unknown> 
   0.28%     [kernel.kallsyms]  native_read_msr 
   0.28%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.27%     [kernel.kallsyms]  __free_one_page 
   0.25%     [kernel.kallsyms]  __mod_lruvec_state 
   0.24%     [kernel.kallsyms]  release_pages 
   0.19%     [kernel.kallsyms]  zap_pte_range 
   0.18%     [kernel.kallsyms]  page_remove_rmap 
   0.13%     [kernel.kallsyms]  free_unref_page_list 
   0.13%     [kernel.kallsyms]  obj_cgroup_uncharge_pages 
   0.12%     [kernel.kallsyms]  __mod_node_page_state 
   0.11%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.10%     [kernel.kallsyms]  __rcu_read_unlock 
   0.09%     [kernel.kallsyms]  lock_page_memcg 
   0.08%        jvmci, level 4  java.lang.String::length, version 2, compile id 558 
   0.08%     [kernel.kallsyms]  __mod_zone_page_state 
   0.08%     [kernel.kallsyms]  __rcu_read_lock 
   0.07%     [kernel.kallsyms]  free_unref_page_commit 
   1.44%  <...other 251 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.56%        jvmci, level 4
   3.61%     [kernel.kallsyms]
   0.38%                      
   0.24%             libjvm.so
   0.12%             libc.so.6
   0.05%           interpreter
   0.02%        hsdis-amd64.so
   0.01%  ld-linux-x86-64.so.2
   0.00%        perf-11602.map
   0.00%           c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:18:57

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

Benchmark                                              Mode  Cnt   Score   Error  Units
TypeSwitchBenchmark.if_instanceof_concrete_array       avgt    5   3.862 ± 0.894  ns/op
TypeSwitchBenchmark.if_instanceof_concrete_array:asm   avgt          NaN            ---
TypeSwitchBenchmark.if_instanceof_interface_array      avgt    5  39.858 ± 2.511  ns/op
TypeSwitchBenchmark.if_instanceof_interface_array:asm  avgt          NaN            ---
TypeSwitchBenchmark.switch_concrete_array              avgt    5   3.867 ± 0.052  ns/op
TypeSwitchBenchmark.switch_concrete_array:asm          avgt          NaN            ---
TypeSwitchBenchmark.switch_if_concrete_array           avgt    5   4.263 ± 0.472  ns/op
TypeSwitchBenchmark.switch_if_concrete_array:asm       avgt          NaN            ---
TypeSwitchBenchmark.switch_if_interface_array          avgt    5  49.890 ± 0.416  ns/op
TypeSwitchBenchmark.switch_if_interface_array:asm      avgt          NaN            ---
TypeSwitchBenchmark.switch_interface_array             avgt    5  47.816 ± 0.725  ns/op
TypeSwitchBenchmark.switch_interface_array:asm         avgt          NaN            ---
TypeSwitchBenchmark.switch_when_concrete_array         avgt    5  11.231 ± 0.115  ns/op
TypeSwitchBenchmark.switch_when_concrete_array:asm     avgt          NaN            ---
TypeSwitchBenchmark.switch_when_interface_array        avgt    5  66.541 ± 4.373  ns/op
TypeSwitchBenchmark.switch_when_interface_array:asm    avgt          NaN            ---
