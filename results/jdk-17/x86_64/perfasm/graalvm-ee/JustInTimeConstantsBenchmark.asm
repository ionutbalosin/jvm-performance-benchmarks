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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.final_property

# Run progress: 0.00% complete, ETA 00:06:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.681 ns/op
# Warmup Iteration   2: 6.190 ns/op
# Warmup Iteration   3: 6.267 ns/op
# Warmup Iteration   4: 6.219 ns/op
# Warmup Iteration   5: 6.219 ns/op
Iteration   1: 6.219 ns/op
Iteration   2: 6.189 ns/op
Iteration   3: 6.188 ns/op
Iteration   4: 6.188 ns/op
Iteration   5: 6.189 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.final_property":
  6.195 ±(99.9%) 0.052 ns/op [Average]
  (min, avg, max) = (6.188, 6.195, 6.219), stdev = 0.013
  CI (99.9%): [6.143, 6.246] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.final_property:·asm":
PrintAssembly processed: 190204 total address lines.
Perf output processed (skipped 59.006 seconds):
 Column 1: cycles (50664 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub, version 6, compile id 747 

              0x00007f8e06b1b5d8:   call   0x00007f8e1ef284f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f8e06b1b5dd:   nop
              0x00007f8e06b1b5de:   mov    0x10(%rsp),%rdx
              0x00007f8e06b1b5e3:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub@10 (line 188)
              0x00007f8e06b1b5e7:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f8e06b1b5f0:   jmp    0x00007f8e06b1b60f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub@13 (line 190)
          │   0x00007f8e06b1b5f5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub@33 (line 192)
   3.71%  │↗  0x00007f8e06b1b600:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub@33 (line 192)
   2.48%  ││  0x00007f8e06b1b607:   test   %eax,(%r11)                  ;   {poll}
   3.72%  ││  0x00007f8e06b1b60a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub@13 (line 190)
          ↘│  0x00007f8e06b1b60f:   mov    0x8(%rsp),%r10
   0.01%   │  0x00007f8e06b1b614:   mov    %r10,%rsi
   2.33%   │  0x00007f8e06b1b617:   call   0x00007f8dff01ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual final_property {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
  50.25%   │  0x00007f8e06b1b61c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub@20 (line 190)
           │  0x00007f8e06b1b61d:   mov    0x20(%rsp),%r10
           │  0x00007f8e06b1b622:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub@26 (line 191)
   6.03%   │  0x00007f8e06b1b625:   mov    0x18(%rsp),%rsi
           │  0x00007f8e06b1b62a:   cmpb   $0x0,0x94(%rsi)
   7.28%   ╰  0x00007f8e06b1b631:   je     0x00007f8e06b1b600           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub@33 (line 192)
              0x00007f8e06b1b633:   mov    %r10,0x20(%rsp)
              0x00007f8e06b1b638:   call   0x00007f8e1ef284f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f8e06b1b63d:   nop
              0x00007f8e06b1b63e:   mov    0x10(%rsp),%rdx
              0x00007f8e06b1b643:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub@40 (line 193)
              0x00007f8e06b1b647:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub@46 (line 194)
              0x00007f8e06b1b64b:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  75.82%  <total for region 1>

....[Hottest Region 2]..............................................................................
c1, level 1, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::final_property, version 1, compile id 722 

           [Entry Point]
             # {method} {0x00007f8de74734a0} &apos;final_property&apos; &apos;()Ljava/lang/String;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/JustInTimeConstantsBenchmark&apos;
             #           [sp+0x40]  (sp of caller)
             0x00007f8e06b18720:   mov    0x8(%rsi),%r10d
             0x00007f8e06b18724:   movabs $0x800000000,%r11
             0x00007f8e06b1872e:   add    %r11,%r10
             0x00007f8e06b18731:   cmp    %rax,%r10
             0x00007f8e06b18734:   jne    0x00007f8dff01e780           ;   {runtime_call ic_miss_stub}
             0x00007f8e06b1873a:   nopw   0x0(%rax,%rax,1)
           [Verified Entry Point]
   3.65%     0x00007f8e06b18740:   mov    %eax,-0x14000(%rsp)
   2.39%     0x00007f8e06b18747:   push   %rbp
   3.60%     0x00007f8e06b18748:   sub    $0x30,%rsp                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::final_property@0 (line 56)
   0.01%     0x00007f8e06b1874c:   mov    0xc(%rsi),%eax
   2.30%     0x00007f8e06b1874f:   shl    $0x3,%rax                    ;*getfield finalProperty {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::final_property@1 (line 56)
   3.57%     0x00007f8e06b18753:   add    $0x30,%rsp
             0x00007f8e06b18757:   pop    %rbp
   0.01%     0x00007f8e06b18758:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ╭  0x00007f8e06b1875f:   ja     0x00007f8e06b18766
   6.06%  │  0x00007f8e06b18765:   ret    
          ↘  0x00007f8e06b18766:   movabs $0x7f8e06b18758,%r10         ;   {internal_word}
             0x00007f8e06b18770:   mov    %r10,0x358(%r15)
             0x00007f8e06b18777:   jmp    0x00007f8dff025100           ;   {runtime_call SafepointBlob}
             0x00007f8e06b1877c:   nop
             0x00007f8e06b1877d:   nop
             0x00007f8e06b1877e:   mov    0x3d8(%r15),%rax
             0x00007f8e06b18785:   movq   $0x0,0x3d8(%r15)
             0x00007f8e06b18790:   movq   $0x0,0x3e0(%r15)
             0x00007f8e06b1879b:   add    $0x30,%rsp
             0x00007f8e06b1879f:   pop    %rbp
....................................................................................................
  21.59%  <total for region 2>

....[Hottest Regions]...............................................................................
  75.82%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub, version 6, compile id 747 
  21.59%          c1, level 1  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::final_property, version 1, compile id 722 
   0.82%    [kernel.kallsyms]  native_write_msr 
   0.29%    [kernel.kallsyms]  __intel_pmu_enable_all.constprop.0 
   0.08%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.07%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.06%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.05%    [kernel.kallsyms]  __entry_text_start 
   0.05%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.05%    [kernel.kallsyms]  free_pcppages_bulk 
   0.04%    [kernel.kallsyms]  page_remove_rmap 
   0.04%    [kernel.kallsyms]  __free_one_page 
   0.03%                       <unknown> 
   0.03%    [kernel.kallsyms]  __mod_zone_page_state 
   0.02%    [kernel.kallsyms]  free_unref_page_commit.isra.0 
   0.02%    [kernel.kallsyms]  release_pages 
   0.02%    [kernel.kallsyms]  __mod_lruvec_page_state 
   0.02%    [kernel.kallsyms]  release_pages 
   0.02%    [kernel.kallsyms]  __mod_node_page_state 
   0.02%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.88%  <...other 262 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  75.82%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub, version 6, compile id 747 
  21.59%          c1, level 1  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::final_property, version 1, compile id 722 
   0.82%    [kernel.kallsyms]  native_write_msr 
   0.29%    [kernel.kallsyms]  __intel_pmu_enable_all.constprop.0 
   0.09%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.08%                       <unknown> 
   0.08%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.08%    [kernel.kallsyms]  release_pages 
   0.07%    [kernel.kallsyms]  __free_one_page 
   0.06%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.06%    [kernel.kallsyms]  free_pcppages_bulk 
   0.05%    [kernel.kallsyms]  __entry_text_start 
   0.05%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.04%    [kernel.kallsyms]  page_remove_rmap 
   0.03%    [kernel.kallsyms]  __mod_zone_page_state 
   0.03%    [kernel.kallsyms]  free_unref_page_list 
   0.03%    [kernel.kallsyms]  uncharge_page 
   0.02%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.02%    [kernel.kallsyms]  free_unref_page_commit.isra.0 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.67%  <...other 179 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  75.82%       jvmci, level 4
  21.59%          c1, level 1
   2.26%    [kernel.kallsyms]
   0.12%            libjvm.so
   0.08%                     
   0.08%         libc-2.31.so
   0.02%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.00%       hsdis-amd64.so
   0.00%         libm-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.property

# Run progress: 25.00% complete, ETA 00:05:41
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.606 ns/op
# Warmup Iteration   2: 6.187 ns/op
# Warmup Iteration   3: 6.222 ns/op
# Warmup Iteration   4: 6.189 ns/op
# Warmup Iteration   5: 6.188 ns/op
Iteration   1: 6.191 ns/op
Iteration   2: 6.187 ns/op
Iteration   3: 6.188 ns/op
Iteration   4: 6.188 ns/op
Iteration   5: 6.188 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.property":
  6.188 ±(99.9%) 0.006 ns/op [Average]
  (min, avg, max) = (6.187, 6.188, 6.191), stdev = 0.001
  CI (99.9%): [6.183, 6.194] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.property:·asm":
PrintAssembly processed: 189844 total address lines.
Perf output processed (skipped 59.006 seconds):
 Column 1: cycles (50784 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub, version 6, compile id 746 

              0x00007f1206b1ca58:   call   0x00007f121f9ca4f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f1206b1ca5d:   nop
              0x00007f1206b1ca5e:   mov    0x10(%rsp),%rdx
              0x00007f1206b1ca63:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub@10 (line 188)
              0x00007f1206b1ca67:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f1206b1ca70:   jmp    0x00007f1206b1ca8f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub@13 (line 190)
          │   0x00007f1206b1ca75:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub@33 (line 192)
   2.99%  │↗  0x00007f1206b1ca80:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub@33 (line 192)
   3.15%  ││  0x00007f1206b1ca87:   test   %eax,(%r11)                  ;   {poll}
   3.02%  ││  0x00007f1206b1ca8a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub@13 (line 190)
          ↘│  0x00007f1206b1ca8f:   mov    0x8(%rsp),%r10
           │  0x00007f1206b1ca94:   mov    %r10,%rsi
   3.03%   │  0x00007f1206b1ca97:   call   0x00007f11ff01ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual property {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
  51.36%   │  0x00007f1206b1ca9c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub@20 (line 190)
           │  0x00007f1206b1ca9d:   mov    0x20(%rsp),%r10
   0.00%   │  0x00007f1206b1caa2:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub@26 (line 191)
   6.19%   │  0x00007f1206b1caa5:   mov    0x18(%rsp),%rsi
           │  0x00007f1206b1caaa:   cmpb   $0x0,0x94(%rsi)
   5.96%   ╰  0x00007f1206b1cab1:   je     0x00007f1206b1ca80           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub@33 (line 192)
              0x00007f1206b1cab3:   mov    %r10,0x20(%rsp)
              0x00007f1206b1cab8:   call   0x00007f121f9ca4f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f1206b1cabd:   nop
              0x00007f1206b1cabe:   mov    0x10(%rsp),%rdx
              0x00007f1206b1cac3:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub@40 (line 193)
              0x00007f1206b1cac7:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub@46 (line 194)
              0x00007f1206b1cacb:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  75.71%  <total for region 1>

....[Hottest Region 2]..............................................................................
c1, level 1, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::property, version 1, compile id 719 

           [Entry Point]
             # {method} {0x00007f11cfc73620} &apos;property&apos; &apos;()Ljava/lang/String;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/JustInTimeConstantsBenchmark&apos;
             #           [sp+0x40]  (sp of caller)
             0x00007f1206b16ea0:   mov    0x8(%rsi),%r10d
             0x00007f1206b16ea4:   movabs $0x800000000,%r11
             0x00007f1206b16eae:   add    %r11,%r10
             0x00007f1206b16eb1:   cmp    %rax,%r10
             0x00007f1206b16eb4:   jne    0x00007f11ff01e780           ;   {runtime_call ic_miss_stub}
             0x00007f1206b16eba:   nopw   0x0(%rax,%rax,1)
           [Verified Entry Point]
   2.99%     0x00007f1206b16ec0:   mov    %eax,-0x14000(%rsp)
   3.14%     0x00007f1206b16ec7:   push   %rbp
   3.02%     0x00007f1206b16ec8:   sub    $0x30,%rsp                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::property@0 (line 68)
             0x00007f1206b16ecc:   mov    0x10(%rsi),%eax
   3.13%     0x00007f1206b16ecf:   shl    $0x3,%rax                    ;*getfield property {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::property@1 (line 68)
   3.01%     0x00007f1206b16ed3:   add    $0x30,%rsp
             0x00007f1206b16ed7:   pop    %rbp
             0x00007f1206b16ed8:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ╭  0x00007f1206b16edf:   ja     0x00007f1206b16ee6
   6.00%  │  0x00007f1206b16ee5:   ret    
          ↘  0x00007f1206b16ee6:   movabs $0x7f1206b16ed8,%r10         ;   {internal_word}
             0x00007f1206b16ef0:   mov    %r10,0x358(%r15)
             0x00007f1206b16ef7:   jmp    0x00007f11ff025100           ;   {runtime_call SafepointBlob}
             0x00007f1206b16efc:   nop
             0x00007f1206b16efd:   nop
             0x00007f1206b16efe:   mov    0x3d8(%r15),%rax
             0x00007f1206b16f05:   movq   $0x0,0x3d8(%r15)
             0x00007f1206b16f10:   movq   $0x0,0x3e0(%r15)
             0x00007f1206b16f1b:   add    $0x30,%rsp
             0x00007f1206b16f1f:   pop    %rbp
....................................................................................................
  21.28%  <total for region 2>

....[Hottest Regions]...............................................................................
  75.71%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub, version 6, compile id 746 
  21.28%          c1, level 1  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::property, version 1, compile id 719 
   1.38%    [kernel.kallsyms]  native_write_msr 
   0.06%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.06%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.05%    [kernel.kallsyms]  __entry_text_start 
   0.05%    [kernel.kallsyms]  page_remove_rmap 
   0.05%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.05%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.04%    [kernel.kallsyms]  release_pages 
   0.04%    [kernel.kallsyms]  __mod_node_page_state 
   0.04%    [kernel.kallsyms]  __free_one_page 
   0.03%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.03%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.03%    [kernel.kallsyms]  __mod_lruvec_page_state 
   0.02%    [kernel.kallsyms]  release_pages 
   0.02%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.02%    [kernel.kallsyms]  __mod_zone_page_state 
   0.02%    [kernel.kallsyms]  free_pcppages_bulk 
   0.02%    [kernel.kallsyms]  uncharge_page 
   1.01%  <...other 289 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  75.71%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub, version 6, compile id 746 
  21.28%          c1, level 1  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::property, version 1, compile id 719 
   1.38%    [kernel.kallsyms]  native_write_msr 
   0.12%                       <unknown> 
   0.09%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.08%    [kernel.kallsyms]  release_pages 
   0.08%    [kernel.kallsyms]  __free_one_page 
   0.06%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.06%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.05%    [kernel.kallsyms]  __entry_text_start 
   0.05%    [kernel.kallsyms]  page_remove_rmap 
   0.05%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.05%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.04%    [kernel.kallsyms]  __mod_node_page_state 
   0.04%    [kernel.kallsyms]  uncharge_page 
   0.03%    [kernel.kallsyms]  free_pcppages_bulk 
   0.03%    [kernel.kallsyms]  __mod_lruvec_page_state 
   0.02%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.02%    [kernel.kallsyms]  cgroup_rstat_updated 
   0.02%    [kernel.kallsyms]  __mod_zone_page_state 
   0.74%  <...other 195 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  75.71%       jvmci, level 4
  21.28%          c1, level 1
   2.67%    [kernel.kallsyms]
   0.12%                     
   0.09%         libc-2.31.so
   0.09%            libjvm.so
   0.01%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.01%          interpreter
   0.00%  libjvmcicompiler.so
   0.00%           ld-2.31.so
   0.00%       libz.so.1.2.11
   0.00%               kvm.ko
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.static_final_property

# Run progress: 50.00% complete, ETA 00:03:47
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.222 ns/op
# Warmup Iteration   2: 5.803 ns/op
# Warmup Iteration   3: 5.827 ns/op
# Warmup Iteration   4: 5.801 ns/op
# Warmup Iteration   5: 5.834 ns/op
Iteration   1: 5.817 ns/op
Iteration   2: 5.824 ns/op
Iteration   3: 5.806 ns/op
Iteration   4: 5.803 ns/op
Iteration   5: 5.799 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.static_final_property":
  5.810 ±(99.9%) 0.040 ns/op [Average]
  (min, avg, max) = (5.799, 5.810, 5.824), stdev = 0.010
  CI (99.9%): [5.770, 5.849] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.static_final_property:·asm":
PrintAssembly processed: 186640 total address lines.
Perf output processed (skipped 58.799 seconds):
 Column 1: cycles (50232 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub, version 6, compile id 744 

              0x00007f80fab1d158:   call   0x00007f81116544f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f80fab1d15d:   nop
              0x00007f80fab1d15e:   mov    0x10(%rsp),%rdx
              0x00007f80fab1d163:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub@10 (line 188)
              0x00007f80fab1d167:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f80fab1d170:   jmp    0x00007f80fab1d18f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub@13 (line 190)
          │   0x00007f80fab1d175:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub@33 (line 192)
   6.53%  │↗  0x00007f80fab1d180:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub@33 (line 192)
          ││  0x00007f80fab1d187:   test   %eax,(%r11)                  ;   {poll}
  13.36%  ││  0x00007f80fab1d18a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub@13 (line 190)
   0.00%  ↘│  0x00007f80fab1d18f:   mov    0x8(%rsp),%r10
           │  0x00007f80fab1d194:   mov    %r10,%rsi
           │  0x00007f80fab1d197:   call   0x00007f80f301ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual static_final_property {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
   0.00%   │  0x00007f80fab1d19c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub@20 (line 190)
           │  0x00007f80fab1d19d:   mov    0x20(%rsp),%r10
  19.64%   │  0x00007f80fab1d1a2:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub@26 (line 191)
   6.68%   │  0x00007f80fab1d1a5:   mov    0x18(%rsp),%rsi
           │  0x00007f80fab1d1aa:   cmpb   $0x0,0x94(%rsi)
  25.98%   ╰  0x00007f80fab1d1b1:   je     0x00007f80fab1d180           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub@33 (line 192)
              0x00007f80fab1d1b3:   mov    %r10,0x20(%rsp)
              0x00007f80fab1d1b8:   call   0x00007f81116544f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f80fab1d1bd:   nop
              0x00007f80fab1d1be:   mov    0x10(%rsp),%rdx
              0x00007f80fab1d1c3:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub@40 (line 193)
              0x00007f80fab1d1c7:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub@46 (line 194)
              0x00007f80fab1d1cb:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  72.21%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::static_final_property, version 2, compile id 718 

            #           [sp+0x10]  (sp of caller)
            0x00007f80fab17080:   mov    0x8(%rsi),%r10d
            0x00007f80fab17084:   movabs $0x800000000,%r12
            0x00007f80fab1708e:   add    %r12,%r10
            0x00007f80fab17091:   xor    %r12,%r12
            0x00007f80fab17094:   cmp    %r10,%rax
            0x00007f80fab17097:   jne    0x00007f80f301e780           ;   {runtime_call ic_miss_stub}
            0x00007f80fab1709d:   nop
            0x00007f80fab1709e:   xchg   %ax,%ax
          [Verified Entry Point]
   6.40%    0x00007f80fab170a0:   nopl   0x0(%rax,%rax,1)
            0x00007f80fab170a5:   movabs $0x7ffa03968,%rax            ;   {oop(&quot;/home/gogu/bench_jdks/graalvm-ee-java17-22.3.0&quot;{0x00000007ffa03968})}
            0x00007f80fab170af:   mov    0x348(%r15),%rcx
   6.53%    0x00007f80fab170b6:   test   %eax,(%rcx)                  ;   {poll_return}
  13.15%    0x00007f80fab170b8:   ret    
          [Exception Handler]
            0x00007f80fab170b9:   call   0x00007f80f3169d00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007f80fab170be:   nop
            0x00007f80fab170bf:   nop
          [Deopt Handler Code]
            0x00007f80fab170c0:   call   0x00007f80f3024020           ;   {runtime_call DeoptimizationBlob}
            0x00007f80fab170c5:   nop
          [Stub Code]
            0x00007f80fab170c6:   hlt    
            0x00007f80fab170c7:   hlt    
....................................................................................................
  26.07%  <total for region 2>

....[Hottest Regions]...............................................................................
  72.21%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub, version 6, compile id 744 
  26.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::static_final_property, version 2, compile id 718 
   0.15%    [kernel.kallsyms]  native_write_msr 
   0.13%    [kernel.kallsyms]  __intel_pmu_enable_all.constprop.0 
   0.08%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.06%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.06%    [kernel.kallsyms]  __entry_text_start 
   0.05%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.04%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.04%    [kernel.kallsyms]  page_remove_rmap 
   0.03%    [kernel.kallsyms]  __mod_node_page_state 
   0.03%                       <unknown> 
   0.03%    [kernel.kallsyms]  __mod_zone_page_state 
   0.03%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.03%    [kernel.kallsyms]  __free_one_page 
   0.02%    [kernel.kallsyms]  release_pages 
   0.02%    [kernel.kallsyms]  free_swap_cache 
   0.02%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.02%    [kernel.kallsyms]  free_pcppages_bulk 
   0.02%    [kernel.kallsyms]  rcu_read_unlock_strict 
   0.86%  <...other 249 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  72.21%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub, version 6, compile id 744 
  26.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::static_final_property, version 2, compile id 718 
   0.15%    [kernel.kallsyms]  native_write_msr 
   0.13%    [kernel.kallsyms]  __intel_pmu_enable_all.constprop.0 
   0.09%    [kernel.kallsyms]  release_pages 
   0.09%                       <unknown> 
   0.08%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.07%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.06%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.06%    [kernel.kallsyms]  __entry_text_start 
   0.06%    [kernel.kallsyms]  __free_one_page 
   0.05%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.04%    [kernel.kallsyms]  page_remove_rmap 
   0.04%    [kernel.kallsyms]  free_pcppages_bulk 
   0.03%    [kernel.kallsyms]  __mod_node_page_state 
   0.03%    [kernel.kallsyms]  __mod_zone_page_state 
   0.03%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.03%    [kernel.kallsyms]  uncharge_page 
   0.02%    [kernel.kallsyms]  free_swap_cache 
   0.02%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.64%  <...other 173 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.28%       jvmci, level 4
   1.38%    [kernel.kallsyms]
   0.12%            libjvm.so
   0.09%                     
   0.06%         libc-2.31.so
   0.02%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%      perf-164068.map
   0.00%              i915.ko
   0.00%          c1, level 3
   0.00%          interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.static_property

# Run progress: 75.00% complete, ETA 00:01:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.253 ns/op
# Warmup Iteration   2: 5.830 ns/op
# Warmup Iteration   3: 5.843 ns/op
# Warmup Iteration   4: 5.803 ns/op
# Warmup Iteration   5: 5.803 ns/op
Iteration   1: 5.803 ns/op
Iteration   2: 5.802 ns/op
Iteration   3: 5.804 ns/op
Iteration   4: 5.802 ns/op
Iteration   5: 5.803 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.static_property":
  5.803 ±(99.9%) 0.003 ns/op [Average]
  (min, avg, max) = (5.802, 5.803, 5.804), stdev = 0.001
  CI (99.9%): [5.800, 5.806] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.static_property:·asm":
PrintAssembly processed: 188452 total address lines.
Perf output processed (skipped 58.886 seconds):
 Column 1: cycles (50533 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub, version 6, compile id 749 

              0x00007fb7aeb1d5d8:   call   0x00007fb7c8a504f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fb7aeb1d5dd:   nop
              0x00007fb7aeb1d5de:   mov    0x10(%rsp),%rdx
              0x00007fb7aeb1d5e3:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub@10 (line 188)
              0x00007fb7aeb1d5e7:   movq   $0x0,0x20(%rsp)
          ╭   0x00007fb7aeb1d5f0:   jmp    0x00007fb7aeb1d60f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub@13 (line 190)
          │   0x00007fb7aeb1d5f5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub@33 (line 192)
   6.45%  │↗  0x00007fb7aeb1d600:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub@33 (line 192)
          ││  0x00007fb7aeb1d607:   test   %eax,(%r11)                  ;   {poll}
   6.41%  ││  0x00007fb7aeb1d60a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub@13 (line 190)
          ↘│  0x00007fb7aeb1d60f:   mov    0x8(%rsp),%r10
           │  0x00007fb7aeb1d614:   mov    %r10,%rsi
           │  0x00007fb7aeb1d617:   call   0x00007fb7a701ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual static_property {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
   0.00%   │  0x00007fb7aeb1d61c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub@20 (line 190)
           │  0x00007fb7aeb1d61d:   mov    0x20(%rsp),%r10
  26.55%   │  0x00007fb7aeb1d622:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub@26 (line 191)
   6.40%   │  0x00007fb7aeb1d625:   mov    0x18(%rsp),%rsi
           │  0x00007fb7aeb1d62a:   cmpb   $0x0,0x94(%rsi)
  25.80%   ╰  0x00007fb7aeb1d631:   je     0x00007fb7aeb1d600           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub@33 (line 192)
              0x00007fb7aeb1d633:   mov    %r10,0x20(%rsp)
              0x00007fb7aeb1d638:   call   0x00007fb7c8a504f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fb7aeb1d63d:   nop
              0x00007fb7aeb1d63e:   mov    0x10(%rsp),%rdx
              0x00007fb7aeb1d643:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub@40 (line 193)
              0x00007fb7aeb1d647:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub@46 (line 194)
              0x00007fb7aeb1d64b:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  71.62%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::static_property, version 2, compile id 724 

            #           [sp+0x10]  (sp of caller)
            0x00007fb7aeb19800:   mov    0x8(%rsi),%r10d
            0x00007fb7aeb19804:   movabs $0x800000000,%r12
            0x00007fb7aeb1980e:   add    %r12,%r10
            0x00007fb7aeb19811:   xor    %r12,%r12
            0x00007fb7aeb19814:   cmp    %r10,%rax
            0x00007fb7aeb19817:   jne    0x00007fb7a701e780           ;   {runtime_call ic_miss_stub}
            0x00007fb7aeb1981d:   nop
            0x00007fb7aeb1981e:   xchg   %ax,%ax
          [Verified Entry Point]
   6.61%    0x00007fb7aeb19820:   nopl   0x0(%rax,%rax,1)
            0x00007fb7aeb19825:   movabs $0x7ff4d32c8,%rax            ;   {oop(a &apos;java/lang/Class&apos;{0x00000007ff4d32c8} = &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/JustInTimeConstantsBenchmark&apos;)}
            0x00007fb7aeb1982f:   mov    0x74(%rax),%eax
   6.61%    0x00007fb7aeb19832:   shl    $0x3,%rax                    ;*getstatic staticProperty {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::static_property@0 (line 62)
            0x00007fb7aeb19836:   mov    0x348(%r15),%rcx
            0x00007fb7aeb1983d:   test   %eax,(%rcx)                  ;   {poll_return}
  12.87%    0x00007fb7aeb1983f:   ret    
          [Exception Handler]
            0x00007fb7aeb19840:   call   0x00007fb7a7169d00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007fb7aeb19845:   nop
          [Deopt Handler Code]
            0x00007fb7aeb19846:   call   0x00007fb7a7024020           ;   {runtime_call DeoptimizationBlob}
            0x00007fb7aeb1984b:   nop
          [Stub Code]
            0x00007fb7aeb1984c:   hlt    
            0x00007fb7aeb1984d:   hlt    
            0x00007fb7aeb1984e:   hlt    
....................................................................................................
  26.09%  <total for region 2>

....[Hottest Regions]...............................................................................
  71.62%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub, version 6, compile id 749 
  26.09%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::static_property, version 2, compile id 724 
   0.66%    [kernel.kallsyms]  native_write_msr 
   0.09%                       <unknown> 
   0.06%                       <unknown> 
   0.06%    [kernel.kallsyms]  __entry_text_start 
   0.06%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.05%    [kernel.kallsyms]  __free_one_page 
   0.04%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.04%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.03%    [kernel.kallsyms]  free_swap_cache 
   0.03%    [kernel.kallsyms]  __mod_zone_page_state 
   0.03%    [kernel.kallsyms]  page_remove_rmap 
   0.02%    [kernel.kallsyms]  __mod_node_page_state 
   0.02%    [kernel.kallsyms]  rcu_read_unlock_strict 
   0.02%    [kernel.kallsyms]  release_pages 
   0.02%    [kernel.kallsyms]  release_pages 
   0.02%    [kernel.kallsyms]  free_pcppages_bulk 
   0.01%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.01%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   1.02%  <...other 305 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  71.62%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub, version 6, compile id 749 
  26.09%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::static_property, version 2, compile id 724 
   0.66%    [kernel.kallsyms]  native_write_msr 
   0.24%                       <unknown> 
   0.08%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.07%    [kernel.kallsyms]  __free_one_page 
   0.07%    [kernel.kallsyms]  release_pages 
   0.06%    [kernel.kallsyms]  __entry_text_start 
   0.06%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.04%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.03%    [kernel.kallsyms]  page_remove_rmap 
   0.03%    [kernel.kallsyms]  free_swap_cache 
   0.03%    [kernel.kallsyms]  __mod_zone_page_state 
   0.03%    [kernel.kallsyms]  uncharge_page 
   0.03%    [kernel.kallsyms]  free_pcppages_bulk 
   0.03%    [kernel.kallsyms]  __mod_node_page_state 
   0.03%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.03%    [kernel.kallsyms]  free_unref_page_commit.isra.0 
   0.02%    [kernel.kallsyms]  rcu_read_unlock_strict 
   0.02%    [kernel.kallsyms]  free_unref_page_list 
   0.74%  <...other 210 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.71%       jvmci, level 4
   1.76%    [kernel.kallsyms]
   0.24%                     
   0.13%            libjvm.so
   0.09%         libc-2.31.so
   0.03%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%               [vdso]
   0.00%          interpreter
   0.00%  libjvmcicompiler.so
   0.00%          c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:07:31

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
JustInTimeConstantsBenchmark.final_property              avgt    5  6.195 ± 0.052  ns/op
JustInTimeConstantsBenchmark.final_property:·asm         avgt         NaN            ---
JustInTimeConstantsBenchmark.property                    avgt    5  6.188 ± 0.006  ns/op
JustInTimeConstantsBenchmark.property:·asm               avgt         NaN            ---
JustInTimeConstantsBenchmark.static_final_property       avgt    5  5.810 ± 0.040  ns/op
JustInTimeConstantsBenchmark.static_final_property:·asm  avgt         NaN            ---
JustInTimeConstantsBenchmark.static_property             avgt    5  5.803 ± 0.003  ns/op
JustInTimeConstantsBenchmark.static_property:·asm        avgt         NaN            ---
