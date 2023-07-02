# WARNING: JMH lock is ignored by user request, make sure no other JMH instances are running
# JMH version: 1.36
# VM version: JDK 17.0.7, Zing 64-Bit Tiered VM, 17.0.7-zing_23.05.0.0-b2-product-linux-X86_64
# *** WARNING: JMH support for this VM is experimental. Be extra careful with the produced data.
# VM invoker: /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:+UseBiasedLocking -Djmh.perfasm.libdir=/home/gogu/git/jvm-performance-benchmarks
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.baseline

# Run progress: 0.00% complete, ETA 00:10:00
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 15.898 ns/op
# Warmup Iteration   2: 15.858 ns/op
# Warmup Iteration   3: 15.875 ns/op
# Warmup Iteration   4: 15.860 ns/op
# Warmup Iteration   5: 15.857 ns/op
Iteration   1: 15.857 ns/op
Iteration   2: 15.858 ns/op
Iteration   3: 15.858 ns/op
Iteration   4: 15.857 ns/op
Iteration   5: 15.857 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.baseline":
  15.857 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (15.857, 15.857, 15.858), stdev = 0.001
  CI (99.9%): [15.855, 15.860] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.baseline:·asm":
PrintAssembly processed: 133899 total address lines.
Perf output processed (skipped 56.485 seconds):
 Column 1: cycles (51544 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f6a0:0x3002f722] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline[Falcon]

         offset: 502 length: 9 scope: 0 bci: 0
         offset: 511 length: 280 scope: 1 bci: 0
         offset: 791 length: 30 scope: 0 bci: 0
         offset: 821 length: 30 scope: 2 bci: 0
         offset: 851 length: 18 scope: 1 bci: 0
         offset: 869 length: 42 scope: 0 bci: 0
         <nmethodAdapter compile_id='230' level='2' size='40' address='0x00007fd30c1a0720' dependencies_offset='32' stamp='82632.795'/>
         5.797:  242         3 started   com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub (Lorg/openjdk/jmh/runner/InfraControl;Lorg/openjdk/jmh/results/RawResults;Lorg/openjdk/jmh/infra/BenchmarkParams;Lorg/openjdk/jmh/infra/IterationParams;Lorg/openjdk/jmh/infra/ThreadParams;Lorg/openjdk/jmh/infra/Blackhole;Lorg/openjdk/jmh/infra/Control;ILcom/ionutbalosin/jvm/performance/benchmarks/micro/compiler/jmh_generated/LockCoarseningBenchmark_jmhType;)V (tid 140751) (kid 1412 pkid/prev 1388/NA) (mid 1445894 pmid 18277) (bytes 57) (generation 0) (lvl O2) (score -13) (score_updated 0ms; orig 0; promoted 15) (rank 0, time-between-promotions 0ms) (wait 18ms)
           # {method}{0x20002655ef0} baseline[Falcon] ()I in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/LockCoarseningBenchmark
         Decoding CodeBlob 0x3002f600
  0.59%  0x3002f6a0: eb f9                             pushq    %r15                         
         0x3002f6a2: 41 56                             pushq    %r14                         
  1.68%  0x3002f6a4: 53                                pushq    %rbx                         
  0.55%  0x3002f6a5: 48 89 fb                          movq    %rdi, %rbx                    
         0x3002f6a8: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
         0x3002f6b1: 0f 85 87 00 00 00                 jne    135                            ; 0x3002f73e
  1.84%  0x3002f6b7: 44 8b 73 0c                       movl    12(%rbx), %r14d               
  0.56%  0x3002f6bb: 45 01 f6                          addl    %r14d, %r14d                  
         0x3002f6be: 65 8b 0c 25 1c 02 00 00           movl    %gs:540, %ecx                 ; thread:[540] = _reversible_tid
         0x3002f6c6: 8b 03                             movl    (%rbx), %eax                  
  1.70%  0x3002f6c8: a9 00 00 00 70                    testl    $1879048192, %eax            
         0x3002f6cd: 75 36                             jne    54                             ; 0x3002f705
  0.57%  0x3002f6cf: 81 c9 00 00 00 10                 orl    $268435456, %ecx               
         0x3002f6d5: f0                                lock                                  
         0x3002f6d6: 0f b1 0b                          cmpxchgl    %ecx, (%rbx)              
 44.55%  0x3002f6d9: 74 0f                             je    15                              ; 0x3002f6ea
         0x3002f6db: 48 b8 80 46 01 30 00 00 00 00     movabsq    $805389952, %rax           ; 0x30014680 = StubRoutines::c2_lock
         0x3002f6e5: 48 89 df                          movq    %rbx, %rdi                    
         0x3002f6e8: ff d0                             callq    *%rax                        ; 0x30014680 = StubRoutines::c2_lock
         0x3002f6ea: 44 8b 7b 10                       movl    16(%rbx), %r15d               
  2.34%  0x3002f6ee: 8b 03                             movl    (%rbx), %eax                  
 27.78%  0x3002f6f0: a8 01                             testb    $1, %al                      
         0x3002f6f2: 74 39                             je    57                              ; 0x3002f72d
  2.34%  0x3002f6f4: 05 00 00 00 70                    addl    $1879048192, %eax             
         0x3002f6f9: 89 03                             movl    %eax, (%rbx)                  
  4.78%  0x3002f6fb: 43 8d 04 fe                       leal    (%r14,%r15,8), %eax           
         0x3002f6ff: 5b                                popq    %rbx                          
         0x3002f700: 41 5e                             popq    %r14                          
         0x3002f702: 41 5f                             popq    %r15                          
  2.26%  0x3002f704: c3                                retq                                  
         0x3002f705: a8 01                             testb    $1, %al                      
         0x3002f707: 74 d2                             je    -46                             ; 0x3002f6db
         0x3002f709: 89 c2                             movl    %eax, %edx                    
         0x3002f70b: 81 e2 ff ff ff 0f                 andl    $268435455, %edx              
         0x3002f711: 39 ca                             cmpl    %ecx, %edx                    
         0x3002f713: 75 c6                             jne    -58                            ; 0x3002f6db
         0x3002f715: 89 c1                             movl    %eax, %ecx                    
         0x3002f717: 2e 2e 2e 81 c9 00 00 00 70        orl    $1879048192, %ecx              
         0x3002f720: 39 c1                             cmpl    %eax, %ecx                    
         0x3002f722: 74 b7                             je    -73                             ; 0x3002f6db
....................................................................................................
 91.52%  <total for region 1>

....[Hottest Regions]...............................................................................
 91.52%  [0x3002f6a0:0x3002f722] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline[Falcon]
  4.01%  [0x300318e0:0x30031944] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub[Falcon]
  0.38%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.23%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.21%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9f0711c:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eb93b5:0xffffffffa9eb9441] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ed0800:0xffffffffa9ed0889] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ee5876:0xffffffffa9ee58a7] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eff400:0xffffffffa9eff43f] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f07065:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28d0d0:0xffffffffaa28d129] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28eb60:0xffffffffaa28eb94] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9f69690:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9eaca23:0xffffffffa9eaca4f] in [unknown] ([kernel.kallsyms])
  2.23%  <...other 337 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 91.52%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline[Falcon]
  4.18%  [unknown] ([kernel.kallsyms])
  4.01%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub[Falcon]
  0.18%  [unknown] (libjvm.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  PMEM::account_enabled (libaztall.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.00%  is_thread_initialized (libazsys3.so)
  0.00%  __pthread_mutex_unlock (libpthread-2.31.so)
  0.00%  syscall (libc-2.31.so)
  0.00%  az_get_elastic_tall (libaztall.so)
  0.00%  __errno_location (libpthread-2.31.so)
  0.00%  clock_gettime (libc-2.31.so)
  0.00%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  az_pmem_get_account_usage (libazsys3.so)
  0.00%  <stub: iushr  124 iushr>
  0.00%  <stub: aload  25 aload>
  0.00%  _dl_addr (libc-2.31.so)
  0.00%  memcpy (libc-2.31.so)
  0.03%  <...other 13 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.54%  <generated code>
  4.18%  <native code in ([kernel.kallsyms])>
  0.18%  <native code in (libjvm.so)>
  0.03%  <native code in (libaztall.so)>
  0.03%  <native code in (libc-2.31.so)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libpthread-2.31.so)>
....................................................................................................
100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.7, Zing 64-Bit Tiered VM, 17.0.7-zing_23.05.0.0-b2-product-linux-X86_64
# *** WARNING: JMH support for this VM is experimental. Be extra careful with the produced data.
# VM invoker: /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:+UseBiasedLocking -Djmh.perfasm.libdir=/home/gogu/git/jvm-performance-benchmarks
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.chain_method_calls

# Run progress: 16.67% complete, ETA 00:09:21
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 15.970 ns/op
# Warmup Iteration   2: 15.857 ns/op
# Warmup Iteration   3: 15.875 ns/op
# Warmup Iteration   4: 15.858 ns/op
# Warmup Iteration   5: 15.856 ns/op
Iteration   1: 15.857 ns/op
Iteration   2: 15.856 ns/op
Iteration   3: 15.856 ns/op
Iteration   4: 15.856 ns/op
Iteration   5: 15.856 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.chain_method_calls":
  15.856 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (15.856, 15.856, 15.857), stdev = 0.001
  CI (99.9%): [15.854, 15.858] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.chain_method_calls:·asm":
PrintAssembly processed: 135223 total address lines.
Perf output processed (skipped 56.613 seconds):
 Column 1: cycles (51470 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f6a0:0x3002f74a] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls[Falcon]

         0x3002f72d: 48 b8 40 4d 01 30 00 00 00 00     movabsq    $805391680, %rax           ; 0x30014d40 = StubRoutines::c2_unlock
         0x3002f737: 48 89 df                          movq    %rbx, %rdi                    
         0x3002f73a: ff d0                             callq    *%rax                        ; 0x30014d40 = StubRoutines::c2_unlock
         0x3002f73c: eb bd                             jmp    -67                            ; 0x3002f6fb
         0x3002f73e: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f748: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f74a: e9 68 ff ff ff                    jmp    -152                           ; 0x3002f6b7
         -----------
           # {method}{0x20002655840} chain_method_calls[Falcon] ()I in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/LockCoarseningBenchmark
         Decoding CodeBlob 0x3002f600
  0.57%  0x3002f6a0: eb f9                             pushq    %r15                         
         0x3002f6a2: 41 56                             pushq    %r14                         
  1.67%  0x3002f6a4: 53                                pushq    %rbx                         
  0.56%  0x3002f6a5: 48 89 fb                          movq    %rdi, %rbx                    
         0x3002f6a8: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
         0x3002f6b1: 0f 85 87 00 00 00                 jne    135                            ; 0x3002f73e
  1.72%  0x3002f6b7: 44 8b 73 0c                       movl    12(%rbx), %r14d               
  0.63%  0x3002f6bb: 45 01 f6                          addl    %r14d, %r14d                  
         0x3002f6be: 65 8b 0c 25 1c 02 00 00           movl    %gs:540, %ecx                 ; thread:[540] = _reversible_tid
         0x3002f6c6: 8b 03                             movl    (%rbx), %eax                  
  1.84%  0x3002f6c8: a9 00 00 00 70                    testl    $1879048192, %eax            
         0x3002f6cd: 75 36                             jne    54                             ; 0x3002f705
  0.61%  0x3002f6cf: 81 c9 00 00 00 10                 orl    $268435456, %ecx               
         0x3002f6d5: f0                                lock                                  
         0x3002f6d6: 0f b1 0b                          cmpxchgl    %ecx, (%rbx)              
 44.39%  0x3002f6d9: 74 0f                             je    15                              ; 0x3002f6ea
         0x3002f6db: 48 b8 80 46 01 30 00 00 00 00     movabsq    $805389952, %rax           ; 0x30014680 = StubRoutines::c2_lock
         0x3002f6e5: 48 89 df                          movq    %rbx, %rdi                    
         0x3002f6e8: ff d0                             callq    *%rax                        ; 0x30014680 = StubRoutines::c2_lock
  0.00%  0x3002f6ea: 44 8b 7b 10                       movl    16(%rbx), %r15d               
  2.39%  0x3002f6ee: 8b 03                             movl    (%rbx), %eax                  
 27.93%  0x3002f6f0: a8 01                             testb    $1, %al                      
         0x3002f6f2: 74 39                             je    57                              ; 0x3002f72d
  2.37%  0x3002f6f4: 05 00 00 00 70                    addl    $1879048192, %eax             
         0x3002f6f9: 89 03                             movl    %eax, (%rbx)                  
  4.65%  0x3002f6fb: 43 8d 04 fe                       leal    (%r14,%r15,8), %eax           
         0x3002f6ff: 5b                                popq    %rbx                          
         0x3002f700: 41 5e                             popq    %r14                          
         0x3002f702: 41 5f                             popq    %r15                          
  2.28%  0x3002f704: c3                                retq                                  
         0x3002f705: a8 01                             testb    $1, %al                      
         0x3002f707: 74 d2                             je    -46                             ; 0x3002f6db
         0x3002f709: 89 c2                             movl    %eax, %edx                    
         0x3002f70b: 81 e2 ff ff ff 0f                 andl    $268435455, %edx              
         0x3002f711: 39 ca                             cmpl    %ecx, %edx                    
         0x3002f713: 75 c6                             jne    -58                            ; 0x3002f6db
         0x3002f715: 89 c1                             movl    %eax, %ecx                    
         0x3002f717: 2e 2e 2e 81 c9 00 00 00 70        orl    $1879048192, %ecx              
         0x3002f720: 39 c1                             cmpl    %eax, %ecx                    
         0x3002f722: 74 b7                             je    -73                             ; 0x3002f6db
....................................................................................................
 91.63%  <total for region 1>

....[Hottest Regions]...............................................................................
 91.63%  [0x3002f6a0:0x3002f74a] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls[Falcon]
  4.03%  [0x300318e0:0x30031944] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub[Falcon]
  0.41%  [0xffffffffa9c94c86:0xffffffffa9c94c86] in [unknown] ([kernel.kallsyms])
  0.22%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.19%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.18%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9f0711f:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f686c0:0xffffffffa9f6875b] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eb93b5:0xffffffffa9eb9441] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9eff400:0xffffffffa9eff42d] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ed0800:0xffffffffa9ed0889] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ee587e:0xffffffffa9ee58a7] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f695fc:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0745:0xffffffffa9ed07b2] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9da97a0:0xffffffffa9da97fd] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9eee5d0:0xffffffffa9eee62f] in [unknown] ([kernel.kallsyms])
  2.04%  <...other 324 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 91.63%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls[Falcon]
  4.05%  [unknown] ([kernel.kallsyms])
  4.03%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub[Falcon]
  0.17%  [unknown] (libjvm.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  PMEM::account_enabled (libaztall.so)
  0.01%  az_pmem_get_account_usage_tall; az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  VMEM_SpaceManager::uses_cache_for_account (libaztall.so)
  0.00%  VMEM::get_account_usage (libaztall.so)
  0.00%  VMEM::get_account_usage@plt (libaztall.so)
  0.00%  PMEM_Account::fetch_stats (libaztall.so)
  0.00%  sprintf (libc-2.31.so)
  0.00%  az_zmd_api_version_tall (libaztall.so)
  0.00%  __pthread_mutex_unlock (libpthread-2.31.so)
  0.02%  <...other 9 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.66%  <generated code>
  4.05%  <native code in ([kernel.kallsyms])>
  0.17%  <native code in (libjvm.so)>
  0.06%  <native code in (libaztall.so)>
  0.03%  <native code in (libc-2.31.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.00%  <native code in (libpthread-2.31.so)>
  0.00%  <native code in (kvm.ko)>
  0.00%  <native code in (libazsys3.so)>
....................................................................................................
100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.7, Zing 64-Bit Tiered VM, 17.0.7-zing_23.05.0.0-b2-product-linux-X86_64
# *** WARNING: JMH support for this VM is experimental. Be extra careful with the produced data.
# VM invoker: /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:+UseBiasedLocking -Djmh.perfasm.libdir=/home/gogu/git/jvm-performance-benchmarks
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.conditional_chain_method_calls

# Run progress: 33.33% complete, ETA 00:07:27
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 16.143 ns/op
# Warmup Iteration   2: 15.863 ns/op
# Warmup Iteration   3: 15.883 ns/op
# Warmup Iteration   4: 15.862 ns/op
# Warmup Iteration   5: 15.862 ns/op
Iteration   1: 15.862 ns/op
Iteration   2: 15.864 ns/op
Iteration   3: 15.862 ns/op
Iteration   4: 15.864 ns/op
Iteration   5: 15.864 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.conditional_chain_method_calls":
  15.863 ±(99.9%) 0.003 ns/op [Average]
  (min, avg, max) = (15.862, 15.863, 15.864), stdev = 0.001
  CI (99.9%): [15.860, 15.866] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.conditional_chain_method_calls:·asm":
PrintAssembly processed: 135106 total address lines.
Perf output processed (skipped 57.124 seconds):
 Column 1: cycles (51470 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f4a0:0x3002fd97] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls[Falcon]

         0x3002fd74: 2e 2e 2e 41 0f b6 84 24 94 00     movzbl    %cs:148(%r12), %eax         
         0x3002fd80: 84 c0                             testb    %al, %al                     
         0x3002fd82: 74 dc                             je    -36                             ; 0x3002fd60
         0x3002fd84: 0f be c0                          movsbl    %al, %eax                   
         0x3002fd87: 48 b9 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rcx           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002fd91: 41 bb 07 00 00 00                 movl    $7, %r11d                     
         0x3002fd97: ff d1                             callq    *%rcx                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         -----------
           # {method}{0x200026559a8} conditional_chain_method_calls[Falcon] ()I in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/LockCoarseningBenchmark
         Decoding CodeBlob 0x3002f400
  0.10%  0x3002f4a0: eb f9                             pushq    %rbp                         
  2.35%  0x3002f4a2: 41 56                             pushq    %r14                         
         0x3002f4a4: 53                                pushq    %rbx                         
         0x3002f4a5: 48 89 fb                          movq    %rdi, %rbx                    
  0.06%  0x3002f4a8: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  2.29%  0x3002f4b1: 0f 85 0e 01 00 00                 jne    270                            ; 0x3002f5c5
         0x3002f4b7: 8b 6b 0c                          movl    12(%rbx), %ebp                
         0x3002f4ba: 2e 2e 2e 2e 01 ed                 addl    %ebp, %ebp                    
  0.07%  0x3002f4c0: 83 fd 21                          cmpl    $33, %ebp                     
         0x3002f4c3: 0f 8c 0d 01 00 00                 jl    269                             ; 0x3002f5d6
  2.27%  0x3002f4c9: 65 8b 0c 25 1c 02 00 00           movl    %gs:540, %ecx                 ; thread:[540] = _reversible_tid
         0x3002f4d1: 8b 03                             movl    (%rbx), %eax                  
         0x3002f4d3: a9 00 00 00 70                    testl    $1879048192, %eax            
         0x3002f4d8: 0f 85 9e 00 00 00                 jne    158                            ; 0x3002f57c
  0.05%  0x3002f4de: 81 c9 00 00 00 10                 orl    $268435456, %ecx               
  2.28%  0x3002f4e4: f0                                lock                                  
         0x3002f4e5: 0f b1 0b                          cmpxchgl    %ecx, (%rbx)              
 39.44%  0x3002f4e8: 74 0f                             je    15                              ; 0x3002f4f9
         0x3002f4ea: 48 b8 80 46 01 30 00 00 00 00     movabsq    $805389952, %rax           ; 0x30014680 = StubRoutines::c2_lock
         0x3002f4f4: 48 89 df                          movq    %rbx, %rdi                    
         0x3002f4f7: ff d0                             callq    *%rax                        ; 0x30014680 = StubRoutines::c2_lock
  0.06%  0x3002f4f9: 44 8b 73 10                       movl    16(%rbx), %r14d               
  2.21%  0x3002f4fd: 44 01 f5                          addl    %r14d, %ebp                   
         0x3002f500: 83 fd 21                          cmpl    $33, %ebp                     
         0x3002f503: 0f 8c df 00 00 00                 jl    223                             ; 0x3002f5e8
         0x3002f509: 44 01 f5                          addl    %r14d, %ebp                   
  0.04%  0x3002f50c: 83 fd 21                          cmpl    $33, %ebp                     
         0x3002f50f: 0f 8c f1 00 00 00                 jl    241                             ; 0x3002f606
  2.38%  0x3002f515: 44 01 f5                          addl    %r14d, %ebp                   
         0x3002f518: 0f 1f 84 00 00 00 00 00           nopl    (%rax,%rax)                   
         0x3002f520: 83 fd 21                          cmpl    $33, %ebp                     
         0x3002f523: 0f 8c fc 00 00 00                 jl    252                             ; 0x3002f625
  0.03%  0x3002f529: 44 01 f5                          addl    %r14d, %ebp                   
  2.43%  0x3002f52c: 83 fd 21                          cmpl    $33, %ebp                     
         0x3002f52f: 0f 8c 10 01 00 00                 jl    272                             ; 0x3002f645
         0x3002f535: 44 01 f5                          addl    %r14d, %ebp                   
         0x3002f538: 0f 1f 84 00 00 00 00 00           nopl    (%rax,%rax)                   
  0.05%  0x3002f540: 83 fd 21                          cmpl    $33, %ebp                     
         0x3002f543: 0f 8c 1c 01 00 00                 jl    284                             ; 0x3002f665
  2.31%  0x3002f549: 44 01 f5                          addl    %r14d, %ebp                   
         0x3002f54c: 8b 03                             movl    (%rbx), %eax                  
 21.05%  0x3002f54e: a8 01                             testb    $1, %al                      
         0x3002f550: 74 62                             je    98                              ; 0x3002f5b4
  2.33%  0x3002f552: 05 00 00 00 70                    addl    $1879048192, %eax             
         0x3002f557: 89 03                             movl    %eax, (%rbx)                  
  4.82%  0x3002f559: 0f 1f 80 00 00 00 00              nopl    (%rax)                        
         0x3002f560: 83 fd 21                          cmpl    $33, %ebp                     
         0x3002f563: 0f 8c 19 01 00 00                 jl    281                             ; 0x3002f682
         0x3002f569: 44 01 f5                          addl    %r14d, %ebp                   
         0x3002f56c: 31 c0                             xorl    %eax, %eax                    
  2.35%  0x3002f56e: 83 fd 21                          cmpl    $33, %ebp                     
         0x3002f571: 41 0f 4d c6                       cmovgel    %r14d, %eax                
         0x3002f575: 01 e8                             addl    %ebp, %eax                    
         0x3002f577: 5b                                popq    %rbx                          
  2.21%  0x3002f578: 41 5e                             popq    %r14                          
         0x3002f57a: 5d                                popq    %rbp                          
         0x3002f57b: c3                                retq                                  
         0x3002f57c: 0f 1f 40 00                       nopl    (%rax)                        
         0x3002f580: a8 01                             testb    $1, %al                      
         0x3002f582: 0f 84 62 ff ff ff                 je    -158                            ; 0x3002f4ea
         0x3002f588: 89 c2                             movl    %eax, %edx                    
         0x3002f58a: 81 e2 ff ff ff 0f                 andl    $268435455, %edx              
         0x3002f590: 39 ca                             cmpl    %ecx, %edx                    
         0x3002f592: 0f 85 52 ff ff ff                 jne    -174                           ; 0x3002f4ea
         0x3002f598: 89 c1                             movl    %eax, %ecx                    
....................................................................................................
 91.20%  <total for region 1>

....[Hottest Regions]...............................................................................
 91.20%  [0x3002f4a0:0x3002fd97] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls[Falcon]
  4.67%  [0x300318d9:0x30031941] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub[Falcon]
  0.23%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.20%  [0xffffffffa9eef320:0xffffffffa9eef428] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eef5b2:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eff400:0xffffffffa9eff42d] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f211f0:0xffffffffa9f21223] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9f0711f:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f686c0:0xffffffffa9f6872c] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f695f6:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffaa28d0d0:0xffffffffaa28d129] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eef467:0xffffffffa9eef4ad] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9da97a0:0xffffffffa9da97fd] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0800:0xffffffffa9ed0889] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ee587e:0xffffffffa9ee58a7] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28ead0:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0746:0xffffffffa9ed07c7] in [unknown] ([kernel.kallsyms])
  2.06%  <...other 338 warm regions...>
....................................................................................................
 99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 91.20%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls[Falcon]
  4.67%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub[Falcon]
  3.78%  [unknown] ([kernel.kallsyms])
  0.23%  [unknown] (libjvm.so)
  0.02%  [unknown] (libc-2.31.so)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.01%  _dl_addr (libc-2.31.so)
  0.01%  az_pmem_get_account_usage_tall; az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  PMEM::account_enabled (libaztall.so)
  0.01%  _IO_default_xsputn (libc-2.31.so)
  0.00%  is_thread_initialized (libazsys3.so)
  0.00%  __pthread_mutex_lock (libpthread-2.31.so)
  0.00%  [unknown] (liborca.so.0.0.0.0)
  0.00%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  memcpy (libc-2.31.so)
  0.00%  az_zmd_api_version_tall (libaztall.so)
  0.00%  <stub: ifne  154 ifne>
  0.02%  <...other 9 warm methods...>
....................................................................................................
 99.99%  <totals>

....[Distribution by Area]..........................................................................
 95.88%  <generated code>
  3.78%  <native code in ([kernel.kallsyms])>
  0.23%  <native code in (libjvm.so)>
  0.04%  <native code in (libaztall.so)>
  0.04%  <native code in (libc-2.31.so)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.00%  <native code in (liborca.so.0.0.0.0)>
  0.00%  <native code in (perf-141010.map)>
....................................................................................................
 99.99%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.7, Zing 64-Bit Tiered VM, 17.0.7-zing_23.05.0.0-b2-product-linux-X86_64
# *** WARNING: JMH support for this VM is experimental. Be extra careful with the produced data.
# VM invoker: /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:+UseBiasedLocking -Djmh.perfasm.libdir=/home/gogu/git/jvm-performance-benchmarks
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.conditional_nested_method_calls

# Run progress: 50.00% complete, ETA 00:05:35
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 16.033 ns/op
# Warmup Iteration   2: 15.865 ns/op
# Warmup Iteration   3: 15.886 ns/op
# Warmup Iteration   4: 15.864 ns/op
# Warmup Iteration   5: 15.863 ns/op
Iteration   1: 15.859 ns/op
Iteration   2: 15.864 ns/op
Iteration   3: 15.864 ns/op
Iteration   4: 15.864 ns/op
Iteration   5: 15.863 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.conditional_nested_method_calls":
  15.863 ±(99.9%) 0.009 ns/op [Average]
  (min, avg, max) = (15.859, 15.863, 15.864), stdev = 0.002
  CI (99.9%): [15.854, 15.872] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.conditional_nested_method_calls:·asm":
PrintAssembly processed: 135295 total address lines.
Perf output processed (skipped 56.532 seconds):
 Column 1: cycles (51404 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f8a0:0x3002f991] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls[Falcon]

         0x3002f97e: 48 89 df                          movq    %rbx, %rdi                    
         0x3002f981: ff d0                             callq    *%rax                        ; 0x30014d40 = StubRoutines::c2_unlock
         0x3002f983: eb b9                             jmp    -71                            ; 0x3002f93e
         0x3002f985: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f98f: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f991: e9 20 ff ff ff                    jmp    -224                           ; 0x3002f8b6
         -----------
           # {method}{0x20002655d98} conditional_nested_method_calls[Falcon] ()I in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/LockCoarseningBenchmark
         Decoding CodeBlob 0x3002f800
         0x3002f8a0: eb f9                             pushq    %rbp                         
  2.28%  0x3002f8a2: 53                                pushq    %rbx                         
         0x3002f8a3: 50                                pushq    %rax                         
         0x3002f8a4: 48 89 fb                          movq    %rdi, %rbx                    
         0x3002f8a7: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  2.47%  0x3002f8b0: 0f 85 cf 00 00 00                 jne    207                            ; 0x3002f985
         0x3002f8b6: 8b 6b 0c                          movl    12(%rbx), %ebp                
         0x3002f8b9: 2e 2e 2e 2e 2e 01 ed              addl    %ebp, %ebp                    
         0x3002f8c0: 83 fd 21                          cmpl    $33, %ebp                     
         0x3002f8c3: 7c 79                             jl    121                             ; 0x3002f93e
  2.36%  0x3002f8c5: 65 8b 0c 25 1c 02 00 00           movl    %gs:540, %ecx                 ; thread:[540] = _reversible_tid
         0x3002f8cd: 8b 03                             movl    (%rbx), %eax                  
         0x3002f8cf: a9 00 00 00 70                    testl    $1879048192, %eax            
         0x3002f8d4: 75 71                             jne    113                            ; 0x3002f947
         0x3002f8d6: 81 c9 00 00 00 10                 orl    $268435456, %ecx               
  2.31%  0x3002f8dc: f0                                lock                                  
         0x3002f8dd: 0f b1 0b                          cmpxchgl    %ecx, (%rbx)              
 42.41%  0x3002f8e0: 74 0f                             je    15                              ; 0x3002f8f1
         0x3002f8e2: 48 b8 80 46 01 30 00 00 00 00     movabsq    $805389952, %rax           ; 0x30014680 = StubRoutines::c2_lock
         0x3002f8ec: 48 89 df                          movq    %rbx, %rdi                    
         0x3002f8ef: ff d0                             callq    *%rax                        ; 0x30014680 = StubRoutines::c2_lock
  0.04%  0x3002f8f1: 8b 43 10                          movl    16(%rbx), %eax                
  2.41%  0x3002f8f4: 01 c5                             addl    %eax, %ebp                    
         0x3002f8f6: 83 fd 21                          cmpl    $33, %ebp                     
         0x3002f8f9: 7c 36                             jl    54                              ; 0x3002f931
         0x3002f8fb: 01 c5                             addl    %eax, %ebp                    
  0.03%  0x3002f8fd: 0f 1f 00                          nopl    (%rax)                        
  2.23%  0x3002f900: 83 fd 21                          cmpl    $33, %ebp                     
         0x3002f903: 7c 2c                             jl    44                              ; 0x3002f931
         0x3002f905: 01 c5                             addl    %eax, %ebp                    
         0x3002f907: 83 fd 21                          cmpl    $33, %ebp                     
         0x3002f90a: 7c 25                             jl    37                              ; 0x3002f931
  0.04%  0x3002f90c: 01 c5                             addl    %eax, %ebp                    
  2.29%  0x3002f90e: 83 fd 21                          cmpl    $33, %ebp                     
         0x3002f911: 7c 1e                             jl    30                              ; 0x3002f931
         0x3002f913: 01 c5                             addl    %eax, %ebp                    
         0x3002f915: 83 fd 21                          cmpl    $33, %ebp                     
         0x3002f918: 7c 17                             jl    23                              ; 0x3002f931
  0.03%  0x3002f91a: 01 c5                             addl    %eax, %ebp                    
  2.12%  0x3002f91c: 0f 1f 40 00                       nopl    (%rax)                        
         0x3002f920: 83 fd 21                          cmpl    $33, %ebp                     
         0x3002f923: 7c 0c                             jl    12                              ; 0x3002f931
         0x3002f925: 01 c5                             addl    %eax, %ebp                    
  0.04%  0x3002f927: 31 c9                             xorl    %ecx, %ecx                    
  2.31%  0x3002f929: 83 fd 21                          cmpl    $33, %ebp                     
         0x3002f92c: 0f 4d c8                          cmovgel    %eax, %ecx                 
         0x3002f92f: 01 cd                             addl    %ecx, %ebp                    
  0.05%  0x3002f931: 8b 03                             movl    (%rbx), %eax                  
 18.61%  0x3002f933: a8 01                             testb    $1, %al                      
         0x3002f935: 74 3d                             je    61                              ; 0x3002f974
  2.30%  0x3002f937: 05 00 00 00 70                    addl    $1879048192, %eax             
         0x3002f93c: 89 03                             movl    %eax, (%rbx)                  
  4.68%  0x3002f93e: 89 e8                             movl    %ebp, %eax                    
         0x3002f940: 48 83 c4 08                       addq    $8, %rsp                      
         0x3002f944: 5b                                popq    %rbx                          
  2.31%  0x3002f945: 5d                                popq    %rbp                          
         0x3002f946: c3                                retq                                  
         0x3002f947: a8 01                             testb    $1, %al                      
         0x3002f949: 74 97                             je    -105                            ; 0x3002f8e2
         0x3002f94b: 89 c2                             movl    %eax, %edx                    
         0x3002f94d: 81 e2 ff ff ff 0f                 andl    $268435455, %edx              
         0x3002f953: 39 ca                             cmpl    %ecx, %edx                    
         0x3002f955: 75 8b                             jne    -117                           ; 0x3002f8e2
         0x3002f957: 89 c1                             movl    %eax, %ecx                    
         0x3002f959: 2e 81 c9 00 00 00 70              orl    $1879048192, %ecx              
         0x3002f960: 39 c1                             cmpl    %eax, %ecx                    
....................................................................................................
 91.32%  <total for region 1>

....[Hottest Regions]...............................................................................
 91.32%  [0x3002f8a0:0x3002f991] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls[Falcon]
  4.72%  [0x300318dc:0x30031941] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub[Falcon]
  0.23%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9f0711c:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eef3a2:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f211f0:0xffffffffa9f21223] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9c0f77a:0xffffffffa9c0f783] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffaa28ead0:0xffffffffaa28eb20] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eef30c:0xffffffffa9eef381] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f69678:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f686c0:0xffffffffa9f6875f] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0740:0xffffffffa9ed0797] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ee5876:0xffffffffa9ee58a7] in [unknown] ([kernel.kallsyms])
  1.91%  <...other 270 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 91.32%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls[Falcon]
  4.72%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub[Falcon]
  3.72%  [unknown] ([kernel.kallsyms])
  0.15%  [unknown] (libjvm.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  [unknown] ([vdso])
  0.01%  syscall (libc-2.31.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.00%  is_thread_initialized (libazsys3.so)
  0.00%  az_get_elastic (libazsys3.so)
  0.00%  _IO_default_xsputn (libc-2.31.so)
  0.00%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  VMEM::get_account_usage (libaztall.so)
  0.00%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  thread_stack_region_start@plt (libazsys3.so)
  0.00%  PMEM_BackingStorage::uncommit_memory (libaztall.so)
  0.00%  StubRoutines::new_stub_check_tls_zero_region_array
  0.00%  _IO_fwrite (libc-2.31.so)
  0.02%  <...other 10 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 96.05%  <generated code>
  3.72%  <native code in ([kernel.kallsyms])>
  0.15%  <native code in (libjvm.so)>
  0.03%  <native code in (libc-2.31.so)>
  0.03%  <native code in (libaztall.so)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in ([vdso])>
  0.00%  <native code in (kvm.ko)>
....................................................................................................
100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.7, Zing 64-Bit Tiered VM, 17.0.7-zing_23.05.0.0-b2-product-linux-X86_64
# *** WARNING: JMH support for this VM is experimental. Be extra careful with the produced data.
# VM invoker: /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:+UseBiasedLocking -Djmh.perfasm.libdir=/home/gogu/git/jvm-performance-benchmarks
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.nested_synchronized

# Run progress: 66.67% complete, ETA 00:03:43
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1630.447 ns/op
# Warmup Iteration   2: 1625.540 ns/op
# Warmup Iteration   3: 1624.690 ns/op
# Warmup Iteration   4: 1624.866 ns/op
# Warmup Iteration   5: 1625.108 ns/op
Iteration   1: 1625.273 ns/op
Iteration   2: 1622.443 ns/op
Iteration   3: 1622.060 ns/op
Iteration   4: 1623.820 ns/op
Iteration   5: 1622.632 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.nested_synchronized":
  1623.245 ±(99.9%) 5.045 ns/op [Average]
  (min, avg, max) = (1622.060, 1623.245, 1625.273), stdev = 1.310
  CI (99.9%): [1618.200, 1628.291] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.nested_synchronized:·asm":
PrintAssembly processed: 133485 total address lines.
Perf output processed (skipped 59.133 seconds):
 Column 1: cycles (51370 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x32a12004:0x32a120d7] in <stub: fast_iaccess_0  221 fast_iaccess_0>

  1.70%  0x32a12004: 48 89 0f                          movq    %rcx, (%rdi)                  
  0.22%  0x32a12007: 48 83 c7 08                       addq    $8, %rdi                      
  0.00%  0x32a1200b: 49 bb 60 d7 6b 75 13 7f 00 00     movabsq    $139721551107936, %r11     ; 0x7f13756bd760 = libjvm.so
         0x32a12015: 49 8b 04 c3                       movq    (%r11,%rax,8), %rax           
  0.65%  0x32a12019: 48 ff c6                          incq    %rsi                          
         0x32a1201c: 48 8b 0a                          movq    (%rdx), %rcx                  
         0x32a1201f: ff e0                             jmpq    *%rax                         
         0x32a12021: 0f 1f 80 00 00 00 00              nopl    (%rax)                        
         ----------------------------------------------------------------------
         fast_iaccess_0  221 fast_iaccess_0  [ 0x0000000032a12040 - 0x0000000032a1207f ]  64 bytes
  2.91%  0x32a12040: 48 89 0f                          movq    %rcx, (%rdi)                  
  2.19%  0x32a12043: 48 83 c7 08                       addq    $8, %rdi                      
         0x32a12047: 44 0f b7 56 02                    movzwl    2(%rsi), %r10d              
  0.00%  0x32a1204c: 41 c1 e2 05                       shll    $5, %r10d                     
         0x32a12050: 0f b6 46 04                       movzbl    4(%rsi), %eax               
  0.20%  0x32a12054: 4c 8b 0a                          movq    (%rdx), %r9                   
         0x32a12057: 47 8b 54 10 28                    movl    40(%r8,%r10), %r10d           
  0.91%  0x32a1205c: 48 ff c6                          incq    %rsi                          
         0x32a1205f: 4b 63 0c 11                       movslq    (%r9,%r10), %rcx            
  1.13%  0x32a12063: 48 ff ce                          decq    %rsi                          
         0x32a12066: 49 bb 60 d7 6b 75 13 7f 00 00     movabsq    $139721551107936, %r11     ; 0x7f13756bd760 = libjvm.so
         0x32a12070: 49 8b 04 c3                       movq    (%r11,%rax,8), %rax           
         0x32a12074: 48 83 c6 04                       addq    $4, %rsi                      
  0.18%  0x32a12078: ff e0                             jmpq    *%rax                         
         0x32a1207a: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
         ----------------------------------------------------------------------
         fast_aaccess_0  222 fast_aaccess_0  [ 0x0000000032a120c0 - 0x0000000032a1211f ]  96 bytes
         0x32a120c0: 48 89 0f                          movq    %rcx, (%rdi)                  
         0x32a120c3: 48 83 c7 08                       addq    $8, %rdi                      
         0x32a120c7: 44 0f b7 56 02                    movzwl    2(%rsi), %r10d              
         0x32a120cc: 41 c1 e2 05                       shll    $5, %r10d                     
         0x32a120d0: 0f b6 46 04                       movzbl    4(%rsi), %eax               
         0x32a120d4: 4c 8b 0a                          movq    (%rdx), %r9                   
         0x32a120d7: 47 8b 54 10 28                    movl    40(%r8,%r10), %r10d           
....................................................................................................
  7.52%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x32a10595:0x32a10688] in <stub: monitorexit  195 monitorexit>

         0x32a10595: e9 59 ff ff ff                    jmp    -167                           ; 0x32a104f3
         0x32a1059a: 48 89 7c 24 d0                    movq    %rdi, -48(%rsp)               
         0x32a1059f: 49 8d 79 08                       leaq    8(%r9), %rdi                  
         0x32a105a3: 48 89 7c 24 c8                    movq    %rdi, -56(%rsp)               
         0x32a105a8: e8 d3 be 5f fd                    callq    -44056877                    ; 0x3000c480 = StubRoutines::lvb_handler
         0x32a105ad: 48 8b 7c 24 f0                    movq    -16(%rsp), %rdi               
         0x32a105b2: eb a1                             jmp    -95                            ; 0x32a10555
         0x32a105b4: 0f 1f 40 00                       nopl    (%rax)                        
         ----------------------------------------------------------------------
         monitorexit  195 monitorexit  [ 0x0000000032a10600 - 0x0000000032a108df ]  736 bytes
  2.91%  0x32a10600: 0f b7 44 24 1a                    movzwl    26(%rsp), %eax              
  1.74%  0x32a10605: 85 c0                             testl    %eax, %eax                   
         0x32a10607: 0f 84 df 01 00 00                 je    479                             ; 0x32a107ec
  0.23%  0x32a1060d: 65 4c 8b 1c 25 c0 05 00 00        movq    %gs:1472, %r11                
  0.35%  0x32a10616: 49 83 eb 08                       subq    $8, %r11                      
  0.16%  0x32a1061a: 49 3b 0b                          cmpq    (%r11), %rcx                  
         0x32a1061d: 0f 85 92 01 00 00                 jne    402                            ; 0x32a107b5
  1.05%  0x32a10623: 65 4c 89 1c 25 c0 05 00 00        movq    %r11, %gs:1472                
         0x32a1062c: 66 83 44 24 1a ff                 addw    $-1, 26(%rsp)                 
         0x32a10632: 44 8b 19                          movl    (%rcx), %r11d                 
  0.16%  0x32a10635: 41 f7 c3 01 00 00 00              testl    $1, %r11d                    
         0x32a1063c: 74 2d                             je    45                              ; 0x32a1066b
         0x32a1063e: eb 1f                             jmp    31                             ; 0x32a1065f
  0.02%  0x32a10640: 0f b6 46 01                       movzbl    1(%rsi), %eax               
  0.02%  0x32a10644: 48 8b 4f f8                       movq    -8(%rdi), %rcx                
         0x32a10648: 48 83 ef 08                       subq    $8, %rdi                      
  0.16%  0x32a1064c: 49 bb 60 d7 6b 75 13 7f 00 00     movabsq    $139721551107936, %r11     ; 0x7f13756bd760 = libjvm.so
  0.02%  0x32a10656: 49 8b 04 c3                       movq    (%r11,%rax,8), %rax           
  0.01%  0x32a1065a: 48 ff c6                          incq    %rsi                          
         0x32a1065d: ff e0                             jmpq    *%rax                         
         0x32a1065f: 41 81 eb 00 00 00 10              subl    $268435456, %r11d             
         0x32a10666: 44 89 19                          movl    %r11d, (%rcx)                 
         0x32a10669: eb d5                             jmp    -43                            ; 0x32a10640
         0x32a1066b: 49 0f ba f3 1f                    btrq    $31, %r11                     
         0x32a10670: 48 b8 40 b2 2e 75 13 7f 00 00     movabsq    $139721547100736, %rax     ; 0x7f13752eb240 = libjvm.so
         0x32a1067a: 4c 8b 08                          movq    (%rax), %r9                   
  0.18%  0x32a1067d: 4d 03 d9                          addq    %r9, %r11                     
         0x32a10680: 41 83 bb b8 00 00 00 0a           cmpl    $10, 184(%r11)                
  0.63%  0x32a10688: 75 3e                             jne    62                             ; 0x32a106c8
....................................................................................................
  6.82%  <total for region 2>

....[Hottest Region 3]..............................................................................
 [0x32a1030f:0x32a103e3] in <stub: monitorenter  194 monitorenter>

         0x32a1030f: e9 87 fd ff ff                    jmp    -633                           ; 0x32a1009b
         0x32a10314: b9 01 00 00 00                    movl    $1, %ecx                      
         0x32a10319: 0f b6 46 03                       movzbl    3(%rsi), %eax               
         0x32a1031d: 49 bb 60 d7 6b 75 13 7f 00 00     movabsq    $139721551107936, %r11     ; 0x7f13756bd760 = libjvm.so
         0x32a10327: 49 8b 04 c3                       movq    (%r11,%rax,8), %rax           
         0x32a1032b: 48 83 c6 03                       addq    $3, %rsi                      
         0x32a1032f: ff e0                             jmpq    *%rax                         
         0x32a10331: 0f 1f 80 00 00 00 00              nopl    (%rax)                        
         ----------------------------------------------------------------------
         monitorenter  194 monitorenter  [ 0x0000000032a10380 - 0x0000000032a105b7 ]  568 bytes
  2.79%  0x32a10380: 83 39 00                          cmpl    $0, (%rcx)                    
  1.95%  0x32a10383: 65 48 8b 04 25 c0 05 00 00        movq    %gs:1472, %rax                
  0.17%  0x32a1038c: 65 48 3b 04 25 c8 05 00 00        cmpq    %gs:1480, %rax                
         0x32a10395: 7d 7d                             jge    125                            ; 0x32a10414
  0.36%  0x32a10397: 48 89 08                          movq    %rcx, (%rax)                  
  0.77%  0x32a1039a: 48 83 c0 08                       addq    $8, %rax                      
         0x32a1039e: 65 48 89 04 25 c0 05 00 00        movq    %rax, %gs:1472                
  0.18%  0x32a103a7: 66 83 44 24 1a 01                 addw    $1, 26(%rsp)                  
  0.20%  0x32a103ad: 65 44 8b 0c 25 1c 02 00 00        movl    %gs:540, %r9d                 ; thread:[540] = _reversible_tid
         0x32a103b6: 48 8b 01                          movq    (%rcx), %rax                  
  0.11%  0x32a103b9: a9 00 00 00 70                    testl    $1879048192, %eax            
         0x32a103be: 74 63                             je    99                              ; 0x32a10423
         0x32a103c0: a9 01 00 00 00                    testl    $1, %eax                     
         0x32a103c5: 74 7d                             je    125                             ; 0x32a10444
         0x32a103c7: 44 33 c8                          xorl    %eax, %r9d                    
         0x32a103ca: 41 f7 c1 ff ff ff 0f              testl    $268435455, %r9d             
         0x32a103d1: 0f 85 f4 00 00 00                 jne    244                            ; 0x32a104cb
         0x32a103d7: 41 b9 00 00 00 70                 movl    $1879048192, %r9d             
         0x32a103dd: 4c 0b c8                          orq    %rax, %r9                      
         0x32a103e0: 4c 3b c8                          cmpq    %rax, %r9                     
         0x32a103e3: 48 8d 80 00 00 00 10              leaq    268435456(%rax), %rax         
....................................................................................................
  6.52%  <total for region 3>

....[Hottest Region 4]..............................................................................
 [0x32a05844:0x32a058d5] in <stub: iload_1  27 iload_1>

         0x32a05844: 48 89 0f                          movq    %rcx, (%rdi)                  
         0x32a05847: 48 83 c7 08                       addq    $8, %rdi                      
         0x32a0584b: 49 bb 60 d7 6b 75 13 7f 00 00     movabsq    $139721551107936, %r11     ; 0x7f13756bd760 = libjvm.so
         0x32a05855: 49 8b 04 c3                       movq    (%r11,%rax,8), %rax           
         0x32a05859: 48 ff c6                          incq    %rsi                          
         0x32a0585c: 48 63 0a                          movslq    (%rdx), %rcx                
         0x32a0585f: ff e0                             jmpq    *%rax                         
         0x32a05861: 0f 1f 80 00 00 00 00              nopl    (%rax)                        
         ----------------------------------------------------------------------
         iload_1  27 iload_1  [ 0x0000000032a05880 - 0x0000000032a058a7 ]  40 bytes
  2.11%  0x32a05880: 0f b6 46 01                       movzbl    1(%rsi), %eax               
  2.12%  0x32a05884: 48 89 0f                          movq    %rcx, (%rdi)                  
  0.29%  0x32a05887: 48 83 c7 08                       addq    $8, %rdi                      
         0x32a0588b: 49 bb 60 d7 6b 75 13 7f 00 00     movabsq    $139721551107936, %r11     ; 0x7f13756bd760 = libjvm.so
         0x32a05895: 49 8b 04 c3                       movq    (%r11,%rax,8), %rax           
  0.76%  0x32a05899: 48 ff c6                          incq    %rsi                          
         0x32a0589c: 48 63 4a 08                       movslq    8(%rdx), %rcx               
         0x32a058a0: ff e0                             jmpq    *%rax                         
         0x32a058a2: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
         ----------------------------------------------------------------------
         iload_2  28 iload_2  [ 0x0000000032a058c0 - 0x0000000032a058e7 ]  40 bytes
         0x32a058c0: 0f b6 46 01                       movzbl    1(%rsi), %eax               
         0x32a058c4: 48 89 0f                          movq    %rcx, (%rdi)                  
         0x32a058c7: 48 83 c7 08                       addq    $8, %rdi                      
         0x32a058cb: 49 bb 60 d7 6b 75 13 7f 00 00     movabsq    $139721551107936, %r11     ; 0x7f13756bd760 = libjvm.so
         0x32a058d5: 49 8b 04 c3                       movq    (%r11,%rax,8), %rax           
....................................................................................................
  5.28%  <total for region 4>

....[Hottest Region 5]..............................................................................
 [0x32a07cc0:0x32a07d5a] in <stub: dup  89 dup>

         0x32a07cc0: 0f b6 46 01                       movzbl    1(%rsi), %eax               
         0x32a07cc4: 48 8b 4f f0                       movq    -16(%rdi), %rcx               
         0x32a07cc8: 49 bb 60 d7 6b 75 13 7f 00 00     movabsq    $139721551107936, %r11     ; 0x7f13756bd760 = libjvm.so
         0x32a07cd2: 49 8b 04 c3                       movq    (%r11,%rax,8), %rax           
         0x32a07cd6: 48 ff c6                          incq    %rsi                          
         0x32a07cd9: 48 83 c7 f0                       addq    $-16, %rdi                    
         0x32a07cdd: ff e0                             jmpq    *%rax                         
         0x32a07cdf: 90                                nop                                   
         ----------------------------------------------------------------------
         dup  89 dup  [ 0x0000000032a07d00 - 0x0000000032a07d1f ]  32 bytes
  2.52%  0x32a07d00: 0f b6 46 01                       movzbl    1(%rsi), %eax               
  1.75%  0x32a07d04: 48 89 0f                          movq    %rcx, (%rdi)                  
  0.23%  0x32a07d07: 48 83 c7 08                       addq    $8, %rdi                      
         0x32a07d0b: 49 bb 60 d7 6b 75 13 7f 00 00     movabsq    $139721551107936, %r11     ; 0x7f13756bd760 = libjvm.so
         0x32a07d15: 49 8b 04 c3                       movq    (%r11,%rax,8), %rax           
  0.69%  0x32a07d19: 48 ff c6                          incq    %rsi                          
         0x32a07d1c: ff e0                             jmpq    *%rax                         
         0x32a07d1e: 66 90                             nop                                   
         ----------------------------------------------------------------------
         dup_x1  90 dup_x1  [ 0x0000000032a07d40 - 0x0000000032a07d67 ]  40 bytes
         0x32a07d40: 0f b6 46 01                       movzbl    1(%rsi), %eax               
         0x32a07d44: 4c 8b 4f f8                       movq    -8(%rdi), %r9                 
         0x32a07d48: 48 89 4f f8                       movq    %rcx, -8(%rdi)                
         0x32a07d4c: 49 bb 60 d7 6b 75 13 7f 00 00     movabsq    $139721551107936, %r11     ; 0x7f13756bd760 = libjvm.so
         0x32a07d56: 49 8b 04 c3                       movq    (%r11,%rax,8), %rax           
         0x32a07d5a: 48 ff c6                          incq    %rsi                          
....................................................................................................
  5.19%  <total for region 5>

....[Hottest Region 6]..............................................................................
 [0x32a069d6:0x32a06a6a] in <stub: istore_1  60 istore_1>

         0x32a069d6: 49 89 0a                          movq    %rcx, (%r10)                  
         0x32a069d9: 49 bb 60 d7 6b 75 13 7f 00 00     movabsq    $139721551107936, %r11     ; 0x7f13756bd760 = libjvm.so
         0x32a069e3: 49 8b 04 c3                       movq    (%r11,%rax,8), %rax           
         0x32a069e7: 48 ff c6                          incq    %rsi                          
         0x32a069ea: 48 8b 4f f8                       movq    -8(%rdi), %rcx                
         0x32a069ee: 48 83 ef 08                       subq    $8, %rdi                      
         0x32a069f2: ff e0                             jmpq    *%rax                         
         0x32a069f4: 0f 1f 40 00                       nopl    (%rax)                        
         ----------------------------------------------------------------------
         istore_1  60 istore_1  [ 0x0000000032a06a40 - 0x0000000032a06aaf ]  112 bytes
  2.49%  0x32a06a40: 4c 8d 52 08                       leaq    8(%rdx), %r10                 
  1.21%  0x32a06a44: 41 83 7a fc fe                    cmpl    $-2, -4(%r10)                 
  1.44%  0x32a06a49: 75 31                             jne    49                             ; 0x32a06a7c
         0x32a06a4b: 49 8d 42 f8                       leaq    -8(%r10), %rax                
         0x32a06a4f: 48 3b c2                          cmpq    %rdx, %rax                    
         0x32a06a52: 74 1e                             je    30                              ; 0x32a06a72
         0x32a06a54: 41 b9 01 00 00 00                 movl    $1, %r9d                      
         0x32a06a5a: 48 83 c0 f8                       addq    $-8, %rax                     
         0x32a06a5e: 83 78 04 fe                       cmpl    $-2, 4(%rax)                  
         0x32a06a62: 75 08                             jne    8                              ; 0x32a06a6c
         0x32a06a64: 41 ff c1                          incl    %r9d                          
         0x32a06a67: 48 3b c2                          cmpq    %rdx, %rax                    
         0x32a06a6a: 75 ee                             jne    -18                            ; 0x32a06a5a
....................................................................................................
  5.14%  <total for region 6>

....[Hottest Region 7]..............................................................................
 [0x32a11f96:0x32a12050] in <stub: fast_aload_0  220 fast_aload_0>

         0x32a11f96: 66 43 89 0c 0a                    movw    %cx, (%r10,%r9)               
         0x32a11f9b: 49 bb 60 d7 6b 75 13 7f 00 00     movabsq    $139721551107936, %r11     ; 0x7f13756bd760 = libjvm.so
         0x32a11fa5: 49 8b 04 c3                       movq    (%r11,%rax,8), %rax           
         0x32a11fa9: 48 83 c6 03                       addq    $3, %rsi                      
         0x32a11fad: 48 8b 4f f0                       movq    -16(%rdi), %rcx               
         0x32a11fb1: 48 83 c7 f0                       addq    $-16, %rdi                    
         0x32a11fb5: ff e0                             jmpq    *%rax                         
         0x32a11fb7: 90                                nop                                   
         ----------------------------------------------------------------------
         fast_aload_0  220 fast_aload_0  [ 0x0000000032a12000 - 0x0000000032a12027 ]  40 bytes
  2.50%  0x32a12000: 0f b6 46 01                       movzbl    1(%rsi), %eax               
  1.70%  0x32a12004: 48 89 0f                          movq    %rcx, (%rdi)                  
  0.22%  0x32a12007: 48 83 c7 08                       addq    $8, %rdi                      
  0.00%  0x32a1200b: 49 bb 60 d7 6b 75 13 7f 00 00     movabsq    $139721551107936, %r11     ; 0x7f13756bd760 = libjvm.so
         0x32a12015: 49 8b 04 c3                       movq    (%r11,%rax,8), %rax           
  0.65%  0x32a12019: 48 ff c6                          incq    %rsi                          
         0x32a1201c: 48 8b 0a                          movq    (%rdx), %rcx                  
         0x32a1201f: ff e0                             jmpq    *%rax                         
         0x32a12021: 0f 1f 80 00 00 00 00              nopl    (%rax)                        
         ----------------------------------------------------------------------
         fast_iaccess_0  221 fast_iaccess_0  [ 0x0000000032a12040 - 0x0000000032a1207f ]  64 bytes
  2.91%  0x32a12040: 48 89 0f                          movq    %rcx, (%rdi)                  
  2.19%  0x32a12043: 48 83 c7 08                       addq    $8, %rdi                      
         0x32a12047: 44 0f b7 56 02                    movzwl    2(%rsi), %r10d              
  0.00%  0x32a1204c: 41 c1 e2 05                       shll    $5, %r10d                     
         0x32a12050: 0f b6 46 04                       movzbl    4(%rsi), %eax               
....................................................................................................
  5.07%  <total for region 7>

....[Hottest Regions]...............................................................................
  7.52%  [0x32a12004:0x32a120d7] in <stub: fast_iaccess_0  221 fast_iaccess_0>
  6.82%  [0x32a10595:0x32a10688] in <stub: monitorexit  195 monitorexit>
  6.52%  [0x32a1030f:0x32a103e3] in <stub: monitorenter  194 monitorenter>
  5.28%  [0x32a05844:0x32a058d5] in <stub: iload_1  27 iload_1>
  5.19%  [0x32a07cc0:0x32a07d5a] in <stub: dup  89 dup>
  5.14%  [0x32a069d6:0x32a06a6a] in <stub: istore_1  60 istore_1>
  5.07%  [0x32a11f96:0x32a12050] in <stub: fast_aload_0  220 fast_aload_0>
  4.63%  [0x32a07f44:0x32a07fe0] in <stub: iadd  96 iadd>
  4.54%  [0x32a0cbf8:0x32a0cc75] in <stub: goto  167 goto>
  4.04%  [0x32a0681f:0x32a068b4] in <stub: astore  58 astore>
  3.97%  [0x32a05781:0x32a0580a] in <stub: aload  25 aload>
  2.10%  [0x7f13736c6d80:0x7f13736c6dd8] in [unknown] (libjvm.so)
  2.09%  [0x32a1041e:0x32a104dc] in <stub: monitorenter  194 monitorenter>
  1.85%  [0x7f1373f0ba40:0x7f1373f0bac6] in [unknown] (libjvm.so)
  1.79%  [0x32a0cd75:0x32a0cdfb] in <stub: goto  167 goto>
  1.61%  [0x7f1372e1a5b0:0x7f1372e1a5dc] in is_thread_initialized (libazsys3.so)
  1.59%  [0x32a06a5a:0x32a06b0b] in <stub: istore_1  60 istore_1>
  1.36%  [0x7f1372e19ee0:0x7f1372e19eef] in thread_stack_region_start (libazsys3.so)
  1.31%  [0x32a1064c:0x32a106c8] in <stub: monitorexit  195 monitorexit>
  1.26%  [0x32a03143:0x32a03211] in <stub: method entry point (kind = zerolocals)>
 26.29%  <...other 451 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 16.57%  [unknown] (libjvm.so)
  9.01%  <stub: monitorenter  194 monitorenter>
  8.14%  <stub: monitorexit  195 monitorexit>
  7.52%  <stub: fast_iaccess_0  221 fast_iaccess_0>
  6.73%  <stub: istore_1  60 istore_1>
  6.33%  <stub: goto  167 goto>
  5.28%  <stub: iload_1  27 iload_1>
  5.19%  <stub: dup  89 dup>
  5.07%  <stub: fast_aload_0  220 fast_aload_0>
  4.69%  <stub: astore  58 astore>
  4.63%  <stub: iadd  96 iadd>
  3.97%  <stub: aload  25 aload>
  3.83%  [unknown] ([kernel.kallsyms])
  2.81%  <stub: method entry point (kind = zerolocals)>
  1.61%  is_thread_initialized (libazsys3.so)
  1.36%  thread_stack_region_start (libazsys3.so)
  1.07%  <stub: astore_3  78 astore_3>
  1.04%  StubRoutines::interpreter_frequency_counter_overflow_stub
  0.86%  <stub: ireturn  172 ireturn>
  0.81%  <stub: astore_2  77 astore_2>
  3.46%  <...other 33 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 75.97%  <generated code>
 16.57%  <native code in (libjvm.so)>
  3.83%  <native code in ([kernel.kallsyms])>
  3.16%  <native code in (libazsys3.so)>
  0.36%  <native code in (perf-141283.map)>
  0.04%  <native code in (libc-2.31.so)>
  0.03%  <native code in (libaztall.so)>
  0.02%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in ([vdso])>
....................................................................................................
100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.7, Zing 64-Bit Tiered VM, 17.0.7-zing_23.05.0.0-b2-product-linux-X86_64
# *** WARNING: JMH support for this VM is experimental. Be extra careful with the produced data.
# VM invoker: /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:+UseBiasedLocking -Djmh.perfasm.libdir=/home/gogu/git/jvm-performance-benchmarks
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.recursive_method_calls

# Run progress: 83.33% complete, ETA 00:01:52
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 256.266 ns/op
# Warmup Iteration   2: 256.180 ns/op
# Warmup Iteration   3: 255.652 ns/op
# Warmup Iteration   4: 255.827 ns/op
# Warmup Iteration   5: 255.767 ns/op
Iteration   1: 255.594 ns/op
Iteration   2: 255.848 ns/op
Iteration   3: 255.737 ns/op
Iteration   4: 255.766 ns/op
Iteration   5: 255.790 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.recursive_method_calls":
  255.747 ±(99.9%) 0.364 ns/op [Average]
  (min, avg, max) = (255.594, 255.747, 255.848), stdev = 0.095
  CI (99.9%): [255.383, 256.111] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.recursive_method_calls:·asm":
PrintAssembly processed: 135480 total address lines.
Perf output processed (skipped 56.209 seconds):
 Column 1: cycles (51565 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x30014d40:0x30014fdf] in StubRoutines::c2_unlock

         0x30014fa6: c5 7a 6f 8c 24 c0 00 00 00        vmovdqu    192(%rsp), %xmm9           
         0x30014faf: c5 7a 6f 94 24 a0 00 00 00        vmovdqu    160(%rsp), %xmm10          
         0x30014fb8: c5 7a 6f 9c 24 80 00 00 00        vmovdqu    128(%rsp), %xmm11          
         0x30014fc1: c5 7a 6f 64 24 60                 vmovdqu    96(%rsp), %xmm12           
         0x30014fc7: c5 7a 6f 6c 24 40                 vmovdqu    64(%rsp), %xmm13           
         0x30014fcd: c5 7a 6f 74 24 20                 vmovdqu    32(%rsp), %xmm14           
         0x30014fd3: c5 7a 6f 3c 24                    vmovdqu    (%rsp), %xmm15             
         0x30014fd8: 48 81 c4 88 02 00 00              addq    $648, %rsp                    
         0x30014fdf: c3                                retq                                  
         StubRoutines::c2_unlock [0x0000000030014d40, 0x0000000030014dee] (174 bytes)
  9.35%  0x30014d40: 48 81 ec 88 02 00 00              subq    $648, %rsp                    
  6.60%  0x30014d47: 8b 0f                             movl    (%rdi), %ecx                  
  3.40%  0x30014d49: f7 c1 01 00 00 00                 testl    $1, %ecx                     
         0x30014d4f: 74 0f                             je    15                              ; 0x30014d60
         0x30014d51: eb 00                             jmp    0                              ; 0x30014d53
         0x30014d53: 81 e9 00 00 00 10                 subl    $268435456, %ecx              
         0x30014d59: 89 0f                             movl    %ecx, (%rdi)                  
         0x30014d5b: e9 86 00 00 00                    jmp    134                            ; 0x30014de6
  1.00%  0x30014d60: 48 0f ba f1 1f                    btrq    $31, %rcx                     
  1.75%  0x30014d65: 48 b8 40 b2 01 30 83 7f 00 00     movabsq    $140201422860864, %rax     ; 0x7f833001b240 = libjvm.so
         0x30014d6f: 48 8b 30                          movq    (%rax), %rsi                  
  3.98%  0x30014d72: 48 03 ce                          addq    %rsi, %rcx                    
  1.06%  0x30014d75: 83 b9 b8 00 00 00 0a              cmpl    $10, 184(%rcx)                
  6.32%  0x30014d7c: 75 38                             jne    56                             ; 0x30014db6
  0.98%  0x30014d7e: 83 39 01                          cmpl    $1, (%rcx)                    
         0x30014d81: 74 05                             je    5                               ; 0x30014d88
  0.85%  0x30014d83: 83 29 01                          subl    $1, (%rcx)                    
  1.06%  0x30014d86: eb 5e                             jmp    94                             ; 0x30014de6
  0.16%  0x30014d88: 48 8b 71 58                       movq    88(%rcx), %rsi                
         0x30014d8c: 48 0b 71 48                       orq    72(%rcx), %rsi                 
         0x30014d90: 48 85 f6                          testq    %rsi, %rsi                   
         0x30014d93: 75 08                             jne    8                              ; 0x30014d9d
  0.15%  0x30014d95: 33 f6                             xorl    %esi, %esi                    
         0x30014d97: 48 89 71 28                       movq    %rsi, 40(%rcx)                
         0x30014d9b: eb 49                             jmp    73                             ; 0x30014de6
         0x30014d9d: 48 8b 71 60                       movq    96(%rcx), %rsi                
         0x30014da1: 48 85 f6                          testq    %rsi, %rsi                   
         0x30014da4: 74 10                             je    16                              ; 0x30014db6
         0x30014da6: 48 c7 41 28 00 00 00 00           movq    $0, 40(%rcx)                  
         0x30014dae: f0                                lock                                  
         0x30014daf: 48 83 04 24 00                    addq    $0, (%rsp)                    
         0x30014db4: eb 30                             jmp    48                             ; 0x30014de6
         0x30014db6: 48 89 fe                          movq    %rdi, %rsi                    
....................................................................................................
 36.64%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x30014680:0x30014af3] in StubRoutines::c2_lock

         0x30014ab7: c5 fa 6f b4 24 20 01 00 00        vmovdqu    288(%rsp), %xmm6           
         0x30014ac0: c5 fa 6f bc 24 00 01 00 00        vmovdqu    256(%rsp), %xmm7           
         0x30014ac9: 49 89 c3                          movq    %rax, %r11                    
         0x30014acc: 48 8b 8c 24 70 02 00 00           movq    624(%rsp), %rcx               
         0x30014ad4: 48 8b 94 24 68 02 00 00           movq    616(%rsp), %rdx               
         0x30014adc: 48 81 c4 88 02 00 00              addq    $648, %rsp                    
         0x30014ae3: 65 48 83 3c 25 08 00 00 00 00     cmpq    $0, %gs:8                     ; thread:[8] = _pending_exception
         0x30014aed: 0f 85 8d cd fe ff                 jne    -78451                         ; 0x30001880 = StubRoutines::forward_exception
         0x30014af3: c3                                retq                                  
         StubRoutines::c2_lock [0x0000000030014680, 0x0000000030014827] (423 bytes)
 10.92%  0x30014680: 48 81 ec 88 02 00 00              subq    $648, %rsp                    
  7.38%  0x30014687: 66 0f 1f 84 00 00 00 00 00        nopw    (%rax,%rax)                   
         0x30014690: 65 8b 14 25 1c 02 00 00           movl    %gs:540, %edx                 ; thread:[540] = _reversible_tid
  5.60%  0x30014698: 48 8b 07                          movq    (%rdi), %rax                  
  0.00%  0x3001469b: a9 00 00 00 70                    testl    $1879048192, %eax            
         0x300146a0: 74 3b                             je    59                              ; 0x300146dd
         0x300146a2: a9 01 00 00 00                    testl    $1, %eax                     
         0x300146a7: 74 51                             je    81                              ; 0x300146fa
         0x300146a9: 33 d0                             xorl    %eax, %edx                    
         0x300146ab: f7 c2 ff ff ff 0f                 testl    $268435455, %edx             
         0x300146b1: 0f 85 c5 00 00 00                 jne    197                            ; 0x3001477c
         0x300146b7: ba 00 00 00 70                    movl    $1879048192, %edx             
         0x300146bc: 48 0b d0                          orq    %rax, %rdx                     
         0x300146bf: 48 3b d0                          cmpq    %rax, %rdx                    
         0x300146c2: 48 8d 80 00 00 00 10              leaq    268435456(%rax), %rax         
....................................................................................................
 23.90%  <total for region 2>

....[Hottest Region 3]..............................................................................
 [0x300146db:0x30014794] in StubRoutines::c2_lock

         0x300146db: eb f3                             jmp    -13                            ; 0x300146d0
         0x300146dd: 49 89 c0                          movq    %rax, %r8                     
         0x300146e0: 49 81 e0 00 00 00 f0              andq    $-268435456, %r8              
         0x300146e7: 48 81 ca 00 00 00 10              orq    $268435456, %rdx               
         0x300146ee: 49 0b d0                          orq    %r8, %rdx                      
         0x300146f1: f0                                lock                                  
         0x300146f2: 48 0f b1 17                       cmpxchgq    %rdx, (%rdi)              
         0x300146f6: 75 98                             jne    -104                           ; 0x30014690
         0x300146f8: eb d6                             jmp    -42                            ; 0x300146d0
         0x300146fa: 49 b8 40 b2 01 30 83 7f 00 00     movabsq    $140201422860864, %r8      ; 0x7f833001b240 = libjvm.so
  1.11%  0x30014704: 49 8b 10                          movq    (%r8), %rdx                   
  2.02%  0x30014707: 41 89 c0                          movl    %eax, %r8d                    
         0x3001470a: 49 0f ba f0 1f                    btrq    $31, %r8                      
         0x3001470f: 4c 03 c2                          addq    %rdx, %r8                     
  1.00%  0x30014712: 41 83 b8 b8 00 00 00 0a           cmpl    $10, 184(%r8)                 
  6.10%  0x3001471a: 75 60                             jne    96                             ; 0x3001477c
  0.90%  0x3001471c: 65 48 8b 14 25 40 00 00 00        movq    %gs:64, %rdx                  ; thread:[64] = _current_thread
         0x30014725: 49 3b 50 28                       cmpq    40(%r8), %rdx                 
         0x30014729: 75 14                             jne    20                             ; 0x3001473f
  0.89%  0x3001472b: 41 83 00 01                       addl    $1, (%r8)                     
  0.39%  0x3001472f: 48 8d 05 00 00 00 00              leaq    (%rip), %rax                  
         0x30014736: 49 89 80 80 00 00 00              movq    %rax, 128(%r8)                
  0.54%  0x3001473d: eb 91                             jmp    -111                           ; 0x300146d0
  0.14%  0x3001473f: b9 32 00 00 00                    movl    $50, %ecx                     
         0x30014744: 49 8b 40 28                       movq    40(%r8), %rax                 
         0x30014748: 48 85 c0                          testq    %rax, %rax                   
         0x3001474b: 75 1e                             jne    30                             ; 0x3001476b
         0x3001474d: 48 33 c0                          xorq    %rax, %rax                    
  0.14%  0x30014750: f0                                lock                                  
         0x30014751: 49 0f b1 50 28                    cmpxchgq    %rdx, 40(%r8)             
  2.41%  0x30014756: 75 13                             jne    19                             ; 0x3001476b
         0x30014758: 48 8d 05 00 00 00 00              leaq    (%rip), %rax                  
  0.14%  0x3001475f: 49 89 80 80 00 00 00              movq    %rax, 128(%r8)                
         0x30014766: e9 65 ff ff ff                    jmp    -155                           ; 0x300146d0
         0x3001476b: ff c9                             decl    %ecx                          
         0x3001476d: 74 0d                             je    13                              ; 0x3001477c
         0x3001476f: f3 90                             pause                                 
         0x30014771: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
         0x3001477a: 74 c8                             je    -56                             ; 0x30014744
         0x3001477c: 48 89 9c 24 60 02 00 00           movq    %rbx, 608(%rsp)               
         0x30014784: 48 89 ac 24 50 02 00 00           movq    %rbp, 592(%rsp)               
         0x3001478c: 4c 89 a4 24 18 02 00 00           movq    %r12, 536(%rsp)               
         0x30014794: 4c 89 ac 24 10 02 00 00           movq    %r13, 528(%rsp)               
....................................................................................................
 15.81%  <total for region 3>

....[Hottest Region 4]..............................................................................
 [0x3002f802:0x3002f8fb] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum[Falcon]

         0x3002f802: 44 39 e2                          cmpl    %r12d, %edx                   
         0x3002f805: 75 1b                             jne    27                             ; 0x3002f822
         0x3002f807: 89 c2                             movl    %eax, %edx                    
         0x3002f809: 81 ca 00 00 00 70                 orl    $1879048192, %edx              
         0x3002f80f: 39 c2                             cmpl    %eax, %edx                    
         0x3002f811: 74 0f                             je    15                              ; 0x3002f822
         0x3002f813: 05 00 00 00 90                    addl    $2415919104, %eax             
         0x3002f818: 41 89 06                          movl    %eax, (%r14)                  
         0x3002f81b: 44 8b 64 24 34                    movl    52(%rsp), %r12d               
         0x3002f820: eb 18                             jmp    24                             ; 0x3002f83a
  0.14%  0x3002f822: 48 b8 80 46 01 30 00 00 00 00     movabsq    $805389952, %rax           ; 0x30014680 = StubRoutines::c2_lock
         0x3002f82c: 4c 89 f7                          movq    %r14, %rdi                    
         0x3002f82f: 44 8b 64 24 34                    movl    52(%rsp), %r12d               
  0.53%  0x3002f834: ff d0                             callq    *%rax                        ; 0x30014680 = StubRoutines::c2_lock
  0.10%  0x3002f836: 49 8d 4e 10                       leaq    16(%r14), %rcx                
         0x3002f83a: 85 ed                             testl    %ebp, %ebp                   
         0x3002f83c: 74 25                             je    37                              ; 0x3002f863
         0x3002f83e: 8b 29                             movl    (%rcx), %ebp                  
  0.13%  0x3002f840: 41 83 ff 03                       cmpl    $3, %r15d                     
         0x3002f844: 74 1b                             je    27                              ; 0x3002f861
         0x3002f846: 41 83 c7 fc                       addl    $-4, %r15d                    
         0x3002f84a: 4c 89 f7                          movq    %r14, %rdi                    
         0x3002f84d: 89 de                             movl    %ebx, %esi                    
  0.15%  0x3002f84f: 44 89 fa                          movl    %r15d, %edx                   
         0x3002f852: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
         0x3002f858: e8 a3 e0 fd ff                    callq    -139101                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  0.30%  0x3002f85d: 89 c3                             movl    %eax, %ebx                    
         0x3002f85f: 01 eb                             addl    %ebp, %ebx                    
  0.12%  0x3002f861: 01 eb                             addl    %ebp, %ebx                    
  0.14%  0x3002f863: 41 8b 06                          movl    (%r14), %eax                  
  0.43%  0x3002f866: a8 01                             testb    $1, %al                      
         0x3002f868: 74 4e                             je    78                              ; 0x3002f8b8
         0x3002f86a: 05 00 00 00 70                    addl    $1879048192, %eax             
         0x3002f86f: 41 89 06                          movl    %eax, (%r14)                  
  0.14%  0x3002f872: 44 01 eb                          addl    %r13d, %ebx                   
         0x3002f875: 41 8b 06                          movl    (%r14), %eax                  
         0x3002f878: a8 01                             testb    $1, %al                      
         0x3002f87a: 74 4d                             je    77                              ; 0x3002f8c9
         0x3002f87c: 05 00 00 00 70                    addl    $1879048192, %eax             
         0x3002f881: 41 89 06                          movl    %eax, (%r14)                  
  0.15%  0x3002f884: 44 01 e3                          addl    %r12d, %ebx                   
         0x3002f887: 41 8b 06                          movl    (%r14), %eax                  
         0x3002f88a: a8 01                             testb    $1, %al                      
         0x3002f88c: 74 19                             je    25                              ; 0x3002f8a7
         0x3002f88e: 05 00 00 00 70                    addl    $1879048192, %eax             
         0x3002f893: 41 89 06                          movl    %eax, (%r14)                  
  0.29%  0x3002f896: 89 d8                             movl    %ebx, %eax                    
         0x3002f898: 48 83 c4 38                       addq    $56, %rsp                     
         0x3002f89c: 5b                                popq    %rbx                          
  1.05%  0x3002f89d: 41 5c                             popq    %r12                          
         0x3002f89f: 41 5d                             popq    %r13                          
  0.46%  0x3002f8a1: 41 5e                             popq    %r14                          
  0.07%  0x3002f8a3: 41 5f                             popq    %r15                          
  0.07%  0x3002f8a5: 5d                                popq    %rbp                          
         0x3002f8a6: c3                                retq                                  
  0.24%  0x3002f8a7: 48 b8 40 4d 01 30 00 00 00 00     movabsq    $805391680, %rax           ; 0x30014d40 = StubRoutines::c2_unlock
         0x3002f8b1: 4c 89 f7                          movq    %r14, %rdi                    
         0x3002f8b4: ff d0                             callq    *%rax                        ; 0x30014d40 = StubRoutines::c2_unlock
  0.27%  0x3002f8b6: eb de                             jmp    -34                            ; 0x3002f896
  0.12%  0x3002f8b8: 48 b8 40 4d 01 30 00 00 00 00     movabsq    $805391680, %rax           ; 0x30014d40 = StubRoutines::c2_unlock
         0x3002f8c2: 4c 89 f7                          movq    %r14, %rdi                    
         0x3002f8c5: ff d0                             callq    *%rax                        ; 0x30014d40 = StubRoutines::c2_unlock
  0.16%  0x3002f8c7: eb a9                             jmp    -87                            ; 0x3002f872
  0.16%  0x3002f8c9: 48 b8 40 4d 01 30 00 00 00 00     movabsq    $805391680, %rax           ; 0x30014d40 = StubRoutines::c2_unlock
         0x3002f8d3: 4c 89 f7                          movq    %r14, %rdi                    
         0x3002f8d6: ff d0                             callq    *%rax                        ; 0x30014d40 = StubRoutines::c2_unlock
  0.12%  0x3002f8d8: eb aa                             jmp    -86                            ; 0x3002f884
         0x3002f8da: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f8e4: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f8e6: e9 0a fe ff ff                    jmp    -502                           ; 0x3002f6f5
         0x3002f8eb: 44 8b 64 24 34                    movl    52(%rsp), %r12d               
         0x3002f8f0: eb 83                             jmp    -125                           ; 0x3002f875
         0x3002f8f2: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x3002f8f6: e9 05 e9 fd ff                    jmp    -136955                        ; 0x3000e200 = StubRoutines::deoptimize
         0x3002f8fb: cc                                int3                                  
         Call tree size: 4
         0: caller_index: -1 bci: 0 callee: virtual jint com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.recursiveSum(jint, jint)
....................................................................................................
  5.37%  <total for region 4>

....[Hottest Regions]...............................................................................
 36.64%  [0x30014d40:0x30014fdf] in StubRoutines::c2_unlock
 23.90%  [0x30014680:0x30014af3] in StubRoutines::c2_lock
 15.81%  [0x300146db:0x30014794] in StubRoutines::c2_lock
  5.37%  [0x3002f802:0x3002f8fb] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum[Falcon]
  3.93%  [0x3002faf8:0x3002fbfd] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursive_method_calls[Falcon]
  2.41%  [0x3002f6a0:0x3002fcc6] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum[Falcon]
  1.72%  [0x30031ed9:0x30031f41] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub[Falcon]
  1.71%  [0x3002f6b2:0x3002f736] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum[Falcon]
  1.27%  [0x3002faa0:0x30030217] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursive_method_calls[Falcon]
  0.98%  [0x3002fc4f:0x3002fcd4] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursive_method_calls[Falcon]
  0.63%  [0x3002f780:0x3002f7e9] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum[Falcon]
  0.45%  [0xffffffffa9c94c86:0xffffffffa9c94c86] in [unknown] ([kernel.kallsyms])
  0.38%  [0x3002f706:0x3002f77a] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum[Falcon]
  0.35%  [0x300146a9:0x300146f8] in StubRoutines::c2_lock
  0.24%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.20%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eb8dcf:0xffffffffa9eb8e14] in [unknown] ([kernel.kallsyms])
  0.15%  [0x3002f7ca:0x3002f813] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum[Falcon]
  0.15%  [0x30014b00:0x30014ded] in StubRoutines::c2_unlock
  0.14%  [0xffffffffa9f0711f:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  3.40%  <...other 310 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 40.06%  StubRoutines::c2_lock
 36.79%  StubRoutines::c2_unlock
 10.78%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum[Falcon]
  6.40%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursive_method_calls[Falcon]
  3.98%  [unknown] ([kernel.kallsyms])
  1.72%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub[Falcon]
  0.15%  [unknown] (libjvm.so)
  0.02%  [unknown] (liborca.so.0.0.0.0)
  0.01%  PMEM::account_enabled; PMEM::accounts (libaztall.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  az_pmem_get_account_usage_tall; az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  <stub: method entry point (kind = zerolocals)>
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  PMEM_Account::fetch_stats (libaztall.so)
  0.01%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  syscall (libc-2.31.so)
  0.00%  __pthread_mutex_lock (libpthread-2.31.so)
  0.00%  __errno_location (libpthread-2.31.so)
  0.00%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.03%  <...other 16 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.76%  <generated code>
  3.98%  <native code in ([kernel.kallsyms])>
  0.15%  <native code in (libjvm.so)>
  0.05%  <native code in (libaztall.so)>
  0.02%  <native code in (libc-2.31.so)>
  0.02%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.00%  <native code in ([vdso])>
....................................................................................................
100.00%  <totals>



# Run complete. Total time: 00:11:11

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

Benchmark                                                     Mode  Cnt     Score   Error  Units
LockCoarseningBenchmark.baseline                              avgt    5    15.857 ± 0.002  ns/op
LockCoarseningBenchmark.baseline:·asm                         avgt            NaN            ---
LockCoarseningBenchmark.chain_method_calls                    avgt    5    15.856 ± 0.002  ns/op
LockCoarseningBenchmark.chain_method_calls:·asm               avgt            NaN            ---
LockCoarseningBenchmark.conditional_chain_method_calls        avgt    5    15.863 ± 0.003  ns/op
LockCoarseningBenchmark.conditional_chain_method_calls:·asm   avgt            NaN            ---
LockCoarseningBenchmark.conditional_nested_method_calls       avgt    5    15.863 ± 0.009  ns/op
LockCoarseningBenchmark.conditional_nested_method_calls:·asm  avgt            NaN            ---
LockCoarseningBenchmark.nested_synchronized                   avgt    5  1623.245 ± 5.045  ns/op
LockCoarseningBenchmark.nested_synchronized:·asm              avgt            NaN            ---
LockCoarseningBenchmark.recursive_method_calls                avgt    5   255.747 ± 0.364  ns/op
LockCoarseningBenchmark.recursive_method_calls:·asm           avgt            NaN            ---
