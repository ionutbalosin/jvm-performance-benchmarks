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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.baseline
# Parameters: (size = 16384)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.374 ns/op
# Warmup Iteration   2: 6.497 ns/op
# Warmup Iteration   3: 6.209 ns/op
# Warmup Iteration   4: 6.193 ns/op
# Warmup Iteration   5: 6.196 ns/op
Iteration   1: 6.188 ns/op
Iteration   2: 6.190 ns/op
Iteration   3: 6.189 ns/op
Iteration   4: 6.191 ns/op
Iteration   5: 6.188 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.baseline":
  6.189 ±(99.9%) 0.004 ns/op [Average]
  (min, avg, max) = (6.188, 6.189, 6.191), stdev = 0.001
  CI (99.9%): [6.185, 6.193] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.baseline:·asm":
PrintAssembly processed: 133720 total address lines.
Perf output processed (skipped 56.444 seconds):
 Column 1: cycles (51540 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002eca0:0x3002eec0] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline[Falcon]

         0x3002eead: 89 74 24 04                       movl    %esi, 4(%rsp)                 
         0x3002eeb1: 58                                popq    %rax                          
         0x3002eeb2: c3                                retq                                  
         0x3002eeb3: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002eebd: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002eebf: 90                                nop                                   
         0x3002eec0: eb eb                             jmp    -21                            ; 0x3002eead
         -----------
           # {method}{0x200026573e0} baseline[Falcon] ()I in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/ScalarEvolutionAndLoopOptimizationBenchmark
         Decoding CodeBlob 0x3002ec00
 11.95%  0x3002eca0: eb f9                             pushq    %rax                         
  6.15%  0x3002eca2: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 11.90%  0x3002ecab: 75 14                             jne    20                             ; 0x3002ecc1
  6.00%  0x3002ecad: 8b 47 08                          movl    8(%rdi), %eax                 
         0x3002ecb0: 8d 48 01                          leal    1(%rax), %ecx                 
         0x3002ecb3: 0f af c8                          imull    %eax, %ecx                   
         0x3002ecb6: 89 c8                             movl    %ecx, %eax                    
  5.98%  0x3002ecb8: c1 e8 1f                          shrl    $31, %eax                     
         0x3002ecbb: 01 c8                             addl    %ecx, %eax                    
  5.88%  0x3002ecbd: d1 f8                             sarl    %eax                          
  6.14%  0x3002ecbf: 59                                popq    %rcx                          
         0x3002ecc0: c3                                retq                                  
         0x3002ecc1: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002eccb: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002eccd: eb de                             jmp    -34                            ; 0x3002ecad
         0x3002eccf: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x3002ecd3: e9 28 f5 fd ff                    jmp    -133848                        ; 0x3000e200 = StubRoutines::deoptimize
         0x3002ecd8: cc                                int3                                  
         Call tree size: 1
         0: caller_index: -1 bci: -1 callee: virtual jint com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.baseline()
         Encoded locations size: 3
....................................................................................................
 54.01%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x300316dc:0x30031741] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub[Falcon]

         0x300316dc: 48 89 43 20                       movq    %rax, 32(%rbx)                
         0x300316e0: 4d 85 f6                          testq    %r14, %r14                   
         0x300316e3: 0f 84 86 00 00 00                 je    134                             ; 0x3003176f
         0x300316e9: 4d 85 ff                          testq    %r15, %r15                   
         0x300316ec: 0f 84 8f 00 00 00                 je    143                             ; 0x30031781
         0x300316f2: 4d 85 e4                          testq    %r12, %r12                   
         0x300316f5: 0f 84 a4 00 00 00                 je    164                             ; 0x3003179f
         0x300316fb: 31 ed                             xorl    %ebp, %ebp                    
         0x300316fd: 0f 1f 00                          nopl    (%rax)                        
         0x30031700: 4c 89 f7                          movq    %r14, %rdi                    
  5.95%  0x30031703: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30031708: e8 f3 c1 fd ff                    callq    -146957                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x3003170d: 89 44 24 34                       movl    %eax, 52(%rsp)                
 35.56%  0x30031711: 48 ff c5                          incq    %rbp                          
         0x30031714: 2e 2e 2e 41 0f b6 84 24 94 00     movzbl    %cs:148(%r12), %eax         
         0x30031720: 84 c0                             testb    %al, %al                     
         0x30031722: 74 dc                             je    -36                             ; 0x30031700
         0x30031724: 41 ff d5                          callq    *%r13                        
         0x30031727: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x3003172b: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x30031733: c4 e1 fb 2a c5                    vcvtsi2sd    %rbp, %xmm0, %xmm0       
         0x30031738: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x3003173d: 48 83 c4 38                       addq    $56, %rsp                     
         0x30031741: 5b                                popq    %rbx                          
....................................................................................................
 41.51%  <total for region 2>

....[Hottest Regions]...............................................................................
 54.01%  [0x3002eca0:0x3002eec0] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline[Falcon]
 41.51%  [0x300316dc:0x30031741] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub[Falcon]
  0.37%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.28%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.25%  [0xffffffffa9eef304:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9f0711f:0xffffffffa9f07160] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9f211f0:0xffffffffa9f21223] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eb93b0:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f695f6:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f07060:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffaa28ead0:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eef44f:0xffffffffa9eef4ad] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0800:0xffffffffa9ed0889] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.06%  [0x7f26477c15f8:0x7f26477c1621] in [unknown] (libjvm.so)
  0.06%  [0xffffffffa9ed0740:0xffffffffa9ed078b] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9da97a0:0xffffffffa9da9802] in [unknown] ([kernel.kallsyms])
  2.12%  <...other 340 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 54.01%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline[Falcon]
 41.51%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub[Falcon]
  4.17%  [unknown] ([kernel.kallsyms])
  0.21%  [unknown] (libjvm.so)
  0.02%  [unknown] (liborca.so.0.0.0.0)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  PMEM::account_enabled; PMEM::accounts (libaztall.so)
  0.00%  thread_stack_region_start@plt (libazsys3.so)
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  clock_gettime (libc-2.31.so)
  0.00%  malloc (libc-2.31.so)
  0.00%  PMEM_Account::fetch_stats (libaztall.so)
  0.00%  sprintf (libc-2.31.so)
  0.00%  Java_java_util_zip_Inflater_inflateBytesBytes (libzip.so)
  0.00%  <stub: fast_aaccess_0  222 fast_aaccess_0>
  0.00%  __pthread_mutex_lock (libpthread-2.31.so)
  0.00%  _IO_fwrite (libc-2.31.so)
  0.00%  <stub: ldc  18 ldc>
  0.00%  clock_nanosleep (libc-2.31.so)
  0.02%  <...other 8 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.52%  <generated code>
  4.17%  <native code in ([kernel.kallsyms])>
  0.21%  <native code in (libjvm.so)>
  0.04%  <native code in (libc-2.31.so)>
  0.02%  <native code in (liborca.so.0.0.0.0)>
  0.02%  <native code in (libaztall.so)>
  0.01%  <native code in (libazsys3.so)>
  0.00%  <native code in (libpthread-2.31.so)>
  0.00%  <native code in (kvm.ko)>
  0.00%  <native code in (libzip.so)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop
# Parameters: (size = 16384)

# Run progress: 50.00% complete, ETA 00:01:52
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.353 ns/op
# Warmup Iteration   2: 6.205 ns/op
# Warmup Iteration   3: 6.206 ns/op
# Warmup Iteration   4: 6.211 ns/op
# Warmup Iteration   5: 6.199 ns/op
Iteration   1: 6.192 ns/op
Iteration   2: 6.201 ns/op
Iteration   3: 6.204 ns/op
Iteration   4: 6.195 ns/op
Iteration   5: 6.196 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop":
  6.198 ±(99.9%) 0.019 ns/op [Average]
  (min, avg, max) = (6.192, 6.198, 6.204), stdev = 0.005
  CI (99.9%): [6.179, 6.217] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop:·asm":
PrintAssembly processed: 134083 total address lines.
Perf output processed (skipped 56.332 seconds):
 Column 1: cycles (51672 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f4a0:0x3002f834] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop[Falcon]

         0x3002f82b: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x3002f82f: e9 cc e9 fd ff                    jmp    -136756                        ; 0x3000e200 = StubRoutines::deoptimize
         0x3002f834: cc                                int3                                  
         Call tree size: 1
         0: caller_index: -1 bci: -1 callee: virtual jint com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop()
         Encoded locations size: 4
         offset: 0 length: 389 scope: 0 bci: 0
         <nmethodAdapter compile_id='239' compile_kind='osr' level='2' size='40' address='0x00007f6838142810' dependencies_offset='32' stamp='91163.497'/>
           # {method}{0x20002656c78} scev_loop[Falcon] ()I in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/ScalarEvolutionAndLoopOptimizationBenchmark
         Decoding CodeBlob 0x3002f400
 12.01%  0x3002f4a0: eb f9                             pushq    %rax                         
  5.82%  0x3002f4a2: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 11.94%  0x3002f4ab: 75 1e                             jne    30                             ; 0x3002f4cb
  5.88%  0x3002f4ad: 8b 47 08                          movl    8(%rdi), %eax                 
         0x3002f4b0: 85 c0                             testl    %eax, %eax                   
         0x3002f4b2: 7e 13                             jle    19                             ; 0x3002f4c7
         0x3002f4b4: 8d 48 ff                          leal    -1(%rax), %ecx                
         0x3002f4b7: 8d 50 fe                          leal    -2(%rax), %edx                
  6.19%  0x3002f4ba: 48 0f af d1                       imulq    %rcx, %rdx                   
         0x3002f4be: 48 d1 ea                          shrq    %rdx                          
         0x3002f4c1: 01 d0                             addl    %edx, %eax                    
  5.62%  0x3002f4c3: ff c8                             decl    %eax                          
  6.02%  0x3002f4c5: 59                                popq    %rcx                          
         0x3002f4c6: c3                                retq                                  
         0x3002f4c7: 31 c0                             xorl    %eax, %eax                    
         0x3002f4c9: 59                                popq    %rcx                          
         0x3002f4ca: c3                                retq                                  
         0x3002f4cb: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f4d5: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f4d7: eb d4                             jmp    -44                            ; 0x3002f4ad
         0x3002f4d9: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x3002f4dd: e9 1e ed fd ff                    jmp    -135906                        ; 0x3000e200 = StubRoutines::deoptimize
         0x3002f4e2: cc                                int3                                  
....................................................................................................
 53.48%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x30031cdc:0x30031d41] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_scev_loop_jmhTest::scev_loop_avgt_jmhStub[Falcon]

         0x30031cdc: 48 89 43 20                       movq    %rax, 32(%rbx)                
         0x30031ce0: 4d 85 f6                          testq    %r14, %r14                   
         0x30031ce3: 0f 84 86 00 00 00                 je    134                             ; 0x30031d6f
         0x30031ce9: 4d 85 ff                          testq    %r15, %r15                   
         0x30031cec: 0f 84 8f 00 00 00                 je    143                             ; 0x30031d81
         0x30031cf2: 4d 85 e4                          testq    %r12, %r12                   
         0x30031cf5: 0f 84 a4 00 00 00                 je    164                             ; 0x30031d9f
         0x30031cfb: 31 ed                             xorl    %ebp, %ebp                    
         0x30031cfd: 0f 1f 00                          nopl    (%rax)                        
         0x30031d00: 4c 89 f7                          movq    %r14, %rdi                    
  6.02%  0x30031d03: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30031d08: e8 f3 bb fd ff                    callq    -148493                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x30031d0d: 89 44 24 34                       movl    %eax, 52(%rsp)                
 36.04%  0x30031d11: 48 ff c5                          incq    %rbp                          
         0x30031d14: 2e 2e 2e 41 0f b6 84 24 94 00     movzbl    %cs:148(%r12), %eax         
         0x30031d20: 84 c0                             testb    %al, %al                     
         0x30031d22: 74 dc                             je    -36                             ; 0x30031d00
         0x30031d24: 41 ff d5                          callq    *%r13                        
         0x30031d27: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x30031d2b: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x30031d33: c4 e1 fb 2a c5                    vcvtsi2sd    %rbp, %xmm0, %xmm0       
         0x30031d38: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x30031d3d: 48 83 c4 38                       addq    $56, %rsp                     
         0x30031d41: 5b                                popq    %rbx                          
....................................................................................................
 42.06%  <total for region 2>

....[Hottest Regions]...............................................................................
 53.48%  [0x3002f4a0:0x3002f834] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop[Falcon]
 42.06%  [0x30031cdc:0x30031d41] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_scev_loop_jmhTest::scev_loop_avgt_jmhStub[Falcon]
  0.73%  [0xffffffffa9c94c86:0xffffffffa9c94c86] in [unknown] ([kernel.kallsyms])
  0.29%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eef353:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f0711f:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eef5ae:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9ee5876:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0740:0xffffffffa9ed07c7] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0800:0xffffffffa9ed086e] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9f686c0:0xffffffffa9f6875f] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28ead0:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eee5d6:0xffffffffa9eee62f] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9f695f5:0xffffffffa9f6966d] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9da97a0:0xffffffffa9da9801] in [unknown] ([kernel.kallsyms])
  1.97%  <...other 273 warm regions...>
....................................................................................................
 99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 53.48%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop[Falcon]
 42.06%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_scev_loop_jmhTest::scev_loop_avgt_jmhStub[Falcon]
  4.24%  [unknown] ([kernel.kallsyms])
  0.12%  [unknown] (libjvm.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  is_thread_initialized (libazsys3.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  PMEM::account_enabled; PMEM::accounts (libaztall.so)
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  clock_gettime (libc-2.31.so)
  0.00%  PMEM_Account::fetch_stats (libaztall.so)
  0.00%  az_pmem_get_fund_stats (libazsys3.so)
  0.00%  <stub: aload  25 aload>
  0.00%  <stub: fast_iload  224 fast_iload>
  0.00%  _dl_addr (libc-2.31.so)
  0.00%  java.lang.ref.WeakReference::get[C1]
  0.02%  <...other 12 warm methods...>
....................................................................................................
 99.99%  <totals>

....[Distribution by Area]..........................................................................
 95.55%  <generated code>
  4.24%  <native code in ([kernel.kallsyms])>
  0.12%  <native code in (libjvm.so)>
  0.03%  <native code in (libaztall.so)>
  0.02%  <native code in (libc-2.31.so)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.00%  <native code in (libpthread-2.31.so)>
  0.00%  <native code in (perf-152766.map)>
....................................................................................................
 99.99%  <totals>



# Run complete. Total time: 00:03:43

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

Benchmark                                                   (size)  Mode  Cnt  Score   Error  Units
ScalarEvolutionAndLoopOptimizationBenchmark.baseline         16384  avgt    5  6.189 ± 0.004  ns/op
ScalarEvolutionAndLoopOptimizationBenchmark.baseline:·asm    16384  avgt         NaN            ---
ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop        16384  avgt    5  6.198 ± 0.019  ns/op
ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop:·asm   16384  avgt         NaN            ---
