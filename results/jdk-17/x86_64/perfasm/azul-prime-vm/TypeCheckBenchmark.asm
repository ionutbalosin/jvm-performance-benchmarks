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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckBenchmark.instanceof_type_check

# Run progress: 0.00% complete, ETA 00:01:40
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.231 ns/op
# Warmup Iteration   2: 6.222 ns/op
# Warmup Iteration   3: 6.211 ns/op
# Warmup Iteration   4: 6.188 ns/op
# Warmup Iteration   5: 6.190 ns/op
Iteration   1: 6.218 ns/op
Iteration   2: 6.218 ns/op
Iteration   3: 6.188 ns/op
Iteration   4: 6.189 ns/op
Iteration   5: 6.187 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckBenchmark.instanceof_type_check":
  6.200 ±(99.9%) 0.063 ns/op [Average]
  (min, avg, max) = (6.187, 6.200, 6.218), stdev = 0.016
  CI (99.9%): [6.137, 6.263] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckBenchmark.instanceof_type_check:·asm":
PrintAssembly processed: 135178 total address lines.
Perf output processed (skipped 56.515 seconds):
 Column 1: cycles (51640 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f2a0:0x3002f2fe] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckBenchmark::instanceof_type_check[Falcon]

         <nmethodAdapter compile_id='240' level='2' size='40' address='0x00007fdaac1b5fd0' dependencies_offset='32' stamp='93651.271'/>
         5.751:  229         3 inlining into java.lang.Class::searchFields ([Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/reflect/Field; (tid 156580) (kid 45 pkid/prev 21/NA) (mid 46235 pmid 304) (bytes 43) (generation 0) (lvl O2) (score 0) (score_updated 0ms; orig 0; promoted 0) (rank 0, time-between-promotions 1407ms) (wait 0ms)
         5.841:              @ 22   java.lang.reflect.Field::getName (5 bytes)   cost=-30, threshold=262, frequency=24.062015
         5.841:              @ 26   java.lang.String::equals (56 bytes)   cost=always, frequency=24.062015, reason=always inline attribute [intrinsic]
         5.849:  229         3 installed at 0x3002eaa0 with size 0x3a5. java.lang.Class::searchFields ([Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/reflect/Field; (tid 156580) (kid 45 pkid/prev 21/NA) (mid 46235 pmid 304) (bytes 43) (generation 0) (lvl O2) (score 0) (score_updated 47ms; orig 0; promoted 1) (rank 0, time-between-promotions 50ms) (wait 0ms) (compile 74ms/97ms)
         5.849:  244         3 started   com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub (Lorg/openjdk/jmh/runner/InfraControl;Lorg/openjdk/jmh/results/RawResults;Lorg/openjdk/jmh/infra/BenchmarkParams;Lorg/openjdk/jmh/infra/IterationParams;Lorg/openjdk/jmh/infra/ThreadParams;Lorg/openjdk/jmh/infra/Blackhole;Lorg/openjdk/jmh/infra/Control;ILcom/ionutbalosin/jvm/performance/benchmarks/micro/compiler/jmh_generated/TypeCheckBenchmark_jmhType;)V (tid 156580) (kid 1412 pkid/prev 1388/NA) (mid 1445894 pmid 18277) (bytes 57) (generation 0) (lvl O2) (score -4) (score_updated 0ms; orig 0; promoted 4) (rank 0, time-between-promotions 0ms) (wait 27ms)
         5.813:  240         3 inlining into org.openjdk.jmh.infra.Blackhole::consume (Z)V (tid 156579) (kid 1438 pkid/prev 1414/NA) (mid 1472516 pmid 18381) (bytes 19) (generation 0) (lvl O2) (score 0) (score_updated 0ms; orig 0; promoted 0) (rank 0, time-between-promotions 3ms) (wait 0ms)
         5.849:  240         3 installed at 0x3002f0a0 with size 0x2c. org.openjdk.jmh.infra.Blackhole::consume (Z)V (tid 156579) (kid 1438 pkid/prev 1414/NA) (mid 1472516 pmid 18381) (bytes 19) (generation 0) (lvl O2) (score 0) (score_updated 36ms; orig 0; promoted 0) (rank 0, time-between-promotions 3ms) (wait 0ms) (compile 12ms/35ms)
           # {method}{0x20002655608} instanceof_type_check[Falcon] ()Z in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckBenchmark
         Decoding CodeBlob 0x3002f200
 12.17%  0x3002f2a0: eb f9                             pushq    %rax                         
  5.83%  0x3002f2a2: 48 89 fe                          movq    %rdi, %rsi                    
         0x3002f2a5: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 12.10%  0x3002f2ae: 75 2d                             jne    45                             ; 0x3002f2dd
  6.10%  0x3002f2b0: 48 8b 4e 08                       movq    8(%rsi), %rcx                 
         0x3002f2b4: b8 48 00 f8 2f                    movl    $804782152, %eax              ; 804782152 = clearable_gc_phase_trap_mask
         0x3002f2b9: 2e 2e 2e 2e 4c 8b 00              movq    %cs:(%rax), %r8               
         0x3002f2c0: 49 85 c8                          testq    %rcx, %r8                    
         0x3002f2c3: 75 26                             jne    38                             ; 0x3002f2eb
  5.71%  0x3002f2c5: 44 8b 51 04                       movl    4(%rcx), %r10d                
         0x3002f2c9: 41 81 e2 ff ff ff 01              andl    $33554431, %r10d              
  6.08%  0x3002f2d0: 41 81 fa e6 06 00 00              cmpl    $1766, %r10d                  
         0x3002f2d7: 75 3c                             jne    60                             ; 0x3002f315
  5.95%  0x3002f2d9: 31 c0                             xorl    %eax, %eax                    
         0x3002f2db: 59                                popq    %rcx                          
         0x3002f2dc: c3                                retq                                  
         0x3002f2dd: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f2e7: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f2e9: eb c5                             jmp    -59                            ; 0x3002f2b0
         0x3002f2eb: 48 83 c6 08                       addq    $8, %rsi                      
         0x3002f2ef: 48 b8 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rax           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f2f9: 48 89 cf                          movq    %rcx, %rdi                    
         0x3002f2fc: ff d0                             callq    *%rax                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f2fe: 48 89 c1                          movq    %rax, %rcx                    
....................................................................................................
 53.95%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x300314dc:0x30031541] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub[Falcon]

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
  5.88%  0x30031503: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30031508: e8 f3 c3 fd ff                    callq    -146445                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x3003150d: 89 44 24 34                       movl    %eax, 52(%rsp)                
 35.63%  0x30031511: 48 ff c5                          incq    %rbp                          
         0x30031514: 2e 2e 2e 41 0f b6 84 24 94 00     movzbl    %cs:148(%r12), %eax         
         0x30031520: 84 c0                             testb    %al, %al                     
         0x30031522: 74 dc                             je    -36                             ; 0x30031500
         0x30031524: 41 ff d5                          callq    *%r13                        
         0x30031527: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x3003152b: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x30031533: c4 e1 fb 2a c5                    vcvtsi2sd    %rbp, %xmm0, %xmm0       
         0x30031538: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x3003153d: 48 83 c4 38                       addq    $56, %rsp                     
         0x30031541: 5b                                popq    %rbx                          
....................................................................................................
 41.50%  <total for region 2>

....[Hottest Regions]...............................................................................
 53.95%  [0x3002f2a0:0x3002f2fe] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckBenchmark::instanceof_type_check[Falcon]
 41.50%  [0x300314dc:0x30031541] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub[Falcon]
  0.30%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.23%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.22%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eb8dcf:0xffffffffa9eb8e14] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9f0711f:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eef5b2:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eff400:0xffffffffa9eff42d] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9da97a0:0xffffffffa9da97fd] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28d0d0:0xffffffffaa28d129] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9f695f5:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28eb60:0xffffffffaa28ebaa] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eee5d0:0xffffffffa9eee62f] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ee587e:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9c0f77a:0xffffffffa9c0f7a3] in [unknown] ([kernel.kallsyms])
  2.35%  <...other 447 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 53.95%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckBenchmark::instanceof_type_check[Falcon]
 41.50%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub[Falcon]
  3.98%  [unknown] ([kernel.kallsyms])
  0.26%  [unknown] (liborca.so.0.0.0.0)
  0.14%  [unknown] (libjvm.so)
  0.05%  [unknown] (libc-2.31.so)
  0.01%  PMEM::account_enabled (libaztall.so)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  az_pmem_get_account_usage_tall; az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  memcpy (libc-2.31.so)
  0.01%  thread_stack_region_start (libazsys3.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.00%  syscall (libc-2.31.so)
  0.00%  VMEM_SpaceManager::uses_cache_for_account (libaztall.so)
  0.00%  clock_gettime (libc-2.31.so)
  0.00%  VMEM::get_account_usage (libaztall.so)
  0.00%  malloc (libc-2.31.so)
  0.00%  MutexLocker::~MutexLocker (libaztall.so)
  0.00%  az_zmd_api_version (libazsys3.so)
  0.04%  <...other 20 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.47%  <generated code>
  3.98%  <native code in ([kernel.kallsyms])>
  0.26%  <native code in (liborca.so.0.0.0.0)>
  0.14%  <native code in (libjvm.so)>
  0.07%  <native code in (libc-2.31.so)>
  0.04%  <native code in (libaztall.so)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.00%  <native code in (perf-156558.map)>
  0.00%  <native code in (ld-2.31.so)>
....................................................................................................
100.00%  <totals>



# Run complete. Total time: 00:01:52

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

Benchmark                                      Mode  Cnt  Score   Error  Units
TypeCheckBenchmark.instanceof_type_check       avgt    5  6.200 ± 0.063  ns/op
TypeCheckBenchmark.instanceof_type_check:·asm  avgt         NaN            ---
