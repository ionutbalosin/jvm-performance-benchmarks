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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.final_property

# Run progress: 0.00% complete, ETA 00:06:40
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5.828 ns/op
# Warmup Iteration   2: 5.804 ns/op
# Warmup Iteration   3: 5.820 ns/op
# Warmup Iteration   4: 5.802 ns/op
# Warmup Iteration   5: 5.802 ns/op
Iteration   1: 5.802 ns/op
Iteration   2: 5.803 ns/op
Iteration   3: 5.802 ns/op
Iteration   4: 5.802 ns/op
Iteration   5: 5.806 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.final_property":
  5.803 ±(99.9%) 0.007 ns/op [Average]
  (min, avg, max) = (5.802, 5.803, 5.806), stdev = 0.002
  CI (99.9%): [5.796, 5.810] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.final_property:·asm":
PrintAssembly processed: 133680 total address lines.
Perf output processed (skipped 56.457 seconds):
 Column 1: cycles (51331 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x300314dc:0x30031541] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub[Falcon]

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
  6.42%  0x30031503: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30031508: e8 f3 c3 fd ff                    callq    -146445                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  6.36%  0x3003150d: 48 89 44 24 40                    movq    %rax, 64(%rsp)                
 51.35%  0x30031512: 48 ff c5                          incq    %rbp                          
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
 64.12%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x32b0a2da:0x32b0a4bf] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::final_property[C1]

         0x32b0a2da: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x32b0a2de: e9 1d 3f 50 fd                    jmp    -45072611                      ; 0x3000e200 = StubRoutines::deoptimize
         0x32b0a2e3: cc                                int3                                  
         <nmethodAdapter compile_id='236' level='1' size='40' address='0x00007fc7e80f6300' dependencies_offset='32' stamp='82181.963'/>
         5.728:  236         1 inlining into org.openjdk.jmh.infra.Blackhole::consume (Ljava/lang/Object;)V (tid 140083) (kid 1438 pkid/prev 1414/NA) (mid 1472514 pmid 18379) (bytes 19) (generation 0) (lvl O2) (score 19) (score_updated 0ms; orig 19; promoted 0) (wait 0ms)
         5.728:              @ 7   org.openjdk.jmh.infra.Blackhole::consumeCompiler (1 bytes)   intrinsics
         5.729:  236         1 installed at 0x32b0a280 with size 0x64. org.openjdk.jmh.infra.Blackhole::consume (Ljava/lang/Object;)V (tid 140083) (kid 1438 pkid/prev 1414/NA) (mid 1472514 pmid 18379) (bytes 19) (generation 0) (lvl O2) (score 19) (score_updated 0ms; orig 19; promoted 1) (wait 0ms) (compile 0ms/1ms)
           # {method}{0x20002654a40} final_property[C1] ()Ljava/lang/String; in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/JustInTimeConstantsBenchmark
         Decoding CodeBlob 0x32b0a400
         0x32b0a480: e8 7b b1 50 fd 00 00              subq    $8, %rsp                      
  6.35%  0x32b0a487: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 12.76%  0x32b0a490: 75 28                             jne    40                             ; 0x32b0a4ba
  7.98%  0x32b0a492: 48 8b 47 08                       movq    8(%rdi), %rax                 
  0.01%  0x32b0a496: 48 85 04 25 40 00 f8 2f           testq    %rax, 804782144              ; 804782144 = gc_phase_trap_mask
         0x32b0a49e: 74 18                             je    24                              ; 0x32b0a4b8
         0x32b0a4a0: 48 89 44 24 d0                    movq    %rax, -48(%rsp)               
         0x32b0a4a5: 48 8d 47 08                       leaq    8(%rdi), %rax                 
         0x32b0a4a9: 48 89 44 24 c8                    movq    %rax, -56(%rsp)               
         0x32b0a4ae: e8 cd 1f 50 fd                    callq    -45080627                    ; 0x3000c480 = StubRoutines::lvb_handler
         0x32b0a4b3: 48 8b 44 24 f0                    movq    -16(%rsp), %rax               
  4.89%  0x32b0a4b8: 59                                popq    %rcx                          
         0x32b0a4b9: c3                                retq                                  
         0x32b0a4ba: e8 81 d0 50 fd                    callq    -45035391                    ; 0x30017540 = StubRoutines::safepoint_handler
         0x32b0a4bf: eb d1                             jmp    -47                            ; 0x32b0a492
....................................................................................................
 27.10%  <total for region 2>

....[Hottest Regions]...............................................................................
 64.12%  [0x300314dc:0x30031541] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub[Falcon]
 27.10%  [0x32b0a2da:0x32b0a4bf] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::final_property[C1]
  4.89%  [0x32b0a487:0x32b0a4d0] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::final_property[C1]
  0.22%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9f0711c:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eef3a2:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f211f9:0xffffffffa9f21223] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f695f5:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eef44f:0xffffffffa9eef4ad] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eef5b2:0xffffffffa9eef5ce] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ee5876:0xffffffffa9ee587e] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eef30c:0xffffffffa9eef381] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eee5d0:0xffffffffa9eee62e] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28d0d0:0xffffffffaa28d127] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28ead0:0xffffffffaa28eb1b] in [unknown] ([kernel.kallsyms])
  2.06%  <...other 291 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 64.12%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_final_property_jmhTest::final_property_avgt_jmhStub[Falcon]
 31.98%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::final_property[C1]
  3.61%  [unknown] ([kernel.kallsyms])
  0.17%  [unknown] (libjvm.so)
  0.02%  [unknown] ([vdso])
  0.01%  [unknown] (libc-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.00%  _dl_addr (libc-2.31.so)
  0.00%  VMEM_SpaceManager::uses_cache_for_account (libaztall.so)
  0.00%  __errno_location (libpthread-2.31.so)
  0.00%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  <stub: return entry points>
  0.00%  <stub: astore  58 astore>
  0.00%  is_thread_initialized (libazsys3.so)
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  __pthread_mutex_unlock (libpthread-2.31.so)
  0.00%  syscall (libc-2.31.so)
  0.00%  _IO_fwrite (libc-2.31.so)
  0.00%  <stub: method entry point (kind = zerolocals)>
  0.03%  <...other 13 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 96.13%  <generated code>
  3.61%  <native code in ([kernel.kallsyms])>
  0.17%  <native code in (libjvm.so)>
  0.03%  <native code in (libc-2.31.so)>
  0.02%  <native code in (libaztall.so)>
  0.02%  <native code in ([vdso])>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.00%  <native code in (libazsys3.so)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.property

# Run progress: 25.00% complete, ETA 00:05:37
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5.834 ns/op
# Warmup Iteration   2: 5.808 ns/op
# Warmup Iteration   3: 5.830 ns/op
# Warmup Iteration   4: 5.801 ns/op
# Warmup Iteration   5: 5.802 ns/op
Iteration   1: 5.805 ns/op
Iteration   2: 5.805 ns/op
Iteration   3: 5.802 ns/op
Iteration   4: 5.801 ns/op
Iteration   5: 5.803 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.property":
  5.803 ±(99.9%) 0.008 ns/op [Average]
  (min, avg, max) = (5.801, 5.803, 5.805), stdev = 0.002
  CI (99.9%): [5.795, 5.811] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.property:·asm":
PrintAssembly processed: 133687 total address lines.
Perf output processed (skipped 57.037 seconds):
 Column 1: cycles (51393 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x300316dc:0x30031741] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub[Falcon]

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
  6.25%  0x30031703: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30031708: e8 f3 c1 fd ff                    callq    -146957                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  6.56%  0x3003170d: 48 89 44 24 40                    movq    %rax, 64(%rsp)                
 51.16%  0x30031712: 48 ff c5                          incq    %rbp                          
         0x30031715: 2e 2e 41 0f b6 84 24 94 00 00     movzbl    %cs:148(%r12), %eax         
         0x30031720: 84 c0                             testb    %al, %al                     
         0x30031722: 74 dc                             je    -36                             ; 0x30031700
         0x30031724: 41 ff d5                          callq    *%r13                        
         0x30031727: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x3003172b: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x30031733: c4 e1 fb 2a c5                    vcvtsi2sd    %rbp, %xmm0, %xmm0       
         0x30031738: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x3003173d: 48 83 c4 48                       addq    $72, %rsp                     
         0x30031741: 5b                                popq    %rbx                          
....................................................................................................
 63.97%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x32b0a0a1:0x32b0a2ba] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::property[C1]

         0x32b0a0a1: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x32b0a0a5: e9 56 41 50 fd                    jmp    -45072042                      ; 0x3000e200 = StubRoutines::deoptimize
         0x32b0a0aa: cc                                int3                                  
         <nmethodAdapter compile_id='237' level='1' size='40' address='0x00007f30480a9070' dependencies_offset='32' stamp='82295.014'/>
         6.311:  237         1 inlining into org.openjdk.jmh.infra.Blackhole::consumeCompiler (Ljava/lang/Object;)V (tid 140210) (kid 1438 pkid/prev 1414/NA) (mid 1472532 pmid 18396) (bytes 1) (generation 0) (lvl O2) (score 1) (score_updated 0ms; orig 1; promoted 0) (wait 0ms)
         6.312:  236         1 started   org.openjdk.jmh.infra.Blackhole::consume (Ljava/lang/Object;)V (tid 140211) (kid 1438 pkid/prev 1414/NA) (mid 1472514 pmid 18379) (bytes 19) (generation 0) (lvl O2) (score 19) (score_updated 0ms; orig 19; promoted 0) (wait 0ms)
         6.312:  237         1 installed at 0x32b0a080 with size 0x2b. org.openjdk.jmh.infra.Blackhole::consumeCompiler (Ljava/lang/Object;)V (tid 140210) (kid 1438 pkid/prev 1414/NA) (mid 1472532 pmid 18396) (bytes 1) (generation 0) (lvl O2) (score 1) (score_updated 0ms; orig 1; promoted 0) (wait 0ms) (compile 0ms/0ms)
           # {method}{0x20002654f00} property[C1] ()Ljava/lang/String; in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/JustInTimeConstantsBenchmark
         Decoding CodeBlob 0x32b0a200
         0x32b0a280: e8 7b b3 50 fd 00 00              subq    $8, %rsp                      
  6.36%  0x32b0a287: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 12.88%  0x32b0a290: 75 28                             jne    40                             ; 0x32b0a2ba
  8.00%  0x32b0a292: 48 8b 47 10                       movq    16(%rdi), %rax                
         0x32b0a296: 48 85 04 25 40 00 f8 2f           testq    %rax, 804782144              ; 804782144 = gc_phase_trap_mask
         0x32b0a29e: 74 18                             je    24                              ; 0x32b0a2b8
         0x32b0a2a0: 48 89 44 24 d0                    movq    %rax, -48(%rsp)               
         0x32b0a2a5: 48 8d 47 10                       leaq    16(%rdi), %rax                
         0x32b0a2a9: 48 89 44 24 c8                    movq    %rax, -56(%rsp)               
         0x32b0a2ae: e8 cd 21 50 fd                    callq    -45080115                    ; 0x3000c480 = StubRoutines::lvb_handler
         0x32b0a2b3: 48 8b 44 24 f0                    movq    -16(%rsp), %rax               
  4.82%  0x32b0a2b8: 59                                popq    %rcx                          
         0x32b0a2b9: c3                                retq                                  
         0x32b0a2ba: e8 81 d2 50 fd                    callq    -45034879                    ; 0x30017540 = StubRoutines::safepoint_handler
....................................................................................................
 27.24%  <total for region 2>

....[Hottest Regions]...............................................................................
 63.97%  [0x300316dc:0x30031741] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub[Falcon]
 27.24%  [0x32b0a0a1:0x32b0a2ba] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::property[C1]
  4.82%  [0x32b0a287:0x32b0a2d0] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::property[C1]
  0.23%  [0xffffffffa9eef320:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.21%  [0xffffffffa9eb8dcf:0xffffffffa9eb8de6] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9f0711c:0xffffffffa9f07160] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9c94c86:0xffffffffa9c94c86] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9eef5bd:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eef44f:0xffffffffa9eef4ad] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ed0800:0xffffffffa9ed0873] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ee587e:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0740:0xffffffffa9ed07b2] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9f07065:0xffffffffa9f070cd] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9f686c5:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9f69698:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  2.02%  <...other 294 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 63.97%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_property_jmhTest::property_avgt_jmhStub[Falcon]
 32.06%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::property[C1]
  3.68%  [unknown] ([kernel.kallsyms])
  0.15%  [unknown] (libjvm.so)
  0.02%  [unknown] ([vdso])
  0.01%  [unknown] (libc-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  PMEM::account_enabled (libaztall.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.00%  syscall (libc-2.31.so)
  0.00%  _IO_file_write (libc-2.31.so)
  0.00%  PMEM::get_account_usage (libaztall.so)
  0.00%  clock_gettime (libc-2.31.so)
  0.00%  <stub: return entry points>
  0.00%  az_zmd_api_version (libazsys3.so)
  0.00%  _dl_addr (libc-2.31.so)
  0.00%  [unknown] (perf-140195.map)
  0.00%  thread_stack_region_start@plt (libazsys3.so)
  0.00%  memcpy (libc-2.31.so)
  0.04%  <...other 18 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 96.05%  <generated code>
  3.68%  <native code in ([kernel.kallsyms])>
  0.15%  <native code in (libjvm.so)>
  0.04%  <native code in (libc-2.31.so)>
  0.03%  <native code in (libaztall.so)>
  0.02%  <native code in ([vdso])>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (libazsys3.so)>
  0.00%  <native code in (ld-2.31.so)>
  0.00%  <native code in (perf-140195.map)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.static_final_property

# Run progress: 50.00% complete, ETA 00:03:44
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.320 ns/op
# Warmup Iteration   2: 6.419 ns/op
# Warmup Iteration   3: 6.210 ns/op
# Warmup Iteration   4: 6.192 ns/op
# Warmup Iteration   5: 6.192 ns/op
Iteration   1: 6.190 ns/op
Iteration   2: 6.194 ns/op
Iteration   3: 6.188 ns/op
Iteration   4: 6.189 ns/op
Iteration   5: 6.189 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.static_final_property":
  6.190 ±(99.9%) 0.009 ns/op [Average]
  (min, avg, max) = (6.188, 6.190, 6.194), stdev = 0.002
  CI (99.9%): [6.181, 6.199] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.static_final_property:·asm":
PrintAssembly processed: 133019 total address lines.
Perf output processed (skipped 56.592 seconds):
 Column 1: cycles (51569 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x300312dc:0x30031341] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub[Falcon]

         0x300312dc: 48 89 43 20                       movq    %rax, 32(%rbx)                
         0x300312e0: 4d 85 f6                          testq    %r14, %r14                   
         0x300312e3: 0f 84 86 00 00 00                 je    134                             ; 0x3003136f
         0x300312e9: 4d 85 ff                          testq    %r15, %r15                   
         0x300312ec: 0f 84 8f 00 00 00                 je    143                             ; 0x30031381
         0x300312f2: 4d 85 e4                          testq    %r12, %r12                   
         0x300312f5: 0f 84 a4 00 00 00                 je    164                             ; 0x3003139f
         0x300312fb: 31 ed                             xorl    %ebp, %ebp                    
         0x300312fd: 0f 1f 00                          nopl    (%rax)                        
         0x30031300: 4c 89 f7                          movq    %r14, %rdi                    
  5.91%  0x30031303: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30031308: e8 f3 c5 fd ff                    callq    -145933                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  6.15%  0x3003130d: 48 89 44 24 40                    movq    %rax, 64(%rsp)                
 53.94%  0x30031312: 48 ff c5                          incq    %rbp                          
         0x30031315: 2e 2e 41 0f b6 84 24 94 00 00     movzbl    %cs:148(%r12), %eax         
         0x30031320: 84 c0                             testb    %al, %al                     
         0x30031322: 74 dc                             je    -36                             ; 0x30031300
         0x30031324: 41 ff d5                          callq    *%r13                        
         0x30031327: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x3003132b: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x30031333: c4 e1 fb 2a c5                    vcvtsi2sd    %rbp, %xmm0, %xmm0       
         0x30031338: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x3003133d: 48 83 c4 48                       addq    $72, %rsp                     
         0x30031341: 5b                                popq    %rbx                          
....................................................................................................
 66.00%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x32b0a2da:0x32b0a4c9] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::static_final_property[C1]

         0x32b0a2da: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x32b0a2de: e9 1d 3f 50 fd                    jmp    -45072611                      ; 0x3000e200 = StubRoutines::deoptimize
         0x32b0a2e3: cc                                int3                                  
         <nmethodAdapter compile_id='235' level='1' size='40' address='0x00007f97a00da800' dependencies_offset='32' stamp='82406.671'/>
         5.856:  235         1 inlining into org.openjdk.jmh.infra.Blackhole::consume (Ljava/lang/Object;)V (tid 140349) (kid 1438 pkid/prev 1414/NA) (mid 1472514 pmid 18379) (bytes 19) (generation 0) (lvl O2) (score 19) (score_updated 0ms; orig 19; promoted 0) (wait 0ms)
         5.856:              @ 7   org.openjdk.jmh.infra.Blackhole::consumeCompiler (1 bytes)   intrinsics
         5.857:  235         1 installed at 0x32b0a280 with size 0x64. org.openjdk.jmh.infra.Blackhole::consume (Ljava/lang/Object;)V (tid 140349) (kid 1438 pkid/prev 1414/NA) (mid 1472514 pmid 18379) (bytes 19) (generation 0) (lvl O2) (score 19) (score_updated 0ms; orig 19; promoted 2) (wait 0ms) (compile 0ms/1ms)
           # {method}{0x20002654850} static_final_property[C1] ()Ljava/lang/String; in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/JustInTimeConstantsBenchmark
         Decoding CodeBlob 0x32b0a400
         0x32b0a480: e8 7b b1 50 fd 00 00              subq    $8, %rsp                      
  5.70%  0x32b0a487: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 11.97%  0x32b0a490: 75 32                             jne    50                             ; 0x32b0a4c4
  6.01%  0x32b0a492: 48 8b 04 25 48 cc ff 2c           movq    754961480, %rax               
  0.04%  0x32b0a49a: 48 85 04 25 40 00 f8 2f           testq    %rax, 804782144              ; 804782144 = gc_phase_trap_mask
         0x32b0a4a2: 74 1e                             je    30                              ; 0x32b0a4c2
         0x32b0a4a4: 48 89 44 24 d0                    movq    %rax, -48(%rsp)               
         0x32b0a4a9: 48 b8 48 cc ff 2c 00 00 00 00     movabsq    $754961480, %rax           ; 0x2cffcc48 = 
         0x32b0a4b3: 48 89 44 24 c8                    movq    %rax, -56(%rsp)               
         0x32b0a4b8: e8 c3 1f 50 fd                    callq    -45080637                    ; 0x3000c480 = StubRoutines::lvb_handler
         0x32b0a4bd: 48 8b 44 24 f0                    movq    -16(%rsp), %rax               
  5.97%  0x32b0a4c2: 59                                popq    %rcx                          
         0x32b0a4c3: c3                                retq                                  
         0x32b0a4c4: e8 77 d0 50 fd                    callq    -45035401                    ; 0x30017540 = StubRoutines::safepoint_handler
         0x32b0a4c9: eb c7                             jmp    -57                            ; 0x32b0a492
....................................................................................................
 23.72%  <total for region 2>

....[Hottest Region 3]..............................................................................
 [0x32b0a487:0x32b0a4da] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::static_final_property[C1]

  5.70%  0x32b0a487: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 11.97%  0x32b0a490: 75 32                             jne    50                             ; 0x32b0a4c4
  6.01%  0x32b0a492: 48 8b 04 25 48 cc ff 2c           movq    754961480, %rax               
  0.04%  0x32b0a49a: 48 85 04 25 40 00 f8 2f           testq    %rax, 804782144              ; 804782144 = gc_phase_trap_mask
         0x32b0a4a2: 74 1e                             je    30                              ; 0x32b0a4c2
         0x32b0a4a4: 48 89 44 24 d0                    movq    %rax, -48(%rsp)               
         0x32b0a4a9: 48 b8 48 cc ff 2c 00 00 00 00     movabsq    $754961480, %rax           ; 0x2cffcc48 = 
         0x32b0a4b3: 48 89 44 24 c8                    movq    %rax, -56(%rsp)               
         0x32b0a4b8: e8 c3 1f 50 fd                    callq    -45080637                    ; 0x3000c480 = StubRoutines::lvb_handler
         0x32b0a4bd: 48 8b 44 24 f0                    movq    -16(%rsp), %rax               
  5.97%  0x32b0a4c2: 59                                popq    %rcx                          
         0x32b0a4c3: c3                                retq                                  
         0x32b0a4c4: e8 77 d0 50 fd                    callq    -45035401                    ; 0x30017540 = StubRoutines::safepoint_handler
         0x32b0a4c9: eb c7                             jmp    -57                            ; 0x32b0a492
                             // Generic exception handler
         0x32b0a4cb: 59                                popq    %rcx                          
         0x32b0a4cc: e9 af 79 51 fd                    jmp    -44992081                      ; 0x30021e80 = unwind_exception Runtime1 stub
         0x32b0a4d1: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x32b0a4d5: e9 26 3d 50 fd                    jmp    -45073114                      ; 0x3000e200 = StubRoutines::deoptimize
         0x32b0a4da: cc                                int3                                  
         <nmethodAdapter compile_id='234' level='1' size='40' address='0x00007f97a40987c0' dependencies_offset='32' stamp='82406.671'/>
....................................................................................................
  5.97%  <total for region 3>

....[Hottest Regions]...............................................................................
 66.00%  [0x300312dc:0x30031341] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub[Falcon]
 23.72%  [0x32b0a2da:0x32b0a4c9] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::static_final_property[C1]
  5.97%  [0x32b0a487:0x32b0a4da] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::static_final_property[C1]
  0.25%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.22%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.20%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.18%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eef5b2:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f0711c:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f695f0:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffaa28ead0:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f07065:0xffffffffa9f070cd] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eef467:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9c0f77a:0xffffffffa9c0f7a2] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ee587e:0xffffffffa9ee587e] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0800:0xffffffffa9ed0861] in [unknown] ([kernel.kallsyms])
  2.21%  <...other 345 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 66.00%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_final_property_jmhTest::static_final_property_avgt_jmhStub[Falcon]
 29.69%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::static_final_property[C1]
  3.92%  [unknown] ([kernel.kallsyms])
  0.20%  [unknown] (libjvm.so)
  0.02%  __errno_location (libpthread-2.31.so)
  0.02%  [unknown] (libc-2.31.so)
  0.02%  VMEM::get_account_usage (libaztall.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  [unknown] ([vdso])
  0.01%  az_pmem_get_account_usage_tall (libaztall.so)
  0.01%  thread_stack_region_start (libazsys3.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  <stub: invokevirtual  182 invokevirtual>
  0.01%  MutexLocker::~MutexLocker (libaztall.so)
  0.00%  PMEM::account_enabled; PMEM::accounts (libaztall.so)
  0.00%  is_thread_initialized (libazsys3.so)
  0.00%  <stub: method entry point (kind = zerolocals)>
  0.00%  [unknown] (liborca.so.0.0.0.0)
  0.05%  <...other 24 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.71%  <generated code>
  3.92%  <native code in ([kernel.kallsyms])>
  0.20%  <native code in (libjvm.so)>
  0.07%  <native code in (libaztall.so)>
  0.03%  <native code in (libc-2.31.so)>
  0.03%  <native code in (libpthread-2.31.so)>
  0.02%  <native code in (libazsys3.so)>
  0.01%  <native code in ([vdso])>
  0.00%  <native code in (liborca.so.0.0.0.0)>
  0.00%  <native code in (nf_nat.ko)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.static_property

# Run progress: 75.00% complete, ETA 00:01:51
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.643 ns/op
# Warmup Iteration   2: 7.693 ns/op
# Warmup Iteration   3: 7.472 ns/op
# Warmup Iteration   4: 7.362 ns/op
# Warmup Iteration   5: 7.382 ns/op
Iteration   1: 7.404 ns/op
Iteration   2: 7.415 ns/op
Iteration   3: 7.397 ns/op
Iteration   4: 7.403 ns/op
Iteration   5: 7.412 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.static_property":
  7.406 ±(99.9%) 0.028 ns/op [Average]
  (min, avg, max) = (7.397, 7.406, 7.415), stdev = 0.007
  CI (99.9%): [7.378, 7.434] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark.static_property:·asm":
PrintAssembly processed: 133429 total address lines.
Perf output processed (skipped 57.084 seconds):
 Column 1: cycles (51517 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x300312dc:0x30031341] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub[Falcon]

         0x300312dc: 48 89 43 20                       movq    %rax, 32(%rbx)                
         0x300312e0: 4d 85 f6                          testq    %r14, %r14                   
         0x300312e3: 0f 84 86 00 00 00                 je    134                             ; 0x3003136f
         0x300312e9: 4d 85 ff                          testq    %r15, %r15                   
         0x300312ec: 0f 84 8f 00 00 00                 je    143                             ; 0x30031381
         0x300312f2: 4d 85 e4                          testq    %r12, %r12                   
         0x300312f5: 0f 84 a4 00 00 00                 je    164                             ; 0x3003139f
         0x300312fb: 31 ed                             xorl    %ebp, %ebp                    
         0x300312fd: 0f 1f 00                          nopl    (%rax)                        
         0x30031300: 4c 89 f7                          movq    %r14, %rdi                    
  4.95%  0x30031303: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30031308: e8 f3 c5 fd ff                    callq    -145933                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  5.18%  0x3003130d: 48 89 44 24 40                    movq    %rax, 64(%rsp)                
 68.81%  0x30031312: 48 ff c5                          incq    %rbp                          
         0x30031315: 2e 2e 41 0f b6 84 24 94 00 00     movzbl    %cs:148(%r12), %eax         
         0x30031320: 84 c0                             testb    %al, %al                     
         0x30031322: 74 dc                             je    -36                             ; 0x30031300
         0x30031324: 41 ff d5                          callq    *%r13                        
         0x30031327: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x3003132b: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x30031333: c4 e1 fb 2a c5                    vcvtsi2sd    %rbp, %xmm0, %xmm0       
         0x30031338: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x3003133d: 48 83 c4 48                       addq    $72, %rsp                     
         0x30031341: 5b                                popq    %rbx                          
....................................................................................................
 78.94%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x32b09c9b:0x32b09ed3] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::static_property[C1]

                             // Generic exception handler
         0x32b09c9b: 59                                popq    %rcx                          
         0x32b09c9c: e9 df 81 51 fd                    jmp    -44989985                      ; 0x30021e80 = unwind_exception Runtime1 stub
         0x32b09ca1: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x32b09ca5: e9 56 45 50 fd                    jmp    -45071018                      ; 0x3000e200 = StubRoutines::deoptimize
         0x32b09caa: cc                                int3                                  
         <nmethodAdapter compile_id='235' level='1' size='40' address='0x00007fddf80b5910' dependencies_offset='32' stamp='82518.027'/>
           # {method}{0x20002654c00} static_property[C1] ()Ljava/lang/String; in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/JustInTimeConstantsBenchmark
         Decoding CodeBlob 0x32b09e00
         0x32b09e80: e8 7b b7 50 fd 00 00              subq    $8, %rsp                      
  4.95%  0x32b09e87: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  1.04%  0x32b09e90: 75 61                             jne    97                             ; 0x32b09ef3
  0.53%  0x32b09e92: 48 8b 04 25 28 2d 00 2d           movq    754986280, %rax               
  4.40%  0x32b09e9a: 48 85 04 25 40 00 f8 2f           testq    %rax, 804782144              ; 804782144 = gc_phase_trap_mask
         0x32b09ea2: 74 1e                             je    30                              ; 0x32b09ec2
         0x32b09ea4: 48 89 44 24 d0                    movq    %rax, -48(%rsp)               
         0x32b09ea9: 48 b8 28 2d 00 2d 00 00 00 00     movabsq    $754986280, %rax           ; 0x2d002d28 = 
         0x32b09eb3: 48 89 44 24 c8                    movq    %rax, -56(%rsp)               
         0x32b09eb8: e8 c3 25 50 fd                    callq    -45079101                    ; 0x3000c480 = StubRoutines::lvb_handler
         0x32b09ebd: 48 8b 44 24 f0                    movq    -16(%rsp), %rax               
  0.52%  0x32b09ec2: 4c 8b 98 70 03 00 00              movq    880(%rax), %r11               
  0.43%  0x32b09ec9: 4c 85 1c 25 40 00 f8 2f           testq    %r11, 804782144              ; 804782144 = gc_phase_trap_mask
         0x32b09ed1: 74 1b                             je    27                              ; 0x32b09eee
         0x32b09ed3: 4c 89 5c 24 d0                    movq    %r11, -48(%rsp)               
....................................................................................................
 10.92%  <total for region 2>

....[Hottest Region 3]..............................................................................
 [0x32b09eb8:0x32b09f09] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::static_property[C1]

         0x32b09eb8: e8 c3 25 50 fd                    callq    -45079101                    ; 0x3000c480 = StubRoutines::lvb_handler
         0x32b09ebd: 48 8b 44 24 f0                    movq    -16(%rsp), %rax               
  0.52%  0x32b09ec2: 4c 8b 98 70 03 00 00              movq    880(%rax), %r11               
  0.43%  0x32b09ec9: 4c 85 1c 25 40 00 f8 2f           testq    %r11, 804782144              ; 804782144 = gc_phase_trap_mask
         0x32b09ed1: 74 1b                             je    27                              ; 0x32b09eee
         0x32b09ed3: 4c 89 5c 24 d0                    movq    %r11, -48(%rsp)               
         0x32b09ed8: 4c 8d 98 70 03 00 00              leaq    880(%rax), %r11               
         0x32b09edf: 4c 89 5c 24 c8                    movq    %r11, -56(%rsp)               
         0x32b09ee4: e8 97 25 50 fd                    callq    -45079145                    ; 0x3000c480 = StubRoutines::lvb_handler
         0x32b09ee9: 4c 8b 5c 24 f0                    movq    -16(%rsp), %r11               
  5.03%  0x32b09eee: 4c 89 d8                          movq    %r11, %rax                    
         0x32b09ef1: 59                                popq    %rcx                          
         0x32b09ef2: c3                                retq                                  
         0x32b09ef3: e8 48 d6 50 fd                    callq    -45033912                    ; 0x30017540 = StubRoutines::safepoint_handler
         0x32b09ef8: eb 98                             jmp    -104                           ; 0x32b09e92
                             // Generic exception handler
         0x32b09efa: 59                                popq    %rcx                          
         0x32b09efb: e9 80 7f 51 fd                    jmp    -44990592                      ; 0x30021e80 = unwind_exception Runtime1 stub
         0x32b09f00: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x32b09f04: e9 f7 42 50 fd                    jmp    -45071625                      ; 0x3000e200 = StubRoutines::deoptimize
         0x32b09f09: cc                                int3                                  
....................................................................................................
  5.03%  <total for region 3>

....[Hottest Regions]...............................................................................
 78.94%  [0x300312dc:0x30031341] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub[Falcon]
 10.92%  [0x32b09c9b:0x32b09ed3] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::static_property[C1]
  5.03%  [0x32b09eb8:0x32b09f09] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::static_property[C1]
  0.95%  [0x32b09e87:0x32b09ef3] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::static_property[C1]
  0.24%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.24%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.20%  [0xffffffffa9c94c86:0xffffffffa9c94c86] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9f0711f:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9eb8dc0:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eef44f:0xffffffffa9eef4ad] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f695f6:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f07060:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ed0740:0xffffffffa9ed0797] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0800:0xffffffffa9ed0873] in [unknown] ([kernel.kallsyms])
  2.17%  <...other 346 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 78.94%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.JustInTimeConstantsBenchmark_static_property_jmhTest::static_property_avgt_jmhStub[Falcon]
 16.90%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.JustInTimeConstantsBenchmark::static_property[C1]
  3.78%  [unknown] ([kernel.kallsyms])
  0.21%  [unknown] (libjvm.so)
  0.02%  __errno_location (libpthread-2.31.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  az_pmem_get_account_usage_tall; az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  [unknown] ([vdso])
  0.01%  az_pmem_get_account_usage_tall (libaztall.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  PMEM::account_enabled; PMEM::accounts (libaztall.so)
  0.01%  thread_stack_region_start (libazsys3.so)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.00%  is_thread_initialized (libazsys3.so)
  0.00%  az_zmd_api_version_tall (libaztall.so)
  0.00%  <stub: method entry point (kind = zerolocals)>
  0.00%  [unknown] (libstdc++.so.6)
  0.00%  PMEM::get_account_usage (libaztall.so)
  0.05%  <...other 22 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.86%  <generated code>
  3.78%  <native code in ([kernel.kallsyms])>
  0.21%  <native code in (libjvm.so)>
  0.06%  <native code in (libaztall.so)>
  0.03%  <native code in (libc-2.31.so)>
  0.02%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in ([vdso])>
  0.00%  <native code in (libstdc++.so.6)>
  0.00%  <native code in (libm-2.31.so)>
....................................................................................................
100.00%  <totals>



# Run complete. Total time: 00:07:27

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
JustInTimeConstantsBenchmark.final_property              avgt    5  5.803 ± 0.007  ns/op
JustInTimeConstantsBenchmark.final_property:·asm         avgt         NaN            ---
JustInTimeConstantsBenchmark.property                    avgt    5  5.803 ± 0.008  ns/op
JustInTimeConstantsBenchmark.property:·asm               avgt         NaN            ---
JustInTimeConstantsBenchmark.static_final_property       avgt    5  6.190 ± 0.009  ns/op
JustInTimeConstantsBenchmark.static_final_property:·asm  avgt         NaN            ---
JustInTimeConstantsBenchmark.static_property             avgt    5  7.406 ± 0.028  ns/op
JustInTimeConstantsBenchmark.static_property:·asm        avgt         NaN            ---
