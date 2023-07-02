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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.baseline
# Parameters: (size = 16384)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.528 ns/op
# Warmup Iteration   2: 6.191 ns/op
# Warmup Iteration   3: 7.356 ns/op
# Warmup Iteration   4: 7.351 ns/op
# Warmup Iteration   5: 6.189 ns/op
Iteration   1: 6.189 ns/op
Iteration   2: 6.189 ns/op
Iteration   3: 6.189 ns/op
Iteration   4: 6.189 ns/op
Iteration   5: 6.190 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.baseline":
  6.189 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (6.189, 6.189, 6.190), stdev = 0.001
  CI (99.9%): [6.188, 6.191] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.baseline:·asm":
PrintAssembly processed: 118373 total address lines.
Perf output processed (skipped 56.168 seconds):
 Column 1: cycles (50459 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 524 

              0x00007f689cf68826:   mov    0x38(%rsp),%r10
              0x00007f689cf6882b:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007f689cf688dc
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@30 (line 188)
              0x00007f689cf68833:   mov    $0x1,%ebp
              0x00007f689cf68838:   test   %r11d,%r11d
          ╭   0x00007f689cf6883b:   jne    0x00007f689cf6886c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 188)
          │   0x00007f689cf6883d:   data16 xchg %ax,%ax                 ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@36 (line 189)
   6.08%  │↗  0x00007f689cf68840:   mov    0x40(%rsp),%rsi
          ││  0x00007f689cf68845:   xchg   %ax,%ax
          ││  0x00007f689cf68847:   call   0x00007f689c9fc080           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*invokevirtual baseline {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@17 (line 186)
          ││                                                            ;   {optimized virtual_call}
          ││  0x00007f689cf6884c:   mov    0x38(%rsp),%r10
  18.26%  ││  0x00007f689cf68851:   movzbl 0x94(%r10),%r10d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 188)
  24.71%  ││  0x00007f689cf68859:   mov    0x348(%r15),%r11
          ││  0x00007f689cf68860:   add    $0x1,%rbp                    ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 188)
          ││  0x00007f689cf68864:   test   %eax,(%r11)                  ;   {poll}
          ││  0x00007f689cf68867:   test   %r10d,%r10d
          │╰  0x00007f689cf6886a:   je     0x00007f689cf68840           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@36 (line 189)
          ↘   0x00007f689cf6886c:   movabs $0x7f68b4ae9d10,%r10
              0x00007f689cf68876:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  49.04%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline, version 2, compile id 486 

             # {method} {0x00007f688d074948} &apos;baseline&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/ScalarEvolutionAndLoopOptimizationBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f689cf64380:   mov    0x8(%rsi),%r10d
             0x00007f689cf64384:   movabs $0x800000000,%r11
             0x00007f689cf6438e:   add    %r11,%r10
             0x00007f689cf64391:   cmp    %r10,%rax
             0x00007f689cf64394:   jne    0x00007f689c9fbd80           ;   {runtime_call ic_miss_stub}
             0x00007f689cf6439a:   xchg   %ax,%ax
             0x00007f689cf6439c:   nopl   0x0(%rax)
           [Verified Entry Point]
   6.09%     0x00007f689cf643a0:   sub    $0x18,%rsp
             0x00007f689cf643a7:   mov    %rbp,0x10(%rsp)              ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@-1 (line 61)
             0x00007f689cf643ac:   mov    0xc(%rsi),%r11d              ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@1 (line 61)
   6.06%     0x00007f689cf643b0:   mov    %r11d,%r10d
             0x00007f689cf643b3:   inc    %r10d
             0x00007f689cf643b6:   imul   %r11d,%r10d                  ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@10 (line 61)
  24.62%     0x00007f689cf643ba:   mov    %r10d,%eax
             0x00007f689cf643bd:   shr    $0x1f,%eax
             0x00007f689cf643c0:   add    %r10d,%eax
             0x00007f689cf643c3:   sar    %eax                         ;*idiv {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@12 (line 61)
   6.10%     0x00007f689cf643c5:   add    $0x10,%rsp
             0x00007f689cf643c9:   pop    %rbp
             0x00007f689cf643ca:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ╭  0x00007f689cf643d1:   ja     0x00007f689cf643d8
   5.94%  │  0x00007f689cf643d7:   ret    
          ↘  0x00007f689cf643d8:   movabs $0x7f689cf643ca,%r10         ;   {internal_word}
             0x00007f689cf643e2:   mov    %r10,0x358(%r15)
             0x00007f689cf643e9:   jmp    0x00007f689ca02700           ;   {runtime_call SafepointBlob}
             0x00007f689cf643ee:   hlt    
             0x00007f689cf643ef:   hlt    
             0x00007f689cf643f0:   hlt    
             0x00007f689cf643f1:   hlt    
             0x00007f689cf643f2:   hlt    
             0x00007f689cf643f3:   hlt    
             0x00007f689cf643f4:   hlt    
....................................................................................................
  48.81%  <total for region 2>

....[Hottest Regions]...............................................................................
  49.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 524 
  48.81%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline, version 2, compile id 486 
   0.62%   [kernel.kallsyms]  native_write_msr 
   0.08%                      <unknown> 
   0.06%   [kernel.kallsyms]  __entry_text_start 
   0.06%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.05%   [kernel.kallsyms]  __free_one_page 
   0.05%   [kernel.kallsyms]  zap_pte_range.isra.0 
   0.05%   [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.05%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.04%   [kernel.kallsyms]  page_remove_rmap 
   0.04%   [kernel.kallsyms]  __mod_zone_page_state 
   0.03%   [kernel.kallsyms]  free_pcppages_bulk 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%   [kernel.kallsyms]  mem_cgroup_update_lru_size 
   0.02%   [kernel.kallsyms]  rcu_read_unlock_strict 
   0.02%   [kernel.kallsyms]  free_swap_cache 
   0.02%   [kernel.kallsyms]  __mod_lruvec_page_state 
   0.02%   [kernel.kallsyms]  free_unref_page_list 
   0.01%   [kernel.kallsyms]  zap_pte_range.isra.0 
   0.88%  <...other 256 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  49.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 524 
  48.81%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline, version 2, compile id 486 
   0.62%   [kernel.kallsyms]  native_write_msr 
   0.14%                      <unknown> 
   0.10%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.09%   [kernel.kallsyms]  __free_one_page 
   0.08%   [kernel.kallsyms]  zap_pte_range.isra.0 
   0.06%   [kernel.kallsyms]  release_pages 
   0.06%   [kernel.kallsyms]  __entry_text_start 
   0.05%   [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.05%   [kernel.kallsyms]  free_pcppages_bulk 
   0.04%   [kernel.kallsyms]  page_remove_rmap 
   0.04%   [kernel.kallsyms]  __mod_zone_page_state 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%   [kernel.kallsyms]  mem_cgroup_update_lru_size 
   0.03%   [kernel.kallsyms]  uncharge_page 
   0.02%   [kernel.kallsyms]  rcu_read_unlock_strict 
   0.02%   [kernel.kallsyms]  __mod_lruvec_page_state 
   0.02%   [kernel.kallsyms]  free_unref_page_list 
   0.02%   [kernel.kallsyms]  free_swap_cache 
   0.66%  <...other 181 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.85%         c2, level 4
   1.72%   [kernel.kallsyms]
   0.15%           libjvm.so
   0.14%                    
   0.09%        libc-2.31.so
   0.02%      hsdis-amd64.so
   0.01%         interpreter
   0.01%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.00%         c1, level 1
   0.00%         c1, level 3
   0.00%      libz.so.1.2.11
   0.00%     perf-160020.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop
# Parameters: (size = 16384)

# Run progress: 50.00% complete, ETA 00:01:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6778.176 ns/op
# Warmup Iteration   2: 6724.831 ns/op
# Warmup Iteration   3: 6723.655 ns/op
# Warmup Iteration   4: 6723.716 ns/op
# Warmup Iteration   5: 6725.237 ns/op
Iteration   1: 6723.223 ns/op
Iteration   2: 6723.467 ns/op
Iteration   3: 6723.507 ns/op
Iteration   4: 6723.591 ns/op
Iteration   5: 6723.974 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop":
  6723.552 ±(99.9%) 1.049 ns/op [Average]
  (min, avg, max) = (6723.223, 6723.552, 6723.974), stdev = 0.272
  CI (99.9%): [6722.503, 6724.602] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop:·asm":
PrintAssembly processed: 114790 total address lines.
Perf output processed (skipped 55.969 seconds):
 Column 1: cycles (50435 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 4, compile id 466 

                      #           [sp+0x20]  (sp of caller)
                      0x00007f6620f638a0:   mov    0x8(%rsi),%r10d
                      0x00007f6620f638a4:   movabs $0x800000000,%r11
                      0x00007f6620f638ae:   add    %r11,%r10
                      0x00007f6620f638b1:   cmp    %r10,%rax
                      0x00007f6620f638b4:   jne    0x00007f66209fbd80           ;   {runtime_call ic_miss_stub}
                      0x00007f6620f638ba:   xchg   %ax,%ax
                      0x00007f6620f638bc:   nopl   0x0(%rax)
                    [Verified Entry Point]
                      0x00007f6620f638c0:   sub    $0x18,%rsp
   0.01%              0x00007f6620f638c7:   mov    %rbp,0x10(%rsp)              ;*synchronization entry
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@-1 (line 51)
                      0x00007f6620f638cc:   mov    0xc(%rsi),%r10d              ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@6 (line 52)
                      0x00007f6620f638d0:   xor    %r8d,%r8d
   0.01%              0x00007f6620f638d3:   test   %r10d,%r10d
          ╭           0x00007f6620f638d6:   jle    0x00007f6620f639a8           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@9 (line 52)
          │           0x00007f6620f638dc:   mov    %r10d,%r11d
          │           0x00007f6620f638df:   add    $0xfffffff1,%r11d
          │           0x00007f6620f638e3:   mov    $0x1,%ebp
   0.00%  │           0x00007f6620f638e8:   mov    $0x80000000,%r9d
          │           0x00007f6620f638ee:   cmp    %r11d,%r10d
          │           0x00007f6620f638f1:   cmovl  %r9d,%r11d
          │           0x00007f6620f638f5:   cmp    $0x1,%r11d
          │╭          0x00007f6620f638f9:   jle    0x00007f6620f63982
   0.01%  ││          0x00007f6620f638ff:   mov    $0x3e80,%ecx                 ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@19 (line 52)
          ││          0x00007f6620f63904:   xor    %r9d,%r9d
          ││╭         0x00007f6620f63907:   jmp    0x00007f6620f63968
          │││         0x00007f6620f6390c:   nopl   0x0(%rax)
   0.01%  │││↗        0x00007f6620f63910:   mov    %eax,%r9d                    ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@12 (line 53)
          ││││ ↗      0x00007f6620f63913:   add    %ebp,%r9d
   7.18%  ││││ │      0x00007f6620f63916:   add    %ebp,%r9d
   6.26%  ││││ │      0x00007f6620f63919:   add    %ebp,%r9d
   6.13%  ││││ │      0x00007f6620f6391c:   add    %ebp,%r9d
   5.42%  ││││ │      0x00007f6620f6391f:   add    %ebp,%r9d
   6.14%  ││││ │      0x00007f6620f63922:   add    %ebp,%r9d
   5.58%  ││││ │      0x00007f6620f63925:   add    %ebp,%r9d
   5.37%  ││││ │      0x00007f6620f63928:   add    %ebp,%r9d
   6.45%  ││││ │      0x00007f6620f6392b:   add    %ebp,%r9d
   3.88%  ││││ │      0x00007f6620f6392e:   add    %ebp,%r9d
   5.01%  ││││ │      0x00007f6620f63931:   add    %ebp,%r9d
   7.31%  ││││ │      0x00007f6620f63934:   mov    %ebp,%edx
   0.08%  ││││ │      0x00007f6620f63936:   add    $0x8,%edx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││││ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@16 (line 52)
          ││││ │      0x00007f6620f63939:   add    %edx,%r9d
   3.95%  ││││ │      0x00007f6620f6393c:   add    %ebp,%r9d
   7.81%  ││││ │      0x00007f6620f6393f:   mov    %ebp,%eax
   0.03%  ││││ │      0x00007f6620f63941:   add    $0xc,%eax
          ││││ │      0x00007f6620f63944:   add    %r9d,%eax
   5.55%  ││││ │      0x00007f6620f63947:   add    %edx,%eax
   4.46%  ││││ │      0x00007f6620f63949:   add    %edx,%eax
   5.26%  ││││ │      0x00007f6620f6394b:   add    $0x54,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@14 (line 53)
   5.75%  ││││ │      0x00007f6620f6394e:   add    $0x10,%ebp                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││││ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@16 (line 52)
   0.05%  ││││ │      0x00007f6620f63951:   cmp    %edi,%ebp
          │││╰ │      0x00007f6620f63953:   jl     0x00007f6620f63910           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││  │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@9 (line 52)
          │││  │      0x00007f6620f63955:   mov    0x348(%r15),%r9              ; ImmutableOopMap {rsi=Oop }
          │││  │                                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │││  │                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@19 (line 52)
          │││  │      0x00007f6620f6395c:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││  │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@19 (line 52)
          │││  │                                                                ;   {poll}
   0.01%  │││  │      0x00007f6620f6395f:   nop
          │││  │      0x00007f6620f63960:   cmp    %r11d,%ebp
          │││ ╭│      0x00007f6620f63963:   jge    0x00007f6620f63984
          │││ ││      0x00007f6620f63965:   mov    %eax,%r9d
          ││↘ ││      0x00007f6620f63968:   mov    %r11d,%edi
   0.01%  ││  ││      0x00007f6620f6396b:   sub    %ebp,%edi
          ││  ││      0x00007f6620f6396d:   cmp    %ebp,%r11d
          ││  ││      0x00007f6620f63970:   cmovl  %r8d,%edi
          ││  ││      0x00007f6620f63974:   cmp    $0x3e80,%edi
   0.02%  ││  ││      0x00007f6620f6397a:   cmova  %ecx,%edi
          ││  ││      0x00007f6620f6397d:   add    %ebp,%edi
          ││  ││      0x00007f6620f6397f:   nop
   0.01%  ││  │╰      0x00007f6620f63980:   jmp    0x00007f6620f63913
          │↘  │       0x00007f6620f63982:   xor    %eax,%eax
          │   ↘       0x00007f6620f63984:   cmp    %r10d,%ebp
          │     ╭     0x00007f6620f63987:   jge    0x00007f6620f63995
          │     │     0x00007f6620f63989:   data16 xchg %ax,%ax                 ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │     │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@12 (line 53)
   0.06%  │     │↗    0x00007f6620f6398c:   add    %ebp,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │     ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@14 (line 53)
   0.01%  │     ││    0x00007f6620f6398e:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │     ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@16 (line 52)
   0.01%  │     ││    0x00007f6620f63990:   cmp    %r10d,%ebp
          │     │╰    0x00007f6620f63993:   jl     0x00007f6620f6398c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │     │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@9 (line 52)
          │     ↘  ↗  0x00007f6620f63995:   add    $0x10,%rsp
   0.00%  │        │  0x00007f6620f63999:   pop    %rbp
          │        │  0x00007f6620f6399a:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          │       ╭│  0x00007f6620f639a1:   ja     0x00007f6620f639ac
          │       ││  0x00007f6620f639a7:   ret    
          ↘       ││  0x00007f6620f639a8:   xor    %eax,%eax
                  │╰  0x00007f6620f639aa:   jmp    0x00007f6620f63995
                  ↘   0x00007f6620f639ac:   movabs $0x7f6620f6399a,%r10         ;   {internal_word}
                      0x00007f6620f639b6:   mov    %r10,0x358(%r15)
                      0x00007f6620f639bd:   jmp    0x00007f6620a02700           ;   {runtime_call SafepointBlob}
                      0x00007f6620f639c2:   hlt    
                      0x00007f6620f639c3:   hlt    
....................................................................................................
  97.82%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.82%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 4, compile id 466 
   0.42%   [kernel.kallsyms]  native_write_msr 
   0.11%   [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.08%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.07%   [kernel.kallsyms]  __entry_text_start 
   0.07%   [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.06%   [kernel.kallsyms]  __intel_pmu_enable_all.constprop.0 
   0.04%   [kernel.kallsyms]  page_remove_rmap 
   0.04%                      <unknown> 
   0.03%   [kernel.kallsyms]  free_unref_page_list 
   0.03%   [kernel.kallsyms]  __mod_node_page_state 
   0.03%   [kernel.kallsyms]  zap_pte_range.isra.0 
   0.03%   [kernel.kallsyms]  __mod_lruvec_page_state 
   0.02%   [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.02%   [kernel.kallsyms]  __free_one_page 
   0.02%   [kernel.kallsyms]  __mod_zone_page_state 
   0.02%   [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.02%   [kernel.kallsyms]  mutex_unlock 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%   [kernel.kallsyms]  zap_pte_range.isra.0 
   1.03%  <...other 300 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.82%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 4, compile id 466 
   0.42%   [kernel.kallsyms]  native_write_msr 
   0.12%                      <unknown> 
   0.11%   [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.08%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.07%   [kernel.kallsyms]  __entry_text_start 
   0.07%   [kernel.kallsyms]  __free_one_page 
   0.07%   [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.06%   [kernel.kallsyms]  __intel_pmu_enable_all.constprop.0 
   0.06%   [kernel.kallsyms]  zap_pte_range.isra.0 
   0.06%   [kernel.kallsyms]  release_pages 
   0.05%   [kernel.kallsyms]  page_remove_rmap 
   0.04%   [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.04%   [kernel.kallsyms]  free_unref_page_list 
   0.03%   [kernel.kallsyms]  free_pcppages_bulk 
   0.03%   [kernel.kallsyms]  __mod_lruvec_page_state 
   0.03%   [kernel.kallsyms]  __mod_node_page_state 
   0.02%   [kernel.kallsyms]  uncharge_page 
   0.02%   [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.02%   [kernel.kallsyms]  __mod_zone_page_state 
   0.77%  <...other 199 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.84%         c2, level 4
   1.75%   [kernel.kallsyms]
   0.14%           libjvm.so
   0.12%                    
   0.08%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.02%         interpreter
   0.01%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
   0.00%        libm-2.31.so
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

Benchmark                                                   (size)  Mode  Cnt     Score   Error  Units
ScalarEvolutionAndLoopOptimizationBenchmark.baseline         16384  avgt    5     6.189 ± 0.001  ns/op
ScalarEvolutionAndLoopOptimizationBenchmark.baseline:·asm    16384  avgt            NaN            ---
ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop        16384  avgt    5  6723.552 ± 1.049  ns/op
ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop:·asm   16384  avgt            NaN            ---
