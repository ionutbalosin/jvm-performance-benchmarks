# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
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
# Warmup Iteration   1: 3.911 ns/op
# Warmup Iteration   2: 3.774 ns/op
# Warmup Iteration   3: 3.724 ns/op
# Warmup Iteration   4: 3.716 ns/op
# Warmup Iteration   5: 3.701 ns/op
Iteration   1: 3.727 ns/op
Iteration   2: 4.351 ns/op
Iteration   3: 4.369 ns/op
Iteration   4: 4.346 ns/op
Iteration   5: 3.765 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.if_instanceof_concrete_array":
  4.112 ±(99.9%) 1.288 ns/op [Average]
  (min, avg, max) = (3.727, 4.112, 4.369), stdev = 0.335
  CI (99.9%): [2.823, 5.400] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.if_instanceof_concrete_array:asm":
PrintAssembly processed: 227409 total address lines.
Perf output processed (skipped 87.371 seconds):
 Column 1: cycles (50033 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array, version 3, compile id 1107 

                   0x00007f5eb2da1bae:   add    %r12,%r10
                   0x00007f5eb2da1bb1:   xor    %r12,%r12
                   0x00007f5eb2da1bb4:   cmp    %r10,%rax
                   0x00007f5eb2da1bb7:   jne    0x00007f5eb26f9080           ;   {runtime_call ic_miss_stub}
                   0x00007f5eb2da1bbd:   data16 xchg %ax,%ax
                 [Verified Entry Point]
                   0x00007f5eb2da1bc0:   mov    %eax,-0x14000(%rsp)
                   0x00007f5eb2da1bc7:   sub    $0x18,%rsp
                   0x00007f5eb2da1bcb:   nop
                   0x00007f5eb2da1bcc:   cmpl   $0x1,0x20(%r15)
   0.00%           0x00007f5eb2da1bd4:   jne    0x00007f5eb2da1d62
                   0x00007f5eb2da1bda:   mov    %rbp,0x10(%rsp)
                   0x00007f5eb2da1bdf:   mov    0x14(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                             ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@0 (line 88)
   0.00%           0x00007f5eb2da1be2:   mov    0xc(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007f5eb2da1d86
   0.01%           0x00007f5eb2da1bea:   cmp    $0x2,%r10d
                   0x00007f5eb2da1bee:   mov    $0x1,%r11d
                   0x00007f5eb2da1bf4:   cmovb  %r10d,%r11d
                   0x00007f5eb2da1bf8:   shl    $0x3,%rax                    ;*getfield asIsArray {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@3 (line 89)
                   0x00007f5eb2da1bfc:   mov    $0x0,%r9d
                   0x00007f5eb2da1c02:   mov    $0x0,%r8d
          ╭        0x00007f5eb2da1c08:   jmp    0x00007f5eb2da1c35           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@13 (line 89)
          │        0x00007f5eb2da1c0d:   data16 data16 nopw 0x0(%rax,%rax,1)
          │        0x00007f5eb2da1c18:   data16 data16 xchg %ax,%ax
          │        0x00007f5eb2da1c1c:   nopl   0x0(%rax)                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@16 (line 89)
          │↗       0x00007f5eb2da1c20:   mov    0x10(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@22 (line 89)
   0.00%  ││       0x00007f5eb2da1c25:   mov    %r8d,%ebx                    ; ImmutableOopMap {rax=Oop rcx=NarrowOop }
          ││                                                                 ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                                 ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@13 (line 89)
          ││       0x00007f5eb2da1c28:   add    0xc(,%rcx,8),%ebx            ; implicit exception: dispatches to 0x00007f5eb2da1dad
   0.01%  ││       0x00007f5eb2da1c2f:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@33 (line 89)
          ││       0x00007f5eb2da1c32:   mov    %ebx,%r8d                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@13 (line 89)
          ↘│       0x00007f5eb2da1c35:   cmp    %r9d,%r11d
           ╰       0x00007f5eb2da1c38:   ja     0x00007f5eb2da1c20
                   0x00007f5eb2da1c3a:   lea    -0x8(%r10),%r11d
   0.00%           0x00007f5eb2da1c3e:   xchg   %ax,%ax
            ╭      0x00007f5eb2da1c40:   jmp    0x00007f5eb2da1ce5
            │      0x00007f5eb2da1c45:   data16 data16 nopw 0x0(%rax,%rax,1)
            │      0x00007f5eb2da1c50:   data16 data16 xchg %ax,%ax
            │      0x00007f5eb2da1c54:   nopl   0x0(%rax,%rax,1)
            │      0x00007f5eb2da1c5c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@16 (line 89)
   0.00%    │ ↗    0x00007f5eb2da1c60:   mov    0x10(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@22 (line 89)
   2.96%    │ │    0x00007f5eb2da1c65:   mov    %r8d,%ebx                    ; ImmutableOopMap {rax=Oop rcx=NarrowOop }
            │ │                                                              ;*iload {reexecute=1 rethrow=0 return_oop=0}
            │ │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@13 (line 89)
   0.01%    │ │    0x00007f5eb2da1c68:   add    0xc(,%rcx,8),%ebx            ; implicit exception: dispatches to 0x00007f5eb2da1dd0
   8.94%    │ │    0x00007f5eb2da1c6f:   mov    0x14(%rax,%r9,4),%ecx        ; ImmutableOopMap {rax=Oop }
            │ │                                                              ;*iload {reexecute=1 rethrow=0 return_oop=0}
            │ │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@13 (line 89)
   0.05%    │ │    0x00007f5eb2da1c74:   mov    0xc(,%rcx,8),%ecx            ; implicit exception: dispatches to 0x00007f5eb2da1df3
  10.30%    │ │    0x00007f5eb2da1c7b:   mov    0x18(%rax,%r9,4),%edi        ; ImmutableOopMap {rax=Oop }
            │ │                                                              ;*iload {reexecute=1 rethrow=0 return_oop=0}
            │ │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@13 (line 89)
   0.04%    │ │    0x00007f5eb2da1c80:   mov    0xc(,%rdi,8),%edi            ; implicit exception: dispatches to 0x00007f5eb2da1e16
   9.34%    │ │    0x00007f5eb2da1c87:   mov    0x1c(%rax,%r9,4),%edx        ; ImmutableOopMap {rax=Oop }
            │ │                                                              ;*iload {reexecute=1 rethrow=0 return_oop=0}
            │ │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@13 (line 89)
   0.03%    │ │    0x00007f5eb2da1c8c:   mov    0xc(,%rdx,8),%edx            ; implicit exception: dispatches to 0x00007f5eb2da1e39
  11.13%    │ │    0x00007f5eb2da1c93:   mov    0x20(%rax,%r9,4),%esi        ; ImmutableOopMap {rax=Oop }
            │ │                                                              ;*iload {reexecute=1 rethrow=0 return_oop=0}
            │ │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@13 (line 89)
   0.06%    │ │    0x00007f5eb2da1c98:   mov    0xc(,%rsi,8),%esi            ; implicit exception: dispatches to 0x00007f5eb2da1e5c
   9.74%    │ │    0x00007f5eb2da1c9f:   mov    0x24(%rax,%r9,4),%ebp        ; ImmutableOopMap {rax=Oop }
            │ │                                                              ;*iload {reexecute=1 rethrow=0 return_oop=0}
            │ │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@13 (line 89)
   0.05%    │ │    0x00007f5eb2da1ca4:   mov    0xc(,%rbp,8),%ebp            ; implicit exception: dispatches to 0x00007f5eb2da1e7f
  11.31%    │ │    0x00007f5eb2da1cab:   mov    0x28(%rax,%r9,4),%r13d       ; ImmutableOopMap {rax=Oop }
            │ │                                                              ;*iload {reexecute=1 rethrow=0 return_oop=0}
            │ │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@13 (line 89)
   0.05%    │ │    0x00007f5eb2da1cb0:   mov    0xc(,%r13,8),%r13d           ; implicit exception: dispatches to 0x00007f5eb2da1ea2
            │ │                                                              ;   {no_reloc}
  10.17%    │ │    0x00007f5eb2da1cb8:   mov    0x2c(%rax,%r9,4),%r14d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@22 (line 89)
   0.29%    │ │    0x00007f5eb2da1cbd:   data16 xchg %ax,%ax
   1.84%    │ │    0x00007f5eb2da1cc0:   test   %r14d,%r14d
            │╭│    0x00007f5eb2da1cc3:   je     0x00007f5eb2da1d3f           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@4 (line 267)
            │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@28 (line 90)
   0.02%    │││    0x00007f5eb2da1cc9:   add    %ecx,%ebx
   1.43%    │││    0x00007f5eb2da1ccb:   add    %edi,%ebx
   0.01%    │││    0x00007f5eb2da1ccd:   add    %edx,%ebx
   2.27%    │││    0x00007f5eb2da1ccf:   add    %esi,%ebx
   0.02%    │││    0x00007f5eb2da1cd1:   add    %ebp,%ebx
   1.69%    │││    0x00007f5eb2da1cd3:   add    %r13d,%ebx
   1.16%    │││    0x00007f5eb2da1cd6:   add    0xc(,%r14,8),%ebx            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@31 (line 90)
  11.09%    │││    0x00007f5eb2da1cde:   lea    0x8(%r9),%r9d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@33 (line 89)
   0.05%    │││    0x00007f5eb2da1ce2:   mov    %ebx,%r8d                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
            │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@13 (line 89)
   0.38%    ↘││    0x00007f5eb2da1ce5:   cmp    %r9d,%r11d
             │╰    0x00007f5eb2da1ce8:   jg     0x00007f5eb2da1c60
             │ ╭   0x00007f5eb2da1cee:   jmp    0x00007f5eb2da1d20
             │ │   0x00007f5eb2da1cf3:   nopw   0x0(%rax,%rax,1)
             │ │   0x00007f5eb2da1cfc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@16 (line 89)
             │ │↗  0x00007f5eb2da1d00:   mov    0x10(%rax,%r9,4),%r11d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
             │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@22 (line 89)
             │ ││  0x00007f5eb2da1d05:   mov    %r8d,%ecx                    ; ImmutableOopMap {rax=Oop r11=NarrowOop }
             │ ││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
             │ ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@13 (line 89)
             │ ││  0x00007f5eb2da1d08:   add    0xc(,%r11,8),%ecx            ; implicit exception: dispatches to 0x00007f5eb2da1ec5
   0.00%     │ ││  0x00007f5eb2da1d10:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@33 (line 89)
             │ ││  0x00007f5eb2da1d13:   mov    %ecx,%r8d                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
             │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@13 (line 89)
             │ ││  0x00007f5eb2da1d16:   data16 nopw 0x0(%rax,%rax,1)
   0.00%     │ ↘│  0x00007f5eb2da1d20:   cmp    %r9d,%r10d
             │  ╰  0x00007f5eb2da1d23:   ja     0x00007f5eb2da1d00           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@16 (line 89)
             │     0x00007f5eb2da1d25:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@40 (line 92)
             │     0x00007f5eb2da1d28:   mov    0x10(%rsp),%rbp
   0.01%     │     0x00007f5eb2da1d2d:   add    $0x18,%rsp
             │     0x00007f5eb2da1d31:   cmp    0x450(%r15),%rsp             ;   {poll_return}
             │     0x00007f5eb2da1d38:   ja     0x00007f5eb2da1d72
             │     0x00007f5eb2da1d3e:   ret    
             ↘     0x00007f5eb2da1d3f:   movl   $0xffffffed,0x484(%r15)      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@4 (line 267)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@28 (line 90)
                   0x00007f5eb2da1d4a:   movq   $0x14,0x490(%r15)
                   0x00007f5eb2da1d55:   call   0x00007f5eb26ff17a           ; ImmutableOopMap {rax=Oop }
                                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array@13 (line 89)
....................................................................................................
  94.47%  <total for region 1>

....[Hottest Regions]...............................................................................
  94.47%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array, version 3, compile id 1107 
   0.43%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.27%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.25%     [kernel.kallsyms]  native_read_msr 
   0.23%     [kernel.kallsyms]  __free_one_page 
   0.22%     [kernel.kallsyms]  release_pages 
   0.21%     [kernel.kallsyms]  asm_exc_page_fault 
   0.20%     [kernel.kallsyms]  __mod_lruvec_state 
   0.19%     [kernel.kallsyms]  zap_pte_range 
   0.19%     [kernel.kallsyms]  page_remove_rmap 
   0.11%     [kernel.kallsyms]  __mod_memcg_state 
   0.11%     [kernel.kallsyms]  free_unref_page_list 
   0.09%     [kernel.kallsyms]  lock_page_memcg 
   0.09%     [kernel.kallsyms]  __mod_node_page_state 
   0.08%     [kernel.kallsyms]  __rcu_read_unlock 
   0.07%     [kernel.kallsyms]  __mod_zone_page_state 
   0.06%     [kernel.kallsyms]  __rcu_read_lock 
   0.05%     [kernel.kallsyms]  free_unref_page_commit 
   0.05%     [kernel.kallsyms]  folio_memcg_lock.part.0 
   0.05%     [kernel.kallsyms]  folio_lruvec_lock_irqsave 
   2.56%  <...other 445 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  94.47%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_concrete_array, version 3, compile id 1107 
   0.43%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.35%                        <unknown> 
   0.27%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.25%     [kernel.kallsyms]  native_read_msr 
   0.23%     [kernel.kallsyms]  __free_one_page 
   0.22%     [kernel.kallsyms]  release_pages 
   0.21%     [kernel.kallsyms]  asm_exc_page_fault 
   0.20%     [kernel.kallsyms]  __mod_lruvec_state 
   0.19%     [kernel.kallsyms]  zap_pte_range 
   0.19%     [kernel.kallsyms]  page_remove_rmap 
   0.11%     [kernel.kallsyms]  __mod_memcg_state 
   0.11%     [kernel.kallsyms]  free_unref_page_list 
   0.09%     [kernel.kallsyms]  lock_page_memcg 
   0.09%     [kernel.kallsyms]  __mod_node_page_state 
   0.08%     [kernel.kallsyms]  __rcu_read_unlock 
   0.07%     [kernel.kallsyms]  __mod_zone_page_state 
   0.06%     [kernel.kallsyms]  __rcu_read_lock 
   0.05%     [kernel.kallsyms]  free_unref_page_commit 
   0.05%     [kernel.kallsyms]  folio_lruvec_lock_irqsave 
   2.26%  <...other 309 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  94.52%        jvmci, level 4
   4.49%     [kernel.kallsyms]
   0.35%                      
   0.34%             libjvm.so
   0.19%             libc.so.6
   0.04%           interpreter
   0.02%        hsdis-amd64.so
   0.02%  ld-linux-x86-64.so.2
   0.01%                [vdso]
   0.01%           c1, level 3
   0.00%          libjimage.so
   0.00%     nf_defrag_ipv4.ko
   0.00%        perf-12434.map
   0.00%          runtime stub
   0.00%      Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.if_instanceof_interface_array

# Run progress: 12.50% complete, ETA 00:17:21
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 40.787 ns/op
# Warmup Iteration   2: 38.530 ns/op
# Warmup Iteration   3: 38.589 ns/op
# Warmup Iteration   4: 38.683 ns/op
# Warmup Iteration   5: 38.637 ns/op
Iteration   1: 38.545 ns/op
Iteration   2: 38.536 ns/op
Iteration   3: 38.677 ns/op
Iteration   4: 38.558 ns/op
Iteration   5: 38.926 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.if_instanceof_interface_array":
  38.649 ±(99.9%) 0.637 ns/op [Average]
  (min, avg, max) = (38.536, 38.649, 38.926), stdev = 0.165
  CI (99.9%): [38.012, 39.285] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.if_instanceof_interface_array:asm":
PrintAssembly processed: 223121 total address lines.
Perf output processed (skipped 86.045 seconds):
 Column 1: cycles (49929 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array, version 3, compile id 1094 

                                       0x00007f0692da07c0:   mov    %eax,-0x14000(%rsp)
                                       0x00007f0692da07c7:   sub    $0x18,%rsp
                                       0x00007f0692da07cb:   nop
                                       0x00007f0692da07cc:   cmpl   $0x0,0x20(%r15)
                                       0x00007f0692da07d4:   jne    0x00007f0692da0a16
                                       0x00007f0692da07da:   mov    %rbp,0x10(%rsp)
                                       0x00007f0692da07df:   mov    0x10(%rsi),%ecx              ; ImmutableOopMap {rcx=NarrowOop rsi=Oop }
                                                                                                 ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                                 ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@0 (line 77)
                                       0x00007f0692da07e2:   mov    0xc(,%rcx,8),%r10d           ; implicit exception: dispatches to 0x00007f0692da0a3a
   0.00%                               0x00007f0692da07ea:   mov    %ecx,%r11d
                                       0x00007f0692da07ed:   shl    $0x3,%r11                    ;*getfield interfaceArray {reexecute=0 rethrow=0 return_oop=0}
                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@3 (line 78)
                                       0x00007f0692da07f1:   vxorpd %xmm0,%xmm0,%xmm0            ;*f2i {reexecute=0 rethrow=0 return_oop=0}
                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@106 (line 280)
                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
                                       0x00007f0692da07f5:   vxorpd %xmm1,%xmm1,%xmm1            ;*d2i {reexecute=0 rethrow=0 return_oop=0}
                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@90 (line 278)
                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
                                       0x00007f0692da07f9:   mov    $0x0,%r9d
                                       0x00007f0692da07ff:   mov    $0x0,%r8d
                                       0x00007f0692da0805:   data16 data16 nopw 0x0(%rax,%rax,1) ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@13 (line 78)
   1.16%           ↗ ↗↗↗↗↗↗ ↗          0x00007f0692da0810:   cmp    %r9d,%r10d
          ╭        │ ││││││ │          0x00007f0692da0813:   jbe    0x00007f0692da09d9           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │        │ ││││││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@16 (line 78)
   0.90%  │        │ ││││││ │          0x00007f0692da0819:   mov    0x10(%r11,%r9,4),%eax        ; ImmutableOopMap {rax=NarrowOop r11=Oop }
          │        │ ││││││ │                                                                    ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │        │ ││││││ │                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@13 (line 78)
   1.13%  │        │ ││││││ │          0x00007f0692da081e:   mov    0x8(,%rax,8),%ecx            ; implicit exception: dispatches to 0x00007f0692da0a5d
   8.97%  │        │ ││││││ │          0x00007f0692da0825:   mov    %r9d,%ebx
   0.49%  │        │ ││││││ │          0x00007f0692da0828:   inc    %ebx
   0.05%  │        │ ││││││ │          0x00007f0692da082a:   cmp    $0x102b260,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
          │╭       │ ││││││ │          0x00007f0692da0830:   je     0x00007f0692da08bf
   3.11%  ││       │ ││││││ │          0x00007f0692da0836:   data16 nopw 0x0(%rax,%rax,1)
   0.16%  ││       │ ││││││ │          0x00007f0692da0840:   cmp    $0x102a868,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
          ││╭      │ ││││││ │          0x00007f0692da0846:   je     0x00007f0692da08e6
   4.82%  │││      │ ││││││ │          0x00007f0692da084c:   cmp    $0x102ac58,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
          │││╭     │ ││││││ │          0x00007f0692da0852:   je     0x00007f0692da08f6
   1.97%  ││││     │ ││││││ │          0x00007f0692da0858:   nopl   0x0(%rax,%rax,1)
   0.54%  ││││     │ ││││││ │          0x00007f0692da0860:   cmp    $0x102b660,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
          ││││╭    │ ││││││ │          0x00007f0692da0866:   je     0x00007f0692da090c
   1.97%  │││││    │ ││││││ │          0x00007f0692da086c:   cmp    $0x102ae58,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
          │││││╭   │ ││││││ │          0x00007f0692da0872:   je     0x00007f0692da0925
   3.87%  ││││││   │ ││││││ │          0x00007f0692da0878:   nopl   0x0(%rax,%rax,1)
   0.32%  ││││││   │ ││││││ │          0x00007f0692da0880:   cmp    $0x102b860,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
          ││││││╭  │ ││││││ │          0x00007f0692da0886:   je     0x00007f0692da0952
   2.34%  │││││││  │ ││││││ │          0x00007f0692da088c:   cmp    $0x102b060,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
          │││││││╭ │ ││││││ │          0x00007f0692da0892:   jne    0x00007f0692da0967           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││││││││ │ ││││││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@96 (line 279)
          ││││││││ │ ││││││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   2.44%  ││││││││ │ ││││││ │          0x00007f0692da0898:   vmovss 0xc(,%rax,8),%xmm2           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││││││││ │ ││││││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@103 (line 280)
          ││││││││ │ ││││││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   2.22%  ││││││││ │ ││││││ │          0x00007f0692da08a1:   vcvttss2si %xmm2,%eax
   2.27%  ││││││││ │ ││││││ │          0x00007f0692da08a5:   cmp    $0x80000000,%eax
          ││││││││╭│ ││││││ │          0x00007f0692da08ab:   je     0x00007f0692da09a7           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││ ││││││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@106 (line 280)
          ││││││││││ ││││││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   0.09%  ││││││││││ ││││││ │    ↗↗ ↗  0x00007f0692da08b1:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││ ││││││ │    ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@31 (line 79)
   0.01%  ││││││││││ ││││││ │    ││ │  0x00007f0692da08b4:   mov    %ebx,%r9d
   0.28%  ││││││││││ ││││││ │    ││ │  0x00007f0692da08b7:   mov    %eax,%r8d
          │││││││││╰ ││││││ │    ││ │  0x00007f0692da08ba:   jmp    0x00007f0692da0810           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││││││││  ││││││ │    ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@80 (line 277)
          │││││││││  ││││││ │    ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.89%  │↘│││││││  ││││││ │    ││ │  0x00007f0692da08bf:   vmovsd 0x10(,%rax,8),%xmm2          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │ │││││││  ││││││ │    ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@87 (line 278)
          │ │││││││  ││││││ │    ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.65%  │ │││││││  ││││││ │    ││ │  0x00007f0692da08c8:   vcvttsd2si %xmm2,%eax
   2.89%  │ │││││││  ││││││ │    ││ │  0x00007f0692da08cc:   cmp    $0x80000000,%eax
          │ │││││││ ╭││││││ │    ││ │  0x00007f0692da08d2:   je     0x00007f0692da0989           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
          │ │││││││ │││││││ │    ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@90 (line 278)
          │ │││││││ │││││││ │    ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   0.02%  │ │││││││ │││││││ │ ↗↗ ││↗│  0x00007f0692da08d8:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │││││││ │││││││ │ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@31 (line 79)
          │ │││││││ │││││││ │ ││ ││││  0x00007f0692da08db:   mov    %ebx,%r9d
   0.38%  │ │││││││ │││││││ │ ││ ││││  0x00007f0692da08de:   mov    %eax,%r8d
          │ │││││││ │╰│││││ │ ││ ││││  0x00007f0692da08e1:   jmp    0x00007f0692da0810           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ │││││││ │ │││││ │ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@4 (line 267)
          │ │││││││ │ │││││ │ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.84%  │ ↘││││││ │ │││││ │ ││ ││││  0x00007f0692da08e6:   add    0xc(,%rax,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││││││ │ │││││ │ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@31 (line 79)
   3.68%  │  ││││││ │ │││││ │ ││ ││││  0x00007f0692da08ee:   mov    %ebx,%r9d
   0.03%  │  ││││││ │ ╰││││ │ ││ ││││  0x00007f0692da08f1:   jmp    0x00007f0692da0810           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │  ││││││ │  ││││ │ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@35 (line 271)
          │  ││││││ │  ││││ │ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.52%  │  ↘│││││ │  ││││ │ ││ ││││  0x00007f0692da08f6:   movswl 0xc(,%rax,8),%ecx            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │   │││││ │  ││││ │ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@42 (line 272)
          │   │││││ │  ││││ │ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.41%  │   │││││ │  ││││ │ ││ ││││  0x00007f0692da08fe:   add    %r8d,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │   │││││ │  ││││ │ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@31 (line 79)
   0.35%  │   │││││ │  ││││ │ ││ ││││  0x00007f0692da0901:   mov    %ebx,%r9d
   0.01%  │   │││││ │  ││││ │ ││ ││││  0x00007f0692da0904:   mov    %ecx,%r8d
   0.02%  │   │││││ │  ╰│││ │ ││ ││││  0x00007f0692da0907:   jmp    0x00007f0692da0810           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │   │││││ │   │││ │ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@65 (line 275)
          │   │││││ │   │││ │ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.60%  │   ↘││││ │   │││ │ ││ ││││  0x00007f0692da090c:   movzwl 0xc(,%rax,8),%ecx            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │    ││││ │   │││ │ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@72 (line 276)
          │    ││││ │   │││ │ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.23%  │    ││││ │   │││ │ ││ ││││  0x00007f0692da0914:   add    %r8d,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │    ││││ │   │││ │ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@31 (line 79)
   0.38%  │    ││││ │   │││ │ ││ ││││  0x00007f0692da0917:   mov    %ebx,%r9d
   0.01%  │    ││││ │   │││ │ ││ ││││  0x00007f0692da091a:   mov    %ecx,%r8d
   0.02%  │    ││││ │   │││ │ ││ ││││  0x00007f0692da091d:   data16 xchg %ax,%ax
   0.01%  │    ││││ │   ╰││ │ ││ ││││  0x00007f0692da0920:   jmp    0x00007f0692da0810           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │    ││││ │    ││ │ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@112 (line 281)
          │    ││││ │    ││ │ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.69%  │    ↘│││ │    ││ │ ││ ││││  0x00007f0692da0925:   mov    0xc(,%rax,8),%ecx            ; ImmutableOopMap {rcx=NarrowOop r11=Oop }
          │     │││ │    ││ │ ││ ││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │     │││ │    ││ │ ││ ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@13 (line 78)
   3.11%  │     │││ │    ││ │ ││ ││││  0x00007f0692da092c:   mov    0x14(,%rcx,8),%eax           ; implicit exception: dispatches to 0x00007f0692da0a80
   2.24%  │     │││ │    ││ │ ││ ││││  0x00007f0692da0933:   movsbl 0x10(,%rcx,8),%ecx           ; ImmutableOopMap {r11=Oop }
          │     │││ │    ││ │ ││ ││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │     │││ │    ││ │ ││ ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@13 (line 78)
   0.24%  │     │││ │    ││ │ ││ ││││  0x00007f0692da093b:   mov    0xc(,%rax,8),%eax            ; implicit exception: dispatches to 0x00007f0692da0aa3
   1.48%  │     │││ │    ││ │ ││ ││││  0x00007f0692da0942:   shr    %cl,%eax                     ;*ishr {reexecute=0 rethrow=0 return_oop=0}
          │     │││ │    ││ │ ││ ││││                                                            ; - java.lang.String::length@9 (line 1519)
          │     │││ │    ││ │ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@122 (line 282)
          │     │││ │    ││ │ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   0.77%  │     │││ │    ││ │ ││ ││││  0x00007f0692da0944:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │     │││ │    ││ │ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@31 (line 79)
   0.01%  │     │││ │    ││ │ ││ ││││  0x00007f0692da0947:   mov    %ebx,%r9d
          │     │││ │    ││ │ ││ ││││  0x00007f0692da094a:   mov    %eax,%r8d
          │     │││ │    ╰│ │ ││ ││││  0x00007f0692da094d:   jmp    0x00007f0692da0810           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │     │││ │     │ │ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@19 (line 269)
          │     │││ │     │ │ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   3.25%  │     ↘││ │     │ │ ││ ││││  0x00007f0692da0952:   mov    0x10(,%rax,8),%eax           ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          │      ││ │     │ │ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@29 (line 270)
          │      ││ │     │ │ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   2.84%  │      ││ │     │ │ ││ ││││  0x00007f0692da0959:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │      ││ │     │ │ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@31 (line 79)
   0.30%  │      ││ │     │ │ ││ ││││  0x00007f0692da095c:   mov    %ebx,%r9d
          │      ││ │     │ │ ││ ││││  0x00007f0692da095f:   mov    %eax,%r8d
   0.04%  │      ││ │     ╰ │ ││ ││││  0x00007f0692da0962:   jmp    0x00007f0692da0810
   2.35%  │      ↘│ │       │ ││ ││││  0x00007f0692da0967:   cmp    $0x102b460,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
          │       │ │      ╭│ ││ ││││  0x00007f0692da096d:   jne    0x00007f0692da09f3           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │       │ │      ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@50 (line 273)
          │       │ │      ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   1.33%  │       │ │      ││ ││ ││││  0x00007f0692da0973:   movsbl 0xc(,%rax,8),%eax            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │       │ │      ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@57 (line 274)
          │       │ │      ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
   1.25%  │       │ │      ││ ││ ││││  0x00007f0692da097b:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │       │ │      ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@31 (line 79)
   0.27%  │       │ │      ││ ││ ││││  0x00007f0692da097e:   mov    %ebx,%r9d
   0.00%  │       │ │      ││ ││ ││││  0x00007f0692da0981:   mov    %eax,%r8d
   0.08%  │       │ │      │╰ ││ ││││  0x00007f0692da0984:   jmp    0x00007f0692da0810
          │       │ ↘      │  ││ ││││  0x00007f0692da0989:   vucomisd %xmm2,%xmm2
          │       │        │ ╭││ ││││  0x00007f0692da098d:   jp     0x00007f0692da09c5
          │       │        │ │││ ││││  0x00007f0692da0993:   vucomisd %xmm1,%xmm2
          │       │        │ │╰│ ││││  0x00007f0692da0997:   jbe    0x00007f0692da08d8
          │       │        │ │ │ ││││  0x00007f0692da099d:   mov    $0x7fffffff,%eax
          │       │        │ │ ╰ ││││  0x00007f0692da09a2:   jmp    0x00007f0692da08d8           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
          │       │        │ │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@90 (line 278)
          │       │        │ │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
          │       ↘        │ │   ││││  0x00007f0692da09a7:   vucomiss %xmm2,%xmm2
          │                │ │  ╭││││  0x00007f0692da09ab:   jp     0x00007f0692da09cf
          │                │ │  │││││  0x00007f0692da09b1:   vucomiss %xmm0,%xmm2
          │                │ │  │╰│││  0x00007f0692da09b5:   jbe    0x00007f0692da08b1
          │                │ │  │ │││  0x00007f0692da09bb:   mov    $0x7fffffff,%eax
          │                │ │  │ ╰││  0x00007f0692da09c0:   jmp    0x00007f0692da08b1           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
          │                │ │  │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@106 (line 280)
          │                │ │  │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
          │                │ ↘  │  ││  0x00007f0692da09c5:   mov    $0x0,%eax
          │                │    │  ╰│  0x00007f0692da09ca:   jmp    0x00007f0692da08d8           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
          │                │    │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@90 (line 278)
          │                │    │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
          │                │    ↘   │  0x00007f0692da09cf:   mov    $0x0,%eax
          │                │        ╰  0x00007f0692da09d4:   jmp    0x00007f0692da08b1           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
          │                │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@106 (line 280)
          │                │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
          ↘                │           0x00007f0692da09d9:   mov    %r8d,%eax
                           │           0x00007f0692da09dc:   mov    0x10(%rsp),%rbp
   0.01%                   │           0x00007f0692da09e1:   add    $0x18,%rsp
                           │           0x00007f0692da09e5:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                           │           0x00007f0692da09ec:   ja     0x00007f0692da0a26
                           │           0x00007f0692da09f2:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                           │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@40 (line 81)
                           ↘           0x00007f0692da09f3:   movl   $0xffffffed,0x484(%r15)      ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof@122 (line 282)
                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array@28 (line 79)
                                       0x00007f0692da09fe:   movq   $0x14,0x490(%r15)
                                       0x00007f0692da0a09:   call   0x00007f06926ff17a           ; ImmutableOopMap {r11=Oop }
                                                                                                 ;*iload {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  95.30%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.30%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array, version 3, compile id 1094 
   0.42%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.23%     [kernel.kallsyms]  __free_one_page 
   0.21%     [kernel.kallsyms]  __mod_lruvec_state 
   0.21%     [kernel.kallsyms]  release_pages 
   0.20%     [kernel.kallsyms]  native_read_msr 
   0.18%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.17%     [kernel.kallsyms]  page_remove_rmap 
   0.16%     [kernel.kallsyms]  zap_pte_range 
   0.12%     [kernel.kallsyms]  free_unref_page_list 
   0.12%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.10%     [kernel.kallsyms]  __mod_node_page_state 
   0.10%     [kernel.kallsyms]  __mod_zone_page_state 
   0.09%     [kernel.kallsyms]  lock_page_memcg 
   0.09%     [kernel.kallsyms]  __rcu_read_lock 
   0.08%     [kernel.kallsyms]  __rcu_read_unlock 
   0.07%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.07%     [kernel.kallsyms]  free_swap_cache 
   0.04%     [kernel.kallsyms]  asm_exc_page_fault 
   0.04%     [kernel.kallsyms]  free_unref_page_commit 
   2.00%  <...other 392 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.30%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::if_instanceof_interface_array, version 3, compile id 1094 
   0.42%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.23%     [kernel.kallsyms]  __free_one_page 
   0.21%     [kernel.kallsyms]  __mod_lruvec_state 
   0.21%     [kernel.kallsyms]  release_pages 
   0.20%     [kernel.kallsyms]  native_read_msr 
   0.18%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.17%     [kernel.kallsyms]  page_remove_rmap 
   0.16%     [kernel.kallsyms]  zap_pte_range 
   0.12%     [kernel.kallsyms]  free_unref_page_list 
   0.12%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.10%     [kernel.kallsyms]  __mod_zone_page_state 
   0.10%     [kernel.kallsyms]  __mod_node_page_state 
   0.09%     [kernel.kallsyms]  lock_page_memcg 
   0.09%     [kernel.kallsyms]  __rcu_read_lock 
   0.08%     [kernel.kallsyms]  __rcu_read_unlock 
   0.07%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.07%     [kernel.kallsyms]  free_swap_cache 
   0.04%             libc.so.6  __vfprintf_internal 
   0.04%     [kernel.kallsyms]  asm_exc_page_fault 
   1.99%  <...other 376 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.31%        jvmci, level 4
   3.74%     [kernel.kallsyms]
   0.31%             libjvm.so
   0.29%   libjvmcicompiler.so
   0.21%             libc.so.6
   0.07%           interpreter
   0.02%        hsdis-amd64.so
   0.02%                      
   0.02%  ld-linux-x86-64.so.2
   0.01%                [vdso]
   0.01%           c1, level 3
   0.00%        perf-12560.map
   0.00%           c1, level 2
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_concrete_array

# Run progress: 25.00% complete, ETA 00:14:41
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.870 ns/op
# Warmup Iteration   2: 4.372 ns/op
# Warmup Iteration   3: 4.344 ns/op
# Warmup Iteration   4: 4.352 ns/op
# Warmup Iteration   5: 4.332 ns/op
Iteration   1: 3.712 ns/op
Iteration   2: 3.711 ns/op
Iteration   3: 3.726 ns/op
Iteration   4: 3.712 ns/op
Iteration   5: 4.416 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_concrete_array":
  3.855 ±(99.9%) 1.207 ns/op [Average]
  (min, avg, max) = (3.711, 3.855, 4.416), stdev = 0.313
  CI (99.9%): [2.648, 5.062] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_concrete_array:asm":
PrintAssembly processed: 250670 total address lines.
Perf output processed (skipped 87.446 seconds):
 Column 1: cycles (49577 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array, version 3, compile id 1218 

                   # {method} {0x00007fb5044840f0} &apos;switch_concrete_array&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark&apos;
                   #           [sp+0x20]  (sp of caller)
                   0x00007fb592dabc20:   mov    0x8(%rsi),%r10d
                   0x00007fb592dabc24:   movabs $0x7fb50f000000,%r12
                   0x00007fb592dabc2e:   add    %r12,%r10
                   0x00007fb592dabc31:   xor    %r12,%r12
                   0x00007fb592dabc34:   cmp    %r10,%rax
                   0x00007fb592dabc37:   jne    0x00007fb5926f9080           ;   {runtime_call ic_miss_stub}
                   0x00007fb592dabc3d:   data16 xchg %ax,%ax
                 [Verified Entry Point]
   0.00%           0x00007fb592dabc40:   mov    %eax,-0x14000(%rsp)
                   0x00007fb592dabc47:   sub    $0x18,%rsp
                   0x00007fb592dabc4b:   nop
                   0x00007fb592dabc4c:   cmpl   $0x1,0x20(%r15)
   0.00%           0x00007fb592dabc54:   jne    0x00007fb592dabde2
                   0x00007fb592dabc5a:   mov    %rbp,0x10(%rsp)
                   0x00007fb592dabc5f:   mov    0x14(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                             ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@0 (line 110)
   0.00%           0x00007fb592dabc62:   mov    0xc(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007fb592dabe06
   0.01%           0x00007fb592dabc6a:   cmp    $0x2,%r10d
                   0x00007fb592dabc6e:   mov    $0x1,%r11d
                   0x00007fb592dabc74:   cmovb  %r10d,%r11d
                   0x00007fb592dabc78:   shl    $0x3,%rax                    ;*getfield asIsArray {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@3 (line 111)
                   0x00007fb592dabc7c:   mov    $0x0,%r9d
                   0x00007fb592dabc82:   mov    $0x0,%r8d
          ╭        0x00007fb592dabc88:   jmp    0x00007fb592dabcb5           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@13 (line 111)
          │        0x00007fb592dabc8d:   data16 data16 nopw 0x0(%rax,%rax,1)
          │        0x00007fb592dabc98:   data16 data16 xchg %ax,%ax
          │        0x00007fb592dabc9c:   nopl   0x0(%rax)                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@16 (line 111)
   0.00%  │↗       0x00007fb592dabca0:   mov    0x10(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@22 (line 111)
   0.00%  ││       0x00007fb592dabca5:   mov    %r8d,%ebx                    ; ImmutableOopMap {rax=Oop rcx=NarrowOop }
          ││                                                                 ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                                 ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@13 (line 111)
          ││       0x00007fb592dabca8:   add    0xc(,%rcx,8),%ebx            ; implicit exception: dispatches to 0x00007fb592dabe2d
   0.02%  ││       0x00007fb592dabcaf:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@33 (line 111)
          ││       0x00007fb592dabcb2:   mov    %ebx,%r8d                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@13 (line 111)
          ↘│       0x00007fb592dabcb5:   cmp    %r9d,%r11d
           ╰       0x00007fb592dabcb8:   ja     0x00007fb592dabca0
                   0x00007fb592dabcba:   lea    -0x8(%r10),%r11d
                   0x00007fb592dabcbe:   xchg   %ax,%ax
            ╭      0x00007fb592dabcc0:   jmp    0x00007fb592dabd65
            │      0x00007fb592dabcc5:   data16 data16 nopw 0x0(%rax,%rax,1)
            │      0x00007fb592dabcd0:   data16 data16 xchg %ax,%ax
            │      0x00007fb592dabcd4:   nopl   0x0(%rax,%rax,1)
            │      0x00007fb592dabcdc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@16 (line 111)
   0.00%    │ ↗    0x00007fb592dabce0:   mov    0x10(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@22 (line 111)
   3.00%    │ │    0x00007fb592dabce5:   mov    %r8d,%ebx                    ; ImmutableOopMap {rax=Oop rcx=NarrowOop }
            │ │                                                              ;*iload {reexecute=1 rethrow=0 return_oop=0}
            │ │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@13 (line 111)
   0.01%    │ │    0x00007fb592dabce8:   add    0xc(,%rcx,8),%ebx            ; implicit exception: dispatches to 0x00007fb592dabe50
   8.71%    │ │    0x00007fb592dabcef:   mov    0x14(%rax,%r9,4),%ecx        ; ImmutableOopMap {rax=Oop }
            │ │                                                              ;*iload {reexecute=1 rethrow=0 return_oop=0}
            │ │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@13 (line 111)
   0.05%    │ │    0x00007fb592dabcf4:   mov    0xc(,%rcx,8),%ecx            ; implicit exception: dispatches to 0x00007fb592dabe73
  10.26%    │ │    0x00007fb592dabcfb:   mov    0x18(%rax,%r9,4),%edi        ; ImmutableOopMap {rax=Oop }
            │ │                                                              ;*iload {reexecute=1 rethrow=0 return_oop=0}
            │ │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@13 (line 111)
   0.05%    │ │    0x00007fb592dabd00:   mov    0xc(,%rdi,8),%edi            ; implicit exception: dispatches to 0x00007fb592dabe96
   9.43%    │ │    0x00007fb592dabd07:   mov    0x1c(%rax,%r9,4),%edx        ; ImmutableOopMap {rax=Oop }
            │ │                                                              ;*iload {reexecute=1 rethrow=0 return_oop=0}
            │ │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@13 (line 111)
   0.04%    │ │    0x00007fb592dabd0c:   mov    0xc(,%rdx,8),%edx            ; implicit exception: dispatches to 0x00007fb592dabeb9
  11.00%    │ │    0x00007fb592dabd13:   mov    0x20(%rax,%r9,4),%esi        ; ImmutableOopMap {rax=Oop }
            │ │                                                              ;*iload {reexecute=1 rethrow=0 return_oop=0}
            │ │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@13 (line 111)
   0.04%    │ │    0x00007fb592dabd18:   mov    0xc(,%rsi,8),%esi            ; implicit exception: dispatches to 0x00007fb592dabedc
  10.05%    │ │    0x00007fb592dabd1f:   mov    0x24(%rax,%r9,4),%ebp        ; ImmutableOopMap {rax=Oop }
            │ │                                                              ;*iload {reexecute=1 rethrow=0 return_oop=0}
            │ │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@13 (line 111)
   0.25%    │ │    0x00007fb592dabd24:   mov    0xc(,%rbp,8),%ebp            ; implicit exception: dispatches to 0x00007fb592dabeff
  11.16%    │ │    0x00007fb592dabd2b:   mov    0x28(%rax,%r9,4),%r13d       ; ImmutableOopMap {rax=Oop }
            │ │                                                              ;*iload {reexecute=1 rethrow=0 return_oop=0}
            │ │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@13 (line 111)
   0.05%    │ │    0x00007fb592dabd30:   mov    0xc(,%r13,8),%r13d           ; implicit exception: dispatches to 0x00007fb592dabf22
            │ │                                                              ;   {no_reloc}
  10.49%    │ │    0x00007fb592dabd38:   mov    0x2c(%rax,%r9,4),%r14d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@22 (line 111)
   0.05%    │ │    0x00007fb592dabd3d:   data16 xchg %ax,%ax
   1.86%    │ │    0x00007fb592dabd40:   test   %r14d,%r14d
            │╭│    0x00007fb592dabd43:   je     0x00007fb592dabdbf           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
            │││                                                              ; - java.util.Objects::requireNonNull@1 (line 232)
            │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@2 (line 180)
            │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@28 (line 112)
   0.01%    │││    0x00007fb592dabd49:   add    %ecx,%ebx
   1.85%    │││    0x00007fb592dabd4b:   add    %edi,%ebx
   0.00%    │││    0x00007fb592dabd4d:   add    %edx,%ebx
   2.29%    │││    0x00007fb592dabd4f:   add    %esi,%ebx
   0.01%    │││    0x00007fb592dabd51:   add    %ebp,%ebx
   1.95%    │││    0x00007fb592dabd53:   add    %r13d,%ebx
   1.26%    │││    0x00007fb592dabd56:   add    0xc(,%r14,8),%ebx            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@31 (line 112)
  10.67%    │││    0x00007fb592dabd5e:   lea    0x8(%r9),%r9d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@33 (line 111)
   0.06%    │││    0x00007fb592dabd62:   mov    %ebx,%r8d                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
            │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@13 (line 111)
   0.44%    ↘││    0x00007fb592dabd65:   cmp    %r9d,%r11d
             │╰    0x00007fb592dabd68:   jg     0x00007fb592dabce0
             │ ╭   0x00007fb592dabd6e:   jmp    0x00007fb592dabda0
             │ │   0x00007fb592dabd73:   nopw   0x0(%rax,%rax,1)
             │ │   0x00007fb592dabd7c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@16 (line 111)
   0.00%     │ │↗  0x00007fb592dabd80:   mov    0x10(%rax,%r9,4),%r11d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
             │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@22 (line 111)
             │ ││  0x00007fb592dabd85:   mov    %r8d,%ecx                    ; ImmutableOopMap {rax=Oop r11=NarrowOop }
             │ ││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
             │ ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@13 (line 111)
             │ ││  0x00007fb592dabd88:   add    0xc(,%r11,8),%ecx            ; implicit exception: dispatches to 0x00007fb592dabf45
   0.01%     │ ││  0x00007fb592dabd90:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@33 (line 111)
             │ ││  0x00007fb592dabd93:   mov    %ecx,%r8d                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
             │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@13 (line 111)
             │ ││  0x00007fb592dabd96:   data16 nopw 0x0(%rax,%rax,1)
             │ ↘│  0x00007fb592dabda0:   cmp    %r9d,%r10d
             │  ╰  0x00007fb592dabda3:   ja     0x00007fb592dabd80           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@16 (line 111)
             │     0x00007fb592dabda5:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@40 (line 114)
             │     0x00007fb592dabda8:   mov    0x10(%rsp),%rbp
   0.01%     │     0x00007fb592dabdad:   add    $0x18,%rsp
             │     0x00007fb592dabdb1:   cmp    0x450(%r15),%rsp             ;   {poll_return}
             │     0x00007fb592dabdb8:   ja     0x00007fb592dabdf2
   0.01%     │     0x00007fb592dabdbe:   ret    
             ↘     0x00007fb592dabdbf:   movl   $0xffffffed,0x484(%r15)      ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.Objects::requireNonNull@1 (line 232)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@2 (line 180)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@28 (line 112)
                   0x00007fb592dabdca:   movq   $0x14,0x490(%r15)
                   0x00007fb592dabdd5:   call   0x00007fb5926ff17a           ; ImmutableOopMap {rax=Oop }
                                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array@13 (line 111)
                                                                             ;   {runtime_call DeoptimizationBlob}
                   0x00007fb592dabdda:   nopl   0x0(%rax,%rax,1)
....................................................................................................
  95.09%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.09%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array, version 3, compile id 1218 
   0.29%     [kernel.kallsyms]  asm_exc_page_fault 
   0.28%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.23%     [kernel.kallsyms]  __free_one_page 
   0.21%     [kernel.kallsyms]  __mod_lruvec_state 
   0.20%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.19%     [kernel.kallsyms]  release_pages 
   0.18%     [kernel.kallsyms]  native_read_msr 
   0.18%     [kernel.kallsyms]  page_remove_rmap 
   0.15%     [kernel.kallsyms]  zap_pte_range 
   0.14%     [kernel.kallsyms]  __mod_node_page_state 
   0.11%     [kernel.kallsyms]  free_unref_page_list 
   0.10%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.09%     [kernel.kallsyms]  lock_page_memcg 
   0.09%     [kernel.kallsyms]  __rcu_read_lock 
   0.08%     [kernel.kallsyms]  __mod_zone_page_state 
   0.07%     [kernel.kallsyms]  __rcu_read_unlock 
   0.07%     [kernel.kallsyms]  perf_adjust_freq_unthr_context 
   0.06%     [kernel.kallsyms]  __update_load_avg_se 
   0.06%     [kernel.kallsyms]  hrtimer_forward 
   2.11%  <...other 345 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.09%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_concrete_array, version 3, compile id 1218 
   0.29%     [kernel.kallsyms]  asm_exc_page_fault 
   0.28%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.23%     [kernel.kallsyms]  __free_one_page 
   0.21%     [kernel.kallsyms]  __mod_lruvec_state 
   0.20%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.19%     [kernel.kallsyms]  release_pages 
   0.18%     [kernel.kallsyms]  native_read_msr 
   0.18%     [kernel.kallsyms]  page_remove_rmap 
   0.15%     [kernel.kallsyms]  zap_pte_range 
   0.14%     [kernel.kallsyms]  __mod_node_page_state 
   0.11%     [kernel.kallsyms]  free_unref_page_list 
   0.10%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.09%     [kernel.kallsyms]  lock_page_memcg 
   0.09%     [kernel.kallsyms]  __rcu_read_lock 
   0.08%     [kernel.kallsyms]  __mod_zone_page_state 
   0.07%     [kernel.kallsyms]  __rcu_read_unlock 
   0.07%     [kernel.kallsyms]  perf_adjust_freq_unthr_context 
   0.06%     [kernel.kallsyms]  __update_load_avg_se 
   0.06%     [kernel.kallsyms]  hrtimer_forward 
   2.11%  <...other 334 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.14%        jvmci, level 4
   4.18%     [kernel.kallsyms]
   0.28%             libjvm.so
   0.20%   libjvmcicompiler.so
   0.13%             libc.so.6
   0.03%           interpreter
   0.02%                      
   0.01%        hsdis-amd64.so
   0.01%  ld-linux-x86-64.so.2
   0.00%           c1, level 3
   0.00%                [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_if_concrete_array

# Run progress: 37.50% complete, ETA 00:12:13
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.209 ns/op
# Warmup Iteration   2: 5.063 ns/op
# Warmup Iteration   3: 4.056 ns/op
# Warmup Iteration   4: 5.047 ns/op
# Warmup Iteration   5: 5.035 ns/op
Iteration   1: 4.677 ns/op
Iteration   2: 4.014 ns/op
Iteration   3: 4.038 ns/op
Iteration   4: 5.062 ns/op
Iteration   5: 5.025 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_if_concrete_array":
  4.563 ±(99.9%) 1.975 ns/op [Average]
  (min, avg, max) = (4.014, 4.563, 5.062), stdev = 0.513
  CI (99.9%): [2.588, 6.538] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_if_concrete_array:asm":
PrintAssembly processed: 244564 total address lines.
Perf output processed (skipped 86.156 seconds):
 Column 1: cycles (49508 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array, version 3, compile id 1228 

                          [Verified Entry Point]
                            0x00007f238ada6840:   mov    %eax,-0x14000(%rsp)
                            0x00007f238ada6847:   sub    $0x18,%rsp
                            0x00007f238ada684b:   nop
                            0x00007f238ada684c:   cmpl   $0x1,0x20(%r15)
          ╭                 0x00007f238ada6854:   jne    0x00007f238ada69d4
          │             ↗   0x00007f238ada685a:   mov    %rbp,0x10(%rsp)
          │             │   0x00007f238ada685f:   mov    0x14(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
          │             │                                                             ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
          │             │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@0 (line 143)
   0.00%  │             │   0x00007f238ada6862:   mov    0xc(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007f238ada69fa
   0.01%  │             │   0x00007f238ada686a:   cmp    $0x2,%r10d
          │             │   0x00007f238ada686e:   mov    $0x1,%r11d
          │             │   0x00007f238ada6874:   cmovb  %r10d,%r11d
          │             │   0x00007f238ada6878:   shl    $0x3,%rax                    ;*getfield asIsArray {reexecute=0 rethrow=0 return_oop=0}
          │             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@3 (line 144)
          │             │   0x00007f238ada687c:   mov    $0x0,%r9d
          │             │   0x00007f238ada6882:   mov    $0x0,%r8d
          │             │   0x00007f238ada6888:   nopl   0x0(%rax,%rax,1)             ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@13 (line 144)
          │  ↗↗         │   0x00007f238ada6890:   cmp    %r9d,%r11d
          │╭ ││         │   0x00007f238ada6893:   jbe    0x00007f238ada68c0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││ ││         │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@16 (line 144)
          ││ ││         │   0x00007f238ada6899:   mov    0x10(%rax,%r9,4),%ecx        ; ImmutableOopMap {rax=Oop }
          ││ ││         │                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││ ││         │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@13 (line 144)
   0.00%  ││ ││         │   0x00007f238ada689e:   mov    0xc(,%rcx,8),%ecx            ; implicit exception: dispatches to 0x00007f238ada6a1d
   0.01%  ││ ││         │   0x00007f238ada68a5:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ ││         │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@33 (line 144)
          ││ ││         │   0x00007f238ada68a8:   test   $0x1,%ecx
          ││╭││         │   0x00007f238ada68ae:   je     0x00007f238ada68b9           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││││         │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@85 (line 195)
          │││││         │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
          │││││         │   0x00007f238ada68b4:   add    %ecx,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││         │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@31 (line 145)
          │││╰│         │   0x00007f238ada68b7:   jmp    0x00007f238ada6890           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││ │         │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@85 (line 195)
          │││ │         │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
          ││↘ │         │   0x00007f238ada68b9:   shl    %ecx                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          ││  │         │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@93 (line 196)
          ││  │         │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
          ││  │         │   0x00007f238ada68bb:   add    %ecx,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││  │         │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@31 (line 145)
          ││  ╰         │   0x00007f238ada68be:   jmp    0x00007f238ada6890
          │↘            │   0x00007f238ada68c0:   lea    -0x4(%r10),%r11d
          │             │   0x00007f238ada68c4:   nopl   0x0(%rax,%rax,1)
          │             │   0x00007f238ada68cc:   data16 data16 xchg %ax,%ax
   2.45%  │      ↗↗     │   0x00007f238ada68d0:   cmp    %r9d,%r11d
          │    ╭ ││     │   0x00007f238ada68d3:   jle    0x00007f238ada6980           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │    │ ││     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@16 (line 144)
   0.58%  │    │ ││     │   0x00007f238ada68d9:   mov    0x10(%rax,%r9,4),%ecx        ; ImmutableOopMap {rax=Oop }
          │    │ ││     │                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │    │ ││     │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@13 (line 144)
   2.40%  │    │ ││     │   0x00007f238ada68de:   mov    0xc(,%rcx,8),%ecx            ; implicit exception: dispatches to 0x00007f238ada6a40
  11.78%  │    │ ││     │   0x00007f238ada68e5:   mov    0x14(%rax,%r9,4),%ebx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │    │ ││     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@22 (line 144)
   2.18%  │    │ ││     │   0x00007f238ada68ea:   mov    %ecx,%edi
   0.58%  │    │ ││     │   0x00007f238ada68ec:   shl    %edi                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │    │ ││     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@93 (line 196)
          │    │ ││     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
   2.78%  │    │ ││     │   0x00007f238ada68ee:   test   $0x1,%ecx
   0.95%  │    │ ││     │   0x00007f238ada68f4:   cmove  %edi,%ecx                    ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │    │ ││     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@85 (line 195)
          │    │ ││     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
   3.01%  │    │ ││     │   0x00007f238ada68f7:   add    %ecx,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │    │ ││     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@31 (line 145)
   1.77%  │    │ ││     │   0x00007f238ada68fa:   mov    %r9d,%ecx
   1.80%  │    │ ││     │   0x00007f238ada68fd:   inc    %ecx                         ; ImmutableOopMap {rax=Oop }
          │    │ ││     │                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │    │ ││     │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@13 (line 144)
   0.74%  │    │ ││     │   0x00007f238ada68ff:   mov    0xc(,%rbx,8),%ebx            ; implicit exception: dispatches to 0x00007f238ada6a63
  11.06%  │    │ ││     │   0x00007f238ada6906:   mov    0x18(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │    │ ││     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@22 (line 144)
   1.25%  │    │ ││     │   0x00007f238ada690b:   mov    %ebx,%edi
   1.67%  │    │ ││     │   0x00007f238ada690d:   shl    %edi                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │    │ ││     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@93 (line 196)
          │    │ ││     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
   1.54%  │    │ ││     │   0x00007f238ada690f:   test   $0x1,%ebx
   1.97%  │    │ ││     │   0x00007f238ada6915:   cmove  %edi,%ebx                    ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │    │ ││     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@85 (line 195)
          │    │ ││     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
   1.97%  │    │ ││     │   0x00007f238ada6918:   add    %ebx,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │    │ ││     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@31 (line 145)
   2.40%  │    │ ││     │   0x00007f238ada691b:   lea    0x2(%r9),%ebx                ; ImmutableOopMap {rax=Oop }
          │    │ ││     │                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │    │ ││     │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@13 (line 144)
   0.66%  │    │ ││     │   0x00007f238ada691f:   mov    0xc(,%rcx,8),%ecx            ; implicit exception: dispatches to 0x00007f238ada6a86
  11.12%  │    │ ││     │   0x00007f238ada6926:   mov    0x1c(%rax,%r9,4),%ebx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │    │ ││     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@22 (line 144)
   1.44%  │    │ ││     │   0x00007f238ada692b:   mov    %ecx,%edi
   1.98%  │    │ ││     │   0x00007f238ada692d:   shl    %edi                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │    │ ││     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@93 (line 196)
          │    │ ││     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
   1.29%  │    │ ││     │   0x00007f238ada692f:   test   $0x1,%ecx
   1.82%  │    │ ││     │   0x00007f238ada6935:   cmove  %edi,%ecx                    ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │    │ ││     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@85 (line 195)
          │    │ ││     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
          │    │ ││     │                                                             ;   {no_reloc}
   1.99%  │    │ ││     │   0x00007f238ada6938:   add    %ecx,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │    │ ││     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@31 (line 145)
   2.75%  │    │ ││     │   0x00007f238ada693b:   lea    0x3(%r9),%ecx                ; ImmutableOopMap {rax=Oop }
          │    │ ││     │                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │    │ ││     │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@13 (line 144)
   0.69%  │    │ ││     │   0x00007f238ada693f:   mov    0xc(,%rbx,8),%ebx            ; implicit exception: dispatches to 0x00007f238ada6aad
  11.00%  │    │ ││     │   0x00007f238ada6946:   lea    0x4(%r9),%r9d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │    │ ││     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@33 (line 144)
   0.97%  │    │ ││     │   0x00007f238ada694a:   test   $0x1,%ebx
   0.00%  │    │╭││     │   0x00007f238ada6950:   je     0x00007f238ada695e           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │    ││││     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@85 (line 195)
          │    ││││     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
          │    ││││     │   0x00007f238ada6956:   add    %ebx,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │    ││││     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@31 (line 145)
          │    ││╰│     │   0x00007f238ada6959:   jmp    0x00007f238ada68d0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │    ││ │     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@85 (line 195)
          │    ││ │     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
   3.15%  │    │↘ │     │   0x00007f238ada695e:   shl    %ebx                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │    │  │     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@93 (line 196)
          │    │  │     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
   0.98%  │    │  │     │   0x00007f238ada6960:   add    %r8d,%ebx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │    │  │     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@31 (line 145)
   2.37%  │    │  │     │   0x00007f238ada6963:   mov    %ebx,%r8d
   0.93%  │    │  ╰     │   0x00007f238ada6966:   jmp    0x00007f238ada68d0
          │    │        │   0x00007f238ada696b:   data16 data16 nopw 0x0(%rax,%rax,1)
          │    │        │   0x00007f238ada6976:   data16 data16 xchg %ax,%ax
          │    │        │   0x00007f238ada697a:   nopw   0x0(%rax,%rax,1)
          │    ↘     ↗↗ │   0x00007f238ada6980:   cmp    %r9d,%r10d
          │        ╭ ││ │   0x00007f238ada6983:   jbe    0x00007f238ada69ba           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │        │ ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@16 (line 144)
          │        │ ││ │   0x00007f238ada6989:   mov    0x10(%rax,%r9,4),%r11d       ; ImmutableOopMap {rax=Oop }
          │        │ ││ │                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │        │ ││ │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@13 (line 144)
          │        │ ││ │   0x00007f238ada698e:   mov    0xc(,%r11,8),%r11d           ; implicit exception: dispatches to 0x00007f238ada6ad0
   0.00%  │        │ ││ │   0x00007f238ada6996:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │        │ ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@33 (line 144)
          │        │ ││ │   0x00007f238ada6999:   nopl   0x0(%rax)
          │        │ ││ │   0x00007f238ada69a0:   test   $0x1,%r11d
          │        │╭││ │   0x00007f238ada69a7:   je     0x00007f238ada69b2           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │        ││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@85 (line 195)
          │        ││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
          │        ││││ │   0x00007f238ada69ad:   add    %r11d,%r8d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │        ││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@31 (line 145)
          │        ││╰│ │   0x00007f238ada69b0:   jmp    0x00007f238ada6980           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │        ││ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@85 (line 195)
          │        ││ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
   0.00%  │        │↘ │ │   0x00007f238ada69b2:   shl    %r11d                        ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │        │  │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@93 (line 196)
          │        │  │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@28 (line 145)
   0.00%  │        │  │ │   0x00007f238ada69b5:   add    %r11d,%r8d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │        │  │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@31 (line 145)
          │        │  ╰ │   0x00007f238ada69b8:   jmp    0x00007f238ada6980
          │        ↘    │   0x00007f238ada69ba:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array@40 (line 147)
   0.00%  │             │   0x00007f238ada69bd:   mov    0x10(%rsp),%rbp
   0.01%  │             │   0x00007f238ada69c2:   add    $0x18,%rsp
          │             │↗  0x00007f238ada69c6:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │            ╭││  0x00007f238ada69cd:   ja     0x00007f238ada69e6
   0.01%  │            │││  0x00007f238ada69d3:   ret    
          ↘            │││  0x00007f238ada69d4:   mov    %rbp,0x10(%rsp)
                       │││  0x00007f238ada69d9:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
                       │││  0x00007f238ada69de:   xchg   %ax,%ax
                       │╰│  0x00007f238ada69e0:   jmp    0x00007f238ada685a
                       │ │  0x00007f238ada69e5:   hlt    
                       ↘ ╰  0x00007f238ada69e6:   lea    -0x27(%rip),%rcx        # 0x00007f238ada69c6
                            0x00007f238ada69ed:   mov    %rcx,0x468(%r15)
                            0x00007f238ada69f4:   jmp    0x00007f238a700000           ;   {runtime_call SafepointBlob}
                            0x00007f238ada69f9:   hlt    
                            0x00007f238ada69fa:   movl   $0xfffffff5,0x484(%r15)
....................................................................................................
  96.09%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.09%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array, version 3, compile id 1228 
   0.28%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.25%     [kernel.kallsyms]  release_pages 
   0.22%     [kernel.kallsyms]  __free_one_page 
   0.21%     [kernel.kallsyms]  __mod_lruvec_state 
   0.17%     [kernel.kallsyms]  page_remove_rmap 
   0.16%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.16%     [kernel.kallsyms]  native_write_msr 
   0.15%     [kernel.kallsyms]  obj_cgroup_uncharge_pages 
   0.15%     [kernel.kallsyms]  zap_pte_range 
   0.14%     [kernel.kallsyms]  free_unref_page_list 
   0.11%     [kernel.kallsyms]  __mod_node_page_state 
   0.10%     [kernel.kallsyms]  __rcu_read_unlock 
   0.09%     [kernel.kallsyms]  lock_page_memcg 
   0.08%     [kernel.kallsyms]  __mod_zone_page_state 
   0.07%     [kernel.kallsyms]  __rcu_read_lock 
   0.06%     [kernel.kallsyms]  free_swap_cache 
   0.05%     [kernel.kallsyms]  free_unref_page_commit 
   0.04%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.04%     [kernel.kallsyms]  __tlb_remove_page_size 
   1.37%  <...other 321 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.09%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_concrete_array, version 3, compile id 1228 
   0.28%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.25%     [kernel.kallsyms]  release_pages 
   0.22%     [kernel.kallsyms]  __free_one_page 
   0.21%     [kernel.kallsyms]  __mod_lruvec_state 
   0.17%     [kernel.kallsyms]  page_remove_rmap 
   0.16%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.16%     [kernel.kallsyms]  native_write_msr 
   0.15%     [kernel.kallsyms]  obj_cgroup_uncharge_pages 
   0.15%     [kernel.kallsyms]  zap_pte_range 
   0.14%     [kernel.kallsyms]  free_unref_page_list 
   0.11%     [kernel.kallsyms]  __mod_node_page_state 
   0.10%     [kernel.kallsyms]  __rcu_read_unlock 
   0.09%     [kernel.kallsyms]  lock_page_memcg 
   0.08%     [kernel.kallsyms]  __mod_zone_page_state 
   0.07%     [kernel.kallsyms]  __rcu_read_lock 
   0.06%     [kernel.kallsyms]  free_swap_cache 
   0.05%     [kernel.kallsyms]  free_unref_page_commit 
   0.04%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.04%     [kernel.kallsyms]  folio_memcg_lock.part.0 
   1.37%  <...other 308 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.11%        jvmci, level 4
   3.22%     [kernel.kallsyms]
   0.25%             libjvm.so
   0.17%   libjvmcicompiler.so
   0.12%             libc.so.6
   0.05%           interpreter
   0.03%        hsdis-amd64.so
   0.02%                      
   0.01%           c1, level 3
   0.01%  ld-linux-x86-64.so.2
   0.00%        perf-12798.map
   0.00%            libjava.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_if_interface_array

# Run progress: 50.00% complete, ETA 00:09:44
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 81.564 ns/op
# Warmup Iteration   2: 46.850 ns/op
# Warmup Iteration   3: 46.882 ns/op
# Warmup Iteration   4: 46.942 ns/op
# Warmup Iteration   5: 47.082 ns/op
Iteration   1: 46.777 ns/op
Iteration   2: 46.706 ns/op
Iteration   3: 46.971 ns/op
Iteration   4: 46.793 ns/op
Iteration   5: 46.795 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_if_interface_array":
  46.808 ±(99.9%) 0.376 ns/op [Average]
  (min, avg, max) = (46.706, 46.808, 46.971), stdev = 0.098
  CI (99.9%): [46.432, 47.185] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_if_interface_array:asm":
PrintAssembly processed: 249987 total address lines.
Perf output processed (skipped 86.559 seconds):
 Column 1: cycles (49631 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array, version 3, compile id 1200 

                                                      0x00007f418edad560:   mov    %eax,-0x14000(%rsp)
                                                      0x00007f418edad567:   sub    $0x18,%rsp
                                                      0x00007f418edad56b:   nop
                                                      0x00007f418edad56c:   cmpl   $0x1,0x20(%r15)
                                                      0x00007f418edad574:   jne    0x00007f418edad8fc
                                                      0x00007f418edad57a:   mov    %rbp,0x10(%rsp)
                                                      0x00007f418edad57f:   mov    0x10(%rsi),%ecx              ; ImmutableOopMap {rcx=NarrowOop rsi=Oop }
                                                                                                                ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@0 (line 121)
                                                      0x00007f418edad582:   mov    0xc(,%rcx,8),%r10d           ; implicit exception: dispatches to 0x00007f418edad920
   0.00%                                              0x00007f418edad58a:   mov    %ecx,%r11d
                                                      0x00007f418edad58d:   shl    $0x3,%r11                    ;*getfield interfaceArray {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@3 (line 122)
                                                      0x00007f418edad591:   vxorpd %xmm0,%xmm0,%xmm0            ;*f2i {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@292 (line 231)
                                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
                                                      0x00007f418edad595:   vxorpd %xmm1,%xmm1,%xmm1            ;*d2i {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@255 (line 225)
                                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
                                                      0x00007f418edad599:   mov    $0x0,%r9d
                                                      0x00007f418edad59f:   mov    $0x0,%r8d
                                                      0x00007f418edad5a5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@13 (line 122)
   1.37%           ↗ ↗ ↗ ↗ ↗ ↗↗  ↗↗↗  ↗↗↗↗↗↗          0x00007f418edad5b0:   cmp    %r9d,%r10d
          ╭        │ │ │ │ │ ││  │││  ││││││          0x00007f418edad5b3:   jbe    0x00007f418edad8af           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │        │ │ │ │ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@16 (line 122)
   0.66%  │        │ │ │ │ │ ││  │││  ││││││          0x00007f418edad5b9:   mov    0x10(%r11,%r9,4),%eax        ; ImmutableOopMap {rax=NarrowOop r11=Oop }
          │        │ │ │ │ │ ││  │││  ││││││                                                                    ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │        │ │ │ │ │ ││  │││  ││││││                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@13 (line 122)
   2.37%  │        │ │ │ │ │ ││  │││  ││││││          0x00007f418edad5be:   mov    0x8(,%rax,8),%ecx            ; implicit exception: dispatches to 0x00007f418edad943
   9.81%  │        │ │ │ │ │ ││  │││  ││││││          0x00007f418edad5c5:   mov    %r9d,%ebx
   0.22%  │        │ │ │ │ │ ││  │││  ││││││          0x00007f418edad5c8:   inc    %ebx
   0.06%  │        │ │ │ │ │ ││  │││  ││││││          0x00007f418edad5ca:   cmp    $0x102b860,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
          │╭       │ │ │ │ │ ││  │││  ││││││          0x00007f418edad5d0:   je     0x00007f418edad6b7
   2.23%  ││       │ │ │ │ │ ││  │││  ││││││          0x00007f418edad5d6:   data16 nopw 0x0(%rax,%rax,1)
   0.31%  ││       │ │ │ │ │ ││  │││  ││││││          0x00007f418edad5e0:   cmp    $0x102a868,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
          ││╭      │ │ │ │ │ ││  │││  ││││││          0x00007f418edad5e6:   je     0x00007f418edad710
   3.54%  │││      │ │ │ │ │ ││  │││  ││││││          0x00007f418edad5ec:   cmp    $0x102ac58,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
   0.45%  │││      │ │ │ │ │ ││  │││  ││││││          0x00007f418edad5f2:   sete   %dil
   0.64%  │││      │ │ │ │ │ ││  │││  ││││││          0x00007f418edad5f6:   movzbl %dil,%edi                    ;* unwind (locked if synchronized)
          │││      │ │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.Class::isInstance@-3
          │││      │ │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$DMH/0x00007f410c007000::invokeSpecial@11
          │││      │ │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c083400::invoke@21
          │││      │ │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c084800::guard@32
          │││      │ │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││      │ │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c084800::guard@89
          │││      │ │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││      │ │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c085000::invoke@91
          │││      │ │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c087800::tableSwitch@103
          │││      │ │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c08b000::delegate@14
          │││      │ │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c08a400::invoke@114
          │││      │ │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c08ac00::linkToTargetMethod@6
          │││      │ │ │ │ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
          │││      │ │ │ │ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.22%  │││      │ │ │ │ │ ││  │││  ││││││          0x00007f418edad5fa:   nopw   0x0(%rax,%rax,1)
   1.29%  │││      │ │ │ │ │ ││  │││  ││││││          0x00007f418edad600:   test   $0x1,%edi
          │││╭     │ │ │ │ │ ││  │││  ││││││          0x00007f418edad606:   jne    0x00007f418edad6da
   0.97%  ││││     │ │ │ │ │ ││  │││  ││││││          0x00007f418edad60c:   cmp    $0x102b460,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
          ││││╭    │ │ │ │ │ ││  │││  ││││││          0x00007f418edad612:   je     0x00007f418edad73c
   1.63%  │││││    │ │ │ │ │ ││  │││  ││││││          0x00007f418edad618:   nopl   0x0(%rax,%rax,1)
   0.19%  │││││    │ │ │ │ │ ││  │││  ││││││          0x00007f418edad620:   cmp    $0x102b660,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
          │││││╭   │ │ │ │ │ ││  │││  ││││││          0x00007f418edad626:   je     0x00007f418edad760
   2.90%  ││││││   │ │ │ │ │ ││  │││  ││││││          0x00007f418edad62c:   cmp    $0x102b260,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
          ││││││╭  │ │ │ │ │ ││  │││  ││││││          0x00007f418edad632:   je     0x00007f418edad793
   1.89%  │││││││  │ │ │ │ │ ││  │││  ││││││          0x00007f418edad638:   nopl   0x0(%rax,%rax,1)
   0.29%  │││││││  │ │ │ │ │ ││  │││  ││││││          0x00007f418edad640:   cmp    $0x102b060,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
          │││││││╭ │ │ │ │ │ ││  │││  ││││││          0x00007f418edad646:   je     0x00007f418edad7de
   1.97%  ││││││││ │ │ │ │ │ ││  │││  ││││││          0x00007f418edad64c:   cmp    $0x102ae58,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
   0.91%  ││││││││ │ │ │ │ │ ││  │││  ││││││          0x00007f418edad652:   sete   %dil
   0.70%  ││││││││ │ │ │ │ │ ││  │││  ││││││          0x00007f418edad656:   movzbl %dil,%edi                    method is native {reexecute=0 rethrow=0 return_oop=0}
          ││││││││ │ │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.Class::isInstance@0
          ││││││││ │ │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$DMH/0x00007f410c007000::invokeSpecial@11
          ││││││││ │ │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c083400::invoke@21
          ││││││││ │ │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c084800::guard@32
          ││││││││ │ │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││ │ │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c084800::guard@89
          ││││││││ │ │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││ │ │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c084800::guard@89
          ││││││││ │ │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││ │ │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c084800::guard@89
          ││││││││ │ │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││ │ │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c084800::guard@89
          ││││││││ │ │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││ │ │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c084800::guard@89
          ││││││││ │ │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││ │ │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c084800::guard@89
          ││││││││ │ │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││ │ │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c085000::invoke@91
          ││││││││ │ │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c087800::tableSwitch@103
          ││││││││ │ │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c08b000::delegate@14
          ││││││││ │ │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c08a400::invoke@114
          ││││││││ │ │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c08ac00::linkToTargetMethod@6
          ││││││││ │ │ │ │ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
          ││││││││ │ │ │ │ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.02%  ││││││││ │ │ │ │ │ ││  │││  ││││││          0x00007f418edad65a:   nopw   0x0(%rax,%rax,1)
   0.06%  ││││││││ │ │ │ │ │ ││  │││  ││││││          0x00007f418edad660:   test   $0x1,%edi
          ││││││││ │ │ │ │ │ ││  │││  ││││││          0x00007f418edad666:   je     0x00007f418edad8ce
   0.16%  ││││││││ │ │ │ │ │ ││  │││  ││││││          0x00007f418edad66c:   cmp    $0x102ae58,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
          ││││││││ │ │ │ │ │ ││  │││  ││││││          0x00007f418edad672:   jne    0x00007f418edad8f5           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││││││││ │ │ │ │ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@319 (line 236)
          ││││││││ │ │ │ │ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.34%  ││││││││ │ │ │ │ │ ││  │││  ││││││          0x00007f418edad678:   mov    0xc(,%rax,8),%ecx            ; ImmutableOopMap {rcx=NarrowOop r11=Oop }
          ││││││││ │ │ │ │ │ ││  │││  ││││││                                                                    ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││││││││ │ │ │ │ │ ││  │││  ││││││                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@13 (line 122)
   0.06%  ││││││││ │ │ │ │ │ ││  │││  ││││││          0x00007f418edad67f:   mov    0x14(,%rcx,8),%eax           ; implicit exception: dispatches to 0x00007f418edad966
   1.48%  ││││││││ │ │ │ │ │ ││  │││  ││││││          0x00007f418edad686:   movsbl 0x10(,%rcx,8),%ecx           ; ImmutableOopMap {r11=Oop }
          ││││││││ │ │ │ │ │ ││  │││  ││││││                                                                    ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││││││││ │ │ │ │ │ ││  │││  ││││││                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@13 (line 122)
   0.18%  ││││││││ │ │ │ │ │ ││  │││  ││││││          0x00007f418edad68e:   mov    0xc(,%rax,8),%eax            ; implicit exception: dispatches to 0x00007f418edad98d
   1.34%  ││││││││ │ │ │ │ │ ││  │││  ││││││          0x00007f418edad695:   shr    %cl,%eax                     ;*ishr {reexecute=0 rethrow=0 return_oop=0}
          ││││││││ │ │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.String::length@9 (line 1519)
          ││││││││ │ │ │ │ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@329 (line 237)
          ││││││││ │ │ │ │ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.60%  ││││││││ │ │ │ │ │ ││  │││  ││││││          0x00007f418edad697:   nopw   0x0(%rax,%rax,1)
          ││││││││ │ │ │ │ │ ││  │││  ││││││          0x00007f418edad6a0:   test   $0x1,%eax
          ││││││││╭│ │ │ │ │ ││  │││  ││││││          0x00007f418edad6a6:   je     0x00007f418edad832           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││ │ │ │ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@334 (line 237)
          ││││││││││ │ │ │ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.03%  ││││││││││ │ │ │ │ ││  │││  ││││││          0x00007f418edad6ac:   add    %eax,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││ │ │ │ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@31 (line 123)
   0.01%  ││││││││││ │ │ │ │ ││  │││  ││││││          0x00007f418edad6af:   mov    %ebx,%r9d
   0.26%  │││││││││╰ │ │ │ │ ││  │││  ││││││          0x00007f418edad6b2:   jmp    0x00007f418edad5b0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││││││││  │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c084800::guard@55
          │││││││││  │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││││││││  │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c085000::invoke@91
          │││││││││  │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c087800::tableSwitch@103
          │││││││││  │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c08b000::delegate@14
          │││││││││  │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c08a400::invoke@114
          │││││││││  │ │ │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c08ac00::linkToTargetMethod@6
          │││││││││  │ │ │ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
          │││││││││  │ │ │ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   3.03%  │↘│││││││  │ │ │ │ ││  │││  ││││││          0x00007f418edad6b7:   mov    0x10(,%rax,8),%rax           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │ │││││││  │ │ │ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@112 (line 201)
          │ │││││││  │ │ │ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   2.92%  │ │││││││  │ │ │ │ ││  │││  ││││││          0x00007f418edad6bf:   mov    %eax,%r9d                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          │ │││││││  │ │ │ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@138 (line 204)
          │ │││││││  │ │ │ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.01%  │ │││││││  │ │ │ │ ││  │││  ││││││          0x00007f418edad6c2:   test   $0x1,%rax
          │ │││││││ ╭│ │ │ │ ││  │││  ││││││          0x00007f418edad6c9:   je     0x00007f418edad785           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │ │││││││ ││ │ │ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@119 (line 201)
          │ │││││││ ││ │ │ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.29%  │ │││││││ ││ │ │ │ ││  │││  ││││││          0x00007f418edad6cf:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │││││││ ││ │ │ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@31 (line 123)
   0.09%  │ │││││││ ││ │ │ │ ││  │││  ││││││          0x00007f418edad6d2:   mov    %ebx,%r9d
   0.00%  │ │││││││ │╰ │ │ │ ││  │││  ││││││          0x00007f418edad6d5:   jmp    0x00007f418edad5b0           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │ │││││││ │  │ │ │ ││  │││  ││││││                                                                    ; - java.util.Objects::requireNonNull@1 (line 232)
          │ │││││││ │  │ │ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@2 (line 193)
          │ │││││││ │  │ │ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   3.66%  │ │↘│││││ │  │ │ │ ││  │││  ││││││          0x00007f418edad6da:   nopw   0x0(%rax,%rax,1)
   0.30%  │ │ │││││ │  │ │ │ ││  │││  ││││││          0x00007f418edad6e0:   cmp    $0x102ac58,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
   0.00%  │ │ │││││ │  │ │ │ ││  │││  ││││││          0x00007f418edad6e6:   jne    0x00007f418edad8ee           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ │ │││││ │  │ │ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@143 (line 206)
          │ │ │││││ │  │ │ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   1.74%  │ │ │││││ │  │ │ │ ││  │││  ││││││          0x00007f418edad6ec:   movswl 0xc(,%rax,8),%eax            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │ │ │││││ │  │ │ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@150 (line 207)
          │ │ │││││ │  │ │ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   1.44%  │ │ │││││ │  │ │ │ ││  │││  ││││││          0x00007f418edad6f4:   test   $0x1,%eax
          │ │ │││││ │ ╭│ │ │ ││  │││  ││││││          0x00007f418edad6fa:   jne    0x00007f418edad7c8           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │ │ │││││ │ ││ │ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@155 (line 207)
          │ │ │││││ │ ││ │ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.63%  │ │ │││││ │ ││ │ │ ││  │││  ││││││          0x00007f418edad700:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │ │ │││││ │ ││ │ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@164 (line 208)
          │ │ │││││ │ ││ │ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.34%  │ │ │││││ │ ││ │ │ ││  │││  ││││││          0x00007f418edad702:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │ │││││ │ ││ │ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@31 (line 123)
   0.17%  │ │ │││││ │ ││ │ │ ││  │││  ││││││          0x00007f418edad705:   mov    %ebx,%r9d
   0.00%  │ │ │││││ │ ││ │ │ ││  │││  ││││││          0x00007f418edad708:   mov    %eax,%r8d
   0.00%  │ │ │││││ │ │╰ │ │ ││  │││  ││││││          0x00007f418edad70b:   jmp    0x00007f418edad5b0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ │ │││││ │ │  │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c085000::invoke@56
          │ │ │││││ │ │  │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c087800::tableSwitch@103
          │ │ │││││ │ │  │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c08b000::delegate@14
          │ │ │││││ │ │  │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c08a400::invoke@114
          │ │ │││││ │ │  │ │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c08ac00::linkToTargetMethod@6
          │ │ │││││ │ │  │ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
          │ │ │││││ │ │  │ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   3.31%  │ ↘ │││││ │ │  │ │ ││  │││  ││││││          0x00007f418edad710:   mov    0xc(,%rax,8),%eax            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │   │││││ │ │  │ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@80 (line 195)
          │   │││││ │ │  │ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   2.90%  │   │││││ │ │  │ │ ││  │││  ││││││          0x00007f418edad717:   nopw   0x0(%rax,%rax,1)
   0.01%  │   │││││ │ │  │ │ ││  │││  ││││││          0x00007f418edad720:   test   $0x1,%eax
          │   │││││ │ │ ╭│ │ ││  │││  ││││││          0x00007f418edad726:   jne    0x00007f418edad7d3           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │   │││││ │ │ ││ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@85 (line 195)
          │   │││││ │ │ ││ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.58%  │   │││││ │ │ ││ │ ││  │││  ││││││          0x00007f418edad72c:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │   │││││ │ │ ││ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@93 (line 196)
          │   │││││ │ │ ││ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.31%  │   │││││ │ │ ││ │ ││  │││  ││││││          0x00007f418edad72e:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │   │││││ │ │ ││ │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@31 (line 123)
   0.15%  │   │││││ │ │ ││ │ ││  │││  ││││││          0x00007f418edad731:   mov    %ebx,%r9d
   0.00%  │   │││││ │ │ ││ │ ││  │││  ││││││          0x00007f418edad734:   mov    %eax,%r8d
   0.01%  │   │││││ │ │ │╰ │ ││  │││  ││││││          0x00007f418edad737:   jmp    0x00007f418edad5b0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │   │││││ │ │ │  │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c084800::guard@55
          │   │││││ │ │ │  │ ││  │││  ││││││                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │   │││││ │ │ │  │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c084800::guard@89
          │   │││││ │ │ │  │ ││  │││  ││││││                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │   │││││ │ │ │  │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c084800::guard@89
          │   │││││ │ │ │  │ ││  │││  ││││││                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │   │││││ │ │ │  │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c085000::invoke@91
          │   │││││ │ │ │  │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c087800::tableSwitch@103
          │   │││││ │ │ │  │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c08b000::delegate@14
          │   │││││ │ │ │  │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c08a400::invoke@114
          │   │││││ │ │ │  │ ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c08ac00::linkToTargetMethod@6
          │   │││││ │ │ │  │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
          │   │││││ │ │ │  │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   2.68%  │   ↘││││ │ │ │  │ ││  │││  ││││││          0x00007f418edad73c:   movsbl 0xc(,%rax,8),%eax            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │    ││││ │ │ │  │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@184 (line 213)
          │    ││││ │ │ │  │ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   2.63%  │    ││││ │ │ │  │ ││  │││  ││││││          0x00007f418edad744:   test   $0x1,%eax
          │    ││││ │ │ │ ╭│ ││  │││  ││││││          0x00007f418edad74a:   jne    0x00007f418edad81c           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │    ││││ │ │ │ ││ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@189 (line 213)
          │    ││││ │ │ │ ││ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.82%  │    ││││ │ │ │ ││ ││  │││  ││││││          0x00007f418edad750:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │    ││││ │ │ │ ││ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@198 (line 214)
          │    ││││ │ │ │ ││ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.43%  │    ││││ │ │ │ ││ ││  │││  ││││││          0x00007f418edad752:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │    ││││ │ │ │ ││ ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@31 (line 123)
   0.20%  │    ││││ │ │ │ ││ ││  │││  ││││││          0x00007f418edad755:   mov    %ebx,%r9d
          │    ││││ │ │ │ ││ ││  │││  ││││││          0x00007f418edad758:   mov    %eax,%r8d
   0.00%  │    ││││ │ │ │ │╰ ││  │││  ││││││          0x00007f418edad75b:   jmp    0x00007f418edad5b0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │    ││││ │ │ │ │  ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c084800::guard@55
          │    ││││ │ │ │ │  ││  │││  ││││││                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │    ││││ │ │ │ │  ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c084800::guard@89
          │    ││││ │ │ │ │  ││  │││  ││││││                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │    ││││ │ │ │ │  ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c084800::guard@89
          │    ││││ │ │ │ │  ││  │││  ││││││                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │    ││││ │ │ │ │  ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c084800::guard@89
          │    ││││ │ │ │ │  ││  │││  ││││││                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │    ││││ │ │ │ │  ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c085000::invoke@91
          │    ││││ │ │ │ │  ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c087800::tableSwitch@103
          │    ││││ │ │ │ │  ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c08b000::delegate@14
          │    ││││ │ │ │ │  ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c08a400::invoke@114
          │    ││││ │ │ │ │  ││  │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c08ac00::linkToTargetMethod@6
          │    ││││ │ │ │ │  ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
          │    ││││ │ │ │ │  ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   2.91%  │    ↘│││ │ │ │ │  ││  │││  ││││││          0x00007f418edad760:   movzwl 0xc(,%rax,8),%eax            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │     │││ │ │ │ │  ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@218 (line 219)
          │     │││ │ │ │ │  ││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   2.52%  │     │││ │ │ │ │  ││  │││  ││││││          0x00007f418edad768:   test   $0x1,%eax
          │     │││ │ │ │ │ ╭││  │││  ││││││          0x00007f418edad76e:   jne    0x00007f418edad827           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │     │││ │ │ │ │ │││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@223 (line 219)
          │     │││ │ │ │ │ │││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.70%  │     │││ │ │ │ │ │││  │││  ││││││          0x00007f418edad774:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │     │││ │ │ │ │ │││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@232 (line 220)
          │     │││ │ │ │ │ │││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.34%  │     │││ │ │ │ │ │││  │││  ││││││          0x00007f418edad776:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │     │││ │ │ │ │ │││  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@31 (line 123)
   0.13%  │     │││ │ │ │ │ │││  │││  ││││││          0x00007f418edad779:   mov    %ebx,%r9d
          │     │││ │ │ │ │ │││  │││  ││││││          0x00007f418edad77c:   mov    %eax,%r8d
   0.02%  │     │││ │ │ │ │ │││  │││  ││││││          0x00007f418edad77f:   nop
   0.01%  │     │││ │ │ │ │ │╰│  │││  ││││││          0x00007f418edad780:   jmp    0x00007f418edad5b0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │     │││ │ │ │ │ │ │  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@119 (line 201)
          │     │││ │ │ │ │ │ │  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.59%  │     │││ ↘ │ │ │ │ │  │││  ││││││          0x00007f418edad785:   shl    %r9d                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │     │││   │ │ │ │ │  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@129 (line 202)
          │     │││   │ │ │ │ │  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.38%  │     │││   │ │ │ │ │  │││  ││││││          0x00007f418edad788:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │     │││   │ │ │ │ │  │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@31 (line 123)
   0.15%  │     │││   │ │ │ │ │  │││  ││││││          0x00007f418edad78b:   mov    %ebx,%r9d
   0.00%  │     │││   │ │ │ │ ╰  │││  ││││││          0x00007f418edad78e:   jmp    0x00007f418edad5b0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │     │││   │ │ │ │    │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c084800::guard@55
          │     │││   │ │ │ │    │││  ││││││                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │     │││   │ │ │ │    │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c084800::guard@89
          │     │││   │ │ │ │    │││  ││││││                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │     │││   │ │ │ │    │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c084800::guard@89
          │     │││   │ │ │ │    │││  ││││││                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │     │││   │ │ │ │    │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c084800::guard@89
          │     │││   │ │ │ │    │││  ││││││                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │     │││   │ │ │ │    │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c084800::guard@89
          │     │││   │ │ │ │    │││  ││││││                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │     │││   │ │ │ │    │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c085000::invoke@91
          │     │││   │ │ │ │    │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c087800::tableSwitch@103
          │     │││   │ │ │ │    │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c08b000::delegate@14
          │     │││   │ │ │ │    │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c08a400::invoke@114
          │     │││   │ │ │ │    │││  ││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f410c08ac00::linkToTargetMethod@6
          │     │││   │ │ │ │    │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
          │     │││   │ │ │ │    │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   2.52%  │     ↘││   │ │ │ │    │││  ││││││          0x00007f418edad793:   vmovsd 0x10(,%rax,8),%xmm2          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │      ││   │ │ │ │    │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@252 (line 225)
          │      ││   │ │ │ │    │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   2.56%  │      ││   │ │ │ │    │││  ││││││          0x00007f418edad79c:   vcvttsd2si %xmm2,%eax
   2.33%  │      ││   │ │ │ │    │││  ││││││          0x00007f418edad7a0:   cmp    $0x80000000,%eax
          │      ││   │ │ │ │  ╭ │││  ││││││          0x00007f418edad7a6:   je     0x00007f418edad85b           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
          │      ││   │ │ │ │  │ │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@255 (line 225)
          │      ││   │ │ │ │  │ │││  ││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.03%  │      ││   │ │ │ │  │ │││  ││││││ ↗↗   ↗   0x00007f418edad7ac:   test   $0x1,%eax
          │      ││   │ │ │ │  │╭│││  ││││││ ││   │   0x00007f418edad7b2:   jne    0x00007f418edad845           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │      ││   │ │ │ │  │││││  ││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@258 (line 225)
          │      ││   │ │ │ │  │││││  ││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.52%  │      ││   │ │ │ │  │││││  ││││││ ││   │   0x00007f418edad7b8:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │      ││   │ │ │ │  │││││  ││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@268 (line 226)
          │      ││   │ │ │ │  │││││  ││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.37%  │      ││   │ │ │ │  │││││  ││││││ ││   │   0x00007f418edad7ba:   add    %r8d,%eax
   0.12%  │      ││   │ │ │ │  │││││  ││││││ ││   │   0x00007f418edad7bd:   mov    %ebx,%r9d
          │      ││   │ │ │ │  │││││  ││││││ ││   │   0x00007f418edad7c0:   mov    %eax,%r8d
   0.01%  │      ││   │ │ │ │  ││╰││  ││││││ ││   │   0x00007f418edad7c3:   jmp    0x00007f418edad5b0
   0.38%  │      ││   ↘ │ │ │  ││ ││  ││││││ ││   │   0x00007f418edad7c8:   add    %eax,%r8d
   0.12%  │      ││     │ │ │  ││ ││  ││││││ ││   │   0x00007f418edad7cb:   mov    %ebx,%r9d
   0.00%  │      ││     │ │ │  ││ ╰│  ││││││ ││   │   0x00007f418edad7ce:   jmp    0x00007f418edad5b0
   0.46%  │      ││     ↘ │ │  ││  │  ││││││ ││   │   0x00007f418edad7d3:   add    %eax,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │      ││       │ │  ││  │  ││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@31 (line 123)
   0.27%  │      ││       │ │  ││  │  ││││││ ││   │   0x00007f418edad7d6:   mov    %ebx,%r9d
   0.00%  │      ││       │ │  ││  ╰  ││││││ ││   │   0x00007f418edad7d9:   jmp    0x00007f418edad5b0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │      ││       │ │  ││     ││││││ ││   │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f410c084800::guard@55
          │      ││       │ │  ││     ││││││ ││   │                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │      ││       │ │  ││     ││││││ ││   │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f410c084800::guard@89
          │      ││       │ │  ││     ││││││ ││   │                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │      ││       │ │  ││     ││││││ ││   │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f410c084800::guard@89
          │      ││       │ │  ││     ││││││ ││   │                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │      ││       │ │  ││     ││││││ ││   │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f410c084800::guard@89
          │      ││       │ │  ││     ││││││ ││   │                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │      ││       │ │  ││     ││││││ ││   │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f410c084800::guard@89
          │      ││       │ │  ││     ││││││ ││   │                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │      ││       │ │  ││     ││││││ ││   │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f410c084800::guard@89
          │      ││       │ │  ││     ││││││ ││   │                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │      ││       │ │  ││     ││││││ ││   │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f410c085000::invoke@91
          │      ││       │ │  ││     ││││││ ││   │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f410c087800::tableSwitch@103
          │      ││       │ │  ││     ││││││ ││   │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f410c08b000::delegate@14
          │      ││       │ │  ││     ││││││ ││   │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f410c08a400::invoke@114
          │      ││       │ │  ││     ││││││ ││   │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f410c08ac00::linkToTargetMethod@6
          │      ││       │ │  ││     ││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@11 (line 193)
          │      ││       │ │  ││     ││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   2.42%  │      ↘│       │ │  ││     ││││││ ││   │   0x00007f418edad7de:   vmovss 0xc(,%rax,8),%xmm2           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │       │       │ │  ││     ││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@289 (line 231)
          │       │       │ │  ││     ││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
          │       │       │ │  ││     ││││││ ││   │                                                             ;   {no_reloc}
   1.87%  │       │       │ │  ││     ││││││ ││   │   0x00007f418edad7e7:   vcvttss2si %xmm2,%eax
   2.13%  │       │       │ │  ││     ││││││ ││   │   0x00007f418edad7eb:   cmp    $0x80000000,%eax
          │       │       │ │  ││   ╭ ││││││ ││   │   0x00007f418edad7f1:   je     0x00007f418edad87a           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
          │       │       │ │  ││   │ ││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@292 (line 231)
          │       │       │ │  ││   │ ││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.03%  │       │       │ │  ││   │ ││││││ ││ ↗↗│↗  0x00007f418edad7f7:   nopw   0x0(%rax,%rax,1)
          │       │       │ │  ││   │ ││││││ ││ ││││  0x00007f418edad800:   test   $0x1,%eax
          │       │       │ │  ││   │╭││││││ ││ ││││  0x00007f418edad806:   jne    0x00007f418edad850           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │       │       │ │  ││   ││││││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@295 (line 231)
          │       │       │ │  ││   ││││││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.58%  │       │       │ │  ││   ││││││││ ││ ││││  0x00007f418edad80c:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │       │       │ │  ││   ││││││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@305 (line 232)
          │       │       │ │  ││   ││││││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.32%  │       │       │ │  ││   ││││││││ ││ ││││  0x00007f418edad80e:   add    %r8d,%eax
   0.11%  │       │       │ │  ││   ││││││││ ││ ││││  0x00007f418edad811:   mov    %ebx,%r9d
          │       │       │ │  ││   ││││││││ ││ ││││  0x00007f418edad814:   mov    %eax,%r8d
   0.00%  │       │       │ │  ││   ││╰│││││ ││ ││││  0x00007f418edad817:   jmp    0x00007f418edad5b0
   0.34%  │       │       ↘ │  ││   ││ │││││ ││ ││││  0x00007f418edad81c:   add    %eax,%r8d
   0.12%  │       │         │  ││   ││ │││││ ││ ││││  0x00007f418edad81f:   mov    %ebx,%r9d
          │       │         │  ││   ││ ╰││││ ││ ││││  0x00007f418edad822:   jmp    0x00007f418edad5b0
   0.38%  │       │         ↘  ││   ││  ││││ ││ ││││  0x00007f418edad827:   add    %eax,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │       │            ││   ││  ││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@31 (line 123)
   0.16%  │       │            ││   ││  ││││ ││ ││││  0x00007f418edad82a:   mov    %ebx,%r9d
          │       │            ││   ││  ╰│││ ││ ││││  0x00007f418edad82d:   jmp    0x00007f418edad5b0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │       │            ││   ││   │││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@334 (line 237)
          │       │            ││   ││   │││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.02%  │       ↘            ││   ││   │││ ││ ││││  0x00007f418edad832:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │                    ││   ││   │││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@346 (line 238)
          │                    ││   ││   │││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
   0.01%  │                    ││   ││   │││ ││ ││││  0x00007f418edad834:   add    %r8d,%eax
   0.02%  │                    ││   ││   │││ ││ ││││  0x00007f418edad837:   mov    %ebx,%r9d
          │                    ││   ││   │││ ││ ││││  0x00007f418edad83a:   mov    %eax,%r8d
   0.00%  │                    ││   ││   │││ ││ ││││  0x00007f418edad83d:   data16 xchg %ax,%ax
          │                    ││   ││   ╰││ ││ ││││  0x00007f418edad840:   jmp    0x00007f418edad5b0
   0.64%  │                    │↘   ││    ││ ││ ││││  0x00007f418edad845:   add    %eax,%r8d
   0.51%  │                    │    ││    ││ ││ ││││  0x00007f418edad848:   mov    %ebx,%r9d
   0.00%  │                    │    ││    ╰│ ││ ││││  0x00007f418edad84b:   jmp    0x00007f418edad5b0
   0.22%  │                    │    │↘     │ ││ ││││  0x00007f418edad850:   add    %eax,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                    │    │      │ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@31 (line 123)
   0.28%  │                    │    │      │ ││ ││││  0x00007f418edad853:   mov    %ebx,%r9d
   0.00%  │                    │    │      ╰ ││ ││││  0x00007f418edad856:   jmp    0x00007f418edad5b0
          │                    ↘    │        ││ ││││  0x00007f418edad85b:   vucomisd %xmm2,%xmm2
          │                         │        ││ ││││  0x00007f418edad85f:   nop
          │                         │       ╭││ ││││  0x00007f418edad860:   jp     0x00007f418edad89a
          │                         │       │││ ││││  0x00007f418edad866:   vucomisd %xmm1,%xmm2
          │                         │       │╰│ ││││  0x00007f418edad86a:   jbe    0x00007f418edad7ac
          │                         │       │ │ ││││  0x00007f418edad870:   mov    $0x7fffffff,%eax
          │                         │       │ ╰ ││││  0x00007f418edad875:   jmp    0x00007f418edad7ac           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
          │                         │       │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@255 (line 225)
          │                         │       │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
          │                         ↘       │   ││││  0x00007f418edad87a:   vucomiss %xmm2,%xmm2
          │                                 │   ││││  0x00007f418edad87e:   xchg   %ax,%ax
          │                                 │  ╭││││  0x00007f418edad880:   jp     0x00007f418edad8a5
          │                                 │  │││││  0x00007f418edad886:   vucomiss %xmm0,%xmm2
          │                                 │  │╰│││  0x00007f418edad88a:   jbe    0x00007f418edad7f7
          │                                 │  │ │││  0x00007f418edad890:   mov    $0x7fffffff,%eax
          │                                 │  │ ╰││  0x00007f418edad895:   jmp    0x00007f418edad7f7           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
          │                                 │  │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@292 (line 231)
          │                                 │  │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
          │                                 ↘  │  ││  0x00007f418edad89a:   mov    $0x0,%eax
          │                                    │  ││  0x00007f418edad89f:   nop
          │                                    │  ╰│  0x00007f418edad8a0:   jmp    0x00007f418edad7ac           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
          │                                    │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@255 (line 225)
          │                                    │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
          │                                    ↘   │  0x00007f418edad8a5:   mov    $0x0,%eax
          │                                        ╰  0x00007f418edad8aa:   jmp    0x00007f418edad7f7           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchIfMethod@292 (line 231)
          │                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@28 (line 123)
          ↘                                           0x00007f418edad8af:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array@40 (line 125)
                                                      0x00007f418edad8b2:   mov    0x10(%rsp),%rbp
   0.00%                                              0x00007f418edad8b7:   add    $0x18,%rsp
                                                      0x00007f418edad8bb:   nopl   0x0(%rax,%rax,1)
                                                      0x00007f418edad8c0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                                                      0x00007f418edad8c7:   ja     0x00007f418edad90c
                                                      0x00007f418edad8cd:   ret                                 ;* unwind (locked if synchronized)
                                                                                                                ; - java.lang.invoke.MethodHandleImpl::profileBoolean@-3
                                                                                                                ; - java.lang.invoke.LambdaForm$MH/0x00007f410c084800::guard@46
                                                                                                                ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                                                                ; - java.lang.invoke.LambdaForm$MH/0x00007f410c084800::guard@89
                                                                                                                ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                                                                ; - java.lang.invoke.LambdaForm$MH/0x00007f410c084800::guard@89
....................................................................................................
  95.45%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.45%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array, version 3, compile id 1200 
   0.30%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.26%     [kernel.kallsyms]  native_read_msr 
   0.22%     [kernel.kallsyms]  release_pages 
   0.22%     [kernel.kallsyms]  __free_one_page 
   0.21%     [kernel.kallsyms]  __mod_lruvec_state 
   0.21%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.16%     [kernel.kallsyms]  page_remove_rmap 
   0.16%     [kernel.kallsyms]  zap_pte_range 
   0.15%     [kernel.kallsyms]  asm_exc_page_fault 
   0.13%     [kernel.kallsyms]  free_unref_page_list 
   0.12%     [kernel.kallsyms]  __rcu_read_lock 
   0.12%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.09%     [kernel.kallsyms]  __rcu_read_unlock 
   0.09%     [kernel.kallsyms]  __mod_node_page_state 
   0.09%     [kernel.kallsyms]  __mod_zone_page_state 
   0.07%     [kernel.kallsyms]  free_swap_cache 
   0.06%     [kernel.kallsyms]  lock_page_memcg 
   0.06%     [kernel.kallsyms]  perf_adjust_freq_unthr_context 
   0.05%     [kernel.kallsyms]  folio_lruvec_lock_irqsave 
   1.79%  <...other 345 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.45%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_if_interface_array, version 3, compile id 1200 
   0.30%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.26%     [kernel.kallsyms]  native_read_msr 
   0.22%     [kernel.kallsyms]  release_pages 
   0.22%     [kernel.kallsyms]  __free_one_page 
   0.21%     [kernel.kallsyms]  __mod_lruvec_state 
   0.21%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.18%                        <unknown> 
   0.16%     [kernel.kallsyms]  page_remove_rmap 
   0.16%     [kernel.kallsyms]  zap_pte_range 
   0.15%     [kernel.kallsyms]  asm_exc_page_fault 
   0.13%     [kernel.kallsyms]  free_unref_page_list 
   0.12%     [kernel.kallsyms]  __rcu_read_lock 
   0.12%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.09%     [kernel.kallsyms]  __mod_node_page_state 
   0.09%     [kernel.kallsyms]  __rcu_read_unlock 
   0.09%     [kernel.kallsyms]  __mod_zone_page_state 
   0.07%     [kernel.kallsyms]  free_swap_cache 
   0.06%     [kernel.kallsyms]  lock_page_memcg 
   0.06%     [kernel.kallsyms]  perf_adjust_freq_unthr_context 
   1.66%  <...other 263 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.45%        jvmci, level 4
   3.85%     [kernel.kallsyms]
   0.25%             libjvm.so
   0.18%                      
   0.15%             libc.so.6
   0.05%           interpreter
   0.03%        hsdis-amd64.so
   0.02%  ld-linux-x86-64.so.2
   0.00%           c1, level 3
   0.00%                [vdso]
   0.00%        perf-12918.map
   0.00%               i915.ko
   0.00%       nf_conntrack.ko
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_interface_array

# Run progress: 62.50% complete, ETA 00:07:18
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 68.041 ns/op
# Warmup Iteration   2: 38.905 ns/op
# Warmup Iteration   3: 38.802 ns/op
# Warmup Iteration   4: 38.798 ns/op
# Warmup Iteration   5: 38.796 ns/op
Iteration   1: 38.855 ns/op
Iteration   2: 38.793 ns/op
Iteration   3: 38.950 ns/op
Iteration   4: 38.840 ns/op
Iteration   5: 38.871 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_interface_array":
  38.862 ±(99.9%) 0.220 ns/op [Average]
  (min, avg, max) = (38.793, 38.862, 38.950), stdev = 0.057
  CI (99.9%): [38.642, 39.081] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_interface_array:asm":
PrintAssembly processed: 248213 total address lines.
Perf output processed (skipped 86.606 seconds):
 Column 1: cycles (49726 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array, version 4, compile id 1212 

                                      0x00007f012adaf511:   vxorpd %xmm0,%xmm0,%xmm0            ;*f2i {reexecute=0 rethrow=0 return_oop=0}
                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@169 (line 187)
                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
                                      0x00007f012adaf515:   vxorpd %xmm1,%xmm1,%xmm1            ;*d2i {reexecute=0 rethrow=0 return_oop=0}
                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@154 (line 186)
                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
                                      0x00007f012adaf519:   mov    $0x0,%r9d
                                      0x00007f012adaf51f:   mov    $0x0,%r8d
                                      0x00007f012adaf525:   data16 data16 nopw 0x0(%rax,%rax,1) ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@13 (line 100)
   1.76%          ↗↗↗↗↗↗ ↗ ↗          0x00007f012adaf530:   cmp    %r9d,%r10d
          ╭       ││││││ │ │          0x00007f012adaf533:   jbe    0x00007f012adaf738           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │       ││││││ │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@16 (line 100)
   0.90%  │       ││││││ │ │          0x00007f012adaf539:   mov    0x10(%r11,%r9,4),%eax        ; ImmutableOopMap {rax=NarrowOop r11=Oop }
          │       ││││││ │ │                                                                    ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │       ││││││ │ │                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@13 (line 100)
   0.90%  │       ││││││ │ │          0x00007f012adaf53e:   mov    0x8(,%rax,8),%ecx            ; implicit exception: dispatches to 0x00007f012adaf7cd
   9.42%  │       ││││││ │ │          0x00007f012adaf545:   mov    %r9d,%ebx
   0.33%  │       ││││││ │ │          0x00007f012adaf548:   inc    %ebx
   0.33%  │       ││││││ │ │          0x00007f012adaf54a:   cmp    $0x102b860,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
          │╭      ││││││ │ │          0x00007f012adaf550:   je     0x00007f012adaf625
   2.78%  ││      ││││││ │ │          0x00007f012adaf556:   data16 nopw 0x0(%rax,%rax,1)
   0.11%  ││      ││││││ │ │          0x00007f012adaf560:   cmp    $0x102a868,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
          ││╭     ││││││ │ │          0x00007f012adaf566:   je     0x00007f012adaf665
   4.06%  │││     ││││││ │ │          0x00007f012adaf56c:   cmp    $0x102ac58,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
   0.80%  │││     ││││││ │ │          0x00007f012adaf572:   sete   %dil
   1.00%  │││     ││││││ │ │          0x00007f012adaf576:   movzbl %dil,%edi                    ;* unwind (locked if synchronized)
          │││     ││││││ │ │                                                                    ; - java.lang.Class::isInstance@-3
          │││     ││││││ │ │                                                                    ; - java.lang.invoke.LambdaForm$DMH/0x00007f00a8007000::invokeSpecial@11
          │││     ││││││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8083400::invoke@21
          │││     ││││││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8084800::guard@32
          │││     ││││││ │ │                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││     ││││││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8084800::guard@89
          │││     ││││││ │ │                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │││     ││││││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8085000::invoke@91
          │││     ││││││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8087800::tableSwitch@103
          │││     ││││││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a808b000::delegate@14
          │││     ││││││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a808a400::invoke@114
          │││     ││││││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a808ac00::linkToTargetMethod@6
          │││     ││││││ │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
          │││     ││││││ │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.05%  │││     ││││││ │ │          0x00007f012adaf57a:   nopw   0x0(%rax,%rax,1)
   1.28%  │││     ││││││ │ │          0x00007f012adaf580:   test   $0x1,%edi
          │││╭    ││││││ │ │          0x00007f012adaf586:   jne    0x00007f012adaf63a
   1.31%  ││││    ││││││ │ │          0x00007f012adaf58c:   cmp    $0x102b460,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
          ││││╭   ││││││ │ │          0x00007f012adaf592:   je     0x00007f012adaf675
   2.08%  │││││   ││││││ │ │          0x00007f012adaf598:   nopl   0x0(%rax,%rax,1)
   0.13%  │││││   ││││││ │ │          0x00007f012adaf5a0:   cmp    $0x102b660,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
          │││││╭  ││││││ │ │          0x00007f012adaf5a6:   je     0x00007f012adaf68b
   3.25%  ││││││  ││││││ │ │          0x00007f012adaf5ac:   cmp    $0x102b260,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
          ││││││╭ ││││││ │ │          0x00007f012adaf5b2:   je     0x00007f012adaf6a5
   2.22%  │││││││ ││││││ │ │          0x00007f012adaf5b8:   nopl   0x0(%rax,%rax,1)
   0.33%  │││││││ ││││││ │ │          0x00007f012adaf5c0:   cmp    $0x102b060,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
          │││││││╭││││││ │ │          0x00007f012adaf5c6:   je     0x00007f012adaf6cc
   2.41%  ││││││││││││││ │ │          0x00007f012adaf5cc:   cmp    $0x102ae58,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
   1.04%  ││││││││││││││ │ │          0x00007f012adaf5d2:   sete   %dil
   0.84%  ││││││││││││││ │ │          0x00007f012adaf5d6:   movzbl %dil,%edi                    method is native {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││ │ │                                                                    ; - java.lang.Class::isInstance@0
          ││││││││││││││ │ │                                                                    ; - java.lang.invoke.LambdaForm$DMH/0x00007f00a8007000::invokeSpecial@11
          ││││││││││││││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8083400::invoke@21
          ││││││││││││││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8084800::guard@32
          ││││││││││││││ │ │                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││││││││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8084800::guard@89
          ││││││││││││││ │ │                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││││││││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8084800::guard@89
          ││││││││││││││ │ │                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││││││││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8084800::guard@89
          ││││││││││││││ │ │                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││││││││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8084800::guard@89
          ││││││││││││││ │ │                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││││││││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8084800::guard@89
          ││││││││││││││ │ │                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││││││││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8084800::guard@89
          ││││││││││││││ │ │                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││││││││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8085000::invoke@91
          ││││││││││││││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8087800::tableSwitch@103
          ││││││││││││││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a808b000::delegate@14
          ││││││││││││││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a808a400::invoke@114
          ││││││││││││││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a808ac00::linkToTargetMethod@6
          ││││││││││││││ │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
          ││││││││││││││ │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.06%  ││││││││││││││ │ │          0x00007f012adaf5da:   nopw   0x0(%rax,%rax,1)
   0.07%  ││││││││││││││ │ │          0x00007f012adaf5e0:   test   $0x1,%edi
          ││││││││││││││ │ │          0x00007f012adaf5e6:   je     0x00007f012adaf752
   0.15%  ││││││││││││││ │ │          0x00007f012adaf5ec:   cmp    $0x102ae58,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
          ││││││││││││││ │ │          0x00007f012adaf5f2:   jne    0x00007f012adaf779           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││ │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@174 (line 188)
          ││││││││││││││ │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.42%  ││││││││││││││ │ │          0x00007f012adaf5f8:   mov    0xc(,%rax,8),%ecx            ; ImmutableOopMap {rcx=NarrowOop r11=Oop }
          ││││││││││││││ │ │                                                                    ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││││││││││││││ │ │                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@13 (line 100)
   0.14%  ││││││││││││││ │ │          0x00007f012adaf5ff:   mov    0x14(,%rcx,8),%eax           ; implicit exception: dispatches to 0x00007f012adaf7f0
   1.74%  ││││││││││││││ │ │          0x00007f012adaf606:   movsbl 0x10(,%rcx,8),%ecx           ; ImmutableOopMap {r11=Oop }
          ││││││││││││││ │ │                                                                    ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││││││││││││││ │ │                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@13 (line 100)
   0.26%  ││││││││││││││ │ │          0x00007f012adaf60e:   mov    0xc(,%rax,8),%eax            ; implicit exception: dispatches to 0x00007f012adaf813
   1.65%  ││││││││││││││ │ │          0x00007f012adaf615:   shr    %cl,%eax                     ;*ishr {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││ │ │                                                                    ; - java.lang.String::length@9 (line 1519)
          ││││││││││││││ │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@184 (line 188)
          ││││││││││││││ │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.77%  ││││││││││││││ │ │          0x00007f012adaf617:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││ │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@31 (line 101)
   0.04%  ││││││││││││││ │ │          0x00007f012adaf61a:   mov    %ebx,%r9d
   0.00%  ││││││││││││││ │ │          0x00007f012adaf61d:   mov    %eax,%r8d
          ││││││││╰│││││ │ │          0x00007f012adaf620:   jmp    0x00007f012adaf530           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││││││││ │││││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8084800::guard@55
          ││││││││ │││││ │ │                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          ││││││││ │││││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8085000::invoke@91
          ││││││││ │││││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8087800::tableSwitch@103
          ││││││││ │││││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a808b000::delegate@14
          ││││││││ │││││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a808a400::invoke@114
          ││││││││ │││││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a808ac00::linkToTargetMethod@6
          ││││││││ │││││ │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
          ││││││││ │││││ │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   3.81%  │↘││││││ │││││ │ │          0x00007f012adaf625:   mov    0x10(,%rax,8),%eax           ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││ │││││ │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@97 (line 182)
          │ ││││││ │││││ │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   3.49%  │ ││││││ │││││ │ │          0x00007f012adaf62c:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││ │││││ │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@31 (line 101)
   0.37%  │ ││││││ │││││ │ │          0x00007f012adaf62f:   mov    %ebx,%r9d
   0.00%  │ ││││││ │││││ │ │          0x00007f012adaf632:   mov    %eax,%r8d
   0.02%  │ ││││││ ╰││││ │ │          0x00007f012adaf635:   jmp    0x00007f012adaf530           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││  ││││ │ │                                                                    ; - java.util.Objects::requireNonNull@1 (line 232)
          │ ││││││  ││││ │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@2 (line 180)
          │ ││││││  ││││ │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   3.46%  │ │↘││││  ││││ │ │          0x00007f012adaf63a:   nopw   0x0(%rax,%rax,1)
   0.37%  │ │ ││││  ││││ │ │          0x00007f012adaf640:   cmp    $0x102ac58,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
          │ │ ││││  ││││ │ │          0x00007f012adaf646:   jne    0x00007f012adaf772           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ │ ││││  ││││ │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@102 (line 183)
          │ │ ││││  ││││ │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   1.98%  │ │ ││││  ││││ │ │          0x00007f012adaf64c:   movswl 0xc(,%rax,8),%eax            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │ │ ││││  ││││ │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@109 (line 183)
          │ │ ││││  ││││ │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   1.34%  │ │ ││││  ││││ │ │          0x00007f012adaf654:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │ ││││  ││││ │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@31 (line 101)
   0.32%  │ │ ││││  ││││ │ │          0x00007f012adaf657:   mov    %ebx,%r9d
   0.00%  │ │ ││││  ││││ │ │          0x00007f012adaf65a:   mov    %eax,%r8d
   0.00%  │ │ ││││  ││││ │ │          0x00007f012adaf65d:   data16 xchg %ax,%ax
   0.02%  │ │ ││││  ╰│││ │ │          0x00007f012adaf660:   jmp    0x00007f012adaf530           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ │ ││││   │││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8085000::invoke@56
          │ │ ││││   │││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8087800::tableSwitch@103
          │ │ ││││   │││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a808b000::delegate@14
          │ │ ││││   │││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a808a400::invoke@114
          │ │ ││││   │││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a808ac00::linkToTargetMethod@6
          │ │ ││││   │││ │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
          │ │ ││││   │││ │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   3.65%  │ ↘ ││││   │││ │ │          0x00007f012adaf665:   add    0xc(,%rax,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │   ││││   │││ │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@31 (line 101)
   3.70%  │   ││││   │││ │ │          0x00007f012adaf66d:   mov    %ebx,%r9d
   0.01%  │   ││││   ╰││ │ │          0x00007f012adaf670:   jmp    0x00007f012adaf530           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │   ││││    ││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8084800::guard@55
          │   ││││    ││ │ │                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │   ││││    ││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8084800::guard@89
          │   ││││    ││ │ │                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │   ││││    ││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8084800::guard@89
          │   ││││    ││ │ │                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │   ││││    ││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8085000::invoke@91
          │   ││││    ││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8087800::tableSwitch@103
          │   ││││    ││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a808b000::delegate@14
          │   ││││    ││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a808a400::invoke@114
          │   ││││    ││ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a808ac00::linkToTargetMethod@6
          │   ││││    ││ │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
          │   ││││    ││ │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   2.97%  │   ↘│││    ││ │ │          0x00007f012adaf675:   movsbl 0xc(,%rax,8),%eax            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │    │││    ││ │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@123 (line 184)
          │    │││    ││ │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   3.24%  │    │││    ││ │ │          0x00007f012adaf67d:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │    │││    ││ │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@31 (line 101)
   0.33%  │    │││    ││ │ │          0x00007f012adaf680:   mov    %ebx,%r9d
   0.01%  │    │││    ││ │ │          0x00007f012adaf683:   mov    %eax,%r8d
   0.02%  │    │││    ╰│ │ │          0x00007f012adaf686:   jmp    0x00007f012adaf530           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │    │││     │ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8084800::guard@55
          │    │││     │ │ │                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │    │││     │ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8084800::guard@89
          │    │││     │ │ │                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │    │││     │ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8084800::guard@89
          │    │││     │ │ │                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │    │││     │ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8084800::guard@89
          │    │││     │ │ │                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │    │││     │ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8085000::invoke@91
          │    │││     │ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8087800::tableSwitch@103
          │    │││     │ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a808b000::delegate@14
          │    │││     │ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a808a400::invoke@114
          │    │││     │ │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a808ac00::linkToTargetMethod@6
          │    │││     │ │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
          │    │││     │ │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   3.46%  │    ↘││     │ │ │          0x00007f012adaf68b:   movzwl 0xc(,%rax,8),%eax            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │     ││     │ │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@137 (line 185)
          │     ││     │ │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   3.12%  │     ││     │ │ │          0x00007f012adaf693:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │     ││     │ │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@31 (line 101)
   0.34%  │     ││     │ │ │          0x00007f012adaf696:   mov    %ebx,%r9d
   0.00%  │     ││     │ │ │          0x00007f012adaf699:   mov    %eax,%r8d
   0.03%  │     ││     │ │ │          0x00007f012adaf69c:   nopl   0x0(%rax)
   0.00%  │     ││     ╰ │ │          0x00007f012adaf6a0:   jmp    0x00007f012adaf530           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │     ││       │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8084800::guard@55
          │     ││       │ │                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │     ││       │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8084800::guard@89
          │     ││       │ │                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │     ││       │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8084800::guard@89
          │     ││       │ │                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │     ││       │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8084800::guard@89
          │     ││       │ │                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │     ││       │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8084800::guard@89
          │     ││       │ │                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │     ││       │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8085000::invoke@91
          │     ││       │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8087800::tableSwitch@103
          │     ││       │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a808b000::delegate@14
          │     ││       │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a808a400::invoke@114
          │     ││       │ │                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f00a808ac00::linkToTargetMethod@6
          │     ││       │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
          │     ││       │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   3.16%  │     ↘│       │ │          0x00007f012adaf6a5:   vmovsd 0x10(,%rax,8),%xmm2          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │      │       │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@151 (line 186)
          │      │       │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   3.05%  │      │       │ │          0x00007f012adaf6ae:   vcvttsd2si %xmm2,%eax
   2.79%  │      │       │ │          0x00007f012adaf6b2:   cmp    $0x80000000,%eax
          │      │      ╭│ │          0x00007f012adaf6b8:   je     0x00007f012adaf6fa           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
          │      │      ││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@154 (line 186)
          │      │      ││ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.03%  │      │      ││ │ ↗↗   ↗   0x00007f012adaf6be:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │      │      ││ │ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@31 (line 101)
   0.00%  │      │      ││ │ ││   │   0x00007f012adaf6c1:   mov    %ebx,%r9d
   0.34%  │      │      ││ │ ││   │   0x00007f012adaf6c4:   mov    %eax,%r8d
          │      │      │╰ │ ││   │   0x00007f012adaf6c7:   jmp    0x00007f012adaf530           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │      │      │  │ ││   │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8084800::guard@55
          │      │      │  │ ││   │                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │      │      │  │ ││   │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8084800::guard@89
          │      │      │  │ ││   │                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │      │      │  │ ││   │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8084800::guard@89
          │      │      │  │ ││   │                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │      │      │  │ ││   │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8084800::guard@89
          │      │      │  │ ││   │                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │      │      │  │ ││   │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8084800::guard@89
          │      │      │  │ ││   │                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │      │      │  │ ││   │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8084800::guard@89
          │      │      │  │ ││   │                                                             ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │      │      │  │ ││   │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8085000::invoke@91
          │      │      │  │ ││   │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8087800::tableSwitch@103
          │      │      │  │ ││   │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f00a808b000::delegate@14
          │      │      │  │ ││   │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f00a808a400::invoke@114
          │      │      │  │ ││   │                                                             ; - java.lang.invoke.LambdaForm$MH/0x00007f00a808ac00::linkToTargetMethod@6
          │      │      │  │ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@11 (line 180)
          │      │      │  │ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   2.36%  │      ↘      │  │ ││   │   0x00007f012adaf6cc:   vmovss 0xc(,%rax,8),%xmm2           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │             │  │ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@166 (line 187)
          │             │  │ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   2.27%  │             │  │ ││   │   0x00007f012adaf6d5:   vcvttss2si %xmm2,%eax
   2.44%  │             │  │ ││   │   0x00007f012adaf6d9:   nopl   0x0(%rax)
   0.01%  │             │  │ ││   │   0x00007f012adaf6e0:   cmp    $0x80000000,%eax
          │             │ ╭│ ││   │   0x00007f012adaf6e6:   je     0x00007f012adaf713           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
          │             │ ││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@169 (line 187)
          │             │ ││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
   0.02%  │             │ ││ ││ ↗↗│↗  0x00007f012adaf6ec:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │             │ ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@31 (line 101)
   0.29%  │             │ ││ ││ ││││  0x00007f012adaf6ef:   mov    %ebx,%r9d
   0.05%  │             │ ││ ││ ││││  0x00007f012adaf6f2:   mov    %eax,%r8d
   0.00%  │             │ │╰ ││ ││││  0x00007f012adaf6f5:   jmp    0x00007f012adaf530
          │             ↘ │  ││ ││││  0x00007f012adaf6fa:   vucomisd %xmm2,%xmm2
          │               │  ││ ││││  0x00007f012adaf6fe:   xchg   %ax,%ax
          │               │ ╭││ ││││  0x00007f012adaf700:   jp     0x00007f012adaf72a
          │               │ │││ ││││  0x00007f012adaf706:   vucomisd %xmm1,%xmm2
          │               │ │╰│ ││││  0x00007f012adaf70a:   jbe    0x00007f012adaf6be
          │               │ │ │ ││││  0x00007f012adaf70c:   mov    $0x7fffffff,%eax
          │               │ │ ╰ ││││  0x00007f012adaf711:   jmp    0x00007f012adaf6be           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
          │               │ │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@154 (line 186)
          │               │ │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
          │               ↘ │   ││││  0x00007f012adaf713:   vucomiss %xmm2,%xmm2
          │                 │  ╭││││  0x00007f012adaf717:   jp     0x00007f012adaf731
          │                 │  │││││  0x00007f012adaf71d:   vucomiss %xmm0,%xmm2
          │                 │  │╰│││  0x00007f012adaf721:   jbe    0x00007f012adaf6ec
          │                 │  │ │││  0x00007f012adaf723:   mov    $0x7fffffff,%eax
          │                 │  │ ╰││  0x00007f012adaf728:   jmp    0x00007f012adaf6ec           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
          │                 │  │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@169 (line 187)
          │                 │  │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
          │                 ↘  │  ││  0x00007f012adaf72a:   mov    $0x0,%eax
          │                    │  ╰│  0x00007f012adaf72f:   jmp    0x00007f012adaf6be           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
          │                    │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@154 (line 186)
          │                    │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
          │                    ↘   │  0x00007f012adaf731:   mov    $0x0,%eax
          │                        ╰  0x00007f012adaf736:   jmp    0x00007f012adaf6ec           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchMethod@169 (line 187)
          │                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@28 (line 101)
          ↘                           0x00007f012adaf738:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array@40 (line 103)
                                      0x00007f012adaf73b:   mov    0x10(%rsp),%rbp
   0.00%                              0x00007f012adaf740:   add    $0x18,%rsp                   ;   {no_reloc}
                                      0x00007f012adaf744:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                                      0x00007f012adaf74b:   ja     0x00007f012adaf790
                                      0x00007f012adaf751:   ret                                 ;* unwind (locked if synchronized)
                                                                                                ; - java.lang.invoke.MethodHandleImpl::profileBoolean@-3
                                                                                                ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8084800::guard@46
                                                                                                ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                                                ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8084800::guard@89
                                                                                                ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
                                                                                                ; - java.lang.invoke.LambdaForm$MH/0x00007f00a8084800::guard@89
                                                                                                ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
....................................................................................................
  95.53%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.53%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array, version 4, compile id 1212 
   0.36%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.35%     [kernel.kallsyms]  native_read_msr 
   0.22%     [kernel.kallsyms]  release_pages 
   0.22%     [kernel.kallsyms]  __mod_lruvec_state 
   0.21%     [kernel.kallsyms]  __free_one_page 
   0.18%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.17%     [kernel.kallsyms]  zap_pte_range 
   0.17%     [kernel.kallsyms]  page_remove_rmap 
   0.14%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.11%     [kernel.kallsyms]  asm_exc_page_fault 
   0.10%     [kernel.kallsyms]  mod_zone_page_state 
   0.10%     [kernel.kallsyms]  __mod_zone_page_state 
   0.10%     [kernel.kallsyms]  free_unref_page_list 
   0.08%     [kernel.kallsyms]  lock_page_memcg 
   0.07%     [kernel.kallsyms]  __rcu_read_unlock 
   0.07%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.07%     [kernel.kallsyms]  free_unref_page_commit 
   0.06%     [kernel.kallsyms]  __rcu_read_lock 
   0.05%     [kernel.kallsyms]  free_swap_cache 
   1.64%  <...other 364 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.53%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_interface_array, version 4, compile id 1212 
   0.36%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.35%     [kernel.kallsyms]  native_read_msr 
   0.30%                        <unknown> 
   0.22%     [kernel.kallsyms]  release_pages 
   0.22%     [kernel.kallsyms]  __mod_lruvec_state 
   0.21%     [kernel.kallsyms]  __free_one_page 
   0.18%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.17%     [kernel.kallsyms]  zap_pte_range 
   0.17%     [kernel.kallsyms]  page_remove_rmap 
   0.14%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.11%     [kernel.kallsyms]  asm_exc_page_fault 
   0.10%     [kernel.kallsyms]  mod_zone_page_state 
   0.10%     [kernel.kallsyms]  __mod_zone_page_state 
   0.10%     [kernel.kallsyms]  free_unref_page_list 
   0.08%     [kernel.kallsyms]  lock_page_memcg 
   0.07%     [kernel.kallsyms]  free_unref_page_commit 
   0.07%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.07%     [kernel.kallsyms]  __rcu_read_unlock 
   0.06%     [kernel.kallsyms]  __rcu_read_lock 
   1.40%  <...other 250 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.53%        jvmci, level 4
   3.64%     [kernel.kallsyms]
   0.30%                      
   0.28%             libjvm.so
   0.12%             libc.so.6
   0.06%           interpreter
   0.03%        hsdis-amd64.so
   0.02%  ld-linux-x86-64.so.2
   0.00%        perf-13039.map
   0.00%           c1, level 3
   0.00%               i915.ko
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_when_concrete_array

# Run progress: 75.00% complete, ETA 00:04:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 18.008 ns/op
# Warmup Iteration   2: 8.661 ns/op
# Warmup Iteration   3: 8.601 ns/op
# Warmup Iteration   4: 8.551 ns/op
# Warmup Iteration   5: 8.545 ns/op
Iteration   1: 8.616 ns/op
Iteration   2: 8.543 ns/op
Iteration   3: 8.636 ns/op
Iteration   4: 8.630 ns/op
Iteration   5: 8.707 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_when_concrete_array":
  8.627 ±(99.9%) 0.225 ns/op [Average]
  (min, avg, max) = (8.543, 8.627, 8.707), stdev = 0.058
  CI (99.9%): [8.401, 8.852] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_when_concrete_array:asm":
PrintAssembly processed: 261317 total address lines.
Perf output processed (skipped 87.815 seconds):
 Column 1: cycles (49835 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array, version 3, compile id 1231 

                  0x00007f17cada9d20:   mov    %eax,-0x14000(%rsp)
                  0x00007f17cada9d27:   sub    $0x18,%rsp
                  0x00007f17cada9d2b:   nop
                  0x00007f17cada9d2c:   cmpl   $0x1,0x20(%r15)
                  0x00007f17cada9d34:   jne    0x00007f17cada9e31
                  0x00007f17cada9d3a:   mov    %rbp,0x10(%rsp)
                  0x00007f17cada9d3f:   mov    0x14(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                            ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@0 (line 154)
                  0x00007f17cada9d42:   mov    0xc(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007f17cada9e55
   0.01%          0x00007f17cada9d4a:   shl    $0x3,%rax                    ;*getfield asIsArray {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@3 (line 155)
                  0x00007f17cada9d4e:   mov    $0x0,%r8d
                  0x00007f17cada9d54:   mov    $0x0,%r11d
                  0x00007f17cada9d5a:   nopw   0x0(%rax,%rax,1)             ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@13 (line 155)
   0.24%      ↗↗  0x00007f17cada9d60:   cmp    %r8d,%r10d
          ╭   ││  0x00007f17cada9d63:   jbe    0x00007f17cada9def           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@16 (line 155)
   6.25%  │   ││  0x00007f17cada9d69:   mov    0x10(%rax,%r8,4),%r9d        ; ImmutableOopMap {rax=Oop r9=NarrowOop }
          │   ││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │   ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@13 (line 155)
   6.60%  │   ││  0x00007f17cada9d6e:   mov    0xc(,%r9,8),%ecx             ; implicit exception: dispatches to 0x00007f17cada9e78
  30.24%  │   ││  0x00007f17cada9d76:   shl    $0x3,%r9                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@22 (line 155)
   0.15%  │   ││  0x00007f17cada9d7a:   mov    $0x0,%ebx
   3.87%  │   ││  0x00007f17cada9d7f:   nop
   4.38%  │╭  ││  0x00007f17cada9d80:   jmp    0x00007f17cada9dba           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
          ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
          ││  ││  0x00007f17cada9d85:   data16 data16 nopw 0x0(%rax,%rax,1)
          ││  ││  0x00007f17cada9d90:   data16 data16 xchg %ax,%ax
          ││  ││  0x00007f17cada9d94:   nopl   0x0(%rax,%rax,1)
          ││  ││  0x00007f17cada9d9c:   data16 data16 xchg %ax,%ax          ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││  ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f1748087800::tableSwitch@39
          ││  ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f174808b000::delegate@14
          ││  ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f174808a400::invoke@114
          ││  ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f174808ac00::linkToTargetMethod@6
          ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
          ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
  12.61%  ││ ↗││  0x00007f17cada9da0:   test   $0x1,%ecx
          ││╭│││  0x00007f17cada9da6:   je     0x00007f17cada9dd9           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@117 (line 247)
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
   0.04%  ││││││  0x00007f17cada9dac:   mov    0x458(%r15),%rdi             ; ImmutableOopMap {rax=Oop r9=Oop }
          ││││││                                                            ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          ││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
   0.07%  ││││││  0x00007f17cada9db3:   test   %eax,(%rdi)                  ;   {poll}
   0.54%  ││││││  0x00007f17cada9db5:   mov    $0x1,%ebx                    ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
  10.51%  │↘││││  0x00007f17cada9dba:   cmp    $0x0,%ebx
          │ │╰││  0x00007f17cada9dbd:   je     0x00007f17cada9da0
   0.01%  │ │ ││  0x00007f17cada9dbf:   cmp    $0x1,%ebx
          │ │ ││  0x00007f17cada9dc2:   jne    0x00007f17cada9e0e           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │ │ ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f1748087800::tableSwitch@39
          │ │ ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f174808b000::delegate@14
          │ │ ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f174808a400::invoke@114
          │ │ ││                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f174808ac00::linkToTargetMethod@6
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
   0.00%  │ │ ││  0x00007f17cada9dc8:   mov    0x458(%r15),%rbx             ; ImmutableOopMap {rax=Oop r9=Oop }
          │ │ ││                                                            ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          │ │ ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@134 (line 248)
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
   0.25%  │ │ ││  0x00007f17cada9dcf:   test   %eax,(%rbx)                  ;   {poll}
   6.69%  │ │ ││  0x00007f17cada9dd1:   add    %ecx,%r11d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@31 (line 156)
   0.02%  │ │ ││  0x00007f17cada9dd4:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@33 (line 155)
          │ │ ╰│  0x00007f17cada9dd7:   jmp    0x00007f17cada9d60           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │ │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@13 (line 155)
   6.21%  │ ↘  │  0x00007f17cada9dd9:   mov    0x458(%r15),%rbx             ; ImmutableOopMap {rax=Oop r9=Oop }
          │    │                                                            ;*iconst_2 {reexecute=1 rethrow=0 return_oop=0}
          │    │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@125 (line 247)
          │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
   0.04%  │    │  0x00007f17cada9de0:   test   %eax,(%rbx)                  ;   {poll}
   0.47%  │    │  0x00007f17cada9de2:   shl    %ecx                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@130 (line 247)
          │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
   0.06%  │    │  0x00007f17cada9de4:   add    %ecx,%r11d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@31 (line 156)
   6.25%  │    │  0x00007f17cada9de7:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@33 (line 155)
   0.01%  │    ╰  0x00007f17cada9dea:   jmp    0x00007f17cada9d60           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@13 (line 155)
          ↘       0x00007f17cada9def:   mov    %r11d,%eax
                  0x00007f17cada9df2:   mov    0x10(%rsp),%rbp
   0.01%          0x00007f17cada9df7:   add    $0x18,%rsp
                  0x00007f17cada9dfb:   nopl   0x0(%rax,%rax,1)
   0.00%          0x00007f17cada9e00:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                  0x00007f17cada9e07:   ja     0x00007f17cada9e41
                  0x00007f17cada9e0d:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@40 (line 158)
                  0x00007f17cada9e0e:   movl   $0xffffffed,0x484(%r15)      ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f1748087800::tableSwitch@39
                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f174808b000::delegate@14
                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f174808a400::invoke@114
                                                                            ; - java.lang.invoke.LambdaForm$MH/0x00007f174808ac00::linkToTargetMethod@6
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array@28 (line 156)
....................................................................................................
  95.52%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.52%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array, version 3, compile id 1231 
   0.42%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.24%     [kernel.kallsyms]  __free_one_page 
   0.23%     [kernel.kallsyms]  exc_page_fault 
   0.19%     [kernel.kallsyms]  release_pages 
   0.19%     [kernel.kallsyms]  refill_obj_stock 
   0.15%     [kernel.kallsyms]  zap_pte_range 
   0.15%     [kernel.kallsyms]  page_add_file_rmap 
   0.14%     [kernel.kallsyms]  __ptep_modify_prot_start 
   0.12%     [kernel.kallsyms]  free_unref_page_list 
   0.11%     [kernel.kallsyms]  __mod_memcg_state 
   0.11%     [kernel.kallsyms]  __mod_node_page_state 
   0.10%     [kernel.kallsyms]  __rcu_read_lock 
   0.10%     [kernel.kallsyms]  lock_page_memcg 
   0.10%     [kernel.kallsyms]  __rcu_read_unlock 
   0.08%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.07%     [kernel.kallsyms]  __mod_zone_page_state 
   0.07%             libjvm.so  ElfSymbolTable::lookup 
   0.05%     [kernel.kallsyms]  free_swap_cache 
   0.05%             libjvm.so  fileStream::write 
   1.84%  <...other 357 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.52%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_concrete_array, version 3, compile id 1231 
   0.42%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.24%     [kernel.kallsyms]  __free_one_page 
   0.23%     [kernel.kallsyms]  exc_page_fault 
   0.19%     [kernel.kallsyms]  release_pages 
   0.19%     [kernel.kallsyms]  refill_obj_stock 
   0.17%                        <unknown> 
   0.15%     [kernel.kallsyms]  zap_pte_range 
   0.15%     [kernel.kallsyms]  page_add_file_rmap 
   0.14%     [kernel.kallsyms]  __ptep_modify_prot_start 
   0.12%     [kernel.kallsyms]  free_unref_page_list 
   0.11%     [kernel.kallsyms]  __mod_memcg_state 
   0.11%     [kernel.kallsyms]  __mod_node_page_state 
   0.10%     [kernel.kallsyms]  lock_page_memcg 
   0.10%     [kernel.kallsyms]  __rcu_read_lock 
   0.10%     [kernel.kallsyms]  __rcu_read_unlock 
   0.08%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.07%             libjvm.so  ElfSymbolTable::lookup 
   0.07%     [kernel.kallsyms]  __mod_zone_page_state 
   0.05%             libc.so.6  __vfprintf_internal 
   1.72%  <...other 295 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.52%        jvmci, level 4
   3.62%     [kernel.kallsyms]
   0.37%             libjvm.so
   0.21%             libc.so.6
   0.17%                      
   0.03%           interpreter
   0.03%           c1, level 3
   0.02%        hsdis-amd64.so
   0.01%  ld-linux-x86-64.so.2
   0.01%                [vdso]
   0.00%        perf-13156.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_when_interface_array

# Run progress: 87.50% complete, ETA 00:02:25
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 111.410 ns/op
# Warmup Iteration   2: 48.907 ns/op
# Warmup Iteration   3: 47.863 ns/op
# Warmup Iteration   4: 47.875 ns/op
# Warmup Iteration   5: 48.030 ns/op
Iteration   1: 48.610 ns/op
Iteration   2: 48.046 ns/op
Iteration   3: 47.784 ns/op
Iteration   4: 47.826 ns/op
Iteration   5: 48.491 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_when_interface_array":
  48.151 ±(99.9%) 1.464 ns/op [Average]
  (min, avg, max) = (47.784, 48.151, 48.610), stdev = 0.380
  CI (99.9%): [46.687, 49.615] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark.switch_when_interface_array:asm":
PrintAssembly processed: 259471 total address lines.
Perf output processed (skipped 87.076 seconds):
 Column 1: cycles (49731 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array, version 4, compile id 1217 

                                                                                 0x00007f12dedafba0:   mov    %eax,-0x14000(%rsp)
                                                                                 0x00007f12dedafba7:   sub    $0x18,%rsp
                                                                                 0x00007f12dedafbab:   nop
                                                                                 0x00007f12dedafbac:   cmpl   $0x0,0x20(%r15)
                                                                                 0x00007f12dedafbb4:   jne    0x00007f12dedb02b1
                                                                                 0x00007f12dedafbba:   mov    %rbp,0x10(%rsp)
                                                                                 0x00007f12dedafbbf:   mov    0x10(%rsi),%ecx              ; ImmutableOopMap {rcx=NarrowOop rsi=Oop }
                                                                                                                                           ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@0 (line 132)
                                                                                 0x00007f12dedafbc2:   mov    0xc(,%rcx,8),%r10d           ; implicit exception: dispatches to 0x00007f12dedb02d5
   0.00%                                                                         0x00007f12dedafbca:   mov    %ecx,%r11d
                                                                                 0x00007f12dedafbcd:   shl    $0x3,%r11                    ;*getfield interfaceArray {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@3 (line 133)
                                                                                 0x00007f12dedafbd1:   vxorpd %xmm0,%xmm0,%xmm0            ;*f2i {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@394 (line 259)
                                                                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
                                                                                 0x00007f12dedafbd5:   vxorpd %xmm1,%xmm1,%xmm1            ;*d2i {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@345 (line 257)
                                                                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
                                                                                 0x00007f12dedafbd9:   mov    $0x0,%r9d
                                                                                 0x00007f12dedafbdf:   mov    $0x0,%r8d
                                                                                 0x00007f12dedafbe5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@13 (line 133)
   0.57%                                             ↗↗↗ ↗↗↗↗ ↗↗↗↗↗↗↗↗↗          0x00007f12dedafbf0:   cmp    %r9d,%r10d
          ╭                                          │││ ││││ │││││││││          0x00007f12dedafbf3:   jbe    0x00007f12dedb01a5           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                          │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@16 (line 133)
   0.40%  │                                          │││ ││││ │││││││││          0x00007f12dedafbf9:   mov    0x10(%r11,%r9,4),%eax        ; ImmutableOopMap {rax=NarrowOop r11=Oop }
          │                                          │││ ││││ │││││││││                                                                    ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │                                          │││ ││││ │││││││││                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@13 (line 133)
   0.44%  │                                          │││ ││││ │││││││││          0x00007f12dedafbfe:   mov    0x8(,%rax,8),%ebx            ; implicit exception: dispatches to 0x00007f12dedb02f8
   5.10%  │                                          │││ ││││ │││││││││          0x00007f12dedafc05:   mov    %eax,%edi
   0.48%  │                                          │││ ││││ │││││││││          0x00007f12dedafc07:   shl    $0x3,%rdi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                          │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@22 (line 133)
   0.16%  │                                          │││ ││││ │││││││││          0x00007f12dedafc0b:   mov    $0x0,%edx                    ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                          │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
          │                                          │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.32%  │                 ↗ ↗ ↗ ↗ ↗ ↗  ↗  ↗        │││ ││││ │││││││││          0x00007f12dedafc10:   cmp    $0x0,%edx
          │╭                │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafc13:   je     0x00007f12dedafc74
   0.07%  ││                │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafc19:   cmp    $0xf,%edx
   1.03%  ││                │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafc1c:   nopl   0x0(%rax)
   0.01%  ││╭               │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafc20:   je     0x00007f12dedaff05
   0.29%  │││               │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafc26:   cmp    $0xb,%edx
          │││╭              │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafc29:   je     0x00007f12dedaff6a
   0.01%  ││││              │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafc2f:   cmp    $0x3,%edx
          ││││╭             │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafc32:   je     0x00007f12dedaffa6
   0.58%  │││││             │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafc38:   cmp    $0x5,%edx
   0.00%  │││││             │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafc3b:   nopl   0x0(%rax,%rax,1)
   0.11%  │││││╭            │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafc40:   je     0x00007f12dedaffd0
   0.01%  ││││││            │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafc46:   cmp    $0x9,%edx
          ││││││╭           │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafc49:   je     0x00007f12dedafffb
   0.29%  │││││││           │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafc4f:   cmp    $0xd,%edx
          │││││││╭          │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafc52:   je     0x00007f12dedb002b
   0.03%  ││││││││          │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafc58:   cmp    $0x7,%edx
   0.00%  ││││││││          │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafc5b:   nopl   0x0(%rax,%rax,1)
          ││││││││╭         │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafc60:   je     0x00007f12dedb0067
   0.16%  │││││││││         │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafc66:   cmp    $0x1,%edx
          │││││││││╭        │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafc69:   je     0x00007f12dedb0092
          ││││││││││        │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafc6f:   jmp    0x00007f12dedb025c
   1.56%  │↘││││││││        │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafc74:   cmp    $0x102a868,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
   0.00%  │ ││││││││╭       │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafc7a:   je     0x00007f12dedafd5f
   1.23%  │ │││││││││       │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafc80:   cmp    $0x102b860,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
          │ │││││││││╭      │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafc86:   je     0x00007f12dedafd85
   3.57%  │ ││││││││││      │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafc8c:   cmp    $0x102ac58,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
   0.50%  │ ││││││││││      │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafc92:   sete   %cl
   0.43%  │ ││││││││││      │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafc95:   movzbl %cl,%ecx                     ;* unwind (locked if synchronized)
          │ ││││││││││      │ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - java.lang.Class::isInstance@-3
          │ ││││││││││      │ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - java.lang.invoke.LambdaForm$DMH/0x00007f125c007000::invokeSpecial@11
          │ ││││││││││      │ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f125c083400::invoke@21
          │ ││││││││││      │ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f125c084800::guard@32
          │ ││││││││││      │ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │ ││││││││││      │ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f125c084800::guard@89
          │ ││││││││││      │ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - java.lang.invoke.DelegatingMethodHandle$Holder::delegate@13
          │ ││││││││││      │ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f125c085000::invoke@91
          │ ││││││││││      │ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f125c087800::tableSwitch@135
          │ ││││││││││      │ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f125c08b000::delegate@14
          │ ││││││││││      │ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f125c08a400::invoke@114
          │ ││││││││││      │ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f125c08ac00::linkToTargetMethod@6
          │ ││││││││││      │ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
          │ ││││││││││      │ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.30%  │ ││││││││││      │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafc98:   nopl   0x0(%rax,%rax,1)
   1.28%  │ ││││││││││      │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafca0:   test   $0x1,%ecx
          │ ││││││││││╭     │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafca6:   jne    0x00007f12dedafdad
   1.11%  │ │││││││││││     │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafcac:   cmp    $0x102b460,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
          │ │││││││││││╭    │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafcb2:   je     0x00007f12dedafde0
   1.74%  │ ││││││││││││    │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafcb8:   nopl   0x0(%rax,%rax,1)
   0.24%  │ ││││││││││││    │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafcc0:   cmp    $0x102b660,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
          │ ││││││││││││╭   │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafcc6:   je     0x00007f12dedafe07
   2.53%  │ │││││││││││││   │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafccc:   cmp    $0x102b260,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
          │ │││││││││││││╭  │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafcd2:   je     0x00007f12dedafe2e           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││││││││  │ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
          │ ││││││││││││││  │ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   1.80%  │ ││││││││││││││  │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafcd8:   nopl   0x0(%rax,%rax,1)
   0.32%  │ ││││││││││││││  │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafce0:   cmp    $0x102b060,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
          │ ││││││││││││││╭ │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafce6:   je     0x00007f12dedafe6b
   1.90%  │ │││││││││││││││ │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafcec:   cmp    $0x102ae58,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
   0.87%  │ │││││││││││││││ │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafcf2:   sete   %cl
   0.68%  │ │││││││││││││││ │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafcf5:   movzbl %cl,%ecx                     ;* unwind (locked if synchronized)
          │ │││││││││││││││ │ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - java.lang.Class::isInstance@-3
          │ │││││││││││││││ │ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - java.lang.invoke.LambdaForm$DMH/0x00007f125c007000::invokeSpecial@11
          │ │││││││││││││││ │ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f125c083400::invoke@21
          │ │││││││││││││││ │ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f125c085000::invoke@33
          │ │││││││││││││││ │ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f125c087800::tableSwitch@325
          │ │││││││││││││││ │ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f125c08b000::delegate@14
          │ │││││││││││││││ │ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f125c08a400::invoke@114
          │ │││││││││││││││ │ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - java.lang.invoke.LambdaForm$MH/0x00007f125c08ac00::linkToTargetMethod@6
          │ │││││││││││││││ │ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@11 (line 246)
          │ │││││││││││││││ │ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.03%  │ │││││││││││││││ │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafcf8:   nopl   0x0(%rax,%rax,1)
   0.06%  │ │││││││││││││││ │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafd00:   test   $0x1,%ecx
          │ │││││││││││││││ │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafd06:   je     0x00007f12dedb01e6
   0.13%  │ │││││││││││││││ │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafd0c:   cmp    $0x102ae58,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
          │ │││││││││││││││ │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafd12:   jne    0x00007f12dedb024b           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ │││││││││││││││ │ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@433 (line 261)
          │ │││││││││││││││ │ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.40%  │ │││││││││││││││ │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafd18:   mov    0xc(,%rax,8),%ecx            ; ImmutableOopMap {rax=NarrowOop rcx=NarrowOop rdi=Oop r11=Oop }
          │ │││││││││││││││ │ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          │ │││││││││││││││ │ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
          │ │││││││││││││││ │ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.12%  │ │││││││││││││││ │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafd1f:   mov    0x14(,%rcx,8),%esi           ; implicit exception: dispatches to 0x00007f12dedb031b
   1.77%  │ │││││││││││││││ │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafd26:   movsbl 0x10(,%rcx,8),%ecx           ; ImmutableOopMap {rax=NarrowOop rdi=Oop r11=Oop }
          │ │││││││││││││││ │ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          │ │││││││││││││││ │ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
          │ │││││││││││││││ │ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.25%  │ │││││││││││││││ │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafd2e:   mov    0xc(,%rsi,8),%esi            ; implicit exception: dispatches to 0x00007f12dedb033e
   1.29%  │ │││││││││││││││ │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafd35:   shr    %cl,%esi                     ;*ishr {reexecute=0 rethrow=0 return_oop=0}
          │ │││││││││││││││ │ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - java.lang.String::length@9 (line 1519)
          │ │││││││││││││││ │ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@443 (line 261)
          │ │││││││││││││││ │ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.56%  │ │││││││││││││││ │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafd37:   nopw   0x0(%rax,%rax,1)
   0.00%  │ │││││││││││││││ │ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafd40:   test   $0x1,%esi
          │ │││││││││││││││╭│ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafd46:   je     0x00007f12dedb0137           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ │││││││││││││││││ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@448 (line 261)
          │ │││││││││││││││││ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.02%  │ │││││││││││││││││ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafd4c:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rax=NarrowOop rdi=Oop r11=Oop }
          │ │││││││││││││││││ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          │ │││││││││││││││││ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
          │ │││││││││││││││││ │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
          │ │││││││││││││││││ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafd53:   test   %eax,(%rcx)                  ;   {poll}
   0.22%  │ │││││││││││││││││ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafd55:   mov    $0xf,%edx
          │ ││││││││││││││││╰ │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafd5a:   jmp    0x00007f12dedafc10           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││││││││││  │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
          │ ││││││││││││││││  │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   3.00%  │ ││││││││↘│││││││  │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafd5f:   mov    0xc(,%rax,8),%ecx            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││ │││││││  │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@112 (line 247)
          │ ││││││││ │││││││  │ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   2.87%  │ ││││││││ │││││││  │ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafd66:   test   $0x1,%ecx
          │ ││││││││ │││││││ ╭│ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafd6c:   je     0x00007f12dedafeec           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││ │││││││ ││ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@117 (line 247)
          │ ││││││││ │││││││ ││ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.23%  │ ││││││││ │││││││ ││ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafd72:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rax=NarrowOop rdi=Oop r11=Oop }
          │ ││││││││ │││││││ ││ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          │ ││││││││ │││││││ ││ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
          │ ││││││││ │││││││ ││ │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.05%  │ ││││││││ │││││││ ││ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafd79:   test   %eax,(%rcx)                  ;   {poll}
   0.49%  │ ││││││││ │││││││ ││ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafd7b:   mov    $0x1,%edx
   0.01%  │ ││││││││ │││││││ │╰ │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafd80:   jmp    0x00007f12dedafc10           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││ │││││││ │  │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
          │ ││││││││ │││││││ │  │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   3.07%  │ ││││││││ ↘││││││ │  │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafd85:   mov    0x10(,%rax,8),%rcx           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││  ││││││ │  │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@156 (line 249)
          │ ││││││││  ││││││ │  │ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   2.76%  │ ││││││││  ││││││ │  │ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafd8d:   test   $0x1,%rcx
          │ ││││││││  ││││││ │ ╭│ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafd94:   je     0x00007f12dedaff4f           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││  ││││││ │ ││ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@163 (line 249)
          │ ││││││││  ││││││ │ ││ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.29%  │ ││││││││  ││││││ │ ││ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafd9a:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rax=NarrowOop rdi=Oop r11=Oop }
          │ ││││││││  ││││││ │ ││ │ │ │  │  │        │││ ││││ │││││││││                                                                    ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          │ ││││││││  ││││││ │ ││ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
          │ ││││││││  ││││││ │ ││ │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.09%  │ ││││││││  ││││││ │ ││ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafda1:   test   %eax,(%rcx)                  ;   {poll}
   0.57%  │ ││││││││  ││││││ │ ││ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafda3:   mov    $0x3,%edx
   0.01%  │ ││││││││  ││││││ │ │╰ │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafda8:   jmp    0x00007f12dedafc10
   3.00%  │ ││││││││  ↘│││││ │ │  │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafdad:   cmp    $0x102ac58,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
          │ ││││││││   │││││ │ │  │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafdb3:   jne    0x00007f12dedb026d           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││   │││││ │ │  │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@198 (line 251)
          │ ││││││││   │││││ │ │  │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   1.53%  │ ││││││││   │││││ │ │  │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafdb9:   movswl 0xc(,%rax,8),%ecx            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││   │││││ │ │  │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@205 (line 251)
          │ ││││││││   │││││ │ │  │ │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   1.28%  │ ││││││││   │││││ │ │  │ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafdc1:   test   $0x1,%ecx
          │ ││││││││   │││││ │ │ ╭│ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafdc7:   je     0x00007f12dedb00b7           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││   │││││ │ │ ││ │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@210 (line 251)
          │ ││││││││   │││││ │ │ ││ │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.33%  │ ││││││││   │││││ │ │ ││ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafdcd:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rax=NarrowOop rdi=Oop r11=Oop }
          │ ││││││││   │││││ │ │ ││ │ │  │  │        │││ ││││ │││││││││                                                                    ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          │ ││││││││   │││││ │ │ ││ │ │  │  │        │││ ││││ │││││││││                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
          │ ││││││││   │││││ │ │ ││ │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.43%  │ ││││││││   │││││ │ │ ││ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafdd4:   test   %eax,(%rcx)                  ;   {poll}
   0.59%  │ ││││││││   │││││ │ │ ││ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafdd6:   mov    $0x5,%edx
   0.00%  │ ││││││││   │││││ │ │ │╰ │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafddb:   jmp    0x00007f12dedafc10           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││   │││││ │ │ │  │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
          │ ││││││││   │││││ │ │ │  │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   2.70%  │ ││││││││   ↘││││ │ │ │  │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafde0:   movsbl 0xc(,%rax,8),%ecx            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││    ││││ │ │ │  │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@250 (line 253)
          │ ││││││││    ││││ │ │ │  │ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   2.67%  │ ││││││││    ││││ │ │ │  │ │  │  │        │││ ││││ │││││││││          0x00007f12dedafde8:   test   $0x1,%ecx
          │ ││││││││    ││││ │ │ │ ╭│ │  │  │        │││ ││││ │││││││││          0x00007f12dedafdee:   je     0x00007f12dedb00d0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││    ││││ │ │ │ ││ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@255 (line 253)
          │ ││││││││    ││││ │ │ │ ││ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.23%  │ ││││││││    ││││ │ │ │ ││ │  │  │        │││ ││││ │││││││││          0x00007f12dedafdf4:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rax=NarrowOop rdi=Oop r11=Oop }
          │ ││││││││    ││││ │ │ │ ││ │  │  │        │││ ││││ │││││││││                                                                    ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          │ ││││││││    ││││ │ │ │ ││ │  │  │        │││ ││││ │││││││││                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
          │ ││││││││    ││││ │ │ │ ││ │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.03%  │ ││││││││    ││││ │ │ │ ││ │  │  │        │││ ││││ │││││││││          0x00007f12dedafdfb:   test   %eax,(%rcx)                  ;   {poll}
   0.55%  │ ││││││││    ││││ │ │ │ ││ │  │  │        │││ ││││ │││││││││          0x00007f12dedafdfd:   mov    $0x7,%edx
   0.00%  │ ││││││││    ││││ │ │ │ │╰ │  │  │        │││ ││││ │││││││││          0x00007f12dedafe02:   jmp    0x00007f12dedafc10           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││    ││││ │ │ │ │  │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
          │ ││││││││    ││││ │ │ │ │  │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   3.07%  │ ││││││││    ↘│││ │ │ │ │  │  │  │        │││ ││││ │││││││││          0x00007f12dedafe07:   movzwl 0xc(,%rax,8),%ecx            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││     │││ │ │ │ │  │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@296 (line 255)
          │ ││││││││     │││ │ │ │ │  │  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   2.57%  │ ││││││││     │││ │ │ │ │  │  │  │        │││ ││││ │││││││││          0x00007f12dedafe0f:   test   $0x1,%ecx
          │ ││││││││     │││ │ │ │ │ ╭│  │  │        │││ ││││ │││││││││          0x00007f12dedafe15:   je     0x00007f12dedb00e9           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││     │││ │ │ │ │ ││  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@301 (line 255)
          │ ││││││││     │││ │ │ │ │ ││  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.33%  │ ││││││││     │││ │ │ │ │ ││  │  │        │││ ││││ │││││││││          0x00007f12dedafe1b:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rax=NarrowOop rdi=Oop r11=Oop }
          │ ││││││││     │││ │ │ │ │ ││  │  │        │││ ││││ │││││││││                                                                    ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          │ ││││││││     │││ │ │ │ │ ││  │  │        │││ ││││ │││││││││                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
          │ ││││││││     │││ │ │ │ │ ││  │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.10%  │ ││││││││     │││ │ │ │ │ ││  │  │        │││ ││││ │││││││││          0x00007f12dedafe22:   test   %eax,(%rcx)                  ;   {poll}
   0.51%  │ ││││││││     │││ │ │ │ │ ││  │  │        │││ ││││ │││││││││          0x00007f12dedafe24:   mov    $0x9,%edx
   0.00%  │ ││││││││     │││ │ │ │ │ │╰  │  │        │││ ││││ │││││││││          0x00007f12dedafe29:   jmp    0x00007f12dedafc10           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││     │││ │ │ │ │ │   │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
          │ ││││││││     │││ │ │ │ │ │   │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   2.77%  │ ││││││││     ↘││ │ │ │ │ │   │  │        │││ ││││ │││││││││          0x00007f12dedafe2e:   vmovsd 0x10(,%rax,8),%xmm2          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││      ││ │ │ │ │ │   │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@342 (line 257)
          │ ││││││││      ││ │ │ │ │ │   │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   2.50%  │ ││││││││      ││ │ │ │ │ │   │  │        │││ ││││ │││││││││          0x00007f12dedafe37:   vcvttsd2si %xmm2,%ecx
   2.22%  │ ││││││││      ││ │ │ │ │ │   │  │        │││ ││││ │││││││││          0x00007f12dedafe3b:   nopl   0x0(%rax,%rax,1)
   0.01%  │ ││││││││      ││ │ │ │ │ │   │  │        │││ ││││ │││││││││          0x00007f12dedafe40:   cmp    $0x80000000,%ecx
          │ ││││││││      ││ │ │ │ │ │ ╭ │  │        │││ ││││ │││││││││          0x00007f12dedafe46:   je     0x00007f12dedafeab           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││      ││ │ │ │ │ │ │ │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@345 (line 257)
          │ ││││││││      ││ │ │ │ │ │ │ │  │        │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.01%  │ ││││││││      ││ │ │ │ │ │ │ │  │ ↗↗   ↗ │││ ││││ │││││││││          0x00007f12dedafe4c:   test   $0x1,%ecx
          │ ││││││││      ││ │ │ │ │ │ │╭│  │ ││   │ │││ ││││ │││││││││          0x00007f12dedafe52:   je     0x00007f12dedb0105           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││      ││ │ │ │ │ │ │││  │ ││   │ │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@348 (line 257)
          │ ││││││││      ││ │ │ │ │ │ │││  │ ││   │ │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.21%  │ ││││││││      ││ │ │ │ │ │ │││  │ ││   │ │││ ││││ │││││││││          0x00007f12dedafe58:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rax=NarrowOop rdi=Oop r11=Oop }
          │ ││││││││      ││ │ │ │ │ │ │││  │ ││   │ │││ ││││ │││││││││                                                                    ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          │ ││││││││      ││ │ │ │ │ │ │││  │ ││   │ │││ ││││ │││││││││                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
          │ ││││││││      ││ │ │ │ │ │ │││  │ ││   │ │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.06%  │ ││││││││      ││ │ │ │ │ │ │││  │ ││   │ │││ ││││ │││││││││          0x00007f12dedafe5f:   test   %eax,(%rcx)                  ;   {poll}
   0.04%  │ ││││││││      ││ │ │ │ │ │ │││  │ ││   │ │││ ││││ │││││││││          0x00007f12dedafe61:   mov    $0xb,%edx
   0.00%  │ ││││││││      ││ │ │ │ │ │ ││╰  │ ││   │ │││ ││││ │││││││││          0x00007f12dedafe66:   jmp    0x00007f12dedafc10           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││      ││ │ │ │ │ │ ││   │ ││   │ │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
          │ ││││││││      ││ │ │ │ │ │ ││   │ ││   │ │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   1.97%  │ ││││││││      ↘│ │ │ │ │ │ ││   │ ││   │ │││ ││││ │││││││││          0x00007f12dedafe6b:   vmovss 0xc(,%rax,8),%xmm2           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││       │ │ │ │ │ │ ││   │ ││   │ │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@391 (line 259)
          │ ││││││││       │ │ │ │ │ │ ││   │ ││   │ │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   1.85%  │ ││││││││       │ │ │ │ │ │ ││   │ ││   │ │││ ││││ │││││││││          0x00007f12dedafe74:   vcvttss2si %xmm2,%ecx
   2.25%  │ ││││││││       │ │ │ │ │ │ ││   │ ││   │ │││ ││││ │││││││││          0x00007f12dedafe78:   nopl   0x0(%rax,%rax,1)
   0.01%  │ ││││││││       │ │ │ │ │ │ ││   │ ││   │ │││ ││││ │││││││││          0x00007f12dedafe80:   cmp    $0x80000000,%ecx
          │ ││││││││       │ │ │ │ │ │ ││ ╭ │ ││   │ │││ ││││ │││││││││          0x00007f12dedafe86:   je     0x00007f12dedafec2           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││       │ │ │ │ │ │ ││ │ │ ││   │ │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@394 (line 259)
          │ ││││││││       │ │ │ │ │ │ ││ │ │ ││   │ │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.01%  │ ││││││││       │ │ │ │ │ │ ││ │ │ ││ ↗↗│↗│││ ││││ │││││││││          0x00007f12dedafe8c:   test   $0x1,%ecx
          │ ││││││││       │ │ │ │ │ │ ││ │╭│ ││ │││││││ ││││ │││││││││          0x00007f12dedafe92:   je     0x00007f12dedb011e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││       │ │ │ │ │ │ ││ │││ ││ │││││││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@397 (line 259)
          │ ││││││││       │ │ │ │ │ │ ││ │││ ││ │││││││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.22%  │ ││││││││       │ │ │ │ │ │ ││ │││ ││ │││││││ ││││ │││││││││          0x00007f12dedafe98:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rax=NarrowOop rdi=Oop r11=Oop }
          │ ││││││││       │ │ │ │ │ │ ││ │││ ││ │││││││ ││││ │││││││││                                                                    ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          │ ││││││││       │ │ │ │ │ │ ││ │││ ││ │││││││ ││││ │││││││││                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
          │ ││││││││       │ │ │ │ │ │ ││ │││ ││ │││││││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.06%  │ ││││││││       │ │ │ │ │ │ ││ │││ ││ │││││││ ││││ │││││││││          0x00007f12dedafe9f:   test   %eax,(%rcx)                  ;   {poll}
   0.03%  │ ││││││││       │ │ │ │ │ │ ││ │││ ││ │││││││ ││││ │││││││││          0x00007f12dedafea1:   mov    $0xd,%edx
          │ ││││││││       │ │ │ │ │ │ ││ ││╰ ││ │││││││ ││││ │││││││││          0x00007f12dedafea6:   jmp    0x00007f12dedafc10           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││       │ │ │ │ │ │ ││ ││  ││ │││││││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@9 (line 246)
          │ ││││││││       │ │ │ │ │ │ ││ ││  ││ │││││││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
          │ ││││││││       │ │ │ │ │ │ ↘│ ││  ││ │││││││ ││││ │││││││││          0x00007f12dedafeab:   vucomisd %xmm2,%xmm2
          │ ││││││││       │ │ │ │ │ │  │ ││ ╭││ │││││││ ││││ │││││││││          0x00007f12dedafeaf:   jp     0x00007f12dedafed9
          │ ││││││││       │ │ │ │ │ │  │ ││ │││ │││││││ ││││ │││││││││          0x00007f12dedafeb5:   vucomisd %xmm1,%xmm2
          │ ││││││││       │ │ │ │ │ │  │ ││ │╰│ │││││││ ││││ │││││││││          0x00007f12dedafeb9:   jbe    0x00007f12dedafe4c
          │ ││││││││       │ │ │ │ │ │  │ ││ │ │ │││││││ ││││ │││││││││          0x00007f12dedafebb:   mov    $0x7fffffff,%ecx
          │ ││││││││       │ │ │ │ │ │  │ ││ │ ╰ │││││││ ││││ │││││││││          0x00007f12dedafec0:   jmp    0x00007f12dedafe4c           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││       │ │ │ │ │ │  │ ││ │   │││││││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@345 (line 257)
          │ ││││││││       │ │ │ │ │ │  │ ││ │   │││││││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
          │ ││││││││       │ │ │ │ │ │  │ ↘│ │   │││││││ ││││ │││││││││          0x00007f12dedafec2:   vucomiss %xmm2,%xmm2
          │ ││││││││       │ │ │ │ │ │  │  │ │  ╭│││││││ ││││ │││││││││          0x00007f12dedafec6:   jp     0x00007f12dedafee5
          │ ││││││││       │ │ │ │ │ │  │  │ │  ││││││││ ││││ │││││││││          0x00007f12dedafecc:   vucomiss %xmm0,%xmm2
          │ ││││││││       │ │ │ │ │ │  │  │ │  │╰││││││ ││││ │││││││││          0x00007f12dedafed0:   jbe    0x00007f12dedafe8c
          │ ││││││││       │ │ │ │ │ │  │  │ │  │ ││││││ ││││ │││││││││          0x00007f12dedafed2:   mov    $0x7fffffff,%ecx
          │ ││││││││       │ │ │ │ │ │  │  │ │  │ ╰│││││ ││││ │││││││││          0x00007f12dedafed7:   jmp    0x00007f12dedafe8c           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││       │ │ │ │ │ │  │  │ │  │  │││││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@394 (line 259)
          │ ││││││││       │ │ │ │ │ │  │  │ │  │  │││││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
          │ ││││││││       │ │ │ │ │ │  │  │ ↘  │  │││││ ││││ │││││││││          0x00007f12dedafed9:   mov    $0x0,%ecx
          │ ││││││││       │ │ │ │ │ │  │  │    │  │││││ ││││ │││││││││          0x00007f12dedafede:   xchg   %ax,%ax
          │ ││││││││       │ │ │ │ │ │  │  │    │  ╰││││ ││││ │││││││││          0x00007f12dedafee0:   jmp    0x00007f12dedafe4c           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││       │ │ │ │ │ │  │  │    │   ││││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@345 (line 257)
          │ ││││││││       │ │ │ │ │ │  │  │    │   ││││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
          │ ││││││││       │ │ │ │ │ │  │  │    ↘   ││││ ││││ │││││││││          0x00007f12dedafee5:   mov    $0x0,%ecx
          │ ││││││││       │ │ │ │ │ │  │  │        ╰│││ ││││ │││││││││          0x00007f12dedafeea:   jmp    0x00007f12dedafe8c           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││       │ │ │ │ │ │  │  │         │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@394 (line 259)
          │ ││││││││       │ │ │ │ │ │  │  │         │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.18%  │ ││││││││       │ ↘ │ │ │ │  │  │         │││ ││││ │││││││││          0x00007f12dedafeec:   mov    0x458(%r15),%rax             ; ImmutableOopMap {rdi=Oop r11=Oop }
          │ ││││││││       │   │ │ │ │  │  │         │││ ││││ │││││││││                                                                    ;*iconst_2 {reexecute=1 rethrow=0 return_oop=0}
          │ ││││││││       │   │ │ │ │  │  │         │││ ││││ │││││││││                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@125 (line 247)
          │ ││││││││       │   │ │ │ │  │  │         │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.03%  │ ││││││││       │   │ │ │ │  │  │         │││ ││││ │││││││││          0x00007f12dedafef3:   test   %eax,(%rax)                  ;   {poll}
   0.69%  │ ││││││││       │   │ │ │ │  │  │         │││ ││││ │││││││││          0x00007f12dedafef5:   shl    %ecx                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││       │   │ │ │ │  │  │         │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@130 (line 247)
          │ ││││││││       │   │ │ │ │  │  │         │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.00%  │ ││││││││       │   │ │ │ │  │  │         │││ ││││ │││││││││          0x00007f12dedafef7:   add    %r8d,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││       │   │ │ │ │  │  │         │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@31 (line 134)
   0.00%  │ ││││││││       │   │ │ │ │  │  │         │││ ││││ │││││││││          0x00007f12dedafefa:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││       │   │ │ │ │  │  │         │││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@33 (line 133)
          │ ││││││││       │   │ │ │ │  │  │         │││ ││││ │││││││││          0x00007f12dedafefd:   mov    %ecx,%r8d
   0.15%  │ ││││││││       │   │ │ │ │  │  │         ╰││ ││││ │││││││││          0x00007f12dedaff00:   jmp    0x00007f12dedafbf0
   0.04%  │ ↘│││││││       │   │ │ │ │  │  │          ││ ││││ │││││││││          0x00007f12dedaff05:   cmp    $0x102ae58,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$StringLength&apos;)}
          │  │││││││       │   │ │ │ │  │  │          ││ ││││ │││││││││          0x00007f12dedaff0b:   jne    0x00007f12dedb01f4           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │  │││││││       │   │ │ │ │  │  │          ││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@13 (line 133)
   0.01%  │  │││││││       │   │ │ │ │  │  │          ││ ││││ │││││││││          0x00007f12dedaff11:   mov    0xc(,%rax,8),%ecx            ; ImmutableOopMap {rcx=NarrowOop rdi=Oop r11=Oop }
          │  │││││││       │   │ │ │ │  │  │          ││ ││││ │││││││││                                                                    ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          │  │││││││       │   │ │ │ │  │  │          ││ ││││ │││││││││                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@470 (line 262)
          │  │││││││       │   │ │ │ │  │  │          ││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.22%  │  │││││││       │   │ │ │ │  │  │          ││ ││││ │││││││││          0x00007f12dedaff18:   mov    0x14(,%rcx,8),%eax           ; implicit exception: dispatches to 0x00007f12dedb0361
   0.04%  │  │││││││       │   │ │ │ │  │  │          ││ ││││ │││││││││          0x00007f12dedaff1f:   movsbl 0x10(,%rcx,8),%ecx           ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
          │  │││││││       │   │ │ │ │  │  │          ││ ││││ │││││││││                                                                    ; - java.lang.String::coder@7 (line 4809)
          │  │││││││       │   │ │ │ │  │  │          ││ ││││ │││││││││                                                                    ; - java.lang.String::length@6 (line 1519)
          │  │││││││       │   │ │ │ │  │  │          ││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@481 (line 262)
          │  │││││││       │   │ │ │ │  │  │          ││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.03%  │  │││││││       │   │ │ │ │  │  │          ││ ││││ │││││││││          0x00007f12dedaff27:   test   %eax,%eax
          │  │││││││       │   │ │ │ │  │  │          ││ ││││ │││││││││          0x00007f12dedaff29:   je     0x00007f12dedb0210
   0.02%  │  │││││││       │   │ │ │ │  │  │          ││ ││││ │││││││││          0x00007f12dedaff2f:   mov    0xc(,%rax,8),%eax            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
          │  │││││││       │   │ │ │ │  │  │          ││ ││││ │││││││││                                                                    ; - java.lang.String::length@4 (line 1519)
          │  │││││││       │   │ │ │ │  │  │          ││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@481 (line 262)
          │  │││││││       │   │ │ │ │  │  │          ││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.31%  │  │││││││       │   │ │ │ │  │  │          ││ ││││ │││││││││          0x00007f12dedaff36:   mov    0x458(%r15),%rbx             ; ImmutableOopMap {rdi=Oop r11=Oop }
          │  │││││││       │   │ │ │ │  │  │          ││ ││││ │││││││││                                                                    ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          │  │││││││       │   │ │ │ │  │  │          ││ ││││ │││││││││                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@470 (line 262)
          │  │││││││       │   │ │ │ │  │  │          ││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.00%  │  │││││││       │   │ │ │ │  │  │          ││ ││││ │││││││││          0x00007f12dedaff3d:   test   %eax,(%rbx)                  ;   {poll}
   0.21%  │  │││││││       │   │ │ │ │  │  │          ││ ││││ │││││││││          0x00007f12dedaff3f:   shr    %cl,%eax                     ;*ishr {reexecute=0 rethrow=0 return_oop=0}
          │  │││││││       │   │ │ │ │  │  │          ││ ││││ │││││││││                                                                    ; - java.lang.String::length@9 (line 1519)
          │  │││││││       │   │ │ │ │  │  │          ││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@481 (line 262)
          │  │││││││       │   │ │ │ │  │  │          ││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.45%  │  │││││││       │   │ │ │ │  │  │          ││ ││││ │││││││││          0x00007f12dedaff41:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │││││││       │   │ │ │ │  │  │          ││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@31 (line 134)
   0.01%  │  │││││││       │   │ │ │ │  │  │          ││ ││││ │││││││││          0x00007f12dedaff44:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  │││││││       │   │ │ │ │  │  │          ││ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@33 (line 133)
   0.00%  │  │││││││       │   │ │ │ │  │  │          ││ ││││ │││││││││          0x00007f12dedaff47:   mov    %eax,%r8d
   0.03%  │  │││││││       │   │ │ │ │  │  │          ╰│ ││││ │││││││││          0x00007f12dedaff4a:   jmp    0x00007f12dedafbf0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │  │││││││       │   │ │ │ │  │  │           │ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@13 (line 133)
   0.23%  │  │││││││       │   ↘ │ │ │  │  │           │ ││││ │││││││││          0x00007f12dedaff4f:   mov    0x458(%r15),%rax             ; ImmutableOopMap {rdi=Oop r11=Oop }
          │  │││││││       │     │ │ │  │  │           │ ││││ │││││││││                                                                    ;*iconst_2 {reexecute=1 rethrow=0 return_oop=0}
          │  │││││││       │     │ │ │  │  │           │ ││││ │││││││││                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@171 (line 249)
          │  │││││││       │     │ │ │  │  │           │ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.05%  │  │││││││       │     │ │ │  │  │           │ ││││ │││││││││          0x00007f12dedaff56:   test   %eax,(%rax)                  ;   {poll}
   0.63%  │  │││││││       │     │ │ │  │  │           │ ││││ │││││││││          0x00007f12dedaff58:   mov    %ecx,%eax                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          │  │││││││       │     │ │ │  │  │           │ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@177 (line 249)
          │  │││││││       │     │ │ │  │  │           │ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.00%  │  │││││││       │     │ │ │  │  │           │ ││││ │││││││││          0x00007f12dedaff5a:   shl    %eax                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │  │││││││       │     │ │ │  │  │           │ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@178 (line 249)
          │  │││││││       │     │ │ │  │  │           │ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.01%  │  │││││││       │     │ │ │  │  │           │ ││││ │││││││││          0x00007f12dedaff5c:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │││││││       │     │ │ │  │  │           │ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@31 (line 134)
          │  │││││││       │     │ │ │  │  │           │ ││││ │││││││││          0x00007f12dedaff5f:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  │││││││       │     │ │ │  │  │           │ ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@33 (line 133)
   0.14%  │  │││││││       │     │ │ │  │  │           │ ││││ │││││││││          0x00007f12dedaff62:   mov    %eax,%r8d
   0.00%  │  │││││││       │     │ │ │  │  │           ╰ ││││ │││││││││          0x00007f12dedaff65:   jmp    0x00007f12dedafbf0
   0.01%  │  ↘││││││       │     │ │ │  │  │             ││││ │││││││││          0x00007f12dedaff6a:   cmp    $0x102b260,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$DoubleToInt&apos;)}
          │   ││││││       │     │ │ │  │  │             ││││ │││││││││          0x00007f12dedaff70:   jne    0x00007f12dedb023d           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
          │   ││││││       │     │ │ │  │  │             ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@428 (line 260)
          │   ││││││       │     │ │ │  │  │             ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.01%  │   ││││││       │     │ │ │  │  │             ││││ │││││││││          0x00007f12dedaff76:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rax=NarrowOop rdi=Oop r11=Oop }
          │   ││││││       │     │ │ │  │  │             ││││ │││││││││                                                                    ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          │   ││││││       │     │ │ │  │  │             ││││ │││││││││                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@368 (line 258)
          │   ││││││       │     │ │ │  │  │             ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.02%  │   ││││││       │     │ │ │  │  │             ││││ │││││││││          0x00007f12dedaff7d:   test   %eax,(%rcx)                  ;   {poll}
   0.20%  │   ││││││       │     │ │ │  │  │             ││││ │││││││││          0x00007f12dedaff7f:   vmovsd 0x10(,%rax,8),%xmm2          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │   ││││││       │     │ │ │  │  │             ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@376 (line 258)
          │   ││││││       │     │ │ │  │  │             ││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.00%  │   ││││││       │     │ │ │  │  │             ││││ │││││││││          0x00007f12dedaff88:   vcvttsd2si %xmm2,%eax
   0.10%  │   ││││││       │     │ │ │  │  │             ││││ │││││││││          0x00007f12dedaff8c:   cmp    $0x80000000,%eax
          │   ││││││       │     │ │ │  │  │            ╭││││ │││││││││          0x00007f12dedaff92:   je     0x00007f12dedb0150           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
          │   ││││││       │     │ │ │  │  │            │││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@379 (line 258)
          │   ││││││       │     │ │ │  │  │            │││││ │││││││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.12%  │   ││││││       │     │ │ │  │  │            │││││ │││││││││ ↗↗   ↗   0x00007f12dedaff98:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │   ││││││       │     │ │ │  │  │            │││││ │││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@31 (line 134)
          │   ││││││       │     │ │ │  │  │            │││││ │││││││││ ││   │   0x00007f12dedaff9b:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │   ││││││       │     │ │ │  │  │            │││││ │││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@33 (line 133)
          │   ││││││       │     │ │ │  │  │            │││││ │││││││││ ││   │   0x00007f12dedaff9e:   mov    %eax,%r8d
          │   ││││││       │     │ │ │  │  │            │╰│││ │││││││││ ││   │   0x00007f12dedaffa1:   jmp    0x00007f12dedafbf0
   0.27%  │   ↘│││││       │     │ │ │  │  │            │ │││ │││││││││ ││   │   0x00007f12dedaffa6:   cmp    $0x102b860,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$LongToInt&apos;)}
          │    │││││       │     │ │ │  │  │            │ │││ │││││││││ ││   │   0x00007f12dedaffac:   jne    0x00007f12dedb0202           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │    │││││       │     │ │ │  │  │            │ │││ │││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@13 (line 133)
   0.01%  │    │││││       │     │ │ │  │  │            │ │││ │││││││││ ││   │   0x00007f12dedaffb2:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rax=NarrowOop rdi=Oop r11=Oop }
          │    │││││       │     │ │ │  │  │            │ │││ │││││││││ ││   │                                                             ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          │    │││││       │     │ │ │  │  │            │ │││ │││││││││ ││   │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@182 (line 250)
          │    │││││       │     │ │ │  │  │            │ │││ │││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.02%  │    │││││       │     │ │ │  │  │            │ │││ │││││││││ ││   │   0x00007f12dedaffb9:   test   %eax,(%rcx)                  ;   {poll}
   0.30%  │    │││││       │     │ │ │  │  │            │ │││ │││││││││ ││   │   0x00007f12dedaffbb:   mov    0x10(,%rax,8),%eax           ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          │    │││││       │     │ │ │  │  │            │ │││ │││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@193 (line 250)
          │    │││││       │     │ │ │  │  │            │ │││ │││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.01%  │    │││││       │     │ │ │  │  │            │ │││ │││││││││ ││   │   0x00007f12dedaffc2:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │    │││││       │     │ │ │  │  │            │ │││ │││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@31 (line 134)
   0.00%  │    │││││       │     │ │ │  │  │            │ │││ │││││││││ ││   │   0x00007f12dedaffc5:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │    │││││       │     │ │ │  │  │            │ │││ │││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@33 (line 133)
          │    │││││       │     │ │ │  │  │            │ │││ │││││││││ ││   │   0x00007f12dedaffc8:   mov    %eax,%r8d
   0.13%  │    │││││       │     │ │ │  │  │            │ ╰││ │││││││││ ││   │   0x00007f12dedaffcb:   jmp    0x00007f12dedafbf0
   0.02%  │    ↘││││       │     │ │ │  │  │            │  ││ │││││││││ ││   │   0x00007f12dedaffd0:   cmp    $0x102ac58,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ShortToInt&apos;)}
          │     ││││       │     │ │ │  │  │            │  ││ │││││││││ ││   │   0x00007f12dedaffd6:   jne    0x00007f12dedb022f           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │     ││││       │     │ │ │  │  │            │  ││ │││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@13 (line 133)
   0.14%  │     ││││       │     │ │ │  │  │            │  ││ │││││││││ ││   │   0x00007f12dedaffdc:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rax=NarrowOop rdi=Oop r11=Oop }
          │     ││││       │     │ │ │  │  │            │  ││ │││││││││ ││   │                                                             ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          │     ││││       │     │ │ │  │  │            │  ││ │││││││││ ││   │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@228 (line 252)
          │     ││││       │     │ │ │  │  │            │  ││ │││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.01%  │     ││││       │     │ │ │  │  │            │  ││ │││││││││ ││   │   0x00007f12dedaffe3:   test   %eax,(%rcx)                  ;   {poll}
   0.33%  │     ││││       │     │ │ │  │  │            │  ││ │││││││││ ││   │   0x00007f12dedaffe5:   movswl 0xc(,%rax,8),%eax            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │     ││││       │     │ │ │  │  │            │  ││ │││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@236 (line 252)
          │     ││││       │     │ │ │  │  │            │  ││ │││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
          │     ││││       │     │ │ │  │  │            │  ││ │││││││││ ││   │   0x00007f12dedaffed:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │     ││││       │     │ │ │  │  │            │  ││ │││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@31 (line 134)
   0.00%  │     ││││       │     │ │ │  │  │            │  ││ │││││││││ ││   │   0x00007f12dedafff0:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │     ││││       │     │ │ │  │  │            │  ││ │││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@33 (line 133)
          │     ││││       │     │ │ │  │  │            │  ││ │││││││││ ││   │   0x00007f12dedafff3:   mov    %eax,%r8d
   0.13%  │     ││││       │     │ │ │  │  │            │  ╰│ │││││││││ ││   │   0x00007f12dedafff6:   jmp    0x00007f12dedafbf0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │     ││││       │     │ │ │  │  │            │   │ │││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@13 (line 133)
   0.17%  │     ↘│││       │     │ │ │  │  │            │   │ │││││││││ ││   │   0x00007f12dedafffb:   nopl   0x0(%rax,%rax,1)
   0.01%  │      │││       │     │ │ │  │  │            │   │ │││││││││ ││   │   0x00007f12dedb0000:   cmp    $0x102b660,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$CharToInt&apos;)}
          │      │││       │     │ │ │  │  │            │   │ │││││││││ ││   │   0x00007f12dedb0006:   jne    0x00007f12dedb02a0           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
          │      │││       │     │ │ │  │  │            │   │ │││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@379 (line 258)
          │      │││       │     │ │ │  │  │            │   │ │││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.02%  │      │││       │     │ │ │  │  │            │   │ │││││││││ ││   │   0x00007f12dedb000c:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rax=NarrowOop rdi=Oop r11=Oop }
          │      │││       │     │ │ │  │  │            │   │ │││││││││ ││   │                                                             ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          │      │││       │     │ │ │  │  │            │   │ │││││││││ ││   │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@320 (line 256)
          │      │││       │     │ │ │  │  │            │   │ │││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.02%  │      │││       │     │ │ │  │  │            │   │ │││││││││ ││   │   0x00007f12dedb0013:   test   %eax,(%rcx)                  ;   {poll}
   0.59%  │      │││       │     │ │ │  │  │            │   │ │││││││││ ││   │   0x00007f12dedb0015:   movzwl 0xc(,%rax,8),%eax            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │      │││       │     │ │ │  │  │            │   │ │││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@328 (line 256)
          │      │││       │     │ │ │  │  │            │   │ │││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
          │      │││       │     │ │ │  │  │            │   │ │││││││││ ││   │   0x00007f12dedb001d:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │      │││       │     │ │ │  │  │            │   │ │││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@31 (line 134)
          │      │││       │     │ │ │  │  │            │   │ │││││││││ ││   │   0x00007f12dedb0020:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │      │││       │     │ │ │  │  │            │   │ │││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@33 (line 133)
          │      │││       │     │ │ │  │  │            │   │ │││││││││ ││   │   0x00007f12dedb0023:   mov    %eax,%r8d
   0.12%  │      │││       │     │ │ │  │  │            │   ╰ │││││││││ ││   │   0x00007f12dedb0026:   jmp    0x00007f12dedafbf0
   0.01%  │      ↘││       │     │ │ │  │  │            │     │││││││││ ││   │   0x00007f12dedb002b:   cmp    $0x102b060,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$FloatToInt&apos;)}
          │       ││       │     │ │ │  │  │            │     │││││││││ ││   │   0x00007f12dedb0031:   jne    0x00007f12dedb027e           ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
          │       ││       │     │ │ │  │  │            │     │││││││││ ││   │                                                             ; - java.lang.String::length@4 (line 1519)
          │       ││       │     │ │ │  │  │            │     │││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@481 (line 262)
          │       ││       │     │ │ │  │  │            │     │││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.14%  │       ││       │     │ │ │  │  │            │     │││││││││ ││   │   0x00007f12dedb0037:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rax=NarrowOop rdi=Oop r11=Oop }
          │       ││       │     │ │ │  │  │            │     │││││││││ ││   │                                                             ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          │       ││       │     │ │ │  │  │            │     │││││││││ ││   │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@417 (line 260)
          │       ││       │     │ │ │  │  │            │     │││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.01%  │       ││       │     │ │ │  │  │            │     │││││││││ ││   │   0x00007f12dedb003e:   test   %eax,(%rcx)                  ;   {poll}
   0.11%  │       ││       │     │ │ │  │  │            │     │││││││││ ││   │   0x00007f12dedb0040:   vmovss 0xc(,%rax,8),%xmm2           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │       ││       │     │ │ │  │  │            │     │││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@425 (line 260)
          │       ││       │     │ │ │  │  │            │     │││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
          │       ││       │     │ │ │  │  │            │     │││││││││ ││   │   0x00007f12dedb0049:   vcvttss2si %xmm2,%eax
   0.24%  │       ││       │     │ │ │  │  │            │     │││││││││ ││   │   0x00007f12dedb004d:   cmp    $0x80000000,%eax
          │       ││       │     │ │ │  │  │            │    ╭│││││││││ ││   │   0x00007f12dedb0053:   je     0x00007f12dedb0170           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
          │       ││       │     │ │ │  │  │            │    ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@428 (line 260)
          │       ││       │     │ │ │  │  │            │    ││││││││││ ││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.12%  │       ││       │     │ │ │  │  │            │    ││││││││││ ││ ↗↗│↗  0x00007f12dedb0059:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │       ││       │     │ │ │  │  │            │    ││││││││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@31 (line 134)
          │       ││       │     │ │ │  │  │            │    ││││││││││ ││ ││││  0x00007f12dedb005c:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │       ││       │     │ │ │  │  │            │    ││││││││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@33 (line 133)
   0.02%  │       ││       │     │ │ │  │  │            │    ││││││││││ ││ ││││  0x00007f12dedb005f:   mov    %eax,%r8d
   0.00%  │       ││       │     │ │ │  │  │            │    │╰││││││││ ││ ││││  0x00007f12dedb0062:   jmp    0x00007f12dedafbf0
   0.29%  │       ↘│       │     │ │ │  │  │            │    │ ││││││││ ││ ││││  0x00007f12dedb0067:   cmp    $0x102b460,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$ByteToInt&apos;)}
          │        │       │     │ │ │  │  │            │    │ ││││││││ ││ ││││  0x00007f12dedb006d:   jne    0x00007f12dedb01bf           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │        │       │     │ │ │  │  │            │    │ ││││││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@13 (line 133)
   0.00%  │        │       │     │ │ │  │  │            │    │ ││││││││ ││ ││││  0x00007f12dedb0073:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rax=NarrowOop rdi=Oop r11=Oop }
          │        │       │     │ │ │  │  │            │    │ ││││││││ ││ ││││                                                            ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          │        │       │     │ │ │  │  │            │    │ ││││││││ ││ ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@274 (line 254)
          │        │       │     │ │ │  │  │            │    │ ││││││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.01%  │        │       │     │ │ │  │  │            │    │ ││││││││ ││ ││││  0x00007f12dedb007a:   test   %eax,(%rcx)                  ;   {poll}
   0.32%  │        │       │     │ │ │  │  │            │    │ ││││││││ ││ ││││  0x00007f12dedb007c:   movsbl 0xc(,%rax,8),%eax            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │        │       │     │ │ │  │  │            │    │ ││││││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@282 (line 254)
          │        │       │     │ │ │  │  │            │    │ ││││││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.01%  │        │       │     │ │ │  │  │            │    │ ││││││││ ││ ││││  0x00007f12dedb0084:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │        │       │     │ │ │  │  │            │    │ ││││││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@31 (line 134)
          │        │       │     │ │ │  │  │            │    │ ││││││││ ││ ││││  0x00007f12dedb0087:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │        │       │     │ │ │  │  │            │    │ ││││││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@33 (line 133)
          │        │       │     │ │ │  │  │            │    │ ││││││││ ││ ││││  0x00007f12dedb008a:   mov    %eax,%r8d
   0.17%  │        │       │     │ │ │  │  │            │    │ ╰│││││││ ││ ││││  0x00007f12dedb008d:   jmp    0x00007f12dedafbf0
   0.02%  │        ↘       │     │ │ │  │  │            │    │  │││││││ ││ ││││  0x00007f12dedb0092:   cmp    $0x102a868,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeSwitchBenchmark$AsIs&apos;)}
          │                │     │ │ │  │  │            │    │  │││││││ ││ ││││  0x00007f12dedb0098:   jne    0x00007f12dedb028f           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                │     │ │ │  │  │            │    │  │││││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@13 (line 133)
   0.01%  │                │     │ │ │  │  │            │    │  │││││││ ││ ││││  0x00007f12dedb009e:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rax=NarrowOop rdi=Oop r11=Oop }
          │                │     │ │ │  │  │            │    │  │││││││ ││ ││││                                                            ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          │                │     │ │ │  │  │            │    │  │││││││ ││ ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@134 (line 248)
          │                │     │ │ │  │  │            │    │  │││││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.01%  │                │     │ │ │  │  │            │    │  │││││││ ││ ││││  0x00007f12dedb00a5:   test   %eax,(%rcx)                  ;   {poll}
   0.45%  │                │     │ │ │  │  │            │    │  │││││││ ││ ││││  0x00007f12dedb00a7:   add    0xc(,%rax,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                │     │ │ │  │  │            │    │  │││││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@31 (line 134)
   0.00%  │                │     │ │ │  │  │            │    │  │││││││ ││ ││││  0x00007f12dedb00af:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                │     │ │ │  │  │            │    │  │││││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@33 (line 133)
   0.00%  │                │     │ │ │  │  │            │    │  ╰││││││ ││ ││││  0x00007f12dedb00b2:   jmp    0x00007f12dedafbf0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                │     │ │ │  │  │            │    │   ││││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@13 (line 133)
   0.21%  │                │     ↘ │ │  │  │            │    │   ││││││ ││ ││││  0x00007f12dedb00b7:   mov    0x458(%r15),%rax             ; ImmutableOopMap {rdi=Oop r11=Oop }
          │                │       │ │  │  │            │    │   ││││││ ││ ││││                                                            ;*iconst_2 {reexecute=1 rethrow=0 return_oop=0}
          │                │       │ │  │  │            │    │   ││││││ ││ ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@218 (line 251)
          │                │       │ │  │  │            │    │   ││││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.09%  │                │       │ │  │  │            │    │   ││││││ ││ ││││  0x00007f12dedb00be:   test   %eax,(%rax)                  ;   {poll}
   0.71%  │                │       │ │  │  │            │    │   ││││││ ││ ││││  0x00007f12dedb00c0:   shl    %ecx                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │                │       │ │  │  │            │    │   ││││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@224 (line 251)
          │                │       │ │  │  │            │    │   ││││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.01%  │                │       │ │  │  │            │    │   ││││││ ││ ││││  0x00007f12dedb00c2:   add    %r8d,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                │       │ │  │  │            │    │   ││││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@31 (line 134)
          │                │       │ │  │  │            │    │   ││││││ ││ ││││  0x00007f12dedb00c5:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                │       │ │  │  │            │    │   ││││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@33 (line 133)
   0.00%  │                │       │ │  │  │            │    │   ││││││ ││ ││││  0x00007f12dedb00c8:   mov    %ecx,%r8d
   0.16%  │                │       │ │  │  │            │    │   ╰│││││ ││ ││││  0x00007f12dedb00cb:   jmp    0x00007f12dedafbf0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                │       │ │  │  │            │    │    │││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@13 (line 133)
   0.17%  │                │       ↘ │  │  │            │    │    │││││ ││ ││││  0x00007f12dedb00d0:   mov    0x458(%r15),%rax             ; ImmutableOopMap {rdi=Oop r11=Oop }
          │                │         │  │  │            │    │    │││││ ││ ││││                                                            ;*iconst_2 {reexecute=1 rethrow=0 return_oop=0}
          │                │         │  │  │            │    │    │││││ ││ ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@264 (line 253)
          │                │         │  │  │            │    │    │││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.03%  │                │         │  │  │            │    │    │││││ ││ ││││  0x00007f12dedb00d7:   test   %eax,(%rax)                  ;   {poll}
   0.68%  │                │         │  │  │            │    │    │││││ ││ ││││  0x00007f12dedb00d9:   shl    %ecx                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │                │         │  │  │            │    │    │││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@270 (line 253)
          │                │         │  │  │            │    │    │││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.01%  │                │         │  │  │            │    │    │││││ ││ ││││  0x00007f12dedb00db:   add    %r8d,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                │         │  │  │            │    │    │││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@31 (line 134)
          │                │         │  │  │            │    │    │││││ ││ ││││  0x00007f12dedb00de:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                │         │  │  │            │    │    │││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@33 (line 133)
          │                │         │  │  │            │    │    │││││ ││ ││││  0x00007f12dedb00e1:   mov    %ecx,%r8d
   0.15%  │                │         │  │  │            │    │    ╰││││ ││ ││││  0x00007f12dedb00e4:   jmp    0x00007f12dedafbf0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                │         │  │  │            │    │     ││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@13 (line 133)
   0.22%  │                │         ↘  │  │            │    │     ││││ ││ ││││  0x00007f12dedb00e9:   mov    0x458(%r15),%rax             ; ImmutableOopMap {rdi=Oop r11=Oop }
          │                │            │  │            │    │     ││││ ││ ││││                                                            ;*iconst_2 {reexecute=1 rethrow=0 return_oop=0}
          │                │            │  │            │    │     ││││ ││ ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@310 (line 255)
          │                │            │  │            │    │     ││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.07%  │                │            │  │            │    │     ││││ ││ ││││  0x00007f12dedb00f0:   test   %eax,(%rax)                  ;   {poll}
   0.67%  │                │            │  │            │    │     ││││ ││ ││││  0x00007f12dedb00f2:   shl    %ecx                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │                │            │  │            │    │     ││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@316 (line 255)
          │                │            │  │            │    │     ││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
          │                │            │  │            │    │     ││││ ││ ││││  0x00007f12dedb00f4:   add    %r8d,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                │            │  │            │    │     ││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@31 (line 134)
   0.00%  │                │            │  │            │    │     ││││ ││ ││││  0x00007f12dedb00f7:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                │            │  │            │    │     ││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@33 (line 133)
          │                │            │  │            │    │     ││││ ││ ││││  0x00007f12dedb00fa:   mov    %ecx,%r8d
   0.14%  │                │            │  │            │    │     ││││ ││ ││││  0x00007f12dedb00fd:   data16 xchg %ax,%ax
          │                │            │  │            │    │     ╰│││ ││ ││││  0x00007f12dedb0100:   jmp    0x00007f12dedafbf0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                │            │  │            │    │      │││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@13 (line 133)
   0.33%  │                │            ↘  │            │    │      │││ ││ ││││  0x00007f12dedb0105:   mov    0x458(%r15),%rax             ; ImmutableOopMap {rdi=Oop r11=Oop }
          │                │               │            │    │      │││ ││ ││││                                                            ;*iconst_2 {reexecute=1 rethrow=0 return_oop=0}
          │                │               │            │    │      │││ ││ ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@357 (line 257)
          │                │               │            │    │      │││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.04%  │                │               │            │    │      │││ ││ ││││  0x00007f12dedb010c:   test   %eax,(%rax)                  ;   {poll}
   0.05%  │                │               │            │    │      │││ ││ ││││  0x00007f12dedb010e:   shl    %ecx                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │                │               │            │    │      │││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@364 (line 257)
          │                │               │            │    │      │││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.00%  │                │               │            │    │      │││ ││ ││││  0x00007f12dedb0110:   add    %r8d,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                │               │            │    │      │││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@31 (line 134)
   0.10%  │                │               │            │    │      │││ ││ ││││  0x00007f12dedb0113:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                │               │            │    │      │││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@33 (line 133)
   0.00%  │                │               │            │    │      │││ ││ ││││  0x00007f12dedb0116:   mov    %ecx,%r8d
   0.05%  │                │               │            │    │      ╰││ ││ ││││  0x00007f12dedb0119:   jmp    0x00007f12dedafbf0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                │               │            │    │       ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@13 (line 133)
   0.29%  │                │               ↘            │    │       ││ ││ ││││  0x00007f12dedb011e:   mov    0x458(%r15),%rax             ; ImmutableOopMap {rdi=Oop r11=Oop }
          │                │                            │    │       ││ ││ ││││                                                            ;*iconst_2 {reexecute=1 rethrow=0 return_oop=0}
          │                │                            │    │       ││ ││ ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@406 (line 259)
          │                │                            │    │       ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.06%  │                │                            │    │       ││ ││ ││││  0x00007f12dedb0125:   test   %eax,(%rax)                  ;   {poll}
   0.16%  │                │                            │    │       ││ ││ ││││  0x00007f12dedb0127:   shl    %ecx                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │                │                            │    │       ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@413 (line 259)
          │                │                            │    │       ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
          │                │                            │    │       ││ ││ ││││  0x00007f12dedb0129:   add    %r8d,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                │                            │    │       ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@31 (line 134)
   0.06%  │                │                            │    │       ││ ││ ││││  0x00007f12dedb012c:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                │                            │    │       ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@33 (line 133)
          │                │                            │    │       ││ ││ ││││  0x00007f12dedb012f:   mov    %ecx,%r8d
   0.03%  │                │                            │    │       ╰│ ││ ││││  0x00007f12dedb0132:   jmp    0x00007f12dedafbf0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                │                            │    │        │ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@13 (line 133)
          │                ↘                            │    │        │ ││ ││││  0x00007f12dedb0137:   mov    0x458(%r15),%rax             ; ImmutableOopMap {rdi=Oop r11=Oop }
          │                                             │    │        │ ││ ││││                                                            ;*iconst_2 {reexecute=1 rethrow=0 return_oop=0}
          │                                             │    │        │ ││ ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@457 (line 261)
          │                                             │    │        │ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
          │                                             │    │        │ ││ ││││  0x00007f12dedb013e:   test   %eax,(%rax)                  ;   {poll}
   0.02%  │                                             │    │        │ ││ ││││  0x00007f12dedb0140:   shl    %esi                         ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │                                             │    │        │ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@466 (line 261)
          │                                             │    │        │ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
          │                                             │    │        │ ││ ││││  0x00007f12dedb0142:   add    %r8d,%esi                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                             │    │        │ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@31 (line 134)
   0.02%  │                                             │    │        │ ││ ││││  0x00007f12dedb0145:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                             │    │        │ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@33 (line 133)
          │                                             │    │        │ ││ ││││  0x00007f12dedb0148:   mov    %esi,%r8d
          │                                             │    │        ╰ ││ ││││  0x00007f12dedb014b:   jmp    0x00007f12dedafbf0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                             │    │          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@13 (line 133)
          │                                             ↘    │          ││ ││││  0x00007f12dedb0150:   vucomisd %xmm2,%xmm2
          │                                                  │         ╭││ ││││  0x00007f12dedb0154:   jp     0x00007f12dedb0190
          │                                                  │         │││ ││││  0x00007f12dedb015a:   vucomisd %xmm1,%xmm2
          │                                                  │         │││ ││││  0x00007f12dedb015e:   xchg   %ax,%ax
          │                                                  │         │╰│ ││││  0x00007f12dedb0160:   jbe    0x00007f12dedaff98
          │                                                  │         │ │ ││││  0x00007f12dedb0166:   mov    $0x7fffffff,%eax
          │                                                  │         │ ╰ ││││  0x00007f12dedb016b:   jmp    0x00007f12dedaff98           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
          │                                                  │         │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@379 (line 258)
          │                                                  │         │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
          │                                                  ↘         │   ││││  0x00007f12dedb0170:   vucomiss %xmm2,%xmm2
          │                                                            │  ╭││││  0x00007f12dedb0174:   jp     0x00007f12dedb019a
          │                                                            │  │││││  0x00007f12dedb017a:   vucomiss %xmm0,%xmm2
          │                                                            │  │││││  0x00007f12dedb017e:   xchg   %ax,%ax
          │                                                            │  │╰│││  0x00007f12dedb0180:   jbe    0x00007f12dedb0059
          │                                                            │  │ │││  0x00007f12dedb0186:   mov    $0x7fffffff,%eax
          │                                                            │  │ ╰││  0x00007f12dedb018b:   jmp    0x00007f12dedb0059           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
          │                                                            │  │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@428 (line 260)
          │                                                            │  │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
          │                                                            ↘  │  ││  0x00007f12dedb0190:   mov    $0x0,%eax
          │                                                               │  ╰│  0x00007f12dedb0195:   jmp    0x00007f12dedaff98           ;*d2i {reexecute=0 rethrow=0 return_oop=0}
          │                                                               │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@379 (line 258)
          │                                                               │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
          │                                                               ↘   │  0x00007f12dedb019a:   mov    $0x0,%eax
          │                                                                   │  0x00007f12dedb019f:   nop
          │                                                                   ╰  0x00007f12dedb01a0:   jmp    0x00007f12dedb0059           ;*f2i {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switchWhenMethod@428 (line 260)
          │                                                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@28 (line 134)
   0.00%  ↘                                                                      0x00007f12dedb01a5:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array@40 (line 136)
                                                                                 0x00007f12dedb01a8:   mov    0x10(%rsp),%rbp
                                                                                 0x00007f12dedb01ad:   add    $0x18,%rsp
                                                                                 0x00007f12dedb01b1:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                                                                                 0x00007f12dedb01b8:   ja     0x00007f12dedb02c1
                                                                                 0x00007f12dedb01be:   ret                                 ;* unwind (locked if synchronized)
                                                                                                                                           ; - java.lang.invoke.MethodHandleImpl::profileBoolean@-3
                                                                                                                                           ; - java.lang.invoke.LambdaForm$MH/0x00007f125c085000::invoke@47
....................................................................................................
  95.32%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.32%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array, version 4, compile id 1217 
   0.32%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.31%     [kernel.kallsyms]  native_read_msr 
   0.23%     [kernel.kallsyms]  release_pages 
   0.22%     [kernel.kallsyms]  __mod_lruvec_state 
   0.20%     [kernel.kallsyms]  __free_one_page 
   0.18%     [kernel.kallsyms]  exc_page_fault 
   0.15%     [kernel.kallsyms]  zap_pte_range 
   0.14%     [kernel.kallsyms]  asm_exc_page_fault 
   0.13%     [kernel.kallsyms]  page_add_file_rmap 
   0.13%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.11%     [kernel.kallsyms]  __mod_node_page_state 
   0.09%     [kernel.kallsyms]  __rcu_read_unlock 
   0.09%     [kernel.kallsyms]  free_unref_page_list 
   0.09%     [kernel.kallsyms]  lock_page_memcg 
   0.08%     [kernel.kallsyms]  __mod_zone_page_state 
   0.06%     [kernel.kallsyms]  __rcu_read_lock 
   0.06%     [kernel.kallsyms]  free_unref_page_commit 
   0.06%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.06%     [kernel.kallsyms]  free_pcp_prepare 
   1.95%  <...other 393 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.32%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TypeSwitchBenchmark::switch_when_interface_array, version 4, compile id 1217 
   0.32%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.31%     [kernel.kallsyms]  native_read_msr 
   0.30%                        <unknown> 
   0.23%     [kernel.kallsyms]  release_pages 
   0.22%     [kernel.kallsyms]  __mod_lruvec_state 
   0.20%     [kernel.kallsyms]  __free_one_page 
   0.18%     [kernel.kallsyms]  exc_page_fault 
   0.15%     [kernel.kallsyms]  zap_pte_range 
   0.14%     [kernel.kallsyms]  asm_exc_page_fault 
   0.13%     [kernel.kallsyms]  page_add_file_rmap 
   0.13%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.11%     [kernel.kallsyms]  __mod_node_page_state 
   0.09%     [kernel.kallsyms]  __rcu_read_unlock 
   0.09%     [kernel.kallsyms]  free_unref_page_list 
   0.09%     [kernel.kallsyms]  lock_page_memcg 
   0.08%     [kernel.kallsyms]  __mod_zone_page_state 
   0.06%     [kernel.kallsyms]  __rcu_read_lock 
   0.06%     [kernel.kallsyms]  free_unref_page_commit 
   0.06%     [kernel.kallsyms]  cgroup_rstat_updated 
   1.70%  <...other 269 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.32%        jvmci, level 4
   3.89%     [kernel.kallsyms]
   0.30%                      
   0.25%             libjvm.so
   0.14%             libc.so.6
   0.04%           interpreter
   0.02%        hsdis-amd64.so
   0.01%  ld-linux-x86-64.so.2
   0.01%                [vdso]
   0.00%        perf-13272.map
   0.00%           c1, level 1
   0.00%           c1, level 3
   0.00%             nf_nat.ko
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:19:27

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
TypeSwitchBenchmark.if_instanceof_concrete_array       avgt    5   4.112 ± 1.288  ns/op
TypeSwitchBenchmark.if_instanceof_concrete_array:asm   avgt          NaN            ---
TypeSwitchBenchmark.if_instanceof_interface_array      avgt    5  38.649 ± 0.637  ns/op
TypeSwitchBenchmark.if_instanceof_interface_array:asm  avgt          NaN            ---
TypeSwitchBenchmark.switch_concrete_array              avgt    5   3.855 ± 1.207  ns/op
TypeSwitchBenchmark.switch_concrete_array:asm          avgt          NaN            ---
TypeSwitchBenchmark.switch_if_concrete_array           avgt    5   4.563 ± 1.975  ns/op
TypeSwitchBenchmark.switch_if_concrete_array:asm       avgt          NaN            ---
TypeSwitchBenchmark.switch_if_interface_array          avgt    5  46.808 ± 0.376  ns/op
TypeSwitchBenchmark.switch_if_interface_array:asm      avgt          NaN            ---
TypeSwitchBenchmark.switch_interface_array             avgt    5  38.862 ± 0.220  ns/op
TypeSwitchBenchmark.switch_interface_array:asm         avgt          NaN            ---
TypeSwitchBenchmark.switch_when_concrete_array         avgt    5   8.627 ± 0.225  ns/op
TypeSwitchBenchmark.switch_when_concrete_array:asm     avgt          NaN            ---
TypeSwitchBenchmark.switch_when_interface_array        avgt    5  48.151 ± 1.464  ns/op
TypeSwitchBenchmark.switch_when_interface_array:asm    avgt          NaN            ---
