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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark.initial_loop
# Parameters: (iterations = 1048576, offset = 128)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 10.524 ns/op
# Warmup Iteration   2: 10.172 ns/op
# Warmup Iteration   3: 10.186 ns/op
# Warmup Iteration   4: 10.175 ns/op
# Warmup Iteration   5: 10.167 ns/op
Iteration   1: 10.179 ns/op
Iteration   2: 10.174 ns/op
Iteration   3: 10.176 ns/op
Iteration   4: 10.178 ns/op
Iteration   5: 10.173 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark.initial_loop":
  10.176 ±(99.9%) 0.010 ns/op [Average]
  (min, avg, max) = (10.173, 10.176, 10.179), stdev = 0.002
  CI (99.9%): [10.167, 10.186] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark.initial_loop:·asm":
PrintAssembly processed: 134165 total address lines.
Perf output processed (skipped 56.513 seconds):
 Column 1: cycles (51347 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x300320c6:0x3003213c] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub[Falcon]

         0x300320c6: 49 bc 40 f4 85 75 38 7f 00 00     movabsq    $139880466609216, %r12     ; 0x7f387585f440 = os::javaTimeNanos_slow()
         0x300320d0: 41 ff d4                          callq    *%r12                        ; 0x7f387585f440 = os::javaTimeNanos_slow()
         0x300320d3: 48 89 43 20                       movq    %rax, 32(%rbx)                
         0x300320d7: 66 0f 1f 84 00 00 00 00 00        nopw    (%rax,%rax)                   
         0x300320e0: 4d 85 f6                          testq    %r14, %r14                   
         0x300320e3: 0f 84 7d 00 00 00                 je    125                             ; 0x30032166
         0x300320e9: 4d 85 ff                          testq    %r15, %r15                   
         0x300320ec: 0f 84 86 00 00 00                 je    134                             ; 0x30032178
         0x300320f2: 45 31 ed                          xorl    %r13d, %r13d                  
         0x300320f5: 66 66 2e 0f 1f 84 00 00 00 00     nopw    %cs:(%rax,%rax)               
  3.69%  0x30032100: 4c 89 f7                          movq    %r14, %rdi                    
         0x30032103: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30032108: e8 f3 b7 fd ff                    callq    -149517                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
 13.84%  0x3003210d: 49 ff c5                          incq    %r13                          
 10.81%  0x30032110: 41 0f b6 87 94 00 00 00           movzbl    148(%r15), %eax             
 14.51%  0x30032118: 84 c0                             testb    %al, %al                     
         0x3003211a: 74 e4                             je    -28                             ; 0x30032100
         0x3003211c: 41 ff d4                          callq    *%r12                        
         0x3003211f: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x30032123: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x3003212b: c4 c1 fb 2a c5                    vcvtsi2sd    %r13, %xmm0, %xmm0       
         0x30032130: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x30032135: 48 83 c4 30                       addq    $48, %rsp                     
         0x30032139: 5b                                popq    %rbx                          
         0x3003213a: 41 5c                             popq    %r12                          
         0x3003213c: 41 5d                             popq    %r13                          
....................................................................................................
 42.87%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x3002fea0:0x3002fed9] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark::initial_loop[Falcon]

         0x3002feb5: 0f 1f 00                          nopl    (%rax)                        
         0x3002feb8: e8 43 da fd ff                    callq    -140733                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  8.11%  0x3002febd: 48 83 c4 38                       addq    $56, %rsp                     
         0x3002fec1: c3                                retq                                  
         0x3002fec2: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002fecc: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002fece: eb df                             jmp    -33                            ; 0x3002feaf
         -----------
           # {method}{0x20002657000} initial_loop[Falcon] ()V in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/LoopReductionBenchmark
         Decoding CodeBlob 0x3002fe00
  7.34%  0x3002fea0: eb f9 ec 38                       subq    $56, %rsp                     
         0x3002fea4: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 14.66%  0x3002fead: 75 13                             jne    19                             ; 0x3002fec2
  3.65%  0x3002feaf: 8b 77 08                          movl    8(%rdi), %esi                 
         0x3002feb2: 8b 57 0c                          movl    12(%rdi), %edx                
         0x3002feb5: 0f 1f 00                          nopl    (%rax)                        
         0x3002feb8: e8 43 da fd ff                    callq    -140733                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  8.11%  0x3002febd: 48 83 c4 38                       addq    $56, %rsp                     
         0x3002fec1: c3                                retq                                  
         0x3002fec2: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002fecc: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002fece: eb df                             jmp    -33                            ; 0x3002feaf
         0x3002fed0: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x3002fed4: e9 27 e3 fd ff                    jmp    -138457                        ; 0x3000e200 = StubRoutines::deoptimize
         0x3002fed9: cc                                int3                                  
         Call tree size: 1
         0: caller_index: -1 bci: -1 callee: virtual void com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark.initial_loop()
         Encoded locations size: 3
....................................................................................................
 33.76%  <total for region 2>

....[Hottest Region 3]..............................................................................
 [0x3002f4a0:0x3002f4d2] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark::auto_reduction[Falcon]

         offset: 493 length: 9 scope: 2 bci: 0
         offset: 502 length: 9 scope: 0 bci: 0
         offset: 511 length: 280 scope: 1 bci: 0
         offset: 791 length: 30 scope: 0 bci: 0
         offset: 821 length: 30 scope: 2 bci: 0
         offset: 851 length: 18 scope: 1 bci: 0
         offset: 869 length: 42 scope: 0 bci: 0
         <nmethodAdapter compile_id='231' level='2' size='40' address='0x00007f375811e0f0' dependencies_offset='32' stamp='85108.138'/>
           # {method}{0x20002657410} auto_reduction[Falcon] (II)I in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/LoopReductionBenchmark
         Decoding CodeBlob 0x3002f400
  4.19%  0x3002f4a0: eb f9                             pushq    %rax                         
  4.58%  0x3002f4a2: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  4.63%  0x3002f4ab: 75 0e                             jne    14                             ; 0x3002f4bb
  2.41%  0x3002f4ad: 89 f0                             movl    %esi, %eax                    
         0x3002f4af: c1 f8 1f                          sarl    $31, %eax                     
  1.15%  0x3002f4b2: c4 e2 78 f2 c6                    andnl    %esi, %eax, %eax             
         0x3002f4b7: 01 d0                             addl    %edx, %eax                    
  2.46%  0x3002f4b9: 59                                popq    %rcx                          
  0.01%  0x3002f4ba: c3                                retq                                  
         0x3002f4bb: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f4c5: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f4c7: eb e4                             jmp    -28                            ; 0x3002f4ad
         0x3002f4c9: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x3002f4cd: e9 2e ed fd ff                    jmp    -135890                        ; 0x3000e200 = StubRoutines::deoptimize
         0x3002f4d2: cc                                int3                                  
         Call tree size: 1
         0: caller_index: -1 bci: -1 callee: virtual jint com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark.auto_reduction(jint, jint)
         Encoded locations size: 3
         offset: 0 length: 41 scope: 0 bci: 0
....................................................................................................
 19.43%  <total for region 3>

....[Hottest Regions]...............................................................................
 42.87%  [0x300320c6:0x3003213c] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub[Falcon]
 33.76%  [0x3002fea0:0x3002fed9] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark::initial_loop[Falcon]
 19.43%  [0x3002f4a0:0x3002f4d2] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark::auto_reduction[Falcon]
  0.27%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.23%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f0711c:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f211f0:0xffffffffa9f21223] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eb93b5:0xffffffffa9eb9441] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f695f6:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9c0f77a:0xffffffffa9c0f7a3] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ed0800:0xffffffffa9ed086e] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f07065:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ee587e:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eaca37:0xffffffffa9eaca6f] in [unknown] ([kernel.kallsyms])
  1.99%  <...other 259 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 42.87%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub[Falcon]
 33.76%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark::initial_loop[Falcon]
 19.43%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark::auto_reduction[Falcon]
  3.69%  [unknown] ([kernel.kallsyms])
  0.16%  [unknown] (libjvm.so)
  0.02%  [unknown] (libc-2.31.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  syscall (libc-2.31.so)
  0.00%  clock_nanosleep (libc-2.31.so)
  0.00%  PMEM::get_account_usage (libaztall.so)
  0.00%  VMEM_SpaceManager::uses_cache_for_account (libaztall.so)
  0.00%  PMEM::account_enabled (libaztall.so)
  0.00%  az_zmd_api_version_tall (libaztall.so)
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  [unknown] ([vdso])
  0.00%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  <stub: fast_invokevfinal  227 fast_invokevfinal>
  0.01%  <...other 4 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 96.06%  <generated code>
  3.69%  <native code in ([kernel.kallsyms])>
  0.16%  <native code in (libjvm.so)>
  0.03%  <native code in (libaztall.so)>
  0.03%  <native code in (libc-2.31.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in (libpthread-2.31.so)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark.manual_loop_reduction
# Parameters: (iterations = 1048576, offset = 128)

# Run progress: 50.00% complete, ETA 00:01:52
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 10.294 ns/op
# Warmup Iteration   2: 10.102 ns/op
# Warmup Iteration   3: 10.231 ns/op
# Warmup Iteration   4: 10.221 ns/op
# Warmup Iteration   5: 10.222 ns/op
Iteration   1: 10.224 ns/op
Iteration   2: 10.220 ns/op
Iteration   3: 10.223 ns/op
Iteration   4: 10.221 ns/op
Iteration   5: 10.220 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark.manual_loop_reduction":
  10.222 ±(99.9%) 0.006 ns/op [Average]
  (min, avg, max) = (10.220, 10.222, 10.224), stdev = 0.002
  CI (99.9%): [10.215, 10.228] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark.manual_loop_reduction:·asm":
PrintAssembly processed: 133796 total address lines.
Perf output processed (skipped 56.784 seconds):
 Column 1: cycles (51282 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x300318c6:0x3003193c] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub[Falcon]

         0x300318c6: 49 bc 40 a4 92 14 df 7f 00 00     movabsq    $140596099589184, %r12     ; 0x7fdf1492a440 = os::javaTimeNanos_slow()
         0x300318d0: 41 ff d4                          callq    *%r12                        ; 0x7fdf1492a440 = os::javaTimeNanos_slow()
         0x300318d3: 48 89 43 20                       movq    %rax, 32(%rbx)                
         0x300318d7: 66 0f 1f 84 00 00 00 00 00        nopw    (%rax,%rax)                   
         0x300318e0: 4d 85 f6                          testq    %r14, %r14                   
         0x300318e3: 0f 84 7d 00 00 00                 je    125                             ; 0x30031966
         0x300318e9: 4d 85 ff                          testq    %r15, %r15                   
         0x300318ec: 0f 84 86 00 00 00                 je    134                             ; 0x30031978
         0x300318f2: 45 31 ed                          xorl    %r13d, %r13d                  
         0x300318f5: 66 66 2e 0f 1f 84 00 00 00 00     nopw    %cs:(%rax,%rax)               
  3.37%  0x30031900: 4c 89 f7                          movq    %r14, %rdi                    
         0x30031903: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30031908: e8 f3 bf fd ff                    callq    -147469                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
 13.06%  0x3003190d: 49 ff c5                          incq    %r13                          
 11.16%  0x30031910: 41 0f b6 87 94 00 00 00           movzbl    148(%r15), %eax             
 14.69%  0x30031918: 84 c0                             testb    %al, %al                     
         0x3003191a: 74 e4                             je    -28                             ; 0x30031900
         0x3003191c: 41 ff d4                          callq    *%r12                        
         0x3003191f: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x30031923: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x3003192b: c4 c1 fb 2a c5                    vcvtsi2sd    %r13, %xmm0, %xmm0       
         0x30031930: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x30031935: 48 83 c4 30                       addq    $48, %rsp                     
         0x30031939: 5b                                popq    %rbx                          
         0x3003193a: 41 5c                             popq    %r12                          
         0x3003193c: 41 5d                             popq    %r13                          
....................................................................................................
 42.28%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x3002f6a0:0x3002f6d9] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark::manual_loop_reduction[Falcon]

         <nmethodAdapter compile_id='238' level='2' size='40' address='0x00007fdde4167680' dependencies_offset='32' stamp='85220.952'/>
         6.023:  231         3 inlining into java.lang.Class::searchFields ([Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/reflect/Field; (tid 144540) (kid 45 pkid/prev 21/NA) (mid 46235 pmid 304) (bytes 43) (generation 0) (lvl O2) (score 0) (score_updated 0ms; orig 0; promoted 0) (rank 0, time-between-promotions 1377ms) (wait 0ms)
         6.123:              @ 22   java.lang.reflect.Field::getName (5 bytes)   cost=-30, threshold=262, frequency=24.062015
         6.123:              @ 26   java.lang.String::equals (56 bytes)   cost=always, frequency=24.062015, reason=always inline attribute [intrinsic]
         6.146:  231         3 installed at 0x3002f0a0 with size 0x3a5. java.lang.Class::searchFields ([Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/reflect/Field; (tid 144540) (kid 45 pkid/prev 21/NA) (mid 46235 pmid 304) (bytes 43) (generation 0) (lvl O2) (score 0) (score_updated 70ms; orig 0; promoted 1) (rank 0, time-between-promotions 52ms) (wait 0ms) (compile 80ms/122ms)
         6.146:  242         3 started   com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub (Lorg/openjdk/jmh/runner/InfraControl;Lorg/openjdk/jmh/results/RawResults;Lorg/openjdk/jmh/infra/BenchmarkParams;Lorg/openjdk/jmh/infra/IterationParams;Lorg/openjdk/jmh/infra/ThreadParams;Lorg/openjdk/jmh/infra/Blackhole;Lorg/openjdk/jmh/infra/Control;ILcom/ionutbalosin/jvm/performance/benchmarks/micro/compiler/jmh_generated/LoopReductionBenchmark_jmhType;)V (tid 144540) (kid 1414 pkid/prev 1390/NA) (mid 1447942 pmid 18285) (bytes 52) (generation 0) (lvl O2) (score -118) (score_updated 0ms; orig 0; promoted 118) (rank 0, time-between-promotions 0ms) (wait 59ms)
         6.081:  238         3 inlining into com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark::manual_reduction (II)I (tid 144543) (kid 1447 pkid/prev 1423/NA) (mid 1481732 pmid 18437) (bytes 10) (generation 0) (lvl O2) (score 0) (score_updated 0ms; orig 0; promoted 0) (rank 0, time-between-promotions 2ms) (wait 0ms)
         6.146:  238         3 installed at 0x3002eea0 with size 0x33. com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark::manual_reduction (II)I (tid 144543) (kid 1447 pkid/prev 1423/NA) (mid 1481732 pmid 18437) (bytes 10) (generation 0) (lvl O2) (score 0) (score_updated 0ms; orig 0; promoted 189) (rank 0, time-between-promotions 0ms) (wait 0ms) (compile 12ms/64ms)
           # {method}{0x20002657100} manual_loop_reduction[Falcon] ()V in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/LoopReductionBenchmark
         Decoding CodeBlob 0x3002f600
  7.51%  0x3002f6a0: eb f9 ec 38                       subq    $56, %rsp                     
         0x3002f6a4: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 14.61%  0x3002f6ad: 75 13                             jne    19                             ; 0x3002f6c2
  3.78%  0x3002f6af: 8b 77 08                          movl    8(%rdi), %esi                 
         0x3002f6b2: 8b 57 0c                          movl    12(%rdi), %edx                
         0x3002f6b5: 0f 1f 00                          nopl    (%rax)                        
         0x3002f6b8: e8 43 e2 fd ff                    callq    -138685                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  8.64%  0x3002f6bd: 48 83 c4 38                       addq    $56, %rsp                     
         0x3002f6c1: c3                                retq                                  
         0x3002f6c2: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f6cc: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f6ce: eb df                             jmp    -33                            ; 0x3002f6af
         0x3002f6d0: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x3002f6d4: e9 27 eb fd ff                    jmp    -136409                        ; 0x3000e200 = StubRoutines::deoptimize
         0x3002f6d9: cc                                int3                                  
         Call tree size: 1
         0: caller_index: -1 bci: -1 callee: virtual void com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark.manual_loop_reduction()
         Encoded locations size: 3
....................................................................................................
 34.54%  <total for region 2>

....[Hottest Region 3]..............................................................................
 [0x3002eea0:0x3002f6ce] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark::manual_reduction[Falcon]

         0x3002f6b8: e8 43 e2 fd ff                    callq    -138685                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  8.64%  0x3002f6bd: 48 83 c4 38                       addq    $56, %rsp                     
         0x3002f6c1: c3                                retq                                  
         0x3002f6c2: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f6cc: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f6ce: eb df                             jmp    -33                            ; 0x3002f6af
         <nmethodAdapter compile_id='231' level='2' size='40' address='0x00007fddf44414e0' dependencies_offset='32' stamp='85220.952'/>
         -----------
           # {method}{0x200026574f8} manual_reduction[Falcon] (II)I in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/LoopReductionBenchmark
         Decoding CodeBlob 0x3002ee00
  3.48%  0x3002eea0: eb f9                             pushq    %rax                         
  4.77%  0x3002eea2: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  4.89%  0x3002eeab: 75 0e                             jne    14                             ; 0x3002eebb
  2.52%  0x3002eead: 89 f0                             movl    %esi, %eax                    
         0x3002eeaf: c1 f8 1f                          sarl    $31, %eax                     
  1.14%  0x3002eeb2: c4 e2 78 f2 c6                    andnl    %esi, %eax, %eax             
         0x3002eeb7: 01 d0                             addl    %edx, %eax                    
  2.40%  0x3002eeb9: 59                                popq    %rcx                          
         0x3002eeba: c3                                retq                                  
         0x3002eebb: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002eec5: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002eec7: eb e4                             jmp    -28                            ; 0x3002eead
         0x3002eec9: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x3002eecd: e9 2e f3 fd ff                    jmp    -134354                        ; 0x3000e200 = StubRoutines::deoptimize
         0x3002eed2: cc                                int3                                  
         Call tree size: 1
         0: caller_index: -1 bci: -1 callee: virtual jint com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark.manual_reduction(jint, jint)
         Encoded locations size: 3
....................................................................................................
 19.20%  <total for region 3>

....[Hottest Regions]...............................................................................
 42.28%  [0x300318c6:0x3003193c] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub[Falcon]
 34.54%  [0x3002f6a0:0x3002f6d9] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark::manual_loop_reduction[Falcon]
 19.20%  [0x3002eea0:0x3002f6ce] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark::manual_reduction[Falcon]
  0.24%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.20%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9f0711f:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9eff400:0xffffffffa9eff432] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f68701:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9c94c86:0xffffffffa9c94c86] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9da97a0:0xffffffffa9da97fd] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0800:0xffffffffa9ed0860] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eef467:0xffffffffa9eef4ad] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ee5876:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eb92a4:0xffffffffa9eb92d6] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9eee5d0:0xffffffffa9eee62f] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9f6966d:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  2.08%  <...other 326 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 42.28%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub[Falcon]
 34.54%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark::manual_loop_reduction[Falcon]
 19.20%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark::manual_reduction[Falcon]
  3.74%  [unknown] ([kernel.kallsyms])
  0.13%  [unknown] (libjvm.so)
  0.02%  [unknown] (libc-2.31.so)
  0.01%  az_pmem_get_account_usage_tall (libaztall.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  <stub: method entry point (kind = zerolocals)>
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.00%  az_zmd_api_version_tall (libaztall.so)
  0.00%  syscall (libc-2.31.so)
  0.00%  PMEM::account_enabled (libaztall.so)
  0.00%  <stub: goto  167 goto>
  0.00%  <stub: invokespecial  183 invokespecial>
  0.00%  jdk.internal.misc.Unsafe::compareAndSetInt[nativewrapper]
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  PMEM::account_enabled@plt (libaztall.so)
  0.02%  <...other 12 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 96.04%  <generated code>
  3.74%  <native code in ([kernel.kallsyms])>
  0.13%  <native code in (libjvm.so)>
  0.04%  <native code in (libaztall.so)>
  0.04%  <native code in (libc-2.31.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.00%  <native code in (libazsys3.so)>
  0.00%  <native code in (ld-2.31.so)>
  0.00%  <native code in (libpthread-2.31.so)>
  0.00%  <native code in ([vdso])>
....................................................................................................
100.00%  <totals>



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

Benchmark                                          (iterations)  (offset)  Mode  Cnt   Score   Error  Units
LoopReductionBenchmark.initial_loop                     1048576       128  avgt    5  10.176 ± 0.010  ns/op
LoopReductionBenchmark.initial_loop:·asm                1048576       128  avgt          NaN            ---
LoopReductionBenchmark.manual_loop_reduction            1048576       128  avgt    5  10.222 ± 0.006  ns/op
LoopReductionBenchmark.manual_loop_reduction:·asm       1048576       128  avgt          NaN            ---
