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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_baseline

# Run progress: 0.00% complete, ETA 00:11:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5.819 ns/op
# Warmup Iteration   2: 5.463 ns/op
# Warmup Iteration   3: 5.413 ns/op
# Warmup Iteration   4: 5.441 ns/op
# Warmup Iteration   5: 5.441 ns/op
Iteration   1: 5.441 ns/op
Iteration   2: 5.423 ns/op
Iteration   3: 5.420 ns/op
Iteration   4: 5.441 ns/op
Iteration   5: 5.442 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_baseline":
  5.433 ±(99.9%) 0.042 ns/op [Average]
  (min, avg, max) = (5.420, 5.433, 5.442), stdev = 0.011
  CI (99.9%): [5.391, 5.475] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_baseline:·asm":
PrintAssembly processed: 184368 total address lines.
Perf output processed (skipped 58.807 seconds):
 Column 1: cycles (50403 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub, version 5, compile id 730 

              0x00007f1332b1bb58:   mov    0x10(%rsp),%rdx
              0x00007f1332b1bb5d:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub@10 (line 188)
              0x00007f1332b1bb61:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f1332b1bb6a:   jmp    0x00007f1332b1bb8f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub@13 (line 190)
          │   0x00007f1332b1bb6f:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f1332b1bb7a:   data16 data16 xchg %ax,%ax
          │   0x00007f1332b1bb7e:   xchg   %ax,%ax                      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub@28 (line 192)
   6.82%  │↗  0x00007f1332b1bb80:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub@28 (line 192)
          ││  0x00007f1332b1bb87:   test   %eax,(%r11)                  ;   {poll}
  14.08%  ││  0x00007f1332b1bb8a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub@13 (line 190)
          ↘│  0x00007f1332b1bb8f:   mov    0x8(%rsp),%r10
           │  0x00007f1332b1bb94:   mov    %r10,%rsi
           │  0x00007f1332b1bb97:   call   0x00007f132b01ea80           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual method_baseline {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub@15 (line 190)
           │                                                            ;   {optimized virtual_call}
           │  0x00007f1332b1bb9c:   nop
           │  0x00007f1332b1bb9d:   mov    0x20(%rsp),%r10
  14.09%   │  0x00007f1332b1bba2:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub@21 (line 191)
   6.89%   │  0x00007f1332b1bba5:   mov    0x18(%rsp),%rsi
           │  0x00007f1332b1bbaa:   cmpb   $0x0,0x94(%rsi)
  28.13%   ╰  0x00007f1332b1bbb1:   je     0x00007f1332b1bb80           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub@28 (line 192)
              0x00007f1332b1bbb3:   mov    %r10,0x20(%rsp)
              0x00007f1332b1bbb8:   call   0x00007f13494644f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f1332b1bbbd:   nop
              0x00007f1332b1bbbe:   mov    0x10(%rsp),%rdx
              0x00007f1332b1bbc3:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub@35 (line 193)
              0x00007f1332b1bbc7:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub@41 (line 194)
              0x00007f1332b1bbcb:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  70.02%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_baseline, version 2, compile id 715 

            #           [sp+0x10]  (sp of caller)
            0x00007f1332b19780:   mov    0x8(%rsi),%r10d
            0x00007f1332b19784:   movabs $0x800000000,%r12
            0x00007f1332b1978e:   add    %r12,%r10
            0x00007f1332b19791:   xor    %r12,%r12
            0x00007f1332b19794:   cmp    %r10,%rax
            0x00007f1332b19797:   jne    0x00007f132b01e780           ;   {runtime_call ic_miss_stub}
            0x00007f1332b1979d:   nop
            0x00007f1332b1979e:   xchg   %ax,%ax
          [Verified Entry Point]
   7.01%    0x00007f1332b197a0:   nopl   0x0(%rax,%rax,1)
            0x00007f1332b197a5:   mov    0x348(%r15),%rcx
            0x00007f1332b197ac:   test   %eax,(%rcx)                  ;   {poll_return}
  20.79%    0x00007f1332b197ae:   ret    
          [Exception Handler]
            0x00007f1332b197af:   call   0x00007f132b169d00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007f1332b197b4:   nop
          [Deopt Handler Code]
            0x00007f1332b197b5:   call   0x00007f132b024020           ;   {runtime_call DeoptimizationBlob}
            0x00007f1332b197ba:   nop
          [Stub Code]
            0x00007f1332b197bb:   hlt    
            0x00007f1332b197bc:   hlt    
            0x00007f1332b197bd:   hlt    
....................................................................................................
  27.79%  <total for region 2>

....[Hottest Regions]...............................................................................
  70.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub, version 5, compile id 730 
  27.79%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_baseline, version 2, compile id 715 
   0.62%    [kernel.kallsyms]  native_write_msr 
   0.08%                       <unknown> 
   0.07%    [kernel.kallsyms]  __entry_text_start 
   0.06%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.06%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.05%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.05%    [kernel.kallsyms]  page_remove_rmap 
   0.04%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.04%    [kernel.kallsyms]  __free_one_page 
   0.04%    [kernel.kallsyms]  free_pcppages_bulk 
   0.03%            libjvm.so  ElfSymbolTable::lookup 
   0.03%    [kernel.kallsyms]  release_pages 
   0.03%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.02%    [kernel.kallsyms]  __mod_lruvec_page_state 
   0.02%    [kernel.kallsyms]  __mod_node_page_state 
   0.02%    [kernel.kallsyms]  __tlb_remove_page_size 
   0.02%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.02%    [kernel.kallsyms]  __mod_zone_page_state 
   0.90%  <...other 271 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  70.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub, version 5, compile id 730 
  27.79%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_baseline, version 2, compile id 715 
   0.62%    [kernel.kallsyms]  native_write_msr 
   0.14%                       <unknown> 
   0.10%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.08%    [kernel.kallsyms]  release_pages 
   0.07%    [kernel.kallsyms]  __free_one_page 
   0.07%    [kernel.kallsyms]  __entry_text_start 
   0.06%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.06%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.05%    [kernel.kallsyms]  page_remove_rmap 
   0.05%    [kernel.kallsyms]  free_pcppages_bulk 
   0.03%            libjvm.so  ElfSymbolTable::lookup 
   0.03%    [kernel.kallsyms]  __mod_lruvec_page_state 
   0.03%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.02%    [kernel.kallsyms]  __mod_node_page_state 
   0.02%    [kernel.kallsyms]  free_pcp_prepare 
   0.02%    [kernel.kallsyms]  __tlb_remove_page_size 
   0.02%    [kernel.kallsyms]  uncharge_page 
   0.02%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.71%  <...other 198 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.81%       jvmci, level 4
   1.81%    [kernel.kallsyms]
   0.14%                     
   0.12%            libjvm.so
   0.06%         libc-2.31.so
   0.03%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.01%               [vdso]
   0.00%  libjvmcicompiler.so
   0.00%      perf-163221.map
   0.00%     Unknown, level 0
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_blank

# Run progress: 14.29% complete, ETA 00:11:22
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5.838 ns/op
# Warmup Iteration   2: 5.420 ns/op
# Warmup Iteration   3: 5.438 ns/op
# Warmup Iteration   4: 5.415 ns/op
# Warmup Iteration   5: 5.416 ns/op
Iteration   1: 5.441 ns/op
Iteration   2: 5.441 ns/op
Iteration   3: 5.418 ns/op
Iteration   4: 5.417 ns/op
Iteration   5: 5.420 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_blank":
  5.428 ±(99.9%) 0.048 ns/op [Average]
  (min, avg, max) = (5.417, 5.428, 5.441), stdev = 0.012
  CI (99.9%): [5.380, 5.476] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_blank:·asm":
PrintAssembly processed: 192540 total address lines.
Perf output processed (skipped 59.040 seconds):
 Column 1: cycles (50520 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub, version 6, compile id 752 

              0x00007f3022b1d2d8:   mov    0x10(%rsp),%rdx
              0x00007f3022b1d2dd:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub@10 (line 188)
              0x00007f3022b1d2e1:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f3022b1d2ea:   jmp    0x00007f3022b1d30f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub@13 (line 190)
          │   0x00007f3022b1d2ef:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f3022b1d2fa:   data16 data16 xchg %ax,%ax
          │   0x00007f3022b1d2fe:   xchg   %ax,%ax                      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub@28 (line 192)
   7.00%  │↗  0x00007f3022b1d300:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub@28 (line 192)
          ││  0x00007f3022b1d307:   test   %eax,(%r11)                  ;   {poll}
  11.25%  ││  0x00007f3022b1d30a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub@13 (line 190)
          ↘│  0x00007f3022b1d30f:   mov    0x8(%rsp),%r10
   1.35%   │  0x00007f3022b1d314:   mov    %r10,%rsi
           │  0x00007f3022b1d317:   call   0x00007f301b01ea80           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual method_blank {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub@15 (line 190)
           │                                                            ;   {optimized virtual_call}
           │  0x00007f3022b1d31c:   nop
   1.32%   │  0x00007f3022b1d31d:   mov    0x20(%rsp),%r10
  11.11%   │  0x00007f3022b1d322:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub@21 (line 191)
   5.51%   │  0x00007f3022b1d325:   mov    0x18(%rsp),%rsi
           │  0x00007f3022b1d32a:   cmpb   $0x0,0x94(%rsi)
  35.99%   ╰  0x00007f3022b1d331:   je     0x00007f3022b1d300           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub@28 (line 192)
              0x00007f3022b1d333:   mov    %r10,0x20(%rsp)
              0x00007f3022b1d338:   call   0x00007f303beba4f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f3022b1d33d:   nop
              0x00007f3022b1d33e:   mov    0x10(%rsp),%rdx
              0x00007f3022b1d343:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub@35 (line 193)
              0x00007f3022b1d347:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub@41 (line 194)
              0x00007f3022b1d34b:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  73.53%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_blank, version 2, compile id 726 

            #           [sp+0x10]  (sp of caller)
            0x00007f3022b17000:   mov    0x8(%rsi),%r10d
            0x00007f3022b17004:   movabs $0x800000000,%r12
            0x00007f3022b1700e:   add    %r12,%r10
            0x00007f3022b17011:   xor    %r12,%r12
            0x00007f3022b17014:   cmp    %r10,%rax
            0x00007f3022b17017:   jne    0x00007f301b01e780           ;   {runtime_call ic_miss_stub}
            0x00007f3022b1701d:   nop
            0x00007f3022b1701e:   xchg   %ax,%ax
          [Verified Entry Point]
   5.64%    0x00007f3022b17020:   nopl   0x0(%rax,%rax,1)
   1.39%    0x00007f3022b17025:   mov    0x348(%r15),%rcx
            0x00007f3022b1702c:   test   %eax,(%rcx)                  ;   {poll_return}
  17.09%    0x00007f3022b1702e:   ret    
          [Exception Handler]
            0x00007f3022b1702f:   call   0x00007f301b169d00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007f3022b17034:   nop
          [Deopt Handler Code]
            0x00007f3022b17035:   call   0x00007f301b024020           ;   {runtime_call DeoptimizationBlob}
            0x00007f3022b1703a:   nop
          [Stub Code]
            0x00007f3022b1703b:   hlt    
            0x00007f3022b1703c:   hlt    
            0x00007f3022b1703d:   hlt    
....................................................................................................
  24.13%  <total for region 2>

....[Hottest Regions]...............................................................................
  73.53%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub, version 6, compile id 752 
  24.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_blank, version 2, compile id 726 
   0.60%    [kernel.kallsyms]  native_write_msr 
   0.10%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.06%    [kernel.kallsyms]  __intel_pmu_enable_all.constprop.0 
   0.05%    [kernel.kallsyms]  __entry_text_start 
   0.05%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.05%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.05%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.05%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.04%    [kernel.kallsyms]  page_remove_rmap 
   0.04%    [kernel.kallsyms]  free_pcppages_bulk 
   0.03%    [kernel.kallsyms]  __mod_node_page_state 
   0.03%    [kernel.kallsyms]  release_pages 
   0.03%    [kernel.kallsyms]  free_unref_page_commit.isra.0 
   0.02%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.02%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.02%    [kernel.kallsyms]  __mod_lruvec_page_state 
   0.02%    [kernel.kallsyms]  __free_one_page 
   0.02%    [kernel.kallsyms]  free_swap_cache 
   1.07%  <...other 320 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  73.53%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub, version 6, compile id 752 
  24.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_blank, version 2, compile id 726 
   0.60%    [kernel.kallsyms]  native_write_msr 
   0.13%                       <unknown> 
   0.10%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.10%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.07%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.06%    [kernel.kallsyms]  __intel_pmu_enable_all.constprop.0 
   0.06%    [kernel.kallsyms]  release_pages 
   0.06%    [kernel.kallsyms]  __free_one_page 
   0.05%    [kernel.kallsyms]  free_pcppages_bulk 
   0.05%    [kernel.kallsyms]  __entry_text_start 
   0.05%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.04%    [kernel.kallsyms]  page_remove_rmap 
   0.03%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.03%    [kernel.kallsyms]  free_unref_page_commit.isra.0 
   0.03%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.03%    [kernel.kallsyms]  __mod_node_page_state 
   0.02%    [kernel.kallsyms]  __mod_lruvec_page_state 
   0.02%    [kernel.kallsyms]  psi_group_change 
   0.80%  <...other 209 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  97.65%       jvmci, level 4
   1.93%    [kernel.kallsyms]
   0.14%            libjvm.so
   0.13%                     
   0.09%         libc-2.31.so
   0.03%   libpthread-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.00%      perf-163310.map
   0.00%          interpreter
....................................................................................................
  99.99%  <totals>



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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_dont_inline

# Run progress: 28.57% complete, ETA 00:09:27
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 10.292 ns/op
# Warmup Iteration   2: 10.165 ns/op
# Warmup Iteration   3: 10.180 ns/op
# Warmup Iteration   4: 10.128 ns/op
# Warmup Iteration   5: 10.129 ns/op
Iteration   1: 10.107 ns/op
Iteration   2: 10.140 ns/op
Iteration   3: 10.087 ns/op
Iteration   4: 10.113 ns/op
Iteration   5: 10.091 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_dont_inline":
  10.108 ±(99.9%) 0.082 ns/op [Average]
  (min, avg, max) = (10.087, 10.108, 10.140), stdev = 0.021
  CI (99.9%): [10.026, 10.189] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_dont_inline:·asm":
PrintAssembly processed: 187792 total address lines.
Perf output processed (skipped 58.944 seconds):
 Column 1: cycles (50610 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub, version 6, compile id 737 

              0x00007f621eb1ba58:   mov    0x10(%rsp),%rdx
              0x00007f621eb1ba5d:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub@10 (line 188)
              0x00007f621eb1ba61:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f621eb1ba6a:   jmp    0x00007f621eb1ba8f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub@13 (line 190)
          │   0x00007f621eb1ba6f:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f621eb1ba7a:   data16 data16 xchg %ax,%ax
          │   0x00007f621eb1ba7e:   xchg   %ax,%ax                      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub@28 (line 192)
   3.67%  │↗  0x00007f621eb1ba80:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub@28 (line 192)
          ││  0x00007f621eb1ba87:   test   %eax,(%r11)                  ;   {poll}
   0.18%  ││  0x00007f621eb1ba8a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub@13 (line 190)
          ↘│  0x00007f621eb1ba8f:   mov    0x8(%rsp),%r10
   3.47%   │  0x00007f621eb1ba94:   mov    %r10,%rsi
           │  0x00007f621eb1ba97:   call   0x00007f621701ea80           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual method_dont_inline {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub@15 (line 190)
           │                                                            ;   {optimized virtual_call}
  18.58%   │  0x00007f621eb1ba9c:   nop
           │  0x00007f621eb1ba9d:   mov    0x20(%rsp),%r10
   8.06%   │  0x00007f621eb1baa2:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub@21 (line 191)
   3.86%   │  0x00007f621eb1baa5:   mov    0x18(%rsp),%rsi
           │  0x00007f621eb1baaa:   cmpb   $0x0,0x94(%rsi)
  15.38%   ╰  0x00007f621eb1bab1:   je     0x00007f621eb1ba80           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub@28 (line 192)
              0x00007f621eb1bab3:   mov    %r10,0x20(%rsp)
              0x00007f621eb1bab8:   call   0x00007f62389b14f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f621eb1babd:   nop
              0x00007f621eb1babe:   mov    0x10(%rsp),%rdx
              0x00007f621eb1bac3:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub@35 (line 193)
              0x00007f621eb1bac7:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub@41 (line 194)
              0x00007f621eb1bacb:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  53.20%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_dont_inline, version 2, compile id 715 

            #           [sp+0x20]  (sp of caller)
            0x00007f621eb19120:   mov    0x8(%rsi),%r10d
            0x00007f621eb19124:   movabs $0x800000000,%r12
            0x00007f621eb1912e:   add    %r12,%r10
            0x00007f621eb19131:   xor    %r12,%r12
            0x00007f621eb19134:   cmp    %r10,%rax
            0x00007f621eb19137:   jne    0x00007f621701e780           ;   {runtime_call ic_miss_stub}
            0x00007f621eb1913d:   nop
            0x00007f621eb1913e:   xchg   %ax,%ax
          [Verified Entry Point]
   0.19%    0x00007f621eb19140:   mov    %eax,-0x14000(%rsp)
   9.31%    0x00007f621eb19147:   sub    $0x18,%rsp
   0.24%    0x00007f621eb1914b:   mov    %rbp,0x10(%rsp)
   1.10%    0x00007f621eb19150:   data16 xchg %ax,%ax
   1.72%    0x00007f621eb19153:   call   0x00007f621eb18e20           ; ImmutableOopMap {}
                                                                      ;*invokevirtual target_dont_inline {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_dont_inline@1 (line 99)
                                                                      ;   {optimized virtual_call}
   3.22%    0x00007f621eb19158:   nop
            0x00007f621eb19159:   mov    0x10(%rsp),%rbp
            0x00007f621eb1915e:   add    $0x18,%rsp
   1.93%    0x00007f621eb19162:   mov    0x348(%r15),%rcx
   1.69%    0x00007f621eb19169:   test   %eax,(%rcx)                  ;   {poll_return}
  11.71%    0x00007f621eb1916b:   ret    
          [Exception Handler]
            0x00007f621eb1916c:   call   0x00007f6217169d00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007f621eb19171:   nop
          [Deopt Handler Code]
            0x00007f621eb19172:   call   0x00007f6217024020           ;   {runtime_call DeoptimizationBlob}
            0x00007f621eb19177:   nop
            0x00007f621eb19178:   hlt    
            0x00007f621eb19179:   hlt    
            0x00007f621eb1917a:   hlt    
            0x00007f621eb1917b:   hlt    
....................................................................................................
  31.12%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::target_dont_inline, version 2, compile id 714 

            #           [sp+0x10]  (sp of caller)
            0x00007f621eb18e00:   mov    0x8(%rsi),%r10d
            0x00007f621eb18e04:   movabs $0x800000000,%r12
            0x00007f621eb18e0e:   add    %r12,%r10
            0x00007f621eb18e11:   xor    %r12,%r12
            0x00007f621eb18e14:   cmp    %r10,%rax
            0x00007f621eb18e17:   jne    0x00007f621701e780           ;   {runtime_call ic_miss_stub}
            0x00007f621eb18e1d:   nop
            0x00007f621eb18e1e:   xchg   %ax,%ax
          [Verified Entry Point]
   1.81%    0x00007f621eb18e20:   nopl   0x0(%rax,%rax,1)
   0.42%    0x00007f621eb18e25:   mov    0x348(%r15),%rcx
   1.68%    0x00007f621eb18e2c:   test   %eax,(%rcx)                  ;   {poll_return}
   9.03%    0x00007f621eb18e2e:   ret    
          [Exception Handler]
            0x00007f621eb18e2f:   call   0x00007f6217169d00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007f621eb18e34:   nop
          [Deopt Handler Code]
            0x00007f621eb18e35:   call   0x00007f6217024020           ;   {runtime_call DeoptimizationBlob}
            0x00007f621eb18e3a:   nop
          [Stub Code]
            0x00007f621eb18e3b:   hlt    
            0x00007f621eb18e3c:   hlt    
            0x00007f621eb18e3d:   hlt    
....................................................................................................
  12.94%  <total for region 3>

....[Hottest Regions]...............................................................................
  53.20%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub, version 6, compile id 737 
  31.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_dont_inline, version 2, compile id 715 
  12.94%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::target_dont_inline, version 2, compile id 714 
   0.95%    [kernel.kallsyms]  native_write_msr 
   0.07%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.06%    [kernel.kallsyms]  __entry_text_start 
   0.06%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.05%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.05%    [kernel.kallsyms]  page_remove_rmap 
   0.04%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.04%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.04%    [kernel.kallsyms]  __free_one_page 
   0.04%    [kernel.kallsyms]  irqentry_exit_to_user_mode 
   0.04%                       <unknown> 
   0.03%    [kernel.kallsyms]  error_entry 
   0.03%    [kernel.kallsyms]  __free_one_page 
   0.03%    [kernel.kallsyms]  __free_one_page 
   0.02%    [kernel.kallsyms]  __mod_node_page_state 
   0.02%    [kernel.kallsyms]  free_unref_page_commit.isra.0 
   0.02%    [kernel.kallsyms]  asm_sysvec_apic_timer_interrupt 
   1.15%  <...other 319 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  53.20%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub, version 6, compile id 737 
  31.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_dont_inline, version 2, compile id 715 
  12.94%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::target_dont_inline, version 2, compile id 714 
   0.95%    [kernel.kallsyms]  native_write_msr 
   0.11%    [kernel.kallsyms]  __free_one_page 
   0.10%                       <unknown> 
   0.08%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.08%    [kernel.kallsyms]  release_pages 
   0.07%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.06%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.06%    [kernel.kallsyms]  __entry_text_start 
   0.06%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.05%    [kernel.kallsyms]  page_remove_rmap 
   0.04%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.04%    [kernel.kallsyms]  irqentry_exit_to_user_mode 
   0.04%    [kernel.kallsyms]  error_entry 
   0.03%    [kernel.kallsyms]  __irqentry_text_end 
   0.03%    [kernel.kallsyms]  free_unref_page_commit.isra.0 
   0.03%    [kernel.kallsyms]  uncharge_page 
   0.02%    [kernel.kallsyms]  __mod_node_page_state 
   0.90%  <...other 222 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.26%       jvmci, level 4
   2.36%    [kernel.kallsyms]
   0.14%            libjvm.so
   0.10%                     
   0.09%         libc-2.31.so
   0.02%          interpreter
   0.01%   libpthread-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.00%     Unknown, level 0
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_inline

# Run progress: 42.86% complete, ETA 00:07:32
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5.840 ns/op
# Warmup Iteration   2: 5.415 ns/op
# Warmup Iteration   3: 5.443 ns/op
# Warmup Iteration   4: 5.414 ns/op
# Warmup Iteration   5: 5.414 ns/op
Iteration   1: 5.415 ns/op
Iteration   2: 5.414 ns/op
Iteration   3: 5.414 ns/op
Iteration   4: 5.414 ns/op
Iteration   5: 5.413 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_inline":
  5.414 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (5.413, 5.414, 5.415), stdev = 0.001
  CI (99.9%): [5.412, 5.416] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_inline:·asm":
PrintAssembly processed: 188825 total address lines.
Perf output processed (skipped 58.951 seconds):
 Column 1: cycles (50744 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_inline_jmhTest::method_inline_avgt_jmhStub, version 6, compile id 741 

              0x00007fb2aab1b2d8:   mov    0x10(%rsp),%rdx
              0x00007fb2aab1b2dd:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_inline_jmhTest::method_inline_avgt_jmhStub@10 (line 188)
              0x00007fb2aab1b2e1:   movq   $0x0,0x20(%rsp)
          ╭   0x00007fb2aab1b2ea:   jmp    0x00007fb2aab1b30f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_inline_jmhTest::method_inline_avgt_jmhStub@13 (line 190)
          │   0x00007fb2aab1b2ef:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fb2aab1b2fa:   data16 data16 xchg %ax,%ax
          │   0x00007fb2aab1b2fe:   xchg   %ax,%ax                      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_inline_jmhTest::method_inline_avgt_jmhStub@28 (line 192)
   6.81%  │↗  0x00007fb2aab1b300:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_inline_jmhTest::method_inline_avgt_jmhStub@28 (line 192)
          ││  0x00007fb2aab1b307:   test   %eax,(%r11)                  ;   {poll}
  13.77%  ││  0x00007fb2aab1b30a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_inline_jmhTest::method_inline_avgt_jmhStub@13 (line 190)
   0.00%  ↘│  0x00007fb2aab1b30f:   mov    0x8(%rsp),%r10
           │  0x00007fb2aab1b314:   mov    %r10,%rsi
           │  0x00007fb2aab1b317:   call   0x00007fb2a301ea80           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual method_inline {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_inline_jmhTest::method_inline_avgt_jmhStub@15 (line 190)
           │                                                            ;   {optimized virtual_call}
           │  0x00007fb2aab1b31c:   nop
           │  0x00007fb2aab1b31d:   mov    0x20(%rsp),%r10
  14.01%   │  0x00007fb2aab1b322:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_inline_jmhTest::method_inline_avgt_jmhStub@21 (line 191)
   6.91%   │  0x00007fb2aab1b325:   mov    0x18(%rsp),%rsi
           │  0x00007fb2aab1b32a:   cmpb   $0x0,0x94(%rsi)
  27.85%   ╰  0x00007fb2aab1b331:   je     0x00007fb2aab1b300           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_inline_jmhTest::method_inline_avgt_jmhStub@28 (line 192)
              0x00007fb2aab1b333:   mov    %r10,0x20(%rsp)
              0x00007fb2aab1b338:   call   0x00007fb2c0f7d4f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fb2aab1b33d:   nop
              0x00007fb2aab1b33e:   mov    0x10(%rsp),%rdx
              0x00007fb2aab1b343:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_inline_jmhTest::method_inline_avgt_jmhStub@35 (line 193)
              0x00007fb2aab1b347:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_inline_jmhTest::method_inline_avgt_jmhStub@41 (line 194)
              0x00007fb2aab1b34b:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  69.35%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_inline, version 2, compile id 721 

            #           [sp+0x10]  (sp of caller)
            0x00007fb2aab18e00:   mov    0x8(%rsi),%r10d
            0x00007fb2aab18e04:   movabs $0x800000000,%r12
            0x00007fb2aab18e0e:   add    %r12,%r10
            0x00007fb2aab18e11:   xor    %r12,%r12
            0x00007fb2aab18e14:   cmp    %r10,%rax
            0x00007fb2aab18e17:   jne    0x00007fb2a301e780           ;   {runtime_call ic_miss_stub}
            0x00007fb2aab18e1d:   nop
            0x00007fb2aab18e1e:   xchg   %ax,%ax
          [Verified Entry Point]
   6.90%    0x00007fb2aab18e20:   nopl   0x0(%rax,%rax,1)
            0x00007fb2aab18e25:   mov    0x348(%r15),%rcx
            0x00007fb2aab18e2c:   test   %eax,(%rcx)                  ;   {poll_return}
  20.74%    0x00007fb2aab18e2e:   ret    
          [Exception Handler]
            0x00007fb2aab18e2f:   call   0x00007fb2a3169d00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007fb2aab18e34:   nop
          [Deopt Handler Code]
            0x00007fb2aab18e35:   call   0x00007fb2a3024020           ;   {runtime_call DeoptimizationBlob}
            0x00007fb2aab18e3a:   nop
          [Stub Code]
            0x00007fb2aab18e3b:   hlt    
            0x00007fb2aab18e3c:   hlt    
            0x00007fb2aab18e3d:   hlt    
....................................................................................................
  27.64%  <total for region 2>

....[Hottest Regions]...............................................................................
  69.35%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_inline_jmhTest::method_inline_avgt_jmhStub, version 6, compile id 741 
  27.64%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_inline, version 2, compile id 721 
   1.40%    [kernel.kallsyms]  native_write_msr 
   0.07%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.07%    [kernel.kallsyms]  __entry_text_start 
   0.06%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.06%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.04%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.04%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.04%    [kernel.kallsyms]  page_remove_rmap 
   0.03%    [kernel.kallsyms]  irqentry_exit_to_user_mode 
   0.03%    [kernel.kallsyms]  asm_sysvec_apic_timer_interrupt 
   0.03%    [kernel.kallsyms]  __mod_zone_page_state 
   0.03%    [kernel.kallsyms]  free_swap_cache 
   0.02%    [kernel.kallsyms]  release_pages 
   0.02%    [kernel.kallsyms]  __mod_node_page_state 
   0.02%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.02%    [kernel.kallsyms]  __mod_lruvec_state 
   0.02%    [kernel.kallsyms]  __free_one_page 
   0.02%    [kernel.kallsyms]  error_entry 
   0.98%  <...other 277 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  69.35%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_inline_jmhTest::method_inline_avgt_jmhStub, version 6, compile id 741 
  27.64%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_inline, version 2, compile id 721 
   1.40%    [kernel.kallsyms]  native_write_msr 
   0.10%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.08%                       <unknown> 
   0.07%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.07%    [kernel.kallsyms]  __entry_text_start 
   0.07%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.06%    [kernel.kallsyms]  __free_one_page 
   0.06%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.05%    [kernel.kallsyms]  release_pages 
   0.04%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.04%    [kernel.kallsyms]  page_remove_rmap 
   0.04%    [kernel.kallsyms]  free_pcppages_bulk 
   0.03%    [kernel.kallsyms]  irqentry_exit_to_user_mode 
   0.03%    [kernel.kallsyms]  asm_sysvec_apic_timer_interrupt 
   0.03%    [kernel.kallsyms]  free_swap_cache 
   0.03%    [kernel.kallsyms]  __mod_zone_page_state 
   0.03%    [kernel.kallsyms]  error_entry 
   0.02%    [kernel.kallsyms]  __mod_node_page_state 
   0.77%  <...other 194 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.99%       jvmci, level 4
   2.72%    [kernel.kallsyms]
   0.09%            libjvm.so
   0.08%                     
   0.07%         libc-2.31.so
   0.01%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%          c1, level 3
   0.00%          c1, level 1
   0.00%      perf-163473.map
   0.00%          interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.obj_blackhole_consume

# Run progress: 57.14% complete, ETA 00:05:38
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.642 ns/op
# Warmup Iteration   2: 7.051 ns/op
# Warmup Iteration   3: 6.260 ns/op
# Warmup Iteration   4: 6.246 ns/op
# Warmup Iteration   5: 6.629 ns/op
Iteration   1: 6.529 ns/op
Iteration   2: 6.609 ns/op
Iteration   3: 6.609 ns/op
Iteration   4: 6.608 ns/op
Iteration   5: 6.541 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.obj_blackhole_consume":
  6.579 ±(99.9%) 0.156 ns/op [Average]
  (min, avg, max) = (6.529, 6.579, 6.609), stdev = 0.041
  CI (99.9%): [6.423, 6.735] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.obj_blackhole_consume:·asm":
PrintAssembly processed: 189053 total address lines.
Perf output processed (skipped 58.895 seconds):
 Column 1: cycles (50276 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub, version 6, compile id 739 

              0x00007fa82eb1be5b:   nop
              0x00007fa82eb1be5c:   mov    0x10(%rsp),%rdx
              0x00007fa82eb1be61:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub@10 (line 188)
              0x00007fa82eb1be65:   movq   $0x0,0x20(%rsp)
          ╭   0x00007fa82eb1be6e:   jmp    0x00007fa82eb1be8f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub@13 (line 190)
          │   0x00007fa82eb1be73:   nopw   0x0(%rax,%rax,1)
          │   0x00007fa82eb1be7c:   data16 data16 xchg %ax,%ax          ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub@30 (line 192)
   5.69%  │↗  0x00007fa82eb1be80:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub@30 (line 192)
          ││  0x00007fa82eb1be87:   test   %eax,(%r11)                  ;   {poll}
   4.29%  ││  0x00007fa82eb1be8a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub@13 (line 190)
          ↘│  0x00007fa82eb1be8f:   mov    (%rsp),%r10
   1.55%   │  0x00007fa82eb1be93:   mov    0x8(%rsp),%rdi
           │  0x00007fa82eb1be98:   mov    %r10,%rsi
   4.20%   │  0x00007fa82eb1be9b:   mov    %rdi,%rdx                    ;*invokevirtual obj_blackhole_consume {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub@17 (line 190)
           │  0x00007fa82eb1be9e:   nop
   1.56%   │  0x00007fa82eb1be9f:   nop
           │  0x00007fa82eb1bea0:   data16 xchg %ax,%ax
   4.22%   │  0x00007fa82eb1bea3:   call   0x00007fa82701ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual obj_blackhole_consume {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
  19.12%   │  0x00007fa82eb1bea8:   nop
           │  0x00007fa82eb1bea9:   mov    0x20(%rsp),%r10
   0.01%   │  0x00007fa82eb1beae:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub@23 (line 191)
   5.81%   │  0x00007fa82eb1beb1:   mov    0x18(%rsp),%rsi
           │  0x00007fa82eb1beb6:   cmpb   $0x0,0x94(%rsi)
  19.98%   ╰  0x00007fa82eb1bebd:   je     0x00007fa82eb1be80           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub@30 (line 192)
              0x00007fa82eb1bebf:   mov    %r10,0x20(%rsp)
              0x00007fa82eb1bec4:   call   0x00007fa84503c4f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fa82eb1bec9:   nop
              0x00007fa82eb1beca:   mov    0x10(%rsp),%rdx
              0x00007fa82eb1becf:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub@37 (line 193)
              0x00007fa82eb1bed3:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub@43 (line 194)
              0x00007fa82eb1bed7:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  66.43%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_blackhole_consume, version 2, compile id 717 

             #           [sp+0x20]  (sp of caller)
             0x00007fa82eb19000:   mov    0x8(%rsi),%r10d
             0x00007fa82eb19004:   movabs $0x800000000,%r12
             0x00007fa82eb1900e:   add    %r12,%r10
             0x00007fa82eb19011:   xor    %r12,%r12
             0x00007fa82eb19014:   cmp    %r10,%rax
             0x00007fa82eb19017:   jne    0x00007fa82701e780           ;   {runtime_call ic_miss_stub}
             0x00007fa82eb1901d:   nop
             0x00007fa82eb1901e:   xchg   %ax,%ax
           [Verified Entry Point]
   1.55%     0x00007fa82eb19020:   mov    %eax,-0x14000(%rsp)
   4.34%     0x00007fa82eb19027:   sub    $0x18,%rsp
             0x00007fa82eb1902b:   mov    %rbp,0x10(%rsp)              ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_blackhole_consume@0 (line 119)
   1.55%  ╭  0x00007fa82eb19030:   test   %eax,(%rdx)                  ; implicit exception: dispatches to 0x00007fa82eb1904d
   3.88%  │  0x00007fa82eb19032:   mov    0xc(%rsi),%r10d
   0.32%  │  0x00007fa82eb19036:   shl    $0x3,%r10                    ;*getfield object {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_blackhole_consume@2 (line 119)
          │  0x00007fa82eb1903a:   mov    0x10(%rsp),%rbp
   1.63%  │  0x00007fa82eb1903f:   add    $0x18,%rsp
   4.01%  │  0x00007fa82eb19043:   mov    0x348(%r15),%rcx
   0.32%  │  0x00007fa82eb1904a:   test   %eax,(%rcx)                  ;   {poll_return}
  14.02%  │  0x00007fa82eb1904c:   ret    
          ↘  0x00007fa82eb1904d:   movl   $0xfffffff5,0x370(%r15)
             0x00007fa82eb19058:   movq   $0x0,0x378(%r15)
             0x00007fa82eb19063:   call   0x00007fa82702427a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_blackhole_consume@0 (line 119)
                                                                       ;   {runtime_call DeoptimizationBlob}
             0x00007fa82eb19068:   nop
           [Exception Handler]
             0x00007fa82eb19069:   call   0x00007fa827169d00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
             0x00007fa82eb1906e:   nop
....................................................................................................
  31.61%  <total for region 2>

....[Hottest Regions]...............................................................................
  66.43%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub, version 6, compile id 739 
  31.61%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_blackhole_consume, version 2, compile id 717 
   0.43%    [kernel.kallsyms]  native_write_msr 
   0.08%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.06%    [kernel.kallsyms]  __entry_text_start 
   0.06%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.05%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.04%    [kernel.kallsyms]  __free_one_page 
   0.04%    [kernel.kallsyms]  page_remove_rmap 
   0.04%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.04%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.03%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.03%    [kernel.kallsyms]  free_pcppages_bulk 
   0.03%    [kernel.kallsyms]  free_unref_page_commit.isra.0 
   0.03%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.02%    [kernel.kallsyms]  __mod_node_page_state 
   0.02%    [kernel.kallsyms]  release_pages 
   0.02%    [kernel.kallsyms]  uncharge_page 
   0.02%    [kernel.kallsyms]  mutex_unlock 
   0.02%    [kernel.kallsyms]  unlock_page_memcg 
   0.91%  <...other 265 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  66.43%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub, version 6, compile id 739 
  31.61%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_blackhole_consume, version 2, compile id 717 
   0.43%    [kernel.kallsyms]  native_write_msr 
   0.10%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.09%    [kernel.kallsyms]  __free_one_page 
   0.08%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.08%                       <unknown> 
   0.07%    [kernel.kallsyms]  release_pages 
   0.06%    [kernel.kallsyms]  __entry_text_start 
   0.06%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.04%    [kernel.kallsyms]  free_pcppages_bulk 
   0.04%    [kernel.kallsyms]  free_unref_page_commit.isra.0 
   0.04%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.04%    [kernel.kallsyms]  page_remove_rmap 
   0.04%    [kernel.kallsyms]  uncharge_page 
   0.03%    [kernel.kallsyms]  __mod_node_page_state 
   0.03%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.03%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.02%    [kernel.kallsyms]  mutex_unlock 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.66%  <...other 182 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.04%       jvmci, level 4
   1.65%    [kernel.kallsyms]
   0.10%            libjvm.so
   0.09%         libc-2.31.so
   0.08%                     
   0.02%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.00%  libjvmcicompiler.so
   0.00%          interpreter
   0.00%     Unknown, level 0
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.obj_return

# Run progress: 71.43% complete, ETA 00:03:45
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.620 ns/op
# Warmup Iteration   2: 6.230 ns/op
# Warmup Iteration   3: 6.194 ns/op
# Warmup Iteration   4: 6.190 ns/op
# Warmup Iteration   5: 6.188 ns/op
Iteration   1: 6.188 ns/op
Iteration   2: 6.189 ns/op
Iteration   3: 6.189 ns/op
Iteration   4: 6.189 ns/op
Iteration   5: 6.189 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.obj_return":
  6.189 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (6.188, 6.189, 6.189), stdev = 0.001
  CI (99.9%): [6.187, 6.191] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.obj_return:·asm":
PrintAssembly processed: 185974 total address lines.
Perf output processed (skipped 58.828 seconds):
 Column 1: cycles (50352 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub, version 5, compile id 737 

              0x00007f856eb1b258:   call   0x00007f8585e274f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f856eb1b25d:   nop
              0x00007f856eb1b25e:   mov    0x10(%rsp),%rdx
              0x00007f856eb1b263:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub@10 (line 188)
              0x00007f856eb1b267:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f856eb1b270:   jmp    0x00007f856eb1b28f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub@13 (line 190)
          │   0x00007f856eb1b275:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub@33 (line 192)
   6.28%  │↗  0x00007f856eb1b280:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub@33 (line 192)
  24.43%  ││  0x00007f856eb1b287:   test   %eax,(%r11)                  ;   {poll}
  36.80%  ││  0x00007f856eb1b28a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub@13 (line 190)
          ↘│  0x00007f856eb1b28f:   mov    0x8(%rsp),%r10
           │  0x00007f856eb1b294:   mov    %r10,%rsi
           │  0x00007f856eb1b297:   call   0x00007f856701ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual obj_return {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
           │  0x00007f856eb1b29c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub@20 (line 190)
           │  0x00007f856eb1b29d:   mov    0x20(%rsp),%r10
   6.08%   │  0x00007f856eb1b2a2:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub@26 (line 191)
   0.00%   │  0x00007f856eb1b2a5:   mov    0x18(%rsp),%rsi
           │  0x00007f856eb1b2aa:   cmpb   $0x0,0x94(%rsi)
           ╰  0x00007f856eb1b2b1:   je     0x00007f856eb1b280           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub@33 (line 192)
              0x00007f856eb1b2b3:   mov    %r10,0x20(%rsp)
              0x00007f856eb1b2b8:   call   0x00007f8585e274f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f856eb1b2bd:   nop
              0x00007f856eb1b2be:   mov    0x10(%rsp),%rdx
              0x00007f856eb1b2c3:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub@40 (line 193)
....................................................................................................
  73.60%  <total for region 1>

....[Hottest Region 2]..............................................................................
c1, level 1, com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_return, version 1, compile id 714 

           [Entry Point]
             # {method} {0x00007f854dc73728} &apos;obj_return&apos; &apos;()Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/InfrastructureBaselineBenchmark&apos;
             #           [sp+0x40]  (sp of caller)
             0x00007f856eb18a20:   mov    0x8(%rsi),%r10d
             0x00007f856eb18a24:   movabs $0x800000000,%r11
             0x00007f856eb18a2e:   add    %r11,%r10
             0x00007f856eb18a31:   cmp    %rax,%r10
             0x00007f856eb18a34:   jne    0x00007f856701e780           ;   {runtime_call ic_miss_stub}
             0x00007f856eb18a3a:   nopw   0x0(%rax,%rax,1)
           [Verified Entry Point]
   6.19%     0x00007f856eb18a40:   mov    %eax,-0x14000(%rsp)
             0x00007f856eb18a47:   push   %rbp
   6.07%     0x00007f856eb18a48:   sub    $0x30,%rsp                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_return@0 (line 113)
             0x00007f856eb18a4c:   mov    0xc(%rsi),%eax
             0x00007f856eb18a4f:   shl    $0x3,%rax                    ;*getfield object {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_return@1 (line 113)
   6.25%     0x00007f856eb18a53:   add    $0x30,%rsp
             0x00007f856eb18a57:   pop    %rbp
             0x00007f856eb18a58:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ╭  0x00007f856eb18a5f:   ja     0x00007f856eb18a66
   5.94%  │  0x00007f856eb18a65:   ret    
          ↘  0x00007f856eb18a66:   movabs $0x7f856eb18a58,%r10         ;   {internal_word}
             0x00007f856eb18a70:   mov    %r10,0x358(%r15)
             0x00007f856eb18a77:   jmp    0x00007f8567025100           ;   {runtime_call SafepointBlob}
             0x00007f856eb18a7c:   nop
             0x00007f856eb18a7d:   nop
             0x00007f856eb18a7e:   mov    0x3d8(%r15),%rax
             0x00007f856eb18a85:   movq   $0x0,0x3d8(%r15)
             0x00007f856eb18a90:   movq   $0x0,0x3e0(%r15)
             0x00007f856eb18a9b:   add    $0x30,%rsp
             0x00007f856eb18a9f:   pop    %rbp
....................................................................................................
  24.46%  <total for region 2>

....[Hottest Regions]...............................................................................
  73.60%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub, version 5, compile id 737 
  24.46%          c1, level 1  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_return, version 1, compile id 714 
   0.56%    [kernel.kallsyms]  native_write_msr 
   0.10%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.06%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.04%    [kernel.kallsyms]  __entry_text_start 
   0.04%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.04%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.03%    [kernel.kallsyms]  release_pages 
   0.03%    [kernel.kallsyms]  page_remove_rmap 
   0.03%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.03%    [kernel.kallsyms]  free_pcppages_bulk 
   0.03%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.03%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.03%    [kernel.kallsyms]  __free_one_page 
   0.02%    [kernel.kallsyms]  __mod_node_page_state 
   0.02%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.02%    [kernel.kallsyms]  free_swap_cache 
   0.02%    [kernel.kallsyms]  mutex_lock 
   0.02%    [kernel.kallsyms]  __tlb_remove_page_size 
   0.81%  <...other 243 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  73.60%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub, version 5, compile id 737 
  24.46%          c1, level 1  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_return, version 1, compile id 714 
   0.56%    [kernel.kallsyms]  native_write_msr 
   0.10%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.08%    [kernel.kallsyms]  release_pages 
   0.08%    [kernel.kallsyms]  __free_one_page 
   0.08%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.07%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.07%                       <unknown> 
   0.06%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.04%    [kernel.kallsyms]  __entry_text_start 
   0.04%    [kernel.kallsyms]  page_remove_rmap 
   0.03%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.03%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.03%    [kernel.kallsyms]  free_pcppages_bulk 
   0.02%    [kernel.kallsyms]  __mod_node_page_state 
   0.02%    [kernel.kallsyms]  free_swap_cache 
   0.02%    [kernel.kallsyms]  mutex_lock 
   0.02%    [kernel.kallsyms]  cgroup_rstat_updated 
   0.02%    [kernel.kallsyms]  __tlb_remove_page_size 
   0.58%  <...other 160 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  73.60%       jvmci, level 4
  24.46%          c1, level 1
   1.65%    [kernel.kallsyms]
   0.09%            libjvm.so
   0.07%         libc-2.31.so
   0.07%                     
   0.02%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%   libpthread-2.31.so
   0.01%          c1, level 3
   0.01%          interpreter
   0.00%  libjvmcicompiler.so
   0.00%               [vdso]
   0.00%          cfg80211.ko
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.obj_sink

# Run progress: 85.71% complete, ETA 00:01:52
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 10.531 ns/op
# Warmup Iteration   2: 10.148 ns/op
# Warmup Iteration   3: 10.127 ns/op
# Warmup Iteration   4: 10.098 ns/op
# Warmup Iteration   5: 10.118 ns/op
Iteration   1: 10.118 ns/op
Iteration   2: 10.113 ns/op
Iteration   3: 10.109 ns/op
Iteration   4: 10.111 ns/op
Iteration   5: 10.108 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.obj_sink":
  10.112 ±(99.9%) 0.015 ns/op [Average]
  (min, avg, max) = (10.108, 10.112, 10.118), stdev = 0.004
  CI (99.9%): [10.097, 10.127] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.obj_sink:·asm":
PrintAssembly processed: 193454 total address lines.
Perf output processed (skipped 59.159 seconds):
 Column 1: cycles (50246 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub, version 5, compile id 755 

              0x00007f9e06b1f4d8:   mov    0x10(%rsp),%rdx
              0x00007f9e06b1f4dd:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub@10 (line 188)
              0x00007f9e06b1f4e1:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f9e06b1f4ea:   jmp    0x00007f9e06b1f50f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub@13 (line 190)
          │   0x00007f9e06b1f4ef:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f9e06b1f4fa:   data16 data16 xchg %ax,%ax
          │   0x00007f9e06b1f4fe:   xchg   %ax,%ax                      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub@28 (line 192)
   3.85%  │↗  0x00007f9e06b1f500:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub@28 (line 192)
          ││  0x00007f9e06b1f507:   test   %eax,(%r11)                  ;   {poll}
   0.11%  ││  0x00007f9e06b1f50a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub@13 (line 190)
          ↘│  0x00007f9e06b1f50f:   mov    0x8(%rsp),%r10
   3.58%   │  0x00007f9e06b1f514:   mov    %r10,%rsi
   0.00%   │  0x00007f9e06b1f517:   call   0x00007f9dff01ea80           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual obj_sink {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub@15 (line 190)
           │                                                            ;   {optimized virtual_call}
  19.51%   │  0x00007f9e06b1f51c:   nop
   0.00%   │  0x00007f9e06b1f51d:   mov    0x20(%rsp),%r10
   7.17%   │  0x00007f9e06b1f522:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub@21 (line 191)
   3.76%   │  0x00007f9e06b1f525:   mov    0x18(%rsp),%rsi
           │  0x00007f9e06b1f52a:   cmpb   $0x0,0x94(%rsi)
  15.14%   ╰  0x00007f9e06b1f531:   je     0x00007f9e06b1f500           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub@28 (line 192)
              0x00007f9e06b1f533:   mov    %r10,0x20(%rsp)
              0x00007f9e06b1f538:   call   0x00007f9e1fd0d4f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f9e06b1f53d:   nop
              0x00007f9e06b1f53e:   mov    0x10(%rsp),%rdx
              0x00007f9e06b1f543:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub@35 (line 193)
              0x00007f9e06b1f547:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub@41 (line 194)
              0x00007f9e06b1f54b:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  53.13%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_sink, version 2, compile id 735 

            #           [sp+0x20]  (sp of caller)
            0x00007f9e06b1d120:   mov    0x8(%rsi),%r10d
            0x00007f9e06b1d124:   movabs $0x800000000,%r12
            0x00007f9e06b1d12e:   add    %r12,%r10
            0x00007f9e06b1d131:   xor    %r12,%r12
            0x00007f9e06b1d134:   cmp    %r10,%rax
            0x00007f9e06b1d137:   jne    0x00007f9dff01e780           ;   {runtime_call ic_miss_stub}
            0x00007f9e06b1d13d:   nop
            0x00007f9e06b1d13e:   xchg   %ax,%ax
          [Verified Entry Point]
   0.09%    0x00007f9e06b1d140:   mov    %eax,-0x14000(%rsp)
   9.21%    0x00007f9e06b1d147:   sub    $0x18,%rsp
   0.09%    0x00007f9e06b1d14b:   mov    %rbp,0x10(%rsp)
   0.70%    0x00007f9e06b1d150:   mov    0xc(%rsi),%edx               ;*getfield object {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_sink@2 (line 125)
   2.07%    0x00007f9e06b1d153:   shl    $0x3,%rdx
   1.37%    0x00007f9e06b1d157:   call   0x00007f9e06b1ce20           ; ImmutableOopMap {}
                                                                      ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_sink@5 (line 125)
                                                                      ;   {optimized virtual_call}
   4.74%    0x00007f9e06b1d15c:   nop
            0x00007f9e06b1d15d:   mov    0x10(%rsp),%rbp
   1.35%    0x00007f9e06b1d162:   add    $0x18,%rsp
   0.02%    0x00007f9e06b1d166:   mov    0x348(%r15),%rcx
   2.33%    0x00007f9e06b1d16d:   test   %eax,(%rcx)                  ;   {poll_return}
  13.75%    0x00007f9e06b1d16f:   ret    
          [Exception Handler]
            0x00007f9e06b1d170:   call   0x00007f9dff169d00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007f9e06b1d175:   nop
          [Deopt Handler Code]
            0x00007f9e06b1d176:   call   0x00007f9dff024020           ;   {runtime_call DeoptimizationBlob}
            0x00007f9e06b1d17b:   nop
            0x00007f9e06b1d17c:   hlt    
            0x00007f9e06b1d17d:   hlt    
            0x00007f9e06b1d17e:   hlt    
            0x00007f9e06b1d17f:   hlt    
....................................................................................................
  35.72%  <total for region 2>

....[Hottest Regions]...............................................................................
  53.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub, version 5, compile id 755 
  35.72%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_sink, version 2, compile id 735 
   9.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::sink, version 2, compile id 734 
   0.13%    [kernel.kallsyms]  native_write_msr 
   0.09%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.08%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.06%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.04%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.04%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.04%    [kernel.kallsyms]  __entry_text_start 
   0.04%    [kernel.kallsyms]  page_remove_rmap 
   0.03%    [kernel.kallsyms]  irqentry_exit_to_user_mode 
   0.03%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.03%    [kernel.kallsyms]  free_pcppages_bulk 
   0.03%            libjvm.so  ElfSymbolTable::lookup 
   0.02%    [kernel.kallsyms]  __free_one_page 
   0.02%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.02%    [kernel.kallsyms]  __mod_lruvec_state 
   0.02%    [kernel.kallsyms]  error_entry 
   0.02%    [kernel.kallsyms]  release_pages 
   1.26%  <...other 346 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  53.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub, version 5, compile id 755 
  35.72%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_sink, version 2, compile id 735 
   9.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::sink, version 2, compile id 734 
   0.13%    [kernel.kallsyms]  native_write_msr 
   0.12%                       <unknown> 
   0.10%    [kernel.kallsyms]  syscall_return_via_sysret 
   0.09%    [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.08%    [kernel.kallsyms]  zap_pte_range.isra.0 
   0.08%    [kernel.kallsyms]  entry_SYSCALL_64_after_hwframe 
   0.07%    [kernel.kallsyms]  release_pages 
   0.07%    [kernel.kallsyms]  __free_one_page 
   0.05%    [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.04%    [kernel.kallsyms]  __entry_text_start 
   0.04%    [kernel.kallsyms]  page_remove_rmap 
   0.03%    [kernel.kallsyms]  irqentry_exit_to_user_mode 
   0.03%    [kernel.kallsyms]  free_pcppages_bulk 
   0.03%    [kernel.kallsyms]  free_unref_page_list 
   0.03%            libjvm.so  ElfSymbolTable::lookup 
   0.02%    [kernel.kallsyms]  psi_group_change 
   0.02%    [kernel.kallsyms]  free_unref_page_prepare.part.0 
   0.97%  <...other 244 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.98%       jvmci, level 4
   1.60%    [kernel.kallsyms]
   0.16%            libjvm.so
   0.12%                     
   0.08%         libc-2.31.so
   0.02%   libpthread-2.31.so
   0.01%               [vdso]
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
   0.01%           ld-2.31.so
   0.01%       hsdis-amd64.so
   0.00%      perf-163714.map
   0.00%      nf_conntrack.ko
   0.00%               kvm.ko
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
InfrastructureBaselineBenchmark.method_baseline             avgt    5   5.433 ± 0.042  ns/op
InfrastructureBaselineBenchmark.method_baseline:·asm        avgt          NaN            ---
InfrastructureBaselineBenchmark.method_blank                avgt    5   5.428 ± 0.048  ns/op
InfrastructureBaselineBenchmark.method_blank:·asm           avgt          NaN            ---
InfrastructureBaselineBenchmark.method_dont_inline          avgt    5  10.108 ± 0.082  ns/op
InfrastructureBaselineBenchmark.method_dont_inline:·asm     avgt          NaN            ---
InfrastructureBaselineBenchmark.method_inline               avgt    5   5.414 ± 0.002  ns/op
InfrastructureBaselineBenchmark.method_inline:·asm          avgt          NaN            ---
InfrastructureBaselineBenchmark.obj_blackhole_consume       avgt    5   6.579 ± 0.156  ns/op
InfrastructureBaselineBenchmark.obj_blackhole_consume:·asm  avgt          NaN            ---
InfrastructureBaselineBenchmark.obj_return                  avgt    5   6.189 ± 0.002  ns/op
InfrastructureBaselineBenchmark.obj_return:·asm             avgt          NaN            ---
InfrastructureBaselineBenchmark.obj_sink                    avgt    5  10.112 ± 0.015  ns/op
InfrastructureBaselineBenchmark.obj_sink:·asm               avgt          NaN            ---
