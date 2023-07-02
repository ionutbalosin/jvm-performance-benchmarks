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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark.cached_enum_values

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 54.700 ns/op
# Warmup Iteration   2: 54.379 ns/op
# Warmup Iteration   3: 54.498 ns/op
# Warmup Iteration   4: 54.229 ns/op
# Warmup Iteration   5: 54.245 ns/op
Iteration   1: 54.254 ns/op
Iteration   2: 54.279 ns/op
Iteration   3: 54.332 ns/op
Iteration   4: 64.664 ns/op
Iteration   5: 65.596 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark.cached_enum_values":
  58.625 ±(99.9%) 22.902 ns/op [Average]
  (min, avg, max) = (54.254, 58.625, 65.596), stdev = 5.947
  CI (99.9%): [35.723, 81.526] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark.cached_enum_values:·asm":
PrintAssembly processed: 134535 total address lines.
Perf output processed (skipped 56.481 seconds):
 Column 1: cycles (51425 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3003040e:0x300304c0] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::cached_enum_values[Falcon]

         0x3003040e: 0f 84 f2 00 00 00                 je    242                             ; 0x30030506
         0x30030414: 2e 2e 2e 2e 2e 2e 2e 0f b6 44     movzbl    %cs:16(%rax,%rsi), %eax     
         0x30030420: 41 3a 44 31 10                    cmpb    16(%r9,%rsi), %al             
         0x30030425: 75 29                             jne    41                             ; 0x30030450
         0x30030427: e9 da 00 00 00                    jmp    218                            ; 0x30030506
         0x3003042c: c5 fa 6f 44 30 10                 vmovdqu    16(%rax,%rsi), %xmm0       
         0x30030432: c4 c1 79 ef 44 31 10              vpxor    16(%r9,%rsi), %xmm0, %xmm0   
         0x30030439: 2e 2e c4 e2 79 17 c0              vptest    %xmm0, %xmm0                
         0x30030440: 0f 84 99 00 00 00                 je    153                             ; 0x300304df
         0x30030446: 66 2e 0f 1f 84 00 00 00 00 00     nopw    %cs:(%rax,%rax)               
 14.43%  0x30030450: 49 83 fc 28                       cmpq    $40, %r12                     
         0x30030454: 0f 83 a5 03 00 00                 jae    933                            ; 0x300307ff
  0.93%  0x3003045a: 49 ff c4                          incq    %r12                          
  0.06%  0x3003045d: 4e 8b 44 e2 10                    movq    16(%rdx,%r12,8), %r8          
  0.02%  0x30030462: 4d 85 c3                          testq    %r8, %r11                    
         0x30030465: 0f 85 5b 01 00 00                 jne    347                            ; 0x300305c6
 12.88%  0x3003046b: 4d 8b 50 18                       movq    24(%r8), %r10                 
  0.63%  0x3003046f: 4d 85 d3                          testq    %r10, %r11                   
         0x30030472: 0f 85 70 01 00 00                 jne    368                            ; 0x300305e8
  1.94%  0x30030478: 0f 1f 84 00 00 00 00 00           nopl    (%rax,%rax)                   
  0.03%  0x30030480: 4d 85 d2                          testq    %r10, %r10                   
         0x30030483: 0f 84 61 03 00 00                 je    865                             ; 0x300307ea
 12.57%  0x30030489: 49 39 ca                          cmpq    %rcx, %r10                    
         0x3003048c: 0f 85 ce fe ff ff                 jne    -306                           ; 0x30030360
  1.80%  0x30030492: eb 72                             jmp    114                            ; 0x30030506
  0.14%  0x30030494: 2e 2e 2e 2e 2e 2e 2e 48 8b 7c     movq    %cs:16(%rax,%rsi), %rdi       
         0x300304a0: 49 3b 7c 31 10                    cmpq    16(%r9,%rsi), %rdi            
         0x300304a5: 75 a9                             jne    -87                            ; 0x30030450
         0x300304a7: 48 83 c6 08                       addq    $8, %rsi                      
         0x300304ab: e9 40 ff ff ff                    jmp    -192                           ; 0x300303f0
         0x300304b0: 8b 7c 30 10                       movl    16(%rax,%rsi), %edi           
         0x300304b4: 41 3b 7c 31 10                    cmpl    16(%r9,%rsi), %edi            
         0x300304b9: 75 95                             jne    -107                           ; 0x30030450
         0x300304bb: 48 83 c6 04                       addq    $4, %rsi                      
         0x300304bf: 90                                nop                                   
         0x300304c0: e9 35 ff ff ff                    jmp    -203                           ; 0x300303fa
....................................................................................................
 45.44%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x300302a0:0x300303d8] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::cached_enum_values[Falcon]

         offset: 293 length: 5 scope: 1 bci: 0
         offset: 298 length: 35 scope: 0 bci: 0
         offset: 333 length: 5 scope: 1 bci: 0
         offset: 338 length: 39 scope: 0 bci: 0
         <nmethodAdapter compile_id='246' compile_kind='osr' level='2' size='40' address='0x00007f8a80299950' dependencies_offset='32' stamp='80829.126'/>
         5.797:  246    %    3 inlining into com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.EnumValueLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub (Lorg/openjdk/jmh/runner/InfraControl;Lorg/openjdk/jmh/results/RawResults;Lorg/openjdk/jmh/infra/BenchmarkParams;Lorg/openjdk/jmh/infra/IterationParams;Lorg/openjdk/jmh/infra/ThreadParams;Lorg/openjdk/jmh/infra/Blackhole;Lorg/openjdk/jmh/infra/Control;ILcom/ionutbalosin/jvm/performance/benchmarks/micro/compiler/jmh_generated/EnumValueLookupBenchmark_jmhType;)V @ 13 (tid 138055) (kid 1412 pkid/prev 1388/NA) (mid 1445894 pmid 18277) (bytes 57) (generation 0) (lvl O0) (score 0) (score_updated 0ms; orig 0; promoted 1) (rank 0, time-between-promotions 2ms) (wait 2ms)
         5.854:            - @ 17   com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::cached_enum_values (8 bytes)   3 call sites, cost=never, reason=noinline [method excluded by CompileCommand]
         5.854:              @ 20   org.openjdk.jmh.infra.Blackhole::consume (19 bytes)   cost=always, frequency=536870911.078125, reason=always inline attribute [forced by CompileCommand]
           # {method}{0x200026554a8} cached_enum_values[Falcon] ()Lcom/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car; in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark
         Decoding CodeBlob 0x30030200
  0.74%  0x300302a0: eb f9                             pushq    %r15                         
  0.75%  0x300302a2: 41 56                             pushq    %r14                         
  1.61%  0x300302a4: 41 55                             pushq    %r13                         
  0.24%  0x300302a6: 41 54                             pushq    %r12                         
  0.38%  0x300302a8: 53                                pushq    %rbx                         
  0.42%  0x300302a9: 48 89 fe                          movq    %rdi, %rsi                    
  0.20%  0x300302ac: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  0.01%  0x300302b5: 0f 85 4b 03 00 00                 jne    843                            ; 0x30030606
  0.06%  0x300302bb: 48 8b 4e 18                       movq    24(%rsi), %rcx                
  0.41%  0x300302bf: b8 48 00 f8 2f                    movl    $804782152, %eax              ; 804782152 = clearable_gc_phase_trap_mask
  0.21%  0x300302c4: 4c 8b 18                          movq    (%rax), %r11                  
  0.01%  0x300302c7: 49 85 cb                          testq    %rcx, %r11                   
         0x300302ca: 0f 85 47 03 00 00                 jne    839                            ; 0x30030617
  0.05%  0x300302d0: 48 b8 18 f4 ff 2c 00 00 00 00     movabsq    $754971672, %rax           ; 0x2cfff418 = 
  0.37%  0x300302da: 2e 2e 2e 48 8b 10                 movq    %cs:(%rax), %rdx              
  0.20%  0x300302e0: 49 85 d3                          testq    %rdx, %r11                   
         0x300302e3: 0f 85 49 03 00 00                 jne    841                            ; 0x30030632
  0.01%  0x300302e9: 4c 8b 42 10                       movq    16(%rdx), %r8                 
  1.04%  0x300302ed: 4d 85 c3                          testq    %r8, %r11                    
         0x300302f0: 0f 85 5d 03 00 00                 jne    861                            ; 0x30030653
  0.64%  0x300302f6: 48 85 c9                          testq    %rcx, %rcx                   
         0x300302f9: 0f 84 df 03 00 00                 je    991                             ; 0x300306de
         0x300302ff: 4d 8b 50 18                       movq    24(%r8), %r10                 
  1.94%  0x30030303: 4c 8b 49 08                       movq    8(%rcx), %r9                  
         0x30030307: 4d 85 cb                          testq    %r9, %r11                    
         0x3003030a: 0f 85 5e 03 00 00                 jne    862                            ; 0x3003066e
         0x30030310: 0f b6 59 14                       movzbl    20(%rcx), %ebx              
         0x30030314: 4d 85 d3                          testq    %r10, %r11                   
         0x30030317: 0f 85 6c 03 00 00                 jne    876                            ; 0x30030689
  0.65%  0x3003031d: 0f 1f 00                          nopl    (%rax)                        
         0x30030320: 4d 85 c9                          testq    %r9, %r9                     
         0x30030323: 0f 84 bf 01 00 00                 je    447                             ; 0x300304e8
         0x30030329: 4d 85 d2                          testq    %r10, %r10                   
         0x3003032c: 0f 84 b8 04 00 00                 je    1208                            ; 0x300307ea
  0.30%  0x30030332: 49 39 ca                          cmpq    %rcx, %r10                    
         0x30030335: 0f 84 cb 01 00 00                 je    459                             ; 0x30030506
  0.53%  0x3003033b: 45 8b 71 08                       movl    8(%r9), %r14d                 
         0x3003033f: 45 89 f7                          movl    %r14d, %r15d                  
         0x30030342: 41 81 e7 e0 ff ff 7f              andl    $2147483616, %r15d            
  0.12%  0x30030349: 45 31 e4                          xorl    %r12d, %r12d                  
  0.55%  0x3003034c: 49 bd c0 c8 00 30 00 00 00 00     movabsq    $805357760, %r13           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x30030356: 66 2e 0f 1f 84 00 00 00 00 00     nopw    %cs:(%rax,%rax)               
  2.12%  0x30030360: 49 8b 42 08                       movq    8(%r10), %rax                 
  1.59%  0x30030364: 49 85 c3                          testq    %rax, %r11                   
         0x30030367: 0f 85 47 02 00 00                 jne    583                            ; 0x300305b4
  1.90%  0x3003036d: 41 38 5a 14                       cmpb    %bl, 20(%r10)                 
         0x30030371: 0f 85 d9 00 00 00                 jne    217                            ; 0x30030450
 15.40%  0x30030377: 66 0f 1f 84 00 00 00 00 00        nopw    (%rax,%rax)                   
  1.65%  0x30030380: 4c 39 c8                          cmpq    %r9, %rax                     
         0x30030383: 0f 84 7d 01 00 00                 je    381                             ; 0x30030506
  3.41%  0x30030389: 48 85 c0                          testq    %rax, %rax                   
         0x3003038c: 0f 84 be 00 00 00                 je    190                             ; 0x30030450
  4.83%  0x30030392: 44 39 70 08                       cmpl    %r14d, 8(%rax)                
  0.00%  0x30030396: 0f 85 b4 00 00 00                 jne    180                            ; 0x30030450
  0.99%  0x3003039c: 2e 2e 31 f6                       xorl    %esi, %esi                    
         0x300303a0: 41 83 fe 20                       cmpl    $32, %r14d                    
         0x300303a4: 72 37                             jb    55                              ; 0x300303dd
         0x300303a6: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x300303b5: 66 66 2e 0f 1f 84 00 00 00 00     nopw    %cs:(%rax,%rax)               
         0x300303c0: c5 fe 6f 44 30 10                 vmovdqu    16(%rax,%rsi), %ymm0       
         0x300303c6: c4 c1 7d ef 44 31 10              vpxor    16(%r9,%rsi), %ymm0, %ymm0   
         0x300303cd: c4 e2 7d 17 c0                    vptest    %ymm0, %ymm0                
         0x300303d2: 75 7c                             jne    124                            ; 0x30030450
         0x300303d4: 48 83 c6 20                       addq    $32, %rsi                     
         0x300303d8: 4c 39 fe                          cmpq    %r15, %rsi                    
....................................................................................................
 43.31%  <total for region 2>

....[Hottest Regions]...............................................................................
 45.44%  [0x3003040e:0x300304c0] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::cached_enum_values[Falcon]
 43.31%  [0x300302a0:0x300303d8] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::cached_enum_values[Falcon]
  4.18%  [0x300304e3:0x30030540] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::cached_enum_values[Falcon]
  2.31%  [0x300324dc:0x30032544] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.EnumValueLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub[Falcon]
  0.67%  [0x300303a4:0x30030420] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::cached_enum_values[Falcon]
  0.21%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.18%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9f0711c:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eb93b5:0xffffffffa9eb9461] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f695f6:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffaa28ead0:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eff400:0xffffffffa9eff436] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ee5876:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ed0800:0xffffffffa9ed0860] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  2.19%  <...other 316 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 93.60%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::cached_enum_values[Falcon]
  3.80%  [unknown] ([kernel.kallsyms])
  2.31%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.EnumValueLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub[Falcon]
  0.17%  [unknown] (libjvm.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  is_thread_initialized (libazsys3.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  PMEM::account_enabled; PMEM::accounts (libaztall.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.01%  [unknown] ([vdso])
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  syscall (libc-2.31.so)
  0.00%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  sprintf (libc-2.31.so)
  0.00%  _dl_addr (libc-2.31.so)
  0.00%  __pthread_once (libpthread-2.31.so)
  0.02%  <...other 10 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.92%  <generated code>
  3.80%  <native code in ([kernel.kallsyms])>
  0.17%  <native code in (libjvm.so)>
  0.04%  <native code in (libaztall.so)>
  0.04%  <native code in (libc-2.31.so)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in ([vdso])>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark.enum_values

# Run progress: 50.00% complete, ETA 00:01:52
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 55.384 ns/op
# Warmup Iteration   2: 54.595 ns/op
# Warmup Iteration   3: 54.454 ns/op
# Warmup Iteration   4: 54.468 ns/op
# Warmup Iteration   5: 54.563 ns/op
Iteration   1: 65.496 ns/op
Iteration   2: 65.691 ns/op
Iteration   3: 65.409 ns/op
Iteration   4: 65.966 ns/op
Iteration   5: 65.560 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark.enum_values":
  65.625 ±(99.9%) 0.835 ns/op [Average]
  (min, avg, max) = (65.409, 65.625, 65.966), stdev = 0.217
  CI (99.9%): [64.790, 66.460] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark.enum_values:·asm":
PrintAssembly processed: 134589 total address lines.
Perf output processed (skipped 57.013 seconds):
 Column 1: cycles (51407 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002fe0e:0x3002fec0] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::enum_values[Falcon]

         0x3002fe0e: 0f 84 95 01 00 00                 je    405                             ; 0x3002ffa9
         0x3002fe14: 2e 2e 2e 2e 2e 2e 2e 0f b6 44     movzbl    %cs:16(%rax,%rsi), %eax     
         0x3002fe20: 41 3a 44 31 10                    cmpb    16(%r9,%rsi), %al             
         0x3002fe25: 75 29                             jne    41                             ; 0x3002fe50
         0x3002fe27: e9 7d 01 00 00                    jmp    381                            ; 0x3002ffa9
         0x3002fe2c: c5 fa 6f 44 30 10                 vmovdqu    16(%rax,%rsi), %xmm0       
         0x3002fe32: c4 c1 79 ef 44 31 10              vpxor    16(%r9,%rsi), %xmm0, %xmm0   
         0x3002fe39: 2e 2e c4 e2 79 17 c0              vptest    %xmm0, %xmm0                
         0x3002fe40: 0f 84 99 00 00 00                 je    153                             ; 0x3002fedf
         0x3002fe46: 66 2e 0f 1f 84 00 00 00 00 00     nopw    %cs:(%rax,%rax)               
 11.64%  0x3002fe50: 49 83 fc 28                       cmpq    $40, %r12                     
         0x3002fe54: 0f 83 c7 03 00 00                 jae    967                            ; 0x30030221
  2.06%  0x3002fe5a: 49 ff c4                          incq    %r12                          
  0.18%  0x3002fe5d: 4e 8b 44 e2 10                    movq    16(%rdx,%r12,8), %r8          
  0.03%  0x3002fe62: 4d 85 c3                          testq    %r8, %r11                    
         0x3002fe65: 0f 85 60 01 00 00                 jne    352                            ; 0x3002ffcb
 10.11%  0x3002fe6b: 4d 8b 50 18                       movq    24(%r8), %r10                 
  1.55%  0x3002fe6f: 4d 85 d3                          testq    %r10, %r11                   
         0x3002fe72: 0f 85 75 01 00 00                 jne    373                            ; 0x3002ffed
  3.67%  0x3002fe78: 0f 1f 84 00 00 00 00 00           nopl    (%rax,%rax)                   
  0.03%  0x3002fe80: 4d 85 d2                          testq    %r10, %r10                   
         0x3002fe83: 0f 84 83 03 00 00                 je    899                             ; 0x3003020c
 10.03%  0x3002fe89: 49 39 ca                          cmpq    %rcx, %r10                    
         0x3002fe8c: 0f 85 ce fe ff ff                 jne    -306                           ; 0x3002fd60
  5.42%  0x3002fe92: e9 12 01 00 00                    jmp    274                            ; 0x3002ffa9
  0.38%  0x3002fe97: 2e 2e 2e 2e 48 8b 7c 30 10        movq    %cs:16(%rax,%rsi), %rdi       
         0x3002fea0: 49 3b 7c 31 10                    cmpq    16(%r9,%rsi), %rdi            
         0x3002fea5: 75 a9                             jne    -87                            ; 0x3002fe50
         0x3002fea7: 48 83 c6 08                       addq    $8, %rsi                      
         0x3002feab: e9 40 ff ff ff                    jmp    -192                           ; 0x3002fdf0
         0x3002feb0: 8b 7c 30 10                       movl    16(%rax,%rsi), %edi           
         0x3002feb4: 41 3b 7c 31 10                    cmpl    16(%r9,%rsi), %edi            
         0x3002feb9: 75 95                             jne    -107                           ; 0x3002fe50
         0x3002febb: 48 83 c6 04                       addq    $4, %rsi                      
         0x3002febf: 90                                nop                                   
         0x3002fec0: e9 35 ff ff ff                    jmp    -203                           ; 0x3002fdfa
....................................................................................................
 45.09%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x3002fca0:0x30030a49] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::enum_values[Falcon]

         0x30030a28: 48 8d 72 10                       leaq    16(%rdx), %rsi                
         0x30030a2c: 49 b8 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %r8            ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x30030a36: 48 89 c7                          movq    %rax, %rdi                    
         0x30030a39: 2e 2e 2e 2e 41 ff d0              callq    *%r8                         ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x30030a40: e9 ad fe ff ff                    jmp    -339                           ; 0x300308f2
         0x30030a45: 00 00                             addb    %al, (%rax)                   
         0x30030a47: 00 00                             addb    %al, (%rax)                   
         0x30030a49: 00 00                             addb    %al, (%rax)                   
           # {method}{0x20002655610} enum_values[Falcon] ()Lcom/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car; in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark
         Decoding CodeBlob 0x3002fc00
  0.99%  0x3002fca0: eb f9                             pushq    %r15                         
  1.14%  0x3002fca2: 41 56                             pushq    %r14                         
  1.47%  0x3002fca4: 41 55                             pushq    %r13                         
  0.09%  0x3002fca6: 41 54                             pushq    %r12                         
  0.32%  0x3002fca8: 53                                pushq    %rbx                         
  0.36%  0x3002fca9: 48 89 fe                          movq    %rdi, %rsi                    
  0.10%  0x3002fcac: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  0.00%  0x3002fcb5: 0f 85 b9 03 00 00                 jne    953                            ; 0x30030074
  0.08%  0x3002fcbb: 48 8b 4e 18                       movq    24(%rsi), %rcx                
  0.33%  0x3002fcbf: b8 48 00 f8 2f                    movl    $804782152, %eax              ; 804782152 = clearable_gc_phase_trap_mask
  0.10%  0x3002fcc4: 4c 8b 18                          movq    (%rax), %r11                  
         0x3002fcc7: 49 85 cb                          testq    %rcx, %r11                   
         0x3002fcca: 0f 85 b5 03 00 00                 jne    949                            ; 0x30030085
  0.08%  0x3002fcd0: 48 b8 a8 f9 ff 2c 00 00 00 00     movabsq    $754973096, %rax           ; 0x2cfff9a8 = 
  0.43%  0x3002fcda: 2e 2e 2e 48 8b 10                 movq    %cs:(%rax), %rdx              
  0.09%  0x3002fce0: 49 85 d3                          testq    %rdx, %r11                   
         0x3002fce3: 0f 85 bc 03 00 00                 jne    956                            ; 0x300300a5
  0.00%  0x3002fce9: 4c 8b 42 10                       movq    16(%rdx), %r8                 
  1.04%  0x3002fced: 4d 85 c3                          testq    %r8, %r11                    
         0x3002fcf0: 0f 85 d0 03 00 00                 jne    976                            ; 0x300300c6
  0.63%  0x3002fcf6: 48 85 c9                          testq    %rcx, %rcx                   
         0x3002fcf9: 0f 84 26 04 00 00                 je    1062                            ; 0x30030125
         0x3002fcff: 4d 8b 50 18                       movq    24(%r8), %r10                 
  1.65%  0x3002fd03: 4c 8b 49 08                       movq    8(%rcx), %r9                  
         0x3002fd07: 4d 85 cb                          testq    %r9, %r11                    
         0x3002fd0a: 0f 85 d5 03 00 00                 jne    981                            ; 0x300300e5
         0x3002fd10: 0f b6 59 14                       movzbl    20(%rcx), %ebx              
         0x3002fd14: 4d 85 d3                          testq    %r10, %r11                   
         0x3002fd17: 0f 85 e8 03 00 00                 jne    1000                           ; 0x30030105
  0.62%  0x3002fd1d: 0f 1f 00                          nopl    (%rax)                        
         0x3002fd20: 4d 85 c9                          testq    %r9, %r9                     
         0x3002fd23: 0f 84 bf 01 00 00                 je    447                             ; 0x3002fee8
         0x3002fd29: 4d 85 d2                          testq    %r10, %r10                   
         0x3002fd2c: 0f 84 da 04 00 00                 je    1242                            ; 0x3003020c
  0.64%  0x3002fd32: 49 39 ca                          cmpq    %rcx, %r10                    
         0x3002fd35: 0f 84 6e 02 00 00                 je    622                             ; 0x3002ffa9
  0.46%  0x3002fd3b: 45 8b 71 08                       movl    8(%r9), %r14d                 
         0x3002fd3f: 45 89 f7                          movl    %r14d, %r15d                  
         0x3002fd42: 41 81 e7 e0 ff ff 7f              andl    $2147483616, %r15d            
  0.16%  0x3002fd49: 45 31 e4                          xorl    %r12d, %r12d                  
  0.39%  0x3002fd4c: 49 bd c0 c8 00 30 00 00 00 00     movabsq    $805357760, %r13           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002fd56: 66 2e 0f 1f 84 00 00 00 00 00     nopw    %cs:(%rax,%rax)               
  4.74%  0x3002fd60: 49 8b 42 08                       movq    8(%r10), %rax                 
  1.16%  0x3002fd64: 49 85 c3                          testq    %rax, %r11                   
         0x3002fd67: 0f 85 4c 02 00 00                 jne    588                            ; 0x3002ffb9
  1.38%  0x3002fd6d: 41 38 5a 14                       cmpb    %bl, 20(%r10)                 
         0x3002fd71: 0f 85 d9 00 00 00                 jne    217                            ; 0x3002fe50
  7.64%  0x3002fd77: 66 0f 1f 84 00 00 00 00 00        nopw    (%rax,%rax)                   
  3.83%  0x3002fd80: 4c 39 c8                          cmpq    %r9, %rax                     
         0x3002fd83: 0f 84 20 02 00 00                 je    544                             ; 0x3002ffa9
  2.16%  0x3002fd89: 48 85 c0                          testq    %rax, %rax                   
         0x3002fd8c: 0f 84 be 00 00 00                 je    190                             ; 0x3002fe50
  4.46%  0x3002fd92: 44 39 70 08                       cmpl    %r14d, 8(%rax)                
         0x3002fd96: 0f 85 b4 00 00 00                 jne    180                            ; 0x3002fe50
  0.66%  0x3002fd9c: 2e 2e 31 f6                       xorl    %esi, %esi                    
         0x3002fda0: 41 83 fe 20                       cmpl    $32, %r14d                    
         0x3002fda4: 72 37                             jb    55                              ; 0x3002fddd
         0x3002fda6: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x3002fdb5: 66 66 2e 0f 1f 84 00 00 00 00     nopw    %cs:(%rax,%rax)               
         0x3002fdc0: c5 fe 6f 44 30 10                 vmovdqu    16(%rax,%rsi), %ymm0       
         0x3002fdc6: c4 c1 7d ef 44 31 10              vpxor    16(%r9,%rsi), %ymm0, %ymm0   
         0x3002fdcd: c4 e2 7d 17 c0                    vptest    %ymm0, %ymm0                
         0x3002fdd2: 75 7c                             jne    124                            ; 0x3002fe50
         0x3002fdd4: 48 83 c6 20                       addq    $32, %rsi                     
         0x3002fdd8: 4c 39 fe                          cmpq    %r15, %rsi                    
....................................................................................................
 37.19%  <total for region 2>

....[Hottest Region 3]..............................................................................
 [0x3002ff7d:0x3002ffe0] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::enum_values[Falcon]

         0x3002ff7d: 4d 8b 50 18                       movq    24(%r8), %r10                 
         0x3002ff81: 4d 85 d3                          testq    %r10, %r11                   
         0x3002ff84: 0f 85 cf 00 00 00                 jne    207                            ; 0x30030059
         0x3002ff8a: 4d 85 d2                          testq    %r10, %r10                   
         0x3002ff8d: 0f 84 79 02 00 00                 je    633                             ; 0x3003020c
         0x3002ff93: 48 83 c2 10                       addq    $16, %rdx                     
         0x3002ff97: 49 83 c1 02                       addq    $2, %r9                       
         0x3002ff9b: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x3002ffa0: 49 39 ca                          cmpq    %rcx, %r10                    
         0x3002ffa3: 0f 85 77 ff ff ff                 jne    -137                           ; 0x3002ff20
  2.68%  0x3002ffa9: 4c 89 c0                          movq    %r8, %rax                     
         0x3002ffac: 5b                                popq    %rbx                          
  3.47%  0x3002ffad: 41 5c                             popq    %r12                          
  0.46%  0x3002ffaf: 41 5d                             popq    %r13                          
  0.63%  0x3002ffb1: 41 5e                             popq    %r14                          
         0x3002ffb3: 41 5f                             popq    %r15                          
  0.38%  0x3002ffb5: c5 f8 77                          vzeroupper                            
  0.56%  0x3002ffb8: c3                                retq                                  
         0x3002ffb9: 49 8d 72 08                       leaq    8(%r10), %rsi                 
         0x3002ffbd: 48 89 c7                          movq    %rax, %rdi                    
         0x3002ffc0: c5 f8 77                          vzeroupper                            
         0x3002ffc3: 41 ff d5                          callq    *%r13                        
         0x3002ffc6: e9 a2 fd ff ff                    jmp    -606                           ; 0x3002fd6d
         0x3002ffcb: 4a 8d 34 e2                       leaq    (%rdx,%r12,8), %rsi           
         0x3002ffcf: 48 83 c6 10                       addq    $16, %rsi                     
         0x3002ffd3: 48 b8 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rax           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002ffdd: 4c 89 c7                          movq    %r8, %rdi                     
         0x3002ffe0: c5 f8 77                          vzeroupper                            
....................................................................................................
  8.17%  <total for region 3>

....[Hottest Regions]...............................................................................
 45.09%  [0x3002fe0e:0x3002fec0] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::enum_values[Falcon]
 37.19%  [0x3002fca0:0x30030a49] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::enum_values[Falcon]
  8.17%  [0x3002ff7d:0x3002ffe0] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::enum_values[Falcon]
  4.73%  [0x300326d9:0x30032744] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.EnumValueLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub[Falcon]
  0.62%  [0x3002fda4:0x3002fe20] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::enum_values[Falcon]
  0.25%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.19%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.18%  [0xffffffffa9f0711c:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9c0f7a2:0xffffffffa9c0f7a3] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eb8dcf:0xffffffffa9eb8de6] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f211f9:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f686c0:0xffffffffa9f6875f] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9ed0740:0xffffffffa9ed07b2] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f69646:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eff400:0xffffffffa9eff43c] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ee587e:0xffffffffa9ee588c] in [unknown] ([kernel.kallsyms])
  2.30%  <...other 344 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 91.07%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::enum_values[Falcon]
  4.73%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.EnumValueLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub[Falcon]
  3.89%  [unknown] ([kernel.kallsyms])
  0.19%  [unknown] (libjvm.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  az_pmem_get_account_usage_tall (libaztall.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  is_thread_initialized (libazsys3.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  PMEM::account_enabled (libaztall.so)
  0.01%  [unknown] ([vdso])
  0.00%  __pthread_mutex_lock (libpthread-2.31.so)
  0.00%  <stub: method entry point (kind = zerolocals)>
  0.00%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  clock_gettime (libc-2.31.so)
  0.00%  VMEM::get_account_usage (libaztall.so)
  0.00%  _dl_addr (libc-2.31.so)
  0.00%  _IO_padn (libc-2.31.so)
  0.03%  <...other 13 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.81%  <generated code>
  3.89%  <native code in ([kernel.kallsyms])>
  0.19%  <native code in (libjvm.so)>
  0.04%  <native code in (libaztall.so)>
  0.03%  <native code in (libc-2.31.so)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in ([vdso])>
  0.00%  <native code in (kvm.ko)>
  0.00%  <native code in (libstdc++.so.6)>
....................................................................................................
100.00%  <totals>



# Run complete. Total time: 00:03:44

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

Benchmark                                         Mode  Cnt   Score    Error  Units
EnumValueLookupBenchmark.cached_enum_values       avgt    5  58.625 ± 22.902  ns/op
EnumValueLookupBenchmark.cached_enum_values:·asm  avgt          NaN             ---
EnumValueLookupBenchmark.enum_values              avgt    5  65.625 ±  0.835  ns/op
EnumValueLookupBenchmark.enum_values:·asm         avgt          NaN             ---
