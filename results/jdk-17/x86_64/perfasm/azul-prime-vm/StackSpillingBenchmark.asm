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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StackSpillingBenchmark.load_store_no_spill

# Run progress: 0.00% complete, ETA 00:05:00
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.241 ns/op
# Warmup Iteration   2: 6.209 ns/op
# Warmup Iteration   3: 6.578 ns/op
# Warmup Iteration   4: 6.574 ns/op
# Warmup Iteration   5: 6.575 ns/op
Iteration   1: 6.574 ns/op
Iteration   2: 6.576 ns/op
Iteration   3: 6.577 ns/op
Iteration   4: 6.576 ns/op
Iteration   5: 6.575 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StackSpillingBenchmark.load_store_no_spill":
  6.576 ±(99.9%) 0.004 ns/op [Average]
  (min, avg, max) = (6.574, 6.576, 6.577), stdev = 0.001
  CI (99.9%): [6.572, 6.580] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StackSpillingBenchmark.load_store_no_spill:·asm":
PrintAssembly processed: 133658 total address lines.
Perf output processed (skipped 56.426 seconds):
 Column 1: cycles (51434 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f7e8:0x3002fb02] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StackSpillingBenchmark::load_store_no_spill[Falcon]

         0x3002f7e8: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x3002f7ec: e9 0f ea fd ff                    jmp    -136689                        ; 0x3000e200 = StubRoutines::deoptimize
         0x3002f7f1: cc                                int3                                  
         Call tree size: 1
         0: caller_index: -1 bci: -1 callee: static void com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest.load_store_no_spill_avgt_jmhStub(jobject, jobject, jobject, jobject, jobject, jobject, jobject, jint, jobject)
         Encoded locations size: 4
         offset: 0 length: 328 scope: 0 bci: 0
         <nmethodAdapter compile_id='240' compile_kind='osr' level='2' size='40' address='0x00007f342812c8b0' dependencies_offset='32' stamp='91727.497'/>
           # {method}{0x200026556f8} load_store_no_spill[Falcon] ()V in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/StackSpillingBenchmark
         Decoding CodeBlob 0x3002fa00
  9.97%  0x3002faa0: eb f9                             pushq    %rax                         
  7.67%  0x3002faa2: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 12.24%  0x3002faab: 75 3e                             jne    62                             ; 0x3002faeb
  4.03%  0x3002faad: 8b 87 d0 00 00 00                 movl    208(%rdi), %eax               
  1.08%  0x3002fab3: 89 87 d4 00 00 00                 movl    %eax, 212(%rdi)               
  0.52%  0x3002fab9: 8b 47 68                          movl    104(%rdi), %eax               
         0x3002fabc: c5 fc 10 47 08                    vmovups    8(%rdi), %ymm0             
 12.14%  0x3002fac1: c5 fc 10 4f 28                    vmovups    40(%rdi), %ymm1            
  0.46%  0x3002fac6: c5 fc 10 57 48                    vmovups    72(%rdi), %ymm2            
  5.92%  0x3002facb: c5 fc 11 47 6c                    vmovups    %ymm0, 108(%rdi)           
  9.53%  0x3002fad0: c5 fc 11 8f 8c 00 00 00           vmovups    %ymm1, 140(%rdi)           
         0x3002fad8: c5 fc 11 97 ac 00 00 00           vmovups    %ymm2, 172(%rdi)           
  5.99%  0x3002fae0: 89 87 cc 00 00 00                 movl    %eax, 204(%rdi)               
         0x3002fae6: 58                                popq    %rax                          
  0.97%  0x3002fae7: c5 f8 77                          vzeroupper                            
  5.51%  0x3002faea: c3                                retq                                  
         0x3002faeb: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002faf5: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002faf7: eb b4                             jmp    -76                            ; 0x3002faad
         0x3002faf9: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x3002fafd: e9 fe e6 fd ff                    jmp    -137474                        ; 0x3000e200 = StubRoutines::deoptimize
         0x3002fb02: cc                                int3                                  
         Call tree size: 1
         0: caller_index: -1 bci: -1 callee: virtual void com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StackSpillingBenchmark.load_store_no_spill()
         Encoded locations size: 3
         offset: 0 length: 89 scope: 0 bci: 0
....................................................................................................
 76.04%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x300316c6:0x3003173c] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub[Falcon]

         0x300316c6: 49 bc 40 e4 bb 51 35 7f 00 00     movabsq    $139866981262400, %r12     ; 0x7f3551bbe440 = os::javaTimeNanos_slow()
         0x300316d0: 41 ff d4                          callq    *%r12                        ; 0x7f3551bbe440 = os::javaTimeNanos_slow()
         0x300316d3: 48 89 43 20                       movq    %rax, 32(%rbx)                
         0x300316d7: 66 0f 1f 84 00 00 00 00 00        nopw    (%rax,%rax)                   
         0x300316e0: 4d 85 f6                          testq    %r14, %r14                   
         0x300316e3: 0f 84 7d 00 00 00                 je    125                             ; 0x30031766
         0x300316e9: 4d 85 ff                          testq    %r15, %r15                   
         0x300316ec: 0f 84 86 00 00 00                 je    134                             ; 0x30031778
         0x300316f2: 45 31 ed                          xorl    %r13d, %r13d                  
         0x300316f5: 66 66 2e 0f 1f 84 00 00 00 00     nopw    %cs:(%rax,%rax)               
  5.65%  0x30031700: 4c 89 f7                          movq    %r14, %rdi                    
         0x30031703: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
  0.00%  0x30031708: e8 f3 c1 fd ff                    callq    -146957                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x3003170d: 49 ff c5                          incq    %r13                          
  5.25%  0x30031710: 41 0f b6 87 94 00 00 00           movzbl    148(%r15), %eax             
  9.02%  0x30031718: 84 c0                             testb    %al, %al                     
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
 19.92%  <total for region 2>

....[Hottest Regions]...............................................................................
 76.04%  [0x3002f7e8:0x3002fb02] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StackSpillingBenchmark::load_store_no_spill[Falcon]
 19.92%  [0x300316c6:0x3003173c] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub[Falcon]
  0.28%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.25%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.19%  [0xffffffffa9eef381:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9eef5b2:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eb93bb:0xffffffffa9eb9473] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb8dd5:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9f0711f:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffaa28d0d1:0xffffffffaa28d127] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f695f5:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ee587e:0xffffffffa9ee587e] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f07060:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0800:0xffffffffa9ed0889] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9f686c0:0xffffffffa9f68758] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0740:0xffffffffa9ed0797] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eff400:0xffffffffa9eff421] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eef30c:0xffffffffa9eef353] in [unknown] ([kernel.kallsyms])
  1.88%  <...other 277 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 76.04%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StackSpillingBenchmark::load_store_no_spill[Falcon]
 19.92%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub[Falcon]
  3.78%  [unknown] ([kernel.kallsyms])
  0.15%  [unknown] (libjvm.so)
  0.02%  [unknown] (libc-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  PMEM::account_enabled (libaztall.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  _dl_addr (libc-2.31.so)
  0.00%  _IO_default_xsputn (libc-2.31.so)
  0.00%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  az_zmd_api_version_tall (libaztall.so)
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  PMEM::account_enabled@plt (libaztall.so)
  0.00%  syscall (libc-2.31.so)
  0.00%  [unknown] (perf-153704.map)
  0.00%  [unknown] (libz.so.1.2.11)
  0.01%  <...other 5 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.96%  <generated code>
  3.78%  <native code in ([kernel.kallsyms])>
  0.15%  <native code in (libjvm.so)>
  0.03%  <native code in (libaztall.so)>
  0.03%  <native code in (libc-2.31.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (libazsys3.so)>
  0.00%  <native code in (ld-2.31.so)>
  0.00%  <native code in (perf-153704.map)>
  0.00%  <native code in (libz.so.1.2.11)>
....................................................................................................
100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.7, Zing 64-Bit Tiered VM, 17.0.7-zing_23.05.0.0-b2-product-linux-X86_64
# *** WARNING: JMH support for this VM is experimental. Be extra careful with the produced data.
# VM invoker: /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Djmh.perfasm.libdir=/home/gogu/git/jvm-performance-benchmarks -XX:-UseFPUForSpilling
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StackSpillingBenchmark.load_store_spill_no_fpu

# Run progress: 33.33% complete, ETA 00:03:44
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.606 ns/op
# Warmup Iteration   2: 6.194 ns/op
# Warmup Iteration   3: 6.579 ns/op
# Warmup Iteration   4: 6.575 ns/op
# Warmup Iteration   5: 6.574 ns/op
Iteration   1: 6.575 ns/op
Iteration   2: 6.574 ns/op
Iteration   3: 6.574 ns/op
Iteration   4: 6.574 ns/op
Iteration   5: 6.574 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StackSpillingBenchmark.load_store_spill_no_fpu":
  6.574 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (6.574, 6.574, 6.575), stdev = 0.001
  CI (99.9%): [6.573, 6.575] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StackSpillingBenchmark.load_store_spill_no_fpu:·asm":
PrintAssembly processed: 132938 total address lines.
Perf output processed (skipped 56.370 seconds):
 Column 1: cycles (51830 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f6a0:0x3002f702] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StackSpillingBenchmark::load_store_spill_no_fpu[Falcon]

         5.616:  233         3 inlining into java.lang.Class::searchFields ([Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/reflect/Field; (tid 153868) (kid 45 pkid/prev 21/NA) (mid 46235 pmid 304) (bytes 43) (generation 0) (lvl O2) (score 0) (score_updated 0ms; orig 0; promoted 0) (rank 0, time-between-promotions 1302ms) (wait 0ms)
         5.692:              @ 22   java.lang.reflect.Field::getName (5 bytes)   cost=-30, threshold=262, frequency=24.062015
         5.692:              @ 26   java.lang.String::equals (56 bytes)   cost=always, frequency=24.062015, reason=always inline attribute [intrinsic]
         5.695:  241    %    3 not enqueued because this isn&apos;t a replacement compile com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub (Lorg/openjdk/jmh/runner/InfraControl;Lorg/openjdk/jmh/results/RawResults;Lorg/openjdk/jmh/infra/BenchmarkParams;Lorg/openjdk/jmh/infra/IterationParams;Lorg/openjdk/jmh/infra/ThreadParams;Lorg/openjdk/jmh/infra/Blackhole;Lorg/openjdk/jmh/infra/Control;ILcom/ionutbalosin/jvm/performance/benchmarks/micro/compiler/jmh_generated/StackSpillingBenchmark_jmhType;)V @ 13 (tid 153870) (kid 1412 pkid/prev 1388/NA) (mid 1445894 pmid 18277) (bytes 52) (generation 0) (lvl NA)
         <nmethodAdapter compile_id='241' compile_kind='osr' level='2' size='40' address='0x00007faa70403b50' dependencies_offset='32' stamp='91839.922'/>
         5.695:  233         3 installed at 0x3002f0a0 with size 0x3a5. java.lang.Class::searchFields ([Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/reflect/Field; (tid 153868) (kid 45 pkid/prev 21/NA) (mid 46235 pmid 304) (bytes 43) (generation 0) (lvl O2) (score 0) (score_updated 60ms; orig 0; promoted 1) (rank 0, time-between-promotions 18ms) (wait 0ms) (compile 74ms/79ms)
         5.654:  241    %    3 inlining into com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub (Lorg/openjdk/jmh/runner/InfraControl;Lorg/openjdk/jmh/results/RawResults;Lorg/openjdk/jmh/infra/BenchmarkParams;Lorg/openjdk/jmh/infra/IterationParams;Lorg/openjdk/jmh/infra/ThreadParams;Lorg/openjdk/jmh/infra/Blackhole;Lorg/openjdk/jmh/infra/Control;ILcom/ionutbalosin/jvm/performance/benchmarks/micro/compiler/jmh_generated/StackSpillingBenchmark_jmhType;)V @ 13 (tid 153869) (kid 1412 pkid/prev 1388/NA) (mid 1445894 pmid 18277) (bytes 52) (generation 0) (lvl O0) (score -1) (score_updated 0ms; orig 0; promoted 3) (rank 0, time-between-promotions 0ms) (wait 3ms)
         5.692:            - @ 15   com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StackSpillingBenchmark::load_store_spill_no_fpu (5 bytes)   2 call sites, cost=never, reason=noinline [method excluded by CompileCommand]
           # {method}{0x20002655e58} load_store_spill_no_fpu[Falcon] ()V in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/StackSpillingBenchmark
         Decoding CodeBlob 0x3002f600
  9.92%  0x3002f6a0: eb f9                             pushq    %rax                         
  7.94%  0x3002f6a2: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 13.41%  0x3002f6ab: 75 3e                             jne    62                             ; 0x3002f6eb
  5.60%  0x3002f6ad: 8b 47 68                          movl    104(%rdi), %eax               
         0x3002f6b0: c5 fc 10 47 08                    vmovups    8(%rdi), %ymm0             
 20.03%  0x3002f6b5: c5 fc 10 4f 28                    vmovups    40(%rdi), %ymm1            
         0x3002f6ba: c5 fc 10 57 48                    vmovups    72(%rdi), %ymm2            
  3.88%  0x3002f6bf: 8b 8f d0 00 00 00                 movl    208(%rdi), %ecx               
         0x3002f6c5: 89 8f d4 00 00 00                 movl    %ecx, 212(%rdi)               
  2.80%  0x3002f6cb: c5 fc 11 47 6c                    vmovups    %ymm0, 108(%rdi)           
 10.36%  0x3002f6d0: c5 fc 11 8f 8c 00 00 00           vmovups    %ymm1, 140(%rdi)           
  0.67%  0x3002f6d8: c5 fc 11 97 ac 00 00 00           vmovups    %ymm2, 172(%rdi)           
  3.28%  0x3002f6e0: 89 87 cc 00 00 00                 movl    %eax, 204(%rdi)               
         0x3002f6e6: 58                                popq    %rax                          
  2.79%  0x3002f6e7: c5 f8 77                          vzeroupper                            
  5.56%  0x3002f6ea: c3                                retq                                  
         0x3002f6eb: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f6f5: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f6f7: eb b4                             jmp    -76                            ; 0x3002f6ad
         0x3002f6f9: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x3002f6fd: e9 fe ea fd ff                    jmp    -136450                        ; 0x3000e200 = StubRoutines::deoptimize
         0x3002f702: cc                                int3                                  
         Call tree size: 2
         0: caller_index: -1 bci: 0 callee: virtual void com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StackSpillingBenchmark.load_store_spill_no_fpu()
         1: caller_index: 0 bci: -1 callee: virtual void com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StackSpillingBenchmark.load_store_spill()
         Encoded locations size: 9
....................................................................................................
 86.24%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x300316c6:0x3003173a] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub[Falcon]

         0x300316c6: 49 bc 40 a4 d8 97 ab 7f 00 00     movabsq    $140374963692608, %r12     ; 0x7fab97d8a440 = os::javaTimeNanos_slow()
         0x300316d0: 41 ff d4                          callq    *%r12                        ; 0x7fab97d8a440 = os::javaTimeNanos_slow()
         0x300316d3: 48 89 43 20                       movq    %rax, 32(%rbx)                
         0x300316d7: 66 0f 1f 84 00 00 00 00 00        nopw    (%rax,%rax)                   
         0x300316e0: 4d 85 f6                          testq    %r14, %r14                   
         0x300316e3: 0f 84 7d 00 00 00                 je    125                             ; 0x30031766
         0x300316e9: 4d 85 ff                          testq    %r15, %r15                   
         0x300316ec: 0f 84 86 00 00 00                 je    134                             ; 0x30031778
         0x300316f2: 45 31 ed                          xorl    %r13d, %r13d                  
         0x300316f5: 66 66 2e 0f 1f 84 00 00 00 00     nopw    %cs:(%rax,%rax)               
  5.57%  0x30031700: 4c 89 f7                          movq    %r14, %rdi                    
         0x30031703: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30031708: e8 f3 c1 fd ff                    callq    -146957                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  1.25%  0x3003170d: 49 ff c5                          incq    %r13                          
  2.16%  0x30031710: 41 0f b6 87 94 00 00 00           movzbl    148(%r15), %eax             
         0x30031718: 84 c0                             testb    %al, %al                     
         0x3003171a: 74 e4                             je    -28                             ; 0x30031700
         0x3003171c: 41 ff d4                          callq    *%r12                        
         0x3003171f: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x30031723: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x3003172b: c4 c1 fb 2a c5                    vcvtsi2sd    %r13, %xmm0, %xmm0       
         0x30031730: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x30031735: 48 83 c4 30                       addq    $48, %rsp                     
         0x30031739: 5b                                popq    %rbx                          
         0x3003173a: 41 5c                             popq    %r12                          
....................................................................................................
  8.98%  <total for region 2>

....[Hottest Regions]...............................................................................
 86.24%  [0x3002f6a0:0x3002f702] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StackSpillingBenchmark::load_store_spill_no_fpu[Falcon]
  8.98%  [0x300316c6:0x3003173a] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub[Falcon]
  0.94%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.24%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.23%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f695f0:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f0711c:0xffffffffa9f07167] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f07065:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ee5876:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0806:0xffffffffa9ed086e] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28d0d1:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0740:0xffffffffa9ed07b2] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eee5d0:0xffffffffa9eee62f] in [unknown] ([kernel.kallsyms])
  1.92%  <...other 294 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 86.24%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StackSpillingBenchmark::load_store_spill_no_fpu[Falcon]
  8.98%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub[Falcon]
  4.50%  [unknown] ([kernel.kallsyms])
  0.16%  [unknown] (libjvm.so)
  0.03%  [unknown] (libc-2.31.so)
  0.02%  [unknown] (liborca.so.0.0.0.0)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.01%  [unknown] ([vdso])
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  thread_stack_region_start (libazsys3.so)
  0.00%  __pthread_mutex_unlock (libpthread-2.31.so)
  0.00%  PMEM::account_enabled (libaztall.so)
  0.00%  clock_gettime (libc-2.31.so)
  0.00%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  <stub: astore  58 astore>
  0.00%  is_thread_initialized (libazsys3.so)
  0.00%  az_get_elastic (libazsys3.so)
  0.00%  <stub: aconst_null  1 aconst_null>
  0.00%  syscall (libc-2.31.so)
  0.00%  PMEM::accounts (libaztall.so)
  0.02%  <...other 9 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.23%  <generated code>
  4.50%  <native code in ([kernel.kallsyms])>
  0.16%  <native code in (libjvm.so)>
  0.04%  <native code in (libc-2.31.so)>
  0.03%  <native code in (libaztall.so)>
  0.02%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in ([vdso])>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StackSpillingBenchmark.load_store_spill_use_fpu

# Run progress: 66.67% complete, ETA 00:01:51
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.234 ns/op
# Warmup Iteration   2: 6.199 ns/op
# Warmup Iteration   3: 6.578 ns/op
# Warmup Iteration   4: 6.574 ns/op
# Warmup Iteration   5: 6.574 ns/op
Iteration   1: 6.574 ns/op
Iteration   2: 6.575 ns/op
Iteration   3: 6.575 ns/op
Iteration   4: 6.574 ns/op
Iteration   5: 6.574 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StackSpillingBenchmark.load_store_spill_use_fpu":
  6.574 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (6.574, 6.574, 6.575), stdev = 0.001
  CI (99.9%): [6.574, 6.575] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StackSpillingBenchmark.load_store_spill_use_fpu:·asm":
PrintAssembly processed: 133626 total address lines.
Perf output processed (skipped 58.574 seconds):
 Column 1: cycles (51607 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f6a0:0x3002f702] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StackSpillingBenchmark::load_store_spill_use_fpu[Falcon]

  3.91%  0x3002f6e0: 89 87 cc 00 00 00                 movl    %eax, 204(%rdi)               
         0x3002f6e6: 58                                popq    %rax                          
  2.91%  0x3002f6e7: c5 f8 77                          vzeroupper                            
  5.67%  0x3002f6ea: c3                                retq                                  
         0x3002f6eb: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f6f5: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f6f7: eb b4                             jmp    -76                            ; 0x3002f6ad
         -----------
           # {method}{0x20002655ab8} load_store_spill_use_fpu[Falcon] ()V in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/StackSpillingBenchmark
         Decoding CodeBlob 0x3002f600
 11.00%  0x3002f6a0: eb f9                             pushq    %rax                         
  7.33%  0x3002f6a2: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 14.04%  0x3002f6ab: 75 3e                             jne    62                             ; 0x3002f6eb
  5.63%  0x3002f6ad: 8b 47 68                          movl    104(%rdi), %eax               
         0x3002f6b0: c5 fc 10 47 08                    vmovups    8(%rdi), %ymm0             
 19.83%  0x3002f6b5: c5 fc 10 4f 28                    vmovups    40(%rdi), %ymm1            
         0x3002f6ba: c5 fc 10 57 48                    vmovups    72(%rdi), %ymm2            
  4.06%  0x3002f6bf: 8b 8f d0 00 00 00                 movl    208(%rdi), %ecx               
         0x3002f6c5: 89 8f d4 00 00 00                 movl    %ecx, 212(%rdi)               
  2.71%  0x3002f6cb: c5 fc 11 47 6c                    vmovups    %ymm0, 108(%rdi)           
  9.99%  0x3002f6d0: c5 fc 11 8f 8c 00 00 00           vmovups    %ymm1, 140(%rdi)           
  0.23%  0x3002f6d8: c5 fc 11 97 ac 00 00 00           vmovups    %ymm2, 172(%rdi)           
  3.91%  0x3002f6e0: 89 87 cc 00 00 00                 movl    %eax, 204(%rdi)               
         0x3002f6e6: 58                                popq    %rax                          
  2.91%  0x3002f6e7: c5 f8 77                          vzeroupper                            
  5.67%  0x3002f6ea: c3                                retq                                  
         0x3002f6eb: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f6f5: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f6f7: eb b4                             jmp    -76                            ; 0x3002f6ad
         0x3002f6f9: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x3002f6fd: e9 fe ea fd ff                    jmp    -136450                        ; 0x3000e200 = StubRoutines::deoptimize
         0x3002f702: cc                                int3                                  
         Call tree size: 2
         0: caller_index: -1 bci: 0 callee: virtual void com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StackSpillingBenchmark.load_store_spill_use_fpu()
         1: caller_index: 0 bci: -1 callee: virtual void com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StackSpillingBenchmark.load_store_spill()
         Encoded locations size: 9
....................................................................................................
 87.31%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x300314c6:0x3003153a] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub[Falcon]

         0x300314c6: 49 bc 40 f4 fd 0e 24 7f 00 00     movabsq    $139792847074368, %r12     ; 0x7f240efdf440 = os::javaTimeNanos_slow()
         0x300314d0: 41 ff d4                          callq    *%r12                        ; 0x7f240efdf440 = os::javaTimeNanos_slow()
         0x300314d3: 48 89 43 20                       movq    %rax, 32(%rbx)                
         0x300314d7: 66 0f 1f 84 00 00 00 00 00        nopw    (%rax,%rax)                   
         0x300314e0: 4d 85 f6                          testq    %r14, %r14                   
         0x300314e3: 0f 84 7d 00 00 00                 je    125                             ; 0x30031566
         0x300314e9: 4d 85 ff                          testq    %r15, %r15                   
         0x300314ec: 0f 84 86 00 00 00                 je    134                             ; 0x30031578
         0x300314f2: 45 31 ed                          xorl    %r13d, %r13d                  
         0x300314f5: 66 66 2e 0f 1f 84 00 00 00 00     nopw    %cs:(%rax,%rax)               
  5.39%  0x30031500: 4c 89 f7                          movq    %r14, %rdi                    
         0x30031503: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
  0.00%  0x30031508: e8 f3 c3 fd ff                    callq    -146445                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  0.41%  0x3003150d: 49 ff c5                          incq    %r13                          
  2.53%  0x30031510: 41 0f b6 87 94 00 00 00           movzbl    148(%r15), %eax             
         0x30031518: 84 c0                             testb    %al, %al                     
         0x3003151a: 74 e4                             je    -28                             ; 0x30031500
         0x3003151c: 41 ff d4                          callq    *%r12                        
         0x3003151f: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x30031523: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x3003152b: c4 c1 fb 2a c5                    vcvtsi2sd    %r13, %xmm0, %xmm0       
         0x30031530: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x30031535: 48 83 c4 30                       addq    $48, %rsp                     
         0x30031539: 5b                                popq    %rbx                          
         0x3003153a: 41 5c                             popq    %r12                          
....................................................................................................
  8.34%  <total for region 2>

....[Hottest Regions]...............................................................................
 87.31%  [0x3002f6a0:0x3002f702] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StackSpillingBenchmark::load_store_spill_use_fpu[Falcon]
  8.34%  [0x300314c6:0x3003153a] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub[Falcon]
  0.51%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.28%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eef3b4:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb93bb:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eb8dcf:0xffffffffa9eb8de6] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9f695f0:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9f0711c:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9ed0800:0xffffffffa9ed0860] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffaa28ead0:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ee587e:0xffffffffa9ee588c] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0740:0xffffffffa9ed0797] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eee5d0:0xffffffffa9eee62e] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9f07065:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eef30c:0xffffffffa9eef390] in [unknown] ([kernel.kallsyms])
  2.01%  <...other 295 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 87.31%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StackSpillingBenchmark::load_store_spill_use_fpu[Falcon]
  8.34%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub[Falcon]
  4.10%  [unknown] ([kernel.kallsyms])
  0.16%  [unknown] (libjvm.so)
  0.02%  [unknown] (liborca.so.0.0.0.0)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  [unknown] (libstdc++.so.6)
  0.00%  clock_gettime (libc-2.31.so)
  0.00%  VMEM::get_account_usage (libaztall.so)
  0.00%  java.util.concurrent.ConcurrentHashMap::spread[C1]
  0.00%  <stub: if_icmple  164 if_icmple>
  0.00%  <stub: instanceof  193 instanceof>
  0.00%  <stub: fast_aload_0  220 fast_aload_0>
  0.00%  __nanosleep (libc-2.31.so)
  0.00%  <stub: method entry point (kind = zerolocals)>
  0.00%  clock_nanosleep (libc-2.31.so)
  0.00%  usleep (libc-2.31.so)
  0.01%  <...other 6 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.66%  <generated code>
  4.10%  <native code in ([kernel.kallsyms])>
  0.16%  <native code in (libjvm.so)>
  0.02%  <native code in (libc-2.31.so)>
  0.02%  <native code in (liborca.so.0.0.0.0)>
  0.02%  <native code in (libaztall.so)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.00%  <native code in (libstdc++.so.6)>
  0.00%  <native code in (libazsys3.so)>
  0.00%  <native code in ([vdso])>
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

Benchmark                                             Mode  Cnt  Score   Error  Units
StackSpillingBenchmark.load_store_no_spill            avgt    5  6.576 ± 0.004  ns/op
StackSpillingBenchmark.load_store_no_spill:·asm       avgt         NaN            ---
StackSpillingBenchmark.load_store_spill_no_fpu        avgt    5  6.574 ± 0.001  ns/op
StackSpillingBenchmark.load_store_spill_no_fpu:·asm   avgt         NaN            ---
StackSpillingBenchmark.load_store_spill_use_fpu       avgt    5  6.574 ± 0.001  ns/op
StackSpillingBenchmark.load_store_spill_use_fpu:·asm  avgt         NaN            ---
