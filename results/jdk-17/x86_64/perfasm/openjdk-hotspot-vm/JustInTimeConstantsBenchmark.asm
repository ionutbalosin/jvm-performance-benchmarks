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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.final_property

# Run progress: 0.00% complete, ETA 00:06:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.031 ns/op
# Warmup Iteration   2: 5.802 ns/op
# Warmup Iteration   3: 6.981 ns/op
# Warmup Iteration   4: 5.801 ns/op
# Warmup Iteration   5: 5.801 ns/op
Iteration   1: 5.802 ns/op
Iteration   2: 5.802 ns/op
Iteration   3: 5.801 ns/op
Iteration   4: 5.801 ns/op
Iteration   5: 5.802 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.final_property":
  5.802 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (5.801, 5.802, 5.802), stdev = 0.001
  CI (99.9%): [5.800, 5.803] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.final_property:·asm":
PrintAssembly processed: 114279 total address lines.
Perf output processed (skipped 56.081 seconds):
 Column 1: cycles (50252 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub, version 6, compile id 517 

              0x00007fbff4f668a6:   mov    0x38(%rsp),%r10
              0x00007fbff4f668ab:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007fbff4f66960
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub@30 (line 192)
              0x00007fbff4f668b3:   mov    $0x1,%ebp
              0x00007fbff4f668b8:   test   %r11d,%r11d
          ╭   0x00007fbff4f668bb:   jne    0x00007fbff4f668ec           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub@33 (line 192)
          │   0x00007fbff4f668bd:   data16 xchg %ax,%ax                 ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub@36 (line 193)
   0.00%  │↗  0x00007fbff4f668c0:   mov    0x40(%rsp),%rsi
   6.48%  ││  0x00007fbff4f668c5:   xchg   %ax,%ax
          ││  0x00007fbff4f668c7:   call   0x00007fbff49fc080           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*invokevirtual final_property {reexecute=0 rethrow=0 return_oop=1}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub@17 (line 190)
          ││                                                            ;   {optimized virtual_call}
  65.29%  ││  0x00007fbff4f668cc:   mov    0x38(%rsp),%r10
          ││  0x00007fbff4f668d1:   movzbl 0x94(%r10),%r11d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub@33 (line 192)
          ││  0x00007fbff4f668d9:   mov    0x348(%r15),%r10
   6.75%  ││  0x00007fbff4f668e0:   add    $0x1,%rbp                    ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub@33 (line 192)
          ││  0x00007fbff4f668e4:   test   %eax,(%r10)                  ;   {poll}
          ││  0x00007fbff4f668e7:   test   %r11d,%r11d
          │╰  0x00007fbff4f668ea:   je     0x00007fbff4f668c0           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub@36 (line 193)
          ↘   0x00007fbff4f668ec:   movabs $0x7fc00b2c7d10,%r10
              0x00007fbff4f668f6:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub@37 (line 193)
              0x00007fbff4f668f9:   mov    0x30(%rsp),%r10
....................................................................................................
  78.52%  <total for region 1>

....[Hottest Region 2]..............................................................................
c1, level 1, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::final_property, version 1, compile id 480 

             # {method} {0x00007fbfd5c734a0} &apos;final_property&apos; &apos;()Ljava/lang/String;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/JustInTimeConstantsBenchmark&apos;
             #           [sp+0x40]  (sp of caller)
             0x00007fbff4f63a20:   mov    0x8(%rsi),%r10d
             0x00007fbff4f63a24:   movabs $0x800000000,%r11
             0x00007fbff4f63a2e:   add    %r11,%r10
             0x00007fbff4f63a31:   cmp    %rax,%r10
             0x00007fbff4f63a34:   jne    0x00007fbff49fbd80           ;   {runtime_call ic_miss_stub}
             0x00007fbff4f63a3a:   nopw   0x0(%rax,%rax,1)
           [Verified Entry Point]
             0x00007fbff4f63a40:   mov    %eax,-0x14000(%rsp)
   6.65%     0x00007fbff4f63a47:   push   %rbp
             0x00007fbff4f63a48:   sub    $0x30,%rsp                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::final_property@0 (line 56)
   6.53%     0x00007fbff4f63a4c:   mov    0xc(%rsi),%eax
   0.00%     0x00007fbff4f63a4f:   shl    $0x3,%rax                    ;*getfield finalProperty {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::final_property@1 (line 56)
             0x00007fbff4f63a53:   add    $0x30,%rsp
             0x00007fbff4f63a57:   pop    %rbp
   6.53%     0x00007fbff4f63a58:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ╭  0x00007fbff4f63a5f:   ja     0x00007fbff4f63a66
          │  0x00007fbff4f63a65:   ret    
          ↘  0x00007fbff4f63a66:   movabs $0x7fbff4f63a58,%r10         ;   {internal_word}
             0x00007fbff4f63a70:   mov    %r10,0x358(%r15)
             0x00007fbff4f63a77:   jmp    0x00007fbff4a02700           ;   {runtime_call SafepointBlob}
             0x00007fbff4f63a7c:   nop
             0x00007fbff4f63a7d:   nop
             0x00007fbff4f63a7e:   mov    0x3d0(%r15),%rax
             0x00007fbff4f63a85:   movq   $0x0,0x3d0(%r15)
             0x00007fbff4f63a90:   movq   $0x0,0x3d8(%r15)
....................................................................................................
  19.71%  <total for region 2>

....[Hottest Regions]...............................................................................
  78.52%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub, version 6, compile id 517 
  19.71%         c1, level 1  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::final_property, version 1, compile id 480 
   0.41%   [kernel.kallsyms]  native_write_msr 
   0.08%   [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.05%   [kernel.kallsyms]  zap_pte_range.isra.0 
   0.05%   [kernel.kallsyms]  __entry_text_start 
   0.05%   [kernel.kallsyms]  page_remove_rmap 
   0.05%                      <unknown> 
   0.04%   [kernel.kallsyms]  __mod_zone_page_state 
   0.04%   [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.03%   [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.03%   [kernel.kallsyms]  free_pcppages_bulk 
   0.03%   [kernel.kallsyms]  release_pages 
   0.03%   [kernel.kallsyms]  __free_one_page 
   0.02%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.02%   [kernel.kallsyms]  free_swap_cache 
   0.02%   [kernel.kallsyms]  uncharge_page 
   0.02%   [kernel.kallsyms]  release_pages 
   0.02%   [kernel.kallsyms]  release_pages 
   0.01%   [kernel.kallsyms]  __mod_node_page_state 
   0.79%  <...other 230 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  78.52%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub, version 6, compile id 517 
  19.71%         c1, level 1  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::final_property, version 1, compile id 480 
   0.41%   [kernel.kallsyms]  native_write_msr 
   0.11%                      <unknown> 
   0.08%   [kernel.kallsyms]  zap_pte_range.isra.0 
   0.08%   [kernel.kallsyms]  release_pages 
   0.08%   [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.06%   [kernel.kallsyms]  __free_one_page 
   0.05%   [kernel.kallsyms]  __entry_text_start 
   0.05%   [kernel.kallsyms]  page_remove_rmap 
   0.04%   [kernel.kallsyms]  __mod_zone_page_state 
   0.04%   [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.04%   [kernel.kallsyms]  free_pcppages_bulk 
   0.04%   [kernel.kallsyms]  uncharge_page 
   0.04%   [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.03%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.03%   [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.02%   [kernel.kallsyms]  free_unref_page_list 
   0.02%   [kernel.kallsyms]  free_swap_cache 
   0.01%   [kernel.kallsyms]  __mod_node_page_state 
   0.54%  <...other 147 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  78.52%         c2, level 4
  19.71%         c1, level 1
   1.46%   [kernel.kallsyms]
   0.11%                    
   0.10%           libjvm.so
   0.06%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.00%      hsdis-amd64.so
   0.00%          ld-2.31.so
   0.00%         c1, level 3
   0.00%    Unknown, level 0
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.property

# Run progress: 25.00% complete, ETA 00:05:29
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.016 ns/op
# Warmup Iteration   2: 5.831 ns/op
# Warmup Iteration   3: 7.018 ns/op
# Warmup Iteration   4: 5.830 ns/op
# Warmup Iteration   5: 5.830 ns/op
Iteration   1: 5.830 ns/op
Iteration   2: 5.830 ns/op
Iteration   3: 5.803 ns/op
Iteration   4: 5.802 ns/op
Iteration   5: 5.803 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.property":
  5.814 ±(99.9%) 0.057 ns/op [Average]
  (min, avg, max) = (5.802, 5.814, 5.830), stdev = 0.015
  CI (99.9%): [5.756, 5.871] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.property:·asm":
PrintAssembly processed: 110179 total address lines.
Perf output processed (skipped 55.843 seconds):
 Column 1: cycles (50296 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub, version 6, compile id 487 

              0x00007f4ad4f65a2b:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007f4ad4f65ae0
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub@30 (line 192)
              0x00007f4ad4f65a33:   mov    $0x1,%ebp
              0x00007f4ad4f65a38:   test   %r11d,%r11d
          ╭   0x00007f4ad4f65a3b:   jne    0x00007f4ad4f65a6c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub@33 (line 192)
          │   0x00007f4ad4f65a3d:   data16 xchg %ax,%ax                 ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub@36 (line 193)
          │↗  0x00007f4ad4f65a40:   mov    0x40(%rsp),%rsi
   6.56%  ││  0x00007f4ad4f65a45:   xchg   %ax,%ax
          ││  0x00007f4ad4f65a47:   call   0x00007f4ad49fc080           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*invokevirtual property {reexecute=0 rethrow=0 return_oop=1}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub@17 (line 190)
          ││                                                            ;   {optimized virtual_call}
  65.32%  ││  0x00007f4ad4f65a4c:   mov    0x38(%rsp),%r10
          ││  0x00007f4ad4f65a51:   movzbl 0x94(%r10),%r11d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub@33 (line 192)
          ││  0x00007f4ad4f65a59:   mov    0x348(%r15),%r10
   6.48%  ││  0x00007f4ad4f65a60:   add    $0x1,%rbp                    ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub@33 (line 192)
          ││  0x00007f4ad4f65a64:   test   %eax,(%r10)                  ;   {poll}
          ││  0x00007f4ad4f65a67:   test   %r11d,%r11d
          │╰  0x00007f4ad4f65a6a:   je     0x00007f4ad4f65a40           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub@36 (line 193)
          ↘   0x00007f4ad4f65a6c:   movabs $0x7f4aeb016d10,%r10
              0x00007f4ad4f65a76:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub@37 (line 193)
              0x00007f4ad4f65a79:   mov    0x30(%rsp),%r10
....................................................................................................
  78.35%  <total for region 1>

....[Hottest Region 2]..............................................................................
c1, level 1, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::property, version 1, compile id 444 

             # {method} {0x00007f4ab5873620} &apos;property&apos; &apos;()Ljava/lang/String;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/JustInTimeConstantsBenchmark&apos;
             #           [sp+0x40]  (sp of caller)
             0x00007f4ad4f62420:   mov    0x8(%rsi),%r10d
             0x00007f4ad4f62424:   movabs $0x800000000,%r11
             0x00007f4ad4f6242e:   add    %r11,%r10
             0x00007f4ad4f62431:   cmp    %rax,%r10
             0x00007f4ad4f62434:   jne    0x00007f4ad49fbd80           ;   {runtime_call ic_miss_stub}
             0x00007f4ad4f6243a:   nopw   0x0(%rax,%rax,1)
           [Verified Entry Point]
             0x00007f4ad4f62440:   mov    %eax,-0x14000(%rsp)
   6.71%     0x00007f4ad4f62447:   push   %rbp
             0x00007f4ad4f62448:   sub    $0x30,%rsp                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::property@0 (line 68)
   6.63%     0x00007f4ad4f6244c:   mov    0x10(%rsi),%eax
   0.00%     0x00007f4ad4f6244f:   shl    $0x3,%rax                    ;*getfield property {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::property@1 (line 68)
             0x00007f4ad4f62453:   add    $0x30,%rsp
             0x00007f4ad4f62457:   pop    %rbp
   6.31%     0x00007f4ad4f62458:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ╭  0x00007f4ad4f6245f:   ja     0x00007f4ad4f62466
          │  0x00007f4ad4f62465:   ret    
          ↘  0x00007f4ad4f62466:   movabs $0x7f4ad4f62458,%r10         ;   {internal_word}
             0x00007f4ad4f62470:   mov    %r10,0x358(%r15)
             0x00007f4ad4f62477:   jmp    0x00007f4ad4a02700           ;   {runtime_call SafepointBlob}
             0x00007f4ad4f6247c:   nop
             0x00007f4ad4f6247d:   nop
             0x00007f4ad4f6247e:   mov    0x3d0(%r15),%rax
             0x00007f4ad4f62485:   movq   $0x0,0x3d0(%r15)
             0x00007f4ad4f62490:   movq   $0x0,0x3d8(%r15)
....................................................................................................
  19.66%  <total for region 2>

....[Hottest Regions]...............................................................................
  78.35%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub, version 6, compile id 487 
  19.66%         c1, level 1  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::property, version 1, compile id 444 
   0.56%   [kernel.kallsyms]  native_write_msr 
   0.07%   [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.06%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.05%   [kernel.kallsyms]  zap_pte_range.isra.0 
   0.04%   [kernel.kallsyms]  release_pages 
   0.04%   [kernel.kallsyms]  release_pages 
   0.04%   [kernel.kallsyms]  __intel_pmu_enable_all.constprop.0 
   0.04%   [kernel.kallsyms]  page_remove_rmap 
   0.04%   [kernel.kallsyms]  __entry_text_start 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%   [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.03%   [kernel.kallsyms]  __mod_zone_page_state 
   0.03%   [kernel.kallsyms]  __free_one_page 
   0.03%   [kernel.kallsyms]  __tlb_remove_page_size 
   0.03%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.02%   [kernel.kallsyms]  free_pcppages_bulk 
   0.02%   [kernel.kallsyms]  __mod_node_page_state 
   0.02%   [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.81%  <...other 247 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  78.35%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub, version 6, compile id 487 
  19.66%         c1, level 1  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::property, version 1, compile id 444 
   0.56%   [kernel.kallsyms]  native_write_msr 
   0.09%   [kernel.kallsyms]  release_pages 
   0.09%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.07%   [kernel.kallsyms]  zap_pte_range.isra.0 
   0.07%   [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.07%   [kernel.kallsyms]  __free_one_page 
   0.06%                      <unknown> 
   0.04%   [kernel.kallsyms]  free_pcppages_bulk 
   0.04%   [kernel.kallsyms]  page_remove_rmap 
   0.04%   [kernel.kallsyms]  __entry_text_start 
   0.04%   [kernel.kallsyms]  __intel_pmu_enable_all.constprop.0 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%   [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.03%   [kernel.kallsyms]  __mod_zone_page_state 
   0.03%   [kernel.kallsyms]  uncharge_page 
   0.03%   [kernel.kallsyms]  __tlb_remove_page_size 
   0.02%   [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.02%   [kernel.kallsyms]  cgroup_rstat_updated 
   0.63%  <...other 179 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  78.35%         c2, level 4
  19.66%         c1, level 1
   1.71%   [kernel.kallsyms]
   0.13%           libjvm.so
   0.06%                    
   0.05%        libc-2.31.so
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.01%              [vdso]
   0.00%      hsdis-amd64.so
   0.00%          ld-2.31.so
   0.00%         c1, level 3
   0.00%          libjava.so
   0.00%     perf-159688.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.static_final_property

# Run progress: 50.00% complete, ETA 00:03:39
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.013 ns/op
# Warmup Iteration   2: 5.830 ns/op
# Warmup Iteration   3: 7.016 ns/op
# Warmup Iteration   4: 5.830 ns/op
# Warmup Iteration   5: 5.802 ns/op
Iteration   1: 5.830 ns/op
Iteration   2: 5.830 ns/op
Iteration   3: 5.801 ns/op
Iteration   4: 5.802 ns/op
Iteration   5: 5.830 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.static_final_property":
  5.819 ±(99.9%) 0.060 ns/op [Average]
  (min, avg, max) = (5.801, 5.819, 5.830), stdev = 0.016
  CI (99.9%): [5.758, 5.879] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.static_final_property:·asm":
PrintAssembly processed: 112984 total address lines.
Perf output processed (skipped 55.941 seconds):
 Column 1: cycles (50138 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub, version 6, compile id 502 

              0x00007fdc40f666a6:   mov    0x38(%rsp),%r10
              0x00007fdc40f666ab:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007fdc40f66760
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub@30 (line 192)
              0x00007fdc40f666b3:   mov    $0x1,%ebp
              0x00007fdc40f666b8:   test   %r11d,%r11d
          ╭   0x00007fdc40f666bb:   jne    0x00007fdc40f666ec           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub@33 (line 192)
          │   0x00007fdc40f666bd:   data16 xchg %ax,%ax                 ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub@36 (line 193)
   6.48%  │↗  0x00007fdc40f666c0:   mov    0x40(%rsp),%rsi
          ││  0x00007fdc40f666c5:   xchg   %ax,%ax
          ││  0x00007fdc40f666c7:   call   0x00007fdc409fc080           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*invokevirtual static_final_property {reexecute=0 rethrow=0 return_oop=1}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub@17 (line 190)
          ││                                                            ;   {optimized virtual_call}
          ││  0x00007fdc40f666cc:   mov    0x38(%rsp),%r10
  26.27%  ││  0x00007fdc40f666d1:   movzbl 0x94(%r10),%r11d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub@33 (line 192)
  26.18%  ││  0x00007fdc40f666d9:   mov    0x348(%r15),%r10
          ││  0x00007fdc40f666e0:   add    $0x1,%rbp                    ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub@33 (line 192)
          ││  0x00007fdc40f666e4:   test   %eax,(%r10)                  ;   {poll}
          ││  0x00007fdc40f666e7:   test   %r11d,%r11d
          │╰  0x00007fdc40f666ea:   je     0x00007fdc40f666c0           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub@36 (line 193)
          ↘   0x00007fdc40f666ec:   movabs $0x7fdc56ce0d10,%r10
              0x00007fdc40f666f6:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  58.93%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::static_final_property, version 2, compile id 464 

             # {method} {0x00007fdc2147dc28} &apos;static_final_property&apos; &apos;()Ljava/lang/String;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/JustInTimeConstantsBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007fdc40f62e20:   mov    0x8(%rsi),%r10d
             0x00007fdc40f62e24:   movabs $0x800000000,%r11
             0x00007fdc40f62e2e:   add    %r11,%r10
             0x00007fdc40f62e31:   cmp    %r10,%rax
             0x00007fdc40f62e34:   jne    0x00007fdc409fbd80           ;   {runtime_call ic_miss_stub}
             0x00007fdc40f62e3a:   xchg   %ax,%ax
             0x00007fdc40f62e3c:   nopl   0x0(%rax)
           [Verified Entry Point]
   6.53%     0x00007fdc40f62e40:   sub    $0x18,%rsp
             0x00007fdc40f62e47:   mov    %rbp,0x10(%rsp)              ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::static_final_property@-1 (line 50)
             0x00007fdc40f62e4c:   movabs $0x7ffa03ab8,%rax            ;   {oop(&quot;/home/gogu/bench_jdks/jdk-17.0.6+10&quot;{0x00000007ffa03ab8})}
   6.44%     0x00007fdc40f62e56:   add    $0x10,%rsp
             0x00007fdc40f62e5a:   pop    %rbp
  26.40%     0x00007fdc40f62e5b:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ╭  0x00007fdc40f62e62:   ja     0x00007fdc40f62e69
          │  0x00007fdc40f62e68:   ret    
          ↘  0x00007fdc40f62e69:   movabs $0x7fdc40f62e5b,%r10         ;   {internal_word}
             0x00007fdc40f62e73:   mov    %r10,0x358(%r15)
             0x00007fdc40f62e7a:   jmp    0x00007fdc40a02700           ;   {runtime_call SafepointBlob}
             0x00007fdc40f62e7f:   hlt    
           [Exception Handler]
             0x00007fdc40f62e80:   jmp    0x00007fdc40a0fc00           ;   {no_reloc}
           [Deopt Handler Code]
             0x00007fdc40f62e85:   call   0x00007fdc40f62e8a
....................................................................................................
  39.37%  <total for region 2>

....[Hottest Regions]...............................................................................
  58.93%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub, version 6, compile id 502 
  39.37%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::static_final_property, version 2, compile id 464 
   0.33%   [kernel.kallsyms]  native_write_msr 
   0.07%   [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.05%                      <unknown> 
   0.04%   [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.04%   [kernel.kallsyms]  zap_pte_range.isra.0 
   0.04%   [kernel.kallsyms]  page_remove_rmap 
   0.04%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.04%   [kernel.kallsyms]  __entry_text_start 
   0.03%   [kernel.kallsyms]  __free_one_page 
   0.03%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.03%   [kernel.kallsyms]  release_pages 
   0.03%   [kernel.kallsyms]  free_pcppages_bulk 
   0.03%   [kernel.kallsyms]  release_pages 
   0.02%   [kernel.kallsyms]  __mod_zone_page_state 
   0.02%   [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.02%   [kernel.kallsyms]  __free_one_page 
   0.02%   [kernel.kallsyms]  free_swap_cache 
   0.79%  <...other 243 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  58.93%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub, version 6, compile id 502 
  39.37%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::static_final_property, version 2, compile id 464 
   0.33%   [kernel.kallsyms]  native_write_msr 
   0.11%                      <unknown> 
   0.10%   [kernel.kallsyms]  __free_one_page 
   0.09%   [kernel.kallsyms]  release_pages 
   0.07%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.07%   [kernel.kallsyms]  zap_pte_range.isra.0 
   0.07%   [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.05%   [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.04%   [kernel.kallsyms]  page_remove_rmap 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.04%   [kernel.kallsyms]  free_pcppages_bulk 
   0.04%   [kernel.kallsyms]  __entry_text_start 
   0.02%   [kernel.kallsyms]  __mod_zone_page_state 
   0.02%   [kernel.kallsyms]  free_unref_page_commit.isra.0 
   0.02%   [kernel.kallsyms]  free_unref_page_list 
   0.02%   [kernel.kallsyms]  uncharge_page 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%   [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.54%  <...other 170 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.30%         c2, level 4
   1.37%   [kernel.kallsyms]
   0.12%           libjvm.so
   0.11%                    
   0.06%        libc-2.31.so
   0.01%         interpreter
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.00%          ld-2.31.so
   0.00%              [vdso]
   0.00%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.static_property

# Run progress: 75.00% complete, ETA 00:01:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.428 ns/op
# Warmup Iteration   2: 6.190 ns/op
# Warmup Iteration   3: 7.270 ns/op
# Warmup Iteration   4: 7.275 ns/op
# Warmup Iteration   5: 6.191 ns/op
Iteration   1: 6.294 ns/op
Iteration   2: 6.189 ns/op
Iteration   3: 6.191 ns/op
Iteration   4: 6.189 ns/op
Iteration   5: 6.189 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.static_property":
  6.210 ±(99.9%) 0.180 ns/op [Average]
  (min, avg, max) = (6.189, 6.210, 6.294), stdev = 0.047
  CI (99.9%): [6.030, 6.391] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.static_property:·asm":
PrintAssembly processed: 113106 total address lines.
Perf output processed (skipped 55.963 seconds):
 Column 1: cycles (50642 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub, version 6, compile id 521 

              0x00007f5604f676a6:   mov    0x38(%rsp),%r10
              0x00007f5604f676ab:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007f5604f67760
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub@30 (line 192)
              0x00007f5604f676b3:   mov    $0x1,%ebp
              0x00007f5604f676b8:   test   %r11d,%r11d
          ╭   0x00007f5604f676bb:   jne    0x00007f5604f676ec           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub@33 (line 192)
          │   0x00007f5604f676bd:   data16 xchg %ax,%ax                 ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub@36 (line 193)
   6.06%  │↗  0x00007f5604f676c0:   mov    0x40(%rsp),%rsi
          ││  0x00007f5604f676c5:   xchg   %ax,%ax
          ││  0x00007f5604f676c7:   call   0x00007f56049fc080           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*invokevirtual static_property {reexecute=0 rethrow=0 return_oop=1}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub@17 (line 190)
          ││                                                            ;   {optimized virtual_call}
   6.01%  ││  0x00007f5604f676cc:   mov    0x38(%rsp),%r10
  36.15%  ││  0x00007f5604f676d1:   movzbl 0x94(%r10),%r11d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub@33 (line 192)
  24.33%  ││  0x00007f5604f676d9:   mov    0x348(%r15),%r10
   0.00%  ││  0x00007f5604f676e0:   add    $0x1,%rbp                    ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub@33 (line 192)
          ││  0x00007f5604f676e4:   test   %eax,(%r10)                  ;   {poll}
          ││  0x00007f5604f676e7:   test   %r11d,%r11d
          │╰  0x00007f5604f676ea:   je     0x00007f5604f676c0           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub@36 (line 193)
          ↘   0x00007f5604f676ec:   movabs $0x7f5618f8dd10,%r10
              0x00007f5604f676f6:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub@37 (line 193)
              0x00007f5604f676f9:   mov    0x30(%rsp),%r10
....................................................................................................
  72.55%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::static_property, version 2, compile id 478 

             # {method} {0x00007f55d3873560} &apos;static_property&apos; &apos;()Ljava/lang/String;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/JustInTimeConstantsBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f5604f638a0:   mov    0x8(%rsi),%r10d
             0x00007f5604f638a4:   movabs $0x800000000,%r11
             0x00007f5604f638ae:   add    %r11,%r10
             0x00007f5604f638b1:   cmp    %r10,%rax
             0x00007f5604f638b4:   jne    0x00007f56049fbd80           ;   {runtime_call ic_miss_stub}
             0x00007f5604f638ba:   xchg   %ax,%ax
             0x00007f5604f638bc:   nopl   0x0(%rax)
           [Verified Entry Point]
   6.00%     0x00007f5604f638c0:   sub    $0x18,%rsp
             0x00007f5604f638c7:   mov    %rbp,0x10(%rsp)              ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::static_property@-1 (line 62)
   0.00%     0x00007f5604f638cc:   movabs $0x7ff402330,%r10            ;   {oop(a &apos;java/lang/Class&apos;{0x00000007ff402330} = &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/JustInTimeConstantsBenchmark&apos;)}
   6.08%     0x00007f5604f638d6:   mov    0x74(%r10),%r11d
             0x00007f5604f638da:   mov    %r11,%rax
             0x00007f5604f638dd:   shl    $0x3,%rax                    ;*getstatic staticProperty {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::static_property@0 (line 62)
             0x00007f5604f638e1:   add    $0x10,%rsp
   6.13%     0x00007f5604f638e5:   pop    %rbp
   6.74%     0x00007f5604f638e6:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ╭  0x00007f5604f638ed:   ja     0x00007f5604f638f4
          │  0x00007f5604f638f3:   ret    
          ↘  0x00007f5604f638f4:   movabs $0x7f5604f638e6,%r10         ;   {internal_word}
             0x00007f5604f638fe:   mov    %r10,0x358(%r15)
             0x00007f5604f63905:   jmp    0x00007f5604a02700           ;   {runtime_call SafepointBlob}
             0x00007f5604f6390a:   hlt    
             0x00007f5604f6390b:   hlt    
             0x00007f5604f6390c:   hlt    
             0x00007f5604f6390d:   hlt    
             0x00007f5604f6390e:   hlt    
....................................................................................................
  24.96%  <total for region 2>

....[Hottest Regions]...............................................................................
  72.55%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub, version 6, compile id 521 
  24.96%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::static_property, version 2, compile id 478 
   1.22%   [kernel.kallsyms]  native_write_msr 
   0.06%   [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.06%   [kernel.kallsyms]  page_remove_rmap 
   0.04%   [kernel.kallsyms]  __entry_text_start 
   0.04%   [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.04%   [kernel.kallsyms]  intel_pmu_enable_all 
   0.04%   [kernel.kallsyms]  zap_pte_range.isra.0 
   0.03%   [kernel.kallsyms]  __mod_zone_page_state 
   0.03%   [kernel.kallsyms]  free_pcppages_bulk 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%   [kernel.kallsyms]  __free_one_page 
   0.03%   [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.03%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.03%                      <unknown> 
   0.03%   [kernel.kallsyms]  __mod_node_page_state 
   0.03%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.02%   [kernel.kallsyms]  release_pages 
   0.02%   [kernel.kallsyms]  __tlb_remove_page_size 
   0.70%  <...other 198 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  72.55%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub, version 6, compile id 521 
  24.96%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::static_property, version 2, compile id 478 
   1.22%   [kernel.kallsyms]  native_write_msr 
   0.08%   [kernel.kallsyms]  release_pages 
   0.07%                      <unknown> 
   0.07%   [kernel.kallsyms]  zap_pte_range.isra.0 
   0.06%   [kernel.kallsyms]  syscall_return_via_sysret 
   0.06%   [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.06%   [kernel.kallsyms]  page_remove_rmap 
   0.05%   [kernel.kallsyms]  free_pcppages_bulk 
   0.05%   [kernel.kallsyms]  __free_one_page 
   0.04%   [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.04%   [kernel.kallsyms]  __entry_text_start 
   0.04%   [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.04%   [kernel.kallsyms]  intel_pmu_enable_all 
   0.03%   [kernel.kallsyms]  __mod_zone_page_state 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%   [kernel.kallsyms]  __mod_node_page_state 
   0.02%   [kernel.kallsyms]  uncharge_page 
   0.02%   [kernel.kallsyms]  free_swap_cache 
   0.48%  <...other 138 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.50%         c2, level 4
   2.21%   [kernel.kallsyms]
   0.11%           libjvm.so
   0.07%                    
   0.05%        libc-2.31.so
   0.01%         interpreter
   0.01%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%              [vdso]
   0.00%      hsdis-amd64.so
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:07:17

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

Benchmark                                                Mode  Cnt  Score   Error  Units
JustInTimeConstantsBenchmark.final_property              avgt    5  5.802 ± 0.002  ns/op
JustInTimeConstantsBenchmark.final_property:·asm         avgt         NaN            ---
JustInTimeConstantsBenchmark.property                    avgt    5  5.814 ± 0.057  ns/op
JustInTimeConstantsBenchmark.property:·asm               avgt         NaN            ---
JustInTimeConstantsBenchmark.static_final_property       avgt    5  5.819 ± 0.060  ns/op
JustInTimeConstantsBenchmark.static_final_property:·asm  avgt         NaN            ---
JustInTimeConstantsBenchmark.static_property             avgt    5  6.210 ± 0.180  ns/op
JustInTimeConstantsBenchmark.static_property:·asm        avgt         NaN            ---
