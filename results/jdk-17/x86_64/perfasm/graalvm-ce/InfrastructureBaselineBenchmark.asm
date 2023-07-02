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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_baseline

# Run progress: 0.00% complete, ETA 00:11:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5.430 ns/op
# Warmup Iteration   2: 5.452 ns/op
# Warmup Iteration   3: 5.414 ns/op
# Warmup Iteration   4: 5.441 ns/op
# Warmup Iteration   5: 5.415 ns/op
Iteration   1: 5.414 ns/op
Iteration   2: 5.441 ns/op
Iteration   3: 5.441 ns/op
Iteration   4: 5.414 ns/op
Iteration   5: 5.442 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_baseline":
  5.430 ±(99.9%) 0.057 ns/op [Average]
  (min, avg, max) = (5.414, 5.430, 5.442), stdev = 0.015
  CI (99.9%): [5.373, 5.487] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_baseline:·asm":
PrintAssembly processed: 191787 total address lines.
Perf output processed (skipped 59.035 seconds):
 Column 1: cycles (50592 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub, version 5, compile id 754 

              0x00007f8d42ffe8f2:   cmpb   $0x0,0x94(%rsi)
              0x00007f8d42ffe8f9:   jne    0x00007f8d42ffe98e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub@28 (line 192)
              0x00007f8d42ffe8ff:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f8d42ffe908:   jmp    0x00007f8d42ffe92f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub@13 (line 190)
          │   0x00007f8d42ffe90d:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f8d42ffe918:   data16 data16 xchg %ax,%ax
          │   0x00007f8d42ffe91c:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub@28 (line 192)
   6.87%  │↗  0x00007f8d42ffe920:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub@28 (line 192)
          ││  0x00007f8d42ffe927:   test   %eax,(%r11)                  ;   {poll}
  14.04%  ││  0x00007f8d42ffe92a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub@13 (line 190)
          ↘│  0x00007f8d42ffe92f:   mov    0x8(%rsp),%r10
   0.00%   │  0x00007f8d42ffe934:   mov    %r10,%rsi
           │  0x00007f8d42ffe937:   call   0x00007f8d3b4ffa80           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual method_baseline {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub@15 (line 190)
           │                                                            ;   {optimized virtual_call}
           │  0x00007f8d42ffe93c:   nop
           │  0x00007f8d42ffe93d:   mov    0x20(%rsp),%r10
  13.79%   │  0x00007f8d42ffe942:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub@21 (line 191)
   7.00%   │  0x00007f8d42ffe945:   mov    0x18(%rsp),%rsi
   0.00%   │  0x00007f8d42ffe94a:   cmpb   $0x0,0x94(%rsi)
  27.97%   ╰  0x00007f8d42ffe951:   je     0x00007f8d42ffe920           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub@28 (line 192)
              0x00007f8d42ffe953:   mov    %r10,0x20(%rsp)
              0x00007f8d42ffe958:   call   0x00007f8d5b4216f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f8d42ffe95d:   nop
              0x00007f8d42ffe95e:   mov    0x10(%rsp),%rdx
              0x00007f8d42ffe963:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub@35 (line 193)
              0x00007f8d42ffe967:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub@41 (line 194)
              0x00007f8d42ffe96f:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  69.66%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_baseline, version 2, compile id 735 

            #           [sp+0x10]  (sp of caller)
            0x00007f8d42ffa580:   mov    0x8(%rsi),%r10d
            0x00007f8d42ffa584:   movabs $0x800000000,%r12
            0x00007f8d42ffa58e:   add    %r12,%r10
            0x00007f8d42ffa591:   xor    %r12,%r12
            0x00007f8d42ffa594:   cmp    %r10,%rax
            0x00007f8d42ffa597:   jne    0x00007f8d3b4ff780           ;   {runtime_call ic_miss_stub}
            0x00007f8d42ffa59d:   nop
            0x00007f8d42ffa59e:   xchg   %ax,%ax
          [Verified Entry Point]
   6.86%    0x00007f8d42ffa5a0:   nopl   0x0(%rax,%rax,1)
            0x00007f8d42ffa5a5:   mov    0x348(%r15),%rcx
            0x00007f8d42ffa5ac:   test   %eax,(%rcx)                  ;   {poll_return}
  20.95%    0x00007f8d42ffa5ae:   ret    
          [Exception Handler]
            0x00007f8d42ffa5af:   call   0x00007f8d3b64b100           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007f8d42ffa5b4:   nop
          [Deopt Handler Code]
            0x00007f8d42ffa5b5:   call   0x00007f8d3b505020           ;   {runtime_call DeoptimizationBlob}
            0x00007f8d42ffa5ba:   nop
          [Stub Code]
            0x00007f8d42ffa5bb:   hlt    
            0x00007f8d42ffa5bc:   hlt    
            0x00007f8d42ffa5bd:   hlt    
....................................................................................................
  27.81%  <total for region 2>

....[Hottest Regions]...............................................................................
  69.66%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub, version 5, compile id 754 
  27.81%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_baseline, version 2, compile id 735 
   0.78%    [kernel.kallsyms]  native_write_msr 
   0.09%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.08%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.07%    [kernel.kallsyms]  __entry_text_start 
   0.06%    [kernel.kallsyms]  page_remove_rmap 
   0.06%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.06%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.05%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.04%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.03%    [kernel.kallsyms]  __free_one_page 
   0.03%    [kernel.kallsyms]  free_swap_cache 
   0.03%    [kernel.kallsyms]  release_pages 
   0.02%    [kernel.kallsyms]  __mod_zone_page_state 
   0.02%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.02%    [kernel.kallsyms]  free_pcppages_bulk 
   0.02%    [kernel.kallsyms]  mutex_unlock 
   0.02%    [kernel.kallsyms]  _raw_spin_lock_irqsave 
   0.01%    [kernel.kallsyms]  __intel_pmu_enable_all.constprop.0 
   1.04%  <...other 301 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  69.66%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub, version 5, compile id 754 
  27.81%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_baseline, version 2, compile id 735 
   0.78%    [kernel.kallsyms]  native_write_msr 
   0.12%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.09%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.08%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.07%                       <unknown> 
   0.07%    [kernel.kallsyms]  release_pages 
   0.07%    [kernel.kallsyms]  __free_one_page 
   0.07%    [kernel.kallsyms]  __entry_text_start 
   0.06%    [kernel.kallsyms]  page_remove_rmap 
   0.06%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.05%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.03%    [kernel.kallsyms]  free_pcppages_bulk 
   0.03%    [kernel.kallsyms]  free_swap_cache 
   0.02%    [kernel.kallsyms]  __mod_node_page_state 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%    [kernel.kallsyms]  mem_cgroup_update_lru_size 
   0.02%    [kernel.kallsyms]  free_unref_page_list 
   0.02%    [kernel.kallsyms]  uncharge_page 
   0.82%  <...other 202 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.47%       jvmci, level 4
   2.13%    [kernel.kallsyms]
   0.15%            libjvm.so
   0.10%         libc-2.31.so
   0.07%                     
   0.02%  libjvmcicompiler.so
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.00%          c1, level 3
   0.00%               [vdso]
   0.00%      perf-160780.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_blank

# Run progress: 14.29% complete, ETA 00:11:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5.475 ns/op
# Warmup Iteration   2: 5.427 ns/op
# Warmup Iteration   3: 5.461 ns/op
# Warmup Iteration   4: 5.414 ns/op
# Warmup Iteration   5: 5.442 ns/op
Iteration   1: 5.441 ns/op
Iteration   2: 5.415 ns/op
Iteration   3: 5.414 ns/op
Iteration   4: 5.414 ns/op
Iteration   5: 5.414 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_blank":
  5.420 ±(99.9%) 0.047 ns/op [Average]
  (min, avg, max) = (5.414, 5.420, 5.441), stdev = 0.012
  CI (99.9%): [5.373, 5.466] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_blank:·asm":
PrintAssembly processed: 188387 total address lines.
Perf output processed (skipped 58.835 seconds):
 Column 1: cycles (50662 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub, version 6, compile id 750 

              0x00007f3d5effdc72:   cmpb   $0x0,0x94(%rsi)
              0x00007f3d5effdc79:   jne    0x00007f3d5effdd0e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub@28 (line 192)
              0x00007f3d5effdc7f:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f3d5effdc88:   jmp    0x00007f3d5effdcaf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub@13 (line 190)
          │   0x00007f3d5effdc8d:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f3d5effdc98:   data16 data16 xchg %ax,%ax
          │   0x00007f3d5effdc9c:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub@28 (line 192)
   6.99%  │↗  0x00007f3d5effdca0:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub@28 (line 192)
          ││  0x00007f3d5effdca7:   test   %eax,(%r11)                  ;   {poll}
  13.64%  ││  0x00007f3d5effdcaa:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub@13 (line 190)
          ↘│  0x00007f3d5effdcaf:   mov    0x8(%rsp),%r10
   0.02%   │  0x00007f3d5effdcb4:   mov    %r10,%rsi
           │  0x00007f3d5effdcb7:   call   0x00007f3d574ffa80           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual method_blank {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub@15 (line 190)
           │                                                            ;   {optimized virtual_call}
           │  0x00007f3d5effdcbc:   nop
   0.01%   │  0x00007f3d5effdcbd:   mov    0x20(%rsp),%r10
  14.11%   │  0x00007f3d5effdcc2:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub@21 (line 191)
   6.93%   │  0x00007f3d5effdcc5:   mov    0x18(%rsp),%rsi
   0.01%   │  0x00007f3d5effdcca:   cmpb   $0x0,0x94(%rsi)
  27.66%   ╰  0x00007f3d5effdcd1:   je     0x00007f3d5effdca0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub@28 (line 192)
              0x00007f3d5effdcd3:   mov    %r10,0x20(%rsp)
              0x00007f3d5effdcd8:   call   0x00007f3d756646f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f3d5effdcdd:   nop
              0x00007f3d5effdcde:   mov    0x10(%rsp),%rdx
              0x00007f3d5effdce3:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub@35 (line 193)
              0x00007f3d5effdce7:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub@41 (line 194)
              0x00007f3d5effdcef:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  69.35%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_blank, version 2, compile id 730 

            #           [sp+0x10]  (sp of caller)
            0x00007f3d5effbe80:   mov    0x8(%rsi),%r10d
            0x00007f3d5effbe84:   movabs $0x800000000,%r12
            0x00007f3d5effbe8e:   add    %r12,%r10
            0x00007f3d5effbe91:   xor    %r12,%r12
            0x00007f3d5effbe94:   cmp    %r10,%rax
            0x00007f3d5effbe97:   jne    0x00007f3d574ff780           ;   {runtime_call ic_miss_stub}
            0x00007f3d5effbe9d:   nop
            0x00007f3d5effbe9e:   xchg   %ax,%ax
          [Verified Entry Point]
   6.79%    0x00007f3d5effbea0:   nopl   0x0(%rax,%rax,1)
   0.01%    0x00007f3d5effbea5:   mov    0x348(%r15),%rcx
   0.00%    0x00007f3d5effbeac:   test   %eax,(%rcx)                  ;   {poll_return}
  20.94%    0x00007f3d5effbeae:   ret    
          [Exception Handler]
            0x00007f3d5effbeaf:   call   0x00007f3d5764ab00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007f3d5effbeb4:   nop
          [Deopt Handler Code]
            0x00007f3d5effbeb5:   call   0x00007f3d57505020           ;   {runtime_call DeoptimizationBlob}
            0x00007f3d5effbeba:   nop
          [Stub Code]
            0x00007f3d5effbebb:   hlt    
            0x00007f3d5effbebc:   hlt    
            0x00007f3d5effbebd:   hlt    
....................................................................................................
  27.75%  <total for region 2>

....[Hottest Regions]...............................................................................
  69.35%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub, version 6, compile id 750 
  27.75%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_blank, version 2, compile id 730 
   0.71%    [kernel.kallsyms]  native_write_msr 
   0.12%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.08%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.08%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.07%    [kernel.kallsyms]  __entry_text_start 
   0.05%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.05%    [kernel.kallsyms]  __intel_pmu_enable_all.constprop.0 
   0.05%    [kernel.kallsyms]  irqentry_exit_to_user_mode 
   0.05%    [kernel.kallsyms]  page_remove_rmap 
   0.05%    [kernel.kallsyms]  free_pcppages_bulk 
   0.05%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.04%    [kernel.kallsyms]  asm_sysvec_apic_timer_interrupt 
   0.03%    [kernel.kallsyms]  __mod_zone_page_state 
   0.03%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.03%    [kernel.kallsyms]  mutex_lock 
   0.03%    [kernel.kallsyms]  error_entry 
   0.02%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.02%    [kernel.kallsyms]  __free_one_page 
   1.35%  <...other 377 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  69.35%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub, version 6, compile id 750 
  27.75%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_blank, version 2, compile id 730 
   0.71%    [kernel.kallsyms]  native_write_msr 
   0.14%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.14%                       <unknown> 
   0.12%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.08%    [kernel.kallsyms]  release_pages 
   0.08%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.07%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.07%    [kernel.kallsyms]  __entry_text_start 
   0.05%    [kernel.kallsyms]  free_pcppages_bulk 
   0.05%    [kernel.kallsyms]  __intel_pmu_enable_all.constprop.0 
   0.05%    [kernel.kallsyms]  irqentry_exit_to_user_mode 
   0.05%    [kernel.kallsyms]  __free_one_page 
   0.05%    [kernel.kallsyms]  page_remove_rmap 
   0.04%    [kernel.kallsyms]  asm_sysvec_apic_timer_interrupt 
   0.03%    [kernel.kallsyms]  mutex_lock 
   0.03%    [kernel.kallsyms]  __mod_zone_page_state 
   0.03%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.03%    [kernel.kallsyms]  error_entry 
   1.08%  <...other 254 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.10%       jvmci, level 4
   2.45%    [kernel.kallsyms]
   0.14%                     
   0.12%            libjvm.so
   0.07%         libc-2.31.so
   0.04%  libjvmcicompiler.so
   0.03%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.02%           ld-2.31.so
   0.01%          interpreter
   0.00%      perf-160866.map
   0.00%               [vdso]
   0.00%          c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_dont_inline

# Run progress: 28.57% complete, ETA 00:09:24
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 10.104 ns/op
# Warmup Iteration   2: 10.149 ns/op
# Warmup Iteration   3: 10.257 ns/op
# Warmup Iteration   4: 10.262 ns/op
# Warmup Iteration   5: 10.269 ns/op
Iteration   1: 10.261 ns/op
Iteration   2: 10.256 ns/op
Iteration   3: 10.262 ns/op
Iteration   4: 10.259 ns/op
Iteration   5: 10.350 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_dont_inline":
  10.278 ±(99.9%) 0.156 ns/op [Average]
  (min, avg, max) = (10.256, 10.278, 10.350), stdev = 0.040
  CI (99.9%): [10.122, 10.433] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_dont_inline:·asm":
PrintAssembly processed: 192807 total address lines.
Perf output processed (skipped 59.113 seconds):
 Column 1: cycles (50584 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub, version 5, compile id 760 

              0x00007f0042fff9f2:   cmpb   $0x0,0x94(%rsi)
              0x00007f0042fff9f9:   jne    0x00007f0042fffa8e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub@28 (line 192)
              0x00007f0042fff9ff:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f0042fffa08:   jmp    0x00007f0042fffa2f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub@13 (line 190)
          │   0x00007f0042fffa0d:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f0042fffa18:   data16 data16 xchg %ax,%ax
          │   0x00007f0042fffa1c:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub@28 (line 192)
   3.72%  │↗  0x00007f0042fffa20:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub@28 (line 192)
          ││  0x00007f0042fffa27:   test   %eax,(%r11)                  ;   {poll}
   0.22%  ││  0x00007f0042fffa2a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub@13 (line 190)
          ↘│  0x00007f0042fffa2f:   mov    0x8(%rsp),%r10
   3.50%   │  0x00007f0042fffa34:   mov    %r10,%rsi
           │  0x00007f0042fffa37:   call   0x00007f003b4ffa80           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual method_dont_inline {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub@15 (line 190)
           │                                                            ;   {optimized virtual_call}
  18.29%   │  0x00007f0042fffa3c:   nop
   0.00%   │  0x00007f0042fffa3d:   mov    0x20(%rsp),%r10
   9.58%   │  0x00007f0042fffa42:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub@21 (line 191)
   3.69%   │  0x00007f0042fffa45:   mov    0x18(%rsp),%rsi
           │  0x00007f0042fffa4a:   cmpb   $0x0,0x94(%rsi)
  15.18%   ╰  0x00007f0042fffa51:   je     0x00007f0042fffa20           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub@28 (line 192)
              0x00007f0042fffa53:   mov    %r10,0x20(%rsp)
              0x00007f0042fffa58:   call   0x00007f0058f8e6f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f0042fffa5d:   nop
              0x00007f0042fffa5e:   mov    0x10(%rsp),%rdx
              0x00007f0042fffa63:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub@35 (line 193)
              0x00007f0042fffa67:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub@41 (line 194)
              0x00007f0042fffa6f:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  54.18%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_dont_inline, version 2, compile id 741 

            #           [sp+0x20]  (sp of caller)
            0x00007f0042ffa0a0:   mov    0x8(%rsi),%r10d
            0x00007f0042ffa0a4:   movabs $0x800000000,%r12
            0x00007f0042ffa0ae:   add    %r12,%r10
            0x00007f0042ffa0b1:   xor    %r12,%r12
            0x00007f0042ffa0b4:   cmp    %r10,%rax
            0x00007f0042ffa0b7:   jne    0x00007f003b4ff780           ;   {runtime_call ic_miss_stub}
            0x00007f0042ffa0bd:   nop
            0x00007f0042ffa0be:   xchg   %ax,%ax
          [Verified Entry Point]
   0.20%    0x00007f0042ffa0c0:   mov    %eax,-0x14000(%rsp)
   8.61%    0x00007f0042ffa0c7:   sub    $0x18,%rsp
   0.21%    0x00007f0042ffa0cb:   mov    %rbp,0x10(%rsp)
   1.33%    0x00007f0042ffa0d0:   data16 xchg %ax,%ax
   1.83%    0x00007f0042ffa0d3:   call   0x00007f0042ff9da0           ; ImmutableOopMap {}
                                                                      ;*invokevirtual target_dont_inline {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_dont_inline@1 (line 99)
                                                                      ;   {optimized virtual_call}
   3.38%    0x00007f0042ffa0d8:   nop
   0.00%    0x00007f0042ffa0d9:   mov    0x10(%rsp),%rbp
   0.00%    0x00007f0042ffa0de:   add    $0x18,%rsp
   1.94%    0x00007f0042ffa0e2:   mov    0x348(%r15),%rcx
   1.80%    0x00007f0042ffa0e9:   test   %eax,(%rcx)                  ;   {poll_return}
  11.47%    0x00007f0042ffa0eb:   ret    
          [Exception Handler]
            0x00007f0042ffa0ec:   call   0x00007f003b64ab00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007f0042ffa0f1:   nop
          [Deopt Handler Code]
            0x00007f0042ffa0f2:   call   0x00007f003b505020           ;   {runtime_call DeoptimizationBlob}
            0x00007f0042ffa0f7:   nop
            0x00007f0042ffa0f8:   hlt    
            0x00007f0042ffa0f9:   hlt    
            0x00007f0042ffa0fa:   hlt    
            0x00007f0042ffa0fb:   hlt    
....................................................................................................
  30.79%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::target_dont_inline, version 2, compile id 740 

            #           [sp+0x10]  (sp of caller)
            0x00007f0042ff9d80:   mov    0x8(%rsi),%r10d
            0x00007f0042ff9d84:   movabs $0x800000000,%r12
            0x00007f0042ff9d8e:   add    %r12,%r10
            0x00007f0042ff9d91:   xor    %r12,%r12
            0x00007f0042ff9d94:   cmp    %r10,%rax
            0x00007f0042ff9d97:   jne    0x00007f003b4ff780           ;   {runtime_call ic_miss_stub}
            0x00007f0042ff9d9d:   nop
            0x00007f0042ff9d9e:   xchg   %ax,%ax
          [Verified Entry Point]
   1.62%    0x00007f0042ff9da0:   nopl   0x0(%rax,%rax,1)
   0.52%    0x00007f0042ff9da5:   mov    0x348(%r15),%rcx
   1.67%    0x00007f0042ff9dac:   test   %eax,(%rcx)                  ;   {poll_return}
   8.82%    0x00007f0042ff9dae:   ret    
          [Exception Handler]
            0x00007f0042ff9daf:   call   0x00007f003b64ab00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007f0042ff9db4:   nop
          [Deopt Handler Code]
            0x00007f0042ff9db5:   call   0x00007f003b505020           ;   {runtime_call DeoptimizationBlob}
            0x00007f0042ff9dba:   nop
          [Stub Code]
            0x00007f0042ff9dbb:   hlt    
            0x00007f0042ff9dbc:   hlt    
            0x00007f0042ff9dbd:   hlt    
....................................................................................................
  12.63%  <total for region 3>

....[Hottest Regions]...............................................................................
  54.18%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub, version 5, compile id 760 
  30.79%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_dont_inline, version 2, compile id 741 
  12.63%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::target_dont_inline, version 2, compile id 740 
   0.73%    [kernel.kallsyms]  native_write_msr 
   0.09%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.09%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.07%    [kernel.kallsyms]  __entry_text_start 
   0.05%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.04%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.04%    [kernel.kallsyms]  __free_one_page 
   0.04%    [kernel.kallsyms]  page_remove_rmap 
   0.04%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.03%    [kernel.kallsyms]  __mod_zone_page_state 
   0.03%    [kernel.kallsyms]  free_swap_cache 
   0.02%    [kernel.kallsyms]  release_pages 
   0.02%    [kernel.kallsyms]  __mod_lruvec_page_state 
   0.02%    [kernel.kallsyms]  __tlb_remove_page_size 
   0.02%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.02%    [kernel.kallsyms]  free_pcppages_bulk 
   0.02%    [kernel.kallsyms]  mutex_unlock 
   1.03%  <...other 311 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  54.18%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub, version 5, compile id 760 
  30.79%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_dont_inline, version 2, compile id 741 
  12.63%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::target_dont_inline, version 2, compile id 740 
   0.73%    [kernel.kallsyms]  native_write_msr 
   0.14%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.09%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.09%    [kernel.kallsyms]  __free_one_page 
   0.09%                       <unknown> 
   0.07%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.07%    [kernel.kallsyms]  __entry_text_start 
   0.07%    [kernel.kallsyms]  release_pages 
   0.05%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.04%    [kernel.kallsyms]  page_remove_rmap 
   0.03%    [kernel.kallsyms]  __mod_zone_page_state 
   0.03%    [kernel.kallsyms]  free_swap_cache 
   0.03%    [kernel.kallsyms]  free_pcppages_bulk 
   0.03%    [kernel.kallsyms]  uncharge_page 
   0.02%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.02%    [kernel.kallsyms]  __mod_lruvec_page_state 
   0.02%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.79%  <...other 204 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.60%       jvmci, level 4
   1.98%    [kernel.kallsyms]
   0.16%            libjvm.so
   0.09%         libc-2.31.so
   0.09%                     
   0.03%          interpreter
   0.02%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%  libjvmcicompiler.so
   0.00%          c1, level 3
   0.00%               [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_inline

# Run progress: 42.86% complete, ETA 00:07:31
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5.460 ns/op
# Warmup Iteration   2: 5.441 ns/op
# Warmup Iteration   3: 5.468 ns/op
# Warmup Iteration   4: 5.415 ns/op
# Warmup Iteration   5: 5.414 ns/op
Iteration   1: 5.414 ns/op
Iteration   2: 5.414 ns/op
Iteration   3: 5.414 ns/op
Iteration   4: 5.414 ns/op
Iteration   5: 5.414 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_inline":
  5.414 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (5.414, 5.414, 5.414), stdev = 0.001
  CI (99.9%): [5.414, 5.415] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_inline:·asm":
PrintAssembly processed: 188953 total address lines.
Perf output processed (skipped 58.936 seconds):
 Column 1: cycles (51048 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_inline_jmhTest::method_inline_avgt_jmhStub, version 6, compile id 755 

              0x00007f7322fc24f2:   cmpb   $0x0,0x94(%rsi)
              0x00007f7322fc24f9:   jne    0x00007f7322fc258e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_inline_jmhTest::method_inline_avgt_jmhStub@28 (line 192)
              0x00007f7322fc24ff:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f7322fc2508:   jmp    0x00007f7322fc252f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_inline_jmhTest::method_inline_avgt_jmhStub@13 (line 190)
          │   0x00007f7322fc250d:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f7322fc2518:   data16 data16 xchg %ax,%ax
          │   0x00007f7322fc251c:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_inline_jmhTest::method_inline_avgt_jmhStub@28 (line 192)
   6.87%  │↗  0x00007f7322fc2520:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_inline_jmhTest::method_inline_avgt_jmhStub@28 (line 192)
          ││  0x00007f7322fc2527:   test   %eax,(%r11)                  ;   {poll}
  13.78%  ││  0x00007f7322fc252a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_inline_jmhTest::method_inline_avgt_jmhStub@13 (line 190)
          ↘│  0x00007f7322fc252f:   mov    0x8(%rsp),%r10
   0.01%   │  0x00007f7322fc2534:   mov    %r10,%rsi
           │  0x00007f7322fc2537:   call   0x00007f731b4c3a80           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual method_inline {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_inline_jmhTest::method_inline_avgt_jmhStub@15 (line 190)
           │                                                            ;   {optimized virtual_call}
           │  0x00007f7322fc253c:   nop
   0.01%   │  0x00007f7322fc253d:   mov    0x20(%rsp),%r10
  13.79%   │  0x00007f7322fc2542:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_inline_jmhTest::method_inline_avgt_jmhStub@21 (line 191)
   6.96%   │  0x00007f7322fc2545:   mov    0x18(%rsp),%rsi
   0.02%   │  0x00007f7322fc254a:   cmpb   $0x0,0x94(%rsi)
  27.39%   ╰  0x00007f7322fc2551:   je     0x00007f7322fc2520           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_inline_jmhTest::method_inline_avgt_jmhStub@28 (line 192)
              0x00007f7322fc2553:   mov    %r10,0x20(%rsp)
              0x00007f7322fc2558:   call   0x00007f7338e6f6f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f7322fc255d:   nop
              0x00007f7322fc255e:   mov    0x10(%rsp),%rdx
              0x00007f7322fc2563:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_inline_jmhTest::method_inline_avgt_jmhStub@35 (line 193)
              0x00007f7322fc2567:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_inline_jmhTest::method_inline_avgt_jmhStub@41 (line 194)
              0x00007f7322fc256f:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  68.85%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_inline, version 2, compile id 732 

            #           [sp+0x10]  (sp of caller)
            0x00007f7322fbeb00:   mov    0x8(%rsi),%r10d
            0x00007f7322fbeb04:   movabs $0x800000000,%r12
            0x00007f7322fbeb0e:   add    %r12,%r10
            0x00007f7322fbeb11:   xor    %r12,%r12
            0x00007f7322fbeb14:   cmp    %r10,%rax
            0x00007f7322fbeb17:   jne    0x00007f731b4c3780           ;   {runtime_call ic_miss_stub}
            0x00007f7322fbeb1d:   nop
            0x00007f7322fbeb1e:   xchg   %ax,%ax
          [Verified Entry Point]
   6.84%    0x00007f7322fbeb20:   nopl   0x0(%rax,%rax,1)
   0.00%    0x00007f7322fbeb25:   mov    0x348(%r15),%rcx
            0x00007f7322fbeb2c:   test   %eax,(%rcx)                  ;   {poll_return}
  20.78%    0x00007f7322fbeb2e:   ret    
          [Exception Handler]
            0x00007f7322fbeb2f:   call   0x00007f731b60eb00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007f7322fbeb34:   nop
          [Deopt Handler Code]
            0x00007f7322fbeb35:   call   0x00007f731b4c9020           ;   {runtime_call DeoptimizationBlob}
            0x00007f7322fbeb3a:   nop
          [Stub Code]
            0x00007f7322fbeb3b:   hlt    
            0x00007f7322fbeb3c:   hlt    
            0x00007f7322fbeb3d:   hlt    
....................................................................................................
  27.62%  <total for region 2>

....[Hottest Regions]...............................................................................
  68.85%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_inline_jmhTest::method_inline_avgt_jmhStub, version 6, compile id 755 
  27.62%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_inline, version 2, compile id 732 
   1.95%    [kernel.kallsyms]  native_write_msr 
   0.07%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.06%    [kernel.kallsyms]  page_remove_rmap 
   0.05%    [kernel.kallsyms]  __entry_text_start 
   0.05%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.04%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.04%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.03%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.03%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.03%    [kernel.kallsyms]  __intel_pmu_enable_all.constprop.0 
   0.03%    [kernel.kallsyms]  __free_one_page 
   0.03%    [kernel.kallsyms]  asm_sysvec_apic_timer_interrupt 
   0.03%    [kernel.kallsyms]  error_entry 
   0.03%    [kernel.kallsyms]  __mod_zone_page_state 
   0.03%    [kernel.kallsyms]  __mod_node_page_state 
   0.02%    [kernel.kallsyms]  cgroup_rstat_updated 
   0.02%    [kernel.kallsyms]  irqentry_exit_to_user_mode 
   0.02%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.99%  <...other 290 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  68.85%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_inline_jmhTest::method_inline_avgt_jmhStub, version 6, compile id 755 
  27.62%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_inline, version 2, compile id 732 
   1.95%    [kernel.kallsyms]  native_write_msr 
   0.10%                       <unknown> 
   0.09%    [kernel.kallsyms]  release_pages 
   0.08%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.07%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.06%    [kernel.kallsyms]  __free_one_page 
   0.06%    [kernel.kallsyms]  page_remove_rmap 
   0.05%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.05%    [kernel.kallsyms]  __entry_text_start 
   0.05%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.04%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.03%    [kernel.kallsyms]  free_pcppages_bulk 
   0.03%    [kernel.kallsyms]  uncharge_page 
   0.03%    [kernel.kallsyms]  __intel_pmu_enable_all.constprop.0 
   0.03%    [kernel.kallsyms]  asm_sysvec_apic_timer_interrupt 
   0.03%    [kernel.kallsyms]  error_entry 
   0.03%    [kernel.kallsyms]  __mod_node_page_state 
   0.03%    [kernel.kallsyms]  __mod_zone_page_state 
   0.75%  <...other 197 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.47%       jvmci, level 4
   3.23%    [kernel.kallsyms]
   0.10%                     
   0.09%            libjvm.so
   0.06%         libc-2.31.so
   0.01%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.01%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.00%          c1, level 3
   0.00%               [vdso]
   0.00%         runtime stub
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.obj_blackhole_consume

# Run progress: 57.14% complete, ETA 00:05:37
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.615 ns/op
# Warmup Iteration   2: 6.958 ns/op
# Warmup Iteration   3: 6.668 ns/op
# Warmup Iteration   4: 6.564 ns/op
# Warmup Iteration   5: 6.570 ns/op
Iteration   1: 6.565 ns/op
Iteration   2: 6.571 ns/op
Iteration   3: 6.570 ns/op
Iteration   4: 6.582 ns/op
Iteration   5: 6.564 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.obj_blackhole_consume":
  6.570 ±(99.9%) 0.027 ns/op [Average]
  (min, avg, max) = (6.564, 6.570, 6.582), stdev = 0.007
  CI (99.9%): [6.543, 6.597] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.obj_blackhole_consume:·asm":
PrintAssembly processed: 192676 total address lines.
Perf output processed (skipped 58.983 seconds):
 Column 1: cycles (50347 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub, version 6, compile id 757 

              0x00007f50dafff6f5:   mov    0x18(%rsp),%rsi
              0x00007f50dafff6fa:   nopw   0x0(%rax,%rax,1)
              0x00007f50dafff700:   cmpb   $0x0,0x94(%rsi)
              0x00007f50dafff707:   jne    0x00007f50dafff79a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub@30 (line 192)
              0x00007f50dafff70d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f50dafff716:   jmp    0x00007f50dafff72f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub@13 (line 190)
          │   0x00007f50dafff71b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub@30 (line 192)
   5.76%  │↗  0x00007f50dafff720:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub@30 (line 192)
          ││  0x00007f50dafff727:   test   %eax,(%r11)                  ;   {poll}
   5.26%  ││  0x00007f50dafff72a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub@13 (line 190)
          ↘│  0x00007f50dafff72f:   mov    (%rsp),%r10
   0.66%   │  0x00007f50dafff733:   mov    0x8(%rsp),%rdi
           │  0x00007f50dafff738:   mov    %r10,%rsi
   5.08%   │  0x00007f50dafff73b:   mov    %rdi,%rdx                    ;*invokevirtual obj_blackhole_consume {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub@17 (line 190)
           │  0x00007f50dafff73e:   nop
   0.71%   │  0x00007f50dafff73f:   nop
           │  0x00007f50dafff740:   data16 xchg %ax,%ax
   4.91%   │  0x00007f50dafff743:   call   0x00007f50d34ffa80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual obj_blackhole_consume {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
  21.96%   │  0x00007f50dafff748:   nop
           │  0x00007f50dafff749:   mov    0x20(%rsp),%r10
   0.02%   │  0x00007f50dafff74e:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub@23 (line 191)
   5.80%   │  0x00007f50dafff751:   mov    0x18(%rsp),%rsi
           │  0x00007f50dafff756:   cmpb   $0x0,0x94(%rsi)
  13.39%   ╰  0x00007f50dafff75d:   je     0x00007f50dafff720           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub@30 (line 192)
              0x00007f50dafff75f:   mov    %r10,0x20(%rsp)
              0x00007f50dafff764:   call   0x00007f50f3e0b6f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f50dafff769:   nop
              0x00007f50dafff76a:   mov    0x10(%rsp),%rdx
              0x00007f50dafff76f:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub@37 (line 193)
              0x00007f50dafff773:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub@43 (line 194)
              0x00007f50dafff77b:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  63.55%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_blackhole_consume, version 2, compile id 733 

             #           [sp+0x20]  (sp of caller)
             0x00007f50daffb680:   mov    0x8(%rsi),%r10d
             0x00007f50daffb684:   movabs $0x800000000,%r12
             0x00007f50daffb68e:   add    %r12,%r10
             0x00007f50daffb691:   xor    %r12,%r12
             0x00007f50daffb694:   cmp    %r10,%rax
             0x00007f50daffb697:   jne    0x00007f50d34ff780           ;   {runtime_call ic_miss_stub}
             0x00007f50daffb69d:   nop
             0x00007f50daffb69e:   xchg   %ax,%ax
           [Verified Entry Point]
   0.73%     0x00007f50daffb6a0:   mov    %eax,-0x14000(%rsp)
   5.08%     0x00007f50daffb6a7:   sub    $0x18,%rsp
             0x00007f50daffb6ab:   mov    %rbp,0x10(%rsp)              ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_blackhole_consume@0 (line 119)
   0.80%  ╭  0x00007f50daffb6b0:   test   %eax,(%rdx)                  ; implicit exception: dispatches to 0x00007f50daffb6cd
   4.66%  │  0x00007f50daffb6b2:   mov    0xc(%rsi),%r10d
   0.45%  │  0x00007f50daffb6b6:   shl    $0x3,%r10                    ;*getfield object {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_blackhole_consume@2 (line 119)
          │  0x00007f50daffb6ba:   mov    0x10(%rsp),%rbp
   0.87%  │  0x00007f50daffb6bf:   add    $0x18,%rsp
   4.62%  │  0x00007f50daffb6c3:   mov    0x348(%r15),%rcx
   0.46%  │  0x00007f50daffb6ca:   test   %eax,(%rcx)                  ;   {poll_return}
  16.85%  │  0x00007f50daffb6cc:   ret    
          ↘  0x00007f50daffb6cd:   movl   $0xfffffff5,0x370(%r15)
             0x00007f50daffb6d8:   movq   $0x0,0x378(%r15)
             0x00007f50daffb6e3:   call   0x00007f50d350527a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_blackhole_consume@0 (line 119)
                                                                       ;   {runtime_call DeoptimizationBlob}
             0x00007f50daffb6e8:   nop
           [Exception Handler]
             0x00007f50daffb6e9:   call   0x00007f50d364ab00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
             0x00007f50daffb6ee:   nop
....................................................................................................
  34.52%  <total for region 2>

....[Hottest Regions]...............................................................................
  63.55%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub, version 6, compile id 757 
  34.52%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_blackhole_consume, version 2, compile id 733 
   0.11%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.08%    [kernel.kallsyms]  native_write_msr 
   0.08%    [kernel.kallsyms]  __entry_text_start 
   0.07%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.06%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.05%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.05%    [kernel.kallsyms]  page_remove_rmap 
   0.04%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.04%    [kernel.kallsyms]  __free_one_page 
   0.03%    [kernel.kallsyms]  free_pcppages_bulk 
   0.03%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.03%    [kernel.kallsyms]  cgroup_rstat_updated 
   0.02%    [kernel.kallsyms]  __mod_zone_page_state 
   0.02%    [kernel.kallsyms]  __mod_node_page_state 
   0.02%    [kernel.kallsyms]  mutex_unlock 
   0.02%    [kernel.kallsyms]  release_pages 
   0.02%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.02%           ld-2.31.so  __tls_get_addr 
   1.14%  <...other 342 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  63.55%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub, version 6, compile id 757 
  34.52%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_blackhole_consume, version 2, compile id 733 
   0.11%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.11%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.11%                       <unknown> 
   0.09%    [kernel.kallsyms]  __free_one_page 
   0.08%    [kernel.kallsyms]  native_write_msr 
   0.08%    [kernel.kallsyms]  __entry_text_start 
   0.08%    [kernel.kallsyms]  release_pages 
   0.07%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.06%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.05%    [kernel.kallsyms]  page_remove_rmap 
   0.04%    [kernel.kallsyms]  free_pcppages_bulk 
   0.03%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.03%    [kernel.kallsyms]  cgroup_rstat_updated 
   0.03%    [kernel.kallsyms]  free_unref_page_commit.isra.0 
   0.03%         libc-2.31.so  __vfprintf_internal 
   0.02%    [kernel.kallsyms]  __mod_node_page_state 
   0.02%    [kernel.kallsyms]  __mod_zone_page_state 
   0.02%    [kernel.kallsyms]  mutex_unlock 
   0.87%  <...other 232 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.08%       jvmci, level 4
   1.41%    [kernel.kallsyms]
   0.15%            libjvm.so
   0.14%         libc-2.31.so
   0.11%                     
   0.04%  libjvmcicompiler.so
   0.02%       hsdis-amd64.so
   0.02%   libpthread-2.31.so
   0.02%           ld-2.31.so
   0.01%          interpreter
   0.00%          c1, level 3
   0.00%               [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.obj_return

# Run progress: 71.43% complete, ETA 00:03:45
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.217 ns/op
# Warmup Iteration   2: 6.216 ns/op
# Warmup Iteration   3: 6.223 ns/op
# Warmup Iteration   4: 6.219 ns/op
# Warmup Iteration   5: 6.219 ns/op
Iteration   1: 6.219 ns/op
Iteration   2: 6.218 ns/op
Iteration   3: 6.219 ns/op
Iteration   4: 6.219 ns/op
Iteration   5: 6.196 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.obj_return":
  6.214 ±(99.9%) 0.039 ns/op [Average]
  (min, avg, max) = (6.196, 6.214, 6.219), stdev = 0.010
  CI (99.9%): [6.176, 6.253] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.obj_return:·asm":
PrintAssembly processed: 194193 total address lines.
Perf output processed (skipped 59.078 seconds):
 Column 1: cycles (50561 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub, version 6, compile id 759 

              0x00007f151b0002f5:   mov    0x18(%rsp),%rsi
              0x00007f151b0002fa:   nopw   0x0(%rax,%rax,1)
              0x00007f151b000300:   cmpb   $0x0,0x94(%rsi)
              0x00007f151b000307:   jne    0x00007f151b00038e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub@33 (line 192)
              0x00007f151b00030d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f151b000316:   jmp    0x00007f151b00032f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub@13 (line 190)
          │   0x00007f151b00031b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub@33 (line 192)
   3.47%  │↗  0x00007f151b000320:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub@33 (line 192)
   2.43%  ││  0x00007f151b000327:   test   %eax,(%r11)                  ;   {poll}
   3.68%  ││  0x00007f151b00032a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub@13 (line 190)
          ↘│  0x00007f151b00032f:   mov    0x8(%rsp),%r10
   0.01%   │  0x00007f151b000334:   mov    %r10,%rsi
   2.56%   │  0x00007f151b000337:   call   0x00007f15134ffa80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual obj_return {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
  50.35%   │  0x00007f151b00033c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub@20 (line 190)
           │  0x00007f151b00033d:   mov    0x20(%rsp),%r10
           │  0x00007f151b000342:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub@26 (line 191)
   5.94%   │  0x00007f151b000345:   mov    0x18(%rsp),%rsi
           │  0x00007f151b00034a:   cmpb   $0x0,0x94(%rsi)
   7.13%   ╰  0x00007f151b000351:   je     0x00007f151b000320           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub@33 (line 192)
              0x00007f151b000353:   mov    %r10,0x20(%rsp)
              0x00007f151b000358:   call   0x00007f15334536f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f151b00035d:   nop
              0x00007f151b00035e:   mov    0x10(%rsp),%rdx
              0x00007f151b000363:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub@40 (line 193)
              0x00007f151b000367:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub@46 (line 194)
              0x00007f151b00036f:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  75.57%  <total for region 1>

....[Hottest Region 2]..............................................................................
c1, level 1, com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_return, version 1, compile id 731 

           [Entry Point]
             # {method} {0x00007f14e3c73728} &apos;obj_return&apos; &apos;()Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/InfrastructureBaselineBenchmark&apos;
             #           [sp+0x40]  (sp of caller)
             0x00007f151affbb20:   mov    0x8(%rsi),%r10d
             0x00007f151affbb24:   movabs $0x800000000,%r11
             0x00007f151affbb2e:   add    %r11,%r10
             0x00007f151affbb31:   cmp    %rax,%r10
             0x00007f151affbb34:   jne    0x00007f15134ff780           ;   {runtime_call ic_miss_stub}
             0x00007f151affbb3a:   nopw   0x0(%rax,%rax,1)
           [Verified Entry Point]
   3.50%     0x00007f151affbb40:   mov    %eax,-0x14000(%rsp)
   2.53%     0x00007f151affbb47:   push   %rbp
   3.70%     0x00007f151affbb48:   sub    $0x30,%rsp                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_return@0 (line 113)
   0.00%     0x00007f151affbb4c:   mov    0xc(%rsi),%eax
   2.53%     0x00007f151affbb4f:   shl    $0x3,%rax                    ;*getfield object {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_return@1 (line 113)
   3.56%     0x00007f151affbb53:   add    $0x30,%rsp
             0x00007f151affbb57:   pop    %rbp
             0x00007f151affbb58:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ╭  0x00007f151affbb5f:   ja     0x00007f151affbb66
   6.09%  │  0x00007f151affbb65:   ret    
          ↘  0x00007f151affbb66:   movabs $0x7f151affbb58,%r10         ;   {internal_word}
             0x00007f151affbb70:   mov    %r10,0x358(%r15)
             0x00007f151affbb77:   jmp    0x00007f1513506100           ;   {runtime_call SafepointBlob}
             0x00007f151affbb7c:   nop
             0x00007f151affbb7d:   nop
             0x00007f151affbb7e:   mov    0x3d8(%r15),%rax
             0x00007f151affbb85:   movq   $0x0,0x3d8(%r15)
             0x00007f151affbb90:   movq   $0x0,0x3e0(%r15)
             0x00007f151affbb9b:   add    $0x30,%rsp
             0x00007f151affbb9f:   pop    %rbp
....................................................................................................
  21.90%  <total for region 2>

....[Hottest Regions]...............................................................................
  75.57%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub, version 6, compile id 759 
  21.90%          c1, level 1  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_return, version 1, compile id 731 
   0.69%    [kernel.kallsyms]  native_write_msr 
   0.09%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.07%    [kernel.kallsyms]  __entry_text_start 
   0.06%                       <unknown> 
   0.06%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.05%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.04%    [kernel.kallsyms]  page_remove_rmap 
   0.04%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.03%    [kernel.kallsyms]  release_pages 
   0.03%    [kernel.kallsyms]  release_pages 
   0.03%    [kernel.kallsyms]  __free_one_page 
   0.03%    [kernel.kallsyms]  mutex_unlock 
   0.02%    [kernel.kallsyms]  __mod_zone_page_state 
   0.02%    [kernel.kallsyms]  __mod_node_page_state 
   0.02%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.02%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.02%    [kernel.kallsyms]  free_unref_page_commit.isra.0 
   0.02%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   1.20%  <...other 348 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  75.57%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub, version 6, compile id 759 
  21.90%          c1, level 1  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_return, version 1, compile id 731 
   0.69%    [kernel.kallsyms]  native_write_msr 
   0.18%                       <unknown> 
   0.13%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.10%    [kernel.kallsyms]  release_pages 
   0.09%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.07%    [kernel.kallsyms]  __entry_text_start 
   0.07%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.07%    [kernel.kallsyms]  __free_one_page 
   0.04%    [kernel.kallsyms]  page_remove_rmap 
   0.03%    [kernel.kallsyms]  uncharge_page 
   0.03%    [kernel.kallsyms]  free_pcppages_bulk 
   0.03%    [kernel.kallsyms]  mutex_unlock 
   0.02%    [kernel.kallsyms]  __mod_zone_page_state 
   0.02%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.02%    [kernel.kallsyms]  free_unref_page_commit.isra.0 
   0.02%    [kernel.kallsyms]  mem_cgroup_update_lru_size 
   0.02%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.02%    [kernel.kallsyms]  __mod_node_page_state 
   0.88%  <...other 238 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  75.57%       jvmci, level 4
  21.90%          c1, level 1
   2.03%    [kernel.kallsyms]
   0.18%                     
   0.13%            libjvm.so
   0.10%         libc-2.31.so
   0.02%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.00%     Unknown, level 0
   0.00%          c1, level 3
   0.00%               [vdso]
   0.00%         libm-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.obj_sink

# Run progress: 85.71% complete, ETA 00:01:52
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 10.094 ns/op
# Warmup Iteration   2: 10.338 ns/op
# Warmup Iteration   3: 10.153 ns/op
# Warmup Iteration   4: 10.258 ns/op
# Warmup Iteration   5: 10.228 ns/op
Iteration   1: 10.233 ns/op
Iteration   2: 10.243 ns/op
Iteration   3: 10.265 ns/op
Iteration   4: 10.230 ns/op
Iteration   5: 10.231 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.obj_sink":
  10.241 ±(99.9%) 0.057 ns/op [Average]
  (min, avg, max) = (10.230, 10.241, 10.265), stdev = 0.015
  CI (99.9%): [10.183, 10.298] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.obj_sink:·asm":
PrintAssembly processed: 192286 total address lines.
Perf output processed (skipped 59.028 seconds):
 Column 1: cycles (50588 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub, version 6, compile id 749 

              0x00007fcb9efffb72:   cmpb   $0x0,0x94(%rsi)
              0x00007fcb9efffb79:   jne    0x00007fcb9efffc0e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub@28 (line 192)
              0x00007fcb9efffb7f:   movq   $0x1,0x20(%rsp)
          ╭   0x00007fcb9efffb88:   jmp    0x00007fcb9efffbaf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub@13 (line 190)
          │   0x00007fcb9efffb8d:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fcb9efffb98:   data16 data16 xchg %ax,%ax
          │   0x00007fcb9efffb9c:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub@28 (line 192)
   3.62%  │↗  0x00007fcb9efffba0:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub@28 (line 192)
          ││  0x00007fcb9efffba7:   test   %eax,(%r11)                  ;   {poll}
   0.24%  ││  0x00007fcb9efffbaa:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub@13 (line 190)
          ↘│  0x00007fcb9efffbaf:   mov    0x8(%rsp),%r10
   3.46%   │  0x00007fcb9efffbb4:   mov    %r10,%rsi
           │  0x00007fcb9efffbb7:   call   0x00007fcb974ffa80           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual obj_sink {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub@15 (line 190)
           │                                                            ;   {optimized virtual_call}
  19.21%   │  0x00007fcb9efffbbc:   nop
           │  0x00007fcb9efffbbd:   mov    0x20(%rsp),%r10
   8.55%   │  0x00007fcb9efffbc2:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub@21 (line 191)
   3.60%   │  0x00007fcb9efffbc5:   mov    0x18(%rsp),%rsi
           │  0x00007fcb9efffbca:   cmpb   $0x0,0x94(%rsi)
  14.81%   ╰  0x00007fcb9efffbd1:   je     0x00007fcb9efffba0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub@28 (line 192)
              0x00007fcb9efffbd3:   mov    %r10,0x20(%rsp)
              0x00007fcb9efffbd8:   call   0x00007fcbb6d676f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fcb9efffbdd:   nop
              0x00007fcb9efffbde:   mov    0x10(%rsp),%rdx
              0x00007fcb9efffbe3:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub@35 (line 193)
              0x00007fcb9efffbe7:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub@41 (line 194)
              0x00007fcb9efffbef:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  53.49%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_sink, version 2, compile id 725 

            #           [sp+0x20]  (sp of caller)
            0x00007fcb9effb4a0:   mov    0x8(%rsi),%r10d
            0x00007fcb9effb4a4:   movabs $0x800000000,%r12
            0x00007fcb9effb4ae:   add    %r12,%r10
            0x00007fcb9effb4b1:   xor    %r12,%r12
            0x00007fcb9effb4b4:   cmp    %r10,%rax
            0x00007fcb9effb4b7:   jne    0x00007fcb974ff780           ;   {runtime_call ic_miss_stub}
            0x00007fcb9effb4bd:   nop
            0x00007fcb9effb4be:   xchg   %ax,%ax
          [Verified Entry Point]
   0.18%    0x00007fcb9effb4c0:   mov    %eax,-0x14000(%rsp)
   7.58%    0x00007fcb9effb4c7:   sub    $0x18,%rsp
   0.21%    0x00007fcb9effb4cb:   mov    %rbp,0x10(%rsp)
   1.86%    0x00007fcb9effb4d0:   mov    0xc(%rsi),%edx               ;*getfield object {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_sink@2 (line 125)
   1.97%    0x00007fcb9effb4d3:   shl    $0x3,%rdx
   0.95%    0x00007fcb9effb4d7:   call   0x00007fcb9effb1a0           ; ImmutableOopMap {}
                                                                      ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_sink@5 (line 125)
                                                                      ;   {optimized virtual_call}
   4.89%    0x00007fcb9effb4dc:   nop
            0x00007fcb9effb4dd:   mov    0x10(%rsp),%rbp
   0.99%    0x00007fcb9effb4e2:   add    $0x18,%rsp
   0.02%    0x00007fcb9effb4e6:   mov    0x348(%r15),%rcx
   2.73%    0x00007fcb9effb4ed:   test   %eax,(%rcx)                  ;   {poll_return}
  13.54%    0x00007fcb9effb4ef:   ret    
          [Exception Handler]
            0x00007fcb9effb4f0:   call   0x00007fcb97649e00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007fcb9effb4f5:   nop
          [Deopt Handler Code]
            0x00007fcb9effb4f6:   call   0x00007fcb97505020           ;   {runtime_call DeoptimizationBlob}
            0x00007fcb9effb4fb:   nop
            0x00007fcb9effb4fc:   hlt    
            0x00007fcb9effb4fd:   hlt    
            0x00007fcb9effb4fe:   hlt    
            0x00007fcb9effb4ff:   hlt    
....................................................................................................
  34.93%  <total for region 2>

....[Hottest Regions]...............................................................................
  53.49%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub, version 6, compile id 749 
  34.93%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_sink, version 2, compile id 725 
   9.19%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::sink, version 2, compile id 724 
   0.66%    [kernel.kallsyms]  native_write_msr 
   0.08%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.08%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.08%    [kernel.kallsyms]  __entry_text_start 
   0.05%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.05%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.04%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.04%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.04%    [kernel.kallsyms]  page_remove_rmap 
   0.03%    [kernel.kallsyms]  __free_one_page 
   0.03%    [kernel.kallsyms]  release_pages 
   0.02%    [kernel.kallsyms]  cgroup_rstat_updated 
   0.02%    [kernel.kallsyms]  release_pages 
   0.02%    [kernel.kallsyms]  __mod_zone_page_state 
   0.02%    [kernel.kallsyms]  __tlb_remove_page_size 
   0.02%    [kernel.kallsyms]  free_pcppages_bulk 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   1.09%  <...other 307 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  53.49%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub, version 6, compile id 749 
  34.93%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_sink, version 2, compile id 725 
   9.19%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::sink, version 2, compile id 724 
   0.66%    [kernel.kallsyms]  native_write_msr 
   0.13%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.10%                       <unknown> 
   0.09%    [kernel.kallsyms]  __free_one_page 
   0.09%    [kernel.kallsyms]  release_pages 
   0.08%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.08%    [kernel.kallsyms]  __entry_text_start 
   0.07%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.05%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.05%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.04%    [kernel.kallsyms]  page_remove_rmap 
   0.03%    [kernel.kallsyms]  uncharge_page 
   0.03%    [kernel.kallsyms]  free_pcppages_bulk 
   0.02%    [kernel.kallsyms]  cgroup_rstat_updated 
   0.02%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.02%    [kernel.kallsyms]  __mod_zone_page_state 
   0.02%    [kernel.kallsyms]  __tlb_remove_page_size 
   0.81%  <...other 210 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.60%       jvmci, level 4
   1.94%    [kernel.kallsyms]
   0.18%            libjvm.so
   0.10%         libc-2.31.so
   0.10%                     
   0.03%   libpthread-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.00%               [vdso]
   0.00%      perf-161268.map
   0.00%          interpreter
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:13:07

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

Benchmark                                                   Mode  Cnt   Score   Error  Units
InfrastructureBaselineBenchmark.method_baseline             avgt    5   5.430 ± 0.057  ns/op
InfrastructureBaselineBenchmark.method_baseline:·asm        avgt          NaN            ---
InfrastructureBaselineBenchmark.method_blank                avgt    5   5.420 ± 0.047  ns/op
InfrastructureBaselineBenchmark.method_blank:·asm           avgt          NaN            ---
InfrastructureBaselineBenchmark.method_dont_inline          avgt    5  10.278 ± 0.156  ns/op
InfrastructureBaselineBenchmark.method_dont_inline:·asm     avgt          NaN            ---
InfrastructureBaselineBenchmark.method_inline               avgt    5   5.414 ± 0.001  ns/op
InfrastructureBaselineBenchmark.method_inline:·asm          avgt          NaN            ---
InfrastructureBaselineBenchmark.obj_blackhole_consume       avgt    5   6.570 ± 0.027  ns/op
InfrastructureBaselineBenchmark.obj_blackhole_consume:·asm  avgt          NaN            ---
InfrastructureBaselineBenchmark.obj_return                  avgt    5   6.214 ± 0.039  ns/op
InfrastructureBaselineBenchmark.obj_return:·asm             avgt          NaN            ---
InfrastructureBaselineBenchmark.obj_sink                    avgt    5  10.241 ± 0.057  ns/op
InfrastructureBaselineBenchmark.obj_sink:·asm               avgt          NaN            ---
