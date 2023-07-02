# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
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
# Warmup Iteration   1: 6.259 ns/op
# Warmup Iteration   2: 6.190 ns/op
# Warmup Iteration   3: 6.238 ns/op
# Warmup Iteration   4: 6.192 ns/op
# Warmup Iteration   5: 6.195 ns/op
Iteration   1: 6.195 ns/op
Iteration   2: 6.203 ns/op
Iteration   3: 6.202 ns/op
Iteration   4: 6.190 ns/op
Iteration   5: 6.189 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.final_property":
  6.196 ±(99.9%) 0.025 ns/op [Average]
  (min, avg, max) = (6.189, 6.196, 6.203), stdev = 0.006
  CI (99.9%): [6.171, 6.221] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.final_property:·asm":
PrintAssembly processed: 188682 total address lines.
Perf output processed (skipped 59.050 seconds):
 Column 1: cycles (50926 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub, version 6, compile id 757 

              0x00007f1f82ffed75:   mov    0x18(%rsp),%rsi
              0x00007f1f82ffed7a:   nopw   0x0(%rax,%rax,1)
              0x00007f1f82ffed80:   cmpb   $0x0,0x94(%rsi)
              0x00007f1f82ffed87:   jne    0x00007f1f82ffee0e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub@33 (line 192)
              0x00007f1f82ffed8d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f1f82ffed96:   jmp    0x00007f1f82ffedaf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub@13 (line 190)
          │   0x00007f1f82ffed9b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub@33 (line 192)
   3.70%  │↗  0x00007f1f82ffeda0:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub@33 (line 192)
   2.47%  ││  0x00007f1f82ffeda7:   test   %eax,(%r11)                  ;   {poll}
   3.38%  ││  0x00007f1f82ffedaa:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub@13 (line 190)
          ↘│  0x00007f1f82ffedaf:   mov    0x8(%rsp),%r10
   0.07%   │  0x00007f1f82ffedb4:   mov    %r10,%rsi
   2.46%   │  0x00007f1f82ffedb7:   call   0x00007f1f7b4ffa80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual final_property {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
  49.55%   │  0x00007f1f82ffedbc:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub@20 (line 190)
   0.00%   │  0x00007f1f82ffedbd:   mov    0x20(%rsp),%r10
           │  0x00007f1f82ffedc2:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub@26 (line 191)
   6.17%   │  0x00007f1f82ffedc5:   mov    0x18(%rsp),%rsi
           │  0x00007f1f82ffedca:   cmpb   $0x0,0x94(%rsi)
   7.10%   ╰  0x00007f1f82ffedd1:   je     0x00007f1f82ffeda0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub@33 (line 192)
              0x00007f1f82ffedd3:   mov    %r10,0x20(%rsp)
              0x00007f1f82ffedd8:   call   0x00007f1f9a5a56f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f1f82ffeddd:   nop
              0x00007f1f82ffedde:   mov    0x10(%rsp),%rdx
              0x00007f1f82ffede3:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub@40 (line 193)
              0x00007f1f82ffede7:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub@46 (line 194)
              0x00007f1f82ffedef:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  74.89%  <total for region 1>

....[Hottest Region 2]..............................................................................
c1, level 1, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::final_property, version 1, compile id 734 

           [Entry Point]
             # {method} {0x00007f1f62c734a0} &apos;final_property&apos; &apos;()Ljava/lang/String;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/JustInTimeConstantsBenchmark&apos;
             #           [sp+0x40]  (sp of caller)
             0x00007f1f82ffc4a0:   mov    0x8(%rsi),%r10d
             0x00007f1f82ffc4a4:   movabs $0x800000000,%r11
             0x00007f1f82ffc4ae:   add    %r11,%r10
             0x00007f1f82ffc4b1:   cmp    %rax,%r10
             0x00007f1f82ffc4b4:   jne    0x00007f1f7b4ff780           ;   {runtime_call ic_miss_stub}
             0x00007f1f82ffc4ba:   nopw   0x0(%rax,%rax,1)
           [Verified Entry Point]
   3.35%     0x00007f1f82ffc4c0:   mov    %eax,-0x14000(%rsp)
   2.64%     0x00007f1f82ffc4c7:   push   %rbp
   3.38%     0x00007f1f82ffc4c8:   sub    $0x30,%rsp                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::final_property@0 (line 56)
   0.07%     0x00007f1f82ffc4cc:   mov    0xc(%rsi),%eax
   2.58%     0x00007f1f82ffc4cf:   shl    $0x3,%rax                    ;*getfield finalProperty {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::final_property@1 (line 56)
   3.31%     0x00007f1f82ffc4d3:   add    $0x30,%rsp
             0x00007f1f82ffc4d7:   pop    %rbp
   0.06%     0x00007f1f82ffc4d8:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ╭  0x00007f1f82ffc4df:   ja     0x00007f1f82ffc4e6
   6.06%  │  0x00007f1f82ffc4e5:   ret    
          ↘  0x00007f1f82ffc4e6:   movabs $0x7f1f82ffc4d8,%r10         ;   {internal_word}
             0x00007f1f82ffc4f0:   mov    %r10,0x358(%r15)
             0x00007f1f82ffc4f7:   jmp    0x00007f1f7b506100           ;   {runtime_call SafepointBlob}
             0x00007f1f82ffc4fc:   nop
             0x00007f1f82ffc4fd:   nop
             0x00007f1f82ffc4fe:   mov    0x3d8(%r15),%rax
             0x00007f1f82ffc505:   movq   $0x0,0x3d8(%r15)
             0x00007f1f82ffc510:   movq   $0x0,0x3e0(%r15)
             0x00007f1f82ffc51b:   add    $0x30,%rsp
             0x00007f1f82ffc51f:   pop    %rbp
....................................................................................................
  21.45%  <total for region 2>

....[Hottest Regions]...............................................................................
  74.89%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub, version 6, compile id 757 
  21.45%          c1, level 1  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::final_property, version 1, compile id 734 
   1.44%    [kernel.kallsyms]  native_write_msr 
   0.32%    [kernel.kallsyms]  __intel_pmu_enable_all.constprop.0 
   0.07%    [kernel.kallsyms]  __entry_text_start 
   0.06%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.06%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.06%    [kernel.kallsyms]  error_entry 
   0.06%    [kernel.kallsyms]  asm_sysvec_apic_timer_interrupt 
   0.05%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.04%    [kernel.kallsyms]  __free_one_page 
   0.04%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.04%    [kernel.kallsyms]  irqentry_exit_to_user_mode 
   0.03%    [kernel.kallsyms]  free_pcppages_bulk 
   0.03%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.03%    [kernel.kallsyms]  page_remove_rmap 
   0.03%    [kernel.kallsyms]  __mod_node_page_state 
   0.02%    [kernel.kallsyms]  free_swap_cache 
   0.02%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.02%    [kernel.kallsyms]  __irqentry_text_end 
   1.24%  <...other 332 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  74.89%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub, version 6, compile id 757 
  21.45%          c1, level 1  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::final_property, version 1, compile id 734 
   1.44%    [kernel.kallsyms]  native_write_msr 
   0.32%    [kernel.kallsyms]  __intel_pmu_enable_all.constprop.0 
   0.09%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.09%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.09%                       <unknown> 
   0.08%    [kernel.kallsyms]  __free_one_page 
   0.07%    [kernel.kallsyms]  __entry_text_start 
   0.06%    [kernel.kallsyms]  release_pages 
   0.06%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.06%    [kernel.kallsyms]  error_entry 
   0.06%    [kernel.kallsyms]  asm_sysvec_apic_timer_interrupt 
   0.05%    [kernel.kallsyms]  __irqentry_text_end 
   0.04%    [kernel.kallsyms]  free_pcppages_bulk 
   0.04%    [kernel.kallsyms]  irqentry_exit_to_user_mode 
   0.03%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.03%    [kernel.kallsyms]  page_remove_rmap 
   0.03%    [kernel.kallsyms]  free_unref_page_commit.isra.0 
   0.03%    [kernel.kallsyms]  uncharge_page 
   1.01%  <...other 221 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  74.89%       jvmci, level 4
  21.45%          c1, level 1
   3.35%    [kernel.kallsyms]
   0.09%                     
   0.08%            libjvm.so
   0.08%         libc-2.31.so
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.00%  libjvmcicompiler.so
   0.00%     Unknown, level 0
   0.00%               kvm.ko
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.property

# Run progress: 25.00% complete, ETA 00:05:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.244 ns/op
# Warmup Iteration   2: 6.188 ns/op
# Warmup Iteration   3: 6.220 ns/op
# Warmup Iteration   4: 6.189 ns/op
# Warmup Iteration   5: 6.210 ns/op
Iteration   1: 6.198 ns/op
Iteration   2: 6.195 ns/op
Iteration   3: 6.189 ns/op
Iteration   4: 6.193 ns/op
Iteration   5: 6.195 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.property":
  6.194 ±(99.9%) 0.013 ns/op [Average]
  (min, avg, max) = (6.189, 6.194, 6.198), stdev = 0.003
  CI (99.9%): [6.181, 6.207] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.property:·asm":
PrintAssembly processed: 194551 total address lines.
Perf output processed (skipped 59.063 seconds):
 Column 1: cycles (50726 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub, version 6, compile id 759 

              0x00007f0262ffebf5:   mov    0x18(%rsp),%rsi
              0x00007f0262ffebfa:   nopw   0x0(%rax,%rax,1)
              0x00007f0262ffec00:   cmpb   $0x0,0x94(%rsi)
              0x00007f0262ffec07:   jne    0x00007f0262ffec8e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub@33 (line 192)
              0x00007f0262ffec0d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f0262ffec16:   jmp    0x00007f0262ffec2f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub@13 (line 190)
          │   0x00007f0262ffec1b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub@33 (line 192)
   3.48%  │↗  0x00007f0262ffec20:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub@33 (line 192)
   2.50%  ││  0x00007f0262ffec27:   test   %eax,(%r11)                  ;   {poll}
   3.48%  ││  0x00007f0262ffec2a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub@13 (line 190)
          ↘│  0x00007f0262ffec2f:   mov    0x8(%rsp),%r10
   0.04%   │  0x00007f0262ffec34:   mov    %r10,%rsi
   2.51%   │  0x00007f0262ffec37:   call   0x00007f025b4ffa80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual property {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
  49.96%   │  0x00007f0262ffec3c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub@20 (line 190)
           │  0x00007f0262ffec3d:   mov    0x20(%rsp),%r10
           │  0x00007f0262ffec42:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub@26 (line 191)
   6.00%   │  0x00007f0262ffec45:   mov    0x18(%rsp),%rsi
           │  0x00007f0262ffec4a:   cmpb   $0x0,0x94(%rsi)
   7.11%   ╰  0x00007f0262ffec51:   je     0x00007f0262ffec20           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub@33 (line 192)
              0x00007f0262ffec53:   mov    %r10,0x20(%rsp)
              0x00007f0262ffec58:   call   0x00007f027c7726f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f0262ffec5d:   nop
              0x00007f0262ffec5e:   mov    0x10(%rsp),%rdx
              0x00007f0262ffec63:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub@40 (line 193)
              0x00007f0262ffec67:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub@46 (line 194)
              0x00007f0262ffec6f:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  75.07%  <total for region 1>

....[Hottest Region 2]..............................................................................
c1, level 1, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::property, version 1, compile id 733 

           [Entry Point]
             # {method} {0x00007f0251073620} &apos;property&apos; &apos;()Ljava/lang/String;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/JustInTimeConstantsBenchmark&apos;
             #           [sp+0x40]  (sp of caller)
             0x00007f0262ffbaa0:   mov    0x8(%rsi),%r10d
             0x00007f0262ffbaa4:   movabs $0x800000000,%r11
             0x00007f0262ffbaae:   add    %r11,%r10
             0x00007f0262ffbab1:   cmp    %rax,%r10
             0x00007f0262ffbab4:   jne    0x00007f025b4ff780           ;   {runtime_call ic_miss_stub}
             0x00007f0262ffbaba:   nopw   0x0(%rax,%rax,1)
           [Verified Entry Point]
   3.62%     0x00007f0262ffbac0:   mov    %eax,-0x14000(%rsp)
   2.70%     0x00007f0262ffbac7:   push   %rbp
   3.46%     0x00007f0262ffbac8:   sub    $0x30,%rsp                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::property@0 (line 68)
   0.04%     0x00007f0262ffbacc:   mov    0x10(%rsi),%eax
   2.58%     0x00007f0262ffbacf:   shl    $0x3,%rax                    ;*getfield property {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::property@1 (line 68)
   3.58%     0x00007f0262ffbad3:   add    $0x30,%rsp
             0x00007f0262ffbad7:   pop    %rbp
   0.03%     0x00007f0262ffbad8:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ╭  0x00007f0262ffbadf:   ja     0x00007f0262ffbae6
   6.19%  │  0x00007f0262ffbae5:   ret    
          ↘  0x00007f0262ffbae6:   movabs $0x7f0262ffbad8,%r10         ;   {internal_word}
             0x00007f0262ffbaf0:   mov    %r10,0x358(%r15)
             0x00007f0262ffbaf7:   jmp    0x00007f025b506100           ;   {runtime_call SafepointBlob}
             0x00007f0262ffbafc:   nop
             0x00007f0262ffbafd:   nop
             0x00007f0262ffbafe:   mov    0x3d8(%r15),%rax
             0x00007f0262ffbb05:   movq   $0x0,0x3d8(%r15)
             0x00007f0262ffbb10:   movq   $0x0,0x3e0(%r15)
             0x00007f0262ffbb1b:   add    $0x30,%rsp
             0x00007f0262ffbb1f:   pop    %rbp
....................................................................................................
  22.20%  <total for region 2>

....[Hottest Regions]...............................................................................
  75.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub, version 6, compile id 759 
  22.20%          c1, level 1  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::property, version 1, compile id 733 
   1.21%    [kernel.kallsyms]  native_write_msr 
   0.09%                       <unknown> 
   0.06%    [kernel.kallsyms]  __entry_text_start 
   0.06%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.05%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.05%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.05%                       <unknown> 
   0.04%    [kernel.kallsyms]  page_remove_rmap 
   0.04%    [kernel.kallsyms]  __free_one_page 
   0.04%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.03%    [kernel.kallsyms]  free_pcppages_bulk 
   0.02%    [kernel.kallsyms]  __mod_zone_page_state 
   0.02%    [kernel.kallsyms]  free_swap_cache 
   0.02%    [kernel.kallsyms]  mutex_lock 
   0.02%    [kernel.kallsyms]  release_pages 
   0.02%    [kernel.kallsyms]  release_pages 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%    [kernel.kallsyms]  __mod_node_page_state 
   0.90%  <...other 253 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  75.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub, version 6, compile id 759 
  22.20%          c1, level 1  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::property, version 1, compile id 733 
   1.21%    [kernel.kallsyms]  native_write_msr 
   0.22%                       <unknown> 
   0.11%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.09%    [kernel.kallsyms]  __free_one_page 
   0.08%    [kernel.kallsyms]  release_pages 
   0.08%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.06%    [kernel.kallsyms]  __entry_text_start 
   0.04%    [kernel.kallsyms]  page_remove_rmap 
   0.04%    [kernel.kallsyms]  free_pcppages_bulk 
   0.04%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.02%    [kernel.kallsyms]  __mod_zone_page_state 
   0.02%    [kernel.kallsyms]  free_swap_cache 
   0.02%    [kernel.kallsyms]  mutex_lock 
   0.02%    [kernel.kallsyms]  __mod_lruvec_page_state 
   0.02%    [kernel.kallsyms]  free_unref_page_commit.isra.0 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%    [kernel.kallsyms]  mem_cgroup_update_lru_size 
   0.02%    [kernel.kallsyms]  free_unref_page_list 
   0.63%  <...other 167 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  75.07%       jvmci, level 4
  22.20%          c1, level 1
   2.25%    [kernel.kallsyms]
   0.22%                     
   0.11%            libjvm.so
   0.08%         libc-2.31.so
   0.02%  libjvmcicompiler.so
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.00%      perf-161525.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.static_final_property

# Run progress: 50.00% complete, ETA 00:03:45
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5.851 ns/op
# Warmup Iteration   2: 5.906 ns/op
# Warmup Iteration   3: 5.831 ns/op
# Warmup Iteration   4: 5.830 ns/op
# Warmup Iteration   5: 5.830 ns/op
Iteration   1: 5.830 ns/op
Iteration   2: 5.799 ns/op
Iteration   3: 5.830 ns/op
Iteration   4: 5.830 ns/op
Iteration   5: 5.800 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.static_final_property":
  5.818 ±(99.9%) 0.064 ns/op [Average]
  (min, avg, max) = (5.799, 5.818, 5.830), stdev = 0.017
  CI (99.9%): [5.754, 5.882] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.static_final_property:·asm":
PrintAssembly processed: 197223 total address lines.
Perf output processed (skipped 59.251 seconds):
 Column 1: cycles (50604 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub, version 5, compile id 756 

              0x00007f1122fff6f5:   mov    0x18(%rsp),%rsi
              0x00007f1122fff6fa:   nopw   0x0(%rax,%rax,1)
              0x00007f1122fff700:   cmpb   $0x0,0x94(%rsi)
              0x00007f1122fff707:   jne    0x00007f1122fff78e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub@33 (line 192)
              0x00007f1122fff70d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f1122fff716:   jmp    0x00007f1122fff72f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub@13 (line 190)
          │   0x00007f1122fff71b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub@33 (line 192)
   6.45%  │↗  0x00007f1122fff720:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub@33 (line 192)
          ││  0x00007f1122fff727:   test   %eax,(%r11)                  ;   {poll}
  13.19%  ││  0x00007f1122fff72a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub@13 (line 190)
          ↘│  0x00007f1122fff72f:   mov    0x8(%rsp),%r10
           │  0x00007f1122fff734:   mov    %r10,%rsi
           │  0x00007f1122fff737:   call   0x00007f111b4ffa80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual static_final_property {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
           │  0x00007f1122fff73c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub@20 (line 190)
           │  0x00007f1122fff73d:   mov    0x20(%rsp),%r10
  19.44%   │  0x00007f1122fff742:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub@26 (line 191)
   6.48%   │  0x00007f1122fff745:   mov    0x18(%rsp),%rsi
   0.00%   │  0x00007f1122fff74a:   cmpb   $0x0,0x94(%rsi)
  26.13%   ╰  0x00007f1122fff751:   je     0x00007f1122fff720           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub@33 (line 192)
              0x00007f1122fff753:   mov    %r10,0x20(%rsp)
              0x00007f1122fff758:   call   0x00007f1139b2e6f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f1122fff75d:   nop
              0x00007f1122fff75e:   mov    0x10(%rsp),%rdx
              0x00007f1122fff763:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub@40 (line 193)
              0x00007f1122fff767:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub@46 (line 194)
              0x00007f1122fff76f:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  71.69%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::static_final_property, version 2, compile id 735 

            #           [sp+0x10]  (sp of caller)
            0x00007f1122ff8b00:   mov    0x8(%rsi),%r10d
            0x00007f1122ff8b04:   movabs $0x800000000,%r12
            0x00007f1122ff8b0e:   add    %r12,%r10
            0x00007f1122ff8b11:   xor    %r12,%r12
            0x00007f1122ff8b14:   cmp    %r10,%rax
            0x00007f1122ff8b17:   jne    0x00007f111b4ff780           ;   {runtime_call ic_miss_stub}
            0x00007f1122ff8b1d:   nop
            0x00007f1122ff8b1e:   xchg   %ax,%ax
          [Verified Entry Point]
   6.63%    0x00007f1122ff8b20:   nopl   0x0(%rax,%rax,1)
   0.00%    0x00007f1122ff8b25:   movabs $0x7ffa03950,%rax            ;   {oop(&quot;/home/gogu/bench_jdks/graalvm-ce-java17-22.3.0&quot;{0x00000007ffa03950})}
            0x00007f1122ff8b2f:   mov    0x348(%r15),%rcx
   6.47%    0x00007f1122ff8b36:   test   %eax,(%rcx)                  ;   {poll_return}
  12.59%    0x00007f1122ff8b38:   ret    
          [Exception Handler]
            0x00007f1122ff8b39:   call   0x00007f111b649e00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007f1122ff8b3e:   nop
            0x00007f1122ff8b3f:   nop
          [Deopt Handler Code]
            0x00007f1122ff8b40:   call   0x00007f111b505020           ;   {runtime_call DeoptimizationBlob}
            0x00007f1122ff8b45:   nop
          [Stub Code]
            0x00007f1122ff8b46:   hlt    
            0x00007f1122ff8b47:   hlt    
....................................................................................................
  25.69%  <total for region 2>

....[Hottest Regions]...............................................................................
  71.69%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub, version 5, compile id 756 
  25.69%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::static_final_property, version 2, compile id 735 
   0.91%    [kernel.kallsyms]  native_write_msr 
   0.09%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.09%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.06%    [kernel.kallsyms]  x86_pmu_enable 
   0.06%    [kernel.kallsyms]  __entry_text_start 
   0.06%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.06%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.04%    [kernel.kallsyms]  page_remove_rmap 
   0.03%    [kernel.kallsyms]  __mod_zone_page_state 
   0.03%    [kernel.kallsyms]  __free_one_page 
   0.03%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.03%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.03%    [kernel.kallsyms]  page_counter_try_charge 
   0.03%    [kernel.kallsyms]  free_pcppages_bulk 
   0.03%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.02%    [kernel.kallsyms]  release_pages 
   0.02%    [kernel.kallsyms]  __tlb_remove_page_size 
   0.02%    [kernel.kallsyms]  free_swap_cache 
   1.00%  <...other 280 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  71.69%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub, version 5, compile id 756 
  25.69%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::static_final_property, version 2, compile id 735 
   0.91%    [kernel.kallsyms]  native_write_msr 
   0.15%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.09%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.07%                       <unknown> 
   0.07%    [kernel.kallsyms]  release_pages 
   0.07%    [kernel.kallsyms]  __free_one_page 
   0.06%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.06%    [kernel.kallsyms]  __entry_text_start 
   0.06%    [kernel.kallsyms]  x86_pmu_enable 
   0.06%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.04%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.04%    [kernel.kallsyms]  page_remove_rmap 
   0.04%    [kernel.kallsyms]  free_pcppages_bulk 
   0.03%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.03%    [kernel.kallsyms]  __mod_zone_page_state 
   0.03%    [kernel.kallsyms]  page_counter_try_charge 
   0.02%    [kernel.kallsyms]  free_unref_page_commit.isra.0 
   0.02%    [kernel.kallsyms]  __mod_node_page_state 
   0.78%  <...other 197 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.38%       jvmci, level 4
   2.27%    [kernel.kallsyms]
   0.13%            libjvm.so
   0.09%         libc-2.31.so
   0.07%                     
   0.02%  libjvmcicompiler.so
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.00%               kvm.ko
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.static_property

# Run progress: 75.00% complete, ETA 00:01:52
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5.828 ns/op
# Warmup Iteration   2: 5.801 ns/op
# Warmup Iteration   3: 5.850 ns/op
# Warmup Iteration   4: 5.814 ns/op
# Warmup Iteration   5: 5.799 ns/op
Iteration   1: 5.800 ns/op
Iteration   2: 5.801 ns/op
Iteration   3: 5.804 ns/op
Iteration   4: 5.800 ns/op
Iteration   5: 5.798 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.static_property":
  5.801 ±(99.9%) 0.009 ns/op [Average]
  (min, avg, max) = (5.798, 5.801, 5.804), stdev = 0.002
  CI (99.9%): [5.792, 5.809] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.static_property:·asm":
PrintAssembly processed: 190074 total address lines.
Perf output processed (skipped 58.981 seconds):
 Column 1: cycles (50821 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub, version 6, compile id 747 

              0x00007f1792ffd6f5:   mov    0x18(%rsp),%rsi
              0x00007f1792ffd6fa:   nopw   0x0(%rax,%rax,1)
              0x00007f1792ffd700:   cmpb   $0x0,0x94(%rsi)
              0x00007f1792ffd707:   jne    0x00007f1792ffd78e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub@33 (line 192)
              0x00007f1792ffd70d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f1792ffd716:   jmp    0x00007f1792ffd72f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub@13 (line 190)
          │   0x00007f1792ffd71b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub@33 (line 192)
   6.38%  │↗  0x00007f1792ffd720:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub@33 (line 192)
          ││  0x00007f1792ffd727:   test   %eax,(%r11)                  ;   {poll}
   6.49%  ││  0x00007f1792ffd72a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub@13 (line 190)
          ↘│  0x00007f1792ffd72f:   mov    0x8(%rsp),%r10
   0.02%   │  0x00007f1792ffd734:   mov    %r10,%rsi
           │  0x00007f1792ffd737:   call   0x00007f178b4ffa80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual static_property {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
   0.04%   │  0x00007f1792ffd73c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub@20 (line 190)
           │  0x00007f1792ffd73d:   mov    0x20(%rsp),%r10
  25.94%   │  0x00007f1792ffd742:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub@26 (line 191)
   6.44%   │  0x00007f1792ffd745:   mov    0x18(%rsp),%rsi
   0.02%   │  0x00007f1792ffd74a:   cmpb   $0x0,0x94(%rsi)
  26.04%   ╰  0x00007f1792ffd751:   je     0x00007f1792ffd720           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub@33 (line 192)
              0x00007f1792ffd753:   mov    %r10,0x20(%rsp)
              0x00007f1792ffd758:   call   0x00007f17ab2356f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f1792ffd75d:   nop
              0x00007f1792ffd75e:   mov    0x10(%rsp),%rdx
              0x00007f1792ffd763:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub@40 (line 193)
              0x00007f1792ffd767:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub@46 (line 194)
              0x00007f1792ffd76f:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  71.36%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::static_property, version 2, compile id 726 

            #           [sp+0x10]  (sp of caller)
            0x00007f1792ffab00:   mov    0x8(%rsi),%r10d
            0x00007f1792ffab04:   movabs $0x800000000,%r12
            0x00007f1792ffab0e:   add    %r12,%r10
            0x00007f1792ffab11:   xor    %r12,%r12
            0x00007f1792ffab14:   cmp    %r10,%rax
            0x00007f1792ffab17:   jne    0x00007f178b4ff780           ;   {runtime_call ic_miss_stub}
            0x00007f1792ffab1d:   nop
            0x00007f1792ffab1e:   xchg   %ax,%ax
          [Verified Entry Point]
   6.55%    0x00007f1792ffab20:   nopl   0x0(%rax,%rax,1)
   0.01%    0x00007f1792ffab25:   movabs $0x7ff4d7c30,%rax            ;   {oop(a &apos;java/lang/Class&apos;{0x00000007ff4d7c30} = &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/JustInTimeConstantsBenchmark&apos;)}
            0x00007f1792ffab2f:   mov    0x74(%rax),%eax
   6.48%    0x00007f1792ffab32:   shl    $0x3,%rax                    ;*getstatic staticProperty {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::static_property@0 (line 62)
   0.00%    0x00007f1792ffab36:   mov    0x348(%r15),%rcx
   0.01%    0x00007f1792ffab3d:   test   %eax,(%rcx)                  ;   {poll_return}
  12.74%    0x00007f1792ffab3f:   ret    
          [Exception Handler]
            0x00007f1792ffab40:   call   0x00007f178b64ae00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007f1792ffab45:   nop
          [Deopt Handler Code]
            0x00007f1792ffab46:   call   0x00007f178b505020           ;   {runtime_call DeoptimizationBlob}
            0x00007f1792ffab4b:   nop
          [Stub Code]
            0x00007f1792ffab4c:   hlt    
            0x00007f1792ffab4d:   hlt    
            0x00007f1792ffab4e:   hlt    
....................................................................................................
  25.79%  <total for region 2>

....[Hottest Regions]...............................................................................
  71.36%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub, version 6, compile id 747 
  25.79%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::static_property, version 2, compile id 726 
   1.43%    [kernel.kallsyms]  native_write_msr 
   0.08%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.06%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.05%    [kernel.kallsyms]  page_remove_rmap 
   0.04%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.04%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.03%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.03%    [kernel.kallsyms]  free_pcppages_bulk 
   0.03%    [kernel.kallsyms]  __entry_text_start 
   0.02%    [kernel.kallsyms]  __mod_node_page_state 
   0.02%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.02%    [kernel.kallsyms]  release_pages 
   0.02%    [kernel.kallsyms]  free_swap_cache 
   0.02%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.02%    [kernel.kallsyms]  release_pages 
   0.02%    [kernel.kallsyms]  __free_one_page 
   0.02%    [kernel.kallsyms]  __mod_lruvec_state 
   0.02%    [kernel.kallsyms]  rcu_read_unlock_strict 
   0.88%  <...other 246 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  71.36%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub, version 6, compile id 747 
  25.79%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::static_property, version 2, compile id 726 
   1.43%    [kernel.kallsyms]  native_write_msr 
   0.09%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.08%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.08%                       <unknown> 
   0.08%    [kernel.kallsyms]  release_pages 
   0.07%    [kernel.kallsyms]  __free_one_page 
   0.06%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.05%    [kernel.kallsyms]  page_remove_rmap 
   0.04%    [kernel.kallsyms]  free_pcppages_bulk 
   0.04%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.03%    [kernel.kallsyms]  __mod_node_page_state 
   0.03%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.03%    [kernel.kallsyms]  __entry_text_start 
   0.02%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.02%    [kernel.kallsyms]  free_swap_cache 
   0.02%    [kernel.kallsyms]  free_unref_page_commit.isra.0 
   0.02%    [kernel.kallsyms]  __mod_lruvec_state 
   0.02%    [kernel.kallsyms]  __mod_lruvec_page_state 
   0.65%  <...other 171 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.15%       jvmci, level 4
   2.56%    [kernel.kallsyms]
   0.09%            libjvm.so
   0.08%                     
   0.06%         libc-2.31.so
   0.02%   libpthread-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.00%              i915.ko
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:07:30

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
JustInTimeConstantsBenchmark.final_property              avgt    5  6.196 ± 0.025  ns/op
JustInTimeConstantsBenchmark.final_property:·asm         avgt         NaN            ---
JustInTimeConstantsBenchmark.property                    avgt    5  6.194 ± 0.013  ns/op
JustInTimeConstantsBenchmark.property:·asm               avgt         NaN            ---
JustInTimeConstantsBenchmark.static_final_property       avgt    5  5.818 ± 0.064  ns/op
JustInTimeConstantsBenchmark.static_final_property:·asm  avgt         NaN            ---
JustInTimeConstantsBenchmark.static_property             avgt    5  5.801 ± 0.009  ns/op
JustInTimeConstantsBenchmark.static_property:·asm        avgt         NaN            ---
