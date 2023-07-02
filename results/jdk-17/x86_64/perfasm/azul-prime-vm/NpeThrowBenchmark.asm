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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark.explicit_throw_npe
# Parameters: (size = 1024, threshold = 0.0)

# Run progress: 0.00% complete, ETA 00:10:00
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5298.305 ns/op
# Warmup Iteration   2: 5267.693 ns/op
# Warmup Iteration   3: 5267.881 ns/op
# Warmup Iteration   4: 5268.106 ns/op
# Warmup Iteration   5: 5267.697 ns/op
Iteration   1: 5267.336 ns/op
Iteration   2: 5267.275 ns/op
Iteration   3: 5267.093 ns/op
Iteration   4: 5267.217 ns/op
Iteration   5: 5267.422 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark.explicit_throw_npe":
  5267.269 ±(99.9%) 0.479 ns/op [Average]
  (min, avg, max) = (5267.093, 5267.269, 5267.422), stdev = 0.124
  CI (99.9%): [5266.790, 5267.747] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark.explicit_throw_npe:·asm":
PrintAssembly processed: 134385 total address lines.
Perf output processed (skipped 56.510 seconds):
 Column 1: cycles (51398 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f2a0:0x3002f2dd] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::explicitThrowNpe[Falcon]

         0x3002f2b2: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f2bc: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f2be: 66 90                             nop                                   
         0x3002f2c0: eb eb                             jmp    -21                            ; 0x3002f2ad
         0x3002f2c2: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f2cc: 41 bb 07 00 00 00                 movl    $7, %r11d                     
         0x3002f2d2: ff d0                             callq    *%rax                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         -----------
           # {method}{0x200026581e8} explicitThrowNpe[Falcon] (Lcom/ionutbalosin/jvm/performance/benchmarks/micro/compiler/NpeThrowBenchmark$Wrapper;)I in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/NpeThrowBenchmark
         Decoding CodeBlob 0x3002f200
 11.49%  0x3002f2a0: eb f9                             pushq    %rax                         
  6.46%  0x3002f2a2: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 14.24%  0x3002f2ab: 75 05                             jne    5                              ; 0x3002f2b2
  7.19%  0x3002f2ad: 8b 46 08                          movl    8(%rsi), %eax                 
  1.19%  0x3002f2b0: 59                                popq    %rcx                          
 13.12%  0x3002f2b1: c3                                retq                                  
         0x3002f2b2: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f2bc: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f2be: 66 90                             nop                                   
         0x3002f2c0: eb eb                             jmp    -21                            ; 0x3002f2ad
         0x3002f2c2: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f2cc: 41 bb 07 00 00 00                 movl    $7, %r11d                     
         0x3002f2d2: ff d0                             callq    *%rax                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f2d4: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x3002f2d8: e9 23 ef fd ff                    jmp    -135389                        ; 0x3000e200 = StubRoutines::deoptimize
         0x3002f2dd: cc                                int3                                  
....................................................................................................
 53.69%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x3002f531:0x3002f6e7] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::explicit_throw_npe[Falcon]

         0x3002f531: 48 89 df                          movq    %rbx, %rdi                    
         0x3002f534: 0f 1f 40 00                       nopl    (%rax)                        
         0x3002f538: e8 c3 e3 fd ff                    callq    -138301                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x3002f53d: 48 8b 44 24 30                    movq    48(%rsp), %rax                
         0x3002f542: ff c0                             incl    %eax                          
         0x3002f544: 48 89 44 24 30                    movq    %rax, 48(%rsp)                
         0x3002f549: 49 83 c4 08                       addq    $8, %r12                      
         0x3002f54d: 48 89 e8                          movq    %rbp, %rax                    
         0x3002f550: 48 ff c8                          decq    %rax                          
         0x3002f553: 75 cb                             jne    -53                            ; 0x3002f520
  0.01%  0x3002f555: 48 83 c4 48                       addq    $72, %rsp                     
         0x3002f559: 5b                                popq    %rbx                          
  0.03%  0x3002f55a: 41 5c                             popq    %r12                          
  0.00%  0x3002f55c: 41 5d                             popq    %r13                          
  0.00%  0x3002f55e: 41 5e                             popq    %r14                          
         0x3002f560: 41 5f                             popq    %r15                          
  0.01%  0x3002f562: 5d                                popq    %rbp                          
         0x3002f563: c3                                retq                                  
  0.00%  0x3002f564: 48 89 44 24 38                    movq    %rax, 56(%rsp)                
  0.01%  0x3002f569: 44 89 f8                          movl    %r15d, %eax                   
         0x3002f56c: 25 f8 ff ff 7f                    andl    $2147483640, %eax             
  0.00%  0x3002f571: 48 89 44 24 40                    movq    %rax, 64(%rsp)                
  0.00%  0x3002f576: 41 bc 48 00 00 00                 movl    $72, %r12d                    
  0.00%  0x3002f57c: 45 31 ed                          xorl    %r13d, %r13d                  
         0x3002f57f: bd 48 00 f8 2f                    movl    $804782152, %ebp              ; 804782152 = clearable_gc_phase_trap_mask
  0.00%  0x3002f584: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x3002f593: 66 66 66 66 2e 0f 1f 84 00 00     nopw    %cs:(%rax,%rax)               
  0.92%  0x3002f5a0: 4b 8b 74 26 c8                    movq    -56(%r14,%r12), %rsi          
  0.00%  0x3002f5a5: 48 85 75 00                       testq    %rsi, (%rbp)                 
         0x3002f5a9: 0f 85 16 01 00 00                 jne    278                            ; 0x3002f6c5
  0.92%  0x3002f5af: 48 89 df                          movq    %rbx, %rdi                    
         0x3002f5b2: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
  0.00%  0x3002f5b8: e8 43 e3 fd ff                    callq    -138429                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x3002f5bd: 4b 8b 74 26 d0                    movq    -48(%r14,%r12), %rsi          
  2.74%  0x3002f5c2: 48 85 75 00                       testq    %rsi, (%rbp)                 
         0x3002f5c6: 0f 85 1b 01 00 00                 jne    283                            ; 0x3002f6e7
  1.83%  0x3002f5cc: 4c 89 6c 24 30                    movq    %r13, 48(%rsp)                
  0.90%  0x3002f5d1: 49 ff c5                          incq    %r13                          
         0x3002f5d4: 48 89 df                          movq    %rbx, %rdi                    
         0x3002f5d7: 90                                nop                                   
  0.01%  0x3002f5d8: e8 23 e3 fd ff                    callq    -138461                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x3002f5dd: 4b 8b 74 26 d8                    movq    -40(%r14,%r12), %rsi          
  3.12%  0x3002f5e2: 48 85 75 00                       testq    %rsi, (%rbp)                 
         0x3002f5e6: 0f 85 1d 01 00 00                 jne    285                            ; 0x3002f709
  1.83%  0x3002f5ec: 49 ff c5                          incq    %r13                          
         0x3002f5ef: 48 89 df                          movq    %rbx, %rdi                    
         0x3002f5f2: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
         0x3002f5f8: e8 03 e3 fd ff                    callq    -138493                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x3002f5fd: 4b 8b 74 26 e0                    movq    -32(%r14,%r12), %rsi          
  2.62%  0x3002f602: 48 85 75 00                       testq    %rsi, (%rbp)                 
         0x3002f606: 0f 85 1f 01 00 00                 jne    287                            ; 0x3002f72b
  1.74%  0x3002f60c: 49 ff c5                          incq    %r13                          
         0x3002f60f: 48 89 df                          movq    %rbx, %rdi                    
         0x3002f612: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
         0x3002f618: e8 e3 e2 fd ff                    callq    -138525                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x3002f61d: 4b 8b 74 26 e8                    movq    -24(%r14,%r12), %rsi          
  2.96%  0x3002f622: 48 85 75 00                       testq    %rsi, (%rbp)                 
         0x3002f626: 0f 85 21 01 00 00                 jne    289                            ; 0x3002f74d
  1.84%  0x3002f62c: 49 ff c5                          incq    %r13                          
         0x3002f62f: 48 89 df                          movq    %rbx, %rdi                    
         0x3002f632: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
         0x3002f638: e8 c3 e2 fd ff                    callq    -138557                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x3002f63d: 4b 8b 74 26 f0                    movq    -16(%r14,%r12), %rsi          
  2.48%  0x3002f642: 48 85 75 00                       testq    %rsi, (%rbp)                 
         0x3002f646: 0f 85 23 01 00 00                 jne    291                            ; 0x3002f76f
  1.82%  0x3002f64c: 49 ff c5                          incq    %r13                          
         0x3002f64f: 48 89 df                          movq    %rbx, %rdi                    
         0x3002f652: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
         0x3002f658: e8 a3 e2 fd ff                    callq    -138589                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x3002f65d: 4b 8b 74 26 f8                    movq    -8(%r14,%r12), %rsi           
  2.62%  0x3002f662: 48 85 75 00                       testq    %rsi, (%rbp)                 
         0x3002f666: 0f 85 25 01 00 00                 jne    293                            ; 0x3002f791
  1.83%  0x3002f66c: 49 ff c5                          incq    %r13                          
  0.01%  0x3002f66f: 48 89 df                          movq    %rbx, %rdi                    
         0x3002f672: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
         0x3002f678: e8 83 e2 fd ff                    callq    -138621                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x3002f67d: 4b 8b 34 26                       movq    (%r14,%r12), %rsi             
  2.59%  0x3002f681: 48 85 75 00                       testq    %rsi, (%rbp)                 
         0x3002f685: 0f 85 28 01 00 00                 jne    296                            ; 0x3002f7b3
  1.75%  0x3002f68b: 41 8d 6d 01                       leal    1(%r13), %ebp                 
         0x3002f68f: 48 89 df                          movq    %rbx, %rdi                    
         0x3002f692: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
         0x3002f698: e8 63 e2 fd ff                    callq    -138653                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x3002f69d: 49 83 c4 40                       addq    $64, %r12                     
  0.98%  0x3002f6a1: 49 83 c5 02                       addq    $2, %r13                      
  0.49%  0x3002f6a5: 4c 3b 6c 24 40                    cmpq    64(%rsp), %r13                
  5.96%  0x3002f6aa: bd 48 00 f8 2f                    movl    $804782152, %ebp              ; 804782152 = clearable_gc_phase_trap_mask
         0x3002f6af: 0f 85 eb fe ff ff                 jne    -277                           ; 0x3002f5a0
  0.09%  0x3002f6b5: 48 83 44 24 30 08                 addq    $8, 48(%rsp)                  
  0.11%  0x3002f6bb: 48 8b 44 24 38                    movq    56(%rsp), %rax                
         0x3002f6c0: e9 33 fe ff ff                    jmp    -461                           ; 0x3002f4f8
         0x3002f6c5: 4b 8d 04 26                       leaq    (%r14,%r12), %rax             
         0x3002f6c9: 48 83 c0 c8                       addq    $-56, %rax                    
         0x3002f6cd: 48 b9 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rcx           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f6d7: 48 89 f7                          movq    %rsi, %rdi                    
         0x3002f6da: 48 89 c6                          movq    %rax, %rsi                    
         0x3002f6dd: ff d1                             callq    *%rcx                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f6df: 48 89 c6                          movq    %rax, %rsi                    
         0x3002f6e2: e9 c8 fe ff ff                    jmp    -312                           ; 0x3002f5af
         0x3002f6e7: 4b 8d 04 26                       leaq    (%r14,%r12), %rax             
....................................................................................................
 42.22%  <total for region 2>

....[Hottest Regions]...............................................................................
 53.69%  [0x3002f2a0:0x3002f2dd] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::explicitThrowNpe[Falcon]
 42.22%  [0x3002f531:0x3002f6e7] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::explicit_throw_npe[Falcon]
  0.28%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.21%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9c94c80:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eef5b2:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f0711c:0xffffffffa9f07160] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f211f0:0xffffffffa9f21223] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9eef44f:0xffffffffa9eef4aa] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f69640:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ed0800:0xffffffffa9ed0873] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ee587e:0xffffffffa9ee588c] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f686c0:0xffffffffa9f68761] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28ead4:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  0.07%  [0x30031ac6:0x30031b3c] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.NpeThrowBenchmark_explicit_throw_npe_jmhTest::explicit_throw_npe_avgt_jmhStub[Falcon]
  0.06%  [0xffffffffaa28d0d0:0xffffffffaa28d129] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9f07060:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  1.98%  <...other 269 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 53.69%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::explicitThrowNpe[Falcon]
 42.28%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::explicit_throw_npe[Falcon]
  3.70%  [unknown] ([kernel.kallsyms])
  0.16%  [unknown] (libjvm.so)
  0.07%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.NpeThrowBenchmark_explicit_throw_npe_jmhTest::explicit_throw_npe_avgt_jmhStub[Falcon]
  0.02%  [unknown] (liborca.so.0.0.0.0)
  0.02%  [unknown] ([vdso])
  0.01%  [unknown] (libc-2.31.so)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  syscall (libc-2.31.so)
  0.00%  __errno_location (libpthread-2.31.so)
  0.00%  VMEM::get_account_usage (libaztall.so)
  0.00%  java.lang.Class::isAssignableFrom[nativewrapper]
  0.00%  az_zmd_api_version_tall (libaztall.so)
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  __nanosleep (libc-2.31.so)
  0.00%  PMEM::accounts (libaztall.so)
  0.00%  clock_nanosleep (libc-2.31.so)
  0.01%  <...other 6 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 96.04%  <generated code>
  3.70%  <native code in ([kernel.kallsyms])>
  0.16%  <native code in (libjvm.so)>
  0.03%  <native code in (libc-2.31.so)>
  0.02%  <native code in (libaztall.so)>
  0.02%  <native code in ([vdso])>
  0.02%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libazsys3.so)>
  0.00%  <native code in (libpthread-2.31.so)>
  0.00%  <native code in (libz.so.1.2.11)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark.explicit_throw_npe
# Parameters: (size = 1024, threshold = 0.5)

# Run progress: 16.67% complete, ETA 00:09:21
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1001498.802 ns/op
# Warmup Iteration   2: 992134.968 ns/op
# Warmup Iteration   3: 1038247.740 ns/op
# Warmup Iteration   4: 1032674.913 ns/op
# Warmup Iteration   5: 1023759.537 ns/op
Iteration   1: 1026299.144 ns/op
Iteration   2: 1025012.684 ns/op
Iteration   3: 1024310.690 ns/op
Iteration   4: 1022629.703 ns/op
Iteration   5: 1023945.869 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark.explicit_throw_npe":
  1024439.618 ±(99.9%) 5209.924 ns/op [Average]
  (min, avg, max) = (1022629.703, 1024439.618, 1026299.144), stdev = 1353.001
  CI (99.9%): [1019229.694, 1029649.542] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark.explicit_throw_npe:·asm":
PrintAssembly processed: 135337 total address lines.
Perf output processed (skipped 56.398 seconds):
 Column 1: cycles (51771 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x7f8a574cf440:0x7f8a574cf56b] in [unknown] (libjvm.so)

 <no assembly is recorded, native region>
....................................................................................................
  8.36%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x7f8a57135500:0x7f8a571355a3] in [unknown] (libjvm.so)

 <no assembly is recorded, native region>
....................................................................................................
  6.56%  <total for region 2>

....[Hottest Region 3]..............................................................................
 [0x7f8a574cf590:0x7f8a574cf5f7] in [unknown] (libjvm.so)

 <no assembly is recorded, native region>
....................................................................................................
  6.25%  <total for region 3>

....[Hottest Region 4]..............................................................................
 [0x7f8a574cf321:0x7f8a574cf413] in [unknown] (libjvm.so)

 <no assembly is recorded, native region>
....................................................................................................
  5.64%  <total for region 4>

....[Hottest Regions]...............................................................................
  8.36%  [0x7f8a574cf440:0x7f8a574cf56b] in [unknown] (libjvm.so)
  6.56%  [0x7f8a57135500:0x7f8a571355a3] in [unknown] (libjvm.so)
  6.25%  [0x7f8a574cf590:0x7f8a574cf5f7] in [unknown] (libjvm.so)
  5.64%  [0x7f8a574cf321:0x7f8a574cf413] in [unknown] (libjvm.so)
  4.93%  [0x7f8a57231980:0x7f8a572319ab] in [unknown] (libjvm.so)
  4.58%  [0x7f8a57131cc0:0x7f8a57131d12] in [unknown] (libjvm.so)
  4.07%  [0x7f8a5752d200:0x7f8a5752d29c] in [unknown] (libjvm.so)
  3.97%  [0x7f8a5793c1c0:0x7f8a5793c20c] in [unknown] (libjvm.so)
  3.22%  [0x7f8a5752d2c5:0x7f8a5752d2f8] in [unknown] (libjvm.so)
  3.05%  [0x7f8a574a90c0:0x7f8a574a9134] in [unknown] (libjvm.so)
  3.03%  [0x7f8a577c3540:0x7f8a577c35cd] in [unknown] (libjvm.so)
  2.95%  [0x7f8a574d7f30:0x7f8a574d7f9c] in [unknown] (libjvm.so)
  2.40%  [0x7f8a592e4a70:0x7f8a592e4a80] in [unknown] (libc-2.31.so)
  1.92%  [0x7f8a57131800:0x7f8a5713183f] in [unknown] (libjvm.so)
  1.86%  [0x7f8a574d78c0:0x7f8a574d78db] in [unknown] (libjvm.so)
  1.59%  [0x7f8a574cf750:0x7f8a574cf807] in [unknown] (libjvm.so)
  1.47%  [0x7f8a574cef00:0x7f8a574cf0a2] in [unknown] (libjvm.so)
  1.23%  [0x7f8a574d7ec0:0x7f8a574d7ee1] in [unknown] (libjvm.so)
  0.93%  [0x7f8a571e7d00:0x7f8a571e7d63] in [unknown] (libjvm.so)
  0.93%  [0x7f8a57131860:0x7f8a571318b6] in [unknown] (libjvm.so)
 31.04%  <...other 560 warm regions...>
....................................................................................................
 99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 86.97%  [unknown] (libjvm.so)
  4.38%  [unknown] ([kernel.kallsyms])
  3.02%  [unknown] (libc-2.31.so)
  1.28%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::explicitThrowNpe[Falcon]
  0.85%  java.lang.Throwable::fillInStackTrace[nativewrapper]
  0.71%  StubRoutines::forward_exception
  0.69%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::explicit_throw_npe[Falcon]
  0.53%  StubRoutines::dolphin_install_exception_exit
  0.52%  StubRoutines::dolphin_exception_exit
  0.41%  StubRoutines::new_stub_dont_check_tls_zero_region_orca
  0.37%  Java_java_lang_Throwable_fillInStackTrace (libjava.so)
  0.05%  JVM_FillInStackTrace@plt (libjava.so)
  0.02%  PMEM::account_enabled; PMEM_PageInfo::page_info_base (libaztall.so)
  0.02%  VMEM::get_account_usage (libaztall.so)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  __pthread_mutex_unlock (libpthread-2.31.so)
  0.01%  [unknown] ([vdso])
  0.01%  syscall (libc-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.12%  <...other 47 warm methods...>
....................................................................................................
 99.99%  <totals>

....[Distribution by Area]..........................................................................
 86.97%  <native code in (libjvm.so)>
  5.00%  <generated code>
  4.38%  <native code in ([kernel.kallsyms])>
  3.04%  <native code in (libc-2.31.so)>
  0.43%  <native code in (libjava.so)>
  0.13%  <native code in (libaztall.so)>
  0.02%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in ([vdso])>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.00%  <native code in (kvm.ko)>
  0.00%  <native code in (perf-150855.map)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark.explicit_throw_npe
# Parameters: (size = 1024, threshold = 1.0)

# Run progress: 33.33% complete, ETA 00:07:27
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2027704.559 ns/op
# Warmup Iteration   2: 1998979.106 ns/op
# Warmup Iteration   3: 2114281.485 ns/op
# Warmup Iteration   4: 2106478.235 ns/op
# Warmup Iteration   5: 2089018.853 ns/op
Iteration   1: 2093735.831 ns/op
Iteration   2: 2098660.292 ns/op
Iteration   3: 2098118.992 ns/op
Iteration   4: 2092834.339 ns/op
Iteration   5: 2094811.722 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark.explicit_throw_npe":
  2095632.235 ±(99.9%) 10087.456 ns/op [Average]
  (min, avg, max) = (2092834.339, 2095632.235, 2098660.292), stdev = 2619.680
  CI (99.9%): [2085544.779, 2105719.692] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark.explicit_throw_npe:·asm":
PrintAssembly processed: 135035 total address lines.
Perf output processed (skipped 59.399 seconds):
 Column 1: cycles (51901 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x7f79b57f1440:0x7f79b57f156b] in [unknown] (libjvm.so)

 <no assembly is recorded, native region>
....................................................................................................
  7.35%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x7f79b5c5e1c0:0x7f79b5c5e20c] in [unknown] (libjvm.so)

 <no assembly is recorded, native region>
....................................................................................................
  5.97%  <total for region 2>

....[Hottest Region 3]..............................................................................
 [0x7f79b57f1321:0x7f79b57f1413] in [unknown] (libjvm.so)

 <no assembly is recorded, native region>
....................................................................................................
  5.61%  <total for region 3>

....[Hottest Region 4]..............................................................................
 [0x7f79b5457500:0x7f79b545755f] in [unknown] (libjvm.so)

 <no assembly is recorded, native region>
....................................................................................................
  5.34%  <total for region 4>

....[Hottest Regions]...............................................................................
  7.35%  [0x7f79b57f1440:0x7f79b57f156b] in [unknown] (libjvm.so)
  5.97%  [0x7f79b5c5e1c0:0x7f79b5c5e20c] in [unknown] (libjvm.so)
  5.61%  [0x7f79b57f1321:0x7f79b57f1413] in [unknown] (libjvm.so)
  5.34%  [0x7f79b5457500:0x7f79b545755f] in [unknown] (libjvm.so)
  4.68%  [0x7f79b57f1590:0x7f79b57f15f7] in [unknown] (libjvm.so)
  4.53%  [0x7f79b584f200:0x7f79b584f29c] in [unknown] (libjvm.so)
  3.95%  [0x7f79b57f9f30:0x7f79b57f9f9c] in [unknown] (libjvm.so)
  3.77%  [0x7f79b5553980:0x7f79b55539ab] in [unknown] (libjvm.so)
  3.58%  [0x7f79b584f2c5:0x7f79b584f2f8] in [unknown] (libjvm.so)
  3.51%  [0x7f79b5453cc0:0x7f79b5453d12] in [unknown] (libjvm.so)
  3.48%  [0x7f79b5ae5540:0x7f79b5ae55d1] in [unknown] (libjvm.so)
  3.23%  [0x7f79b57cb0c0:0x7f79b57cb134] in [unknown] (libjvm.so)
  2.72%  [0x7f79b7606a70:0x7f79b7606a80] in [unknown] (libc-2.31.so)
  2.11%  [0x7f79b5453800:0x7f79b545383f] in [unknown] (libjvm.so)
  1.73%  [0x7f79b57f98c0:0x7f79b57f98db] in [unknown] (libjvm.so)
  1.53%  [0x7f79b57f9ec0:0x7f79b57f9ee5] in [unknown] (libjvm.so)
  1.47%  [0x7f79b57f0f00:0x7f79b57f10a2] in [unknown] (libjvm.so)
  1.42%  [0x7f79b57f1750:0x7f79b57f1807] in [unknown] (libjvm.so)
  1.09%  [0x7f79b5af5100:0x7f79b5af51ba] in [unknown] (libjvm.so)
  1.04%  [0x7f79b57f9804:0x7f79b57f984d] in [unknown] (libjvm.so)
 31.88%  <...other 510 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 87.10%  [unknown] (libjvm.so)
  4.34%  [unknown] ([kernel.kallsyms])
  3.42%  [unknown] (libc-2.31.so)
  1.17%  StubRoutines::forward_exception
  0.76%  java.lang.Throwable::fillInStackTrace[nativewrapper]
  0.73%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::explicit_throw_npe[Falcon]
  0.65%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::explicitThrowNpe[Falcon]
  0.54%  StubRoutines::dolphin_exception_exit
  0.38%  StubRoutines::new_stub_dont_check_tls_zero_region_orca
  0.35%  StubRoutines::dolphin_install_exception_exit
  0.31%  Java_java_lang_Throwable_fillInStackTrace (libjava.so)
  0.07%  JVM_FillInStackTrace@plt (libjava.so)
  0.02%  [unknown] ([vdso])
  0.01%  PMEM::account_enabled; PMEM_PageInfo::page_info_base; PMEM::accounts (libaztall.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  thread_stack_region_start; thread_stack_region_end (libazsys3.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  az_pmem_get_account_usage_tall (libaztall.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.10%  <...other 44 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 87.10%  <native code in (libjvm.so)>
  4.58%  <generated code>
  4.34%  <native code in ([kernel.kallsyms])>
  3.44%  <native code in (libc-2.31.so)>
  0.38%  <native code in (libjava.so)>
  0.09%  <native code in (libaztall.so)>
  0.02%  <native code in ([vdso])>
  0.02%  <native code in (libazsys3.so)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (perf-150995.map)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.00%  <native code in (nf_nat.ko)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark.implicit_throw_npe
# Parameters: (size = 1024, threshold = 0.0)

# Run progress: 50.00% complete, ETA 00:05:37
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5287.693 ns/op
# Warmup Iteration   2: 5267.766 ns/op
# Warmup Iteration   3: 5267.469 ns/op
# Warmup Iteration   4: 5267.105 ns/op
# Warmup Iteration   5: 5267.372 ns/op
Iteration   1: 5267.003 ns/op
Iteration   2: 5267.128 ns/op
Iteration   3: 5267.303 ns/op
Iteration   4: 5267.255 ns/op
Iteration   5: 5267.249 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark.implicit_throw_npe":
  5267.187 ±(99.9%) 0.469 ns/op [Average]
  (min, avg, max) = (5267.003, 5267.187, 5267.303), stdev = 0.122
  CI (99.9%): [5266.718, 5267.657] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark.implicit_throw_npe:·asm":
PrintAssembly processed: 134518 total address lines.
Perf output processed (skipped 56.267 seconds):
 Column 1: cycles (51658 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f531:0x3002f6e7] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::implicit_throw_npe[Falcon]

         0x3002f531: 48 89 df                          movq    %rbx, %rdi                    
         0x3002f534: 0f 1f 40 00                       nopl    (%rax)                        
         0x3002f538: e8 c3 e3 fd ff                    callq    -138301                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x3002f53d: 48 8b 44 24 30                    movq    48(%rsp), %rax                
         0x3002f542: ff c0                             incl    %eax                          
         0x3002f544: 48 89 44 24 30                    movq    %rax, 48(%rsp)                
         0x3002f549: 49 83 c4 08                       addq    $8, %r12                      
         0x3002f54d: 48 89 e8                          movq    %rbp, %rax                    
         0x3002f550: 48 ff c8                          decq    %rax                          
         0x3002f553: 75 cb                             jne    -53                            ; 0x3002f520
  0.00%  0x3002f555: 48 83 c4 48                       addq    $72, %rsp                     
         0x3002f559: 5b                                popq    %rbx                          
  0.03%  0x3002f55a: 41 5c                             popq    %r12                          
  0.01%  0x3002f55c: 41 5d                             popq    %r13                          
  0.00%  0x3002f55e: 41 5e                             popq    %r14                          
         0x3002f560: 41 5f                             popq    %r15                          
  0.01%  0x3002f562: 5d                                popq    %rbp                          
         0x3002f563: c3                                retq                                  
         0x3002f564: 48 89 44 24 38                    movq    %rax, 56(%rsp)                
  0.01%  0x3002f569: 44 89 f8                          movl    %r15d, %eax                   
         0x3002f56c: 25 f8 ff ff 7f                    andl    $2147483640, %eax             
         0x3002f571: 48 89 44 24 40                    movq    %rax, 64(%rsp)                
         0x3002f576: 41 bc 48 00 00 00                 movl    $72, %r12d                    
  0.00%  0x3002f57c: 45 31 ed                          xorl    %r13d, %r13d                  
  0.00%  0x3002f57f: bd 48 00 f8 2f                    movl    $804782152, %ebp              ; 804782152 = clearable_gc_phase_trap_mask
         0x3002f584: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
  0.00%  0x3002f593: 66 66 66 66 2e 0f 1f 84 00 00     nopw    %cs:(%rax,%rax)               
  0.84%  0x3002f5a0: 4b 8b 74 26 c8                    movq    -56(%r14,%r12), %rsi          
         0x3002f5a5: 48 85 75 00                       testq    %rsi, (%rbp)                 
         0x3002f5a9: 0f 85 16 01 00 00                 jne    278                            ; 0x3002f6c5
  0.92%  0x3002f5af: 48 89 df                          movq    %rbx, %rdi                    
         0x3002f5b2: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
  0.01%  0x3002f5b8: e8 43 e3 fd ff                    callq    -138429                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  0.72%  0x3002f5bd: 4b 8b 74 26 d0                    movq    -48(%r14,%r12), %rsi          
  3.74%  0x3002f5c2: 48 85 75 00                       testq    %rsi, (%rbp)                 
         0x3002f5c6: 0f 85 1b 01 00 00                 jne    283                            ; 0x3002f6e7
  1.73%  0x3002f5cc: 4c 89 6c 24 30                    movq    %r13, 48(%rsp)                
  2.53%  0x3002f5d1: 49 ff c5                          incq    %r13                          
         0x3002f5d4: 48 89 df                          movq    %rbx, %rdi                    
  0.01%  0x3002f5d7: 90                                nop                                   
         0x3002f5d8: e8 23 e3 fd ff                    callq    -138461                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  0.91%  0x3002f5dd: 4b 8b 74 26 d8                    movq    -40(%r14,%r12), %rsi          
  1.87%  0x3002f5e2: 48 85 75 00                       testq    %rsi, (%rbp)                 
         0x3002f5e6: 0f 85 1d 01 00 00                 jne    285                            ; 0x3002f709
  1.77%  0x3002f5ec: 49 ff c5                          incq    %r13                          
         0x3002f5ef: 48 89 df                          movq    %rbx, %rdi                    
         0x3002f5f2: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
         0x3002f5f8: e8 03 e3 fd ff                    callq    -138493                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  0.86%  0x3002f5fd: 4b 8b 74 26 e0                    movq    -32(%r14,%r12), %rsi          
  2.47%  0x3002f602: 48 85 75 00                       testq    %rsi, (%rbp)                 
         0x3002f606: 0f 85 1f 01 00 00                 jne    287                            ; 0x3002f72b
  1.74%  0x3002f60c: 49 ff c5                          incq    %r13                          
         0x3002f60f: 48 89 df                          movq    %rbx, %rdi                    
         0x3002f612: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
         0x3002f618: e8 e3 e2 fd ff                    callq    -138525                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  0.75%  0x3002f61d: 4b 8b 74 26 e8                    movq    -24(%r14,%r12), %rsi          
  2.85%  0x3002f622: 48 85 75 00                       testq    %rsi, (%rbp)                 
         0x3002f626: 0f 85 21 01 00 00                 jne    289                            ; 0x3002f74d
  1.77%  0x3002f62c: 49 ff c5                          incq    %r13                          
         0x3002f62f: 48 89 df                          movq    %rbx, %rdi                    
         0x3002f632: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
         0x3002f638: e8 c3 e2 fd ff                    callq    -138557                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  0.87%  0x3002f63d: 4b 8b 74 26 f0                    movq    -16(%r14,%r12), %rsi          
  2.58%  0x3002f642: 48 85 75 00                       testq    %rsi, (%rbp)                 
         0x3002f646: 0f 85 23 01 00 00                 jne    291                            ; 0x3002f76f
  1.73%  0x3002f64c: 49 ff c5                          incq    %r13                          
         0x3002f64f: 48 89 df                          movq    %rbx, %rdi                    
         0x3002f652: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
         0x3002f658: e8 a3 e2 fd ff                    callq    -138589                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  0.96%  0x3002f65d: 4b 8b 74 26 f8                    movq    -8(%r14,%r12), %rsi           
  2.48%  0x3002f662: 48 85 75 00                       testq    %rsi, (%rbp)                 
         0x3002f666: 0f 85 25 01 00 00                 jne    293                            ; 0x3002f791
  1.77%  0x3002f66c: 49 ff c5                          incq    %r13                          
         0x3002f66f: 48 89 df                          movq    %rbx, %rdi                    
  0.01%  0x3002f672: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
         0x3002f678: e8 83 e2 fd ff                    callq    -138621                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  0.89%  0x3002f67d: 4b 8b 34 26                       movq    (%r14,%r12), %rsi             
  2.70%  0x3002f681: 48 85 75 00                       testq    %rsi, (%rbp)                 
         0x3002f685: 0f 85 28 01 00 00                 jne    296                            ; 0x3002f7b3
  1.91%  0x3002f68b: 41 8d 6d 01                       leal    1(%r13), %ebp                 
         0x3002f68f: 48 89 df                          movq    %rbx, %rdi                    
         0x3002f692: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
         0x3002f698: e8 63 e2 fd ff                    callq    -138653                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  0.87%  0x3002f69d: 49 83 c4 40                       addq    $64, %r12                     
  1.31%  0x3002f6a1: 49 83 c5 02                       addq    $2, %r13                      
         0x3002f6a5: 4c 3b 6c 24 40                    cmpq    64(%rsp), %r13                
  5.92%  0x3002f6aa: bd 48 00 f8 2f                    movl    $804782152, %ebp              ; 804782152 = clearable_gc_phase_trap_mask
         0x3002f6af: 0f 85 eb fe ff ff                 jne    -277                           ; 0x3002f5a0
  0.09%  0x3002f6b5: 48 83 44 24 30 08                 addq    $8, 48(%rsp)                  
  0.12%  0x3002f6bb: 48 8b 44 24 38                    movq    56(%rsp), %rax                
         0x3002f6c0: e9 33 fe ff ff                    jmp    -461                           ; 0x3002f4f8
         0x3002f6c5: 4b 8d 04 26                       leaq    (%r14,%r12), %rax             
         0x3002f6c9: 48 83 c0 c8                       addq    $-56, %rax                    
         0x3002f6cd: 48 b9 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rcx           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f6d7: 48 89 f7                          movq    %rsi, %rdi                    
         0x3002f6da: 48 89 c6                          movq    %rax, %rsi                    
         0x3002f6dd: ff d1                             callq    *%rcx                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f6df: 48 89 c6                          movq    %rax, %rsi                    
         0x3002f6e2: e9 c8 fe ff ff                    jmp    -312                           ; 0x3002f5af
         0x3002f6e7: 4b 8d 04 26                       leaq    (%r14,%r12), %rax             
....................................................................................................
 49.78%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x32b0deeb:0x32b0e2b2] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::implicitThrowNpe[C1]

         0x32b0deeb: e9 90 3f 51 fd                    jmp    -45006960                      ; 0x30021e80 = unwind_exception Runtime1 stub
         0x32b0def0: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x32b0def4: e9 07 03 50 fd                    jmp    -45087993                      ; 0x3000e200 = StubRoutines::deoptimize
         0x32b0def9: cc                                int3                                  
         <nmethodAdapter compile_id='241' level='1' size='40' address='0x00007fcc5802df30' dependencies_offset='32' stamp='90038.141'/>
         5.568:  241         1 inlining into com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark$Wrapper::&lt;init&gt; ()V (tid 151156) (kid 1760 pkid/prev 1736/NA) (mid 1802240 pmid 21362) (bytes 5) (generation 0) (lvl O2) (score 5) (score_updated 0ms; orig 5; promoted 0) (wait 0ms)
         5.568:              @ 1   java.lang.Object::&lt;init&gt; (1 bytes)   inline
         5.575:  241         1 installed at 0x32b0de80 with size 0x7a. com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark$Wrapper::&lt;init&gt; ()V (tid 151156) (kid 1760 pkid/prev 1736/NA) (mid 1802240 pmid 21362) (bytes 5) (generation 0) (lvl O2) (score 5) (score_updated 7ms; orig 5; promoted 0) (wait 0ms) (compile 0ms/6ms)
           # {method}{0x20002658340} implicitThrowNpe[C1] (Lcom/ionutbalosin/jvm/performance/benchmarks/micro/compiler/NpeThrowBenchmark$Wrapper;)I in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/NpeThrowBenchmark
         Decoding CodeBlob 0x32b0e200
 14.31%  0x32b0e280: e8 7b 73 50 fd 00 00              subq    $8, %rsp                      
  0.01%  0x32b0e287: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 23.80%  0x32b0e290: 75 05                             jne    5                              ; 0x32b0e297
  6.36%  0x32b0e292: 8b 46 08                          movl    8(%rsi), %eax                 
  1.08%  0x32b0e295: 59                                popq    %rcx                          
  0.00%  0x32b0e296: c3                                retq                                  
         0x32b0e297: e8 a4 92 50 fd                    callq    -45051228                    ; 0x30017540 = StubRoutines::safepoint_handler
         0x32b0e29c: eb f4                             jmp    -12                            ; 0x32b0e292
         0x32b0e29e: e8 dd 45 51 fd                    callq    -45005347                    ; 0x30022880 = throw_null_pointer_exception Runtime1 stub
                             // Generic exception handler
         0x32b0e2a3: 59                                popq    %rcx                          
         0x32b0e2a4: e9 d7 3b 51 fd                    jmp    -45007913                      ; 0x30021e80 = unwind_exception Runtime1 stub
         0x32b0e2a9: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x32b0e2ad: e9 4e ff 4f fd                    jmp    -45088946                      ; 0x3000e200 = StubRoutines::deoptimize
         0x32b0e2b2: cc                                int3                                  
         <nmethodAdapter compile_id='242' level='1' size='40' address='0x00007fcc4c0c3a00' dependencies_offset='32' stamp='90038.142'/>
....................................................................................................
 45.57%  <total for region 2>

....[Hottest Regions]...............................................................................
 49.78%  [0x3002f531:0x3002f6e7] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::implicit_throw_npe[Falcon]
 45.57%  [0x32b0deeb:0x32b0e2b2] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::implicitThrowNpe[C1]
  0.26%  [0xffffffffa9ecfb6a:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.24%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.23%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9f0711c:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eef5b2:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f211f0:0xffffffffa9f21223] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9f695f6:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9eb8dad:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.09%  [0x30031ac6:0x30031b3c] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.NpeThrowBenchmark_implicit_throw_npe_jmhTest::implicit_throw_npe_avgt_jmhStub[Falcon]
  0.09%  [0xffffffffa9eee5d0:0xffffffffa9eee62f] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9ed0800:0xffffffffa9ed0889] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eef44f:0xffffffffa9eef4b0] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eff400:0xffffffffa9eff432] in [unknown] ([kernel.kallsyms])
  0.08%  [0x3002f4a0:0x3002f84d] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::implicit_throw_npe[Falcon]
  0.07%  [0xffffffffa9ee587e:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0740:0xffffffffa9ed0797] in [unknown] ([kernel.kallsyms])
  2.39%  <...other 358 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 49.86%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::implicit_throw_npe[Falcon]
 45.57%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::implicitThrowNpe[C1]
  4.05%  [unknown] ([kernel.kallsyms])
  0.25%  [unknown] (libjvm.so)
  0.09%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.NpeThrowBenchmark_implicit_throw_npe_jmhTest::implicit_throw_npe_avgt_jmhStub[Falcon]
  0.03%  [unknown] ([vdso])
  0.02%  syscall (libc-2.31.so)
  0.02%  __errno_location (libpthread-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  is_thread_initialized (libazsys3.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  _dl_addr (libc-2.31.so)
  0.01%  thread_stack_region_start (libazsys3.so)
  0.01%  _IO_default_xsputn (libc-2.31.so)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.01%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  __pthread_mutex_unlock (libpthread-2.31.so)
  0.00%  usleep (libc-2.31.so)
  0.02%  <...other 12 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.53%  <generated code>
  4.05%  <native code in ([kernel.kallsyms])>
  0.25%  <native code in (libjvm.so)>
  0.06%  <native code in (libc-2.31.so)>
  0.03%  <native code in ([vdso])>
  0.02%  <native code in (libaztall.so)>
  0.02%  <native code in (libpthread-2.31.so)>
  0.02%  <native code in (libazsys3.so)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark.implicit_throw_npe
# Parameters: (size = 1024, threshold = 0.5)

# Run progress: 66.67% complete, ETA 00:03:44
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5828890.408 ns/op
# Warmup Iteration   2: 5772758.611 ns/op
# Warmup Iteration   3: 5845699.757 ns/op
# Warmup Iteration   4: 5840895.433 ns/op
# Warmup Iteration   5: 5833123.734 ns/op
Iteration   1: 5823779.373 ns/op
Iteration   2: 5813677.518 ns/op
Iteration   3: 5814070.365 ns/op
Iteration   4: 5812081.275 ns/op
Iteration   5: 5834453.353 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark.implicit_throw_npe":
  5819612.377 ±(99.9%) 36544.233 ns/op [Average]
  (min, avg, max) = (5812081.275, 5819612.377, 5834453.353), stdev = 9490.421
  CI (99.9%): [5783068.144, 5856156.609] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark.implicit_throw_npe:·asm":
PrintAssembly processed: 135167 total address lines.
Perf output processed (skipped 58.092 seconds):
 Column 1: cycles (52200 events)

WARNING: No hottest code region above the threshold (5.00%) for disassembly.
Use "hotThreshold" profiler option to lower the filter threshold.

....[Hottest Regions]...............................................................................
  3.98%  [0xffffffffaaa00000:0xffffffffaaa000bc] in [unknown] ([kernel.kallsyms])
  3.54%  [0xffffffffaaa010c0:0xffffffffaaa0114e] in [unknown] ([kernel.kallsyms])
  3.29%  [0xffffffffaa976480:0xffffffffaa976509] in [unknown] ([kernel.kallsyms])
  2.24%  [0xffffffffaaa00b40:0xffffffffaaa00b62] in [unknown] ([kernel.kallsyms])
  2.08%  [0x7f7a90218500:0x7f7a902185a3] in [unknown] (libjvm.so)
  1.97%  [0x7f7a905b2440:0x7f7a905b256b] in [unknown] (libjvm.so)
  1.77%  [0xffffffffaaa01450:0xffffffffaaa014e0] in [unknown] ([kernel.kallsyms])
  1.75%  [0x7f7a90610200:0x7f7a90610298] in [unknown] (libjvm.so)
  1.65%  [0xffffffffaa976530:0xffffffffaa97656e] in [unknown] ([kernel.kallsyms])
  1.39%  [0x7f7a922cdfe0:0x7f7a922ce02c] in _IO_default_xsputn (libc-2.31.so)
  1.35%  [0x7f7a906102c5:0x7f7a906102f8] in [unknown] (libjvm.so)
  1.34%  [0x30015180:0x300155e9] in StubRoutines::handler_segv
  1.33%  [0x7f7a90a1f1c0:0x7f7a90a1f20c] in [unknown] (libjvm.so)
  1.32%  [0x7f7a8f93f5d0:0x7f7a8f93f65e] in signal_chain_handler (libazsys3.so)
  1.21%  [0x7f7a90314980:0x7f7a903149ab] in [unknown] (libjvm.so)
  1.12%  [0x7f7a90214cc0:0x7f7a90214d33] in [unknown] (libjvm.so)
  1.10%  [0xffffffffaaa000f4:0xffffffffaaa00161] in [unknown] ([kernel.kallsyms])
  1.06%  [0x7f7a905b2366:0x7f7a905b2413] in [unknown] (libjvm.so)
  1.03%  [0x7f7a923c4220:0x7f7a923c42ca] in [unknown] (libc-2.31.so)
  1.01%  [0xffffffffa9c94c86:0xffffffffa9c94c86] in [unknown] ([kernel.kallsyms])
 64.47%  <...other 970 warm regions...>
....................................................................................................
 99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 39.64%  [unknown] (libjvm.so)
 36.83%  [unknown] ([kernel.kallsyms])
  8.07%  [unknown] (libc-2.31.so)
  2.30%  _IO_default_xsputn (libc-2.31.so)
  1.60%  [unknown] (libstdc++.so.6)
  1.47%  StubRoutines::handler_segv
  1.40%  signal_chain_handler (libazsys3.so)
  0.94%  thread_stack_region_start; thread_stack_region_end (libazsys3.so)
  0.78%  __pthread_mutex_unlock (libpthread-2.31.so)
  0.74%  __pthread_mutex_lock (libpthread-2.31.so)
  0.74%  [unknown] ([vdso])
  0.52%  is_thread_initialized (libazsys3.so)
  0.38%  StubRoutines::forward_exception
  0.35%  StubRoutines::call_stub
  0.35%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::implicitThrowNpe[C1]
  0.31%  clock_gettime (libc-2.31.so)
  0.30%  __arch_prctl (libc-2.31.so)
  0.30%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::implicit_throw_npe[Falcon]
  0.26%  java.lang.NullPointerException::<init>[Falcon]
  0.26%  [unknown] (perf-151268.map)
  2.44%  <...other 50 warm methods...>
....................................................................................................
 99.99%  <totals>

....[Distribution by Area]..........................................................................
 39.64%  <native code in (libjvm.so)>
 36.83%  <native code in ([kernel.kallsyms])>
 11.91%  <native code in (libc-2.31.so)>
  3.69%  <native code in (libazsys3.so)>
  3.29%  <generated code>
  1.75%  <native code in (libpthread-2.31.so)>
  1.60%  <native code in (libstdc++.so.6)>
  0.74%  <native code in ([vdso])>
  0.26%  <native code in (perf-151268.map)>
  0.13%  <native code in (libaztall.so)>
  0.11%  <native code in (libjava.so)>
  0.04%  <native code in (liborca.so.0.0.0.0)>
  0.00%  <native code in (libm-2.31.so)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark.implicit_throw_npe
# Parameters: (size = 1024, threshold = 1.0)

# Run progress: 83.33% complete, ETA 00:01:52
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 11632477.607 ns/op
# Warmup Iteration   2: 11614419.291 ns/op
# Warmup Iteration   3: 11581944.536 ns/op
# Warmup Iteration   4: 11684804.146 ns/op
# Warmup Iteration   5: 11677538.795 ns/op
Iteration   1: 11729156.681 ns/op
Iteration   2: 11713610.500 ns/op
Iteration   3: 11710034.460 ns/op
Iteration   4: 11689220.639 ns/op
Iteration   5: 11713963.957 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark.implicit_throw_npe":
  11711197.247 ±(99.9%) 55144.364 ns/op [Average]
  (min, avg, max) = (11689220.639, 11711197.247, 11729156.681), stdev = 14320.816
  CI (99.9%): [11656052.883, 11766341.612] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark.implicit_throw_npe:·asm":
PrintAssembly processed: 135004 total address lines.
Perf output processed (skipped 56.273 seconds):
 Column 1: cycles (51673 events)

WARNING: No hottest code region above the threshold (5.00%) for disassembly.
Use "hotThreshold" profiler option to lower the filter threshold.

....[Hottest Regions]...............................................................................
  4.03%  [0xffffffffaaa00000:0xffffffffaaa000d4] in [unknown] ([kernel.kallsyms])
  3.63%  [0xffffffffaaa010b0:0xffffffffaaa0114e] in [unknown] ([kernel.kallsyms])
  3.16%  [0xffffffffaa976481:0xffffffffaa976509] in [unknown] ([kernel.kallsyms])
  2.47%  [0xffffffffaaa00b40:0xffffffffaaa00b67] in [unknown] ([kernel.kallsyms])
  2.15%  [0x7f6cd5cb3440:0x7f6cd5cb356b] in [unknown] (libjvm.so)
  1.83%  [0xffffffffaaa01450:0xffffffffaaa014e0] in [unknown] ([kernel.kallsyms])
  1.82%  [0xffffffffaaa00103:0xffffffffaaa00191] in [unknown] ([kernel.kallsyms])
  1.71%  [0xffffffffaa976531:0xffffffffaa97656e] in [unknown] ([kernel.kallsyms])
  1.66%  [0x7f6cd5d11200:0x7f6cd5d1129c] in [unknown] (libjvm.so)
  1.66%  [0x7f6cd5919500:0x7f6cd591955f] in [unknown] (libjvm.so)
  1.39%  [0x7f6cd5a15980:0x7f6cd5a159ab] in [unknown] (libjvm.so)
  1.39%  [0x7f6cd79cefe0:0x7f6cd79cf02c] in _IO_default_xsputn (libc-2.31.so)
  1.38%  [0x30015180:0x300155e9] in StubRoutines::handler_segv
  1.36%  [0x7f6cd50405d0:0x7f6cd504065e] in signal_chain_handler (libazsys3.so)
  1.23%  [0x7f6cd61201c0:0x7f6cd612020c] in [unknown] (libjvm.so)
  1.21%  [0x7f6cd5cb3366:0x7f6cd5cb3413] in [unknown] (libjvm.so)
  1.15%  [0x7f6cd5d112c5:0x7f6cd5d112f8] in [unknown] (libjvm.so)
  1.01%  [0x7f6cd7ac5220:0x7f6cd7ac52c2] in [unknown] (libc-2.31.so)
  0.96%  [0x7f6cd5915cc0:0x7f6cd5915d33] in [unknown] (libjvm.so)
  0.95%  [0x7f6cd5041ee0:0x7f6cd5041efe] in thread_stack_region_start; thread_stack_region_end (libazsys3.so)
 63.03%  <...other 950 warm regions...>
....................................................................................................
 99.19%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 39.30%  [unknown] (libjvm.so)
 36.64%  [unknown] ([kernel.kallsyms])
  8.48%  [unknown] (libc-2.31.so)
  2.33%  _IO_default_xsputn (libc-2.31.so)
  1.48%  StubRoutines::handler_segv
  1.47%  [unknown] (libstdc++.so.6)
  1.43%  signal_chain_handler (libazsys3.so)
  0.95%  thread_stack_region_start; thread_stack_region_end (libazsys3.so)
  0.80%  __pthread_mutex_lock (libpthread-2.31.so)
  0.71%  __pthread_mutex_unlock (libpthread-2.31.so)
  0.41%  StubRoutines::forward_exception
  0.38%  is_thread_initialized (libazsys3.so)
  0.37%  [unknown] (perf-151422.map)
  0.31%  StubRoutines::call_stub
  0.30%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeThrowBenchmark::implicitThrowNpe[C1]
  0.29%  clock_gettime (libc-2.31.so)
  0.27%  az_is_in_zst_mode (libazsys3.so)
  0.27%  java.lang.NullPointerException::<init>[Falcon]
  0.26%  __arch_prctl (libc-2.31.so)
  0.25%  memcpy (libc-2.31.so)
  2.49%  <...other 48 warm methods...>
....................................................................................................
 99.19%  <totals>

....[Distribution by Area]..........................................................................
 39.30%  <native code in (libjvm.so)>
 36.64%  <native code in ([kernel.kallsyms])>
 12.30%  <native code in (libc-2.31.so)>
  3.81%  <native code in (libazsys3.so)>
  3.18%  <generated code>
  1.81%  <native code in (libpthread-2.31.so)>
  1.47%  <native code in (libstdc++.so.6)>
  0.37%  <native code in (perf-151422.map)>
  0.17%  <native code in (libjava.so)>
  0.13%  <native code in (libaztall.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.00%  <native code in (kvm.ko)>
....................................................................................................
 99.19%  <totals>



# Run complete. Total time: 00:11:12

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

Benchmark                                  (size)  (threshold)  Mode  Cnt         Score       Error  Units
NpeThrowBenchmark.explicit_throw_npe         1024          0.0  avgt    5      5267.269 ±     0.479  ns/op
NpeThrowBenchmark.explicit_throw_npe:·asm    1024          0.0  avgt                NaN                ---
NpeThrowBenchmark.explicit_throw_npe         1024          0.5  avgt    5   1024439.618 ±  5209.924  ns/op
NpeThrowBenchmark.explicit_throw_npe:·asm    1024          0.5  avgt                NaN                ---
NpeThrowBenchmark.explicit_throw_npe         1024          1.0  avgt    5   2095632.235 ± 10087.456  ns/op
NpeThrowBenchmark.explicit_throw_npe:·asm    1024          1.0  avgt                NaN                ---
NpeThrowBenchmark.implicit_throw_npe         1024          0.0  avgt    5      5267.187 ±     0.469  ns/op
NpeThrowBenchmark.implicit_throw_npe:·asm    1024          0.0  avgt                NaN                ---
NpeThrowBenchmark.implicit_throw_npe         1024          0.5  avgt    5   5819612.377 ± 36544.233  ns/op
NpeThrowBenchmark.implicit_throw_npe:·asm    1024          0.5  avgt                NaN                ---
NpeThrowBenchmark.implicit_throw_npe         1024          1.0  avgt    5  11711197.247 ± 55144.364  ns/op
NpeThrowBenchmark.implicit_throw_npe:·asm    1024          1.0  avgt                NaN                ---
