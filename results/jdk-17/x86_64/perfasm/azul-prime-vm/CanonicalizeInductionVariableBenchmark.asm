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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.CanonicalizeInductionVariableBenchmark.baseline

# Run progress: 0.00% complete, ETA 00:05:00
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 136431.388 ns/op
# Warmup Iteration   2: 137405.375 ns/op
# Warmup Iteration   3: 135690.058 ns/op
# Warmup Iteration   4: 135624.000 ns/op
# Warmup Iteration   5: 135616.874 ns/op
Iteration   1: 135615.634 ns/op
Iteration   2: 135614.917 ns/op
Iteration   3: 135626.262 ns/op
Iteration   4: 135624.450 ns/op
Iteration   5: 135615.298 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.CanonicalizeInductionVariableBenchmark.baseline":
  135619.312 ±(99.9%) 21.410 ns/op [Average]
  (min, avg, max) = (135614.917, 135619.312, 135626.262), stdev = 5.560
  CI (99.9%): [135597.902, 135640.722] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.CanonicalizeInductionVariableBenchmark.baseline:·asm":
PrintAssembly processed: 134292 total address lines.
Perf output processed (skipped 56.571 seconds):
 Column 1: cycles (51357 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002ee2f:0x3002ef11] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.CanonicalizeInductionVariableBenchmark::baseline[Falcon]

         0x3002ee2f: 4c 8d 48 01                       leaq    1(%rax), %r9                  
         0x3002ee33: 48 3d 00 00 01 00                 cmpq    $65536, %rax                  
  0.03%  0x3002ee39: 4c 89 c8                          movq    %r9, %rax                     
         0x3002ee3c: 72 e2                             jb    -30                             ; 0x3002ee20
         0x3002ee3e: 66 90                             nop                                   
         0x3002ee40: eb a4                             jmp    -92                            ; 0x3002ede6
         0x3002ee42: 66 66 66 66 66 2e 0f 1f 84 00     nopw    %cs:(%rax,%rax)               
         0x3002ee50: 49 ff c0                          incq    %r8                           
         0x3002ee53: 4c 89 c0                          movq    %r8, %rax                     
         0x3002ee56: 48 83 e0 e0                       andq    $-32, %rax                    
  0.02%  0x3002ee5a: c4 e1 f9 6e c2                    vmovq    %rdx, %xmm0                  
         0x3002ee5f: 48 01 c2                          addq    %rax, %rdx                    
         0x3002ee62: c4 62 7d 59 c0                    vpbroadcastq    %xmm0, %ymm8          
         0x3002ee67: c4 41 3d d4 d3                    vpaddq    %ymm11, %ymm8, %ymm10       
  0.06%  0x3002ee6c: c4 c1 3d d4 c4                    vpaddq    %ymm12, %ymm8, %ymm0        
         0x3002ee71: c4 c1 3d d4 d5                    vpaddq    %ymm13, %ymm8, %ymm2        
  0.00%  0x3002ee76: c4 c1 3d d4 e6                    vpaddq    %ymm14, %ymm8, %ymm4        
         0x3002ee7b: c4 c1 3d d4 ef                    vpaddq    %ymm15, %ymm8, %ymm5        
  0.03%  0x3002ee80: c5 bd d4 b4 24 00 01 00 00        vpaddq    256(%rsp), %ymm8, %ymm6     
         0x3002ee89: c5 bd d4 bc 24 e0 00 00 00        vpaddq    224(%rsp), %ymm8, %ymm7     
  0.00%  0x3002ee92: c5 3d d4 84 24 c0 00 00 00        vpaddq    192(%rsp), %ymm8, %ymm8     
  0.00%  0x3002ee9b: 49 89 c1                          movq    %rax, %r9                     
  0.01%  0x3002ee9e: 66 90                             nop                                   
 16.33%  0x3002eea0: c4 41 7d 6f ca                    vmovdqa    %ymm10, %ymm9              
  4.85%  0x3002eea5: c5 c5 d4 fb                       vpaddq    %ymm3, %ymm7, %ymm7         
 15.89%  0x3002eea9: c5 3d d4 c3                       vpaddq    %ymm3, %ymm8, %ymm8         
  4.17%  0x3002eead: c5 cd d4 f3                       vpaddq    %ymm3, %ymm6, %ymm6         
 14.06%  0x3002eeb1: c5 d5 d4 eb                       vpaddq    %ymm3, %ymm5, %ymm5         
  4.21%  0x3002eeb5: c5 dd d4 e3                       vpaddq    %ymm3, %ymm4, %ymm4         
 13.87%  0x3002eeb9: c5 ed d4 d3                       vpaddq    %ymm3, %ymm2, %ymm2         
  4.02%  0x3002eebd: c5 fd d4 c3                       vpaddq    %ymm3, %ymm0, %ymm0         
 14.00%  0x3002eec1: c5 2d d4 d3                       vpaddq    %ymm3, %ymm10, %ymm10       
  4.31%  0x3002eec5: 49 83 c1 e0                       addq    $-32, %r9                     
         0x3002eec9: 75 d5                             jne    -43                            ; 0x3002eea0
         0x3002eecb: 49 39 c0                          cmpq    %rax, %r8                     
         0x3002eece: 0f 84 dc fe ff ff                 je    -292                            ; 0x3002edb0
  0.02%  0x3002eed4: c5 fe 6f 1c 24                    vmovdqu    (%rsp), %ymm3              
  0.02%  0x3002eed9: e9 42 ff ff ff                    jmp    -190                           ; 0x3002ee20
         0x3002eede: c5 f8 77                          vzeroupper                            
         0x3002eee1: ff d1                             callq    *%rcx                        
         0x3002eee3: c5 fe 6f 1c 24                    vmovdqu    (%rsp), %ymm3              
         0x3002eee8: c5 7e 6f 7c 24 20                 vmovdqu    32(%rsp), %ymm15           
         0x3002eeee: c5 7e 6f 74 24 40                 vmovdqu    64(%rsp), %ymm14           
         0x3002eef4: c5 7e 6f 6c 24 60                 vmovdqu    96(%rsp), %ymm13           
         0x3002eefa: c5 7e 6f a4 24 80 00 00 00        vmovdqu    128(%rsp), %ymm12          
         0x3002ef03: c5 7e 6f 9c 24 a0 00 00 00        vmovdqu    160(%rsp), %ymm11          
         0x3002ef0c: e9 ee fe ff ff                    jmp    -274                           ; 0x3002edff
  0.00%  0x3002ef11: 48 89 f0                          movq    %rsi, %rax                    
....................................................................................................
 95.88%  <total for region 1>

....[Hottest Regions]...............................................................................
 95.88%  [0x3002ee2f:0x3002ef11] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.CanonicalizeInductionVariableBenchmark::baseline[Falcon]
  0.25%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.19%  [0xffffffffa9ecfb6a:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.16%  [0x3002edb6:0x3002ee62] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.CanonicalizeInductionVariableBenchmark::baseline[Falcon]
  0.16%  [0xffffffffa9c94c86:0xffffffffa9c94c86] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eb93b5:0xffffffffa9eb9461] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9f0711c:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9ee587e:0xffffffffa9ee588c] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f0706b:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ed0740:0xffffffffa9ed07c7] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0800:0xffffffffa9ed0889] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28eb61:0xffffffffaa28eba9] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28ead0:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  1.91%  <...other 313 warm regions...>
....................................................................................................
 99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 96.05%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.CanonicalizeInductionVariableBenchmark::baseline[Falcon]
  3.63%  [unknown] ([kernel.kallsyms])
  0.18%  [unknown] (libjvm.so)
  0.02%  __errno_location (libpthread-2.31.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  PMEM::account_enabled (libaztall.so)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  _dl_addr (libc-2.31.so)
  0.00%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_baseline_jmhTest::baseline_avgt_jmhStub[Falcon]
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  __pthread_mutex_lock (libpthread-2.31.so)
  0.00%  <stub: method entry point (kind = zerolocals)>
  0.00%  [unknown] (libstdc++.so.6)
  0.00%  VMEM_SpaceManager::uses_cache_for_account (libaztall.so)
  0.00%  clock_gettime (libc-2.31.so)
  0.00%  [unknown] ([vdso])
  0.00%  az_pmem_get_account_usage_tall (libaztall.so)
  0.03%  <...other 15 warm methods...>
....................................................................................................
 99.99%  <totals>

....[Distribution by Area]..........................................................................
 96.07%  <generated code>
  3.63%  <native code in ([kernel.kallsyms])>
  0.18%  <native code in (libjvm.so)>
  0.04%  <native code in (libaztall.so)>
  0.03%  <native code in (libc-2.31.so)>
  0.02%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libazsys3.so)>
  0.00%  <native code in (libstdc++.so.6)>
  0.00%  <native code in ([vdso])>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.CanonicalizeInductionVariableBenchmark.canonicalize

# Run progress: 33.33% complete, ETA 00:03:44
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.374 ns/op
# Warmup Iteration   2: 5.416 ns/op
# Warmup Iteration   3: 5.437 ns/op
# Warmup Iteration   4: 5.414 ns/op
# Warmup Iteration   5: 5.414 ns/op
Iteration   1: 5.414 ns/op
Iteration   2: 5.415 ns/op
Iteration   3: 5.414 ns/op
Iteration   4: 5.414 ns/op
Iteration   5: 5.414 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.CanonicalizeInductionVariableBenchmark.canonicalize":
  5.414 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (5.414, 5.414, 5.415), stdev = 0.001
  CI (99.9%): [5.413, 5.415] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.CanonicalizeInductionVariableBenchmark.canonicalize:·asm":
PrintAssembly processed: 133683 total address lines.
Perf output processed (skipped 56.379 seconds):
 Column 1: cycles (51586 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002fca0:0x3002fccb] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.CanonicalizeInductionVariableBenchmark::canonicalize[Falcon]

 13.50%  0x3002fcab: 75 07                             jne    7                              ; 0x3002fcb4
  6.81%  0x3002fcad: b8 00 00 40 00                    movl    $4194304, %eax                
         0x3002fcb2: 59                                popq    %rcx                          
 13.48%  0x3002fcb3: c3                                retq                                  
         0x3002fcb4: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002fcbe: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002fcc0: eb eb                             jmp    -21                            ; 0x3002fcad
         -----------
           # {method}{0x20002654740} canonicalize[Falcon] ()J in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/CanonicalizeInductionVariableBenchmark
         Decoding CodeBlob 0x3002fc00
 13.80%  0x3002fca0: eb f9                             pushq    %rax                         
  7.08%  0x3002fca2: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 13.50%  0x3002fcab: 75 07                             jne    7                              ; 0x3002fcb4
  6.81%  0x3002fcad: b8 00 00 40 00                    movl    $4194304, %eax                
         0x3002fcb2: 59                                popq    %rcx                          
 13.48%  0x3002fcb3: c3                                retq                                  
         0x3002fcb4: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002fcbe: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002fcc0: eb eb                             jmp    -21                            ; 0x3002fcad
         0x3002fcc2: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x3002fcc6: e9 35 e5 fd ff                    jmp    -137931                        ; 0x3000e200 = StubRoutines::deoptimize
         0x3002fccb: cc                                int3                                  
         Call tree size: 1
         0: caller_index: -1 bci: -1 callee: virtual jlong com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.CanonicalizeInductionVariableBenchmark.canonicalize()
         Encoded locations size: 3
         offset: 0 length: 34 scope: 0 bci: 0
....................................................................................................
 54.67%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x300322dc:0x30032341] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_canonicalize_jmhTest::canonicalize_avgt_jmhStub[Falcon]

         0x300322dc: 48 89 43 20                       movq    %rax, 32(%rbx)                
         0x300322e0: 4d 85 f6                          testq    %r14, %r14                   
         0x300322e3: 0f 84 86 00 00 00                 je    134                             ; 0x3003236f
         0x300322e9: 4d 85 ff                          testq    %r15, %r15                   
         0x300322ec: 0f 84 8f 00 00 00                 je    143                             ; 0x30032381
         0x300322f2: 4d 85 e4                          testq    %r12, %r12                   
         0x300322f5: 0f 84 a4 00 00 00                 je    164                             ; 0x3003239f
         0x300322fb: 31 ed                             xorl    %ebp, %ebp                    
         0x300322fd: 0f 1f 00                          nopl    (%rax)                        
         0x30032300: 4c 89 f7                          movq    %r14, %rdi                    
  6.80%  0x30032303: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30032308: e8 f3 b5 fd ff                    callq    -150029                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x3003230d: 48 89 44 24 40                    movq    %rax, 64(%rsp)                
 34.20%  0x30032312: 48 ff c5                          incq    %rbp                          
         0x30032315: 2e 2e 41 0f b6 84 24 94 00 00     movzbl    %cs:148(%r12), %eax         
         0x30032320: 84 c0                             testb    %al, %al                     
         0x30032322: 74 dc                             je    -36                             ; 0x30032300
         0x30032324: 41 ff d5                          callq    *%r13                        
         0x30032327: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x3003232b: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x30032333: c4 e1 fb 2a c5                    vcvtsi2sd    %rbp, %xmm0, %xmm0       
         0x30032338: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x3003233d: 48 83 c4 48                       addq    $72, %rsp                     
         0x30032341: 5b                                popq    %rbx                          
....................................................................................................
 41.00%  <total for region 2>

....[Hottest Regions]...............................................................................
 54.67%  [0x3002fca0:0x3002fccb] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.CanonicalizeInductionVariableBenchmark::canonicalize[Falcon]
 41.00%  [0x300322dc:0x30032341] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_canonicalize_jmhTest::canonicalize_avgt_jmhStub[Falcon]
  0.42%  [0xffffffffa9c0f77a:0xffffffffa9c0f7a5] in [unknown] ([kernel.kallsyms])
  0.25%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.18%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f0711f:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f695f6:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f07060:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9ed0740:0xffffffffa9ed07c7] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0800:0xffffffffa9ed0873] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ee587e:0xffffffffa9ee58a7] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9da97a0:0xffffffffa9da9802] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eee5d0:0xffffffffa9eee62e] in [unknown] ([kernel.kallsyms])
  2.05%  <...other 324 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 54.67%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.CanonicalizeInductionVariableBenchmark::canonicalize[Falcon]
 41.00%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_canonicalize_jmhTest::canonicalize_avgt_jmhStub[Falcon]
  4.00%  [unknown] ([kernel.kallsyms])
  0.19%  [unknown] (libjvm.so)
  0.02%  [unknown] (libc-2.31.so)
  0.01%  az_pmem_get_account_usage_tall (libaztall.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  [unknown] ([vdso])
  0.01%  az_zmd_api_version_tall (libaztall.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  PMEM::account_enabled (libaztall.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.00%  [unknown] (libstdc++.so.6)
  0.00%  VMEM::get_account_usage (libaztall.so)
  0.00%  az_pmem_get_account_usage (libazsys3.so)
  0.00%  az_zmd_api_version (libazsys3.so)
  0.00%  MutexLocker::MutexLocker (libaztall.so)
  0.00%  sprintf (libc-2.31.so)
  0.03%  <...other 18 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.68%  <generated code>
  4.00%  <native code in ([kernel.kallsyms])>
  0.19%  <native code in (libjvm.so)>
  0.05%  <native code in (libaztall.so)>
  0.04%  <native code in (libc-2.31.so)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in ([vdso])>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.00%  <native code in (libpthread-2.31.so)>
  0.00%  <native code in (libstdc++.so.6)>
  0.00%  <native code in (ld-2.31.so)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.CanonicalizeInductionVariableBenchmark.manual_canonicalize

# Run progress: 66.67% complete, ETA 00:01:51
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5.487 ns/op
# Warmup Iteration   2: 5.415 ns/op
# Warmup Iteration   3: 5.431 ns/op
# Warmup Iteration   4: 5.415 ns/op
# Warmup Iteration   5: 5.414 ns/op
Iteration   1: 5.415 ns/op
Iteration   2: 5.415 ns/op
Iteration   3: 5.414 ns/op
Iteration   4: 5.415 ns/op
Iteration   5: 5.416 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.CanonicalizeInductionVariableBenchmark.manual_canonicalize":
  5.415 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (5.414, 5.415, 5.416), stdev = 0.001
  CI (99.9%): [5.413, 5.417] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.CanonicalizeInductionVariableBenchmark.manual_canonicalize:·asm":
PrintAssembly processed: 133665 total address lines.
Perf output processed (skipped 58.417 seconds):
 Column 1: cycles (51688 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f0a0:0x3002f2c0] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.CanonicalizeInductionVariableBenchmark::manual_canonicalize[Falcon]

         0x3002f2ab: 75 06                             jne    6                              ; 0x3002f2b3
         0x3002f2ad: 48 89 34 24                       movq    %rsi, (%rsp)                  
         0x3002f2b1: 58                                popq    %rax                          
         0x3002f2b2: c3                                retq                                  
         0x3002f2b3: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f2bd: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f2bf: 90                                nop                                   
         0x3002f2c0: eb eb                             jmp    -21                            ; 0x3002f2ad
           # {method}{0x20002654870} manual_canonicalize[Falcon] ()J in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/CanonicalizeInductionVariableBenchmark
         Decoding CodeBlob 0x3002f000
 13.37%  0x3002f0a0: eb f9                             pushq    %rax                         
  6.92%  0x3002f0a2: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 13.62%  0x3002f0ab: 75 07                             jne    7                              ; 0x3002f0b4
  6.96%  0x3002f0ad: b8 00 00 40 00                    movl    $4194304, %eax                
         0x3002f0b2: 59                                popq    %rcx                          
 13.77%  0x3002f0b3: c3                                retq                                  
         0x3002f0b4: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f0be: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f0c0: eb eb                             jmp    -21                            ; 0x3002f0ad
         0x3002f0c2: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x3002f0c6: e9 35 f1 fd ff                    jmp    -134859                        ; 0x3000e200 = StubRoutines::deoptimize
         0x3002f0cb: cc                                int3                                  
         Call tree size: 1
         0: caller_index: -1 bci: -1 callee: virtual jlong com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.CanonicalizeInductionVariableBenchmark.manual_canonicalize()
         Encoded locations size: 3
         offset: 0 length: 34 scope: 0 bci: 0
....................................................................................................
 54.64%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x300314dc:0x30031541] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub[Falcon]

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
  6.76%  0x30031503: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30031508: e8 f3 c3 fd ff                    callq    -146445                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x3003150d: 48 89 44 24 40                    movq    %rax, 64(%rsp)                
 34.11%  0x30031512: 48 ff c5                          incq    %rbp                          
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
 40.86%  <total for region 2>

....[Hottest Regions]...............................................................................
 54.64%  [0x3002f0a0:0x3002f2c0] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.CanonicalizeInductionVariableBenchmark::manual_canonicalize[Falcon]
 40.86%  [0x300314dc:0x30031541] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub[Falcon]
  0.67%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.19%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9f0711f:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eff400:0xffffffffa9eff42d] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f211f0:0xffffffffa9f21223] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f695f5:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ed0800:0xffffffffa9ed0860] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f07065:0xffffffffa9f070cd] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9da97a0:0xffffffffa9da97fd] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28ead0:0xffffffffaa28eb1f] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eef44f:0xffffffffa9eef4b0] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ee587e:0xffffffffa9ee587e] in [unknown] ([kernel.kallsyms])
  1.94%  <...other 302 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 54.64%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.CanonicalizeInductionVariableBenchmark::manual_canonicalize[Falcon]
 40.86%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub[Falcon]
  4.20%  [unknown] ([kernel.kallsyms])
  0.16%  [unknown] (libjvm.so)
  0.02%  [unknown] (libc-2.31.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.01%  [unknown] ([vdso])
  0.01%  PMEM::account_enabled; PMEM::accounts (libaztall.so)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  syscall (libc-2.31.so)
  0.00%  is_thread_initialized (libazsys3.so)
  0.00%  az_get_elastic (libazsys3.so)
  0.00%  VMEM_SpaceManager::uses_cache_for_account (libaztall.so)
  0.00%  clock_gettime (libc-2.31.so)
  0.00%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  java.lang.Class::searchMethods[C1]
  0.00%  _dl_addr (libc-2.31.so)
  0.03%  <...other 14 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.52%  <generated code>
  4.20%  <native code in ([kernel.kallsyms])>
  0.16%  <native code in (libjvm.so)>
  0.05%  <native code in (libaztall.so)>
  0.03%  <native code in (libc-2.31.so)>
  0.02%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in ([vdso])>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.00%  <native code in (libstdc++.so.6)>
....................................................................................................
100.00%  <totals>



# Run complete. Total time: 00:05:36

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

Benchmark                                                        Mode  Cnt       Score    Error  Units
CanonicalizeInductionVariableBenchmark.baseline                  avgt    5  135619.312 ± 21.410  ns/op
CanonicalizeInductionVariableBenchmark.baseline:·asm             avgt              NaN             ---
CanonicalizeInductionVariableBenchmark.canonicalize              avgt    5       5.414 ±  0.001  ns/op
CanonicalizeInductionVariableBenchmark.canonicalize:·asm         avgt              NaN             ---
CanonicalizeInductionVariableBenchmark.manual_canonicalize       avgt    5       5.415 ±  0.002  ns/op
CanonicalizeInductionVariableBenchmark.manual_canonicalize:·asm  avgt              NaN             ---
