# WARNING: JMH lock is ignored by user request, make sure no other JMH instances are running
# JMH version: 1.36
# VM version: JDK 17.0.7, Zing 64-Bit Tiered VM, 17.0.7-zing_23.05.0.0-b2-product-linux-X86_64
# *** WARNING: JMH support for this VM is experimental. Be extra careful with the produced data.
# VM invoker: /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Djmh.perfasm.libdir=/home/gogu/git/jvm-performance-benchmarks
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_baseline

# Run progress: 0.00% complete, ETA 00:11:40
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5.423 ns/op
# Warmup Iteration   2: 5.263 ns/op
# Warmup Iteration   3: 5.175 ns/op
# Warmup Iteration   4: 5.146 ns/op
# Warmup Iteration   5: 5.152 ns/op
Iteration   1: 5.170 ns/op
Iteration   2: 5.168 ns/op
Iteration   3: 5.170 ns/op
Iteration   4: 5.167 ns/op
Iteration   5: 5.171 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_baseline":
  5.169 ±(99.9%) 0.005 ns/op [Average]
  (min, avg, max) = (5.167, 5.169, 5.171), stdev = 0.001
  CI (99.9%): [5.164, 5.175] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_baseline:·asm":
PrintAssembly processed: 133262 total address lines.
Perf output processed (skipped 56.455 seconds):
 Column 1: cycles (51380 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x32b09bf6:0x32b09caa] in com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_baseline[C1]

         0x32b09bf6: e9 85 7c 4f fd                    jmp    -45122427                      ; 0x30001880 = StubRoutines::forward_exception
         [Loaded org.openjdk.jmh.runner.BenchmarkHandler$WorkerData from file:/home/gogu/git/jvm-performance-benchmarks/benchmarks/target/benchmarks.jar]
         [Loaded java.util.concurrent.atomic.AtomicIntegerFieldUpdater from /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/lib/modules]
         [Loaded java.util.concurrent.atomic.AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl from /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/lib/modules]
         [Loaded java.util.concurrent.atomic.AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl$1 from /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/lib/modules]
         [Loaded sun.reflect.misc.ReflectUtil from /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/lib/modules]
         5.728:  233         1 started   com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_baseline ()V (tid 139001) (kid 1445 pkid/prev 1421/NA) (mid 1479681 pmid 18426) (bytes 1) (generation 0) (lvl O2) (score 1) (score_updated 0ms; orig 1; promoted 0) (wait 0ms)
         [Loaded org.openjdk.jmh.runner.BenchmarkHandler$1 from file:/home/gogu/git/jvm-performance-benchmarks/benchmarks/target/benchmarks.jar]
           # {method}{0x200026546e8} method_baseline[C1] ()V in com/ionutbalosin/jvm/performance/benchmarks/InfrastructureBaselineBenchmark
         Decoding CodeBlob 0x32b09c00
 14.26%  0x32b09c80: e8 7b b9 50 fd 00 00              subq    $8, %rsp                      
         0x32b09c87: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 28.78%  0x32b09c90: 75 02                             jne    2                              ; 0x32b09c94
  7.99%  0x32b09c92: 59                                popq    %rcx                          
         0x32b09c93: c3                                retq                                  
         0x32b09c94: e8 a7 d8 50 fd                    callq    -45033305                    ; 0x30017540 = StubRoutines::safepoint_handler
         0x32b09c99: eb f7                             jmp    -9                             ; 0x32b09c92
                             // Generic exception handler
         0x32b09c9b: 59                                popq    %rcx                          
         0x32b09c9c: e9 df 81 51 fd                    jmp    -44989985                      ; 0x30021e80 = unwind_exception Runtime1 stub
         0x32b09ca1: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x32b09ca5: e9 56 45 50 fd                    jmp    -45071018                      ; 0x3000e200 = StubRoutines::deoptimize
         0x32b09caa: cc                                int3                                  
         <nmethodAdapter compile_id='233' level='1' size='40' address='0x00007f5fa418ccb0' dependencies_offset='32' stamp='81395.582'/>
....................................................................................................
 51.04%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x300310c6:0x3003113e] in com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub[Falcon]

         0x300310c6: 49 bc 40 64 b0 b9 60 7f 00 00     movabsq    $140053408932928, %r12     ; 0x7f60b9b06440 = os::javaTimeNanos_slow()
         0x300310d0: 41 ff d4                          callq    *%r12                        ; 0x7f60b9b06440 = os::javaTimeNanos_slow()
         0x300310d3: 48 89 43 20                       movq    %rax, 32(%rbx)                
         0x300310d7: 66 0f 1f 84 00 00 00 00 00        nopw    (%rax,%rax)                   
         0x300310e0: 4d 85 f6                          testq    %r14, %r14                   
         0x300310e3: 0f 84 7d 00 00 00                 je    125                             ; 0x30031166
         0x300310e9: 4d 85 ff                          testq    %r15, %r15                   
         0x300310ec: 0f 84 86 00 00 00                 je    134                             ; 0x30031178
         0x300310f2: 45 31 ed                          xorl    %r13d, %r13d                  
         0x300310f5: 66 66 2e 0f 1f 84 00 00 00 00     nopw    %cs:(%rax,%rax)               
  7.11%  0x30031100: 4c 89 f7                          movq    %r14, %rdi                    
         0x30031103: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30031108: e8 f3 c7 fd ff                    callq    -145421                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  6.40%  0x3003110d: 49 ff c5                          incq    %r13                          
  2.70%  0x30031110: 41 0f b6 87 94 00 00 00           movzbl    148(%r15), %eax             
 28.81%  0x30031118: 84 c0                             testb    %al, %al                     
  0.00%  0x3003111a: 74 e4                             je    -28                             ; 0x30031100
         0x3003111c: 41 ff d4                          callq    *%r12                        
         0x3003111f: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x30031123: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x3003112b: c4 c1 fb 2a c5                    vcvtsi2sd    %r13, %xmm0, %xmm0       
         0x30031130: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x30031135: 48 83 c4 30                       addq    $48, %rsp                     
         0x30031139: 5b                                popq    %rbx                          
         0x3003113a: 41 5c                             popq    %r12                          
         0x3003113c: 41 5d                             popq    %r13                          
         0x3003113e: 41 5e                             popq    %r14                          
....................................................................................................
 45.02%  <total for region 2>

....[Hottest Regions]...............................................................................
 51.04%  [0x32b09bf6:0x32b09caa] in com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_baseline[C1]
 45.02%  [0x300310c6:0x3003113e] in com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub[Falcon]
  0.23%  [0xffffffffa9eef317:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.21%  [0xffffffffa9ecfb6a:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.18%  [0xffffffffa9f0711f:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eb93b5:0xffffffffa9eb9491] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9f695f6:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f07065:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ed0740:0xffffffffa9ed078b] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0800:0xffffffffa9ed0873] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.06%  [0x7f60b9af45f8:0x7f60b9af4621] in [unknown] (libjvm.so)
  0.05%  [0xffffffffa9ee587e:0xffffffffa9ee588c] in [unknown] ([kernel.kallsyms])
  1.88%  <...other 271 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 51.04%  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_baseline[C1]
 45.02%  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_baseline_jmhTest::method_baseline_avgt_jmhStub[Falcon]
  3.66%  [unknown] ([kernel.kallsyms])
  0.18%  [unknown] (libjvm.so)
  0.02%  [unknown] (libc-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  thread_stack_region_start (libazsys3.so)
  0.01%  PMEM::account_enabled (libaztall.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.00%  VMEM::get_account_usage (libaztall.so)
  0.00%  PMEM_Account::fetch_stats (libaztall.so)
  0.00%  az_zmd_api_version (libazsys3.so)
  0.00%  sprintf (libc-2.31.so)
  0.00%  vsnprintf (libc-2.31.so)
  0.00%  <stub: fast_iload  224 fast_iload>
  0.00%  az_zmd_api_version_tall (libaztall.so)
  0.00%  __pthread_mutex_unlock (libpthread-2.31.so)
  0.00%  <stub: fast_aaccess_0  222 fast_aaccess_0>
  0.02%  <...other 8 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 96.06%  <generated code>
  3.66%  <native code in ([kernel.kallsyms])>
  0.18%  <native code in (libjvm.so)>
  0.04%  <native code in (libaztall.so)>
  0.03%  <native code in (libc-2.31.so)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libazsys3.so)>
  0.00%  <native code in ([vdso])>
....................................................................................................
100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.7, Zing 64-Bit Tiered VM, 17.0.7-zing_23.05.0.0-b2-product-linux-X86_64
# *** WARNING: JMH support for this VM is experimental. Be extra careful with the produced data.
# VM invoker: /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Djmh.perfasm.libdir=/home/gogu/git/jvm-performance-benchmarks
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_blank

# Run progress: 14.29% complete, ETA 00:11:14
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 4.668 ns/op
# Warmup Iteration   2: 4.867 ns/op
# Warmup Iteration   3: 4.836 ns/op
# Warmup Iteration   4: 4.831 ns/op
# Warmup Iteration   5: 4.826 ns/op
Iteration   1: 4.829 ns/op
Iteration   2: 4.831 ns/op
Iteration   3: 4.831 ns/op
Iteration   4: 4.828 ns/op
Iteration   5: 4.827 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_blank":
  4.829 ±(99.9%) 0.007 ns/op [Average]
  (min, avg, max) = (4.827, 4.829, 4.831), stdev = 0.002
  CI (99.9%): [4.823, 4.836] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_blank:·asm":
PrintAssembly processed: 133489 total address lines.
Perf output processed (skipped 56.698 seconds):
 Column 1: cycles (51349 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002eaa0:0x3002f039] in com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_blank[Falcon]

         0x3002f02f: 00 00                             addb    %al, (%rax)                   
         0x3002f031: 00 00                             addb    %al, (%rax)                   
         0x3002f033: 00 00                             addb    %al, (%rax)                   
         0x3002f035: 00 00                             addb    %al, (%rax)                   
         0x3002f037: 00 00                             addb    %al, (%rax)                   
         0x3002f039: 00 00                             addb    %al, (%rax)                   
         -----------
         6.001:  237         1 installed at 0x32b0a880 with size 0x165. com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub (Lorg/openjdk/jmh/runner/InfraControl;Lorg/openjdk/jmh/results/RawResults;Lorg/openjdk/jmh/infra/BenchmarkParams;Lorg/openjdk/jmh/infra/IterationParams;Lorg/openjdk/jmh/infra/ThreadParams;Lorg/openjdk/jmh/infra/Blackhole;Lorg/openjdk/jmh/infra/Control;ILcom/ionutbalosin/jvm/performance/benchmarks/jmh_generated/InfrastructureBaselineBenchmark_jmhType;)V (tid 139138) (kid 1412 pkid/prev 1388/NA) (mid 1445894 pmid 18277) (bytes 52) (generation 0) (lvl O2) (score 52) (score_updated 8ms; orig 52; promoted 1) (wait 4ms) (compile 4ms/8ms)
           # {method}{0x200026548f8} method_blank[Falcon] ()V in com/ionutbalosin/jvm/performance/benchmarks/InfrastructureBaselineBenchmark
         Decoding CodeBlob 0x3002ea00
 15.51%  0x3002eaa0: eb f9                             pushq    %rax                         
  9.06%  0x3002eaa2: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 19.92%  0x3002eaab: 75 02                             jne    2                              ; 0x3002eaaf
  7.77%  0x3002eaad: 58                                popq    %rax                          
  1.51%  0x3002eaae: c3                                retq                                  
         0x3002eaaf: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002eab9: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002eabb: eb f0                             jmp    -16                            ; 0x3002eaad
         0x3002eabd: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x3002eac1: e9 3a f7 fd ff                    jmp    -133318                        ; 0x3000e200 = StubRoutines::deoptimize
         0x3002eac6: cc                                int3                                  
         Call tree size: 1
         0: caller_index: -1 bci: -1 callee: virtual void com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_blank()
         Encoded locations size: 3
         offset: 0 length: 29 scope: 0 bci: 0
....................................................................................................
 53.78%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x300312c6:0x3003133c] in com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub[Falcon]

         0x300312c6: 49 bc 40 94 02 96 1f 7f 00 00     movabsq    $139773637465152, %r12     ; 0x7f1f96029440 = os::javaTimeNanos_slow()
         0x300312d0: 41 ff d4                          callq    *%r12                        ; 0x7f1f96029440 = os::javaTimeNanos_slow()
         0x300312d3: 48 89 43 20                       movq    %rax, 32(%rbx)                
         0x300312d7: 66 0f 1f 84 00 00 00 00 00        nopw    (%rax,%rax)                   
         0x300312e0: 4d 85 f6                          testq    %r14, %r14                   
         0x300312e3: 0f 84 7d 00 00 00                 je    125                             ; 0x30031366
         0x300312e9: 4d 85 ff                          testq    %r15, %r15                   
         0x300312ec: 0f 84 86 00 00 00                 je    134                             ; 0x30031378
         0x300312f2: 45 31 ed                          xorl    %r13d, %r13d                  
         0x300312f5: 66 66 2e 0f 1f 84 00 00 00 00     nopw    %cs:(%rax,%rax)               
  7.57%  0x30031300: 4c 89 f7                          movq    %r14, %rdi                    
         0x30031303: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30031308: e8 f3 c5 fd ff                    callq    -145933                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x3003130d: 49 ff c5                          incq    %r13                          
  3.84%  0x30031310: 41 0f b6 87 94 00 00 00           movzbl    148(%r15), %eax             
 30.95%  0x30031318: 84 c0                             testb    %al, %al                     
         0x3003131a: 74 e4                             je    -28                             ; 0x30031300
         0x3003131c: 41 ff d4                          callq    *%r12                        
         0x3003131f: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x30031323: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x3003132b: c4 c1 fb 2a c5                    vcvtsi2sd    %r13, %xmm0, %xmm0       
         0x30031330: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x30031335: 48 83 c4 30                       addq    $48, %rsp                     
         0x30031339: 5b                                popq    %rbx                          
         0x3003133a: 41 5c                             popq    %r12                          
         0x3003133c: 41 5d                             popq    %r13                          
....................................................................................................
 42.36%  <total for region 2>

....[Hottest Regions]...............................................................................
 53.78%  [0x3002eaa0:0x3002f039] in com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_blank[Falcon]
 42.36%  [0x300312c6:0x3003133c] in com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub[Falcon]
  0.22%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.19%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.19%  [0xffffffffa9eb8dcf:0xffffffffa9eb8de6] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9f0711c:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9f211f0:0xffffffffa9f21223] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f07060:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f686c0:0xffffffffa9f6875f] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ee587e:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f69657:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0746:0xffffffffa9ed07c7] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0809:0xffffffffa9ed0889] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eef971:0xffffffffa9eef9a3] in [unknown] ([kernel.kallsyms])
  1.85%  <...other 264 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 53.78%  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_blank[Falcon]
 42.36%  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_blank_jmhTest::method_blank_avgt_jmhStub[Falcon]
  3.65%  [unknown] ([kernel.kallsyms])
  0.14%  [unknown] (libjvm.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  PMEM::account_enabled; PMEM::accounts (libaztall.so)
  0.00%  __errno_location (libpthread-2.31.so)
  0.00%  VMEM::get_account_usage (libaztall.so)
  0.00%  <stub: return entry points>
  0.00%  <stub: method entry point (kind = zerolocals)>
  0.00%  <stub: istore_2  61 istore_2>
  0.00%  [unknown] (libstdc++.so.6)
  0.00%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  <stub: aload_1  43 aload_1>
  0.00%  __pthread_mutex_unlock (libpthread-2.31.so)
  0.00%  <stub: invokevirtual  182 invokevirtual>
  0.00%  syscall (libc-2.31.so)
  0.00%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  <...other 2 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 96.15%  <generated code>
  3.65%  <native code in ([kernel.kallsyms])>
  0.14%  <native code in (libjvm.so)>
  0.02%  <native code in (libc-2.31.so)>
  0.02%  <native code in (libaztall.so)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.00%  <native code in (libstdc++.so.6)>
....................................................................................................
100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.7, Zing 64-Bit Tiered VM, 17.0.7-zing_23.05.0.0-b2-product-linux-X86_64
# *** WARNING: JMH support for this VM is experimental. Be extra careful with the produced data.
# VM invoker: /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Djmh.perfasm.libdir=/home/gogu/git/jvm-performance-benchmarks
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_dont_inline

# Run progress: 28.57% complete, ETA 00:09:19
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 9.810 ns/op
# Warmup Iteration   2: 9.339 ns/op
# Warmup Iteration   3: 9.722 ns/op
# Warmup Iteration   4: 9.716 ns/op
# Warmup Iteration   5: 9.716 ns/op
Iteration   1: 9.716 ns/op
Iteration   2: 9.667 ns/op
Iteration   3: 9.667 ns/op
Iteration   4: 9.667 ns/op
Iteration   5: 9.667 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_dont_inline":
  9.677 ±(99.9%) 0.084 ns/op [Average]
  (min, avg, max) = (9.667, 9.677, 9.716), stdev = 0.022
  CI (99.9%): [9.593, 9.761] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_dont_inline:·asm":
PrintAssembly processed: 133433 total address lines.
Perf output processed (skipped 57.073 seconds):
 Column 1: cycles (51414 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x300312c6:0x3003133c] in com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub[Falcon]

         0x300312c6: 49 bc 40 24 c1 9c a8 7f 00 00     movabsq    $140362161136704, %r12     ; 0x7fa89cc12440 = os::javaTimeNanos_slow()
         0x300312d0: 41 ff d4                          callq    *%r12                        ; 0x7fa89cc12440 = os::javaTimeNanos_slow()
         0x300312d3: 48 89 43 20                       movq    %rax, 32(%rbx)                
         0x300312d7: 66 0f 1f 84 00 00 00 00 00        nopw    (%rax,%rax)                   
         0x300312e0: 4d 85 f6                          testq    %r14, %r14                   
         0x300312e3: 0f 84 7d 00 00 00                 je    125                             ; 0x30031366
         0x300312e9: 4d 85 ff                          testq    %r15, %r15                   
         0x300312ec: 0f 84 86 00 00 00                 je    134                             ; 0x30031378
         0x300312f2: 45 31 ed                          xorl    %r13d, %r13d                  
         0x300312f5: 66 66 2e 0f 1f 84 00 00 00 00     nopw    %cs:(%rax,%rax)               
  3.87%  0x30031300: 4c 89 f7                          movq    %r14, %rdi                    
         0x30031303: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30031308: e8 f3 c5 fd ff                    callq    -145933                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
 23.06%  0x3003130d: 49 ff c5                          incq    %r13                          
  7.58%  0x30031310: 41 0f b6 87 94 00 00 00           movzbl    148(%r15), %eax             
 15.21%  0x30031318: 84 c0                             testb    %al, %al                     
         0x3003131a: 74 e4                             je    -28                             ; 0x30031300
         0x3003131c: 41 ff d4                          callq    *%r12                        
         0x3003131f: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x30031323: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x3003132b: c4 c1 fb 2a c5                    vcvtsi2sd    %r13, %xmm0, %xmm0       
         0x30031330: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x30031335: 48 83 c4 30                       addq    $48, %rsp                     
         0x30031339: 5b                                popq    %rbx                          
         0x3003133a: 41 5c                             popq    %r12                          
         0x3003133c: 41 5d                             popq    %r13                          
....................................................................................................
 49.73%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x3002f0a0:0x32b0a5e4] in com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_dont_inline[Falcon]

         0x32b0a5df: e9 1c 3c 50 fd                    jmp    -45073380                      ; 0x3000e200 = StubRoutines::deoptimize
         0x32b0a5e4: cc                                int3                                  
         <nmethodAdapter compile_id='237' level='1' size='40' address='0x00007fa7881f6ed0' dependencies_offset='32' stamp='81619.916'/>
         6.395:  237         1 inlining into com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub (Lorg/openjdk/jmh/runner/InfraControl;Lorg/openjdk/jmh/results/RawResults;Lorg/openjdk/jmh/infra/BenchmarkParams;Lorg/openjdk/jmh/infra/IterationParams;Lorg/openjdk/jmh/infra/ThreadParams;Lorg/openjdk/jmh/infra/Blackhole;Lorg/openjdk/jmh/infra/Control;ILcom/ionutbalosin/jvm/performance/benchmarks/jmh_generated/InfrastructureBaselineBenchmark_jmhType;)V (tid 139281) (kid 1412 pkid/prev 1388/NA) (mid 1445894 pmid 18277) (bytes 52) (generation 0) (lvl O2) (score 52) (score_updated 20ms; orig 52; promoted 0) (wait 20ms)
         6.395:              @ 7   java.lang.System::nanoTime (0 bytes)   intrinsics
         6.395:            - @ 15   com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_dont_inline (5 bytes)   disallowed by CompilerOracle
         6.395:              @ 32   java.lang.System::nanoTime (0 bytes)   intrinsics
         6.402:  237         1 installed at 0x32b0a480 with size 0x165. com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub (Lorg/openjdk/jmh/runner/InfraControl;Lorg/openjdk/jmh/results/RawResults;Lorg/openjdk/jmh/infra/BenchmarkParams;Lorg/openjdk/jmh/infra/IterationParams;Lorg/openjdk/jmh/infra/ThreadParams;Lorg/openjdk/jmh/infra/Blackhole;Lorg/openjdk/jmh/infra/Control;ILcom/ionutbalosin/jvm/performance/benchmarks/jmh_generated/InfrastructureBaselineBenchmark_jmhType;)V (tid 139281) (kid 1412 pkid/prev 1388/NA) (mid 1445894 pmid 18277) (bytes 52) (generation 0) (lvl O2) (score 52) (score_updated 5ms; orig 52; promoted 1) (wait 20ms) (compile 4ms/6ms)
           # {method}{0x20002654cb0} method_dont_inline[Falcon] ()V in com/ionutbalosin/jvm/performance/benchmarks/InfrastructureBaselineBenchmark
         Decoding CodeBlob 0x3002f000
  7.67%  0x3002f0a0: eb f9 ec 38                       subq    $56, %rsp                     
         0x3002f0a4: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 15.47%  0x3002f0ad: 75 0b                             jne    11                             ; 0x3002f0ba
  3.83%  0x3002f0af: 90                                nop                                   
         0x3002f0b0: e8 4b e8 fd ff                    callq    -137141                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  3.93%  0x3002f0b5: 48 83 c4 38                       addq    $56, %rsp                     
  7.72%  0x3002f0b9: c3                                retq                                  
         0x3002f0ba: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f0c4: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f0c6: eb e7                             jmp    -25                            ; 0x3002f0af
         0x3002f0c8: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x3002f0cc: e9 2f f1 fd ff                    jmp    -134865                        ; 0x3000e200 = StubRoutines::deoptimize
         0x3002f0d1: cc                                int3                                  
         Call tree size: 1
         0: caller_index: -1 bci: -1 callee: virtual void com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_dont_inline()
         Encoded locations size: 3
         offset: 0 length: 40 scope: 0 bci: 0
....................................................................................................
 38.63%  <total for region 2>

....[Hottest Region 3]..............................................................................
 [0x32b09c80:0x32b09caa] in com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::target_dont_inline[C1]

         [Loaded java.util.concurrent.atomic.AtomicIntegerFieldUpdater from /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/lib/modules]
         [Loaded java.util.concurrent.atomic.AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl from /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/lib/modules]
         [Loaded java.util.concurrent.atomic.AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl$1 from /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/lib/modules]
         [Loaded sun.reflect.misc.ReflectUtil from /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/lib/modules]
         [Loaded org.openjdk.jmh.runner.BenchmarkHandler$1 from file:/home/gogu/git/jvm-performance-benchmarks/benchmarks/target/benchmarks.jar]
         [Loaded java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionNode from /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/lib/modules]
         6.360:  234         1 started   com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::target_dont_inline ()V (tid 139280) (kid 1445 pkid/prev 1421/NA) (mid 1479690 pmid 18434) (bytes 1) (generation 0) (lvl O2) (score 1) (score_updated 0ms; orig 1; promoted 0) (wait 0ms)
           # {method}{0x20002655540} target_dont_inline[C1] ()V in com/ionutbalosin/jvm/performance/benchmarks/InfrastructureBaselineBenchmark
         Decoding CodeBlob 0x32b09c00
         0x32b09c80: e8 7b b9 50 fd 00 00              subq    $8, %rsp                      
  3.87%  0x32b09c87: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  0.00%  0x32b09c90: 75 02                             jne    2                              ; 0x32b09c94
  3.76%  0x32b09c92: 59                                popq    %rcx                          
         0x32b09c93: c3                                retq                                  
         0x32b09c94: e8 a7 d8 50 fd                    callq    -45033305                    ; 0x30017540 = StubRoutines::safepoint_handler
         0x32b09c99: eb f7                             jmp    -9                             ; 0x32b09c92
                             // Generic exception handler
         0x32b09c9b: 59                                popq    %rcx                          
         0x32b09c9c: e9 df 81 51 fd                    jmp    -44989985                      ; 0x30021e80 = unwind_exception Runtime1 stub
         0x32b09ca1: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x32b09ca5: e9 56 45 50 fd                    jmp    -45071018                      ; 0x3000e200 = StubRoutines::deoptimize
         0x32b09caa: cc                                int3                                  
         <nmethodAdapter compile_id='234' level='1' size='40' address='0x00007fa784061340' dependencies_offset='32' stamp='81619.875'/>
....................................................................................................
  7.63%  <total for region 3>

....[Hottest Regions]...............................................................................
 49.73%  [0x300312c6:0x3003133c] in com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub[Falcon]
 38.63%  [0x3002f0a0:0x32b0a5e4] in com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_dont_inline[Falcon]
  7.63%  [0x32b09c80:0x32b09caa] in com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::target_dont_inline[C1]
  0.22%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.20%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.18%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9f0711c:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb93b5:0xffffffffa9eb9441] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9eff400:0xffffffffa9eff432] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f695f6:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f211f0:0xffffffffa9f21223] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ed0800:0xffffffffa9ed0860] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28d0d0:0xffffffffaa28d110] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28ead0:0xffffffffaa28eb16] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f07060:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0740:0xffffffffa9ed078b] in [unknown] ([kernel.kallsyms])
  2.00%  <...other 338 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 49.73%  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_dont_inline_jmhTest::method_dont_inline_avgt_jmhStub[Falcon]
 38.63%  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_dont_inline[Falcon]
  7.63%  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::target_dont_inline[C1]
  3.68%  [unknown] ([kernel.kallsyms])
  0.17%  [unknown] (libjvm.so)
  0.07%  [unknown] (liborca.so.0.0.0.0)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  [unknown] ([vdso])
  0.01%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  <stub: method entry point (kind = zerolocals)>
  0.00%  <stub: aload_3  45 aload_3>
  0.00%  az_get_elastic_tall (libaztall.so)
  0.00%  PMEM::get_account_usage (libaztall.so)
  0.00%  PMEM::account_enabled (libaztall.so)
  0.00%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  clock_gettime (libc-2.31.so)
  0.00%  <stub: iushr  124 iushr>
  0.00%  _dl_addr (libc-2.31.so)
  0.02%  <...other 10 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 96.00%  <generated code>
  3.68%  <native code in ([kernel.kallsyms])>
  0.17%  <native code in (libjvm.so)>
  0.07%  <native code in (liborca.so.0.0.0.0)>
  0.03%  <native code in (libaztall.so)>
  0.02%  <native code in (libc-2.31.so)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in ([vdso])>
  0.00%  <native code in (libazsys3.so)>
  0.00%  <native code in (libjava.so)>
....................................................................................................
100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.7, Zing 64-Bit Tiered VM, 17.0.7-zing_23.05.0.0-b2-product-linux-X86_64
# *** WARNING: JMH support for this VM is experimental. Be extra careful with the produced data.
# VM invoker: /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Djmh.perfasm.libdir=/home/gogu/git/jvm-performance-benchmarks
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_inline

# Run progress: 42.86% complete, ETA 00:07:27
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 4.837 ns/op
# Warmup Iteration   2: 4.641 ns/op
# Warmup Iteration   3: 4.837 ns/op
# Warmup Iteration   4: 4.867 ns/op
# Warmup Iteration   5: 4.864 ns/op
Iteration   1: 4.857 ns/op
Iteration   2: 4.869 ns/op
Iteration   3: 4.873 ns/op
Iteration   4: 4.873 ns/op
Iteration   5: 4.861 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_inline":
  4.867 ±(99.9%) 0.028 ns/op [Average]
  (min, avg, max) = (4.857, 4.867, 4.873), stdev = 0.007
  CI (99.9%): [4.839, 4.894] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_inline:·asm":
PrintAssembly processed: 132990 total address lines.
Perf output processed (skipped 56.525 seconds):
 Column 1: cycles (52217 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f2a0:0x3002f2c6] in com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_inline[Falcon]

         offset: 493 length: 9 scope: 2 bci: 0
         offset: 502 length: 9 scope: 0 bci: 0
         offset: 511 length: 280 scope: 1 bci: 0
         offset: 791 length: 30 scope: 0 bci: 0
         offset: 821 length: 30 scope: 2 bci: 0
         offset: 851 length: 18 scope: 1 bci: 0
         offset: 869 length: 42 scope: 0 bci: 0
         <nmethodAdapter compile_id='228' level='2' size='40' address='0x00007f990c01eb90' dependencies_offset='32' stamp='81731.297'/>
           # {method}{0x20002654980} method_inline[Falcon] ()V in com/ionutbalosin/jvm/performance/benchmarks/InfrastructureBaselineBenchmark
         Decoding CodeBlob 0x3002f200
 14.88%  0x3002f2a0: eb f9                             pushq    %rax                         
  9.05%  0x3002f2a2: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 19.43%  0x3002f2ab: 75 02                             jne    2                              ; 0x3002f2af
  7.48%  0x3002f2ad: 58                                popq    %rax                          
  1.57%  0x3002f2ae: c3                                retq                                  
         0x3002f2af: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f2b9: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f2bb: eb f0                             jmp    -16                            ; 0x3002f2ad
         0x3002f2bd: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x3002f2c1: e9 3a ef fd ff                    jmp    -135366                        ; 0x3000e200 = StubRoutines::deoptimize
         0x3002f2c6: cc                                int3                                  
         Call tree size: 1
         0: caller_index: -1 bci: -1 callee: virtual void com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.method_inline()
         Encoded locations size: 3
         offset: 0 length: 29 scope: 0 bci: 0
....................................................................................................
 52.40%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x300316c6:0x3003173c] in com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_inline_jmhTest::method_inline_avgt_jmhStub[Falcon]

         0x300316c6: 49 bc 40 04 8c 26 9a 7f 00 00     movabsq    $140300048401472, %r12     ; 0x7f9a268c0440 = os::javaTimeNanos_slow()
         0x300316d0: 41 ff d4                          callq    *%r12                        ; 0x7f9a268c0440 = os::javaTimeNanos_slow()
         0x300316d3: 48 89 43 20                       movq    %rax, 32(%rbx)                
         0x300316d7: 66 0f 1f 84 00 00 00 00 00        nopw    (%rax,%rax)                   
         0x300316e0: 4d 85 f6                          testq    %r14, %r14                   
         0x300316e3: 0f 84 7d 00 00 00                 je    125                             ; 0x30031766
         0x300316e9: 4d 85 ff                          testq    %r15, %r15                   
         0x300316ec: 0f 84 86 00 00 00                 je    134                             ; 0x30031778
         0x300316f2: 45 31 ed                          xorl    %r13d, %r13d                  
         0x300316f5: 66 66 2e 0f 1f 84 00 00 00 00     nopw    %cs:(%rax,%rax)               
  7.57%  0x30031700: 4c 89 f7                          movq    %r14, %rdi                    
         0x30031703: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30031708: e8 f3 c1 fd ff                    callq    -146957                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x3003170d: 49 ff c5                          incq    %r13                          
  4.37%  0x30031710: 41 0f b6 87 94 00 00 00           movzbl    148(%r15), %eax             
 30.22%  0x30031718: 84 c0                             testb    %al, %al                     
         0x3003171a: 74 e4                             je    -28                             ; 0x30031700
         0x3003171c: 41 ff d4                          callq    *%r12                        
         0x3003171f: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x30031723: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x3003172b: c4 c1 fb 2a c5                    vcvtsi2sd    %r13, %xmm0, %xmm0       
         0x30031730: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x30031735: 48 83 c4 30                       addq    $48, %rsp                     
         0x30031739: 5b                                popq    %rbx                          
         0x3003173a: 41 5c                             popq    %r12                          
         0x3003173c: 41 5d                             popq    %r13                          
....................................................................................................
 42.15%  <total for region 2>

....[Hottest Regions]...............................................................................
 52.40%  [0x3002f2a0:0x3002f2c6] in com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_inline[Falcon]
 42.15%  [0x300316c6:0x3003173c] in com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_inline_jmhTest::method_inline_avgt_jmhStub[Falcon]
  1.29%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.25%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f0711c:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f211f0:0xffffffffa9f21223] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f695f5:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eef44f:0xffffffffa9eef4ad] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9ee587e:0xffffffffa9ee588c] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ed0740:0xffffffffa9ed07b2] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f07065:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eff400:0xffffffffa9eff421] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9f686c0:0xffffffffa9f6875b] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28ead0:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eee5d0:0xffffffffa9eee62f] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9ed0800:0xffffffffa9ed086e] in [unknown] ([kernel.kallsyms])
  2.34%  <...other 365 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 52.40%  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::method_inline[Falcon]
 42.15%  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_method_inline_jmhTest::method_inline_avgt_jmhStub[Falcon]
  4.98%  [unknown] ([kernel.kallsyms])
  0.26%  [unknown] (libjvm.so)
  0.02%  [unknown] (libc-2.31.so)
  0.02%  PMEM::get_account_usage (libaztall.so)
  0.02%  __errno_location (libpthread-2.31.so)
  0.02%  [unknown] ([vdso])
  0.02%  PMEM::account_enabled; PMEM::accounts (libaztall.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  thread_stack_region_start (libazsys3.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.01%  az_zmd_api_version_tall (libaztall.so)
  0.01%  <stub: method entry point (kind = zerolocals)>
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  VMEM_SpaceManager::uses_cache_for_account (libaztall.so)
  0.00%  _dl_addr (libc-2.31.so)
  0.00%  is_thread_initialized (libazsys3.so)
  0.03%  <...other 13 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 94.57%  <generated code>
  4.98%  <native code in ([kernel.kallsyms])>
  0.26%  <native code in (libjvm.so)>
  0.07%  <native code in (libaztall.so)>
  0.05%  <native code in (libc-2.31.so)>
  0.02%  <native code in (libpthread-2.31.so)>
  0.02%  <native code in (libazsys3.so)>
  0.02%  <native code in ([vdso])>
  0.01%  <native code in (liborca.so.0.0.0.0)>
....................................................................................................
100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.7, Zing 64-Bit Tiered VM, 17.0.7-zing_23.05.0.0-b2-product-linux-X86_64
# *** WARNING: JMH support for this VM is experimental. Be extra careful with the produced data.
# VM invoker: /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Djmh.perfasm.libdir=/home/gogu/git/jvm-performance-benchmarks
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.obj_blackhole_consume

# Run progress: 57.14% complete, ETA 00:05:34
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5.734 ns/op
# Warmup Iteration   2: 5.720 ns/op
# Warmup Iteration   3: 5.480 ns/op
# Warmup Iteration   4: 5.718 ns/op
# Warmup Iteration   5: 5.718 ns/op
Iteration   1: 5.716 ns/op
Iteration   2: 5.714 ns/op
Iteration   3: 5.711 ns/op
Iteration   4: 5.711 ns/op
Iteration   5: 5.711 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.obj_blackhole_consume":
  5.712 ±(99.9%) 0.008 ns/op [Average]
  (min, avg, max) = (5.711, 5.712, 5.716), stdev = 0.002
  CI (99.9%): [5.704, 5.721] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.obj_blackhole_consume:·asm":
PrintAssembly processed: 133720 total address lines.
Perf output processed (skipped 58.958 seconds):
 Column 1: cycles (51334 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002eca0:0x3002ed07] in com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_blackhole_consume[Falcon]

         0x3002ecef: eb d4                             jmp    -44                            ; 0x3002ecc5
         0x3002ecf1: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002ecfb: 41 bb 0b 00 00 00                 movl    $11, %r11d                    
         0x3002ed01: ff d0                             callq    *%rax                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002ed03: 00 00                             addb    %al, (%rax)                   
         0x3002ed05: 00 00                             addb    %al, (%rax)                   
         0x3002ed07: 00 00                             addb    %al, (%rax)                   
         -----------
           # {method}{0x20002654da8} obj_blackhole_consume[Falcon] (Lorg/openjdk/jmh/infra/Blackhole;)V in com/ionutbalosin/jvm/performance/benchmarks/InfrastructureBaselineBenchmark
         Decoding CodeBlob 0x3002ec00
 13.23%  0x3002eca0: eb f9                             pushq    %rax                         
  9.37%  0x3002eca2: 48 89 f9                          movq    %rdi, %rcx                    
         0x3002eca5: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 14.55%  0x3002ecae: 75 1b                             jne    27                             ; 0x3002eccb
  6.51%  0x3002ecb0: 48 85 f6                          testq    %rsi, %rsi                   
         0x3002ecb3: 74 3c                             je    60                              ; 0x3002ecf1
         0x3002ecb5: 48 8b 41 08                       movq    8(%rcx), %rax                 
         0x3002ecb9: 2e 2e ba 48 00 f8 2f              movl    $804782152, %edx              ; 804782152 = clearable_gc_phase_trap_mask
         0x3002ecc0: 48 85 02                          testq    %rax, (%rdx)                 
         0x3002ecc3: 75 14                             jne    20                             ; 0x3002ecd9
 10.03%  0x3002ecc5: 48 89 04 24                       movq    %rax, (%rsp)                  
  1.08%  0x3002ecc9: 58                                popq    %rax                          
 17.57%  0x3002ecca: c3                                retq                                  
         0x3002eccb: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002ecd5: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002ecd7: eb d7                             jmp    -41                            ; 0x3002ecb0
         0x3002ecd9: 48 83 c1 08                       addq    $8, %rcx                      
         0x3002ecdd: 48 ba c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rdx           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002ece7: 48 89 c7                          movq    %rax, %rdi                    
         0x3002ecea: 48 89 ce                          movq    %rcx, %rsi                    
         0x3002eced: ff d2                             callq    *%rdx                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002ecef: eb d4                             jmp    -44                            ; 0x3002ecc5
         0x3002ecf1: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
....................................................................................................
 72.34%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x300314cb:0x3003153d] in com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub[Falcon]

         0x300314cb: 49 bd 40 24 46 01 89 7f 00 00     movabsq    $140226408621120, %r13     ; 0x7f8901462440 = os::javaTimeNanos_slow()
         0x300314d5: 41 ff d5                          callq    *%r13                        ; 0x7f8901462440 = os::javaTimeNanos_slow()
         0x300314d8: 48 89 43 20                       movq    %rax, 32(%rbx)                
         0x300314dc: 0f 1f 40 00                       nopl    (%rax)                        
         0x300314e0: 4d 85 ff                          testq    %r15, %r15                   
         0x300314e3: 0f 84 7f 00 00 00                 je    127                             ; 0x30031568
         0x300314e9: 4d 85 e4                          testq    %r12, %r12                   
         0x300314ec: 0f 84 88 00 00 00                 je    136                             ; 0x3003157a
         0x300314f2: 31 ed                             xorl    %ebp, %ebp                    
         0x300314f4: 66 66 66 2e 0f 1f 84 00 00 00     nopw    %cs:(%rax,%rax)               
  6.95%  0x30031500: 4c 89 ff                          movq    %r15, %rdi                    
         0x30031503: 4c 89 f6                          movq    %r14, %rsi                    
         0x30031506: 66 90                             nop                                   
         0x30031508: e8 f3 c3 fd ff                    callq    -146445                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  0.00%  0x3003150d: 48 ff c5                          incq    %rbp                          
  0.01%  0x30031510: 41 0f b6 84 24 94 00 00 00        movzbl    148(%r12), %eax             
 16.86%  0x30031519: 84 c0                             testb    %al, %al                     
         0x3003151b: 74 e3                             je    -29                             ; 0x30031500
         0x3003151d: 41 ff d5                          callq    *%r13                        
         0x30031520: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x30031524: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x3003152c: c4 e1 fb 2a c5                    vcvtsi2sd    %rbp, %xmm0, %xmm0       
         0x30031531: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x30031536: 48 83 c4 38                       addq    $56, %rsp                     
         0x3003153a: 5b                                popq    %rbx                          
         0x3003153b: 41 5c                             popq    %r12                          
         0x3003153d: 41 5d                             popq    %r13                          
....................................................................................................
 23.83%  <total for region 2>

....[Hottest Regions]...............................................................................
 72.34%  [0x3002eca0:0x3002ed07] in com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_blackhole_consume[Falcon]
 23.83%  [0x300314cb:0x3003153d] in com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub[Falcon]
  0.25%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.21%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.19%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9f0711f:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9eff400:0xffffffffa9eff42d] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffaa28ead0:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0800:0xffffffffa9ed0873] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ee587e:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.05%  [0x7f89014505f8:0x7f8901450621] in [unknown] (libjvm.so)
  0.05%  [0xffffffffa9f070ab:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.04%  [0xffffffffa9ed0740:0xffffffffa9ed0797] in [unknown] ([kernel.kallsyms])
  1.91%  <...other 281 warm regions...>
....................................................................................................
 99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 72.34%  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_blackhole_consume[Falcon]
 23.83%  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_blackhole_consume_jmhTest::obj_blackhole_consume_avgt_jmhStub[Falcon]
  3.56%  [unknown] ([kernel.kallsyms])
  0.17%  [unknown] (libjvm.so)
  0.02%  [unknown] (libc-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  PMEM::account_enabled (libaztall.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  <stub: method entry point (kind = zerolocals)>
  0.00%  PMEM::get_account_usage (libaztall.so)
  0.00%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  is_thread_initialized (libazsys3.so)
  0.00%  az_zmd_api_version_tall (libaztall.so)
  0.00%  <stub: ifne  154 ifne>
  0.00%  __pthread_mutex_unlock (libpthread-2.31.so)
  0.01%  <...other 6 warm methods...>
....................................................................................................
 99.99%  <totals>

....[Distribution by Area]..........................................................................
 96.18%  <generated code>
  3.56%  <native code in ([kernel.kallsyms])>
  0.17%  <native code in (libjvm.so)>
  0.04%  <native code in (libc-2.31.so)>
  0.03%  <native code in (libaztall.so)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libazsys3.so)>
....................................................................................................
 99.99%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.7, Zing 64-Bit Tiered VM, 17.0.7-zing_23.05.0.0-b2-product-linux-X86_64
# *** WARNING: JMH support for this VM is experimental. Be extra careful with the produced data.
# VM invoker: /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Djmh.perfasm.libdir=/home/gogu/git/jvm-performance-benchmarks
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.obj_return

# Run progress: 71.43% complete, ETA 00:03:44
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5.853 ns/op
# Warmup Iteration   2: 5.805 ns/op
# Warmup Iteration   3: 5.820 ns/op
# Warmup Iteration   4: 5.801 ns/op
# Warmup Iteration   5: 5.802 ns/op
Iteration   1: 5.801 ns/op
Iteration   2: 5.801 ns/op
Iteration   3: 5.801 ns/op
Iteration   4: 5.801 ns/op
Iteration   5: 5.801 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.obj_return":
  5.801 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (5.801, 5.801, 5.801), stdev = 0.001
  CI (99.9%): [5.800, 5.802] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.obj_return:·asm":
PrintAssembly processed: 133680 total address lines.
Perf output processed (skipped 56.227 seconds):
 Column 1: cycles (52025 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x300314dc:0x30031541] in com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub[Falcon]

         0x300314dc: 48 89 43 20                       movq    %rax, 32(%rbx)                
         0x300314e0: 4d 85 f6                          testq    %r14, %r14                   
         0x300314e3: 0f 84 86 00 00 00                 je    134                             ; 0x3003156f
         0x300314e9: 4d 85 ff                          testq    %r15, %r15                   
         0x300314ec: 0f 84 8f 00 00 00                 je    143                             ; 0x30031581
         0x300314f2: 4d 85 e4                          testq    %r12, %r12                   
         0x300314f5: 0f 84 a4 00 00 00                 je    164                             ; 0x3003159f
         0x300314fb: 31 ed                             xorl    %ebp, %ebp                    
         0x300314fd: 0f 1f 00                          nopl    (%rax)                        
         0x30031500: 4c 89 f7                          movq    %r14, %rdi                    
  6.39%  0x30031503: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30031508: e8 f3 c3 fd ff                    callq    -146445                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  6.38%  0x3003150d: 48 89 44 24 40                    movq    %rax, 64(%rsp)                
 50.46%  0x30031512: 48 ff c5                          incq    %rbp                          
         0x30031515: 2e 2e 41 0f b6 84 24 94 00 00     movzbl    %cs:148(%r12), %eax         
         0x30031520: 84 c0                             testb    %al, %al                     
         0x30031522: 74 dc                             je    -36                             ; 0x30031500
         0x30031524: 41 ff d5                          callq    *%r13                        
         0x30031527: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x3003152b: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x30031533: c4 e1 fb 2a c5                    vcvtsi2sd    %rbp, %xmm0, %xmm0       
         0x30031538: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x3003153d: 48 83 c4 48                       addq    $72, %rsp                     
         0x30031541: 5b                                popq    %rbx                          
....................................................................................................
 63.23%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x32b0a09c:0x32b0a2bf] in com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_return[C1]

         0x32b0a09c: e9 df 7d 51 fd                    jmp    -44991009                      ; 0x30021e80 = unwind_exception Runtime1 stub
         0x32b0a0a1: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x32b0a0a5: e9 56 41 50 fd                    jmp    -45072042                      ; 0x3000e200 = StubRoutines::deoptimize
         0x32b0a0aa: cc                                int3                                  
         <nmethodAdapter compile_id='237' level='1' size='40' address='0x00007fd9e01474d0' dependencies_offset='32' stamp='81955.835'/>
         5.521:  237         1 inlining into org.openjdk.jmh.infra.Blackhole::consumeCompiler (Ljava/lang/Object;)V (tid 139678) (kid 1438 pkid/prev 1414/NA) (mid 1472532 pmid 18396) (bytes 1) (generation 0) (lvl O2) (score 1) (score_updated 0ms; orig 1; promoted 0) (wait 0ms)
         5.521:  237         1 installed at 0x32b0a080 with size 0x2b. org.openjdk.jmh.infra.Blackhole::consumeCompiler (Ljava/lang/Object;)V (tid 139678) (kid 1438 pkid/prev 1414/NA) (mid 1472532 pmid 18396) (bytes 1) (generation 0) (lvl O2) (score 1) (score_updated 0ms; orig 1; promoted 0) (wait 0ms) (compile 0ms/0ms)
           # {method}{0x20002654e80} obj_return[C1] ()Ljava/lang/Object; in com/ionutbalosin/jvm/performance/benchmarks/InfrastructureBaselineBenchmark
         Decoding CodeBlob 0x32b0a200
         0x32b0a280: e8 7b b3 50 fd 00 00              subq    $8, %rsp                      
  6.38%  0x32b0a287: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 12.51%  0x32b0a290: 75 28                             jne    40                             ; 0x32b0a2ba
  8.06%  0x32b0a292: 48 8b 47 08                       movq    8(%rdi), %rax                 
  0.01%  0x32b0a296: 48 85 04 25 40 00 f8 2f           testq    %rax, 804782144              ; 804782144 = gc_phase_trap_mask
         0x32b0a29e: 74 18                             je    24                              ; 0x32b0a2b8
         0x32b0a2a0: 48 89 44 24 d0                    movq    %rax, -48(%rsp)               
         0x32b0a2a5: 48 8d 47 08                       leaq    8(%rdi), %rax                 
         0x32b0a2a9: 48 89 44 24 c8                    movq    %rax, -56(%rsp)               
         0x32b0a2ae: e8 cd 21 50 fd                    callq    -45080115                    ; 0x3000c480 = StubRoutines::lvb_handler
         0x32b0a2b3: 48 8b 44 24 f0                    movq    -16(%rsp), %rax               
  4.72%  0x32b0a2b8: 59                                popq    %rcx                          
         0x32b0a2b9: c3                                retq                                  
         0x32b0a2ba: e8 81 d2 50 fd                    callq    -45034879                    ; 0x30017540 = StubRoutines::safepoint_handler
         0x32b0a2bf: eb d1                             jmp    -47                            ; 0x32b0a292
....................................................................................................
 26.96%  <total for region 2>

....[Hottest Regions]...............................................................................
 63.23%  [0x300314dc:0x30031541] in com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub[Falcon]
 26.96%  [0x32b0a09c:0x32b0a2bf] in com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_return[C1]
  4.72%  [0x32b0a287:0x32b0a2d0] in com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_return[C1]
  1.21%  [0xffffffffa9c94c86:0xffffffffa9c94c86] in [unknown] ([kernel.kallsyms])
  0.19%  [0xffffffffa9ecfb60:0xffffffffa9ecfb7c] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9f0711c:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eef5b2:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eb93b5:0xffffffffa9eb9441] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eef3e5:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9eef30c:0xffffffffa9eef3c1] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f695f6:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9ee587e:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f07065:0xffffffffa9f070cd] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9ed0800:0xffffffffa9ed0873] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eee5d0:0xffffffffa9eee62e] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  2.11%  <...other 312 warm regions...>
....................................................................................................
 99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 63.23%  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_return_jmhTest::obj_return_avgt_jmhStub[Falcon]
 31.68%  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_return[C1]
  4.72%  [unknown] ([kernel.kallsyms])
  0.25%  [unknown] (libjvm.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  [unknown] ([vdso])
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  az_get_elastic (libazsys3.so)
  0.00%  PMEM::account_enabled (libaztall.so)
  0.00%  StubRoutines::c1_profile_callee
  0.00%  is_thread_initialized (libazsys3.so)
  0.00%  ImageFileReader::verify_location (libjimage.so)
  0.00%  <stub: aconst_null  1 aconst_null>
  0.00%  <stub: fast_aaccess_0  222 fast_aaccess_0>
  0.02%  <...other 10 warm methods...>
....................................................................................................
 99.99%  <totals>

....[Distribution by Area]..........................................................................
 94.93%  <generated code>
  4.72%  <native code in ([kernel.kallsyms])>
  0.25%  <native code in (libjvm.so)>
  0.03%  <native code in (libc-2.31.so)>
  0.03%  <native code in (libaztall.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in ([vdso])>
  0.01%  <native code in (libazsys3.so)>
  0.00%  <native code in (libjimage.so)>
....................................................................................................
 99.99%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.7, Zing 64-Bit Tiered VM, 17.0.7-zing_23.05.0.0-b2-product-linux-X86_64
# *** WARNING: JMH support for this VM is experimental. Be extra careful with the produced data.
# VM invoker: /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Djmh.perfasm.libdir=/home/gogu/git/jvm-performance-benchmarks
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.obj_sink

# Run progress: 85.71% complete, ETA 00:01:51
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 10.557 ns/op
# Warmup Iteration   2: 10.332 ns/op
# Warmup Iteration   3: 10.448 ns/op
# Warmup Iteration   4: 10.457 ns/op
# Warmup Iteration   5: 10.462 ns/op
Iteration   1: 10.462 ns/op
Iteration   2: 10.452 ns/op
Iteration   3: 10.457 ns/op
Iteration   4: 10.484 ns/op
Iteration   5: 10.452 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.obj_sink":
  10.461 ±(99.9%) 0.050 ns/op [Average]
  (min, avg, max) = (10.452, 10.461, 10.484), stdev = 0.013
  CI (99.9%): [10.411, 10.512] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark.obj_sink:·asm":
PrintAssembly processed: 133619 total address lines.
Perf output processed (skipped 57.682 seconds):
 Column 1: cycles (51407 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x300314c6:0x3003153c] in com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub[Falcon]

         0x300314c6: 49 bc 40 24 e9 80 c3 7f 00 00     movabsq    $140477658113088, %r12     ; 0x7fc380e92440 = os::javaTimeNanos_slow()
         0x300314d0: 41 ff d4                          callq    *%r12                        ; 0x7fc380e92440 = os::javaTimeNanos_slow()
         0x300314d3: 48 89 43 20                       movq    %rax, 32(%rbx)                
         0x300314d7: 66 0f 1f 84 00 00 00 00 00        nopw    (%rax,%rax)                   
         0x300314e0: 4d 85 f6                          testq    %r14, %r14                   
         0x300314e3: 0f 84 7d 00 00 00                 je    125                             ; 0x30031566
         0x300314e9: 4d 85 ff                          testq    %r15, %r15                   
         0x300314ec: 0f 84 86 00 00 00                 je    134                             ; 0x30031578
         0x300314f2: 45 31 ed                          xorl    %r13d, %r13d                  
         0x300314f5: 66 66 2e 0f 1f 84 00 00 00 00     nopw    %cs:(%rax,%rax)               
  3.52%  0x30031500: 4c 89 f7                          movq    %r14, %rdi                    
         0x30031503: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30031508: e8 f3 c3 fd ff                    callq    -146445                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
 21.03%  0x3003150d: 49 ff c5                          incq    %r13                          
  9.82%  0x30031510: 41 0f b6 87 94 00 00 00           movzbl    148(%r15), %eax             
 14.26%  0x30031518: 84 c0                             testb    %al, %al                     
         0x3003151a: 74 e4                             je    -28                             ; 0x30031500
         0x3003151c: 41 ff d4                          callq    *%r12                        
         0x3003151f: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x30031523: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x3003152b: c4 c1 fb 2a c5                    vcvtsi2sd    %r13, %xmm0, %xmm0       
         0x30031530: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x30031535: 48 83 c4 30                       addq    $48, %rsp                     
         0x30031539: 5b                                popq    %rbx                          
         0x3003153a: 41 5c                             popq    %r12                          
         0x3003153c: 41 5d                             popq    %r13                          
....................................................................................................
 48.63%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x3002eca0:0x3002ed01] in com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_sink[Falcon]

         0x3002ecf8: 48 89 c6                          movq    %rax, %rsi                    
         0x3002ecfb: eb c8                             jmp    -56                            ; 0x3002ecc5
         0x3002ecfd: 00 00                             addb    %al, (%rax)                   
         0x3002ecff: 00 00                             addb    %al, (%rax)                   
         0x3002ed01: 00 00                             addb    %al, (%rax)                   
         6.991:  239         3 started   com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub (Lorg/openjdk/jmh/runner/InfraControl;Lorg/openjdk/jmh/results/RawResults;Lorg/openjdk/jmh/infra/BenchmarkParams;Lorg/openjdk/jmh/infra/IterationParams;Lorg/openjdk/jmh/infra/ThreadParams;Lorg/openjdk/jmh/infra/Blackhole;Lorg/openjdk/jmh/infra/Control;ILcom/ionutbalosin/jvm/performance/benchmarks/jmh_generated/InfrastructureBaselineBenchmark_jmhType;)V (tid 139814) (kid 1412 pkid/prev 1388/NA) (mid 1445894 pmid 18277) (bytes 52) (generation 0) (lvl O2) (score 0) (score_updated 7ms; orig 0; promoted 0) (rank 0, time-between-promotions 0ms) (wait 7ms)
         7.003:  238         3 promoted  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_sink ()V (tid 139816) (kid 1445 pkid/prev 1421/NA) (mid 1479687 pmid 18432) (bytes 9) (generation 0) (lvl O2) (score 0) (score_updated 0ms; orig 0; promoted 100) (rank 0, time-between-promotions 0ms) (wait 0ms)
         -----------
           # {method}{0x20002655178} obj_sink[Falcon] ()V in com/ionutbalosin/jvm/performance/benchmarks/InfrastructureBaselineBenchmark
         Decoding CodeBlob 0x3002ec00
  4.72%  0x3002eca0: eb f9 ec 38                       subq    $56, %rsp                     
         0x3002eca4: 48 89 f9                          movq    %rdi, %rcx                    
  1.04%  0x3002eca7: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 15.63%  0x3002ecb0: 75 20                             jne    32                             ; 0x3002ecd2
  3.67%  0x3002ecb2: 48 8b 71 08                       movq    8(%rcx), %rsi                 
         0x3002ecb6: 2e 2e 2e 2e 2e b8 48 00 f8 2f     movl    $804782152, %eax              ; 804782152 = clearable_gc_phase_trap_mask
         0x3002ecc0: 48 85 30                          testq    %rsi, (%rax)                 
         0x3002ecc3: 75 1d                             jne    29                             ; 0x3002ece2
  3.36%  0x3002ecc5: 48 89 cf                          movq    %rcx, %rdi                    
  0.06%  0x3002ecc8: e8 33 ec fd ff                    callq    -136141                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  3.54%  0x3002eccd: 48 83 c4 38                       addq    $56, %rsp                     
  7.38%  0x3002ecd1: c3                                retq                                  
         0x3002ecd2: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002ecdc: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002ecde: 66 90                             nop                                   
         0x3002ece0: eb d0                             jmp    -48                            ; 0x3002ecb2
         0x3002ece2: 48 8d 41 08                       leaq    8(%rcx), %rax                 
         0x3002ece6: 48 ba c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rdx           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002ecf0: 48 89 f7                          movq    %rsi, %rdi                    
         0x3002ecf3: 48 89 c6                          movq    %rax, %rsi                    
         0x3002ecf6: ff d2                             callq    *%rdx                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002ecf8: 48 89 c6                          movq    %rax, %rsi                    
....................................................................................................
 39.41%  <total for region 2>

....[Hottest Region 3]..............................................................................
 [0x32b0a080:0x32b0a0aa] in com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::sink[C1]

         [Loaded java.util.concurrent.atomic.AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl from /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/lib/modules]
         [Loaded java.util.concurrent.atomic.AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl$1 from /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/lib/modules]
         [Loaded sun.reflect.misc.ReflectUtil from /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/lib/modules]
         6.973:  235         1 started   com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::sink (Ljava/lang/Object;)V (tid 139811) (kid 1445 pkid/prev 1421/NA) (mid 1479688 pmid 18436) (bytes 1) (generation 0) (lvl O2) (score 1) (score_updated 0ms; orig 1; promoted 0) (wait 0ms)
         [Loaded org.openjdk.jmh.runner.BenchmarkHandler$1 from file:/home/gogu/git/jvm-performance-benchmarks/benchmarks/target/benchmarks.jar]
         6.973:  234         1 started   com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_sink ()V (tid 139808) (kid 1445 pkid/prev 1421/NA) (mid 1479687 pmid 18432) (bytes 9) (generation 0) (lvl O2) (score 9) (score_updated 0ms; orig 9; promoted 0) (wait 0ms)
         [Loaded java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionNode from /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/lib/modules]
           # {method}{0x20002655828} sink[C1] (Ljava/lang/Object;)V in com/ionutbalosin/jvm/performance/benchmarks/InfrastructureBaselineBenchmark
         Decoding CodeBlob 0x32b0a000
         0x32b0a080: e8 7b b5 50 fd 00 00              subq    $8, %rsp                      
  3.59%  0x32b0a087: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  0.93%  0x32b0a090: 75 02                             jne    2                              ; 0x32b0a094
  3.49%  0x32b0a092: 59                                popq    %rcx                          
         0x32b0a093: c3                                retq                                  
         0x32b0a094: e8 a7 d4 50 fd                    callq    -45034329                    ; 0x30017540 = StubRoutines::safepoint_handler
         0x32b0a099: eb f7                             jmp    -9                             ; 0x32b0a092
                             // Generic exception handler
         0x32b0a09b: 59                                popq    %rcx                          
         0x32b0a09c: e9 df 7d 51 fd                    jmp    -44991009                      ; 0x30021e80 = unwind_exception Runtime1 stub
         0x32b0a0a1: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x32b0a0a5: e9 56 41 50 fd                    jmp    -45072042                      ; 0x3000e200 = StubRoutines::deoptimize
         0x32b0a0aa: cc                                int3                                  
         <nmethodAdapter compile_id='235' level='1' size='40' address='0x00007fc260072ec0' dependencies_offset='32' stamp='82068.151'/>
....................................................................................................
  8.00%  <total for region 3>

....[Hottest Regions]...............................................................................
 48.63%  [0x300314c6:0x3003153c] in com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub[Falcon]
 39.41%  [0x3002eca0:0x3002ed01] in com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_sink[Falcon]
  8.00%  [0x32b0a080:0x32b0a0aa] in com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::sink[C1]
  0.25%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.18%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f07124:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffaa28ead0:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eef44f:0xffffffffa9eef4ad] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0746:0xffffffffa9ed07c7] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed080c:0xffffffffa9ed0860] in [unknown] ([kernel.kallsyms])
  0.06%  [0x7fc380e805f8:0x7fc380e80621] in [unknown] (libjvm.so)
  0.06%  [0xffffffffa9eb7ddf:0xffffffffa9eb7e8a] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9f63240:0xffffffffa9f63270] in [unknown] ([kernel.kallsyms])
  2.10%  <...other 294 warm regions...>
....................................................................................................
 99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 48.63%  com.ionutbalosin.jvm.performance.benchmarks.jmh_generated.InfrastructureBaselineBenchmark_obj_sink_jmhTest::obj_sink_avgt_jmhStub[Falcon]
 39.41%  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::obj_sink[Falcon]
  8.00%  com.ionutbalosin.jvm.performance.benchmarks.InfrastructureBaselineBenchmark::sink[C1]
  3.66%  [unknown] ([kernel.kallsyms])
  0.18%  [unknown] (libjvm.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  az_get_elastic_tall (libaztall.so)
  0.00%  __pthread_mutex_unlock (libpthread-2.31.so)
  0.00%  <stub: method entry point (kind = zerolocals)>
  0.00%  millis_to_ticks (libazsys3.so)
  0.00%  PMEM_Account::fetch_stats (libaztall.so)
  0.00%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  sprintf (libc-2.31.so)
  0.00%  memcpy (libc-2.31.so)
  0.02%  <...other 11 warm methods...>
....................................................................................................
 99.99%  <totals>

....[Distribution by Area]..........................................................................
 96.04%  <generated code>
  3.66%  <native code in ([kernel.kallsyms])>
  0.18%  <native code in (libjvm.so)>
  0.04%  <native code in (libaztall.so)>
  0.03%  <native code in (libc-2.31.so)>
  0.02%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libazsys3.so)>
  0.00%  <native code in ([vdso])>
....................................................................................................
 99.99%  <totals>



# Run complete. Total time: 00:13:03

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
InfrastructureBaselineBenchmark.method_baseline             avgt    5   5.169 ± 0.005  ns/op
InfrastructureBaselineBenchmark.method_baseline:·asm        avgt          NaN            ---
InfrastructureBaselineBenchmark.method_blank                avgt    5   4.829 ± 0.007  ns/op
InfrastructureBaselineBenchmark.method_blank:·asm           avgt          NaN            ---
InfrastructureBaselineBenchmark.method_dont_inline          avgt    5   9.677 ± 0.084  ns/op
InfrastructureBaselineBenchmark.method_dont_inline:·asm     avgt          NaN            ---
InfrastructureBaselineBenchmark.method_inline               avgt    5   4.867 ± 0.028  ns/op
InfrastructureBaselineBenchmark.method_inline:·asm          avgt          NaN            ---
InfrastructureBaselineBenchmark.obj_blackhole_consume       avgt    5   5.712 ± 0.008  ns/op
InfrastructureBaselineBenchmark.obj_blackhole_consume:·asm  avgt          NaN            ---
InfrastructureBaselineBenchmark.obj_return                  avgt    5   5.801 ± 0.001  ns/op
InfrastructureBaselineBenchmark.obj_return:·asm             avgt          NaN            ---
InfrastructureBaselineBenchmark.obj_sink                    avgt    5  10.461 ± 0.050  ns/op
InfrastructureBaselineBenchmark.obj_sink:·asm               avgt          NaN            ---
