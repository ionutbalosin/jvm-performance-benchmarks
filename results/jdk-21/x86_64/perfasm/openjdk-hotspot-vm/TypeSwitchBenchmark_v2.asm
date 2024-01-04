# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /usr/lib/jvm/openjdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
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
# Warmup Iteration   1: 3.286 ns/op
# Warmup Iteration   2: 3.732 ns/op
# Warmup Iteration   3: 3.769 ns/op
# Warmup Iteration   4: 3.737 ns/op
# Warmup Iteration   5: 3.738 ns/op
Iteration   1: 3.736 ns/op
Iteration   2: 3.765 ns/op
Iteration   3: 3.475 ns/op
Iteration   4: 3.099 ns/op
Iteration   5: 3.129 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.if_instanceof_concrete_array":
  3.441 ±(99.9%) 1.229 ns/op [Average]
  (min, avg, max) = (3.099, 3.441, 3.765), stdev = 0.319
  CI (99.9%): [2.212, 4.670] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.if_instanceof_concrete_array:asm":
PrintAssembly processed: 134670 total address lines.
Perf output processed (skipped 73.606 seconds):
 Column 1: cycles (48339 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array, version 3, compile id 687 

                             #           [sp+0x30]  (sp of caller)
                             0x00007fd3b84fe520:   mov    0x8(%rsi),%r10d
                             0x00007fd3b84fe524:   movabs $0x7fd337000000,%r11
                             0x00007fd3b84fe52e:   add    %r11,%r10
                             0x00007fd3b84fe531:   cmp    %r10,%rax
                             0x00007fd3b84fe534:   jne    0x00007fd3b7f85080           ;   {runtime_call ic_miss_stub}
                             0x00007fd3b84fe53a:   xchg   %ax,%ax
                             0x00007fd3b84fe53c:   nopl   0x0(%rax)
                           [Verified Entry Point]
                             0x00007fd3b84fe540:   mov    %eax,-0x14000(%rsp)
   0.00%                     0x00007fd3b84fe547:   push   %rbp
                             0x00007fd3b84fe548:   sub    $0x20,%rsp
                             0x00007fd3b84fe54c:   cmpl   $0x1,0x20(%r15)
                             0x00007fd3b84fe554:   jne    0x00007fd3b84fe6e7           ;*synchronization entry
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@-1 (line 88)
                             0x00007fd3b84fe55a:   mov    0x14(%rsi),%ebp              ;*getfield asIsArray {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@3 (line 89)
                             0x00007fd3b84fe55d:   data16 xchg %ax,%ax
                             0x00007fd3b84fe560:   mov    0xc(%r12,%rbp,8),%ebx        ; implicit exception: dispatches to 0x00007fd3b84fe6b4
                                                                                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@8 (line 89)
   0.02%                     0x00007fd3b84fe565:   xor    %eax,%eax
                             0x00007fd3b84fe567:   test   %ebx,%ebx
          ╭                  0x00007fd3b84fe569:   jbe    0x00007fd3b84fe68a           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@16 (line 89)
          │                  0x00007fd3b84fe56f:   mov    %ebx,%r10d
          │                  0x00007fd3b84fe572:   dec    %r10d
          │                  0x00007fd3b84fe575:   cmp    %ebx,%r10d
          │╭                 0x00007fd3b84fe578:   jae    0x00007fd3b84fe69d
          ││                 0x00007fd3b84fe57e:   mov    0x10(%r12,%rbp,8),%r11d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@22 (line 89)
          ││                 0x00007fd3b84fe583:   mov    0xc(%r12,%r11,8),%r10d       ; implicit exception: dispatches to 0x00007fd3b84fe6c8
          ││                                                                           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@11 (line 268)
          ││                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@28 (line 90)
   0.02%  ││                 0x00007fd3b84fe588:   lea    (%r12,%rbp,8),%r9            ;*getfield asIsArray {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@3 (line 89)
          ││                 0x00007fd3b84fe58c:   lea    -0x3(%rbx),%edi
          ││                 0x00007fd3b84fe58f:   mov    $0x1,%edx
          ││                 0x00007fd3b84fe594:   cmp    $0x1,%edi
          ││╭                0x00007fd3b84fe597:   jle    0x00007fd3b84fe668
          │││                0x00007fd3b84fe59d:   mov    $0xfa0,%r13d                 ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@36 (line 89)
          │││╭               0x00007fd3b84fe5a3:   jmp    0x00007fd3b84fe61d
          ││││               0x00007fd3b84fe5a8:   nopl   0x0(%rax,%rax,1)
   1.06%  ││││    ↗          0x00007fd3b84fe5b0:   mov    %ecx,%r10d                   ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││││    │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@19 (line 89)
   1.78%  ││││    │ ↗        0x00007fd3b84fe5b3:   mov    0x10(%r9,%rdx,4),%r8d        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││││    │ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@22 (line 89)
   3.88%  ││││    │ │        0x00007fd3b84fe5b8:   mov    %r10d,%ecx
   0.67%  ││││    │ │        0x00007fd3b84fe5bb:   nopl   0x0(%rax,%rax,1)
   0.97%  ││││╭   │ │        0x00007fd3b84fe5c0:   add    0xc(%r12,%r8,8),%ecx         ; implicit exception: dispatches to 0x00007fd3b84fe642
          │││││   │ │                                                                  ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││   │ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@31 (line 90)
  18.42%  │││││   │ │        0x00007fd3b84fe5c5:   mov    0x14(%r9,%rdx,4),%r11d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││││   │ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@22 (line 89)
   2.93%  │││││   │ │        0x00007fd3b84fe5ca:   test   %r11d,%r11d
          │││││╭  │ │        0x00007fd3b84fe5cd:   je     0x00007fd3b84fe63d           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
          ││││││  │ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@1 (line 267)
          ││││││  │ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@28 (line 90)
   0.62%  ││││││  │ │        0x00007fd3b84fe5d3:   mov    0x18(%r9,%rdx,4),%r8d        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││││││  │ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@22 (line 89)
   0.97%  ││││││  │ │        0x00007fd3b84fe5d8:   add    0xc(%r12,%r11,8),%ecx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││  │ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@31 (line 90)
  19.18%  ││││││  │ │        0x00007fd3b84fe5dd:   data16 xchg %ax,%ax
   2.35%  ││││││  │ │        0x00007fd3b84fe5e0:   test   %r8d,%r8d
          ││││││╭ │ │        0x00007fd3b84fe5e3:   je     0x00007fd3b84fe647           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
          │││││││ │ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@1 (line 267)
          │││││││ │ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@28 (line 90)
   0.54%  │││││││ │ │        0x00007fd3b84fe5e9:   mov    0x1c(%r9,%rdx,4),%r10d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││││││ │ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@22 (line 89)
   1.45%  │││││││ │ │        0x00007fd3b84fe5ee:   add    0xc(%r12,%r8,8),%ecx         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││ │ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@31 (line 90)
  17.84%  │││││││ │ │        0x00007fd3b84fe5f3:   test   %r10d,%r10d
          │││││││╭│ │        0x00007fd3b84fe5f6:   je     0x00007fd3b84fe63a           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
          │││││││││ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@1 (line 267)
          │││││││││ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@28 (line 90)
   2.07%  │││││││││ │        0x00007fd3b84fe5fc:   add    0xc(%r12,%r10,8),%ecx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││││ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@31 (line 90)
  19.81%  │││││││││ │        0x00007fd3b84fe601:   add    $0x4,%edx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││││││││ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@33 (line 89)
   0.68%  │││││││││ │        0x00007fd3b84fe604:   cmp    %esi,%edx
          ││││││││╰ │        0x00007fd3b84fe606:   jl     0x00007fd3b84fe5b0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││││││││  │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@16 (line 89)
   0.00%  ││││││││  │        0x00007fd3b84fe608:   mov    0x458(%r15),%r10             ; ImmutableOopMap {r9=Oop rbp=NarrowOop }
          ││││││││  │                                                                  ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││││││││  │                                                                  ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@36 (line 89)
   0.02%  ││││││││  │        0x00007fd3b84fe60f:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││││││││  │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@36 (line 89)
          ││││││││  │                                                                  ;   {poll}
   0.05%  ││││││││  │        0x00007fd3b84fe612:   cmp    %edi,%edx
          ││││││││ ╭│        0x00007fd3b84fe614:   jge    0x00007fd3b84fe66b
          ││││││││ ││        0x00007fd3b84fe61a:   mov    %ecx,%r10d                   ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││││││││ ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@19 (line 89)
   0.00%  │││↘││││ ││        0x00007fd3b84fe61d:   mov    %ebx,%esi
          │││ ││││ ││        0x00007fd3b84fe61f:   sub    %edx,%esi
   0.00%  │││ ││││ ││        0x00007fd3b84fe621:   add    $0xfffffffd,%esi
          │││ ││││ ││        0x00007fd3b84fe624:   cmp    %edx,%edi
   0.00%  │││ ││││ ││        0x00007fd3b84fe626:   cmovl  %eax,%esi
          │││ ││││ ││        0x00007fd3b84fe629:   cmp    $0xfa0,%esi
   0.01%  │││ ││││ ││        0x00007fd3b84fe62f:   cmova  %r13d,%esi
          │││ ││││ ││        0x00007fd3b84fe633:   add    %edx,%esi
   0.00%  │││ ││││ │╰        0x00007fd3b84fe635:   jmp    0x00007fd3b84fe5b3
          │││ │││↘ │         0x00007fd3b84fe63a:   add    $0x2,%edx
          │││ │↘│  │         0x00007fd3b84fe63d:   inc    %edx
          │││ │ │  │         0x00007fd3b84fe63f:   nop
          │││ │ │  │ ╭       0x00007fd3b84fe640:   jmp    0x00007fd3b84fe64a
          │││ ↘ │  │ │       0x00007fd3b84fe642:   mov    %r10d,%ecx
          │││   │  │ │╭      0x00007fd3b84fe645:   jmp    0x00007fd3b84fe64a
          │││   ↘  │ ││      0x00007fd3b84fe647:   add    $0x2,%edx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││      │ ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@33 (line 89)
          │││      │ ↘↘ ↗    0x00007fd3b84fe64a:   mov    $0xfffffff4,%esi
          │││      │    │    0x00007fd3b84fe64f:   mov    %ebx,(%rsp)
          │││      │    │    0x00007fd3b84fe652:   mov    %edx,0x4(%rsp)
          │││      │    │    0x00007fd3b84fe656:   mov    %ecx,0x8(%rsp)
          │││      │    │    0x00007fd3b84fe65a:   nop
          │││      │    │    0x00007fd3b84fe65b:   call   0x00007fd3b7f8af00           ; ImmutableOopMap {rbp=NarrowOop }
          │││      │    │                                                              ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
          │││      │    │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@1 (line 267)
          │││      │    │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@28 (line 90)
          │││      │    │                                                              ;   {runtime_call UncommonTrapBlob}
          │││      │    │    0x00007fd3b84fe660:   nopl   0x10002d0(%rax,%rax,1)       ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
          │││      │    │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@1 (line 267)
          │││      │    │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@28 (line 90)
          │││      │    │                                                              ;   {other}
          ││↘      │    │    0x00007fd3b84fe668:   mov    %r10d,%ecx
          ││       ↘    │    0x00007fd3b84fe66b:   cmp    %ebx,%edx
          ││           ╭│    0x00007fd3b84fe66d:   jge    0x00007fd3b84fe688
          ││           ││    0x00007fd3b84fe66f:   nop                                 ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││           ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@19 (line 89)
          ││           ││ ↗  0x00007fd3b84fe670:   mov    0x10(%r9,%rdx,4),%r10d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││           ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@22 (line 89)
   0.00%  ││           ││ │  0x00007fd3b84fe675:   mov    %ecx,%eax
          ││           │╰ │  0x00007fd3b84fe677:   add    0xc(%r12,%r10,8),%eax        ; implicit exception: dispatches to 0x00007fd3b84fe64a
          ││           │  │                                                            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││           │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@31 (line 90)
   0.00%  ││           │  │  0x00007fd3b84fe67c:   inc    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││           │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@33 (line 89)
          ││           │  │  0x00007fd3b84fe67e:   xchg   %ax,%ax
          ││           │  │  0x00007fd3b84fe680:   cmp    %ebx,%edx
          ││           │ ╭│  0x00007fd3b84fe682:   jge    0x00007fd3b84fe68a
          ││           │ ││  0x00007fd3b84fe684:   mov    %eax,%ecx
          ││           │ │╰  0x00007fd3b84fe686:   jmp    0x00007fd3b84fe670
          ││           ↘ │   0x00007fd3b84fe688:   mov    %ecx,%eax                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@16 (line 89)
          ↘│             ↘   0x00007fd3b84fe68a:   add    $0x20,%rsp
           │                 0x00007fd3b84fe68e:   pop    %rbp
   0.02%   │                 0x00007fd3b84fe68f:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │                 0x00007fd3b84fe696:   ja     0x00007fd3b84fe6d1
           │                 0x00007fd3b84fe69c:   ret    
           ↘                 0x00007fd3b84fe69d:   mov    $0xffffff76,%esi
                             0x00007fd3b84fe6a2:   mov    %ebx,0x4(%rsp)
                             0x00007fd3b84fe6a6:   nop
                             0x00007fd3b84fe6a7:   call   0x00007fd3b7f8af00           ; ImmutableOopMap {rbp=NarrowOop }
                                                                                       ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@16 (line 89)
                                                                                       ;   {runtime_call UncommonTrapBlob}
                             0x00007fd3b84fe6ac:   nopl   0x200031c(%rax,%rax,1)       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  95.38%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.38%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array, version 3, compile id 687 
   0.66%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.31%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.21%     [kernel.kallsyms]  __free_one_page 
   0.17%     [kernel.kallsyms]  refill_obj_stock 
   0.17%     [kernel.kallsyms]  release_pages 
   0.15%     [kernel.kallsyms]  page_remove_rmap 
   0.12%     [kernel.kallsyms]  zap_pte_range 
   0.10%     [kernel.kallsyms]  __mod_node_page_state 
   0.10%     [kernel.kallsyms]  memcg_account_kmem 
   0.09%     [kernel.kallsyms]  free_unref_page_list 
   0.09%     [kernel.kallsyms]  native_read_msr 
   0.08%     [kernel.kallsyms]  __mod_zone_page_state 
   0.08%     [kernel.kallsyms]  lock_page_memcg 
   0.07%     [kernel.kallsyms]  __rcu_read_unlock 
   0.06%     [kernel.kallsyms]  folio_lruvec_lock_irqsave 
   0.06%             libjvm.so  ElfSymbolTable::lookup 
   0.05%     [kernel.kallsyms]  pipe_write 
   0.05%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.05%     [kernel.kallsyms]  __rcu_read_lock 
   1.95%  <...other 281 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.38%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array, version 3, compile id 687 
   0.66%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.31%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.21%     [kernel.kallsyms]  __free_one_page 
   0.17%     [kernel.kallsyms]  refill_obj_stock 
   0.17%     [kernel.kallsyms]  release_pages 
   0.15%     [kernel.kallsyms]  page_remove_rmap 
   0.12%     [kernel.kallsyms]  zap_pte_range 
   0.10%     [kernel.kallsyms]  __mod_node_page_state 
   0.10%     [kernel.kallsyms]  memcg_account_kmem 
   0.09%     [kernel.kallsyms]  free_unref_page_list 
   0.09%     [kernel.kallsyms]  native_read_msr 
   0.08%     [kernel.kallsyms]  __mod_zone_page_state 
   0.08%     [kernel.kallsyms]  lock_page_memcg 
   0.07%     [kernel.kallsyms]  __rcu_read_unlock 
   0.06%     [kernel.kallsyms]  folio_lruvec_lock_irqsave 
   0.06%             libjvm.so  ElfSymbolTable::lookup 
   0.05%     [kernel.kallsyms]  pipe_write 
   0.05%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.05%     [kernel.kallsyms]  folio_memcg_lock.part.0 
   1.95%  <...other 273 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.40%           c2, level 4
   3.95%     [kernel.kallsyms]
   0.36%             libjvm.so
   0.19%             libc.so.6
   0.04%           interpreter
   0.03%        hsdis-amd64.so
   0.01%  ld-linux-x86-64.so.2
   0.01%                      
   0.01%           c1, level 3
   0.00%            libjava.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /usr/lib/jvm/openjdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.if_instanceof_interface_array

# Run progress: 12.50% complete, ETA 00:15:31
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 38.445 ns/op
# Warmup Iteration   2: 36.536 ns/op
# Warmup Iteration   3: 36.823 ns/op
# Warmup Iteration   4: 36.814 ns/op
# Warmup Iteration   5: 36.554 ns/op
Iteration   1: 36.821 ns/op
Iteration   2: 36.793 ns/op
Iteration   3: 36.626 ns/op
Iteration   4: 36.487 ns/op
Iteration   5: 38.249 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.if_instanceof_interface_array":
  36.995 ±(99.9%) 2.748 ns/op [Average]
  (min, avg, max) = (36.487, 36.995, 38.249), stdev = 0.714
  CI (99.9%): [34.247, 39.743] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.if_instanceof_interface_array:asm":
PrintAssembly processed: 131273 total address lines.
Perf output processed (skipped 69.848 seconds):
 Column 1: cycles (50038 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array, version 3, compile id 691 

                                0x00007fb6604fe068:   sub    $0x30,%rsp
                                0x00007fb6604fe06c:   cmpl   $0x1,0x20(%r15)
                                0x00007fb6604fe074:   jne    0x00007fb6604fe2e8           ;*synchronization entry
                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@-1 (line 77)
                                0x00007fb6604fe07a:   mov    0x10(%rsi),%ebp              ;*getfield interfaceArray {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@3 (line 78)
                                0x00007fb6604fe07d:   data16 xchg %ax,%ax
                                0x00007fb6604fe080:   mov    0xc(%r12,%rbp,8),%r9d        ; implicit exception: dispatches to 0x00007fb6604fe26c
                                                                                          ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@8 (line 78)
   0.00%                        0x00007fb6604fe085:   xor    %edx,%edx
                                0x00007fb6604fe087:   test   %r9d,%r9d
          ╭                     0x00007fb6604fe08a:   jbe    0x00007fb6604fe1fa           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@16 (line 78)
          │                     0x00007fb6604fe090:   mov    %r9d,%r10d
          │                     0x00007fb6604fe093:   dec    %r10d
          │                     0x00007fb6604fe096:   cmp    %r9d,%r10d
          │╭                    0x00007fb6604fe099:   jae    0x00007fb6604fe20f
          ││                    0x00007fb6604fe09f:   lea    (%r12,%rbp,8),%rsi           ;*getfield interfaceArray {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@3 (line 78)
          ││                    0x00007fb6604fe0a3:   mov    $0x3e8,%ebx                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@36 (line 78)
          ││                    0x00007fb6604fe0a8:   xor    %r8d,%r8d
          ││                    0x00007fb6604fe0ab:   xor    %eax,%eax
          ││╭                   0x00007fb6604fe0ad:   jmp    0x00007fb6604fe0c6
   0.04%  │││  ↗                0x00007fb6604fe0af:   mov    0x458(%r15),%r10             ; ImmutableOopMap {rsi=Oop rbp=NarrowOop }
          │││  │                                                                          ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │││  │                                                                          ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@36 (line 78)
   0.04%  │││  │                0x00007fb6604fe0b6:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││  │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@36 (line 78)
          │││  │                                                                          ;   {poll}
   0.04%  │││  │                0x00007fb6604fe0b9:   cmp    %r9d,%r8d
          │││  │                0x00007fb6604fe0bc:   nopl   0x0(%rax)
          │││╭ │                0x00007fb6604fe0c0:   jge    0x00007fb6604fe1fc           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││││ │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@19 (line 78)
          ││↘│ │                0x00007fb6604fe0c6:   mov    %r9d,%edi
   0.00%  ││ │ │                0x00007fb6604fe0c9:   sub    %r8d,%edi
          ││ │ │                0x00007fb6604fe0cc:   cmp    %r8d,%r9d
          ││ │ │                0x00007fb6604fe0cf:   cmovl  %edx,%edi
          ││ │ │                0x00007fb6604fe0d2:   cmp    $0x3e8,%edi
          ││ │ │                0x00007fb6604fe0d8:   cmova  %ebx,%edi
          ││ │ │                0x00007fb6604fe0db:   add    %r8d,%edi
          ││ │ │                0x00007fb6604fe0de:   xchg   %ax,%ax
          ││ │╭│                0x00007fb6604fe0e0:   jmp    0x00007fb6604fe0f1           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││ │││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@8 (line 268)
          ││ │││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.91%  ││ │││↗               0x00007fb6604fe0e2:   mov    0xc(%r10),%r10d              ;*invokestatic if_instanceof {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.50%  ││ ││││ ↗ ↗ ↗ ↗ ↗ ↗↗  0x00007fb6604fe0e6:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@31 (line 79)
   2.28%  ││ ││││ │ │ │ │ │ ││  0x00007fb6604fe0e9:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@33 (line 78)
   0.57%  ││ ││││ │ │ │ │ │ ││  0x00007fb6604fe0ec:   cmp    %edi,%r8d
          ││ ││╰│ │ │ │ │ │ ││  0x00007fb6604fe0ef:   jge    0x00007fb6604fe0af           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││ ││ │ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@19 (line 78)
   0.03%  ││ │↘ │ │ │ │ │ │ ││  0x00007fb6604fe0f1:   mov    0x10(%rsi,%r8,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││ │  │ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@22 (line 78)
   2.44%  ││ │  │ │ │ │ │ │ ││  0x00007fb6604fe0f6:   data16 nopw 0x0(%rax,%rax,1)
   0.68%  ││ │  │ │ │ │ │ │ ││  0x00007fb6604fe100:   mov    0x8(%r12,%rcx,8),%r11d       ; implicit exception: dispatches to 0x00007fb6604fe24c
          ││ │  │ │ │ │ │ │ ││                                                            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││ │  │ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@8 (line 268)
          ││ │  │ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
  11.48%  ││ │  │ │ │ │ │ │ ││  0x00007fb6604fe105:   lea    (%r12,%rcx,8),%r10
   0.05%  ││ │  │ │ │ │ │ │ ││  0x00007fb6604fe109:   cmp    $0x102db98,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
          ││ │  ╰ │ │ │ │ │ ││  0x00007fb6604fe110:   je     0x00007fb6604fe0e2
   2.78%  ││ │    │ │ │ │ │ ││  0x00007fb6604fe112:   data16 nopw 0x0(%rax,%rax,1)
   0.32%  ││ │    │ │ │ │ │ ││  0x00007fb6604fe11c:   data16 data16 xchg %ax,%ax
   0.02%  ││ │    │ │ │ │ │ ││  0x00007fb6604fe120:   cmp    $0x102eb90,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
          ││ │   ╭│ │ │ │ │ ││  0x00007fb6604fe127:   jne    0x00007fb6604fe132           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││ │   ││ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@23 (line 270)
          ││ │   ││ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.59%  ││ │   ││ │ │ │ │ ││  0x00007fb6604fe129:   mov    0x10(%r10),%r10
   3.35%  ││ │   ││ │ │ │ │ ││  0x00007fb6604fe12d:   mov    %r10d,%r10d                  ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          ││ │   ││ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@29 (line 270)
          ││ │   ││ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   0.39%  ││ │   │╰ │ │ │ │ ││  0x00007fb6604fe130:   jmp    0x00007fb6604fe0e6
   3.94%  ││ │   ↘  │ │ │ │ ││  0x00007fb6604fe132:   data16 nopw 0x0(%rax,%rax,1)
   0.47%  ││ │      │ │ │ │ ││  0x00007fb6604fe13c:   data16 data16 xchg %ax,%ax
   0.19%  ││ │      │ │ │ │ ││  0x00007fb6604fe140:   cmp    $0x102df88,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
          ││ │     ╭│ │ │ │ ││  0x00007fb6604fe147:   jne    0x00007fb6604fe150           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││ │     ││ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@39 (line 272)
          ││ │     ││ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.67%  ││ │     ││ │ │ │ ││  0x00007fb6604fe149:   movswl 0xc(%r10),%r10d              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││ │     ││ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@42 (line 272)
          ││ │     ││ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.36%  ││ │     │╰ │ │ │ ││  0x00007fb6604fe14e:   jmp    0x00007fb6604fe0e6
   2.11%  ││ │     ↘  │ │ │ ││  0x00007fb6604fe150:   cmp    $0x102e790,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
          ││ │       ╭│ │ │ ││  0x00007fb6604fe157:   jne    0x00007fb6604fe162           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││ │       ││ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@54 (line 274)
          ││ │       ││ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.30%  ││ │       ││ │ │ ││  0x00007fb6604fe159:   movsbl 0xc(%r10),%r10d              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││ │       ││ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@57 (line 274)
          ││ │       ││ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.15%  ││ │       ││ │ │ ││  0x00007fb6604fe15e:   xchg   %ax,%ax
   0.01%  ││ │       │╰ │ │ ││  0x00007fb6604fe160:   jmp    0x00007fb6604fe0e6
   3.33%  ││ │       ↘  │ │ ││  0x00007fb6604fe162:   cmp    $0x102e990,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
          ││ │         ╭│ │ ││  0x00007fb6604fe169:   jne    0x00007fb6604fe175           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││ │         ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@69 (line 276)
          ││ │         ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.23%  ││ │         ││ │ ││  0x00007fb6604fe16b:   movzwl 0xc(%r10),%r10d              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││ │         ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@72 (line 276)
          ││ │         ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.20%  ││ │         │╰ │ ││  0x00007fb6604fe170:   jmp    0x00007fb6604fe0e6
   2.30%  ││ │         ↘  │ ││  0x00007fb6604fe175:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.11%  ││ │            │ ││  0x00007fb6604fe180:   cmp    $0x102e590,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
          ││ │           ╭│ ││  0x00007fb6604fe187:   jne    0x00007fb6604fe1a5           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││ │           ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@84 (line 278)
          ││ │           ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   4.04%  ││ │           ││ ││  0x00007fb6604fe189:   vmovsd 0x10(%r10),%xmm0
   3.13%  ││ │           ││ ││  0x00007fb6604fe18f:   vcvttsd2si %xmm0,%r10d
   2.59%  ││ │           ││ ││  0x00007fb6604fe193:   cmp    $0x80000000,%r10d
          ││ │           ││ ││  0x00007fb6604fe19a:   je     0x00007fb6604fe2d3           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
          ││ │           ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@90 (line 278)
          ││ │           ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   0.01%  ││ │           │╰ ││  0x00007fb6604fe1a0:   jmp    0x00007fb6604fe0e6
   2.24%  ││ │           ↘  ││  0x00007fb6604fe1a5:   cmp    $0x102e390,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
          ││ │             ╭││  0x00007fb6604fe1ac:   jne    0x00007fb6604fe1ca           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││ │             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@100 (line 280)
          ││ │             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   2.71%  ││ │             │││  0x00007fb6604fe1ae:   vmovss 0xc(%r10),%xmm1
   1.92%  ││ │             │││  0x00007fb6604fe1b4:   vcvttss2si %xmm1,%r10d
   2.38%  ││ │             │││  0x00007fb6604fe1b8:   cmp    $0x80000000,%r10d
          ││ │             │││  0x00007fb6604fe1bf:   je     0x00007fb6604fe2be           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
          ││ │             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@106 (line 280)
          ││ │             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   0.01%  ││ │             │╰│  0x00007fb6604fe1c5:   jmp    0x00007fb6604fe0e6
   2.15%  ││ │             ↘ │  0x00007fb6604fe1ca:   cmp    $0x102e188,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
          ││ │               │  0x00007fb6604fe1d1:   jne    0x00007fb6604fe228           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
          ││ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@109 (line 281)
          ││ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   1.04%  ││ │               │  0x00007fb6604fe1d7:   mov    0xc(%r10),%r10d              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@119 (line 282)
          ││ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   1.14%  ││ │               │  0x00007fb6604fe1db:   nopl   0x0(%rax,%rax,1)
   0.01%  ││ │               │  0x00007fb6604fe1e0:   mov    0x14(%r12,%r10,8),%ecx       ; implicit exception: dispatches to 0x00007fb6604fe280
          ││ │               │                                                            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││ │               │                                                            ; - java.lang.String::length@1 (line 1519)
          ││ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@122 (line 282)
          ││ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   1.87%  ││ │               │  0x00007fb6604fe1e5:   mov    0xc(%r12,%rcx,8),%r11d       ; implicit exception: dispatches to 0x00007fb6604fe294
   1.69%  ││ │               │  0x00007fb6604fe1ea:   movsbl 0x10(%r12,%r10,8),%ecx
   0.01%  ││ │               │  0x00007fb6604fe1f0:   sarx   %ecx,%r11d,%r10d             ;*ishr {reexecute=0 rethrow=0 return_oop=0}
          ││ │               │                                                            ; - java.lang.String::length@9 (line 1519)
          ││ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@122 (line 282)
          ││ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   0.33%  ││ │               ╰  0x00007fb6604fe1f5:   jmp    0x00007fb6604fe0e6
          ↘│ │                  0x00007fb6604fe1fa:   xor    %eax,%eax                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@16 (line 78)
           │ ↘                  0x00007fb6604fe1fc:   add    $0x30,%rsp
           │                    0x00007fb6604fe200:   pop    %rbp
   0.00%   │                    0x00007fb6604fe201:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │                    0x00007fb6604fe208:   ja     0x00007fb6604fe2a8
           │                    0x00007fb6604fe20e:   ret    
           ↘                    0x00007fb6604fe20f:   mov    $0xffffff76,%esi
                                0x00007fb6604fe214:   mov    %r9d,0x4(%rsp)
                                0x00007fb6604fe219:   xchg   %ax,%ax
                                0x00007fb6604fe21b:   call   0x00007fb65ff8af00           ; ImmutableOopMap {rbp=NarrowOop }
                                                                                          ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                                          ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@16 (line 78)
                                                                                          ;   {runtime_call UncommonTrapBlob}
                                0x00007fb6604fe220:   nopl   0x1000390(%rax,%rax,1)       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  95.15%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.15%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array, version 3, compile id 691 
   0.54%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.35%     [kernel.kallsyms]  native_read_msr 
   0.32%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.21%     [kernel.kallsyms]  __free_one_page 
   0.20%     [kernel.kallsyms]  __mod_lruvec_state 
   0.19%     [kernel.kallsyms]  release_pages 
   0.16%     [kernel.kallsyms]  page_remove_rmap 
   0.15%     [kernel.kallsyms]  zap_pte_range 
   0.12%     [kernel.kallsyms]  free_unref_page_list 
   0.12%     [kernel.kallsyms]  __mod_zone_page_state 
   0.11%     [kernel.kallsyms]  __mod_node_page_state 
   0.11%     [kernel.kallsyms]  lock_page_memcg 
   0.11%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.10%     [kernel.kallsyms]  __intel_pmu_enable_all.constprop.0 
   0.07%     [kernel.kallsyms]  __rcu_read_unlock 
   0.07%             libjvm.so  ElfSymbolTable::lookup 
   0.05%     [kernel.kallsyms]  __rcu_read_lock 
   0.05%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.04%     [kernel.kallsyms]  free_swap_cache 
   1.75%  <...other 280 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.15%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array, version 3, compile id 691 
   0.54%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.35%     [kernel.kallsyms]  native_read_msr 
   0.32%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.21%     [kernel.kallsyms]  __free_one_page 
   0.20%     [kernel.kallsyms]  __mod_lruvec_state 
   0.19%     [kernel.kallsyms]  release_pages 
   0.16%     [kernel.kallsyms]  page_remove_rmap 
   0.15%     [kernel.kallsyms]  zap_pte_range 
   0.12%     [kernel.kallsyms]  free_unref_page_list 
   0.12%     [kernel.kallsyms]  __mod_zone_page_state 
   0.11%     [kernel.kallsyms]  __mod_node_page_state 
   0.11%     [kernel.kallsyms]  lock_page_memcg 
   0.11%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.10%     [kernel.kallsyms]  __intel_pmu_enable_all.constprop.0 
   0.07%     [kernel.kallsyms]  __rcu_read_unlock 
   0.07%             libjvm.so  ElfSymbolTable::lookup 
   0.05%     [kernel.kallsyms]  __rcu_read_lock 
   0.05%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.04%     [kernel.kallsyms]  free_swap_cache 
   1.75%  <...other 275 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.15%           c2, level 4
   4.17%     [kernel.kallsyms]
   0.38%             libjvm.so
   0.19%             libc.so.6
   0.06%           interpreter
   0.03%        hsdis-amd64.so
   0.01%  ld-linux-x86-64.so.2
   0.01%                      
   0.00%           c1, level 3
   0.00%        perf-10098.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /usr/lib/jvm/openjdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_concrete_array

# Run progress: 25.00% complete, ETA 00:13:02
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 4.607 ns/op
# Warmup Iteration   2: 3.726 ns/op
# Warmup Iteration   3: 3.141 ns/op
# Warmup Iteration   4: 3.124 ns/op
# Warmup Iteration   5: 3.102 ns/op
Iteration   1: 3.722 ns/op
Iteration   2: 3.714 ns/op
Iteration   3: 3.735 ns/op
Iteration   4: 3.739 ns/op
Iteration   5: 3.754 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_concrete_array":
  3.733 ±(99.9%) 0.060 ns/op [Average]
  (min, avg, max) = (3.714, 3.733, 3.754), stdev = 0.016
  CI (99.9%): [3.672, 3.793] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_concrete_array:asm":
PrintAssembly processed: 151106 total address lines.
Perf output processed (skipped 69.814 seconds):
 Column 1: cycles (50195 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array, version 4, compile id 803 

                             #           [sp+0x40]  (sp of caller)
                             0x00007fbfa8508520:   mov    0x8(%rsi),%r10d
                             0x00007fbfa8508524:   movabs $0x7fbf27000000,%r11
                             0x00007fbfa850852e:   add    %r11,%r10
                             0x00007fbfa8508531:   cmp    %r10,%rax
                             0x00007fbfa8508534:   jne    0x00007fbfa7f85080           ;   {runtime_call ic_miss_stub}
                             0x00007fbfa850853a:   xchg   %ax,%ax
                             0x00007fbfa850853c:   nopl   0x0(%rax)
                           [Verified Entry Point]
                             0x00007fbfa8508540:   mov    %eax,-0x14000(%rsp)
   0.00%                     0x00007fbfa8508547:   push   %rbp
                             0x00007fbfa8508548:   sub    $0x30,%rsp
                             0x00007fbfa850854c:   cmpl   $0x1,0x20(%r15)
   0.00%                     0x00007fbfa8508554:   jne    0x00007fbfa8508704           ;*synchronization entry
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@-1 (line 110)
                             0x00007fbfa850855a:   mov    0x14(%rsi),%ebp              ;*getfield asIsArray {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@3 (line 111)
   0.00%                     0x00007fbfa850855d:   data16 xchg %ax,%ax
                             0x00007fbfa8508560:   mov    0xc(%r12,%rbp,8),%ebx        ; implicit exception: dispatches to 0x00007fbfa85086d0
                                                                                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@8 (line 111)
   0.01%                     0x00007fbfa8508565:   xor    %eax,%eax
                             0x00007fbfa8508567:   test   %ebx,%ebx
          ╭                  0x00007fbfa8508569:   jbe    0x00007fbfa85086a4           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@16 (line 111)
          │                  0x00007fbfa850856f:   mov    %ebx,%r11d
          │                  0x00007fbfa8508572:   dec    %r11d
          │                  0x00007fbfa8508575:   cmp    %ebx,%r11d
          │╭                 0x00007fbfa8508578:   jae    0x00007fbfa85086b7
   0.00%  ││                 0x00007fbfa850857e:   mov    0x10(%r12,%rbp,8),%ecx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@22 (line 111)
          ││                 0x00007fbfa8508583:   mov    0xc(%r12,%rcx,8),%r11d       ; implicit exception: dispatches to 0x00007fbfa85086e4
          ││                                                                           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@80 (line 181)
          ││                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@28 (line 112)
   0.01%  ││                 0x00007fbfa8508588:   lea    (%r12,%rbp,8),%rdi           ;*getfield asIsArray {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@3 (line 111)
          ││                 0x00007fbfa850858c:   lea    -0x3(%rbx),%esi
          ││                 0x00007fbfa850858f:   mov    $0x1,%r10d
          ││                 0x00007fbfa8508595:   cmp    $0x1,%esi
          ││╭                0x00007fbfa8508598:   jle    0x00007fbfa8508680
          │││                0x00007fbfa850859e:   mov    $0xfa0,%r14d                 ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@36 (line 111)
          │││╭               0x00007fbfa85085a4:   jmp    0x00007fbfa850861f
          ││││               0x00007fbfa85085a9:   nopl   0x0(%rax)
   1.05%  ││││    ↗          0x00007fbfa85085b0:   mov    %edx,%r11d                   ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││││    │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@19 (line 111)
   1.63%  ││││    │ ↗        0x00007fbfa85085b3:   mov    0x10(%rdi,%r10,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││││    │ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@22 (line 111)
   3.23%  ││││    │ │        0x00007fbfa85085b8:   mov    %r11d,%edx
   0.74%  ││││    │ │        0x00007fbfa85085bb:   nopl   0x0(%rax,%rax,1)
   1.01%  ││││╭   │ │        0x00007fbfa85085c0:   add    0xc(%r12,%r9,8),%edx         ; implicit exception: dispatches to 0x00007fbfa8508645
          │││││   │ │                                                                  ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││   │ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@31 (line 112)
  18.96%  │││││   │ │        0x00007fbfa85085c5:   mov    0x14(%rdi,%r10,4),%ecx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││││   │ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@22 (line 111)
   2.51%  │││││   │ │        0x00007fbfa85085ca:   test   %ecx,%ecx
          │││││╭  │ │        0x00007fbfa85085cc:   je     0x00007fbfa8508657           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          ││││││  │ │                                                                  ; - java.util.Objects::requireNonNull@1 (line 232)
          ││││││  │ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@2 (line 180)
          ││││││  │ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@28 (line 112)
   0.75%  ││││││  │ │        0x00007fbfa85085d2:   mov    0x18(%rdi,%r10,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││││││  │ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@22 (line 111)
   0.89%  ││││││  │ │        0x00007fbfa85085d7:   add    0xc(%r12,%rcx,8),%edx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││  │ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@31 (line 112)
  19.71%  ││││││  │ │        0x00007fbfa85085dc:   nopl   0x0(%rax)
   2.13%  ││││││  │ │        0x00007fbfa85085e0:   test   %r9d,%r9d
          ││││││╭ │ │        0x00007fbfa85085e3:   je     0x00007fbfa850864a           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │││││││ │ │                                                                  ; - java.util.Objects::requireNonNull@1 (line 232)
          │││││││ │ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@2 (line 180)
          │││││││ │ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@28 (line 112)
   0.66%  │││││││ │ │        0x00007fbfa85085e9:   mov    0x1c(%rdi,%r10,4),%ecx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││││││ │ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@22 (line 111)
   1.44%  │││││││ │ │        0x00007fbfa85085ee:   add    0xc(%r12,%r9,8),%edx         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││ │ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@31 (line 112)
  17.89%  │││││││ │ │        0x00007fbfa85085f3:   test   %ecx,%ecx
          │││││││╭│ │        0x00007fbfa85085f5:   je     0x00007fbfa8508653           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │││││││││ │                                                                  ; - java.util.Objects::requireNonNull@1 (line 232)
          │││││││││ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@2 (line 180)
          │││││││││ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@28 (line 112)
   1.86%  │││││││││ │        0x00007fbfa85085fb:   add    0xc(%r12,%rcx,8),%edx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││││ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@31 (line 112)
  19.69%  │││││││││ │        0x00007fbfa8508600:   add    $0x4,%r10d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││││││││ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@33 (line 111)
   0.76%  │││││││││ │        0x00007fbfa8508604:   cmp    %r8d,%r10d
          ││││││││╰ │        0x00007fbfa8508607:   jl     0x00007fbfa85085b0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││││││││  │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@16 (line 111)
   0.00%  ││││││││  │        0x00007fbfa8508609:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rdi=Oop rbp=NarrowOop }
          ││││││││  │                                                                  ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││││││││  │                                                                  ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@36 (line 111)
   0.00%  ││││││││  │        0x00007fbfa8508610:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││││││││  │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@36 (line 111)
          ││││││││  │                                                                  ;   {poll}
   0.02%  ││││││││  │        0x00007fbfa8508613:   cmp    %esi,%r10d
          ││││││││ ╭│        0x00007fbfa8508616:   jge    0x00007fbfa8508683
          ││││││││ ││        0x00007fbfa850861c:   mov    %edx,%r11d                   ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││││││││ ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@19 (line 111)
          │││↘││││ ││        0x00007fbfa850861f:   mov    %ebx,%r8d
          │││ ││││ ││        0x00007fbfa8508622:   sub    %r10d,%r8d
   0.01%  │││ ││││ ││        0x00007fbfa8508625:   add    $0xfffffffd,%r8d
   0.00%  │││ ││││ ││        0x00007fbfa8508629:   cmp    %r10d,%esi
   0.00%  │││ ││││ ││        0x00007fbfa850862c:   cmovl  %eax,%r8d
          │││ ││││ ││        0x00007fbfa8508630:   cmp    $0xfa0,%r8d
   0.00%  │││ ││││ ││        0x00007fbfa8508637:   cmova  %r14d,%r8d
          │││ ││││ ││        0x00007fbfa850863b:   add    %r10d,%r8d
          │││ ││││ ││        0x00007fbfa850863e:   xchg   %ax,%ax
          │││ ││││ │╰        0x00007fbfa8508640:   jmp    0x00007fbfa85085b3
          │││ ↘│││ │         0x00007fbfa8508645:   mov    %r11d,%edx
          │││  │││ │ ╭       0x00007fbfa8508648:   jmp    0x00007fbfa850864e
          │││  │↘│ │ │       0x00007fbfa850864a:   add    $0x2,%r10d
          │││  │ │ │ ↘       0x00007fbfa850864e:   mov    %r9d,%ecx
          │││  │ │ │  ╭      0x00007fbfa8508651:   jmp    0x00007fbfa850865a
          │││  │ ↘ │  │      0x00007fbfa8508653:   add    $0x2,%r10d
          │││  ↘   │  │      0x00007fbfa8508657:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││      │  │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@33 (line 111)
          │││      │  ↘ ↗    0x00007fbfa850865a:   mov    $0xffffff45,%esi
          │││      │    │    0x00007fbfa850865f:   mov    %ebx,(%rsp)
          │││      │    │    0x00007fbfa8508662:   mov    %r10d,0x4(%rsp)
          │││      │    │    0x00007fbfa8508667:   mov    %edx,0x8(%rsp)
          │││      │    │    0x00007fbfa850866b:   mov    %ecx,0x10(%rsp)
          │││      │    │    0x00007fbfa850866f:   mov    %ecx,0x14(%rsp)
          │││      │    │    0x00007fbfa8508673:   call   0x00007fbfa7f8af00           ; ImmutableOopMap {rbp=NarrowOop [16]=NarrowOop [20]=NarrowOop }
          │││      │    │                                                              ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
          │││      │    │                                                              ; - (reexecute) java.util.Objects::requireNonNull@1 (line 232)
          │││      │    │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@2 (line 180)
          │││      │    │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@28 (line 112)
          │││      │    │                                                              ;   {runtime_call UncommonTrapBlob}
          │││      │    │    0x00007fbfa8508678:   nopl   0x10002e8(%rax,%rax,1)       ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │││      │    │                                                              ; - java.util.Objects::requireNonNull@1 (line 232)
          │││      │    │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@2 (line 180)
          │││      │    │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@28 (line 112)
          │││      │    │                                                              ;   {other}
          ││↘      │    │    0x00007fbfa8508680:   mov    %r11d,%edx
          ││       ↘    │    0x00007fbfa8508683:   cmp    %ebx,%r10d
          ││           ╭│    0x00007fbfa8508686:   jge    0x00007fbfa85086a2           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││           ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@19 (line 111)
          ││           ││ ↗  0x00007fbfa8508688:   mov    0x10(%rdi,%r10,4),%ecx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││           ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@22 (line 111)
   0.00%  ││           ││ │  0x00007fbfa850868d:   mov    %edx,%eax
   0.00%  ││           │╰ │  0x00007fbfa850868f:   add    0xc(%r12,%rcx,8),%eax        ; implicit exception: dispatches to 0x00007fbfa850865a
          ││           │  │                                                            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││           │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@31 (line 112)
          ││           │  │  0x00007fbfa8508694:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││           │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@33 (line 111)
          ││           │  │  0x00007fbfa8508697:   cmp    %ebx,%r10d
          ││           │ ╭│  0x00007fbfa850869a:   jge    0x00007fbfa85086a4
          ││           │ ││  0x00007fbfa850869c:   mov    %eax,%edx
          ││           │ ││  0x00007fbfa850869e:   xchg   %ax,%ax
   0.00%  ││           │ │╰  0x00007fbfa85086a0:   jmp    0x00007fbfa8508688
          ││           ↘ │   0x00007fbfa85086a2:   mov    %edx,%eax                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@16 (line 111)
          ↘│             ↘   0x00007fbfa85086a4:   add    $0x30,%rsp
           │                 0x00007fbfa85086a8:   pop    %rbp
   0.00%   │                 0x00007fbfa85086a9:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │                 0x00007fbfa85086b0:   ja     0x00007fbfa85086ee
           │                 0x00007fbfa85086b6:   ret    
           ↘                 0x00007fbfa85086b7:   mov    $0xffffff76,%esi
                             0x00007fbfa85086bc:   mov    %ebx,0x4(%rsp)
                             0x00007fbfa85086c0:   data16 xchg %ax,%ax
                             0x00007fbfa85086c3:   call   0x00007fbfa7f8af00           ; ImmutableOopMap {rbp=NarrowOop }
                                                                                       ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@16 (line 111)
                                                                                       ;   {runtime_call UncommonTrapBlob}
                             0x00007fbfa85086c8:   nopl   0x2000338(%rax,%rax,1)       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  94.99%  <total for region 1>

....[Hottest Regions]...............................................................................
  94.99%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array, version 4, compile id 803 
   0.74%     [kernel.kallsyms]  native_write_msr 
   0.59%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.32%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.22%     [kernel.kallsyms]  __free_one_page 
   0.19%     [kernel.kallsyms]  release_pages 
   0.17%     [kernel.kallsyms]  __mod_lruvec_state 
   0.14%     [kernel.kallsyms]  zap_pte_range 
   0.14%     [kernel.kallsyms]  page_remove_rmap 
   0.12%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.10%     [kernel.kallsyms]  free_unref_page_list 
   0.09%     [kernel.kallsyms]  lock_page_memcg 
   0.08%             libjvm.so  ElfSymbolTable::lookup 
   0.07%     [kernel.kallsyms]  __mod_zone_page_state 
   0.07%     [kernel.kallsyms]  __mod_node_page_state 
   0.07%     [kernel.kallsyms]  asm_sysvec_apic_timer_interrupt 
   0.07%     [kernel.kallsyms]  __rcu_read_unlock 
   0.06%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.06%     [kernel.kallsyms]  __rcu_read_lock 
   0.05%     [kernel.kallsyms]  vfs_write 
   1.67%  <...other 279 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  94.99%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array, version 4, compile id 803 
   0.74%     [kernel.kallsyms]  native_write_msr 
   0.59%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.32%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.22%     [kernel.kallsyms]  __free_one_page 
   0.19%     [kernel.kallsyms]  release_pages 
   0.17%     [kernel.kallsyms]  __mod_lruvec_state 
   0.14%     [kernel.kallsyms]  zap_pte_range 
   0.14%     [kernel.kallsyms]  page_remove_rmap 
   0.12%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.10%     [kernel.kallsyms]  free_unref_page_list 
   0.09%     [kernel.kallsyms]  lock_page_memcg 
   0.08%             libjvm.so  ElfSymbolTable::lookup 
   0.07%     [kernel.kallsyms]  __mod_zone_page_state 
   0.07%     [kernel.kallsyms]  __mod_node_page_state 
   0.07%     [kernel.kallsyms]  asm_sysvec_apic_timer_interrupt 
   0.07%     [kernel.kallsyms]  __rcu_read_unlock 
   0.06%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.06%     [kernel.kallsyms]  __rcu_read_lock 
   0.05%     [kernel.kallsyms]  vfs_write 
   1.67%  <...other 274 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.03%           c2, level 4
   4.33%     [kernel.kallsyms]
   0.35%             libjvm.so
   0.19%             libc.so.6
   0.05%        hsdis-amd64.so
   0.03%           interpreter
   0.01%  ld-linux-x86-64.so.2
   0.01%           c1, level 3
   0.01%                      
   0.00%        perf-10189.map
   0.00%        libz.so.1.2.11
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /usr/lib/jvm/openjdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_if_concrete_array

# Run progress: 37.50% complete, ETA 00:10:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 13.990 ns/op
# Warmup Iteration   2: 10.237 ns/op
# Warmup Iteration   3: 10.284 ns/op
# Warmup Iteration   4: 10.235 ns/op
# Warmup Iteration   5: 10.238 ns/op
Iteration   1: 10.188 ns/op
Iteration   2: 10.301 ns/op
Iteration   3: 10.150 ns/op
Iteration   4: 10.106 ns/op
Iteration   5: 10.158 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_if_concrete_array":
  10.181 ±(99.9%) 0.283 ns/op [Average]
  (min, avg, max) = (10.106, 10.181, 10.301), stdev = 0.073
  CI (99.9%): [9.898, 10.463] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_if_concrete_array:asm":
PrintAssembly processed: 148098 total address lines.
Perf output processed (skipped 70.155 seconds):
 Column 1: cycles (49504 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod, version 2, compile id 754 

            dependencies   [0x00007f2a485014c8,0x00007f2a485014d0] = 8
            nul chk table  [0x00007f2a485014d0,0x00007f2a485014e0] = 16
           [Disassembly]
           --------------------------------------------------------------------------------
           [Constant Pool (empty)]
           --------------------------------------------------------------------------------
           [Verified Entry Point]
             # {method} {0x00007f29bc47b868} &apos;switchIfMethod&apos; &apos;(Lcom/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$I;)I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark&apos;
             # parm0:    rsi:rsi   = &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$I&apos;
             #           [sp+0x30]  (sp of caller)
   4.84%     0x00007f2a485011a0:   mov    %eax,-0x14000(%rsp)
   5.20%     0x00007f2a485011a7:   push   %rbp
   2.25%     0x00007f2a485011a8:   sub    $0x20,%rsp
   5.57%     0x00007f2a485011ac:   cmpl   $0x1,0x20(%r15)
   1.99%     0x00007f2a485011b4:   jne    0x00007f2a4850123e           ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@-1 (line 193)
   2.24%     0x00007f2a485011ba:   nopw   0x0(%rax,%rax,1)
   2.61%     0x00007f2a485011c0:   mov    0x8(%rsi),%r11d              ; implicit exception: dispatches to 0x00007f2a4850120c
  13.83%     0x00007f2a485011c4:   cmp    $0x1029da0,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
   0.00%  ╭  0x00007f2a485011cb:   jne    0x00007f2a485011f0           ;*invokestatic linkToSpecial {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.invoke.LambdaForm$DMH/0x00007f29c8008c00::invokeSpecial@11
          │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f29c8083800::invoke@21
          │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f29c8085400::invoke@33
          │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f29c8087c00::tableSwitch@103
          │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f29c808b400::delegate@14
          │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f29c808a800::invoke@114
          │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f29c808b000::linkToTargetMethod@6
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
   3.19%  │  0x00007f2a485011cd:   mov    0xc(%rsi),%r11d              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@80 (line 195)
   3.32%  │  0x00007f2a485011d1:   lea    (%r11,%r11,1),%eax
   2.82%  │  0x00007f2a485011d5:   test   $0x1,%r11b
   2.86%  │  0x00007f2a485011d9:   cmovne %r11d,%eax                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@101 (line 198)
   3.35%  │  0x00007f2a485011dd:   add    $0x20,%rsp
   1.79%  │  0x00007f2a485011e1:   pop    %rbp
   1.99%  │  0x00007f2a485011e2:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f2a485011e9:   ja     0x00007f2a48501228
   5.87%  │  0x00007f2a485011ef:   ret    
          ↘  0x00007f2a485011f0:   mov    %rsi,(%rsp)
             0x00007f2a485011f4:   mov    %rsi,0x8(%rsp)
             0x00007f2a485011f9:   mov    $0xffffff66,%esi
             0x00007f2a485011fe:   nop
             0x00007f2a485011ff:   call   0x00007f2a47f8af00           ; ImmutableOopMap {[0]=Oop [8]=Oop }
                                                                       ;*invokestatic linkToSpecial {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.invoke.LambdaForm$DMH/0x00007f29c8008c00::invokeSpecial@11
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007f29c8083800::invoke@21
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007f29c8085400::invoke@33
                                                                       ; - java.lang.invoke.LambdaForm$MH/0x00007f29c8087c00::tableSwitch@103
....................................................................................................
  63.72%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array, version 4, compile id 757 

                 #           [sp+0x30]  (sp of caller)
                 0x00007f2a48501f20:   mov    0x8(%rsi),%r10d
                 0x00007f2a48501f24:   movabs $0x7f29c7000000,%r11
                 0x00007f2a48501f2e:   add    %r11,%r10
                 0x00007f2a48501f31:   cmp    %r10,%rax
                 0x00007f2a48501f34:   jne    0x00007f2a47f85080           ;   {runtime_call ic_miss_stub}
                 0x00007f2a48501f3a:   xchg   %ax,%ax
                 0x00007f2a48501f3c:   nopl   0x0(%rax)
               [Verified Entry Point]
                 0x00007f2a48501f40:   mov    %eax,-0x14000(%rsp)
   0.00%         0x00007f2a48501f47:   push   %rbp
                 0x00007f2a48501f48:   sub    $0x20,%rsp
                 0x00007f2a48501f4c:   cmpl   $0x1,0x20(%r15)
                 0x00007f2a48501f54:   jne    0x00007f2a48502036           ;*synchronization entry
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@-1 (line 143)
                 0x00007f2a48501f5a:   mov    0x14(%rsi),%r9d              ;*getfield asIsArray {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@3 (line 144)
   0.00%         0x00007f2a48501f5e:   xchg   %ax,%ax
                 0x00007f2a48501f60:   mov    0xc(%r12,%r9,8),%r10d        ; implicit exception: dispatches to 0x00007f2a4850200d
                                                                           ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@8 (line 144)
                 0x00007f2a48501f65:   test   %r10d,%r10d
          ╭      0x00007f2a48501f68:   jbe    0x00007f2a48501fde           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@16 (line 144)
          │      0x00007f2a48501f6e:   mov    %r10d,%r11d
          │      0x00007f2a48501f71:   dec    %r11d
          │      0x00007f2a48501f74:   cmp    %r10d,%r11d
          │╭     0x00007f2a48501f77:   jae    0x00007f2a48501fe2
          ││     0x00007f2a48501f7d:   lea    (%r12,%r9,8),%r8             ;*getfield asIsArray {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@3 (line 144)
          ││     0x00007f2a48501f81:   xor    %ebp,%ebp
          ││     0x00007f2a48501f83:   xor    %r9d,%r9d
          ││     0x00007f2a48501f86:   mov    %r10d,0x8(%rsp)
          ││     0x00007f2a48501f8b:   mov    %r9d,0xc(%rsp)
          ││╭    0x00007f2a48501f90:   jmp    0x00007f2a48501f9b
   2.62%  │││↗   0x00007f2a48501f92:   mov    (%rsp),%r8
   3.28%  ││││   0x00007f2a48501f96:   mov    %r10d,0xc(%rsp)              ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@19 (line 144)
   2.00%  ││↘│   0x00007f2a48501f9b:   mov    0x10(%r8,%rbp,4),%r11d
   2.47%  ││ │   0x00007f2a48501fa0:   mov    %r8,(%rsp)
   2.44%  ││ │   0x00007f2a48501fa4:   mov    %r11,%rsi
   3.37%  ││ │   0x00007f2a48501fa7:   shl    $0x3,%rsi
   2.05%  ││ │   0x00007f2a48501fab:   call   0x00007f2a485011a0           ; ImmutableOopMap {[0]=Oop }
          ││ │                                                             ;*invokestatic switchIfMethod {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
          ││ │                                                             ;   {static_call}
   2.42%  ││ │   0x00007f2a48501fb0:   nopl   0x220(%rax,%rax,1)           ;*invokestatic switchIfMethod {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
          ││ │                                                             ;   {other}
   2.08%  ││ │   0x00007f2a48501fb8:   mov    0xc(%rsp),%r10d
   5.88%  ││ │   0x00007f2a48501fbd:   add    %eax,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@31 (line 145)
   1.85%  ││ │   0x00007f2a48501fc0:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@33 (line 144)
   2.02%  ││ │   0x00007f2a48501fc2:   cmp    0x8(%rsp),%ebp
          ││ ╰   0x00007f2a48501fc6:   jl     0x00007f2a48501f92
          ││     0x00007f2a48501fc8:   mov    %r10d,%eax                   ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@16 (line 144)
          ││  ↗  0x00007f2a48501fcb:   add    $0x20,%rsp
          ││  │  0x00007f2a48501fcf:   pop    %rbp
   0.01%  ││  │  0x00007f2a48501fd0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││  │  0x00007f2a48501fd7:   ja     0x00007f2a48502020
          ││  │  0x00007f2a48501fdd:   ret    
          ↘│  │  0x00007f2a48501fde:   xor    %eax,%eax
           │  ╰  0x00007f2a48501fe0:   jmp    0x00007f2a48501fcb
           ↘     0x00007f2a48501fe2:   mov    $0xffffff76,%esi
                 0x00007f2a48501fe7:   mov    %r10d,(%rsp)
                 0x00007f2a48501feb:   mov    %r9d,0x4(%rsp)
                 0x00007f2a48501ff0:   data16 xchg %ax,%ax
                 0x00007f2a48501ff3:   call   0x00007f2a47f8af00           ; ImmutableOopMap {[4]=NarrowOop }
                                                                           ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  32.48%  <total for region 2>

....[Hottest Regions]...............................................................................
  63.72%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod, version 2, compile id 754 
  32.48%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array, version 4, compile id 757 
   0.35%     [kernel.kallsyms]  native_read_msr 
   0.33%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.21%     [kernel.kallsyms]  release_pages 
   0.20%     [kernel.kallsyms]  __mod_lruvec_state 
   0.19%     [kernel.kallsyms]  __free_one_page 
   0.16%     [kernel.kallsyms]  zap_pte_range 
   0.16%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.12%     [kernel.kallsyms]  page_remove_rmap 
   0.12%     [kernel.kallsyms]  free_unref_page_list 
   0.12%     [kernel.kallsyms]  __mod_node_page_state 
   0.10%     [kernel.kallsyms]  __rcu_read_lock 
   0.09%     [kernel.kallsyms]  __mod_zone_page_state 
   0.09%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.09%     [kernel.kallsyms]  __rcu_read_unlock 
   0.08%             libjvm.so  ElfSymbolTable::lookup 
   0.07%     [kernel.kallsyms]  lock_page_memcg 
   0.04%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.04%     [kernel.kallsyms]  free_unref_page_commit 
   1.25%  <...other 234 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  63.72%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod, version 2, compile id 754 
  32.48%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array, version 4, compile id 757 
   0.35%     [kernel.kallsyms]  native_read_msr 
   0.33%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.21%     [kernel.kallsyms]  release_pages 
   0.20%     [kernel.kallsyms]  __mod_lruvec_state 
   0.19%     [kernel.kallsyms]  __free_one_page 
   0.16%     [kernel.kallsyms]  zap_pte_range 
   0.16%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.12%     [kernel.kallsyms]  page_remove_rmap 
   0.12%     [kernel.kallsyms]  free_unref_page_list 
   0.12%     [kernel.kallsyms]  __mod_node_page_state 
   0.10%     [kernel.kallsyms]  __rcu_read_lock 
   0.09%     [kernel.kallsyms]  __mod_zone_page_state 
   0.09%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.09%     [kernel.kallsyms]  __rcu_read_unlock 
   0.08%             libjvm.so  ElfSymbolTable::lookup 
   0.07%     [kernel.kallsyms]  lock_page_memcg 
   0.04%     [kernel.kallsyms]  free_unref_page_commit 
   0.04%     [kernel.kallsyms]  cgroup_rstat_updated 
   1.25%  <...other 227 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.20%           c2, level 4
   3.23%     [kernel.kallsyms]
   0.26%             libjvm.so
   0.16%             libc.so.6
   0.05%           interpreter
   0.03%           c1, level 3
   0.02%                      
   0.02%        hsdis-amd64.so
   0.01%        perf-10280.map
   0.01%                [vdso]
   0.00%  ld-linux-x86-64.so.2
   0.00%        libz.so.1.2.11
   0.00%       nf_conntrack.ko
   0.00%             e1000e.ko
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /usr/lib/jvm/openjdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_if_interface_array

# Run progress: 50.00% complete, ETA 00:08:37
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 84.698 ns/op
# Warmup Iteration   2: 59.273 ns/op
# Warmup Iteration   3: 59.221 ns/op
# Warmup Iteration   4: 59.567 ns/op
# Warmup Iteration   5: 59.328 ns/op
Iteration   1: 59.468 ns/op
Iteration   2: 59.930 ns/op
Iteration   3: 59.040 ns/op
Iteration   4: 59.421 ns/op
Iteration   5: 59.558 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_if_interface_array":
  59.483 ±(99.9%) 1.226 ns/op [Average]
  (min, avg, max) = (59.040, 59.483, 59.930), stdev = 0.318
  CI (99.9%): [58.257, 60.709] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_if_interface_array:asm":
PrintAssembly processed: 151647 total address lines.
Perf output processed (skipped 70.028 seconds):
 Column 1: cycles (50045 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod, version 2, compile id 778 

                                                 dependencies   [0x00007f5814505510,0x00007f5814505518] = 8
                                                 nul chk table  [0x00007f5814505518,0x00007f5814505538] = 32
                                                [Disassembly]
                                                --------------------------------------------------------------------------------
                                                [Constant Pool (empty)]
                                                --------------------------------------------------------------------------------
                                                [Verified Entry Point]
                                                  # {method} {0x00007f578847b868} &apos;switchIfMethod&apos; &apos;(Lcom/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$I;)I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark&apos;
                                                  # parm0:    rsi:rsi   = &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$I&apos;
                                                  #           [sp+0x30]  (sp of caller)
   0.02%                                          0x00007f5814504880:   mov    %eax,-0x14000(%rsp)
   1.70%                                          0x00007f5814504887:   push   %rbp
   0.05%                                          0x00007f5814504888:   sub    $0x20,%rsp
   0.05%                                          0x00007f581450488c:   cmpl   $0x1,0x20(%r15)
   1.59%                                          0x00007f5814504894:   jne    0x00007f5814504c6e           ;*synchronization entry
                                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@-1 (line 193)
   0.04%                                          0x00007f581450489a:   nopw   0x0(%rax,%rax,1)
   0.00%                                          0x00007f58145048a0:   mov    0x8(%rsi),%r11d              ; implicit exception: dispatches to 0x00007f5814504bec
                                                                                                            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@319 (line 236)
   6.41%                                          0x00007f58145048a4:   cmp    $0x1029da0,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
   0.00%  ╭                                       0x00007f58145048ab:   jne    0x00007f5814504a48
   2.58%  │                                       0x00007f58145048b1:   xor    %r8d,%r8d                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007f5794085400::invoke@94
          │                                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007f5794087c00::tableSwitch@103
          │                                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007f579408b400::delegate@14
          │                                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007f579408a800::invoke@114
          │                                                                                                 ; - java.lang.invoke.LambdaForm$MH/0x00007f579408b000::linkToTargetMethod@6
          │                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
   2.44%  │                       ↗  ↗ ↗ ↗ ↗ ↗ ↗  0x00007f58145048b4:   cmp    $0x4,%r8d
          │╭                      │  │ │ │ │ │ │  0x00007f58145048b8:   je     0x00007f5814504a2b
   2.34%  ││                      │  │ │ │ │ │ │  0x00007f58145048be:   xchg   %ax,%ax
   0.15%  ││                      │  │ │ │ │ │ │  0x00007f58145048c0:   cmp    $0x4,%r8d
          ││╭                     │  │ │ │ │ │ │  0x00007f58145048c4:   jge    0x00007f5814504966
   0.12%  │││                     │  │ │ │ │ │ │  0x00007f58145048ca:   cmp    $0x1,%r8d
          │││╭                    │  │ │ │ │ │ │  0x00007f58145048ce:   jne    0x00007f58145048f5           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││││                    │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@16 (line 193)
   0.09%  ││││                    │  │ │ │ │ │ │  0x00007f58145048d0:   cmp    $0x102ad98,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
   0.00%  ││││                    │  │ │ │ │ │ │  0x00007f58145048d7:   jne    0x00007f5814504bd4           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││││                    │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@105 (line 200)
   0.19%  ││││                    │  │ │ │ │ │ │  0x00007f58145048dd:   mov    0x10(%rsi),%r10              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││││                    │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@112 (line 201)
   0.63%  ││││                    │  │ │ │ │ │ │  0x00007f58145048e1:   mov    %r10d,%eax                   ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          ││││                    │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@128 (line 202)
          ││││                    │  │ │ │ │ │ │  0x00007f58145048e4:   test   $0x1,%r10b
          ││││╭                   │  │ │ │ │ │ │  0x00007f58145048e8:   jne    0x00007f5814504a18           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││││                   │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@119 (line 201)
   0.23%  │││││                   │  │ │ │ │ │ │  0x00007f58145048ee:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │││││                   │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@129 (line 202)
   0.08%  │││││╭                  │  │ │ │ │ │ │  0x00007f58145048f0:   jmp    0x00007f5814504a18
   0.79%  │││↘││                  │  │ │ │ │ │ │  0x00007f58145048f5:   cmp    $0x1,%r8d
          │││ ││╭                 │  │ │ │ │ │ │  0x00007f58145048f9:   jge    0x00007f581450491f           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │││ │││                 │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@16 (line 193)
   0.41%  │││ │││                 │  │ │ │ │ │ │  0x00007f58145048fb:   nopl   0x0(%rax,%rax,1)
          │││ │││                 │  │ │ │ │ │ │  0x00007f5814504900:   cmp    $0x1029da0,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
          │││ │││                 │  │ │ │ │ │ │  0x00007f5814504907:   jne    0x00007f5814504bbc           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │││ │││                 │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@75 (line 194)
   0.02%  │││ │││                 │  │ │ │ │ │ │  0x00007f581450490d:   mov    0xc(%rsi),%eax               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │││ │││                 │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@80 (line 195)
   0.58%  │││ │││                 │  │ │ │ │ │ │  0x00007f5814504910:   test   $0x1,%al
          │││ │││╭                │  │ │ │ │ │ │  0x00007f5814504912:   jne    0x00007f5814504a18           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││ ││││                │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@85 (line 195)
   0.21%  │││ ││││                │  │ │ │ │ │ │  0x00007f5814504918:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │││ ││││                │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@93 (line 196)
   0.05%  │││ ││││╭               │  │ │ │ │ │ │  0x00007f581450491a:   jmp    0x00007f5814504a18
   0.74%  │││ ││↘││               │  │ │ │ │ │ │  0x00007f581450491f:   nop
   0.00%  │││ ││ ││               │  │ │ │ │ │ │  0x00007f5814504920:   cmp    $0x2,%r8d
          │││ ││ ││╭              │  │ │ │ │ │ │  0x00007f5814504924:   je     0x00007f5814504946           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ │││              │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@16 (line 193)
   0.04%  │││ ││ │││              │  │ │ │ │ │ │  0x00007f5814504926:   cmp    $0x102a998,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
          │││ ││ │││              │  │ │ │ │ │ │  0x00007f581450492d:   jne    0x00007f5814504ba4           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ │││              │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@177 (line 212)
   0.01%  │││ ││ │││              │  │ │ │ │ │ │  0x00007f5814504933:   movsbl 0xc(%rsi),%eax               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ │││              │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@184 (line 213)
   0.63%  │││ ││ │││              │  │ │ │ │ │ │  0x00007f5814504937:   test   $0x1,%al
          │││ ││ │││╭             │  │ │ │ │ │ │  0x00007f5814504939:   jne    0x00007f5814504a18           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ ││││             │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@189 (line 213)
   0.41%  │││ ││ ││││             │  │ │ │ │ │ │  0x00007f581450493f:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ ││││             │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@198 (line 214)
   0.12%  │││ ││ ││││╭            │  │ │ │ │ │ │  0x00007f5814504941:   jmp    0x00007f5814504a18
   0.42%  │││ ││ ││↘││            │  │ │ │ │ │ │  0x00007f5814504946:   cmp    $0x102a190,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
          │││ ││ ││ ││            │  │ │ │ │ │ │  0x00007f581450494d:   jne    0x00007f5814504b8c           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ ││ ││            │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@143 (line 206)
   0.02%  │││ ││ ││ ││            │  │ │ │ │ │ │  0x00007f5814504953:   movswl 0xc(%rsi),%eax               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ ││ ││            │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@150 (line 207)
   0.59%  │││ ││ ││ ││            │  │ │ │ │ │ │  0x00007f5814504957:   test   $0x1,%al
          │││ ││ ││ ││╭           │  │ │ │ │ │ │  0x00007f5814504959:   jne    0x00007f5814504a18           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ ││ │││           │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@155 (line 207)
   0.42%  │││ ││ ││ │││           │  │ │ │ │ │ │  0x00007f581450495f:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ ││ │││           │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@164 (line 208)
   0.20%  │││ ││ ││ │││╭          │  │ │ │ │ │ │  0x00007f5814504961:   jmp    0x00007f5814504a18
   0.52%  ││↘ ││ ││ ││││          │  │ │ │ │ │ │  0x00007f5814504966:   cmp    $0x6,%r8d
          ││  ││ ││ ││││╭         │  │ │ │ │ │ │  0x00007f581450496a:   jne    0x00007f581450499c           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││ │││││         │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@16 (line 193)
   0.01%  ││  ││ ││ │││││         │  │ │ │ │ │ │  0x00007f581450496c:   cmp    $0x102a598,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
          ││  ││ ││ │││││         │  │ │ │ │ │ │  0x00007f5814504973:   jne    0x00007f5814504b74           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││ │││││         │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@282 (line 230)
   0.10%  ││  ││ ││ │││││         │  │ │ │ │ │ │  0x00007f5814504979:   vmovss 0xc(%rsi),%xmm1
   0.37%  ││  ││ ││ │││││         │  │ │ │ │ │ │  0x00007f581450497e:   vcvttss2si %xmm1,%eax
   1.39%  ││  ││ ││ │││││         │  │ │ │ │ │ │  0x00007f5814504982:   cmp    $0x80000000,%eax
          ││  ││ ││ │││││         │  │ │ │ │ │ │  0x00007f5814504987:   je     0x00007f5814504c5a           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││ │││││         │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@292 (line 231)
   0.01%  ││  ││ ││ │││││         │  │ │ │ │ │ │  0x00007f581450498d:   test   $0x1,%al
          ││  ││ ││ │││││╭        │  │ │ │ │ │ │  0x00007f581450498f:   jne    0x00007f5814504a18           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││ ││││││        │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@295 (line 231)
   0.29%  ││  ││ ││ ││││││        │  │ │ │ │ │ │  0x00007f5814504995:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││ ││││││        │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@305 (line 232)
   0.24%  ││  ││ ││ ││││││╭       │  │ │ │ │ │ │  0x00007f5814504997:   jmp    0x00007f5814504a18
   0.47%  ││  ││ ││ ││││↘││       │  │ │ │ │ │ │  0x00007f581450499c:   nopl   0x0(%rax)
   0.02%  ││  ││ ││ ││││ ││       │  │ │ │ │ │ │  0x00007f58145049a0:   cmp    $0x6,%r8d
          ││  ││ ││ ││││ ││╭      │  │ │ │ │ │ │  0x00007f58145049a4:   jge    0x00007f58145049d3           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││ ││││ │││      │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@16 (line 193)
   0.89%  ││  ││ ││ ││││ │││      │  │ │ │ │ │ │  0x00007f58145049a6:   cmp    $0x102a798,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
          ││  ││ ││ ││││ │││      │  │ │ │ │ │ │  0x00007f58145049ad:   jne    0x00007f5814504b5c           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││ ││││ │││      │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@245 (line 224)
   0.39%  ││  ││ ││ ││││ │││      │  │ │ │ │ │ │  0x00007f58145049b3:   vmovsd 0x10(%rsi),%xmm0
   0.99%  ││  ││ ││ ││││ │││      │  │ │ │ │ │ │  0x00007f58145049b8:   vcvttsd2si %xmm0,%eax
   1.69%  ││  ││ ││ ││││ │││      │  │ │ │ │ │ │  0x00007f58145049bc:   cmp    $0x80000000,%eax
          ││  ││ ││ ││││ │││      │  │ │ │ │ │ │  0x00007f58145049c1:   je     0x00007f5814504c46           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││ ││││ │││      │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@255 (line 225)
   0.02%  ││  ││ ││ ││││ │││      │  │ │ │ │ │ │  0x00007f58145049c7:   test   $0x1,%al
          ││  ││ ││ ││││ │││╭     │  │ │ │ │ │ │  0x00007f58145049c9:   jne    0x00007f5814504a18           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││ ││││ ││││     │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@258 (line 225)
   0.27%  ││  ││ ││ ││││ ││││     │  │ │ │ │ │ │  0x00007f58145049cf:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││ ││││ ││││     │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@268 (line 226)
   0.27%  ││  ││ ││ ││││ ││││╭    │  │ │ │ │ │ │  0x00007f58145049d1:   jmp    0x00007f5814504a18
   0.24%  ││  ││ ││ ││││ ││↘││    │  │ │ │ │ │ │  0x00007f58145049d3:   nopw   0x0(%rax,%rax,1)
          ││  ││ ││ ││││ ││ ││    │  │ │ │ │ │ │  0x00007f58145049dc:   data16 data16 xchg %ax,%ax
          ││  ││ ││ ││││ ││ ││    │  │ │ │ │ │ │  0x00007f58145049e0:   cmp    $0x102a390,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
          ││  ││ ││ ││││ ││ ││    │  │ │ │ │ │ │  0x00007f58145049e7:   jne    0x00007f5814504b2c           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││ ││││ ││ ││    │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@319 (line 236)
          ││  ││ ││ ││││ ││ ││    │  │ │ │ │ │ │  0x00007f58145049ed:   mov    0xc(%rsi),%r11d              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││ ││││ ││ ││    │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@326 (line 237)
   0.56%  ││  ││ ││ ││││ ││ ││    │  │ │ │ │ │ │  0x00007f58145049f1:   mov    0x14(%r12,%r11,8),%r10d      ; implicit exception: dispatches to 0x00007f5814504c08
          ││  ││ ││ ││││ ││ ││    │  │ │ │ │ │ │                                                            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││ ││││ ││ ││    │  │ │ │ │ │ │                                                            ; - java.lang.String::length@1 (line 1519)
          ││  ││ ││ ││││ ││ ││    │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@329 (line 237)
   0.87%  ││  ││ ││ ││││ ││ ││    │  │ │ │ │ │ │  0x00007f58145049f6:   data16 nopw 0x0(%rax,%rax,1)
   0.00%  ││  ││ ││ ││││ ││ ││    │  │ │ │ │ │ │  0x00007f5814504a00:   mov    0xc(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007f5814504c1c
   0.76%  ││  ││ ││ ││││ ││ ││    │  │ │ │ │ │ │  0x00007f5814504a05:   movsbl 0x10(%r12,%r11,8),%r10d
   0.08%  ││  ││ ││ ││││ ││ ││    │  │ │ │ │ │ │  0x00007f5814504a0b:   sarx   %r10d,%r8d,%eax              ;*ishr {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││ ││││ ││ ││    │  │ │ │ │ │ │                                                            ; - java.lang.String::length@9 (line 1519)
          ││  ││ ││ ││││ ││ ││    │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@329 (line 237)
   0.14%  ││  ││ ││ ││││ ││ ││    │  │ │ │ │ │ │  0x00007f5814504a10:   test   $0x1,%al
          ││  ││ ││ ││││ ││ ││╭   │  │ │ │ │ │ │  0x00007f5814504a12:   je     0x00007f5814504a5c           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││ ││││ ││ │││   │  │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@358 (line 193)
   1.79%  ││  ↘↘ ↘↘ ↘↘↘↘ ↘↘ ↘↘│↗↗ │↗ │ │ │ │ │ │  0x00007f5814504a18:   add    $0x20,%rsp
   2.41%  ││                  │││ ││ │ │ │ │ │ │  0x00007f5814504a1c:   pop    %rbp
   6.34%  ││                  │││ ││ │ │ │ │ │ │  0x00007f5814504a1d:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││                  │││ ││ │ │ │ │ │ │  0x00007f5814504a24:   ja     0x00007f5814504c30
   1.48%  ││                  │││ ││ │ │ │ │ │ │  0x00007f5814504a2a:   ret    
   0.18%  │↘                  │││ ││ │ │ │ │ │ │  0x00007f5814504a2b:   cmp    $0x102ab98,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
          │                   │││ ││ │ │ │ │ │ │  0x00007f5814504a32:   jne    0x00007f5814504b44           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                   │││ ││ │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@211 (line 218)
   1.11%  │                   │││ ││ │ │ │ │ │ │  0x00007f5814504a38:   movzwl 0xc(%rsi),%eax               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │                   │││ ││ │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@218 (line 219)
   1.09%  │                   │││ ││ │ │ │ │ │ │  0x00007f5814504a3c:   nopl   0x0(%rax)
          │                   │││ ││ │ │ │ │ │ │  0x00007f5814504a40:   test   $0x1,%al
          │                   │╰│ ││ │ │ │ │ │ │  0x00007f5814504a42:   jne    0x00007f5814504a18           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                   │ │ ││ │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@223 (line 219)
   0.48%  │                   │ │ ││ │ │ │ │ │ │  0x00007f5814504a44:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │                   │ │ ││ │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@232 (line 220)
   0.17%  │                   │ ╰ ││ │ │ │ │ │ │  0x00007f5814504a46:   jmp    0x00007f5814504a18
   1.42%  ↘                   │   ││ │ │ │ │ │ │  0x00007f5814504a48:   cmp    $0x102ad98,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
                              │  ╭││ │ │ │ │ │ │  0x00007f5814504a4f:   jne    0x00007f5814504a62
   2.52%                      │  │││ │ │ │ │ │ │  0x00007f5814504a51:   mov    $0x1,%r8d
   1.29%                      │  │╰│ │ │ │ │ │ │  0x00007f5814504a57:   jmp    0x00007f58145048b4
   0.02%                      ↘  │ │ │ │ │ │ │ │  0x00007f5814504a5c:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                 │ │ │ │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@346 (line 238)
   0.00%                         │ │ │ │ │ │ │ │  0x00007f5814504a5e:   xchg   %ax,%ax
   0.00%                         │ ╰ │ │ │ │ │ │  0x00007f5814504a60:   jmp    0x00007f5814504a18
   3.73%                         ↘   │ │ │ │ │ │  0x00007f5814504a62:   cmp    $0x102a190,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
                                    ╭│ │ │ │ │ │  0x00007f5814504a69:   jne    0x00007f5814504a76
   1.95%                            ││ │ │ │ │ │  0x00007f5814504a6b:   mov    $0x2,%r8d
   1.21%                            │╰ │ │ │ │ │  0x00007f5814504a71:   jmp    0x00007f58145048b4
   1.33%                            ↘  │ │ │ │ │  0x00007f5814504a76:   data16 nopw 0x0(%rax,%rax,1)
   0.02%                               │ │ │ │ │  0x00007f5814504a80:   cmp    $0x102a998,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
                                      ╭│ │ │ │ │  0x00007f5814504a87:   jne    0x00007f5814504a94
   2.07%                              ││ │ │ │ │  0x00007f5814504a89:   mov    $0x3,%r8d
   1.25%                              │╰ │ │ │ │  0x00007f5814504a8f:   jmp    0x00007f58145048b4
   1.15%                              ↘  │ │ │ │  0x00007f5814504a94:   nopl   0x0(%rax,%rax,1)
   0.02%                                 │ │ │ │  0x00007f5814504a9c:   data16 data16 xchg %ax,%ax
                                         │ │ │ │  0x00007f5814504aa0:   cmp    $0x102ab98,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
                                        ╭│ │ │ │  0x00007f5814504aa7:   jne    0x00007f5814504ab4
   2.04%                                ││ │ │ │  0x00007f5814504aa9:   mov    $0x4,%r8d
   1.32%                                │╰ │ │ │  0x00007f5814504aaf:   jmp    0x00007f58145048b4
   1.04%                                ↘  │ │ │  0x00007f5814504ab4:   nopl   0x0(%rax,%rax,1)
   0.04%                                   │ │ │  0x00007f5814504abc:   data16 data16 xchg %ax,%ax
                                           │ │ │  0x00007f5814504ac0:   cmp    $0x102a798,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
                                          ╭│ │ │  0x00007f5814504ac7:   jne    0x00007f5814504ad4
   1.90%                                  ││ │ │  0x00007f5814504ac9:   mov    $0x5,%r8d
   1.13%                                  │╰ │ │  0x00007f5814504acf:   jmp    0x00007f58145048b4
   1.03%                                  ↘  │ │  0x00007f5814504ad4:   nopl   0x0(%rax,%rax,1)
   0.06%                                     │ │  0x00007f5814504adc:   data16 data16 xchg %ax,%ax
                                             │ │  0x00007f5814504ae0:   cmp    $0x102a598,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
                                            ╭│ │  0x00007f5814504ae7:   jne    0x00007f5814504af4
   1.44%                                    ││ │  0x00007f5814504ae9:   mov    $0x6,%r8d
   0.81%                                    │╰ │  0x00007f5814504aef:   jmp    0x00007f58145048b4
   1.15%                                    ↘  │  0x00007f5814504af4:   nopl   0x0(%rax,%rax,1)
   0.09%                                       │  0x00007f5814504afc:   data16 data16 xchg %ax,%ax
                                               │  0x00007f5814504b00:   cmp    $0x102a390,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
                                              ╭│  0x00007f5814504b07:   jne    0x00007f5814504b14
   0.72%                                      ││  0x00007f5814504b09:   mov    $0x7,%r8d
   0.12%                                      │╰  0x00007f5814504b0f:   jmp    0x00007f58145048b4
                                              ↘   0x00007f5814504b14:   mov    %rsi,(%rsp)
                                                  0x00007f5814504b18:   mov    $0xffffffcd,%esi
                                                  0x00007f5814504b1d:   xchg   %ax,%ax
                                                  0x00007f5814504b1f:   call   0x00007f5813f8af00           ; ImmutableOopMap {[0]=Oop }
                                                                                                            ;*invokestatic profileBoolean {reexecute=1 rethrow=0 return_oop=0}
                                                                                                            ; - (reexecute) java.lang.invoke.LambdaForm$MH/0x00007f5794084c00::guard@46
                                                                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f5794084c00::guard@89
                                                                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f5794084c00::guard@89
....................................................................................................
  80.85%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array, version 2, compile id 782 

                0x00007f58145065f1:   dec    %r11d
                0x00007f58145065f4:   cmp    %r10d,%r11d
          ╭     0x00007f58145065f7:   jae    0x00007f5814506662
          │     0x00007f58145065fd:   lea    (%r12,%r9,8),%r8             ;*getfield interfaceArray {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@3 (line 122)
          │     0x00007f5814506601:   xor    %ebp,%ebp
          │     0x00007f5814506603:   xor    %r9d,%r9d
          │     0x00007f5814506606:   mov    %r10d,0x8(%rsp)
          │     0x00007f581450660b:   mov    %r9d,0xc(%rsp)
          │╭    0x00007f5814506610:   jmp    0x00007f581450661b
   0.41%  ││↗   0x00007f5814506612:   mov    (%rsp),%r8
   0.28%  │││   0x00007f5814506616:   mov    %r10d,0xc(%rsp)              ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@19 (line 122)
   4.77%  │↘│   0x00007f581450661b:   mov    0x10(%r8,%rbp,4),%r11d
   2.50%  │ │   0x00007f5814506620:   mov    %r8,(%rsp)
   0.02%  │ │   0x00007f5814506624:   mov    %r11,%rsi
   0.04%  │ │   0x00007f5814506627:   shl    $0x3,%rsi
   1.57%  │ │   0x00007f581450662b:   call   0x00007f5814504880           ; ImmutableOopMap {[0]=Oop }
          │ │                                                             ;*invokestatic switchIfMethod {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
          │ │                                                             ;   {static_call}
   1.48%  │ │   0x00007f5814506630:   nopl   0x220(%rax,%rax,1)           ;*invokestatic switchIfMethod {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
          │ │                                                             ;   {other}
   0.06%  │ │   0x00007f5814506638:   mov    0xc(%rsp),%r10d
   1.72%  │ │   0x00007f581450663d:   add    %eax,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@31 (line 123)
   1.37%  │ │   0x00007f5814506640:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@33 (line 122)
   0.04%  │ │   0x00007f5814506642:   cmp    0x8(%rsp),%ebp
          │ ╰   0x00007f5814506646:   jl     0x00007f5814506612
   0.00%  │     0x00007f5814506648:   mov    %r10d,%eax                   ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@16 (line 122)
          │  ↗  0x00007f581450664b:   add    $0x20,%rsp
          │  │  0x00007f581450664f:   pop    %rbp
          │  │  0x00007f5814506650:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  │  0x00007f5814506657:   ja     0x00007f58145066a0
          │  │  0x00007f581450665d:   ret    
          │  │  0x00007f581450665e:   xor    %eax,%eax
          │  ╰  0x00007f5814506660:   jmp    0x00007f581450664b
          ↘     0x00007f5814506662:   mov    $0xffffff76,%esi
                0x00007f5814506667:   mov    %r10d,(%rsp)
....................................................................................................
  14.28%  <total for region 2>

....[Hottest Regions]...............................................................................
  80.85%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod, version 2, compile id 778 
  14.28%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array, version 2, compile id 782 
   0.62%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.42%     [kernel.kallsyms]  native_set_pmd 
   0.30%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.20%     [kernel.kallsyms]  __free_one_page 
   0.17%     [kernel.kallsyms]  __mod_lruvec_state 
   0.17%     [kernel.kallsyms]  release_pages 
   0.14%     [kernel.kallsyms]  zap_pte_range 
   0.14%     [kernel.kallsyms]  page_remove_rmap 
   0.13%     [kernel.kallsyms]  free_unref_page_list 
   0.12%     [kernel.kallsyms]  __mod_memcg_state 
   0.11%     [kernel.kallsyms]  asm_sysvec_apic_timer_interrupt 
   0.09%     [kernel.kallsyms]  __rcu_read_lock 
   0.09%     [kernel.kallsyms]  lock_page_memcg 
   0.07%     [kernel.kallsyms]  __mod_zone_page_state 
   0.07%     [kernel.kallsyms]  __mod_node_page_state 
   0.06%     [kernel.kallsyms]  __rcu_read_unlock 
   0.06%     [kernel.kallsyms]  free_swap_cache 
   0.06%             libjvm.so  ElfSymbolTable::lookup 
   1.85%  <...other 266 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  80.85%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod, version 2, compile id 778 
  14.28%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array, version 2, compile id 782 
   0.62%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.42%     [kernel.kallsyms]  native_set_pmd 
   0.30%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.20%     [kernel.kallsyms]  __free_one_page 
   0.17%     [kernel.kallsyms]  __mod_lruvec_state 
   0.17%     [kernel.kallsyms]  release_pages 
   0.14%     [kernel.kallsyms]  zap_pte_range 
   0.14%     [kernel.kallsyms]  page_remove_rmap 
   0.13%     [kernel.kallsyms]  free_unref_page_list 
   0.12%     [kernel.kallsyms]  __mod_memcg_state 
   0.11%     [kernel.kallsyms]  asm_sysvec_apic_timer_interrupt 
   0.09%     [kernel.kallsyms]  __rcu_read_lock 
   0.09%     [kernel.kallsyms]  lock_page_memcg 
   0.07%     [kernel.kallsyms]  __mod_zone_page_state 
   0.07%     [kernel.kallsyms]  __mod_node_page_state 
   0.06%     [kernel.kallsyms]  free_swap_cache 
   0.06%     [kernel.kallsyms]  __rcu_read_unlock 
   0.06%             libjvm.so  ElfSymbolTable::lookup 
   1.85%  <...other 261 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.14%           c2, level 4
   4.21%     [kernel.kallsyms]
   0.33%             libjvm.so
   0.21%             libc.so.6
   0.06%           interpreter
   0.04%        hsdis-amd64.so
   0.02%  ld-linux-x86-64.so.2
   0.00%           c1, level 3
   0.00%                [vdso]
   0.00%        libz.so.1.2.11
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /usr/lib/jvm/openjdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_interface_array

# Run progress: 62.50% complete, ETA 00:06:27
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 60.729 ns/op
# Warmup Iteration   2: 41.659 ns/op
# Warmup Iteration   3: 41.809 ns/op
# Warmup Iteration   4: 42.164 ns/op
# Warmup Iteration   5: 41.752 ns/op
Iteration   1: 41.879 ns/op
Iteration   2: 42.220 ns/op
Iteration   3: 42.047 ns/op
Iteration   4: 41.677 ns/op
Iteration   5: 41.949 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_interface_array":
  41.954 ±(99.9%) 0.774 ns/op [Average]
  (min, avg, max) = (41.677, 41.954, 42.220), stdev = 0.201
  CI (99.9%): [41.181, 42.728] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_interface_array:asm":
PrintAssembly processed: 152550 total address lines.
Perf output processed (skipped 70.301 seconds):
 Column 1: cycles (49967 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array, version 2, compile id 815 

                                              0x00007f0ccc50a5d3:   dec    %r8d
                                              0x00007f0ccc50a5d6:   cmp    %r11d,%r8d
          ╭                                   0x00007f0ccc50a5d9:   jae    0x00007f0ccc50a8c8
          │                                   0x00007f0ccc50a5df:   lea    (%r12,%rbp,8),%rsi           ;*getfield interfaceArray {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@3 (line 100)
          │                                   0x00007f0ccc50a5e3:   mov    $0x3e8,%edx                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@36 (line 100)
          │                                   0x00007f0ccc50a5e8:   xor    %r10d,%r10d
          │                                   0x00007f0ccc50a5eb:   xor    %eax,%eax
          │╭                                  0x00007f0ccc50a5ed:   jmp    0x00007f0ccc50a606
   0.02%  ││  ↗                               0x00007f0ccc50a5ef:   mov    0x458(%r15),%r8              ; ImmutableOopMap {rsi=Oop rbp=NarrowOop }
          ││  │                                                                                         ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││  │                                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@36 (line 100)
   0.04%  ││  │                               0x00007f0ccc50a5f6:   test   %eax,(%r8)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@36 (line 100)
          ││  │                                                                                         ;   {poll}
   0.03%  ││  │                               0x00007f0ccc50a5f9:   cmp    %r11d,%r10d
          ││  │                               0x00007f0ccc50a5fc:   nopl   0x0(%rax)
          ││╭ │                               0x00007f0ccc50a600:   jge    0x00007f0ccc50a8b5           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││ │                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@19 (line 100)
          │↘│ │                               0x00007f0ccc50a606:   mov    %r11d,%r13d
   0.00%  │ │ │                               0x00007f0ccc50a609:   sub    %r10d,%r13d
          │ │ │                               0x00007f0ccc50a60c:   cmp    %r10d,%r11d
          │ │ │                               0x00007f0ccc50a60f:   cmovl  %edi,%r13d
          │ │ │                               0x00007f0ccc50a613:   cmp    $0x3e8,%r13d
   0.00%  │ │ │                               0x00007f0ccc50a61a:   cmova  %edx,%r13d
          │ │ │                               0x00007f0ccc50a61e:   add    %r10d,%r13d
          │ │╭│                               0x00007f0ccc50a621:   jmp    0x00007f0ccc50a65b
          │ │││                               0x00007f0ccc50a623:   nopw   0x0(%rax,%rax,1)
          │ │││                               0x00007f0ccc50a62c:   data16 data16 xchg %ax,%ax          ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@174 (line 188)
          │ │││                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.29%  │ │││              ↗                0x00007f0ccc50a630:   mov    0xc(%rcx),%r8d               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │ │││              │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@181 (line 188)
          │ │││              │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.33%  │ │││              │                0x00007f0ccc50a634:   mov    0x14(%r12,%r8,8),%ecx        ; implicit exception: dispatches to 0x00007f0ccc50aa2c
          │ │││              │                                                                          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │ │││              │                                                                          ; - java.lang.String::length@1 (line 1519)
          │ │││              │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@184 (line 188)
          │ │││              │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   1.63%  │ │││              │                0x00007f0ccc50a639:   nopl   0x0(%rax)
   0.01%  │ │││              │                0x00007f0ccc50a640:   mov    0xc(%r12,%rcx,8),%r9d        ; implicit exception: dispatches to 0x00007f0ccc50aa40
   1.42%  │ │││              │                0x00007f0ccc50a645:   movsbl 0x10(%r12,%r8,8),%ecx
          │ │││              │                0x00007f0ccc50a64b:   sarx   %ecx,%r9d,%r8d               ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │││              │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@170 (line 187)
          │ │││              │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.31%  │ │││    ↗ ↗ ↗↗ ↗ ↗│↗               0x00007f0ccc50a650:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │││    │ │ ││ │ │││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@31 (line 101)
   2.03%  │ │││    │ │ ││ │ │││               0x00007f0ccc50a653:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │││    │ │ ││ │ │││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@33 (line 100)
   0.94%  │ │││    │ │ ││ │ │││               0x00007f0ccc50a656:   cmp    %r13d,%r10d
          │ ││╰    │ │ ││ │ │││               0x00007f0ccc50a659:   jge    0x00007f0ccc50a5ef           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │ ││     │ │ ││ │ │││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@19 (line 100)
   0.01%  │ │↘     │ │ ││ │ │││               0x00007f0ccc50a65b:   mov    0x10(%rsi,%r10,4),%r8d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │      │ │ ││ │ │││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@22 (line 100)
   2.53%  │ │      │ │ ││ │ │││               0x00007f0ccc50a660:   mov    0x8(%r12,%r8,8),%r9d         ; implicit exception: dispatches to 0x00007f0ccc50aa00
          │ │      │ │ ││ │ │││                                                                         ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ │      │ │ ││ │ │││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@174 (line 188)
          │ │      │ │ ││ │ │││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
  10.02%  │ │      │ │ ││ │ │││               0x00007f0ccc50a665:   cmp    $0x1029da0,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
          │ │  ╭   │ │ ││ │ │││               0x00007f0ccc50a66c:   jne    0x00007f0ccc50a7d7
   3.32%  │ │  │   │ │ ││ │ │││               0x00007f0ccc50a672:   xor    %ebx,%ebx                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │ │  │   │ │ ││ │ │││                                                                         ; - java.lang.invoke.LambdaForm$MH/0x00007f0c48085400::invoke@94
          │ │  │   │ │ ││ │ │││                                                                         ; - java.lang.invoke.LambdaForm$MH/0x00007f0c48087c00::tableSwitch@103
          │ │  │   │ │ ││ │ │││                                                                         ; - java.lang.invoke.LambdaForm$MH/0x00007f0c4808b400::delegate@14
          │ │  │   │ │ ││ │ │││                                                                         ; - java.lang.invoke.LambdaForm$MH/0x00007f0c4808a800::invoke@114
          │ │  │   │ │ ││ │ │││                                                                         ; - java.lang.invoke.LambdaForm$MH/0x00007f0c4808b000::linkToTargetMethod@6
          │ │  │   │ │ ││ │ │││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
          │ │  │   │ │ ││ │ │││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.30%  │ │  │   │ │ ││ │ │││ ↗ ↗ ↗ ↗ ↗ ↗↗  0x00007f0ccc50a674:   lea    (%r12,%r8,8),%rcx
   2.13%  │ │  │   │ │ ││ │ │││ │ │ │ │ │ ││  0x00007f0ccc50a678:   cmp    $0x4,%ebx
   0.11%  │ │  │   │ │ ││ │ │││ │ │ │ │ │ ││  0x00007f0ccc50a67b:   nopl   0x0(%rax,%rax,1)
   4.00%  │ │  │╭  │ │ ││ │ │││ │ │ │ │ │ ││  0x00007f0ccc50a680:   je     0x00007f0ccc50a7b4
   0.35%  │ │  ││  │ │ ││ │ │││ │ │ │ │ │ ││  0x00007f0ccc50a686:   cmp    $0x4,%ebx
          │ │  ││╭ │ │ ││ │ │││ │ │ │ │ │ ││  0x00007f0ccc50a689:   jge    0x00007f0ccc50a717
   0.35%  │ │  │││ │ │ ││ │ │││ │ │ │ │ │ ││  0x00007f0ccc50a68f:   cmp    $0x1,%ebx
          │ │  │││╭│ │ ││ │ │││ │ │ │ │ │ ││  0x00007f0ccc50a692:   jne    0x00007f0ccc50a6b6           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │ │  │││││ │ ││ │ │││ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@16 (line 180)
          │ │  │││││ │ ││ │ │││ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.01%  │ │  │││││ │ ││ │ │││ │ │ │ │ │ ││  0x00007f0ccc50a694:   nopl   0x0(%rax,%rax,1)
   0.59%  │ │  │││││ │ ││ │ │││ │ │ │ │ │ ││  0x00007f0ccc50a69c:   data16 data16 xchg %ax,%ax
   0.00%  │ │  │││││ │ ││ │ │││ │ │ │ │ │ ││  0x00007f0ccc50a6a0:   cmp    $0x102ad98,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
          │ │  │││││ │ ││ │ │││ │ │ │ │ │ ││  0x00007f0ccc50a6a7:   jne    0x00007f0ccc50a9dc           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ │  │││││ │ ││ │ │││ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@87 (line 182)
          │ │  │││││ │ ││ │ │││ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.01%  │ │  │││││ │ ││ │ │││ │ │ │ │ │ ││  0x00007f0ccc50a6ad:   mov    0x10(%rcx),%r8
   0.49%  │ │  │││││ │ ││ │ │││ │ │ │ │ │ ││  0x00007f0ccc50a6b1:   mov    %r8d,%r8d                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          │ │  │││││ │ ││ │ │││ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@97 (line 182)
          │ │  │││││ │ ││ │ │││ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.31%  │ │  ││││╰ │ ││ │ │││ │ │ │ │ │ ││  0x00007f0ccc50a6b4:   jmp    0x00007f0ccc50a650
   0.56%  │ │  │││↘  │ ││ │ │││ │ │ │ │ │ ││  0x00007f0ccc50a6b6:   cmp    $0x1,%ebx
          │ │  │││  ╭│ ││ │ │││ │ │ │ │ │ ││  0x00007f0ccc50a6b9:   jge    0x00007f0ccc50a6d6           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │ │  │││  ││ ││ │ │││ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@16 (line 180)
          │ │  │││  ││ ││ │ │││ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.12%  │ │  │││  ││ ││ │ │││ │ │ │ │ │ ││  0x00007f0ccc50a6bb:   nopl   0x0(%rax,%rax,1)
   0.00%  │ │  │││  ││ ││ │ │││ │ │ │ │ │ ││  0x00007f0ccc50a6c0:   cmp    $0x1029da0,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
          │ │  │││  ││ ││ │ │││ │ │ │ │ │ ││  0x00007f0ccc50a6c7:   jne    0x00007f0ccc50a9b8           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ │  │││  ││ ││ │ │││ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@75 (line 181)
          │ │  │││  ││ ││ │ │││ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.06%  │ │  │││  ││ ││ │ │││ │ │ │ │ │ ││  0x00007f0ccc50a6cd:   mov    0xc(%rcx),%r8d               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │ │  │││  ││ ││ │ │││ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@80 (line 181)
          │ │  │││  ││ ││ │ │││ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.88%  │ │  │││  │╰ ││ │ │││ │ │ │ │ │ ││  0x00007f0ccc50a6d1:   jmp    0x00007f0ccc50a650
   2.12%  │ │  │││  ↘  ││ │ │││ │ │ │ │ │ ││  0x00007f0ccc50a6d6:   cmp    $0x2,%ebx
          │ │  │││    ╭││ │ │││ │ │ │ │ │ ││  0x00007f0ccc50a6d9:   je     0x00007f0ccc50a6f7           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │ │  │││    │││ │ │││ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@16 (line 180)
          │ │  │││    │││ │ │││ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.27%  │ │  │││    │││ │ │││ │ │ │ │ │ ││  0x00007f0ccc50a6db:   nopl   0x0(%rax,%rax,1)
          │ │  │││    │││ │ │││ │ │ │ │ │ ││  0x00007f0ccc50a6e0:   cmp    $0x102a998,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
          │ │  │││    │││ │ │││ │ │ │ │ │ ││  0x00007f0ccc50a6e7:   jne    0x00007f0ccc50a994           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ │  │││    │││ │ │││ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@116 (line 184)
          │ │  │││    │││ │ │││ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
          │ │  │││    │││ │ │││ │ │ │ │ │ ││  0x00007f0ccc50a6ed:   movsbl 0xc(%rcx),%r8d               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │ │  │││    │││ │ │││ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@123 (line 184)
          │ │  │││    │││ │ │││ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   1.03%  │ │  │││    │╰│ │ │││ │ │ │ │ │ ││  0x00007f0ccc50a6f2:   jmp    0x00007f0ccc50a650
   0.35%  │ │  │││    ↘ │ │ │││ │ │ │ │ │ ││  0x00007f0ccc50a6f7:   nopw   0x0(%rax,%rax,1)
   0.00%  │ │  │││      │ │ │││ │ │ │ │ │ ││  0x00007f0ccc50a700:   cmp    $0x102a190,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
          │ │  │││      │ │ │││ │ │ │ │ │ ││  0x00007f0ccc50a707:   jne    0x00007f0ccc50a970           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ │  │││      │ │ │││ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@102 (line 183)
          │ │  │││      │ │ │││ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.01%  │ │  │││      │ │ │││ │ │ │ │ │ ││  0x00007f0ccc50a70d:   movswl 0xc(%rcx),%r8d               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │ │  │││      │ │ │││ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@109 (line 183)
          │ │  │││      │ │ │││ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   1.14%  │ │  │││      ╰ │ │││ │ │ │ │ │ ││  0x00007f0ccc50a712:   jmp    0x00007f0ccc50a650
   0.05%  │ │  ││↘        │ │││ │ │ │ │ │ ││  0x00007f0ccc50a717:   cmp    $0x6,%ebx
          │ │  ││        ╭│ │││ │ │ │ │ │ ││  0x00007f0ccc50a71a:   jne    0x00007f0ccc50a748           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │ │  ││        ││ │││ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@16 (line 180)
          │ │  ││        ││ │││ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.18%  │ │  ││        ││ │││ │ │ │ │ │ ││  0x00007f0ccc50a71c:   nopl   0x0(%rax)
   0.32%  │ │  ││        ││ │││ │ │ │ │ │ ││  0x00007f0ccc50a720:   cmp    $0x102a598,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
          │ │  ││        ││ │││ │ │ │ │ │ ││  0x00007f0ccc50a727:   jne    0x00007f0ccc50a94c           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ │  ││        ││ │││ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@159 (line 187)
          │ │  ││        ││ │││ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.25%  │ │  ││        ││ │││ │ │ │ │ │ ││  0x00007f0ccc50a72d:   vmovss 0xc(%rcx),%xmm0
   0.99%  │ │  ││        ││ │││ │ │ │ │ │ ││  0x00007f0ccc50a732:   vcvttss2si %xmm0,%r8d
   2.23%  │ │  ││        ││ │││ │ │ │ │ │ ││  0x00007f0ccc50a736:   cmp    $0x80000000,%r8d
          │ │  ││        ││ │││ │ │ │ │ │ ││  0x00007f0ccc50a73d:   je     0x00007f0ccc50aa93           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
          │ │  ││        ││ │││ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@169 (line 187)
          │ │  ││        ││ │││ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
          │ │  ││        │╰ │││ │ │ │ │ │ ││  0x00007f0ccc50a743:   jmp    0x00007f0ccc50a650
   1.13%  │ │  ││        ↘  │││ │ │ │ │ │ ││  0x00007f0ccc50a748:   cmp    $0x6,%ebx
          │ │  ││          ╭│││ │ │ │ │ │ ││  0x00007f0ccc50a74b:   jge    0x00007f0ccc50a775           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │ │  ││          ││││ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@16 (line 180)
          │ │  ││          ││││ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.01%  │ │  ││          ││││ │ │ │ │ │ ││  0x00007f0ccc50a74d:   cmp    $0x102a798,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
          │ │  ││          ││││ │ │ │ │ │ ││  0x00007f0ccc50a754:   jne    0x00007f0ccc50a928           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ │  ││          ││││ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@144 (line 186)
          │ │  ││          ││││ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.01%  │ │  ││          ││││ │ │ │ │ │ ││  0x00007f0ccc50a75a:   vmovsd 0x10(%rcx),%xmm0
   0.88%  │ │  ││          ││││ │ │ │ │ │ ││  0x00007f0ccc50a75f:   vcvttsd2si %xmm0,%r8d
   2.35%  │ │  ││          ││││ │ │ │ │ │ ││  0x00007f0ccc50a763:   cmp    $0x80000000,%r8d
          │ │  ││          ││││ │ │ │ │ │ ││  0x00007f0ccc50a76a:   je     0x00007f0ccc50aa7e           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
          │ │  ││          ││││ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@154 (line 186)
          │ │  ││          ││││ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.01%  │ │  ││          │╰││ │ │ │ │ │ ││  0x00007f0ccc50a770:   jmp    0x00007f0ccc50a650
   0.50%  │ │  ││          ↘ ││ │ │ │ │ │ ││  0x00007f0ccc50a775:   data16 data16 nopw 0x0(%rax,%rax,1)
          │ │  ││            ││ │ │ │ │ │ ││  0x00007f0ccc50a780:   cmp    $0x102a390,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
          │ │  ││            ╰│ │ │ │ │ │ ││  0x00007f0ccc50a787:   je     0x00007f0ccc50a630
          │ │  ││             │ │ │ │ │ │ ││  0x00007f0ccc50a78d:   mov    $0xffffffde,%esi
          │ │  ││             │ │ │ │ │ │ ││  0x00007f0ccc50a792:   mov    %r11d,(%rsp)
          │ │  ││             │ │ │ │ │ │ ││  0x00007f0ccc50a796:   mov    %r10d,0x4(%rsp)
          │ │  ││             │ │ │ │ │ │ ││  0x00007f0ccc50a79b:   mov    %eax,0x8(%rsp)
          │ │  ││             │ │ │ │ │ │ ││  0x00007f0ccc50a79f:   mov    %r8d,0xc(%rsp)
          │ │  ││             │ │ │ │ │ │ ││  0x00007f0ccc50a7a4:   data16 xchg %ax,%ax
          │ │  ││             │ │ │ │ │ │ ││  0x00007f0ccc50a7a7:   call   0x00007f0ccbf8af00           ; ImmutableOopMap {rbp=NarrowOop [12]=NarrowOop }
          │ │  ││             │ │ │ │ │ │ ││                                                            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ │  ││             │ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@174 (line 188)
          │ │  ││             │ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
          │ │  ││             │ │ │ │ │ │ ││                                                            ;   {runtime_call UncommonTrapBlob}
          │ │  ││             │ │ │ │ │ │ ││  0x00007f0ccc50a7ac:   nopl   0x100041c(%rax,%rax,1)       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ │  ││             │ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@174 (line 188)
          │ │  ││             │ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
          │ │  ││             │ │ │ │ │ │ ││                                                            ;   {other}
   0.03%  │ │  │↘             │ │ │ │ │ │ ││  0x00007f0ccc50a7b4:   nopl   0x0(%rax,%rax,1)
          │ │  │              │ │ │ │ │ │ ││  0x00007f0ccc50a7bc:   data16 data16 xchg %ax,%ax
   0.00%  │ │  │              │ │ │ │ │ │ ││  0x00007f0ccc50a7c0:   cmp    $0x102ab98,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
          │ │  │              │ │ │ │ │ │ ││  0x00007f0ccc50a7c7:   jne    0x00007f0ccc50a904           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ │  │              │ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@130 (line 185)
          │ │  │              │ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.63%  │ │  │              │ │ │ │ │ │ ││  0x00007f0ccc50a7cd:   movzwl 0xc(%rcx),%r8d               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │ │  │              │ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@137 (line 185)
          │ │  │              │ │ │ │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   1.42%  │ │  │              ╰ │ │ │ │ │ ││  0x00007f0ccc50a7d2:   jmp    0x00007f0ccc50a650
   2.10%  │ │  ↘                │ │ │ │ │ ││  0x00007f0ccc50a7d7:   nopw   0x0(%rax,%rax,1)
   0.01%  │ │                   │ │ │ │ │ ││  0x00007f0ccc50a7e0:   cmp    $0x102ad98,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
          │ │                  ╭│ │ │ │ │ ││  0x00007f0ccc50a7e7:   jne    0x00007f0ccc50a7f3
   3.31%  │ │                  ││ │ │ │ │ ││  0x00007f0ccc50a7e9:   mov    $0x1,%ebx
   2.26%  │ │                  │╰ │ │ │ │ ││  0x00007f0ccc50a7ee:   jmp    0x00007f0ccc50a674
   3.70%  │ │                  ↘  │ │ │ │ ││  0x00007f0ccc50a7f3:   nopw   0x0(%rax,%rax,1)
   0.03%  │ │                     │ │ │ │ ││  0x00007f0ccc50a7fc:   data16 data16 xchg %ax,%ax
          │ │                     │ │ │ │ ││  0x00007f0ccc50a800:   cmp    $0x102a190,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
          │ │                    ╭│ │ │ │ ││  0x00007f0ccc50a807:   jne    0x00007f0ccc50a813
   3.34%  │ │                    ││ │ │ │ ││  0x00007f0ccc50a809:   mov    $0x2,%ebx
   2.34%  │ │                    │╰ │ │ │ ││  0x00007f0ccc50a80e:   jmp    0x00007f0ccc50a674
   1.81%  │ │                    ↘  │ │ │ ││  0x00007f0ccc50a813:   nopw   0x0(%rax,%rax,1)
   0.03%  │ │                       │ │ │ ││  0x00007f0ccc50a81c:   data16 data16 xchg %ax,%ax
          │ │                       │ │ │ ││  0x00007f0ccc50a820:   cmp    $0x102a998,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
          │ │                      ╭│ │ │ ││  0x00007f0ccc50a827:   jne    0x00007f0ccc50a833
   3.03%  │ │                      ││ │ │ ││  0x00007f0ccc50a829:   mov    $0x3,%ebx
   2.25%  │ │                      │╰ │ │ ││  0x00007f0ccc50a82e:   jmp    0x00007f0ccc50a674
   1.52%  │ │                      ↘  │ │ ││  0x00007f0ccc50a833:   nopw   0x0(%rax,%rax,1)
   0.02%  │ │                         │ │ ││  0x00007f0ccc50a83c:   data16 data16 xchg %ax,%ax
          │ │                         │ │ ││  0x00007f0ccc50a840:   cmp    $0x102ab98,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
          │ │                        ╭│ │ ││  0x00007f0ccc50a847:   jne    0x00007f0ccc50a853
   3.15%  │ │                        ││ │ ││  0x00007f0ccc50a849:   mov    $0x4,%ebx
   2.15%  │ │                        │╰ │ ││  0x00007f0ccc50a84e:   jmp    0x00007f0ccc50a674
   1.60%  │ │                        ↘  │ ││  0x00007f0ccc50a853:   nopw   0x0(%rax,%rax,1)
   0.08%  │ │                           │ ││  0x00007f0ccc50a85c:   data16 data16 xchg %ax,%ax
          │ │                           │ ││  0x00007f0ccc50a860:   cmp    $0x102a798,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
          │ │                          ╭│ ││  0x00007f0ccc50a867:   jne    0x00007f0ccc50a873
   3.16%  │ │                          ││ ││  0x00007f0ccc50a869:   mov    $0x5,%ebx
   2.22%  │ │                          │╰ ││  0x00007f0ccc50a86e:   jmp    0x00007f0ccc50a674
   1.38%  │ │                          ↘  ││  0x00007f0ccc50a873:   nopw   0x0(%rax,%rax,1)
   0.04%  │ │                             ││  0x00007f0ccc50a87c:   data16 data16 xchg %ax,%ax
          │ │                             ││  0x00007f0ccc50a880:   cmp    $0x102a598,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
          │ │                            ╭││  0x00007f0ccc50a887:   jne    0x00007f0ccc50a893
   1.68%  │ │                            │││  0x00007f0ccc50a889:   mov    $0x6,%ebx
   1.36%  │ │                            │╰│  0x00007f0ccc50a88e:   jmp    0x00007f0ccc50a674
   1.98%  │ │                            ↘ │  0x00007f0ccc50a893:   nopw   0x0(%rax,%rax,1)
   0.21%  │ │                              │  0x00007f0ccc50a89c:   data16 data16 xchg %ax,%ax
          │ │                              │  0x00007f0ccc50a8a0:   cmp    $0x102a390,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
          │ │                              │  0x00007f0ccc50a8a7:   jne    0x00007f0ccc50a8e0
   0.97%  │ │                              │  0x00007f0ccc50a8a9:   mov    $0x7,%ebx
   0.32%  │ │                              ╰  0x00007f0ccc50a8ae:   jmp    0x00007f0ccc50a674
          │ │                                 0x00007f0ccc50a8b3:   xor    %eax,%eax                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@16 (line 100)
          │ ↘                                 0x00007f0ccc50a8b5:   add    $0x30,%rsp
          │                                   0x00007f0ccc50a8b9:   pop    %rbp
          │                                   0x00007f0ccc50a8ba:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │                                   0x00007f0ccc50a8c1:   ja     0x00007f0ccc50aa68
          │                                   0x00007f0ccc50a8c7:   ret    
          ↘                                   0x00007f0ccc50a8c8:   mov    $0xffffff76,%esi
                                              0x00007f0ccc50a8cd:   mov    %r11d,0x4(%rsp)
                                              0x00007f0ccc50a8d2:   nop
....................................................................................................
  95.18%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.18%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array, version 2, compile id 815 
   0.66%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.28%     [kernel.kallsyms]  native_read_msr 
   0.27%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.19%     [kernel.kallsyms]  release_pages 
   0.19%     [kernel.kallsyms]  __free_one_page 
   0.17%     [kernel.kallsyms]  zap_pte_range 
   0.15%     [kernel.kallsyms]  refill_obj_stock 
   0.13%     [kernel.kallsyms]  page_remove_rmap 
   0.12%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.11%     [kernel.kallsyms]  free_unref_page_list 
   0.10%     [kernel.kallsyms]  __mod_node_page_state 
   0.10%     [kernel.kallsyms]  lock_page_memcg 
   0.09%     [kernel.kallsyms]  __rcu_read_unlock 
   0.09%             libjvm.so  ElfSymbolTable::lookup 
   0.07%     [kernel.kallsyms]  __mod_zone_page_state 
   0.07%     [kernel.kallsyms]  __rcu_read_lock 
   0.06%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.05%     [kernel.kallsyms]  free_unref_page_commit 
   0.05%     [kernel.kallsyms]  pipe_write 
   1.87%  <...other 288 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.18%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array, version 2, compile id 815 
   0.66%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.28%     [kernel.kallsyms]  native_read_msr 
   0.27%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.19%     [kernel.kallsyms]  release_pages 
   0.19%     [kernel.kallsyms]  __free_one_page 
   0.17%     [kernel.kallsyms]  zap_pte_range 
   0.15%     [kernel.kallsyms]  refill_obj_stock 
   0.13%     [kernel.kallsyms]  page_remove_rmap 
   0.12%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.11%     [kernel.kallsyms]  free_unref_page_list 
   0.10%     [kernel.kallsyms]  __mod_node_page_state 
   0.10%     [kernel.kallsyms]  lock_page_memcg 
   0.09%     [kernel.kallsyms]  __rcu_read_unlock 
   0.09%             libjvm.so  ElfSymbolTable::lookup 
   0.07%     [kernel.kallsyms]  __mod_zone_page_state 
   0.07%     [kernel.kallsyms]  __rcu_read_lock 
   0.06%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.05%     [kernel.kallsyms]  free_unref_page_commit 
   0.05%     [kernel.kallsyms]  pipe_write 
   1.87%  <...other 282 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.18%           c2, level 4
   4.01%     [kernel.kallsyms]
   0.39%             libjvm.so
   0.29%             libc.so.6
   0.05%           interpreter
   0.03%        hsdis-amd64.so
   0.03%  ld-linux-x86-64.so.2
   0.01%                      
   0.01%                [vdso]
   0.00%        perf-10465.map
   0.00%            libjava.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /usr/lib/jvm/openjdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_when_concrete_array

# Run progress: 75.00% complete, ETA 00:04:17
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 14.922 ns/op
# Warmup Iteration   2: 10.062 ns/op
# Warmup Iteration   3: 10.111 ns/op
# Warmup Iteration   4: 10.092 ns/op
# Warmup Iteration   5: 10.098 ns/op
Iteration   1: 10.102 ns/op
Iteration   2: 10.176 ns/op
Iteration   3: 10.189 ns/op
Iteration   4: 10.046 ns/op
Iteration   5: 10.073 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_when_concrete_array":
  10.117 ±(99.9%) 0.242 ns/op [Average]
  (min, avg, max) = (10.046, 10.117, 10.189), stdev = 0.063
  CI (99.9%): [9.875, 10.359] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_when_concrete_array:asm":
PrintAssembly processed: 152732 total address lines.
Perf output processed (skipped 70.105 seconds):
 Column 1: cycles (49774 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod, version 2, compile id 793 

            dependencies   [0x00007f07a85040b8,0x00007f07a85040c0] = 8
            nul chk table  [0x00007f07a85040c0,0x00007f07a85040d0] = 16
           [Disassembly]
           --------------------------------------------------------------------------------
           [Constant Pool (empty)]
           --------------------------------------------------------------------------------
           [Verified Entry Point]
             # {method} {0x00007f071c47bcc0} &apos;switchWhenMethod&apos; &apos;(Lcom/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$I;)I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark&apos;
             # parm0:    rsi:rsi   = &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$I&apos;
             #           [sp+0x30]  (sp of caller)
   4.48%     0x00007f07a8503ea0:   mov    %eax,-0x14000(%rsp)
   5.12%     0x00007f07a8503ea7:   push   %rbp
   2.17%     0x00007f07a8503ea8:   sub    $0x20,%rsp
   5.68%     0x00007f07a8503eac:   cmpl   $0x1,0x20(%r15)
   1.85%     0x00007f07a8503eb4:   jne    0x00007f07a8503f3a           ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@-1 (line 246)
   2.13%     0x00007f07a8503eba:   nopw   0x0(%rax,%rax,1)
   2.58%     0x00007f07a8503ec0:   mov    0x8(%rsi),%r11d              ; implicit exception: dispatches to 0x00007f07a8503f08
  13.63%     0x00007f07a8503ec4:   cmp    $0x1029da0,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
   0.00%  ╭  0x00007f07a8503ecb:   jne    0x00007f07a8503ef0           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@107 (line 247)
   3.21%  │  0x00007f07a8503ecd:   mov    0xc(%rsi),%r11d              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@112 (line 247)
   3.45%  │  0x00007f07a8503ed1:   lea    (%r11,%r11,1),%eax
   2.76%  │  0x00007f07a8503ed5:   test   $0x1,%r11b
   2.88%  │  0x00007f07a8503ed9:   cmovne %r11d,%eax                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@131 (line 247)
   3.36%  │  0x00007f07a8503edd:   add    $0x20,%rsp
   1.72%  │  0x00007f07a8503ee1:   pop    %rbp
   2.03%  │  0x00007f07a8503ee2:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f07a8503ee9:   ja     0x00007f07a8503f24
   6.13%  │  0x00007f07a8503eef:   ret    
          ↘  0x00007f07a8503ef0:   mov    %rsi,%rbp
             0x00007f07a8503ef3:   mov    $0xffffffbe,%esi
             0x00007f07a8503ef8:   data16 xchg %ax,%ax
             0x00007f07a8503efb:   call   0x00007f07a7f8af00           ; ImmutableOopMap {rbp=Oop }
                                                                       ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
                                                                       ;   {runtime_call UncommonTrapBlob}
             0x00007f07a8503f00:   nopl   0x1f0(%rax,%rax,1)           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
                                                                       ;   {other}
....................................................................................................
  63.17%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array, version 4, compile id 796 

                 0x00007f07a8504848:   sub    $0x20,%rsp
                 0x00007f07a850484c:   cmpl   $0x1,0x20(%r15)
                 0x00007f07a8504854:   jne    0x00007f07a8504936           ;*synchronization entry
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@-1 (line 154)
                 0x00007f07a850485a:   mov    0x14(%rsi),%r9d              ;*getfield asIsArray {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@3 (line 155)
                 0x00007f07a850485e:   xchg   %ax,%ax
                 0x00007f07a8504860:   mov    0xc(%r12,%r9,8),%r10d        ; implicit exception: dispatches to 0x00007f07a850490d
                                                                           ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@8 (line 155)
   0.01%         0x00007f07a8504865:   test   %r10d,%r10d
          ╭      0x00007f07a8504868:   jbe    0x00007f07a85048de           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@16 (line 155)
          │      0x00007f07a850486e:   mov    %r10d,%r11d
          │      0x00007f07a8504871:   dec    %r11d
          │      0x00007f07a8504874:   cmp    %r10d,%r11d
          │╭     0x00007f07a8504877:   jae    0x00007f07a85048e2
          ││     0x00007f07a850487d:   lea    (%r12,%r9,8),%r8             ;*getfield asIsArray {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@3 (line 155)
          ││     0x00007f07a8504881:   xor    %ebp,%ebp
          ││     0x00007f07a8504883:   xor    %r9d,%r9d
          ││     0x00007f07a8504886:   mov    %r10d,0x8(%rsp)
          ││     0x00007f07a850488b:   mov    %r9d,0xc(%rsp)
          ││╭    0x00007f07a8504890:   jmp    0x00007f07a850489b
   2.70%  │││↗   0x00007f07a8504892:   mov    (%rsp),%r8
   3.32%  ││││   0x00007f07a8504896:   mov    %r10d,0xc(%rsp)              ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@19 (line 155)
   2.04%  ││↘│   0x00007f07a850489b:   mov    0x10(%r8,%rbp,4),%r11d
   2.48%  ││ │   0x00007f07a85048a0:   mov    %r8,(%rsp)
   2.52%  ││ │   0x00007f07a85048a4:   mov    %r11,%rsi
   3.28%  ││ │   0x00007f07a85048a7:   shl    $0x3,%rsi
   1.92%  ││ │   0x00007f07a85048ab:   call   0x00007f07a8503ea0           ; ImmutableOopMap {[0]=Oop }
          ││ │                                                             ;*invokestatic switchWhenMethod {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
          ││ │                                                             ;   {static_call}
   2.32%  ││ │   0x00007f07a85048b0:   nopl   0x220(%rax,%rax,1)           ;*invokestatic switchWhenMethod {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
          ││ │                                                             ;   {other}
   2.20%  ││ │   0x00007f07a85048b8:   mov    0xc(%rsp),%r10d
   5.73%  ││ │   0x00007f07a85048bd:   add    %eax,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@31 (line 156)
   1.85%  ││ │   0x00007f07a85048c0:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@33 (line 155)
   2.00%  ││ │   0x00007f07a85048c2:   cmp    0x8(%rsp),%ebp
          ││ ╰   0x00007f07a85048c6:   jl     0x00007f07a8504892
          ││     0x00007f07a85048c8:   mov    %r10d,%eax                   ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@16 (line 155)
          ││  ↗  0x00007f07a85048cb:   add    $0x20,%rsp
          ││  │  0x00007f07a85048cf:   pop    %rbp
   0.00%  ││  │  0x00007f07a85048d0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││  │  0x00007f07a85048d7:   ja     0x00007f07a8504920
          ││  │  0x00007f07a85048dd:   ret    
          ↘│  │  0x00007f07a85048de:   xor    %eax,%eax
           │  ╰  0x00007f07a85048e0:   jmp    0x00007f07a85048cb
           ↘     0x00007f07a85048e2:   mov    $0xffffff76,%esi
                 0x00007f07a85048e7:   mov    %r10d,(%rsp)
                 0x00007f07a85048eb:   mov    %r9d,0x4(%rsp)
                 0x00007f07a85048f0:   data16 xchg %ax,%ax
                 0x00007f07a85048f3:   call   0x00007f07a7f8af00           ; ImmutableOopMap {[4]=NarrowOop }
                                                                           ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  32.38%  <total for region 2>

....[Hottest Regions]...............................................................................
  63.17%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod, version 2, compile id 793 
  32.38%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array, version 4, compile id 796 
   0.43%     [kernel.kallsyms]  native_read_msr 
   0.42%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.23%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.21%     [kernel.kallsyms]  __free_one_page 
   0.18%     [kernel.kallsyms]  release_pages 
   0.16%     [kernel.kallsyms]  page_remove_rmap 
   0.14%     [kernel.kallsyms]  zap_pte_range 
   0.14%     [kernel.kallsyms]  __mod_lruvec_state 
   0.12%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.11%     [kernel.kallsyms]  __mod_node_page_state 
   0.10%     [kernel.kallsyms]  free_unref_page_list 
   0.09%     [kernel.kallsyms]  lock_page_memcg 
   0.08%     [kernel.kallsyms]  __rcu_read_lock 
   0.08%     [kernel.kallsyms]  __mod_zone_page_state 
   0.07%     [kernel.kallsyms]  __rcu_read_unlock 
   0.07%             libjvm.so  ElfSymbolTable::lookup 
   0.05%     [kernel.kallsyms]  free_unref_page_commit 
   0.04%     [kernel.kallsyms]  free_swap_cache 
   1.71%  <...other 288 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  63.17%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod, version 2, compile id 793 
  32.38%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array, version 4, compile id 796 
   0.43%     [kernel.kallsyms]  native_read_msr 
   0.42%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.23%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.21%     [kernel.kallsyms]  __free_one_page 
   0.18%     [kernel.kallsyms]  release_pages 
   0.16%     [kernel.kallsyms]  page_remove_rmap 
   0.14%     [kernel.kallsyms]  zap_pte_range 
   0.14%     [kernel.kallsyms]  __mod_lruvec_state 
   0.12%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.11%     [kernel.kallsyms]  __mod_node_page_state 
   0.10%     [kernel.kallsyms]  free_unref_page_list 
   0.09%     [kernel.kallsyms]  lock_page_memcg 
   0.08%     [kernel.kallsyms]  __rcu_read_lock 
   0.08%     [kernel.kallsyms]  __mod_zone_page_state 
   0.07%     [kernel.kallsyms]  __rcu_read_unlock 
   0.07%             libjvm.so  ElfSymbolTable::lookup 
   0.05%     [kernel.kallsyms]  free_unref_page_commit 
   0.04%     [kernel.kallsyms]  free_swap_cache 
   1.71%  <...other 283 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.56%           c2, level 4
   3.77%     [kernel.kallsyms]
   0.34%             libjvm.so
   0.21%             libc.so.6
   0.04%           interpreter
   0.03%           c1, level 3
   0.02%        hsdis-amd64.so
   0.01%                [vdso]
   0.01%  ld-linux-x86-64.so.2
   0.01%                      
   0.00%       nf_conntrack.ko
   0.00%           c1, level 1
   0.00%        perf-10556.map
   0.00%      Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /usr/lib/jvm/openjdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_when_interface_array

# Run progress: 87.50% complete, ETA 00:02:08
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 101.942 ns/op
# Warmup Iteration   2: 64.817 ns/op
# Warmup Iteration   3: 64.914 ns/op
# Warmup Iteration   4: 64.608 ns/op
# Warmup Iteration   5: 64.536 ns/op
Iteration   1: 66.315 ns/op
Iteration   2: 65.864 ns/op
Iteration   3: 64.872 ns/op
Iteration   4: 65.157 ns/op
Iteration   5: 64.634 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_when_interface_array":
  65.368 ±(99.9%) 2.703 ns/op [Average]
  (min, avg, max) = (64.634, 65.368, 66.315), stdev = 0.702
  CI (99.9%): [62.665, 68.072] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_when_interface_array:asm":
PrintAssembly processed: 152335 total address lines.
Perf output processed (skipped 69.834 seconds):
 Column 1: cycles (49792 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod, version 2, compile id 800 

                                                                            0x00007f2d20505c8c:   0xf4f4f4f4                              
                                                                            0x00007f2d20505c90:   0xf4f4f4f4      0xf4f4f4f4f4f4f4f4      
                                                                            0x00007f2d20505c94:   0xf4f4f4f4                              
                                                                            0x00007f2d20505c98:   0xf4f4f4f4      0xf4f4f4f4f4f4f4f4      
                                                                            0x00007f2d20505c9c:   0xf4f4f4f4                              
                                                                          --------------------------------------------------------------------------------
                                                                          [Verified Entry Point]
                                                                            # {method} {0x00007f2c9747bcc0} &apos;switchWhenMethod&apos; &apos;(Lcom/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$I;)I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark&apos;
                                                                            # parm0:    rsi:rsi   = &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$I&apos;
                                                                            #           [sp+0x40]  (sp of caller)
   0.19%                                                                    0x00007f2d20505ca0:   mov    %eax,-0x14000(%rsp)          ;   {no_reloc}
   1.35%                                                                    0x00007f2d20505ca7:   push   %rbp
   0.02%                                                                    0x00007f2d20505ca8:   sub    $0x30,%rsp
   0.25%                                                                    0x00007f2d20505cac:   cmpl   $0x1,0x20(%r15)
   1.30%                                                                    0x00007f2d20505cb4:   jne    0x00007f2d205065ca           ;*synchronization entry
                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@-1 (line 246)
   0.03%                                                                    0x00007f2d20505cba:   mov    %rsi,%r10
   0.17%                                                                    0x00007f2d20505cbd:   data16 xchg %ax,%ax
   0.06%                                                                    0x00007f2d20505cc0:   mov    0x8(%rsi),%r11d              ; implicit exception: dispatches to 0x00007f2d205063fc
                                                                                                                                      ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@454 (line 261)
   5.73%                                                                    0x00007f2d20505cc4:   xor    %r9d,%r9d                    ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
   0.23%                                     ↗    ↗   ↗  ↗  ↗     ↗ ↗    ↗  0x00007f2d20505cc7:   test   %r9d,%r9d
          ╭                                  │    │   │  │  │     │ │    │  0x00007f2d20505cca:   je     0x00007f2d20505cde
   0.16%  │                                  │    │   │  │  │     │ │    │  0x00007f2d20505ccc:   movslq %r9d,%r8
   0.45%  │                                  │    │   │  │  │     │ │    │  0x00007f2d20505ccf:   movabs $0x7f2d20505b80,%rcx         ;   {section_word}
   0.02%  │                                  │    │   │  │  │     │ │    │  0x00007f2d20505cd9:   jmp    *-0x8(%rcx,%r8,8)            ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │                                  │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c087c00::tableSwitch@39
          │                                  │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b400::delegate@14
          │                                  │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08a800::invoke@114
          │                                  │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b000::linkToTargetMethod@6
          │                                  │    │   │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   0.01%  ↘                                  │    │   │  │  │     │ │    │  0x00007f2d20505cde:   xchg   %ax,%ax
   0.03%                                     │    │   │  │  │     │ │    │  0x00007f2d20505ce0:   cmp    $0x1029da0,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
           ╭                                 │    │   │  │  │     │ │    │  0x00007f2d20505ce7:   jne    0x00007f2d20505d01
   2.69%   │                                 │    │   │  │  │     │ │    │  0x00007f2d20505ce9:   xor    %r8d,%r8d                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │                                 │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c087c00::tableSwitch@302
           │                                 │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b400::delegate@14
           │                                 │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08a800::invoke@114
           │                                 │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b000::linkToTargetMethod@6
           │                                 │    │   │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
   2.63%   │ ↗ ↗ ↗ ↗ ↗ ↗ ↗ ↗ ↗ ↗ ↗ ↗ ↗ ↗ ↗   │    │   │  │  │     │ │    │  0x00007f2d20505cec:   movslq %r8d,%r8
   4.99%   │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505cef:   shl    $0x3,%r8
   2.63%   │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505cf3:   movabs $0x7f2d20505c08,%r9          ;   {section_word}
   0.21%   │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505cfd:   jmp    *(%r9,%r8,1)                 ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
           │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@16 (line 246)
   1.50%   ↘ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505d01:   cmp    $0x102ad98,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
            ╭│ │ │ │ │ │ │ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505d08:   jne    0x00007f2d20505d12
   2.15%    ││ │ │ │ │ │ │ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505d0a:   mov    $0x2,%r8d
   1.33%    │╰ │ │ │ │ │ │ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505d10:   jmp    0x00007f2d20505cec
   2.31%    ↘  │ │ │ │ │ │ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505d12:   data16 nopw 0x0(%rax,%rax,1)
   0.01%       │ │ │ │ │ │ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505d1c:   data16 data16 xchg %ax,%ax
               │ │ │ │ │ │ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505d20:   cmp    $0x102a190,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
   0.00%      ╭│ │ │ │ │ │ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505d27:   jne    0x00007f2d20505d31
   1.92%      ││ │ │ │ │ │ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505d29:   mov    $0x4,%r8d
   1.22%      │╰ │ │ │ │ │ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505d2f:   jmp    0x00007f2d20505cec
   1.22%      ↘  │ │ │ │ │ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505d31:   cmp    $0x102a998,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
                ╭│ │ │ │ │ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505d38:   jne    0x00007f2d20505d42
   1.97%        ││ │ │ │ │ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505d3a:   mov    $0x6,%r8d
   1.09%        │╰ │ │ │ │ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505d40:   jmp    0x00007f2d20505cec
   1.03%        ↘  │ │ │ │ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505d42:   cmp    $0x102ab98,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
                  ╭│ │ │ │ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505d49:   jne    0x00007f2d20505d53
   1.96%          ││ │ │ │ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505d4b:   mov    $0x8,%r8d
   1.34%          │╰ │ │ │ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505d51:   jmp    0x00007f2d20505cec
   0.94%          ↘  │ │ │ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505d53:   nopw   0x0(%rax,%rax,1)
   0.02%             │ │ │ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505d5c:   data16 data16 xchg %ax,%ax
                     │ │ │ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505d60:   cmp    $0x102a798,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
                    ╭│ │ │ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505d67:   jne    0x00007f2d20505d74
   1.90%            ││ │ │ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505d69:   mov    $0xa,%r8d
   1.22%            │╰ │ │ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505d6f:   jmp    0x00007f2d20505cec
   0.87%            ↘  │ │ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505d74:   nopl   0x0(%rax,%rax,1)
   0.03%               │ │ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505d7c:   data16 data16 xchg %ax,%ax
                       │ │ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505d80:   cmp    $0x102a598,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
                      ╭│ │ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505d87:   jne    0x00007f2d20505d94
   1.21%              ││ │ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505d89:   mov    $0xc,%r8d
   0.78%              │╰ │ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505d8f:   jmp    0x00007f2d20505cec
   1.21%              ↘  │ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505d94:   nopl   0x0(%rax,%rax,1)
   0.12%                 │ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505d9c:   data16 data16 xchg %ax,%ax
                         │ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505da0:   cmp    $0x102a390,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
                        ╭│ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505da7:   jne    0x00007f2d20505db4
   0.47%                ││ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505da9:   mov    $0xe,%r8d
   0.32%                │╰ │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505daf:   jmp    0x00007f2d20505cec
                        ↘  │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505db4:   mov    $0xffffffcd,%esi
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505db9:   mov    %r10,(%rsp)
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505dbd:   xchg   %ax,%ax
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505dbf:   call   0x00007f2d1ff8af00           ; ImmutableOopMap {[0]=Oop }
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ;*invokestatic profileBoolean {reexecute=1 rethrow=0 return_oop=0}
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - (reexecute) java.lang.invoke.LambdaForm$MH/0x00007f2c9c084c00::guard@46
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c084c00::guard@89
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c084c00::guard@89
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c084c00::guard@89
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c084c00::guard@89
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c084c00::guard@89
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c084c00::guard@89
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c085400::invoke@91
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c087c00::tableSwitch@135
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b400::delegate@14
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08a800::invoke@114
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b000::linkToTargetMethod@6
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ;   {runtime_call UncommonTrapBlob}
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505dc4:   nopl   0x534(%rax,%rax,1)           ;*invokestatic profileBoolean {reexecute=0 rethrow=0 return_oop=0}
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c084c00::guard@46
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c084c00::guard@89
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c084c00::guard@89
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c084c00::guard@89
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c084c00::guard@89
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c084c00::guard@89
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c084c00::guard@89
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c085400::invoke@91
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c087c00::tableSwitch@135
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b400::delegate@14
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08a800::invoke@114
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b000::linkToTargetMethod@6
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
                           │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ;   {other}
   0.02%                   │ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505dcc:   cmp    $0x102ad98,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
                          ╭│ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505dd3:   jne    0x00007f2d20505de5
   0.09%                  ││ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505dd5:   mov    $0x3,%r8d
   0.00%                  ││ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505ddb:   nopl   0x0(%rax,%rax,1)
   0.00%                  │╰ │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505de0:   jmp    0x00007f2d20505cec
                          ↘  │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505de5:   mov    $0xffffff66,%esi
                             │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505dea:   mov    %r10,(%rsp)
                             │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505dee:   mov    %r10,0x8(%rsp)
                             │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505df3:   call   0x00007f2d1ff8af00           ; ImmutableOopMap {[0]=Oop [8]=Oop }
                             │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ;*invokestatic linkToSpecial {reexecute=0 rethrow=0 return_oop=0}
                             │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$DMH/0x00007f2c9c008c00::invokeSpecial@11
                             │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c083800::invoke@21
                             │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c085400::invoke@33
                             │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c087c00::tableSwitch@171
                             │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b400::delegate@14
                             │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08a800::invoke@114
                             │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b000::linkToTargetMethod@6
                             │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
                             │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ;   {runtime_call UncommonTrapBlob}
                             │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505df8:   nopl   0x1000568(%rax,%rax,1)       ;*invokestatic linkToSpecial {reexecute=0 rethrow=0 return_oop=0}
                             │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$DMH/0x00007f2c9c008c00::invokeSpecial@11
                             │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c083800::invoke@21
                             │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c085400::invoke@33
                             │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c087c00::tableSwitch@171
                             │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b400::delegate@14
                             │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08a800::invoke@114
                             │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b000::linkToTargetMethod@6
                             │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
                             │ │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ;   {other}
   0.02%                     │ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505e00:   cmp    $0x102ab98,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
                            ╭│ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505e07:   jne    0x00007f2d20505e14
   0.12%                    ││ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505e09:   mov    $0x9,%r8d
                            │╰ │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505e0f:   jmp    0x00007f2d20505cec
                            ↘  │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505e14:   mov    $0xffffff66,%esi
                               │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505e19:   mov    %r10,(%rsp)
                               │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505e1d:   mov    %r10,0x8(%rsp)
                               │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505e22:   nop
                               │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505e23:   call   0x00007f2d1ff8af00           ; ImmutableOopMap {[0]=Oop [8]=Oop }
                               │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ;*invokestatic linkToSpecial {reexecute=0 rethrow=0 return_oop=0}
                               │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$DMH/0x00007f2c9c008c00::invokeSpecial@11
                               │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c083800::invoke@21
                               │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c085400::invoke@33
                               │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c087c00::tableSwitch@247
                               │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b400::delegate@14
                               │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08a800::invoke@114
                               │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b000::linkToTargetMethod@6
                               │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
                               │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ;   {runtime_call UncommonTrapBlob}
                               │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505e28:   nopl   0x2000598(%rax,%rax,1)       ;*invokestatic linkToSpecial {reexecute=0 rethrow=0 return_oop=0}
                               │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$DMH/0x00007f2c9c008c00::invokeSpecial@11
                               │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c083800::invoke@21
                               │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c085400::invoke@33
                               │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c087c00::tableSwitch@247
                               │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b400::delegate@14
                               │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08a800::invoke@114
                               │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b000::linkToTargetMethod@6
                               │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
                               │ │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ;   {other}
   0.02%                       │ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505e30:   cmp    $0x102a998,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
                              ╭│ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505e37:   jne    0x00007f2d20505e45
   0.09%                      ││ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505e39:   mov    $0x7,%r8d
   0.00%                      ││ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505e3f:   nop
                              │╰ │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505e40:   jmp    0x00007f2d20505cec
                              ↘  │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505e45:   mov    $0xffffff66,%esi
                                 │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505e4a:   mov    %r10,(%rsp)
                                 │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505e4e:   mov    %r10,0x8(%rsp)
                                 │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505e53:   call   0x00007f2d1ff8af00           ; ImmutableOopMap {[0]=Oop [8]=Oop }
                                 │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ;*invokestatic linkToSpecial {reexecute=0 rethrow=0 return_oop=0}
                                 │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$DMH/0x00007f2c9c008c00::invokeSpecial@11
                                 │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c083800::invoke@21
                                 │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c085400::invoke@33
                                 │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c087c00::tableSwitch@221
                                 │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b400::delegate@14
                                 │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08a800::invoke@114
                                 │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b000::linkToTargetMethod@6
                                 │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
                                 │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ;   {runtime_call UncommonTrapBlob}
                                 │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505e58:   nopl   0x30005c8(%rax,%rax,1)       ;*invokestatic linkToSpecial {reexecute=0 rethrow=0 return_oop=0}
                                 │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$DMH/0x00007f2c9c008c00::invokeSpecial@11
                                 │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c083800::invoke@21
                                 │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c085400::invoke@33
                                 │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c087c00::tableSwitch@221
                                 │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b400::delegate@14
                                 │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08a800::invoke@114
                                 │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b000::linkToTargetMethod@6
                                 │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
                                 │ │ │ │ │   │    │   │  │  │     │ │    │                                                            ;   {other}
   0.11%                         │ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505e60:   cmp    $0x102a798,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
                                ╭│ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505e67:   jne    0x00007f2d20505e74
   0.01%                        ││ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505e69:   mov    $0xb,%r8d
   0.02%                        │╰ │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505e6f:   jmp    0x00007f2d20505cec
                                ↘  │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505e74:   mov    $0xffffff66,%esi
                                   │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505e79:   mov    %r10,(%rsp)
                                   │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505e7d:   mov    %r10,0x8(%rsp)
                                   │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505e82:   nop
                                   │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505e83:   call   0x00007f2d1ff8af00           ; ImmutableOopMap {[0]=Oop [8]=Oop }
                                   │ │ │ │   │    │   │  │  │     │ │    │                                                            ;*invokestatic linkToSpecial {reexecute=0 rethrow=0 return_oop=0}
                                   │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$DMH/0x00007f2c9c008c00::invokeSpecial@11
                                   │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c083800::invoke@21
                                   │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c085400::invoke@33
                                   │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c087c00::tableSwitch@273
                                   │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b400::delegate@14
                                   │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08a800::invoke@114
                                   │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b000::linkToTargetMethod@6
                                   │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
                                   │ │ │ │   │    │   │  │  │     │ │    │                                                            ;   {runtime_call UncommonTrapBlob}
                                   │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505e88:   nopl   0x40005f8(%rax,%rax,1)       ;*invokestatic linkToSpecial {reexecute=0 rethrow=0 return_oop=0}
                                   │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$DMH/0x00007f2c9c008c00::invokeSpecial@11
                                   │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c083800::invoke@21
                                   │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c085400::invoke@33
                                   │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c087c00::tableSwitch@273
                                   │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b400::delegate@14
                                   │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08a800::invoke@114
                                   │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b000::linkToTargetMethod@6
                                   │ │ │ │   │    │   │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
                                   │ │ │ │   │    │   │  │  │     │ │    │                                                            ;   {other}
   0.03%                           │ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505e90:   cmp    $0x102a190,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
                                  ╭│ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505e97:   jne    0x00007f2d20505ea5
   0.11%                          ││ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505e99:   mov    $0x5,%r8d
   0.00%                          ││ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505e9f:   nop
                                  │╰ │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505ea0:   jmp    0x00007f2d20505cec
                                  ↘  │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505ea5:   mov    $0xffffff66,%esi
                                     │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505eaa:   mov    %r10,(%rsp)
                                     │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505eae:   mov    %r10,0x8(%rsp)
                                     │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505eb3:   call   0x00007f2d1ff8af00           ; ImmutableOopMap {[0]=Oop [8]=Oop }
                                     │ │ │   │    │   │  │  │     │ │    │                                                            ;*invokestatic linkToSpecial {reexecute=0 rethrow=0 return_oop=0}
                                     │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$DMH/0x00007f2c9c008c00::invokeSpecial@11
                                     │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c083800::invoke@21
                                     │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c085400::invoke@33
                                     │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c087c00::tableSwitch@195
                                     │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b400::delegate@14
                                     │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08a800::invoke@114
                                     │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b000::linkToTargetMethod@6
                                     │ │ │   │    │   │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
                                     │ │ │   │    │   │  │  │     │ │    │                                                            ;   {runtime_call UncommonTrapBlob}
                                     │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505eb8:   nopl   0x5000628(%rax,%rax,1)       ;*invokestatic linkToSpecial {reexecute=0 rethrow=0 return_oop=0}
                                     │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$DMH/0x00007f2c9c008c00::invokeSpecial@11
                                     │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c083800::invoke@21
                                     │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c085400::invoke@33
                                     │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c087c00::tableSwitch@195
                                     │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b400::delegate@14
                                     │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08a800::invoke@114
                                     │ │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b000::linkToTargetMethod@6
                                     │ │ │   │    │   │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
                                     │ │ │   │    │   │  │  │     │ │    │                                                            ;   {other}
   0.09%                             │ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505ec0:   cmp    $0x102a598,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
                                    ╭│ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505ec7:   jne    0x00007f2d20505ed4
   0.02%                            ││ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505ec9:   mov    $0xd,%r8d
                                    │╰ │ │   │    │   │  │  │     │ │    │  0x00007f2d20505ecf:   jmp    0x00007f2d20505cec
                                    ↘  │ │   │    │   │  │  │     │ │    │  0x00007f2d20505ed4:   mov    $0xffffff66,%esi
                                       │ │   │    │   │  │  │     │ │    │  0x00007f2d20505ed9:   mov    %r10,(%rsp)
                                       │ │   │    │   │  │  │     │ │    │  0x00007f2d20505edd:   mov    %r10,0x8(%rsp)
                                       │ │   │    │   │  │  │     │ │    │  0x00007f2d20505ee2:   nop
                                       │ │   │    │   │  │  │     │ │    │  0x00007f2d20505ee3:   call   0x00007f2d1ff8af00           ; ImmutableOopMap {[0]=Oop [8]=Oop }
                                       │ │   │    │   │  │  │     │ │    │                                                            ;*invokestatic linkToSpecial {reexecute=0 rethrow=0 return_oop=0}
                                       │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$DMH/0x00007f2c9c008c00::invokeSpecial@11
                                       │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c083800::invoke@21
                                       │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c085400::invoke@33
                                       │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c087c00::tableSwitch@299
                                       │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b400::delegate@14
                                       │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08a800::invoke@114
                                       │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b000::linkToTargetMethod@6
                                       │ │   │    │   │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
                                       │ │   │    │   │  │  │     │ │    │                                                            ;   {runtime_call UncommonTrapBlob}
                                       │ │   │    │   │  │  │     │ │    │  0x00007f2d20505ee8:   nopl   0x6000658(%rax,%rax,1)       ;*invokestatic linkToSpecial {reexecute=0 rethrow=0 return_oop=0}
                                       │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$DMH/0x00007f2c9c008c00::invokeSpecial@11
                                       │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c083800::invoke@21
                                       │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c085400::invoke@33
                                       │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c087c00::tableSwitch@299
                                       │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b400::delegate@14
                                       │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08a800::invoke@114
                                       │ │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b000::linkToTargetMethod@6
                                       │ │   │    │   │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
                                       │ │   │    │   │  │  │     │ │    │                                                            ;   {other}
   0.02%                               │ │   │    │   │  │  │     │ │    │  0x00007f2d20505ef0:   cmp    $0x1029da0,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
                                      ╭│ │   │    │   │  │  │     │ │    │  0x00007f2d20505ef7:   jne    0x00007f2d20505f05
   0.10%                              ││ │   │    │   │  │  │     │ │    │  0x00007f2d20505ef9:   mov    $0x1,%r8d
                                      ││ │   │    │   │  │  │     │ │    │  0x00007f2d20505eff:   nop
                                      │╰ │   │    │   │  │  │     │ │    │  0x00007f2d20505f00:   jmp    0x00007f2d20505cec
                                      ↘  │   │    │   │  │  │     │ │    │  0x00007f2d20505f05:   mov    $0xffffff66,%esi
                                         │   │    │   │  │  │     │ │    │  0x00007f2d20505f0a:   mov    %r10,(%rsp)
                                         │   │    │   │  │  │     │ │    │  0x00007f2d20505f0e:   mov    %r10,0x8(%rsp)
                                         │   │    │   │  │  │     │ │    │  0x00007f2d20505f13:   call   0x00007f2d1ff8af00           ; ImmutableOopMap {[0]=Oop [8]=Oop }
                                         │   │    │   │  │  │     │ │    │                                                            ;*invokestatic linkToSpecial {reexecute=0 rethrow=0 return_oop=0}
                                         │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$DMH/0x00007f2c9c008c00::invokeSpecial@11
                                         │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c083800::invoke@21
                                         │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c085400::invoke@33
                                         │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c087c00::tableSwitch@147
                                         │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b400::delegate@14
                                         │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08a800::invoke@114
                                         │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b000::linkToTargetMethod@6
                                         │   │    │   │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
                                         │   │    │   │  │  │     │ │    │                                                            ;   {runtime_call UncommonTrapBlob}
                                         │   │    │   │  │  │     │ │    │  0x00007f2d20505f18:   nopl   0x7000688(%rax,%rax,1)       ;*invokestatic linkToSpecial {reexecute=0 rethrow=0 return_oop=0}
                                         │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$DMH/0x00007f2c9c008c00::invokeSpecial@11
                                         │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c083800::invoke@21
                                         │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c085400::invoke@33
                                         │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c087c00::tableSwitch@147
                                         │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b400::delegate@14
                                         │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08a800::invoke@114
                                         │   │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b000::linkToTargetMethod@6
                                         │   │    │   │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
                                         │   │    │   │  │  │     │ │    │                                                            ;   {other}
   0.19%                                 │   │    │   │  │  │     │ │    │  0x00007f2d20505f20:   cmp    $0x102a390,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
                                        ╭│   │    │   │  │  │     │ │    │  0x00007f2d20505f27:   jne    0x00007f2d20505f34
   0.03%                                ││   │    │   │  │  │     │ │    │  0x00007f2d20505f29:   mov    $0xf,%r8d
   0.00%                                │╰   │    │   │  │  │     │ │    │  0x00007f2d20505f2f:   jmp    0x00007f2d20505cec
                                        ↘    │    │   │  │  │     │ │    │  0x00007f2d20505f34:   mov    $0xffffff66,%esi
                                             │    │   │  │  │     │ │    │  0x00007f2d20505f39:   mov    %r10,(%rsp)
                                             │    │   │  │  │     │ │    │  0x00007f2d20505f3d:   mov    %r10,0x8(%rsp)
                                             │    │   │  │  │     │ │    │  0x00007f2d20505f42:   nop
                                             │    │   │  │  │     │ │    │  0x00007f2d20505f43:   call   0x00007f2d1ff8af00           ; ImmutableOopMap {[0]=Oop [8]=Oop }
                                             │    │   │  │  │     │ │    │                                                            ;*invokestatic linkToSpecial {reexecute=0 rethrow=0 return_oop=0}
                                             │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$DMH/0x00007f2c9c008c00::invokeSpecial@11
                                             │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c083800::invoke@21
                                             │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c085400::invoke@33
                                             │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c087c00::tableSwitch@325
                                             │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b400::delegate@14
                                             │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08a800::invoke@114
                                             │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b000::linkToTargetMethod@6
                                             │    │   │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
                                             │    │   │  │  │     │ │    │                                                            ;   {runtime_call UncommonTrapBlob}
                                             │    │   │  │  │     │ │    │  0x00007f2d20505f48:   nopl   0x80006b8(%rax,%rax,1)       ;*invokestatic linkToSpecial {reexecute=0 rethrow=0 return_oop=0}
                                             │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$DMH/0x00007f2c9c008c00::invokeSpecial@11
                                             │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c083800::invoke@21
                                             │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c085400::invoke@33
                                             │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c087c00::tableSwitch@325
                                             │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b400::delegate@14
                                             │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08a800::invoke@114
                                             │    │   │  │  │     │ │    │                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f2c9c08b000::linkToTargetMethod@6
                                             │    │   │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
                                             │    │   │  │  │     │ │    │                                                            ;   {other}
   0.25%                                     │    │   │  │  │     │ │    │  0x00007f2d20505f50:   cmp    $0x102a390,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
                                             │    │   │  │  │     │ │    │  0x00007f2d20505f57:   jne    0x00007f2d20506294           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                             │    │   │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@471 (line 262)
   0.01%                                     │    │   │  │  │     │ │    │  0x00007f2d20505f5d:   mov    0xc(%r10),%r11d              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                             │    │   │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@478 (line 262)
   0.01%                                     │    │   │  │  │     │ │    │  0x00007f2d20505f61:   mov    0x14(%r12,%r11,8),%r10d      ; implicit exception: dispatches to 0x00007f2d20506440
                                             │    │   │  │  │     │ │    │                                                            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                             │    │   │  │  │     │ │    │                                                            ; - java.lang.String::length@1 (line 1519)
                                             │    │   │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@481 (line 262)
   0.26%                                     │    │   │  │  │     │ │    │  0x00007f2d20505f66:   mov    0xc(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007f2d20506454
   0.60%                                     │    │   │  │  │     │ │    │  0x00007f2d20505f6b:   movsbl 0x10(%r12,%r11,8),%r10d
   0.00%                                     │    │   │  │  │     │ │    │  0x00007f2d20505f71:   sarx   %r10d,%r8d,%eax              ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                             │    │   │  │  │     │ │    │                                                            ; - java.lang.String::length@9 (line 1519)
                                             │    │   │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@481 (line 262)
   0.17%                                  ╭  │    │   │  │  │     │ │    │  0x00007f2d20505f76:   jmp    0x00007f2d20506256
   1.14%                                  │  │    │   │  │  │     │ │    │  0x00007f2d20505f7b:   nopl   0x0(%rax,%rax,1)
   0.00%                                  │  │    │   │  │  │     │ │    │  0x00007f2d20505f80:   cmp    $0x102a190,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
                                          │  │    │   │  │  │     │ │    │  0x00007f2d20505f87:   jne    0x00007f2d205062ac
   0.02%                                  │  │    │   │  │  │     │ │    │  0x00007f2d20505f8d:   mov    %r10,%r8                     ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                          │  │    │   │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@198 (line 251)
                                          │  │    │   │  │  │     │ │    │  0x00007f2d20505f90:   movswl 0xc(%r8),%eax                ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                          │  │    │   │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@205 (line 251)
   0.33%                                  │  │    │   │  │  │     │ │    │  0x00007f2d20505f95:   test   $0x1,%al
                                          │╭ │    │   │  │  │     │ │    │  0x00007f2d20505f97:   jne    0x00007f2d20505fa5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                          ││ │    │   │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@210 (line 251)
   0.19%                                  ││ │    │   │  │  │     │ │    │  0x00007f2d20505f99:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                          ││ │    │   │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@224 (line 251)
   0.02%                                  ││ │    │   │  │  │     │ │    │  0x00007f2d20505f9b:   nopl   0x0(%rax,%rax,1)
                                          ││╭│    │   │  │  │     │ │    │  0x00007f2d20505fa0:   jmp    0x00007f2d20506256
   0.13%                                  │↘││    │   │  │  │     │ │    │  0x00007f2d20505fa5:   mov    0x458(%r15),%r9              ; ImmutableOopMap {r10=Oop r8=Oop }
                                          │ ││    │   │  │  │     │ │    │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                          │ ││    │   │  │  │     │ │    │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@215 (line 251)
   0.04%                                  │ ││    │   │  │  │     │ │    │  0x00007f2d20505fac:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                          │ ││    │   │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@215 (line 251)
                                          │ ││    │   │  │  │     │ │    │                                                            ;   {poll}
   0.28%                                  │ ││    │   │  │  │     │ │    │  0x00007f2d20505faf:   mov    $0x5,%r9d
                                          │ │╰    │   │  │  │     │ │    │  0x00007f2d20505fb5:   jmp    0x00007f2d20505cc7
   0.20%                                  │ │     │   │  │  │     │ │    │  0x00007f2d20505fba:   nopw   0x0(%rax,%rax,1)
   0.01%                                  │ │     │   │  │  │     │ │    │  0x00007f2d20505fc0:   cmp    $0x102a598,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
                                          │ │     │   │  │  │     │ │    │  0x00007f2d20505fc7:   jne    0x00007f2d205063e4           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                          │ │     │   │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@418 (line 260)
   0.01%                                  │ │     │   │  │  │     │ │    │  0x00007f2d20505fcd:   vmovss 0xc(%r10),%xmm1
   0.04%                                  │ │     │   │  │  │     │ │    │  0x00007f2d20505fd3:   vcvttss2si %xmm1,%eax
   0.49%                                  │ │     │   │  │  │     │ │    │  0x00007f2d20505fd7:   cmp    $0x80000000,%eax
                                          │ │     │   │  │  │     │ │    │  0x00007f2d20505fdc:   je     0x00007f2d205065b6           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
                                          │ │     │   │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@428 (line 260)
   0.09%                                  │ │ ╭   │   │  │  │     │ │    │  0x00007f2d20505fe2:   jmp    0x00007f2d20506256
   0.40%                                  │ │ │   │   │  │  │     │ │    │  0x00007f2d20505fe7:   cmp    $0x1029da0,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
                                          │ │ │   │   │  │  │     │ │    │  0x00007f2d20505fee:   jne    0x00007f2d205063b4           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ │   │   │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@135 (line 248)
   0.01%                                  │ │ │   │   │  │  │     │ │    │  0x00007f2d20505ff4:   mov    0xc(%r10),%eax               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ │   │   │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@142 (line 248)
   0.01%                                  │ │ │╭  │   │  │  │     │ │    │  0x00007f2d20505ff8:   jmp    0x00007f2d20506256
   1.16%                                  │ │ ││  │   │  │  │     │ │    │  0x00007f2d20505ffd:   data16 xchg %ax,%ax
   0.01%                                  │ │ ││  │   │  │  │     │ │    │  0x00007f2d20506000:   cmp    $0x102a998,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
                                          │ │ ││  │   │  │  │     │ │    │  0x00007f2d20506007:   jne    0x00007f2d2050633c
   0.02%                                  │ │ ││  │   │  │  │     │ │    │  0x00007f2d2050600d:   mov    %r10,%r8                     ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││  │   │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@243 (line 253)
   0.01%                                  │ │ ││  │   │  │  │     │ │    │  0x00007f2d20506010:   movsbl 0xc(%r8),%eax                ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││  │   │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@250 (line 253)
   0.43%                                  │ │ ││  │   │  │  │     │ │    │  0x00007f2d20506015:   test   $0x1,%al
                                          │ │ ││╭ │   │  │  │     │ │    │  0x00007f2d20506017:   jne    0x00007f2d20506025           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ │││ │   │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@255 (line 253)
   0.11%                                  │ │ │││ │   │  │  │     │ │    │  0x00007f2d20506019:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ │││ │   │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@270 (line 253)
   0.03%                                  │ │ │││ │   │  │  │     │ │    │  0x00007f2d2050601b:   nopl   0x0(%rax,%rax,1)
                                          │ │ │││╭│   │  │  │     │ │    │  0x00007f2d20506020:   jmp    0x00007f2d20506256
   0.10%                                  │ │ ││↘││   │  │  │     │ │    │  0x00007f2d20506025:   mov    0x458(%r15),%r9              ; ImmutableOopMap {r10=Oop r8=Oop }
                                          │ │ ││ ││   │  │  │     │ │    │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                          │ │ ││ ││   │  │  │     │ │    │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@261 (line 253)
   0.03%                                  │ │ ││ ││   │  │  │     │ │    │  0x00007f2d2050602c:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ ││   │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@261 (line 253)
                                          │ │ ││ ││   │  │  │     │ │    │                                                            ;   {poll}
   0.40%                                  │ │ ││ ││   │  │  │     │ │    │  0x00007f2d2050602f:   mov    $0x7,%r9d
                                          │ │ ││ │╰   │  │  │     │ │    │  0x00007f2d20506035:   jmp    0x00007f2d20505cc7
   0.36%                                  │ │ ││ │    │  │  │     │ │    │  0x00007f2d2050603a:   nopw   0x0(%rax,%rax,1)
   0.01%                                  │ │ ││ │    │  │  │     │ │    │  0x00007f2d20506040:   cmp    $0x102a190,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
                                          │ │ ││ │    │  │  │     │ │    │  0x00007f2d20506047:   jne    0x00007f2d20506384           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │    │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@229 (line 252)
   0.00%                                  │ │ ││ │    │  │  │     │ │    │  0x00007f2d2050604d:   movswl 0xc(%r10),%eax               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │    │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@236 (line 252)
   0.12%                                  │ │ ││ │ ╭  │  │  │     │ │    │  0x00007f2d20506052:   jmp    0x00007f2d20506256
   1.12%                                  │ │ ││ │ │  │  │  │     │ │    │  0x00007f2d20506057:   nopw   0x0(%rax,%rax,1)
   0.01%                                  │ │ ││ │ │  │  │  │     │ │    │  0x00007f2d20506060:   cmp    $0x102ab98,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
                                          │ │ ││ │ │  │  │  │     │ │    │  0x00007f2d20506067:   jne    0x00007f2d20506324
   0.02%                                  │ │ ││ │ │  │  │  │     │ │    │  0x00007f2d2050606d:   mov    %r10,%r8                     ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │ │  │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@289 (line 255)
   0.01%                                  │ │ ││ │ │  │  │  │     │ │    │  0x00007f2d20506070:   movzwl 0xc(%r8),%eax                ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │ │  │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@296 (line 255)
   0.31%                                  │ │ ││ │ │  │  │  │     │ │    │  0x00007f2d20506075:   test   $0x1,%al
                                          │ │ ││ │ │╭ │  │  │     │ │    │  0x00007f2d20506077:   jne    0x00007f2d20506085           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │ ││ │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@301 (line 255)
   0.15%                                  │ │ ││ │ ││ │  │  │     │ │    │  0x00007f2d20506079:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │ ││ │  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@316 (line 255)
   0.04%                                  │ │ ││ │ ││ │  │  │     │ │    │  0x00007f2d2050607b:   nopl   0x0(%rax,%rax,1)
   0.00%                                  │ │ ││ │ ││╭│  │  │     │ │    │  0x00007f2d20506080:   jmp    0x00007f2d20506256
   0.16%                                  │ │ ││ │ │↘││  │  │     │ │    │  0x00007f2d20506085:   mov    0x458(%r15),%r9              ; ImmutableOopMap {r10=Oop r8=Oop }
                                          │ │ ││ │ │ ││  │  │     │ │    │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ ││  │  │     │ │    │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@307 (line 255)
   0.09%                                  │ │ ││ │ │ ││  │  │     │ │    │  0x00007f2d2050608c:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ ││  │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@307 (line 255)
                                          │ │ ││ │ │ ││  │  │     │ │    │                                                            ;   {poll}
   0.30%                                  │ │ ││ │ │ ││  │  │     │ │    │  0x00007f2d2050608f:   mov    $0x9,%r9d
                                          │ │ ││ │ │ │╰  │  │     │ │    │  0x00007f2d20506095:   jmp    0x00007f2d20505cc7
   0.14%                                  │ │ ││ │ │ │   │  │     │ │    │  0x00007f2d2050609a:   nopw   0x0(%rax,%rax,1)
   0.00%                                  │ │ ││ │ │ │   │  │     │ │    │  0x00007f2d205060a0:   cmp    $0x102a798,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
                                          │ │ ││ │ │ │   │  │     │ │    │  0x00007f2d205060a7:   jne    0x00007f2d205063cc           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ │   │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@369 (line 258)
   0.02%                                  │ │ ││ │ │ │   │  │     │ │    │  0x00007f2d205060ad:   vmovsd 0x10(%r10),%xmm0
   0.09%                                  │ │ ││ │ │ │   │  │     │ │    │  0x00007f2d205060b3:   vcvttsd2si %xmm0,%eax
   0.45%                                  │ │ ││ │ │ │   │  │     │ │    │  0x00007f2d205060b7:   cmp    $0x80000000,%eax
                                          │ │ ││ │ │ │   │  │     │ │    │  0x00007f2d205060bc:   je     0x00007f2d205065a2           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ │   │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@379 (line 258)
   0.08%                                  │ │ ││ │ │ │ ╭ │  │     │ │    │  0x00007f2d205060c2:   jmp    0x00007f2d20506256
   1.08%                                  │ │ ││ │ │ │ │ │  │     │ │    │  0x00007f2d205060c7:   cmp    $0x102a798,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
                                          │ │ ││ │ │ │ │ │  │     │ │    │  0x00007f2d205060ce:   jne    0x00007f2d2050630c
   0.02%                                  │ │ ││ │ │ │ │ │  │     │ │    │  0x00007f2d205060d4:   mov    %r10,%r8                     ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ │ │ │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@335 (line 257)
   0.02%                                  │ │ ││ │ │ │ │ │  │     │ │    │  0x00007f2d205060d7:   vmovsd 0x10(%r8),%xmm0
   0.48%                                  │ │ ││ │ │ │ │ │  │     │ │    │  0x00007f2d205060dd:   vcvttsd2si %xmm0,%eax
   1.64%                                  │ │ ││ │ │ │ │ │  │     │ │    │  0x00007f2d205060e1:   cmp    $0x80000000,%eax
                                          │ │ ││ │ │ │ │ │  │     │ │    │  0x00007f2d205060e6:   je     0x00007f2d2050658e           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ │ │ │  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@345 (line 257)
   0.04%                                  │ │ ││ │ │ │ │ │  │     │ │    │  0x00007f2d205060ec:   test   $0x1,%al
                                          │ │ ││ │ │ │ │╭│  │     │ │    │  0x00007f2d205060ee:   je     0x00007f2d20506105           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ │ │││  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@348 (line 257)
   0.06%                                  │ │ ││ │ │ │ │││  │     │ │    │  0x00007f2d205060f0:   mov    0x458(%r15),%r9              ; ImmutableOopMap {r10=Oop r8=Oop }
                                          │ │ ││ │ │ │ │││  │     │ │    │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ │ │││  │     │ │    │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@354 (line 257)
   0.14%                                  │ │ ││ │ │ │ │││  │     │ │    │  0x00007f2d205060f7:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ │ │││  │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@354 (line 257)
                                          │ │ ││ │ │ │ │││  │     │ │    │                                                            ;   {poll}
   0.03%                                  │ │ ││ │ │ │ │││  │     │ │    │  0x00007f2d205060fa:   mov    $0xb,%r9d
   0.01%                                  │ │ ││ │ │ │ ││╰  │     │ │    │  0x00007f2d20506100:   jmp    0x00007f2d20505cc7
   0.12%                                  │ │ ││ │ │ │ │↘   │     │ │    │  0x00007f2d20506105:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ │ │    │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@364 (line 257)
   0.09%                                  │ │ ││ │ │ │ │  ╭ │     │ │    │  0x00007f2d20506107:   jmp    0x00007f2d20506256
   1.10%                                  │ │ ││ │ │ │ │  │ │     │ │    │  0x00007f2d2050610c:   cmp    $0x1029da0,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
                                          │ │ ││ │ │ │ │  │ │     │ │    │  0x00007f2d20506113:   jne    0x00007f2d205062dc
   0.02%                                  │ │ ││ │ │ │ │  │ │     │ │    │  0x00007f2d20506119:   mov    %r10,%r8                     ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ │ │  │ │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@107 (line 247)
   0.00%                                  │ │ ││ │ │ │ │  │ │     │ │    │  0x00007f2d2050611c:   mov    0xc(%r8),%eax                ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ │ │  │ │     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@112 (line 247)
   0.41%                                  │ │ ││ │ │ │ │  │ │     │ │    │  0x00007f2d20506120:   test   $0x1,%al
                                          │ │ ││ │ │ │ │  │╭│     │ │    │  0x00007f2d20506122:   je     0x00007f2d20506139           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ │ │  │││     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@117 (line 247)
   0.12%                                  │ │ ││ │ │ │ │  │││     │ │    │  0x00007f2d20506124:   mov    0x458(%r15),%r9              ; ImmutableOopMap {r10=Oop r8=Oop }
                                          │ │ ││ │ │ │ │  │││     │ │    │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ │ │  │││     │ │    │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@122 (line 247)
   0.01%                                  │ │ ││ │ │ │ │  │││     │ │    │  0x00007f2d2050612b:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ │ │  │││     │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@122 (line 247)
                                          │ │ ││ │ │ │ │  │││     │ │    │                                                            ;   {poll}
   0.28%                                  │ │ ││ │ │ │ │  │││     │ │    │  0x00007f2d2050612e:   mov    $0x1,%r9d
                                          │ │ ││ │ │ │ │  ││╰     │ │    │  0x00007f2d20506134:   jmp    0x00007f2d20505cc7
   0.09%                                  │ │ ││ │ │ │ │  │↘      │ │    │  0x00007f2d20506139:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ │ │  │       │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@130 (line 247)
   0.00%                                  │ │ ││ │ │ │ │  │       │ │    │  0x00007f2d2050613b:   nopl   0x0(%rax,%rax,1)
   0.00%                                  │ │ ││ │ │ │ │  │  ╭    │ │    │  0x00007f2d20506140:   jmp    0x00007f2d20506256
   0.35%                                  │ │ ││ │ │ │ │  │  │    │ │    │  0x00007f2d20506145:   cmp    $0x102a998,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
                                          │ │ ││ │ │ │ │  │  │    │ │    │  0x00007f2d2050614c:   jne    0x00007f2d2050636c           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ │ │  │  │    │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@275 (line 254)
   0.00%                                  │ │ ││ │ │ │ │  │  │    │ │    │  0x00007f2d20506152:   movsbl 0xc(%r10),%eax               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ │ │  │  │    │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@282 (line 254)
   0.01%                                  │ │ ││ │ │ │ │  │  │╭   │ │    │  0x00007f2d20506157:   jmp    0x00007f2d20506256
   0.24%                                  │ │ ││ │ │ │ │  │  ││   │ │    │  0x00007f2d2050615c:   nopl   0x0(%rax)
                                          │ │ ││ │ │ │ │  │  ││   │ │    │  0x00007f2d20506160:   cmp    $0x102ab98,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
                                          │ │ ││ │ │ │ │  │  ││   │ │    │  0x00007f2d20506167:   jne    0x00007f2d20506354           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ │ │  │  ││   │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@321 (line 256)
   0.01%                                  │ │ ││ │ │ │ │  │  ││   │ │    │  0x00007f2d2050616d:   movzwl 0xc(%r10),%eax               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ │ │  │  ││   │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@328 (line 256)
   0.09%                                  │ │ ││ │ │ │ │  │  ││╭  │ │    │  0x00007f2d20506172:   jmp    0x00007f2d20506256
   1.25%                                  │ │ ││ │ │ │ │  │  │││  │ │    │  0x00007f2d20506177:   nopw   0x0(%rax,%rax,1)
   0.01%                                  │ │ ││ │ │ │ │  │  │││  │ │    │  0x00007f2d20506180:   cmp    $0x102ad98,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
                                          │ │ ││ │ │ │ │  │  │││  │ │    │  0x00007f2d20506187:   jne    0x00007f2d205062c4
   0.02%                                  │ │ ││ │ │ │ │  │  │││  │ │    │  0x00007f2d2050618d:   mov    %r10,%r8                     ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ │ │  │  │││  │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@149 (line 249)
   0.00%                                  │ │ ││ │ │ │ │  │  │││  │ │    │  0x00007f2d20506190:   mov    0x10(%r8),%r9                ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ │ │  │  │││  │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@156 (line 249)
   0.41%                                  │ │ ││ │ │ │ │  │  │││  │ │    │  0x00007f2d20506194:   test   $0x1,%r9b
                                          │ │ ││ │ │ │ │  │  │││╭ │ │    │  0x00007f2d20506198:   jne    0x00007f2d205061a5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ │ │  │  ││││ │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@163 (line 249)
   0.14%                                  │ │ ││ │ │ │ │  │  ││││ │ │    │  0x00007f2d2050619a:   mov    %r9d,%eax
   0.00%                                  │ │ ││ │ │ │ │  │  ││││ │ │    │  0x00007f2d2050619d:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ │ │  │  ││││ │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@178 (line 249)
   0.02%                                  │ │ ││ │ │ │ │  │  ││││ │ │    │  0x00007f2d2050619f:   nop
                                          │ │ ││ │ │ │ │  │  ││││╭│ │    │  0x00007f2d205061a0:   jmp    0x00007f2d20506256
   0.12%                                  │ │ ││ │ │ │ │  │  │││↘││ │    │  0x00007f2d205061a5:   mov    0x458(%r15),%r9              ; ImmutableOopMap {r10=Oop r8=Oop }
                                          │ │ ││ │ │ │ │  │  │││ ││ │    │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ │ │  │  │││ ││ │    │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@168 (line 249)
   0.01%                                  │ │ ││ │ │ │ │  │  │││ ││ │    │  0x00007f2d205061ac:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ │ │  │  │││ ││ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@168 (line 249)
                                          │ │ ││ │ │ │ │  │  │││ ││ │    │                                                            ;   {poll}
   0.30%                                  │ │ ││ │ │ │ │  │  │││ ││ │    │  0x00007f2d205061af:   mov    $0x3,%r9d
                                          │ │ ││ │ │ │ │  │  │││ │╰ │    │  0x00007f2d205061b5:   jmp    0x00007f2d20505cc7
   0.75%                                  │ │ ││ │ │ │ │  │  │││ │  │    │  0x00007f2d205061ba:   nopw   0x0(%rax,%rax,1)
   0.01%                                  │ │ ││ │ │ │ │  │  │││ │  │    │  0x00007f2d205061c0:   cmp    $0x102a598,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
                                          │ │ ││ │ │ │ │  │  │││ │  │    │  0x00007f2d205061c7:   jne    0x00007f2d205062f4
   0.08%                                  │ │ ││ │ │ │ │  │  │││ │  │    │  0x00007f2d205061cd:   mov    %r10,%r8                     ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ │ │  │  │││ │  │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@384 (line 259)
                                          │ │ ││ │ │ │ │  │  │││ │  │    │  0x00007f2d205061d0:   vmovss 0xc(%r8),%xmm0
   0.50%                                  │ │ ││ │ │ │ │  │  │││ │  │    │  0x00007f2d205061d6:   vcvttss2si %xmm0,%eax
   1.49%                                  │ │ ││ │ │ │ │  │  │││ │  │    │  0x00007f2d205061da:   cmp    $0x80000000,%eax
                                          │ │ ││ │ │ │ │  │  │││ │  │    │  0x00007f2d205061df:   je     0x00007f2d2050657a           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ │ │  │  │││ │  │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@394 (line 259)
   0.01%                                  │ │ ││ │ │ │ │  │  │││ │  │    │  0x00007f2d205061e5:   test   $0x1,%al
                                          │ │ ││ │ │ │ │  │  │││ │ ╭│    │  0x00007f2d205061e7:   je     0x00007f2d205061fe           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ │ │  │  │││ │ ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@397 (line 259)
   0.07%                                  │ │ ││ │ │ │ │  │  │││ │ ││    │  0x00007f2d205061e9:   mov    0x458(%r15),%r9              ; ImmutableOopMap {r10=Oop r8=Oop }
                                          │ │ ││ │ │ │ │  │  │││ │ ││    │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ │ │  │  │││ │ ││    │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@403 (line 259)
   0.14%                                  │ │ ││ │ │ │ │  │  │││ │ ││    │  0x00007f2d205061f0:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ │ │  │  │││ │ ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@403 (line 259)
                                          │ │ ││ │ │ │ │  │  │││ │ ││    │                                                            ;   {poll}
   0.02%                                  │ │ ││ │ │ │ │  │  │││ │ ││    │  0x00007f2d205061f3:   mov    $0xd,%r9d
                                          │ │ ││ │ │ │ │  │  │││ │ │╰    │  0x00007f2d205061f9:   jmp    0x00007f2d20505cc7
   0.11%                                  │ │ ││ │ │ │ │  │  │││ │ ↘     │  0x00007f2d205061fe:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ │ │  │  │││ │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@413 (line 259)
   0.13%                                  │ │ ││ │ │ │ │  │  │││ │   ╭   │  0x00007f2d20506200:   jmp    0x00007f2d20506256
   0.38%                                  │ │ ││ │ │ │ │  │  │││ │   │   │  0x00007f2d20506205:   cmp    $0x102ad98,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
                                          │ │ ││ │ │ │ │  │  │││ │   │   │  0x00007f2d2050620c:   jne    0x00007f2d2050639c           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ │ │  │  │││ │   │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@183 (line 250)
   0.01%                                  │ │ ││ │ │ │ │  │  │││ │   │   │  0x00007f2d20506212:   mov    0x10(%r10),%r10
   0.09%                                  │ │ ││ │ │ │ │  │  │││ │   │   │  0x00007f2d20506216:   mov    %r10d,%eax                   ;*l2i {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ │ │  │  │││ │   │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@193 (line 250)
                                          │ │ ││ │ │ │ │  │  │││ │   │╭  │  0x00007f2d20506219:   jmp    0x00007f2d20506256
   0.75%                                  │ │ ││ │ │ │ │  │  │││ │   ││  │  0x00007f2d2050621b:   nopl   0x0(%rax,%rax,1)
   0.01%                                  │ │ ││ │ │ │ │  │  │││ │   ││  │  0x00007f2d20506220:   cmp    $0x102a390,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
                                          │ │ ││ │ │ │ │  │  │││ │   ││╭ │  0x00007f2d20506227:   jne    0x00007f2d2050627e
   0.10%                                  │ │ ││ │ │ │ │  │  │││ │   │││ │  0x00007f2d2050622d:   mov    %r10,%r8                     ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ │ │  │  │││ │   │││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@433 (line 261)
   0.00%                                  │ │ ││ │ │ │ │  │  │││ │   │││ │  0x00007f2d20506230:   mov    0xc(%r8),%r9d                ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ │ │  │  │││ │   │││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@440 (line 261)
   0.29%                                  │ │ ││ │ │ │ │  │  │││ │   │││ │  0x00007f2d20506234:   mov    0x14(%r12,%r9,8),%ebx        ; implicit exception: dispatches to 0x00007f2d20506418
                                          │ │ ││ │ │ │ │  │  │││ │   │││ │                                                            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ │ │  │  │││ │   │││ │                                                            ; - java.lang.String::length@1 (line 1519)
                                          │ │ ││ │ │ │ │  │  │││ │   │││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@443 (line 261)
   1.06%                                  │ │ ││ │ │ │ │  │  │││ │   │││ │  0x00007f2d20506239:   nopl   0x0(%rax)
   0.01%                                  │ │ ││ │ │ │ │  │  │││ │   │││ │  0x00007f2d20506240:   mov    0xc(%r12,%rbx,8),%ecx        ; implicit exception: dispatches to 0x00007f2d2050642c
   0.89%                                  │ │ ││ │ │ │ │  │  │││ │   │││ │  0x00007f2d20506245:   movsbl 0x10(%r12,%r9,8),%ebx
   0.00%                                  │ │ ││ │ │ │ │  │  │││ │   │││ │  0x00007f2d2050624b:   sarx   %ebx,%ecx,%eax               ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ │ │  │  │││ │   │││ │                                                            ; - java.lang.String::length@9 (line 1519)
                                          │ │ ││ │ │ │ │  │  │││ │   │││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@443 (line 261)
   0.20%                                  │ │ ││ │ │ │ │  │  │││ │   │││ │  0x00007f2d20506250:   test   $0x1,%al
                                          │ │ ││ │ │ │ │  │  │││ │   │││╭│  0x00007f2d20506252:   jne    0x00007f2d20506269           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ │ │  │  │││ │   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@448 (line 261)
   0.01%                                  │ │ ││ │ │ │ │  │  │││ │   │││││  0x00007f2d20506254:   shl    %eax                         ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                          │ │ ││ │ │ │ │  │  │││ │   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@467 (line 261)
   0.53%                                  ↘ ↘ ↘↘ ↘ ↘ ↘ ↘  ↘  ↘↘↘ ↘   ↘↘│││  0x00007f2d20506256:   add    $0x30,%rsp
   0.58%                                                               │││  0x00007f2d2050625a:   pop    %rbp
   2.33%                                                               │││  0x00007f2d2050625b:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                                                                       │││  0x00007f2d20506262:   ja     0x00007f2d20506564
   1.35%                                                               │││  0x00007f2d20506268:   ret    
   0.19%                                                               │↘│  0x00007f2d20506269:   mov    0x458(%r15),%r9              ; ImmutableOopMap {r10=Oop r8=Oop }
                                                                       │ │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                                       │ │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@454 (line 261)
   0.00%                                                               │ │  0x00007f2d20506270:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                       │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@454 (line 261)
                                                                       │ │                                                            ;   {poll}
   0.01%                                                               │ │  0x00007f2d20506273:   mov    $0xf,%r9d
                                                                       │ ╰  0x00007f2d20506279:   jmp    0x00007f2d20505cc7
                                                                       ↘    0x00007f2d2050627e:   mov    $0xffffffde,%esi
                                                                            0x00007f2d20506283:   mov    %r10,(%rsp)
                                                                            0x00007f2d20506287:   call   0x00007f2d1ff8af00           ; ImmutableOopMap {[0]=Oop }
                                                                                                                                      ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@433 (line 261)
                                                                                                                                      ;   {runtime_call UncommonTrapBlob}
                                                                            0x00007f2d2050628c:   nopl   0x110009fc(%rax,%rax,1)      ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  83.74%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array, version 3, compile id 804 

                 # {method} {0x00007f2c9747b118} &apos;switch_when_interface_array&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark&apos;
                 #           [sp+0x30]  (sp of caller)
                 0x00007f2d205089a0:   mov    0x8(%rsi),%r10d
                 0x00007f2d205089a4:   movabs $0x7f2c9b000000,%r11
                 0x00007f2d205089ae:   add    %r11,%r10
                 0x00007f2d205089b1:   cmp    %r10,%rax
                 0x00007f2d205089b4:   jne    0x00007f2d1ff85080           ;   {runtime_call ic_miss_stub}
                 0x00007f2d205089ba:   xchg   %ax,%ax
                 0x00007f2d205089bc:   nopl   0x0(%rax)
               [Verified Entry Point]
   0.00%         0x00007f2d205089c0:   mov    %eax,-0x14000(%rsp)
                 0x00007f2d205089c7:   push   %rbp
                 0x00007f2d205089c8:   sub    $0x20,%rsp
                 0x00007f2d205089cc:   cmpl   $0x0,0x20(%r15)
                 0x00007f2d205089d4:   jne    0x00007f2d20508ab6           ;*synchronization entry
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@-1 (line 132)
                 0x00007f2d205089da:   mov    0x10(%rsi),%r9d              ;*getfield interfaceArray {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@3 (line 133)
                 0x00007f2d205089de:   xchg   %ax,%ax
                 0x00007f2d205089e0:   mov    0xc(%r12,%r9,8),%r10d        ; implicit exception: dispatches to 0x00007f2d20508a8d
                                                                           ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@8 (line 133)
                 0x00007f2d205089e5:   test   %r10d,%r10d
          ╭      0x00007f2d205089e8:   jbe    0x00007f2d20508a5e           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@16 (line 133)
          │      0x00007f2d205089ee:   mov    %r10d,%r11d
          │      0x00007f2d205089f1:   dec    %r11d
          │      0x00007f2d205089f4:   cmp    %r10d,%r11d
          │╭     0x00007f2d205089f7:   jae    0x00007f2d20508a62
          ││     0x00007f2d205089fd:   lea    (%r12,%r9,8),%r8             ;*getfield interfaceArray {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@3 (line 133)
          ││     0x00007f2d20508a01:   xor    %ebp,%ebp
          ││     0x00007f2d20508a03:   xor    %r9d,%r9d
          ││     0x00007f2d20508a06:   mov    %r10d,0x8(%rsp)
          ││     0x00007f2d20508a0b:   mov    %r9d,0xc(%rsp)
          ││╭    0x00007f2d20508a10:   jmp    0x00007f2d20508a1b
   0.85%  │││↗   0x00007f2d20508a12:   mov    (%rsp),%r8
   0.10%  ││││   0x00007f2d20508a16:   mov    %r10d,0xc(%rsp)              ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@19 (line 133)
   3.98%  ││↘│   0x00007f2d20508a1b:   mov    0x10(%r8,%rbp,4),%r11d
   1.66%  ││ │   0x00007f2d20508a20:   mov    %r8,(%rsp)
   0.19%  ││ │   0x00007f2d20508a24:   mov    %r11,%rsi
   0.03%  ││ │   0x00007f2d20508a27:   shl    $0x3,%rsi
   1.29%  ││ │   0x00007f2d20508a2b:   call   0x00007f2d1ff85980           ; ImmutableOopMap {[0]=Oop }
          ││ │                                                             ;*invokestatic switchWhenMethod {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
          ││ │                                                             ;   {static_call}
   1.26%  ││ │   0x00007f2d20508a30:   nopl   0x220(%rax,%rax,1)           ;*invokestatic switchWhenMethod {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
          ││ │                                                             ;   {other}
   0.01%  ││ │   0x00007f2d20508a38:   mov    0xc(%rsp),%r10d
   1.53%  ││ │   0x00007f2d20508a3d:   add    %eax,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@31 (line 134)
   0.96%  ││ │   0x00007f2d20508a40:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@33 (line 133)
   0.00%  ││ │   0x00007f2d20508a42:   cmp    0x8(%rsp),%ebp
          ││ ╰   0x00007f2d20508a46:   jl     0x00007f2d20508a12
          ││     0x00007f2d20508a48:   mov    %r10d,%eax                   ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@16 (line 133)
   0.00%  ││  ↗  0x00007f2d20508a4b:   add    $0x20,%rsp
          ││  │  0x00007f2d20508a4f:   pop    %rbp
          ││  │  0x00007f2d20508a50:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││  │  0x00007f2d20508a57:   ja     0x00007f2d20508aa0
          ││  │  0x00007f2d20508a5d:   ret    
          ↘│  │  0x00007f2d20508a5e:   xor    %eax,%eax
           │  ╰  0x00007f2d20508a60:   jmp    0x00007f2d20508a4b
           ↘     0x00007f2d20508a62:   mov    $0xffffff76,%esi
                 0x00007f2d20508a67:   mov    %r10d,(%rsp)
                 0x00007f2d20508a6b:   mov    %r9d,0x4(%rsp)
....................................................................................................
  11.88%  <total for region 2>

....[Hottest Regions]...............................................................................
  83.74%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod, version 2, compile id 800 
  11.88%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array, version 3, compile id 804 
   0.44%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.26%     [kernel.kallsyms]  native_read_msr 
   0.25%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.21%     [kernel.kallsyms]  __free_one_page 
   0.18%     [kernel.kallsyms]  release_pages 
   0.17%     [kernel.kallsyms]  page_remove_rmap 
   0.17%     [kernel.kallsyms]  __mod_lruvec_state 
   0.15%     [kernel.kallsyms]  zap_pte_range 
   0.11%     [kernel.kallsyms]  __mod_node_page_state 
   0.11%     [kernel.kallsyms]  free_unref_page_list 
   0.10%     [kernel.kallsyms]  lock_page_memcg 
   0.10%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.08%     [kernel.kallsyms]  __mod_zone_page_state 
   0.07%     [kernel.kallsyms]  __rcu_read_unlock 
   0.07%     [kernel.kallsyms]  asm_sysvec_apic_timer_interrupt 
   0.06%             libjvm.so  ElfSymbolTable::lookup 
   0.06%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.05%     [kernel.kallsyms]  __rcu_read_lock 
   1.71%  <...other 253 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  83.74%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod, version 2, compile id 800 
  11.88%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array, version 3, compile id 804 
   0.44%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.26%     [kernel.kallsyms]  native_read_msr 
   0.25%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.21%     [kernel.kallsyms]  __free_one_page 
   0.18%     [kernel.kallsyms]  release_pages 
   0.17%     [kernel.kallsyms]  page_remove_rmap 
   0.17%     [kernel.kallsyms]  __mod_lruvec_state 
   0.15%     [kernel.kallsyms]  zap_pte_range 
   0.11%     [kernel.kallsyms]  __mod_node_page_state 
   0.11%     [kernel.kallsyms]  free_unref_page_list 
   0.10%     [kernel.kallsyms]  lock_page_memcg 
   0.10%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.08%     [kernel.kallsyms]  __mod_zone_page_state 
   0.07%     [kernel.kallsyms]  __rcu_read_unlock 
   0.07%     [kernel.kallsyms]  asm_sysvec_apic_timer_interrupt 
   0.06%             libjvm.so  ElfSymbolTable::lookup 
   0.06%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.05%     [kernel.kallsyms]  free_unref_page_commit 
   1.71%  <...other 250 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  95.62%           c2, level 4
   3.81%     [kernel.kallsyms]
   0.29%             libjvm.so
   0.18%             libc.so.6
   0.05%           interpreter
   0.02%        hsdis-amd64.so
   0.00%                      
   0.00%        perf-10643.map
   0.00%                [vdso]
   0.00%  ld-linux-x86-64.so.2
....................................................................................................
  99.99%  <totals>



# Run complete. Total time: 00:17:09

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
TypeSwitchBenchmark.if_instanceof_concrete_array       avgt    5   3.441 ± 1.229  ns/op
TypeSwitchBenchmark.if_instanceof_concrete_array:asm   avgt          NaN            ---
TypeSwitchBenchmark.if_instanceof_interface_array      avgt    5  36.995 ± 2.748  ns/op
TypeSwitchBenchmark.if_instanceof_interface_array:asm  avgt          NaN            ---
TypeSwitchBenchmark.switch_concrete_array              avgt    5   3.733 ± 0.060  ns/op
TypeSwitchBenchmark.switch_concrete_array:asm          avgt          NaN            ---
TypeSwitchBenchmark.switch_if_concrete_array           avgt    5  10.181 ± 0.283  ns/op
TypeSwitchBenchmark.switch_if_concrete_array:asm       avgt          NaN            ---
TypeSwitchBenchmark.switch_if_interface_array          avgt    5  59.483 ± 1.226  ns/op
TypeSwitchBenchmark.switch_if_interface_array:asm      avgt          NaN            ---
TypeSwitchBenchmark.switch_interface_array             avgt    5  41.954 ± 0.774  ns/op
TypeSwitchBenchmark.switch_interface_array:asm         avgt          NaN            ---
TypeSwitchBenchmark.switch_when_concrete_array         avgt    5  10.117 ± 0.242  ns/op
TypeSwitchBenchmark.switch_when_concrete_array:asm     avgt          NaN            ---
TypeSwitchBenchmark.switch_when_interface_array        avgt    5  65.368 ± 2.703  ns/op
TypeSwitchBenchmark.switch_when_interface_array:asm    avgt          NaN            ---
