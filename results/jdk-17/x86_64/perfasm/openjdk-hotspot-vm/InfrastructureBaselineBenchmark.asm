# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_baseline

# Run progress: 0.00% complete, ETA 00:11:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.615 ns/op
# Warmup Iteration   2: 5.426 ns/op
# Warmup Iteration   3: 6.605 ns/op
# Warmup Iteration   4: 5.415 ns/op
# Warmup Iteration   5: 5.416 ns/op
Iteration   1: 5.414 ns/op
Iteration   2: 5.414 ns/op
Iteration   3: 5.415 ns/op
Iteration   4: 5.416 ns/op
Iteration   5: 5.415 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_baseline":
  5.415 ±(99.9%) 0.003 ns/op [Average]
  (min, avg, max) = (5.414, 5.415, 5.416), stdev = 0.001
  CI (99.9%): [5.412, 5.418] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_baseline:·asm":
PrintAssembly processed: 116463 total address lines.
Perf output processed (skipped 56.150 seconds):
 Column 1: cycles (50289 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub, version 6, compile id 509 

              0x00007f3f98f66a00:   movzbl 0x94(%r10),%r10d             ; implicit exception: dispatches to 0x00007f3f98f66ab0
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub@25 (line 192)
              0x00007f3f98f66a08:   mov    $0x1,%ebp
              0x00007f3f98f66a0d:   test   %r10d,%r10d
          ╭   0x00007f3f98f66a10:   jne    0x00007f3f98f66a4c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub@28 (line 192)
          │   0x00007f3f98f66a12:   data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f3f98f66a1c:   data16 data16 xchg %ax,%ax          ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub@31 (line 193)
   7.14%  │↗  0x00007f3f98f66a20:   mov    0x30(%rsp),%rsi
          ││  0x00007f3f98f66a25:   xchg   %ax,%ax
          ││  0x00007f3f98f66a27:   call   0x00007f3f989fc080           ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=Oop }
          ││                                                            ;*invokevirtual method_baseline {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub@15 (line 190)
          ││                                                            ;   {optimized virtual_call}
          ││  0x00007f3f98f66a2c:   mov    0x28(%rsp),%r10
  21.24%  ││  0x00007f3f98f66a31:   movzbl 0x94(%r10),%r10d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub@28 (line 192)
  27.86%  ││  0x00007f3f98f66a39:   mov    0x348(%r15),%r11
          ││  0x00007f3f98f66a40:   add    $0x1,%rbp                    ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub@28 (line 192)
          ││  0x00007f3f98f66a44:   test   %eax,(%r11)                  ;   {poll}
          ││  0x00007f3f98f66a47:   test   %r10d,%r10d
   0.00%  │╰  0x00007f3f98f66a4a:   je     0x00007f3f98f66a20           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub@31 (line 193)
          ↘   0x00007f3f98f66a4c:   movabs $0x7f3faefc8d10,%r10
              0x00007f3f98f66a56:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub@32 (line 193)
              0x00007f3f98f66a59:   mov    0x20(%rsp),%r10
              0x00007f3f98f66a5e:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub@35 (line 193)
              0x00007f3f98f66a62:   mov    %r12,0x20(%r10)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub@41 (line 194)
              0x00007f3f98f66a66:   vcvtsi2sd %rbp,%xmm0,%xmm0
....................................................................................................
  56.24%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_baseline, version 2, compile id 475 

             # {method} {0x00007f3f79873398} &apos;method_baseline&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/InfrastructureBaselineBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f3f98f63d00:   mov    0x8(%rsi),%r10d
             0x00007f3f98f63d04:   movabs $0x800000000,%r11
             0x00007f3f98f63d0e:   add    %r11,%r10
             0x00007f3f98f63d11:   cmp    %r10,%rax
             0x00007f3f98f63d14:   jne    0x00007f3f989fbd80           ;   {runtime_call ic_miss_stub}
             0x00007f3f98f63d1a:   xchg   %ax,%ax
             0x00007f3f98f63d1c:   nopl   0x0(%rax)
           [Verified Entry Point]
   7.20%     0x00007f3f98f63d20:   sub    $0x18,%rsp
             0x00007f3f98f63d27:   mov    %rbp,0x10(%rsp)              ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_baseline@-1 (line 82)
   0.00%     0x00007f3f98f63d2c:   add    $0x10,%rsp
   6.89%     0x00007f3f98f63d30:   pop    %rbp
  27.84%     0x00007f3f98f63d31:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ╭  0x00007f3f98f63d38:   ja     0x00007f3f98f63d3f
          │  0x00007f3f98f63d3e:   ret    
          ↘  0x00007f3f98f63d3f:   movabs $0x7f3f98f63d31,%r10         ;   {internal_word}
             0x00007f3f98f63d49:   mov    %r10,0x358(%r15)
             0x00007f3f98f63d50:   jmp    0x00007f3f98a02700           ;   {runtime_call SafepointBlob}
             0x00007f3f98f63d55:   hlt    
             0x00007f3f98f63d56:   hlt    
             0x00007f3f98f63d57:   hlt    
             0x00007f3f98f63d58:   hlt    
             0x00007f3f98f63d59:   hlt    
....................................................................................................
  41.94%  <total for region 2>

....[Hottest Regions]...............................................................................
  56.24%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub, version 6, compile id 509 
  41.94%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_baseline, version 2, compile id 475 
   0.40%   [kernel.kallsyms]  native_write_msr 
   0.08%   [kernel.kallsyms]  __intel_pmu_enable_all.constprop.0 
   0.07%   [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.06%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.04%   [kernel.kallsyms]  zap_pte_range.isra.0 
   0.04%   [kernel.kallsyms]  __entry_text_start 
   0.04%   [kernel.kallsyms]  page_remove_rmap 
   0.04%   [kernel.kallsyms]  free_pcppages_bulk 
   0.04%   [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.03%   [kernel.kallsyms]  __free_one_page 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%   [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.03%   [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.03%   [kernel.kallsyms]  __mod_zone_page_state 
   0.02%   [kernel.kallsyms]  cgroup_rstat_updated 
   0.02%   [kernel.kallsyms]  release_pages 
   0.02%   [kernel.kallsyms]  zap_pte_range.isra.0 
   0.02%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.78%  <...other 232 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  56.24%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub, version 6, compile id 509 
  41.94%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_baseline, version 2, compile id 475 
   0.40%   [kernel.kallsyms]  native_write_msr 
   0.08%   [kernel.kallsyms]  zap_pte_range.isra.0 
   0.08%   [kernel.kallsyms]  __intel_pmu_enable_all.constprop.0 
   0.08%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.08%   [kernel.kallsyms]  __free_one_page 
   0.07%                      <unknown> 
   0.07%   [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.06%   [kernel.kallsyms]  release_pages 
   0.05%   [kernel.kallsyms]  free_pcppages_bulk 
   0.04%   [kernel.kallsyms]  __entry_text_start 
   0.04%   [kernel.kallsyms]  page_remove_rmap 
   0.04%   [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.03%   [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%   [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.03%   [kernel.kallsyms]  __mod_zone_page_state 
   0.02%   [kernel.kallsyms]  cgroup_rstat_updated 
   0.02%   [kernel.kallsyms]  __mod_node_page_state 
   0.57%  <...other 159 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.18%         c2, level 4
   1.53%   [kernel.kallsyms]
   0.12%           libjvm.so
   0.07%                    
   0.05%        libc-2.31.so
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.00%              [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_blank

# Run progress: 14.29% complete, ETA 00:10:59
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.627 ns/op
# Warmup Iteration   2: 5.416 ns/op
# Warmup Iteration   3: 6.589 ns/op
# Warmup Iteration   4: 5.415 ns/op
# Warmup Iteration   5: 5.414 ns/op
Iteration   1: 5.414 ns/op
Iteration   2: 5.414 ns/op
Iteration   3: 5.414 ns/op
Iteration   4: 5.414 ns/op
Iteration   5: 5.414 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_blank":
  5.414 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (5.414, 5.414, 5.414), stdev = 0.001
  CI (99.9%): [5.414, 5.415] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_blank:·asm":
PrintAssembly processed: 111659 total address lines.
Perf output processed (skipped 55.870 seconds):
 Column 1: cycles (50593 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub, version 6, compile id 499 

              0x00007f5990f65680:   movzbl 0x94(%r10),%r10d             ; implicit exception: dispatches to 0x00007f5990f65730
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub@25 (line 192)
              0x00007f5990f65688:   mov    $0x1,%ebp
              0x00007f5990f6568d:   test   %r10d,%r10d
          ╭   0x00007f5990f65690:   jne    0x00007f5990f656cc           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub@28 (line 192)
          │   0x00007f5990f65692:   data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f5990f6569c:   data16 data16 xchg %ax,%ax          ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub@31 (line 193)
   8.47%  │↗  0x00007f5990f656a0:   mov    0x30(%rsp),%rsi
          ││  0x00007f5990f656a5:   xchg   %ax,%ax
          ││  0x00007f5990f656a7:   call   0x00007f59909fc080           ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=Oop }
          ││                                                            ;*invokevirtual method_blank {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub@15 (line 190)
          ││                                                            ;   {optimized virtual_call}
   1.42%  ││  0x00007f5990f656ac:   mov    0x28(%rsp),%r10
  16.68%  ││  0x00007f5990f656b1:   movzbl 0x94(%r10),%r10d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub@28 (line 192)
  34.95%  ││  0x00007f5990f656b9:   mov    0x348(%r15),%r11
          ││  0x00007f5990f656c0:   add    $0x1,%rbp                    ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub@28 (line 192)
          ││  0x00007f5990f656c4:   test   %eax,(%r11)                  ;   {poll}
          ││  0x00007f5990f656c7:   test   %r10d,%r10d
          │╰  0x00007f5990f656ca:   je     0x00007f5990f656a0           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub@31 (line 193)
          ↘   0x00007f5990f656cc:   movabs $0x7f59a6c69d10,%r10
              0x00007f5990f656d6:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  61.53%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_blank, version 2, compile id 463 

             # {method} {0x00007f5971473458} &apos;method_blank&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/InfrastructureBaselineBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f5990f62c80:   mov    0x8(%rsi),%r10d
             0x00007f5990f62c84:   movabs $0x800000000,%r11
             0x00007f5990f62c8e:   add    %r11,%r10
             0x00007f5990f62c91:   cmp    %r10,%rax
             0x00007f5990f62c94:   jne    0x00007f59909fbd80           ;   {runtime_call ic_miss_stub}
             0x00007f5990f62c9a:   xchg   %ax,%ax
             0x00007f5990f62c9c:   nopl   0x0(%rax)
           [Verified Entry Point]
   6.96%     0x00007f5990f62ca0:   sub    $0x18,%rsp
             0x00007f5990f62ca7:   mov    %rbp,0x10(%rsp)              ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_blank@-1 (line 87)
             0x00007f5990f62cac:   add    $0x10,%rsp
   6.93%     0x00007f5990f62cb0:   pop    %rbp
  22.17%     0x00007f5990f62cb1:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ╭  0x00007f5990f62cb8:   ja     0x00007f5990f62cbf
          │  0x00007f5990f62cbe:   ret    
          ↘  0x00007f5990f62cbf:   movabs $0x7f5990f62cb1,%r10         ;   {internal_word}
             0x00007f5990f62cc9:   mov    %r10,0x358(%r15)
             0x00007f5990f62cd0:   jmp    0x00007f5990a02700           ;   {runtime_call SafepointBlob}
             0x00007f5990f62cd5:   hlt    
             0x00007f5990f62cd6:   hlt    
             0x00007f5990f62cd7:   hlt    
             0x00007f5990f62cd8:   hlt    
             0x00007f5990f62cd9:   hlt    
....................................................................................................
  36.07%  <total for region 2>

....[Hottest Regions]...............................................................................
  61.53%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub, version 6, compile id 499 
  36.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_blank, version 2, compile id 463 
   0.99%   [kernel.kallsyms]  native_write_msr 
   0.08%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.07%   [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.05%   [kernel.kallsyms]  __entry_text_start 
   0.05%   [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.05%   [kernel.kallsyms]  __mod_zone_page_state 
   0.04%   [kernel.kallsyms]  page_remove_rmap 
   0.04%   [kernel.kallsyms]  zap_pte_range.isra.0 
   0.04%   [kernel.kallsyms]  free_pcppages_bulk 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.03%   [kernel.kallsyms]  __intel_pmu_enable_all.constprop.0 
   0.03%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.02%   [kernel.kallsyms]  release_pages 
   0.02%   [kernel.kallsyms]  __mod_node_page_state 
   0.02%   [kernel.kallsyms]  __free_one_page 
   0.02%   [kernel.kallsyms]  free_swap_cache 
   0.02%   [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.02%   [kernel.kallsyms]  release_pages 
   0.78%  <...other 226 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  61.53%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub, version 6, compile id 499 
  36.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_blank, version 2, compile id 463 
   0.99%   [kernel.kallsyms]  native_write_msr 
   0.10%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.08%   [kernel.kallsyms]  zap_pte_range.isra.0 
   0.08%   [kernel.kallsyms]  __free_one_page 
   0.08%   [kernel.kallsyms]  release_pages 
   0.07%   [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.06%                      <unknown> 
   0.05%   [kernel.kallsyms]  __entry_text_start 
   0.05%   [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.05%   [kernel.kallsyms]  page_remove_rmap 
   0.05%   [kernel.kallsyms]  __mod_zone_page_state 
   0.04%   [kernel.kallsyms]  free_pcppages_bulk 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.03%   [kernel.kallsyms]  __intel_pmu_enable_all.constprop.0 
   0.03%   [kernel.kallsyms]  free_unref_page_commit.isra.0 
   0.03%   [kernel.kallsyms]  uncharge_page 
   0.02%   [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.02%   [kernel.kallsyms]  free_swap_cache 
   0.54%  <...other 149 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  97.60%         c2, level 4
   2.11%   [kernel.kallsyms]
   0.12%           libjvm.so
   0.06%                    
   0.05%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%              [vdso]
   0.00%     nf_conntrack.ko
   0.00%     perf-159028.map
....................................................................................................
  99.99%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_dont_inline

# Run progress: 28.57% complete, ETA 00:09:08
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 11.256 ns/op
# Warmup Iteration   2: 11.432 ns/op
# Warmup Iteration   3: 10.117 ns/op
# Warmup Iteration   4: 10.113 ns/op
# Warmup Iteration   5: 10.112 ns/op
Iteration   1: 10.123 ns/op
Iteration   2: 10.102 ns/op
Iteration   3: 10.140 ns/op
Iteration   4: 10.155 ns/op
Iteration   5: 10.119 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_dont_inline":
  10.128 ±(99.9%) 0.077 ns/op [Average]
  (min, avg, max) = (10.102, 10.128, 10.155), stdev = 0.020
  CI (99.9%): [10.050, 10.205] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_dont_inline:·asm":
PrintAssembly processed: 114350 total address lines.
Perf output processed (skipped 56.040 seconds):
 Column 1: cycles (50325 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub, version 5, compile id 503 

              0x00007f43dcf65c00:   movzbl 0x94(%r10),%r10d             ; implicit exception: dispatches to 0x00007f43dcf65cb0
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub@25 (line 192)
              0x00007f43dcf65c08:   mov    $0x1,%ebp
              0x00007f43dcf65c0d:   test   %r10d,%r10d
          ╭   0x00007f43dcf65c10:   jne    0x00007f43dcf65c4c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub@28 (line 192)
          │   0x00007f43dcf65c12:   data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f43dcf65c1c:   data16 data16 xchg %ax,%ax          ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub@31 (line 193)
   4.50%  │↗  0x00007f43dcf65c20:   mov    0x30(%rsp),%rsi
          ││  0x00007f43dcf65c25:   xchg   %ax,%ax
          ││  0x00007f43dcf65c27:   call   0x00007f43dc9fc080           ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=Oop }
          ││                                                            ;*invokevirtual method_dont_inline {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub@15 (line 190)
          ││                                                            ;   {optimized virtual_call}
  30.80%  ││  0x00007f43dcf65c2c:   mov    0x28(%rsp),%r10
   3.41%  ││  0x00007f43dcf65c31:   movzbl 0x94(%r10),%r10d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub@28 (line 192)
  18.97%  ││  0x00007f43dcf65c39:   mov    0x348(%r15),%r11
   0.00%  ││  0x00007f43dcf65c40:   add    $0x1,%rbp                    ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub@28 (line 192)
          ││  0x00007f43dcf65c44:   test   %eax,(%r11)                  ;   {poll}
          ││  0x00007f43dcf65c47:   test   %r10d,%r10d
          │╰  0x00007f43dcf65c4a:   je     0x00007f43dcf65c20           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub@31 (line 193)
          ↘   0x00007f43dcf65c4c:   movabs $0x7f43f25fbd10,%r10
              0x00007f43dcf65c56:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub@32 (line 193)
              0x00007f43dcf65c59:   mov    0x20(%rsp),%r10
....................................................................................................
  57.68%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_dont_inline, version 2, compile id 472 

             # {method} {0x00007f43bcc735e0} &apos;method_dont_inline&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/InfrastructureBaselineBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f43dcf632a0:   mov    0x8(%rsi),%r10d
             0x00007f43dcf632a4:   movabs $0x800000000,%r11
             0x00007f43dcf632ae:   add    %r11,%r10
             0x00007f43dcf632b1:   cmp    %r10,%rax
             0x00007f43dcf632b4:   jne    0x00007f43dc9fbd80           ;   {runtime_call ic_miss_stub}
             0x00007f43dcf632ba:   xchg   %ax,%ax
             0x00007f43dcf632bc:   nopl   0x0(%rax)
           [Verified Entry Point]
   3.64%     0x00007f43dcf632c0:   mov    %eax,-0x14000(%rsp)
   7.83%     0x00007f43dcf632c7:   push   %rbp
             0x00007f43dcf632c8:   sub    $0x10,%rsp                   ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_dont_inline@-1 (line 99)
   0.75%     0x00007f43dcf632cc:   data16 xchg %ax,%ax
   2.89%     0x00007f43dcf632cf:   call   0x00007f43d55082c0           ; ImmutableOopMap {}
                                                                       ;*invokevirtual target_dont_inline {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_dont_inline@1 (line 99)
                                                                       ;   {optimized virtual_call}
   0.77%     0x00007f43dcf632d4:   add    $0x10,%rsp
   2.94%     0x00007f43dcf632d8:   pop    %rbp
   2.69%     0x00007f43dcf632d9:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ╭  0x00007f43dcf632e0:   ja     0x00007f43dcf632f4
   3.71%  │  0x00007f43dcf632e6:   ret                                 ;*invokevirtual target_dont_inline {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_dont_inline@1 (line 99)
          │  0x00007f43dcf632e7:   mov    %rax,%rsi
          │  0x00007f43dcf632ea:   add    $0x10,%rsp
          │  0x00007f43dcf632ee:   pop    %rbp
          │  0x00007f43dcf632ef:   jmp    0x00007f43dca9ee00           ;   {runtime_call _rethrow_Java}
          ↘  0x00007f43dcf632f4:   movabs $0x7f43dcf632d9,%r10         ;   {internal_word}
             0x00007f43dcf632fe:   mov    %r10,0x358(%r15)
             0x00007f43dcf63305:   jmp    0x00007f43dca02700           ;   {runtime_call SafepointBlob}
             0x00007f43dcf6330a:   hlt    
             0x00007f43dcf6330b:   hlt    
....................................................................................................
  25.22%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::target_dont_inline, version 2, compile id 473 

             # {method} {0x00007f43bcc739a0} &apos;target_dont_inline&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/InfrastructureBaselineBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f43dcf63580:   mov    0x8(%rsi),%r10d
             0x00007f43dcf63584:   movabs $0x800000000,%r11
             0x00007f43dcf6358e:   add    %r11,%r10
             0x00007f43dcf63591:   cmp    %r10,%rax
             0x00007f43dcf63594:   jne    0x00007f43dc9fbd80           ;   {runtime_call ic_miss_stub}
             0x00007f43dcf6359a:   xchg   %ax,%ax
             0x00007f43dcf6359c:   nopl   0x0(%rax)
           [Verified Entry Point]
   0.76%     0x00007f43dcf635a0:   sub    $0x18,%rsp
   2.94%     0x00007f43dcf635a7:   mov    %rbp,0x10(%rsp)              ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::target_dont_inline@-1 (line 135)
   5.50%     0x00007f43dcf635ac:   add    $0x10,%rsp
   0.78%     0x00007f43dcf635b0:   pop    %rbp
   5.21%     0x00007f43dcf635b1:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ╭  0x00007f43dcf635b8:   ja     0x00007f43dcf635bf
          │  0x00007f43dcf635be:   ret    
          ↘  0x00007f43dcf635bf:   movabs $0x7f43dcf635b1,%r10         ;   {internal_word}
             0x00007f43dcf635c9:   mov    %r10,0x358(%r15)
             0x00007f43dcf635d0:   jmp    0x00007f43dca02700           ;   {runtime_call SafepointBlob}
             0x00007f43dcf635d5:   hlt    
             0x00007f43dcf635d6:   hlt    
             0x00007f43dcf635d7:   hlt    
             0x00007f43dcf635d8:   hlt    
             0x00007f43dcf635d9:   hlt    
....................................................................................................
  15.20%  <total for region 3>

....[Hottest Regions]...............................................................................
  57.68%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub, version 5, compile id 503 
  25.22%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_dont_inline, version 2, compile id 472 
  15.20%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::target_dont_inline, version 2, compile id 473 
   0.58%   [kernel.kallsyms]  native_write_msr 
   0.07%                      <unknown> 
   0.05%   [kernel.kallsyms]  __entry_text_start 
   0.04%   [kernel.kallsyms]  __mod_zone_page_state 
   0.04%   [kernel.kallsyms]  zap_pte_range.isra.0 
   0.04%   [kernel.kallsyms]  page_remove_rmap 
   0.04%   [kernel.kallsyms]  __free_one_page 
   0.04%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.03%   [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.03%   [kernel.kallsyms]  free_swap_cache 
   0.02%   [kernel.kallsyms]  free_pcppages_bulk 
   0.02%   [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%   [kernel.kallsyms]  __mod_node_page_state 
   0.02%   [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.02%   [kernel.kallsyms]  unlock_page_memcg 
   0.02%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.80%  <...other 238 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  57.68%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub, version 5, compile id 503 
  25.22%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_dont_inline, version 2, compile id 472 
  15.20%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::target_dont_inline, version 2, compile id 473 
   0.58%   [kernel.kallsyms]  native_write_msr 
   0.13%                      <unknown> 
   0.08%   [kernel.kallsyms]  release_pages 
   0.07%   [kernel.kallsyms]  __free_one_page 
   0.06%   [kernel.kallsyms]  zap_pte_range.isra.0 
   0.06%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.05%   [kernel.kallsyms]  __entry_text_start 
   0.04%   [kernel.kallsyms]  __mod_zone_page_state 
   0.04%   [kernel.kallsyms]  page_remove_rmap 
   0.03%   [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.03%   [kernel.kallsyms]  free_swap_cache 
   0.03%   [kernel.kallsyms]  free_pcppages_bulk 
   0.02%   [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.02%   [kernel.kallsyms]  free_unref_page_commit.isra.0 
   0.02%   [kernel.kallsyms]  uncharge_page 
   0.02%   [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.59%  <...other 165 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.10%         c2, level 4
   1.55%   [kernel.kallsyms]
   0.13%                    
   0.11%           libjvm.so
   0.04%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%        libm-2.31.so
   0.00%              [vdso]
   0.00%     perf-159100.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_inline

# Run progress: 42.86% complete, ETA 00:07:17
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.620 ns/op
# Warmup Iteration   2: 5.417 ns/op
# Warmup Iteration   3: 6.592 ns/op
# Warmup Iteration   4: 5.415 ns/op
# Warmup Iteration   5: 5.415 ns/op
Iteration   1: 5.415 ns/op
Iteration   2: 5.415 ns/op
Iteration   3: 5.415 ns/op
Iteration   4: 5.415 ns/op
Iteration   5: 5.441 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_inline":
  5.420 ±(99.9%) 0.045 ns/op [Average]
  (min, avg, max) = (5.415, 5.420, 5.441), stdev = 0.012
  CI (99.9%): [5.375, 5.465] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_inline:·asm":
PrintAssembly processed: 113576 total address lines.
Perf output processed (skipped 55.975 seconds):
 Column 1: cycles (50285 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_inline_jmhTest::method_inline_avgt_jmhStub, version 6, compile id 503 

              0x00007f4d4cf66e00:   movzbl 0x94(%r10),%r10d             ; implicit exception: dispatches to 0x00007f4d4cf66eb0
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_inline_jmhTest::method_inline_avgt_jmhStub@25 (line 192)
              0x00007f4d4cf66e08:   mov    $0x1,%ebp
              0x00007f4d4cf66e0d:   test   %r10d,%r10d
          ╭   0x00007f4d4cf66e10:   jne    0x00007f4d4cf66e4c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_inline_jmhTest::method_inline_avgt_jmhStub@28 (line 192)
          │   0x00007f4d4cf66e12:   data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f4d4cf66e1c:   data16 data16 xchg %ax,%ax          ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_inline_jmhTest::method_inline_avgt_jmhStub@31 (line 193)
   8.53%  │↗  0x00007f4d4cf66e20:   mov    0x30(%rsp),%rsi
          ││  0x00007f4d4cf66e25:   xchg   %ax,%ax
          ││  0x00007f4d4cf66e27:   call   0x00007f4d4c9fc080           ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=Oop }
          ││                                                            ;*invokevirtual method_inline {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_inline_jmhTest::method_inline_avgt_jmhStub@15 (line 190)
          ││                                                            ;   {optimized virtual_call}
   1.42%  ││  0x00007f4d4cf66e2c:   mov    0x28(%rsp),%r10
  16.68%  ││  0x00007f4d4cf66e31:   movzbl 0x94(%r10),%r10d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_inline_jmhTest::method_inline_avgt_jmhStub@28 (line 192)
  35.35%  ││  0x00007f4d4cf66e39:   mov    0x348(%r15),%r11
          ││  0x00007f4d4cf66e40:   add    $0x1,%rbp                    ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_inline_jmhTest::method_inline_avgt_jmhStub@28 (line 192)
          ││  0x00007f4d4cf66e44:   test   %eax,(%r11)                  ;   {poll}
          ││  0x00007f4d4cf66e47:   test   %r10d,%r10d
          │╰  0x00007f4d4cf66e4a:   je     0x00007f4d4cf66e20           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_inline_jmhTest::method_inline_avgt_jmhStub@31 (line 193)
          ↘   0x00007f4d4cf66e4c:   movabs $0x7f4d626bed10,%r10
              0x00007f4d4cf66e56:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  61.98%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_inline, version 2, compile id 464 

             # {method} {0x00007f4d2d073518} &apos;method_inline&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/InfrastructureBaselineBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f4d4cf63a00:   mov    0x8(%rsi),%r10d
             0x00007f4d4cf63a04:   movabs $0x800000000,%r11
             0x00007f4d4cf63a0e:   add    %r11,%r10
             0x00007f4d4cf63a11:   cmp    %r10,%rax
             0x00007f4d4cf63a14:   jne    0x00007f4d4c9fbd80           ;   {runtime_call ic_miss_stub}
             0x00007f4d4cf63a1a:   xchg   %ax,%ax
             0x00007f4d4cf63a1c:   nopl   0x0(%rax)
           [Verified Entry Point]
   6.95%     0x00007f4d4cf63a20:   sub    $0x18,%rsp
             0x00007f4d4cf63a27:   mov    %rbp,0x10(%rsp)              ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_inline@-1 (line 93)
   0.00%     0x00007f4d4cf63a2c:   add    $0x10,%rsp
   6.97%     0x00007f4d4cf63a30:   pop    %rbp
  22.25%     0x00007f4d4cf63a31:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ╭  0x00007f4d4cf63a38:   ja     0x00007f4d4cf63a3f
          │  0x00007f4d4cf63a3e:   ret    
          ↘  0x00007f4d4cf63a3f:   movabs $0x7f4d4cf63a31,%r10         ;   {internal_word}
             0x00007f4d4cf63a49:   mov    %r10,0x358(%r15)
             0x00007f4d4cf63a50:   jmp    0x00007f4d4ca02700           ;   {runtime_call SafepointBlob}
             0x00007f4d4cf63a55:   hlt    
             0x00007f4d4cf63a56:   hlt    
             0x00007f4d4cf63a57:   hlt    
             0x00007f4d4cf63a58:   hlt    
             0x00007f4d4cf63a59:   hlt    
....................................................................................................
  36.18%  <total for region 2>

....[Hottest Regions]...............................................................................
  61.98%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_inline_jmhTest::method_inline_avgt_jmhStub, version 6, compile id 503 
  36.18%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_inline, version 2, compile id 464 
   0.51%   [kernel.kallsyms]  native_write_msr 
   0.06%                      <unknown> 
   0.04%   [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.04%                      <unknown> 
   0.04%   [kernel.kallsyms]  __mod_lruvec_state 
   0.04%   [kernel.kallsyms]  __entry_text_start 
   0.04%   [kernel.kallsyms]  __mod_node_page_state 
   0.04%   [kernel.kallsyms]  page_remove_rmap 
   0.04%   [kernel.kallsyms]  __free_one_page 
   0.03%   [kernel.kallsyms]  __mod_zone_page_state 
   0.03%   [kernel.kallsyms]  zap_pte_range.isra.0 
   0.03%   [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.03%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.02%   [kernel.kallsyms]  free_pcppages_bulk 
   0.02%   [kernel.kallsyms]  release_pages 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%   [kernel.kallsyms]  mutex_lock 
   0.02%   [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.77%  <...other 230 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  61.98%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_inline_jmhTest::method_inline_avgt_jmhStub, version 6, compile id 503 
  36.18%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_inline, version 2, compile id 464 
   0.51%   [kernel.kallsyms]  native_write_msr 
   0.16%                      <unknown> 
   0.09%   [kernel.kallsyms]  release_pages 
   0.07%   [kernel.kallsyms]  zap_pte_range.isra.0 
   0.06%   [kernel.kallsyms]  __free_one_page 
   0.04%   [kernel.kallsyms]  page_remove_rmap 
   0.04%   [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.04%   [kernel.kallsyms]  __mod_lruvec_state 
   0.04%   [kernel.kallsyms]  free_pcppages_bulk 
   0.04%   [kernel.kallsyms]  __entry_text_start 
   0.04%   [kernel.kallsyms]  __mod_node_page_state 
   0.03%   [kernel.kallsyms]  __mod_zone_page_state 
   0.03%   [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.03%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%   [kernel.kallsyms]  mutex_lock 
   0.02%   [kernel.kallsyms]  free_unref_page_commit.isra.0 
   0.02%   [kernel.kallsyms]  uncharge_page 
   0.54%  <...other 161 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.16%         c2, level 4
   1.47%   [kernel.kallsyms]
   0.16%                    
   0.10%           libjvm.so
   0.05%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%             i915.ko
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.obj_blackhole_consume

# Run progress: 57.14% complete, ETA 00:05:27
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.993 ns/op
# Warmup Iteration   2: 5.961 ns/op
# Warmup Iteration   3: 7.019 ns/op
# Warmup Iteration   4: 5.520 ns/op
# Warmup Iteration   5: 5.523 ns/op
Iteration   1: 5.524 ns/op
Iteration   2: 5.520 ns/op
Iteration   3: 5.519 ns/op
Iteration   4: 5.525 ns/op
Iteration   5: 5.525 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.obj_blackhole_consume":
  5.523 ±(99.9%) 0.011 ns/op [Average]
  (min, avg, max) = (5.519, 5.523, 5.525), stdev = 0.003
  CI (99.9%): [5.512, 5.534] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.obj_blackhole_consume:·asm":
PrintAssembly processed: 113597 total address lines.
Perf output processed (skipped 56.020 seconds):
 Column 1: cycles (50615 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub, version 6, compile id 505 

              0x00007fe984f68280:   movzbl 0x94(%r10),%r10d             ; implicit exception: dispatches to 0x00007fe984f68338
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub@27 (line 192)
              0x00007fe984f68288:   mov    $0x1,%ebp
              0x00007fe984f6828d:   test   %r10d,%r10d
          ╭   0x00007fe984f68290:   jne    0x00007fe984f682cf           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub@30 (line 192)
          │   0x00007fe984f68292:   data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fe984f6829c:   data16 data16 xchg %ax,%ax          ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub@33 (line 193)
   3.53%  │↗  0x00007fe984f682a0:   mov    0x40(%rsp),%rsi
   3.18%  ││  0x00007fe984f682a5:   mov    0x38(%rsp),%rdx
          ││  0x00007fe984f682aa:   nop
   0.01%  ││  0x00007fe984f682ab:   call   0x00007fe9849fc080           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*invokevirtual obj_blackhole_consume {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub@17 (line 190)
          ││                                                            ;   {optimized virtual_call}
  52.01%  ││  0x00007fe984f682b0:   mov    (%rsp),%r10
   0.02%  ││  0x00007fe984f682b4:   movzbl 0x94(%r10),%r10d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub@30 (line 192)
   3.86%  ││  0x00007fe984f682bc:   mov    0x348(%r15),%r11
   3.20%  ││  0x00007fe984f682c3:   add    $0x1,%rbp                    ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub@30 (line 192)
          ││  0x00007fe984f682c7:   test   %eax,(%r11)                  ;   {poll}
   0.01%  ││  0x00007fe984f682ca:   test   %r10d,%r10d
          │╰  0x00007fe984f682cd:   je     0x00007fe984f682a0           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub@33 (line 193)
          ↘   0x00007fe984f682cf:   movabs $0x7fe99a199d10,%r10
              0x00007fe984f682d9:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub@34 (line 193)
              0x00007fe984f682dc:   mov    0x30(%rsp),%r10
              0x00007fe984f682e1:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub@37 (line 193)
              0x00007fe984f682e5:   mov    %r12,0x20(%r10)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub@43 (line 194)
....................................................................................................
  65.83%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_blackhole_consume, version 2, compile id 468 

              # parm0:    rdx:rdx   = &apos;org/openjdk/jmh/infra/Blackhole&apos;
              #           [sp+0x20]  (sp of caller)
              0x00007fe984f64ba0:   mov    0x8(%rsi),%r10d
              0x00007fe984f64ba4:   movabs $0x800000000,%r11
              0x00007fe984f64bae:   add    %r11,%r10
              0x00007fe984f64bb1:   cmp    %r10,%rax
              0x00007fe984f64bb4:   jne    0x00007fe9849fbd80           ;   {runtime_call ic_miss_stub}
              0x00007fe984f64bba:   xchg   %ax,%ax
              0x00007fe984f64bbc:   nopl   0x0(%rax)
            [Verified Entry Point]
   6.91%      0x00007fe984f64bc0:   mov    %eax,-0x14000(%rsp)
   7.46%      0x00007fe984f64bc7:   push   %rbp
   0.13%      0x00007fe984f64bc8:   sub    $0x10,%rsp                   ;*synchronization entry
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_blackhole_consume@-1 (line 119)
   3.19%      0x00007fe984f64bcc:   mov    0xc(%rsi),%r11d              ;*getfield object {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_blackhole_consume@2 (line 119)
   3.48%      0x00007fe984f64bd0:   test   %rdx,%rdx
          ╭   0x00007fe984f64bd3:   je     0x00007fe984f64bef           ;*invokevirtual consume {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_blackhole_consume@5 (line 119)
   0.13%  │   0x00007fe984f64bd5:   mov    %r11,%r10
   3.15%  │   0x00007fe984f64bd8:   shl    $0x3,%r10                    ;*invokestatic consumeCompiler {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - org.openjdk.jmh.infra.Blackhole::consume@7 (line 315)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_blackhole_consume@5 (line 119)
          │   0x00007fe984f64bdc:   add    $0x10,%rsp
   3.61%  │   0x00007fe984f64be0:   pop    %rbp
   0.53%  │   0x00007fe984f64be1:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          │╭  0x00007fe984f64be8:   ja     0x00007fe984f64bfc
   3.14%  ││  0x00007fe984f64bee:   ret    
          ↘│  0x00007fe984f64bef:   mov    $0xfffffff6,%esi
           │  0x00007fe984f64bf4:   mov    %r11d,%ebp
           │  0x00007fe984f64bf7:   call   0x00007fe984a01600           ; ImmutableOopMap {rbp=NarrowOop }
           │                                                            ;*invokevirtual consume {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_blackhole_consume@5 (line 119)
           │                                                            ;   {runtime_call UncommonTrapBlob}
           ↘  0x00007fe984f64bfc:   movabs $0x7fe984f64be1,%r10         ;   {internal_word}
              0x00007fe984f64c06:   mov    %r10,0x358(%r15)
              0x00007fe984f64c0d:   jmp    0x00007fe984a02700           ;   {runtime_call SafepointBlob}
              0x00007fe984f64c12:   hlt    
....................................................................................................
  31.72%  <total for region 2>

....[Hottest Regions]...............................................................................
  65.83%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub, version 6, compile id 505 
  31.72%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_blackhole_consume, version 2, compile id 468 
   1.27%   [kernel.kallsyms]  native_write_msr 
   0.05%   [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.05%           libjvm.so  ElfSymbolTable::lookup 
   0.05%   [kernel.kallsyms]  page_remove_rmap 
   0.04%   [kernel.kallsyms]  __free_one_page 
   0.04%   [kernel.kallsyms]  zap_pte_range.isra.0 
   0.04%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.03%   [kernel.kallsyms]  __entry_text_start 
   0.03%   [kernel.kallsyms]  release_pages 
   0.03%   [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.03%   [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.02%   [kernel.kallsyms]  free_pcppages_bulk 
   0.02%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.02%   [kernel.kallsyms]  __intel_pmu_enable_all.constprop.0 
   0.02%   [kernel.kallsyms]  __mod_zone_page_state 
   0.02%   [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.02%   [kernel.kallsyms]  free_unref_page_commit.isra.0 
   0.02%   [kernel.kallsyms]  __mod_node_page_state 
   0.68%  <...other 184 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  65.83%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub, version 6, compile id 505 
  31.72%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_blackhole_consume, version 2, compile id 468 
   1.27%   [kernel.kallsyms]  native_write_msr 
   0.09%   [kernel.kallsyms]  release_pages 
   0.08%   [kernel.kallsyms]  __free_one_page 
   0.08%   [kernel.kallsyms]  zap_pte_range.isra.0 
   0.06%                      <unknown> 
   0.06%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.05%   [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.05%           libjvm.so  ElfSymbolTable::lookup 
   0.05%   [kernel.kallsyms]  page_remove_rmap 
   0.04%   [kernel.kallsyms]  free_pcppages_bulk 
   0.03%   [kernel.kallsyms]  __entry_text_start 
   0.03%   [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.03%   [kernel.kallsyms]  uncharge_page 
   0.03%   [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.03%   [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.03%   [kernel.kallsyms]  free_unref_page_commit.isra.0 
   0.02%   [kernel.kallsyms]  __mod_zone_page_state 
   0.02%   [kernel.kallsyms]  __intel_pmu_enable_all.constprop.0 
   0.41%  <...other 123 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.55%         c2, level 4
   2.20%   [kernel.kallsyms]
   0.11%           libjvm.so
   0.06%        libc-2.31.so
   0.06%                    
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.00%          ld-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.obj_return

# Run progress: 71.43% complete, ETA 00:03:38
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.009 ns/op
# Warmup Iteration   2: 7.025 ns/op
# Warmup Iteration   3: 5.812 ns/op
# Warmup Iteration   4: 5.803 ns/op
# Warmup Iteration   5: 5.803 ns/op
Iteration   1: 5.809 ns/op
Iteration   2: 5.805 ns/op
Iteration   3: 5.804 ns/op
Iteration   4: 5.804 ns/op
Iteration   5: 5.805 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.obj_return":
  5.805 ±(99.9%) 0.007 ns/op [Average]
  (min, avg, max) = (5.804, 5.805, 5.809), stdev = 0.002
  CI (99.9%): [5.798, 5.813] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.obj_return:·asm":
PrintAssembly processed: 114736 total address lines.
Perf output processed (skipped 56.043 seconds):
 Column 1: cycles (50282 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub, version 5, compile id 503 

              0x00007f9558f67626:   mov    0x38(%rsp),%r10
              0x00007f9558f6762b:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007f9558f676e0
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub@30 (line 192)
              0x00007f9558f67633:   mov    $0x1,%ebp
              0x00007f9558f67638:   test   %r11d,%r11d
          ╭   0x00007f9558f6763b:   jne    0x00007f9558f6766c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub@33 (line 192)
          │   0x00007f9558f6763d:   data16 xchg %ax,%ax                 ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub@36 (line 193)
   1.35%  │↗  0x00007f9558f67640:   mov    0x40(%rsp),%rsi
   5.28%  ││  0x00007f9558f67645:   xchg   %ax,%ax
          ││  0x00007f9558f67647:   call   0x00007f95589fc080           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*invokevirtual obj_return {reexecute=0 rethrow=0 return_oop=1}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub@17 (line 190)
          ││                                                            ;   {optimized virtual_call}
  65.37%  ││  0x00007f9558f6764c:   mov    0x38(%rsp),%r10
          ││  0x00007f9558f67651:   movzbl 0x94(%r10),%r11d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub@33 (line 192)
   0.02%  ││  0x00007f9558f67659:   mov    0x348(%r15),%r10
   6.49%  ││  0x00007f9558f67660:   add    $0x1,%rbp                    ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub@33 (line 192)
          ││  0x00007f9558f67664:   test   %eax,(%r10)                  ;   {poll}
          ││  0x00007f9558f67667:   test   %r11d,%r11d
          │╰  0x00007f9558f6766a:   je     0x00007f9558f67640           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub@36 (line 193)
          ↘   0x00007f9558f6766c:   movabs $0x7f956fd10d10,%r10
              0x00007f9558f67676:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub@37 (line 193)
              0x00007f9558f67679:   mov    0x30(%rsp),%r10
....................................................................................................
  78.51%  <total for region 1>

....[Hottest Region 2]..............................................................................
c1, level 1, com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_return, version 1, compile id 468 

           [Entry Point]
             # {method} {0x00007f9539873728} &apos;obj_return&apos; &apos;()Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/InfrastructureBaselineBenchmark&apos;
             #           [sp+0x40]  (sp of caller)
             0x00007f9558f645a0:   mov    0x8(%rsi),%r10d
             0x00007f9558f645a4:   movabs $0x800000000,%r11
             0x00007f9558f645ae:   add    %r11,%r10
             0x00007f9558f645b1:   cmp    %rax,%r10
             0x00007f9558f645b4:   jne    0x00007f95589fbd80           ;   {runtime_call ic_miss_stub}
             0x00007f9558f645ba:   nopw   0x0(%rax,%rax,1)
           [Verified Entry Point]
   1.34%     0x00007f9558f645c0:   mov    %eax,-0x14000(%rsp)
   5.09%     0x00007f9558f645c7:   push   %rbp
             0x00007f9558f645c8:   sub    $0x30,%rsp                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_return@0 (line 113)
   6.53%     0x00007f9558f645cc:   mov    0xc(%rsi),%eax
   0.00%     0x00007f9558f645cf:   shl    $0x3,%rax                    ;*getfield object {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_return@1 (line 113)
             0x00007f9558f645d3:   add    $0x30,%rsp
   1.37%     0x00007f9558f645d7:   pop    %rbp
   5.36%     0x00007f9558f645d8:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ╭  0x00007f9558f645df:   ja     0x00007f9558f645e6
   0.00%  │  0x00007f9558f645e5:   ret    
          ↘  0x00007f9558f645e6:   movabs $0x7f9558f645d8,%r10         ;   {internal_word}
             0x00007f9558f645f0:   mov    %r10,0x358(%r15)
             0x00007f9558f645f7:   jmp    0x00007f9558a02700           ;   {runtime_call SafepointBlob}
             0x00007f9558f645fc:   nop
             0x00007f9558f645fd:   nop
             0x00007f9558f645fe:   mov    0x3d0(%r15),%rax
             0x00007f9558f64605:   movq   $0x0,0x3d0(%r15)
             0x00007f9558f64610:   movq   $0x0,0x3d8(%r15)
             0x00007f9558f6461b:   add    $0x30,%rsp
             0x00007f9558f6461f:   pop    %rbp
....................................................................................................
  19.68%  <total for region 2>

....[Hottest Regions]...............................................................................
  78.51%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub, version 5, compile id 503 
  19.68%         c1, level 1  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_return, version 1, compile id 468 
   0.39%   [kernel.kallsyms]  native_write_msr 
   0.06%   [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.06%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.05%   [kernel.kallsyms]  zap_pte_range.isra.0 
   0.05%   [kernel.kallsyms]  __entry_text_start 
   0.04%   [kernel.kallsyms]  release_pages 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.04%   [kernel.kallsyms]  page_remove_rmap 
   0.04%   [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.04%                      <unknown> 
   0.03%   [kernel.kallsyms]  __mod_node_page_state 
   0.03%   [kernel.kallsyms]  __free_one_page 
   0.02%   [kernel.kallsyms]  __mod_zone_page_state 
   0.02%   [kernel.kallsyms]  free_swap_cache 
   0.02%   [kernel.kallsyms]  release_pages 
   0.02%   [kernel.kallsyms]  free_pcppages_bulk 
   0.02%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.02%   [kernel.kallsyms]  free_unref_page_commit.isra.0 
   0.81%  <...other 239 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  78.51%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub, version 5, compile id 503 
  19.68%         c1, level 1  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_return, version 1, compile id 468 
   0.39%   [kernel.kallsyms]  native_write_msr 
   0.11%                      <unknown> 
   0.08%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.08%   [kernel.kallsyms]  zap_pte_range.isra.0 
   0.07%   [kernel.kallsyms]  release_pages 
   0.07%   [kernel.kallsyms]  __free_one_page 
   0.06%   [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.05%   [kernel.kallsyms]  __entry_text_start 
   0.04%   [kernel.kallsyms]  page_remove_rmap 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.04%   [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.03%   [kernel.kallsyms]  free_pcppages_bulk 
   0.03%   [kernel.kallsyms]  __mod_node_page_state 
   0.02%   [kernel.kallsyms]  __mod_zone_page_state 
   0.02%   [kernel.kallsyms]  free_swap_cache 
   0.02%   [kernel.kallsyms]  uncharge_page 
   0.02%   [kernel.kallsyms]  free_unref_page_commit.isra.0 
   0.02%   [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.59%  <...other 170 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  78.51%         c2, level 4
  19.68%         c1, level 1
   1.45%   [kernel.kallsyms]
   0.13%           libjvm.so
   0.11%                    
   0.05%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.01%              [vdso]
   0.00%      hsdis-amd64.so
   0.00%         c1, level 3
   0.00%           nf_nat.ko
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.obj_sink

# Run progress: 85.71% complete, ETA 00:01:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 11.390 ns/op
# Warmup Iteration   2: 11.558 ns/op
# Warmup Iteration   3: 10.260 ns/op
# Warmup Iteration   4: 10.201 ns/op
# Warmup Iteration   5: 10.244 ns/op
Iteration   1: 10.251 ns/op
Iteration   2: 10.258 ns/op
Iteration   3: 10.239 ns/op
Iteration   4: 10.208 ns/op
Iteration   5: 10.282 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.obj_sink":
  10.248 ±(99.9%) 0.105 ns/op [Average]
  (min, avg, max) = (10.208, 10.248, 10.282), stdev = 0.027
  CI (99.9%): [10.143, 10.352] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.obj_sink:·asm":
PrintAssembly processed: 116938 total address lines.
Perf output processed (skipped 56.171 seconds):
 Column 1: cycles (50843 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub, version 5, compile id 503 

              0x00007f8ed0f66d00:   movzbl 0x94(%r10),%r10d             ; implicit exception: dispatches to 0x00007f8ed0f66db0
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub@25 (line 192)
              0x00007f8ed0f66d08:   mov    $0x1,%ebp
              0x00007f8ed0f66d0d:   test   %r10d,%r10d
          ╭   0x00007f8ed0f66d10:   jne    0x00007f8ed0f66d4c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub@28 (line 192)
          │   0x00007f8ed0f66d12:   data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f8ed0f66d1c:   data16 data16 xchg %ax,%ax          ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub@31 (line 193)
   3.68%  │↗  0x00007f8ed0f66d20:   mov    0x30(%rsp),%rsi
          ││  0x00007f8ed0f66d25:   xchg   %ax,%ax
          ││  0x00007f8ed0f66d27:   call   0x00007f8ed09fc080           ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=Oop }
          ││                                                            ;*invokevirtual obj_sink {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub@15 (line 190)
          ││                                                            ;   {optimized virtual_call}
  13.30%  ││  0x00007f8ed0f66d2c:   mov    0x28(%rsp),%r10
  18.55%  ││  0x00007f8ed0f66d31:   movzbl 0x94(%r10),%r10d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub@28 (line 192)
  13.96%  ││  0x00007f8ed0f66d39:   mov    0x348(%r15),%r11
          ││  0x00007f8ed0f66d40:   add    $0x1,%rbp                    ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub@28 (line 192)
          ││  0x00007f8ed0f66d44:   test   %eax,(%r11)                  ;   {poll}
          ││  0x00007f8ed0f66d47:   test   %r10d,%r10d
          │╰  0x00007f8ed0f66d4a:   je     0x00007f8ed0f66d20           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub@31 (line 193)
          ↘   0x00007f8ed0f66d4c:   movabs $0x7f8ee8adfd10,%r10
              0x00007f8ed0f66d56:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  49.48%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::sink, version 2, compile id 471 

             # parm0:    rdx:rdx   = &apos;java/lang/Object&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f8ed0f64980:   mov    0x8(%rsi),%r10d
             0x00007f8ed0f64984:   movabs $0x800000000,%r11
             0x00007f8ed0f6498e:   add    %r11,%r10
             0x00007f8ed0f64991:   cmp    %r10,%rax
             0x00007f8ed0f64994:   jne    0x00007f8ed09fbd80           ;   {runtime_call ic_miss_stub}
             0x00007f8ed0f6499a:   xchg   %ax,%ax
             0x00007f8ed0f6499c:   nopl   0x0(%rax)
           [Verified Entry Point]
   3.65%     0x00007f8ed0f649a0:   sub    $0x18,%rsp
   0.02%     0x00007f8ed0f649a7:   mov    %rbp,0x10(%rsp)              ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::sink@-1 (line 145)
   5.38%     0x00007f8ed0f649ac:   add    $0x10,%rsp
   0.99%     0x00007f8ed0f649b0:   pop    %rbp
  16.18%     0x00007f8ed0f649b1:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ╭  0x00007f8ed0f649b8:   ja     0x00007f8ed0f649bf
          │  0x00007f8ed0f649be:   ret    
          ↘  0x00007f8ed0f649bf:   movabs $0x7f8ed0f649b1,%r10         ;   {internal_word}
             0x00007f8ed0f649c9:   mov    %r10,0x358(%r15)
             0x00007f8ed0f649d0:   jmp    0x00007f8ed0a02700           ;   {runtime_call SafepointBlob}
             0x00007f8ed0f649d5:   hlt    
             0x00007f8ed0f649d6:   hlt    
             0x00007f8ed0f649d7:   hlt    
             0x00007f8ed0f649d8:   hlt    
             0x00007f8ed0f649d9:   hlt    
....................................................................................................
  26.21%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_sink, version 2, compile id 470 

             # {method} {0x00007f8ec1073840} &apos;obj_sink&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/InfrastructureBaselineBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f8ed0f646a0:   mov    0x8(%rsi),%r10d
             0x00007f8ed0f646a4:   movabs $0x800000000,%r11
             0x00007f8ed0f646ae:   add    %r11,%r10
             0x00007f8ed0f646b1:   cmp    %r10,%rax
             0x00007f8ed0f646b4:   jne    0x00007f8ed09fbd80           ;   {runtime_call ic_miss_stub}
             0x00007f8ed0f646ba:   xchg   %ax,%ax
             0x00007f8ed0f646bc:   nopl   0x0(%rax)
           [Verified Entry Point]
   3.73%     0x00007f8ed0f646c0:   mov    %eax,-0x14000(%rsp)
   5.59%     0x00007f8ed0f646c7:   push   %rbp
             0x00007f8ed0f646c8:   sub    $0x10,%rsp                   ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_sink@-1 (line 125)
   0.02%     0x00007f8ed0f646cc:   mov    0xc(%rsi),%r11d
   3.74%     0x00007f8ed0f646d0:   mov    %r11,%rdx
             0x00007f8ed0f646d3:   shl    $0x3,%rdx
   0.01%     0x00007f8ed0f646d7:   call   0x00007f8ec950b140           ; ImmutableOopMap {}
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_sink@5 (line 125)
                                                                       ;   {optimized virtual_call}
             0x00007f8ed0f646dc:   add    $0x10,%rsp
   3.58%     0x00007f8ed0f646e0:   pop    %rbp
   3.93%     0x00007f8ed0f646e1:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ╭  0x00007f8ed0f646e8:   ja     0x00007f8ed0f646fc
   0.84%  │  0x00007f8ed0f646ee:   ret                                 ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_sink@5 (line 125)
          │  0x00007f8ed0f646ef:   mov    %rax,%rsi
          │  0x00007f8ed0f646f2:   add    $0x10,%rsp
          │  0x00007f8ed0f646f6:   pop    %rbp
          │  0x00007f8ed0f646f7:   jmp    0x00007f8ed0aa9400           ;   {runtime_call _rethrow_Java}
          ↘  0x00007f8ed0f646fc:   movabs $0x7f8ed0f646e1,%r10         ;   {internal_word}
             0x00007f8ed0f64706:   mov    %r10,0x358(%r15)
             0x00007f8ed0f6470d:   jmp    0x00007f8ed0a02700           ;   {runtime_call SafepointBlob}
             0x00007f8ed0f64712:   hlt    
             0x00007f8ed0f64713:   hlt    
....................................................................................................
  21.43%  <total for region 3>

....[Hottest Regions]...............................................................................
  49.48%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub, version 5, compile id 503 
  26.21%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::sink, version 2, compile id 471 
  21.43%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_sink, version 2, compile id 470 
   1.64%   [kernel.kallsyms]  native_write_msr 
   0.07%   [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.05%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.04%   [kernel.kallsyms]  zap_pte_range.isra.0 
   0.04%   [kernel.kallsyms]  __entry_text_start 
   0.04%   [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.04%   [kernel.kallsyms]  page_remove_rmap 
   0.03%   [kernel.kallsyms]  __free_one_page 
   0.03%   [kernel.kallsyms]  __mod_zone_page_state 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%   [kernel.kallsyms]  release_pages 
   0.03%   [kernel.kallsyms]  __mod_node_page_state 
   0.02%   [kernel.kallsyms]  free_pcppages_bulk 
   0.02%                      <unknown> 
   0.02%   [kernel.kallsyms]  __intel_pmu_enable_all.constprop.0 
   0.02%   [kernel.kallsyms]  free_pcp_prepare 
   0.02%   [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.73%  <...other 200 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  49.48%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub, version 5, compile id 503 
  26.21%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::sink, version 2, compile id 471 
  21.43%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_sink, version 2, compile id 470 
   1.64%   [kernel.kallsyms]  native_write_msr 
   0.07%   [kernel.kallsyms]  zap_pte_range.isra.0 
   0.07%   [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.07%   [kernel.kallsyms]  release_pages 
   0.06%                      <unknown> 
   0.06%   [kernel.kallsyms]  __free_one_page 
   0.05%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.04%   [kernel.kallsyms]  __entry_text_start 
   0.04%   [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.04%   [kernel.kallsyms]  page_remove_rmap 
   0.04%   [kernel.kallsyms]  free_pcppages_bulk 
   0.04%   [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.04%   [kernel.kallsyms]  uncharge_page 
   0.03%   [kernel.kallsyms]  free_pcp_prepare 
   0.03%   [kernel.kallsyms]  __mod_zone_page_state 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%   [kernel.kallsyms]  __mod_node_page_state 
   0.51%  <...other 134 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.12%         c2, level 4
   2.64%   [kernel.kallsyms]
   0.09%           libjvm.so
   0.06%                    
   0.06%        libc-2.31.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.01%  libpthread-2.31.so
   0.00%      hsdis-amd64.so
   0.00%        ip_tables.ko
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:12:44

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

Benchmark                                                   Mode  Cnt   Score    Error  Units
InfrastructureBaselineBenchmark.method_baseline             avgt    5   5.415 ±  0.003  ns/op
InfrastructureBaselineBenchmark.method_baseline:·asm        avgt          NaN             ---
InfrastructureBaselineBenchmark.method_blank                avgt    5   5.414 ±  0.001  ns/op
InfrastructureBaselineBenchmark.method_blank:·asm           avgt          NaN             ---
InfrastructureBaselineBenchmark.method_dont_inline          avgt    5  10.128 ±  0.077  ns/op
InfrastructureBaselineBenchmark.method_dont_inline:·asm     avgt          NaN             ---
InfrastructureBaselineBenchmark.method_inline               avgt    5   5.420 ±  0.045  ns/op
InfrastructureBaselineBenchmark.method_inline:·asm          avgt          NaN             ---
InfrastructureBaselineBenchmark.obj_blackhole_consume       avgt    5   5.523 ±  0.011  ns/op
InfrastructureBaselineBenchmark.obj_blackhole_consume:·asm  avgt          NaN             ---
InfrastructureBaselineBenchmark.obj_return                  avgt    5   5.805 ±  0.007  ns/op
InfrastructureBaselineBenchmark.obj_return:·asm             avgt          NaN             ---
InfrastructureBaselineBenchmark.obj_sink                    avgt    5  10.248 ±  0.105  ns/op
InfrastructureBaselineBenchmark.obj_sink:·asm               avgt          NaN             ---
