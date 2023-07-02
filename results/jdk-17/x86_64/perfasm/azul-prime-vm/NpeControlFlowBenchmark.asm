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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement
# Parameters: (nullThreshold = 0, size = 262144)

# Run progress: 0.00% complete, ETA 00:13:20
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 275.018 us/op
# Warmup Iteration   2: 274.604 us/op
# Warmup Iteration   3: 272.707 us/op
# Warmup Iteration   4: 272.157 us/op
# Warmup Iteration   5: 272.613 us/op
Iteration   1: 273.600 us/op
Iteration   2: 259.497 us/op
Iteration   3: 259.369 us/op
Iteration   4: 259.442 us/op
Iteration   5: 259.531 us/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement":
  262.288 ±(99.9%) 24.351 us/op [Average]
  (min, avg, max) = (259.369, 262.288, 273.600), stdev = 6.324
  CI (99.9%): [237.937, 286.639] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement:·asm":
PrintAssembly processed: 135605 total address lines.
Perf output processed (skipped 56.487 seconds):
 Column 1: cycles (51627 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002fab1:0x3002fb4f] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement[Falcon]

         0x3002fab1: 0f 85 09 01 00 00                 jne    265                            ; 0x3002fbc0
         0x3002fab7: 2e 2e 2e 2e 2e 44 8b 49 0c        movl    %cs:12(%rcx), %r9d            
  0.01%  0x3002fac0: 45 85 c9                          testl    %r9d, %r9d                   
         0x3002fac3: 0f 8e 23 01 00 00                 jle    291                            ; 0x3002fbec
         0x3002fac9: 48 8b 51 20                       movq    32(%rcx), %rdx                
         0x3002facd: b8 48 00 f8 2f                    movl    $804782152, %eax              ; 804782152 = clearable_gc_phase_trap_mask
         0x3002fad2: 4c 8b 10                          movq    (%rax), %r10                  
         0x3002fad5: 49 85 d2                          testq    %rdx, %r10                   
         0x3002fad8: 0f 85 f3 00 00 00                 jne    243                            ; 0x3002fbd1
         0x3002fade: 44 8b 5a 08                       movl    8(%rdx), %r11d                
  0.01%  0x3002fae2: 45 39 cb                          cmpl    %r9d, %r11d                   
  0.00%  0x3002fae5: 44 89 d8                          movl    %r11d, %eax                   
         0x3002fae8: 41 0f 4d c1                       cmovgel    %r9d, %eax                 
         0x3002faec: 85 c0                             testl    %eax, %eax                   
         0x3002faee: 7e 52                             jle    82                             ; 0x3002fb42
         0x3002faf0: 48 8d 72 10                       leaq    16(%rdx), %rsi                
         0x3002faf4: 89 c3                             movl    %eax, %ebx                    
         0x3002faf6: 45 31 f6                          xorl    %r14d, %r14d                  
         0x3002faf9: 49 bf c0 c8 00 30 00 00 00 00     movabsq    $805357760, %r15           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
  0.00%  0x3002fb03: 45 31 c0                          xorl    %r8d, %r8d                    
         0x3002fb06: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x3002fb15: 66 66 2e 0f 1f 84 00 00 00 00     nopw    %cs:(%rax,%rax)               
  0.00%  0x3002fb20: 48 8b 06                          movq    (%rsi), %rax                  
 25.67%  0x3002fb23: 49 85 c2                          testq    %rax, %r10                   
         0x3002fb26: 75 12                             jne    18                             ; 0x3002fb3a
  0.21%  0x3002fb28: 44 03 40 08                       addl    8(%rax), %r8d                 
 54.52%  0x3002fb2c: 49 ff c6                          incq    %r14                          
  0.01%  0x3002fb2f: 48 83 c6 08                       addq    $8, %rsi                      
 15.15%  0x3002fb33: 49 39 de                          cmpq    %rbx, %r14                    
         0x3002fb36: 72 e8                             jb    -24                             ; 0x3002fb20
         0x3002fb38: eb 5f                             jmp    95                             ; 0x3002fb99
         0x3002fb3a: 48 89 c7                          movq    %rax, %rdi                    
         0x3002fb3d: 41 ff d7                          callq    *%r15                        
         0x3002fb40: eb e6                             jmp    -26                            ; 0x3002fb28
         0x3002fb42: 31 db                             xorl    %ebx, %ebx                    
         0x3002fb44: 45 31 c0                          xorl    %r8d, %r8d                    
         0x3002fb47: 48 8d 34 da                       leaq    (%rdx,%rbx,8), %rsi           
         0x3002fb4b: 48 83 c6 10                       addq    $16, %rsi                     
         0x3002fb4f: 49 bf c0 c8 00 30 00 00 00 00     movabsq    $805357760, %r15           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
....................................................................................................
 95.56%  <total for region 1>

....[Hottest Regions]...............................................................................
 95.56%  [0x3002fab1:0x3002fb4f] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement[Falcon]
  0.27%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.26%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.23%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eb8dcf:0xffffffffa9eb8e14] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9f07124:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eef5ae:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f695f6:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eff400:0xffffffffa9eff42a] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eef44f:0xffffffffa9eef4ad] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9c0f77a:0xffffffffa9c0f77a] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0800:0xffffffffa9ed0889] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9f6b890:0xffffffffa9f6b917] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ee587e:0xffffffffa9ee587e] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffaa28eb16:0xffffffffaa28eb20] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9ed0746:0xffffffffa9ed07b2] in [unknown] ([kernel.kallsyms])
  2.18%  <...other 323 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 95.60%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement[Falcon]
  3.97%  [unknown] ([kernel.kallsyms])
  0.30%  [unknown] (libjvm.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  PMEM::account_enabled (libaztall.so)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  [unknown] ([vdso])
  0.01%  PMEM_Account::fetch_stats (libaztall.so)
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.NpeControlFlowBenchmark_if_not_npe_do_statement_jmhTest::if_not_npe_do_statement_avgt_jmhStub[Falcon]
  0.00%  clock_nanosleep (libc-2.31.so)
  0.00%  __errno_location (libpthread-2.31.so)
  0.00%  java.util.zip.ZipUtils::CENNAM[C1]
  0.00%  _dl_addr (libc-2.31.so)
  0.00%  memcpy (libc-2.31.so)
  0.00%  __pthread_mutex_trylock (libpthread-2.31.so)
  0.00%  is_thread_initialized (libazsys3.so)
  0.03%  <...other 14 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.61%  <generated code>
  3.97%  <native code in ([kernel.kallsyms])>
  0.30%  <native code in (libjvm.so)>
  0.04%  <native code in (libc-2.31.so)>
  0.03%  <native code in (libaztall.so)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement
# Parameters: (nullThreshold = 16, size = 262144)

# Run progress: 12.50% complete, ETA 00:13:06
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 199.705 us/op
# Warmup Iteration   2: 203.779 us/op
# Warmup Iteration   3: 203.465 us/op
# Warmup Iteration   4: 203.634 us/op
# Warmup Iteration   5: 200.616 us/op
Iteration   1: 200.564 us/op
Iteration   2: 199.916 us/op
Iteration   3: 200.114 us/op
Iteration   4: 200.513 us/op
Iteration   5: 204.433 us/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement":
  201.108 ±(99.9%) 7.234 us/op [Average]
  (min, avg, max) = (199.916, 201.108, 204.433), stdev = 1.879
  CI (99.9%): [193.875, 208.342] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement:·asm":
PrintAssembly processed: 136159 total address lines.
Perf output processed (skipped 56.667 seconds):
 Column 1: cycles (51370 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x300303f1:0x30030582] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement[Falcon]

  0.01%  0x300303f1: c5 f1 ef c9                       vpxor    %xmm1, %xmm1, %xmm1          
         0x300303f5: c4 41 31 ef c9                    vpxor    %xmm9, %xmm9, %xmm9          
         0x300303fa: c4 41 2d 76 d2                    vpcmpeqd    %ymm10, %ymm10, %ymm10    
         0x300303ff: 4c 89 e5                          movq    %r12, %rbp                    
         0x30030402: 4c 89 ca                          movq    %r9, %rdx                     
         0x30030405: c5 e9 ef d2                       vpxor    %xmm2, %xmm2, %xmm2          
         0x30030409: c5 e1 ef db                       vpxor    %xmm3, %xmm3, %xmm3          
         0x3003040d: c5 d9 ef e4                       vpxor    %xmm4, %xmm4, %xmm4          
         0x30030411: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x30030420: c5 7e 6f 5a 10                    vmovdqu    16(%rdx), %ymm11           
  0.01%  0x30030425: c4 63 7d 39 dd 01                 vextracti128    $1, %ymm11, %xmm5     
  0.24%  0x3003042b: c5 a1 eb c5                       vpor    %xmm5, %xmm11, %xmm0          
  2.89%  0x3003042f: c5 f9 70 f0 ee                    vpshufd    $238, %xmm0, %xmm6         
         0x30030434: c5 f9 eb c6                       vpor    %xmm6, %xmm0, %xmm0           
  0.03%  0x30030438: 2e 2e 2e c4 e1 f9 7e c0           vmovq    %xmm0, %rax                  
  0.18%  0x30030440: 48 85 d8                          testq    %rbx, %rax                   
         0x30030443: 0f 85 63 01 00 00                 jne    355                            ; 0x300305ac
  2.88%  0x30030449: c5 7e 6f 62 30                    vmovdqu    48(%rdx), %ymm12           
  0.01%  0x3003044e: c4 63 7d 39 e5 01                 vextracti128    $1, %ymm12, %xmm5     
  0.03%  0x30030454: c5 99 eb c5                       vpor    %xmm5, %xmm12, %xmm0          
  0.22%  0x30030458: c5 f9 70 f0 ee                    vpshufd    $238, %xmm0, %xmm6         
  2.89%  0x3003045d: c5 f9 eb c6                       vpor    %xmm6, %xmm0, %xmm0           
  0.05%  0x30030461: c4 e1 f9 7e c0                    vmovq    %xmm0, %rax                  
  0.01%  0x30030466: 48 85 d8                          testq    %rbx, %rax                   
         0x30030469: 0f 85 cb 01 00 00                 jne    459                            ; 0x3003063a
  0.23%  0x3003046f: c5 7e 6f 6a 50                    vmovdqu    80(%rdx), %ymm13           
  2.88%  0x30030474: c4 63 7d 39 ed 01                 vextracti128    $1, %ymm13, %xmm5     
  0.21%  0x3003047a: c5 91 eb c5                       vpor    %xmm5, %xmm13, %xmm0          
  0.16%  0x3003047e: c5 f9 70 f0 ee                    vpshufd    $238, %xmm0, %xmm6         
  0.22%  0x30030483: c5 f9 eb c6                       vpor    %xmm6, %xmm0, %xmm0           
  2.99%  0x30030487: c4 e1 f9 7e c0                    vmovq    %xmm0, %rax                  
  0.03%  0x3003048c: 48 85 d8                          testq    %rbx, %rax                   
         0x3003048f: 0f 85 3f 02 00 00                 jne    575                            ; 0x300306d4
  0.01%  0x30030495: c5 7e 6f 72 70                    vmovdqu    112(%rdx), %ymm14          
  0.25%  0x3003049a: c4 63 7d 39 f5 01                 vextracti128    $1, %ymm14, %xmm5     
  2.72%  0x300304a0: c5 89 eb c5                       vpor    %xmm5, %xmm14, %xmm0          
  0.17%  0x300304a4: c5 f9 70 f0 ee                    vpshufd    $238, %xmm0, %xmm6         
  0.01%  0x300304a9: c5 f9 eb c6                       vpor    %xmm6, %xmm0, %xmm0           
  0.38%  0x300304ad: c4 e1 f9 7e c0                    vmovq    %xmm0, %rax                  
  2.70%  0x300304b2: 48 85 d8                          testq    %rbx, %rax                   
         0x300304b5: 0f 85 bf 02 00 00                 jne    703                            ; 0x3003077a
  0.03%  0x300304bb: c4 c2 25 29 c1                    vpcmpeqq    %ymm9, %ymm11, %ymm0      
  0.01%  0x300304c0: c5 ad ef c0                       vpxor    %ymm0, %ymm10, %ymm0         
  0.27%  0x300304c4: c4 e3 7d 39 c5 01                 vextracti128    $1, %ymm0, %xmm5      
  2.71%  0x300304ca: c5 f9 6b c5                       vpackssdw    %xmm5, %xmm0, %xmm0      
  0.02%  0x300304ce: c4 c2 1d 29 e9                    vpcmpeqq    %ymm9, %ymm12, %ymm5      
  0.01%  0x300304d3: c5 ad ef ed                       vpxor    %ymm5, %ymm10, %ymm5         
  0.30%  0x300304d7: c4 e3 7d 39 ee 01                 vextracti128    $1, %ymm5, %xmm6      
  2.63%  0x300304dd: c5 d1 6b ee                       vpackssdw    %xmm6, %xmm5, %xmm5      
  0.01%  0x300304e1: c4 c2 15 29 f1                    vpcmpeqq    %ymm9, %ymm13, %ymm6      
  0.02%  0x300304e6: c5 ad ef f6                       vpxor    %ymm6, %ymm10, %ymm6         
  0.24%  0x300304ea: c4 e3 7d 39 f7 01                 vextracti128    $1, %ymm6, %xmm7      
  2.79%  0x300304f0: c5 c9 6b f7                       vpackssdw    %xmm7, %xmm6, %xmm6      
  0.01%  0x300304f4: c4 c2 0d 29 f9                    vpcmpeqq    %ymm9, %ymm14, %ymm7      
  0.01%  0x300304f9: c5 ad ef ff                       vpxor    %ymm7, %ymm10, %ymm7         
  0.30%  0x300304fd: c4 c3 7d 39 f8 01                 vextracti128    $1, %ymm7, %xmm8      
  2.68%  0x30030503: c4 c1 41 6b f8                    vpackssdw    %xmm8, %xmm7, %xmm7      
  0.03%  0x30030508: c4 41 39 ef c0                    vpxor    %xmm8, %xmm8, %xmm8          
  0.02%  0x3003050d: c4 22 7d 91 04 1d 08 00 00 00     vpgatherqd    %xmm0, 8(,%ymm11), %xmm8  
 11.72%  0x30030517: c5 f9 ef c0                       vpxor    %xmm0, %xmm0, %xmm0          
  2.91%  0x3003051b: c4 a2 55 91 04 25 08 00 00 00     vpgatherqd    %xmm5, 8(,%ymm12), %xmm0  
 11.28%  0x30030525: c5 d1 ef ed                       vpxor    %xmm5, %xmm5, %xmm5          
  2.97%  0x30030529: c4 a2 4d 91 2c 2d 08 00 00 00     vpgatherqd    %xmm6, 8(,%ymm13), %xmm5  
 11.54%  0x30030533: c5 c9 ef f6                       vpxor    %xmm6, %xmm6, %xmm6          
  3.09%  0x30030537: c4 a2 45 91 34 35 08 00 00 00     vpgatherqd    %xmm7, 8(,%ymm14), %xmm6  
 11.36%  0x30030541: c5 b9 fe c9                       vpaddd    %xmm1, %xmm8, %xmm1         
  3.26%  0x30030545: c5 e9 fe d0                       vpaddd    %xmm0, %xmm2, %xmm2         
         0x30030549: c5 e1 fe dd                       vpaddd    %xmm5, %xmm3, %xmm3         
         0x3003054d: c5 d9 fe e6                       vpaddd    %xmm6, %xmm4, %xmm4         
  0.32%  0x30030551: 48 83 ea 80                       subq    $-128, %rdx                   
  2.92%  0x30030555: 48 83 c5 f0                       addq    $-16, %rbp                    
         0x30030559: 0f 85 c1 fe ff ff                 jne    -319                           ; 0x30030420
         0x3003055f: c5 e9 fe c1                       vpaddd    %xmm1, %xmm2, %xmm0         
         0x30030563: c5 e1 fe c0                       vpaddd    %xmm0, %xmm3, %xmm0         
         0x30030567: c5 d9 fe c0                       vpaddd    %xmm0, %xmm4, %xmm0         
         0x3003056b: c5 f9 70 c8 ee                    vpshufd    $238, %xmm0, %xmm1         
         0x30030570: c5 f9 fe c1                       vpaddd    %xmm1, %xmm0, %xmm0         
         0x30030574: c5 f9 70 c8 55                    vpshufd    $85, %xmm0, %xmm1          
         0x30030579: c5 f9 fe c1                       vpaddd    %xmm1, %xmm0, %xmm0         
         0x3003057d: c4 c1 79 7e c0                    vmovd    %xmm0, %r8d                  
         0x30030582: 4d 39 e5                          cmpq    %r12, %r13                    
....................................................................................................
 95.85%  <total for region 1>

....[Hottest Regions]...............................................................................
 95.85%  [0x300303f1:0x30030582] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement[Falcon]
  0.26%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9eef353:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f0711c:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9eb93bb:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9eef44f:0xffffffffa9eef4ad] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f695f0:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ee587e:0xffffffffa9ee58a7] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f07060:0xffffffffa9f070ae] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28ead0:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0740:0xffffffffa9ed078b] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eee5d0:0xffffffffa9eee62f] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28d0d0:0xffffffffaa28d11e] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0800:0xffffffffa9ed0866] in [unknown] ([kernel.kallsyms])
  2.13%  <...other 303 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 95.88%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement[Falcon]
  3.89%  [unknown] ([kernel.kallsyms])
  0.12%  [unknown] (libjvm.so)
  0.02%  [unknown] (libc-2.31.so)
  0.01%  thread_stack_region_start (libazsys3.so)
  0.01%  PMEM::account_enabled (libaztall.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  az_pmem_get_fund_stats (libazsys3.so)
  0.00%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.NpeControlFlowBenchmark_if_not_npe_do_statement_jmhTest::if_not_npe_do_statement_avgt_jmhStub[Falcon]
  0.00%  syscall (libc-2.31.so)
  0.00%  __pthread_mutex_lock (libpthread-2.31.so)
  0.00%  PMEM::get_account_usage (libaztall.so)
  0.00%  __errno_location (libpthread-2.31.so)
  0.00%  _IO_default_xsputn (libc-2.31.so)
  0.00%  clock_gettime (libc-2.31.so)
  0.00%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  [unknown] (kvm.ko)
  0.00%  _dl_addr (libc-2.31.so)
  0.00%  <stub: getfield  180 getfield>
  0.02%  <...other 9 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.89%  <generated code>
  3.89%  <native code in ([kernel.kallsyms])>
  0.12%  <native code in (libjvm.so)>
  0.04%  <native code in (libc-2.31.so)>
  0.03%  <native code in (libaztall.so)>
  0.02%  <native code in (libazsys3.so)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.00%  <native code in (kvm.ko)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_npe_continue
# Parameters: (nullThreshold = 0, size = 262144)

# Run progress: 25.00% complete, ETA 00:11:10
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 258.101 us/op
# Warmup Iteration   2: 246.169 us/op
# Warmup Iteration   3: 242.772 us/op
# Warmup Iteration   4: 242.854 us/op
# Warmup Iteration   5: 243.284 us/op
Iteration   1: 243.256 us/op
Iteration   2: 258.872 us/op
Iteration   3: 252.806 us/op
Iteration   4: 259.643 us/op
Iteration   5: 259.481 us/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_npe_continue":
  254.812 ±(99.9%) 27.172 us/op [Average]
  (min, avg, max) = (243.256, 254.812, 259.643), stdev = 7.057
  CI (99.9%): [227.639, 281.984] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_npe_continue:·asm":
PrintAssembly processed: 135987 total address lines.
Perf output processed (skipped 57.445 seconds):
 Column 1: cycles (51533 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3003071c:0x30030863] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue[Falcon]

         0x3003071c: 41 be 48 00 00 00                 movl    $72, %r14d                    
         0x30030722: 41 bf 40 00 00 00                 movl    $64, %r15d                    
  0.00%  0x30030728: 41 bc 38 00 00 00                 movl    $56, %r12d                    
         0x3003072e: 41 bd 30 00 00 00                 movl    $48, %r13d                    
         0x30030734: bd 28 00 00 00                    movl    $40, %ebp                     
         0x30030739: b9 20 00 00 00                    movl    $32, %ecx                     
         0x3003073e: 41 ba 10 00 00 00                 movl    $16, %r10d                    
         0x30030744: bb 18 00 00 00                    movl    $24, %ebx                     
         0x30030749: 45 31 db                          xorl    %r11d, %r11d                  
         0x3003074c: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
  0.00%  0x3003075b: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
  0.33%  0x30030760: 4a 8b 44 ca 10                    movq    16(%rdx,%r9,8), %rax          
  4.41%  0x30030765: 48 85 c6                          testq    %rax, %rsi                   
         0x30030768: 0f 85 22 01 00 00                 jne    290                            ; 0x30030890
  3.36%  0x3003076e: 44 8b 40 08                       movl    8(%rax), %r8d                 
  5.62%  0x30030772: 2e 2e 2e 2e 2e 2e 2e 2e 2e 4a     movq    %cs:24(%rdx,%r9,8), %rax      
  0.30%  0x30030780: 48 85 c6                          testq    %rax, %rsi                   
         0x30030783: 0f 85 2a 01 00 00                 jne    298                            ; 0x300308b3
  0.85%  0x30030789: 45 01 d8                          addl    %r11d, %r8d                   
  3.49%  0x3003078c: 44 8b 58 08                       movl    8(%rax), %r11d                
  7.87%  0x30030790: 4a 8b 44 ca 20                    movq    32(%rdx,%r9,8), %rax          
  0.25%  0x30030795: 48 85 c6                          testq    %rax, %rsi                   
         0x30030798: 0f 85 3c 01 00 00                 jne    316                            ; 0x300308da
  0.68%  0x3003079e: 45 01 d8                          addl    %r11d, %r8d                   
  3.81%  0x300307a1: 44 8b 58 08                       movl    8(%rax), %r11d                
  2.65%  0x300307a5: 4a 8b 44 ca 28                    movq    40(%rdx,%r9,8), %rax          
  0.21%  0x300307aa: 48 85 c6                          testq    %rax, %rsi                   
         0x300307ad: 0f 85 52 01 00 00                 jne    338                            ; 0x30030905
  0.62%  0x300307b3: 45 01 d8                          addl    %r11d, %r8d                   
  3.88%  0x300307b6: 44 8b 58 08                       movl    8(%rax), %r11d                
  1.71%  0x300307ba: 2e 4a 8b 44 ca 30                 movq    %cs:48(%rdx,%r9,8), %rax      
  0.33%  0x300307c0: 48 85 c6                          testq    %rax, %rsi                   
         0x300307c3: 0f 85 63 01 00 00                 jne    355                            ; 0x3003092c
  0.57%  0x300307c9: 45 01 d8                          addl    %r11d, %r8d                   
  3.94%  0x300307cc: 44 8b 58 08                       movl    8(%rax), %r11d                
  8.07%  0x300307d0: 4a 8b 44 ca 38                    movq    56(%rdx,%r9,8), %rax          
  0.19%  0x300307d5: 48 85 c6                          testq    %rax, %rsi                   
         0x300307d8: 0f 85 75 01 00 00                 jne    373                            ; 0x30030953
  0.40%  0x300307de: 45 01 d8                          addl    %r11d, %r8d                   
  3.99%  0x300307e1: 44 8b 58 08                       movl    8(%rax), %r11d                
 11.45%  0x300307e5: 4a 8b 44 ca 40                    movq    64(%rdx,%r9,8), %rax          
  0.20%  0x300307ea: 48 85 c6                          testq    %rax, %rsi                   
         0x300307ed: 0f 85 87 01 00 00                 jne    391                            ; 0x3003097a
  0.36%  0x300307f3: 45 01 d8                          addl    %r11d, %r8d                   
  4.25%  0x300307f6: 44 8b 58 08                       movl    8(%rax), %r11d                
  2.48%  0x300307fa: 2e 4a 8b 44 ca 48                 movq    %cs:72(%rdx,%r9,8), %rax      
  0.18%  0x30030800: 48 85 c6                          testq    %rax, %rsi                   
         0x30030803: 0f 85 9c 01 00 00                 jne    412                            ; 0x300309a5
  0.33%  0x30030809: 45 01 c3                          addl    %r8d, %r11d                   
  4.22%  0x3003080c: 44 03 58 08                       addl    8(%rax), %r11d                
  4.92%  0x30030810: 49 83 c1 08                       addq    $8, %r9                       
  0.17%  0x30030814: 49 83 c6 40                       addq    $64, %r14                     
  0.34%  0x30030818: 49 83 c7 40                       addq    $64, %r15                     
  1.14%  0x3003081c: 49 83 c4 40                       addq    $64, %r12                     
  3.14%  0x30030820: 49 83 c5 40                       addq    $64, %r13                     
  0.15%  0x30030824: 48 83 c5 40                       addq    $64, %rbp                     
  0.33%  0x30030828: 48 83 c1 40                       addq    $64, %rcx                     
  1.06%  0x3003082c: 49 83 c2 40                       addq    $64, %r10                     
  3.29%  0x30030830: 48 83 c3 40                       addq    $64, %rbx                     
  0.17%  0x30030834: 4c 39 4c 24 20                    cmpq    %r9, 32(%rsp)                 
         0x30030839: 0f 85 21 ff ff ff                 jne    -223                           ; 0x30030760
         0x3003083f: 4c 8b 44 24 18                    movq    24(%rsp), %r8                 
         0x30030844: 41 83 e0 07                       andl    $7, %r8d                      
         0x30030848: 74 34                             je    52                              ; 0x3003087e
         0x3003084a: 4a 8d 34 ca                       leaq    (%rdx,%r9,8), %rsi            
         0x3003084e: 48 83 c6 10                       addq    $16, %rsi                     
         0x30030852: 48 b9 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rcx           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3003085c: 0f 1f 40 00                       nopl    (%rax)                        
         0x30030860: 48 8b 06                          movq    (%rsi), %rax                  
         0x30030863: 48 85 44 24 10                    testq    %rax, 16(%rsp)               
....................................................................................................
 95.70%  <total for region 1>

....[Hottest Regions]...............................................................................
 95.70%  [0x3003071c:0x30030863] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue[Falcon]
  0.30%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.23%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.22%  [0xffffffffa9ecfb6a:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eb93b5:0xffffffffa9eb9491] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f0711c:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9eef5ae:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f07065:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffaa28d0d0:0xffffffffaa28d11e] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0800:0xffffffffa9ed0889] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f686c0:0xffffffffa9f6875f] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28ead0:0xffffffffaa28eb16] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0746:0xffffffffa9ed07b2] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ee5876:0xffffffffa9ee58a7] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eee5d0:0xffffffffa9eee62f] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.05%  [0x7ff3fd2235f8:0x7ff3fd223621] in [unknown] (libjvm.so)
  2.12%  <...other 318 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 95.72%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue[Falcon]
  3.88%  [unknown] ([kernel.kallsyms])
  0.20%  [unknown] (libjvm.so)
  0.02%  [unknown] (libc-2.31.so)
  0.02%  syscall (libc-2.31.so)
  0.02%  [unknown] (idma64.ko)
  0.02%  clock_gettime (libc-2.31.so)
  0.02%  VMEM::get_account_usage (libaztall.so)
  0.02%  [unknown] ([vdso])
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  thread_stack_region_start (libazsys3.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  PMEM::account_enabled (libaztall.so)
  0.01%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.NpeControlFlowBenchmark_if_npe_continue_jmhTest::if_npe_continue_avgt_jmhStub[Falcon]
  0.01%  az_zmd_api_version_tall (libaztall.so)
  0.01%  [unknown] (libstdc++.so.6)
  0.00%  _dl_addr (libc-2.31.so)
  0.00%  az_get_elastic_tall (libaztall.so)
  0.03%  <...other 10 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.73%  <generated code>
  3.88%  <native code in ([kernel.kallsyms])>
  0.20%  <native code in (libjvm.so)>
  0.06%  <native code in (libaztall.so)>
  0.05%  <native code in (libc-2.31.so)>
  0.02%  <native code in ([vdso])>
  0.02%  <native code in (idma64.ko)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (libstdc++.so.6)>
  0.00%  <native code in (perf-149711.map)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_npe_continue
# Parameters: (nullThreshold = 16, size = 262144)

# Run progress: 37.50% complete, ETA 00:09:19
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 210.204 us/op
# Warmup Iteration   2: 200.384 us/op
# Warmup Iteration   3: 200.343 us/op
# Warmup Iteration   4: 200.011 us/op
# Warmup Iteration   5: 200.293 us/op
Iteration   1: 200.289 us/op
Iteration   2: 200.409 us/op
Iteration   3: 203.481 us/op
Iteration   4: 203.447 us/op
Iteration   5: 203.303 us/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_npe_continue":
  202.186 ±(99.9%) 6.463 us/op [Average]
  (min, avg, max) = (200.289, 202.186, 203.481), stdev = 1.678
  CI (99.9%): [195.723, 208.649] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_npe_continue:·asm":
PrintAssembly processed: 136247 total address lines.
Perf output processed (skipped 58.111 seconds):
 Column 1: cycles (51351 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3003076b:0x3003090f] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue[Falcon]

         0x3003076b: c4 41 29 ef d2                    vpxor    %xmm10, %xmm10, %xmm10       
         0x30030770: c4 41 25 76 db                    vpcmpeqd    %ymm11, %ymm11, %ymm11    
         0x30030775: 48 b8 d8 0c 03 30 00 00 00 00     movabsq    $805506264, %rax           ; 0x30030cd8
         0x3003077f: c4 62 7d 59 20                    vpbroadcastq    (%rax), %ymm12        
  0.00%  0x30030784: 49 bc c0 c8 00 30 00 00 00 00     movabsq    $805357760, %r12           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3003078e: c5 e9 ef d2                       vpxor    %xmm2, %xmm2, %xmm2          
         0x30030792: c5 e1 ef db                       vpxor    %xmm3, %xmm3, %xmm3          
         0x30030796: c5 d9 ef e4                       vpxor    %xmm4, %xmm4, %xmm4          
         0x3003079a: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
         0x300307a0: c4 a1 7e 6f 7c 39 10              vmovdqu    16(%rcx,%r15), %ymm7       
  0.15%  0x300307a7: c4 e3 7d 39 fd 01                 vextracti128    $1, %ymm7, %xmm5      
  2.80%  0x300307ad: c5 c1 eb c5                       vpor    %xmm5, %xmm7, %xmm0           
  0.01%  0x300307b1: c5 f9 70 f0 ee                    vpshufd    $238, %xmm0, %xmm6         
         0x300307b6: c5 f9 eb c6                       vpor    %xmm6, %xmm0, %xmm0           
  0.14%  0x300307ba: 2e c4 e1 f9 7e c0                 vmovq    %xmm0, %rax                  
  2.81%  0x300307c0: 4c 85 d8                          testq    %r11, %rax                   
         0x300307c3: 0f 85 5c 01 00 00                 jne    348                            ; 0x30030925
         0x300307c9: c4 21 7e 6f 44 39 30              vmovdqu    48(%rcx,%r15), %ymm8       
         0x300307d0: c4 63 7d 39 c5 01                 vextracti128    $1, %ymm8, %xmm5      
  0.14%  0x300307d6: c5 b9 eb c5                       vpor    %xmm5, %xmm8, %xmm0           
  2.92%  0x300307da: c5 f9 70 f0 ee                    vpshufd    $238, %xmm0, %xmm6         
         0x300307df: c5 f9 eb c6                       vpor    %xmm6, %xmm0, %xmm0           
  0.02%  0x300307e3: c4 e1 f9 7e c0                    vmovq    %xmm0, %rax                  
  0.15%  0x300307e8: 4c 85 d8                          testq    %r11, %rax                   
         0x300307eb: 0f 85 d8 01 00 00                 jne    472                            ; 0x300309c9
  2.86%  0x300307f1: c4 21 7e 6f 6c 39 50              vmovdqu    80(%rcx,%r15), %ymm13      
  0.04%  0x300307f8: c4 63 7d 39 ed 01                 vextracti128    $1, %ymm13, %xmm5     
  0.11%  0x300307fe: c5 91 eb c5                       vpor    %xmm5, %xmm13, %xmm0          
  0.21%  0x30030802: c5 f9 70 f0 ee                    vpshufd    $238, %xmm0, %xmm6         
  2.88%  0x30030807: c5 f9 eb c6                       vpor    %xmm6, %xmm0, %xmm0           
  0.14%  0x3003080b: c4 e1 f9 7e c0                    vmovq    %xmm0, %rax                  
  0.01%  0x30030810: 4c 85 d8                          testq    %r11, %rax                   
         0x30030813: 0f 85 60 02 00 00                 jne    608                            ; 0x30030a79
  0.15%  0x30030819: c4 21 7e 6f 74 39 70              vmovdqu    112(%rcx,%r15), %ymm14     
  2.77%  0x30030820: c4 63 7d 39 f5 01                 vextracti128    $1, %ymm14, %xmm5     
  0.06%  0x30030826: c5 89 eb c5                       vpor    %xmm5, %xmm14, %xmm0          
  0.04%  0x3003082a: c5 f9 70 f0 ee                    vpshufd    $238, %xmm0, %xmm6         
  0.12%  0x3003082f: c5 f9 eb c6                       vpor    %xmm6, %xmm0, %xmm0           
  2.94%  0x30030833: 2e 2e 2e 2e 2e 2e 2e 2e c4 e1     vmovq    %xmm0, %rax                  
  0.02%  0x30030840: 4c 85 d8                          testq    %r11, %rax                   
         0x30030843: 0f 85 f2 02 00 00                 jne    754                            ; 0x30030b3b
  0.01%  0x30030849: c4 c2 45 29 c2                    vpcmpeqq    %ymm10, %ymm7, %ymm0      
  0.14%  0x3003084e: c5 a5 ef c0                       vpxor    %ymm0, %ymm11, %ymm0         
  2.87%  0x30030852: c4 e3 7d 39 c5 01                 vextracti128    $1, %ymm0, %xmm5      
  0.03%  0x30030858: c5 f9 6b c5                       vpackssdw    %xmm5, %xmm0, %xmm0      
  0.01%  0x3003085c: c5 d1 ef ed                       vpxor    %xmm5, %xmm5, %xmm5          
  0.14%  0x30030860: c4 e2 7d 91 2c 3d 08 00 00 00     vpgatherqd    %xmm0, 8(,%ymm7), %xmm5  
 13.68%  0x3003086a: c4 c2 3d 29 c2                    vpcmpeqq    %ymm10, %ymm8, %ymm0      
  2.96%  0x3003086f: c5 a5 ef c0                       vpxor    %ymm0, %ymm11, %ymm0         
         0x30030873: c4 e3 7d 39 c6 01                 vextracti128    $1, %ymm0, %xmm6      
         0x30030879: c5 f9 6b c6                       vpackssdw    %xmm6, %xmm0, %xmm0      
         0x3003087d: c5 c9 ef f6                       vpxor    %xmm6, %xmm6, %xmm6          
  3.13%  0x30030881: c4 a2 7d 91 34 05 08 00 00 00     vpgatherqd    %xmm0, 8(,%ymm8), %xmm6  
 10.90%  0x3003088b: c4 c2 15 29 c2                    vpcmpeqq    %ymm10, %ymm13, %ymm0     
  3.09%  0x30030890: c5 a5 ef c0                       vpxor    %ymm0, %ymm11, %ymm0         
         0x30030894: c4 e3 7d 39 c7 01                 vextracti128    $1, %ymm0, %xmm7      
         0x3003089a: c5 f9 6b c7                       vpackssdw    %xmm7, %xmm0, %xmm0      
         0x3003089e: c5 c1 ef ff                       vpxor    %xmm7, %xmm7, %xmm7          
  3.15%  0x300308a2: c4 a2 7d 91 3c 2d 08 00 00 00     vpgatherqd    %xmm0, 8(,%ymm13), %xmm7  
 10.95%  0x300308ac: c4 c2 0d 29 c2                    vpcmpeqq    %ymm10, %ymm14, %ymm0     
  3.05%  0x300308b1: c5 a5 ef c0                       vpxor    %ymm0, %ymm11, %ymm0         
         0x300308b5: c4 c3 7d 39 c0 01                 vextracti128    $1, %ymm0, %xmm8      
         0x300308bb: c4 c1 79 6b c0                    vpackssdw    %xmm8, %xmm0, %xmm0      
         0x300308c0: c4 41 39 ef c0                    vpxor    %xmm8, %xmm8, %xmm8          
  3.13%  0x300308c5: c4 22 7d 91 04 35 08 00 00 00     vpgatherqd    %xmm0, 8(,%ymm14), %xmm8  
 10.52%  0x300308cf: c5 f1 fe cd                       vpaddd    %xmm5, %xmm1, %xmm1         
  3.12%  0x300308d3: c5 e9 fe d6                       vpaddd    %xmm6, %xmm2, %xmm2         
         0x300308d7: c5 e1 fe df                       vpaddd    %xmm7, %xmm3, %xmm3         
         0x300308db: c5 b9 fe e4                       vpaddd    %xmm4, %xmm8, %xmm4         
  0.27%  0x300308df: c4 41 35 d4 cc                    vpaddq    %ymm12, %ymm9, %ymm9        
  2.85%  0x300308e4: 49 83 ef 80                       subq    $-128, %r15                   
         0x300308e8: 4d 39 fe                          cmpq    %r15, %r14                    
         0x300308eb: 0f 85 af fe ff ff                 jne    -337                           ; 0x300307a0
         0x300308f1: c5 e9 fe c1                       vpaddd    %xmm1, %xmm2, %xmm0         
         0x300308f5: c5 e1 fe c0                       vpaddd    %xmm0, %xmm3, %xmm0         
         0x300308f9: c5 d9 fe c0                       vpaddd    %xmm0, %xmm4, %xmm0         
         0x300308fd: c5 f9 70 c8 ee                    vpshufd    $238, %xmm0, %xmm1         
         0x30030902: c5 f9 fe c1                       vpaddd    %xmm1, %xmm0, %xmm0         
         0x30030906: c5 f9 70 c8 55                    vpshufd    $85, %xmm0, %xmm1          
         0x3003090b: c5 f9 fe c1                       vpaddd    %xmm1, %xmm0, %xmm0         
         0x3003090f: c5 f9 7e c2                       vmovd    %xmm0, %edx                  
....................................................................................................
 95.51%  <total for region 1>

....[Hottest Regions]...............................................................................
 95.51%  [0x3003076b:0x3003090f] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue[Falcon]
  0.24%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.23%  [0xffffffffa9ecfb60:0xffffffffa9ecfb7c] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9eb93b5:0xffffffffa9eb94b4] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9f0711f:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9eff400:0xffffffffa9eff436] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eb7da9:0xffffffffa9eb7e8a] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ee5876:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0740:0xffffffffa9ed079f] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9f69657:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0800:0xffffffffa9ed086e] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eee5d0:0xffffffffa9eee62f] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eef44f:0xffffffffa9eef4ad] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa976542:0xffffffffaa97656e] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffaa28d0d1:0xffffffffaa28d127] in [unknown] ([kernel.kallsyms])
  2.39%  <...other 388 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 95.53%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue[Falcon]
  4.20%  [unknown] ([kernel.kallsyms])
  0.16%  [unknown] (libjvm.so)
  0.02%  [unknown] (libc-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.NpeControlFlowBenchmark_if_npe_continue_jmhTest::if_npe_continue_avgt_jmhStub[Falcon]
  0.01%  syscall (libc-2.31.so)
  0.01%  [unknown] ([vdso])
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  <stub: method entry point (kind = zerolocals)>
  0.00%  __errno_location (libpthread-2.31.so)
  0.00%  clock_gettime (libc-2.31.so)
  0.00%  VMEM::get_account_usage (libaztall.so)
  0.00%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  is_thread_initialized (libazsys3.so)
  0.00%  _IO_file_write (libc-2.31.so)
  0.00%  _IO_fwrite (libc-2.31.so)
  0.00%  clock_nanosleep (libc-2.31.so)
  0.00%  usleep (libc-2.31.so)
  0.02%  <...other 10 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.55%  <generated code>
  4.20%  <native code in ([kernel.kallsyms])>
  0.16%  <native code in (libjvm.so)>
  0.04%  <native code in (libc-2.31.so)>
  0.02%  <native code in (libaztall.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in ([vdso])>
  0.00%  <native code in (kvm.ko)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.stream_filter_npe
# Parameters: (nullThreshold = 0, size = 262144)

# Run progress: 50.00% complete, ETA 00:07:28
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1965.922 us/op
# Warmup Iteration   2: 2110.093 us/op
# Warmup Iteration   3: 390.425 us/op
# Warmup Iteration   4: 290.947 us/op
# Warmup Iteration   5: 291.101 us/op
Iteration   1: 297.115 us/op
Iteration   2: 296.836 us/op
Iteration   3: 296.720 us/op
Iteration   4: 296.657 us/op
Iteration   5: 297.050 us/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.stream_filter_npe":
  296.876 ±(99.9%) 0.773 us/op [Average]
  (min, avg, max) = (296.657, 296.876, 297.115), stdev = 0.201
  CI (99.9%): [296.103, 297.648] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.stream_filter_npe:·asm":
PrintAssembly processed: 153857 total address lines.
Perf output processed (skipped 58.361 seconds):
 Column 1: cycles (51732 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3003d2bd:0x3003d312] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe[Falcon]

         0x3003d2bd: 4c 8b 00                          movq    (%rax), %r8                   
         0x3003d2c0: 49 b9 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %r9            ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3003d2ca: 49 85 c8                          testq    %rcx, %r8                    
         0x3003d2cd: 75 78                             jne    120                            ; 0x3003d347
         0x3003d2cf: 44 8b 51 08                       movl    8(%rcx), %r10d                
         0x3003d2d3: 31 d2                             xorl    %edx, %edx                    
         0x3003d2d5: 45 85 d2                          testl    %r10d, %r10d                 
         0x3003d2d8: 74 33                             je    51                              ; 0x3003d30d
         0x3003d2da: 48 8d 71 10                       leaq    16(%rcx), %rsi                
         0x3003d2de: 31 db                             xorl    %ebx, %ebx                    
 37.06%  0x3003d2e0: 48 8b 06                          movq    (%rsi), %rax                  
  4.21%  0x3003d2e3: 49 85 c0                          testq    %rax, %r8                    
         0x3003d2e6: 75 1a                             jne    26                             ; 0x3003d302
  0.22%  0x3003d2e8: 8b 40 08                          movl    8(%rax), %eax                 
 20.43%  0x3003d2eb: 83 f8 80                          cmpl    $-128, %eax                   
  0.00%  0x3003d2ee: 7c 34                             jl    52                              ; 0x3003d324
 33.10%  0x3003d2f0: 01 c2                             addl    %eax, %edx                    
  0.06%  0x3003d2f2: 48 ff c3                          incq    %rbx                          
  0.01%  0x3003d2f5: 48 83 c6 08                       addq    $8, %rsi                      
         0x3003d2f9: 4c 39 d3                          cmpq    %r10, %rbx                    
  0.00%  0x3003d2fc: 72 e2                             jb    -30                             ; 0x3003d2e0
         0x3003d2fe: 66 90                             nop                                   
         0x3003d300: eb 08                             jmp    8                              ; 0x3003d30a
         0x3003d302: 48 89 c7                          movq    %rax, %rdi                    
         0x3003d305: 41 ff d1                          callq    *%r9                         
         0x3003d308: eb de                             jmp    -34                            ; 0x3003d2e8
         0x3003d30a: 48 63 d2                          movslq    %edx, %rdx                  
         0x3003d30d: 48 89 d0                          movq    %rdx, %rax                    
         0x3003d310: 5b                                popq    %rbx                          
         0x3003d311: c3                                retq                                  
         0x3003d312: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
....................................................................................................
 95.10%  <total for region 1>

....[Hottest Regions]...............................................................................
 95.10%  [0x3003d2bd:0x3003d312] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe[Falcon]
  0.79%  [0xffffffffa9c94c86:0xffffffffa9c94c86] in [unknown] ([kernel.kallsyms])
  0.27%  [0xffffffffa9eef304:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.24%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9f0711c:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eb93b0:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f211f0:0xffffffffa9f21223] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9eef44f:0xffffffffa9eef4ad] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffaa28ead9:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eff400:0xffffffffa9eff421] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9ed0800:0xffffffffa9ed0866] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f686c0:0xffffffffa9f68761] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ee5876:0xffffffffa9ee587e] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f69640:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28d0d0:0xffffffffaa28d127] in [unknown] ([kernel.kallsyms])
  0.05%  [0x7fc2fc72e5f8:0x7fc2fc72e624] in [unknown] (libjvm.so)
  0.05%  [0xffffffffa9eceec5:0xffffffffa9ecef23] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9eb29b0:0xffffffffa9eb29cb] in [unknown] ([kernel.kallsyms])
  2.12%  <...other 334 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 95.12%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe[Falcon]
  4.56%  [unknown] ([kernel.kallsyms])
  0.19%  [unknown] (libjvm.so)
  0.01%  is_thread_initialized (libazsys3.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  [unknown] ([vdso])
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.00%  az_pmem_get_account_usage_tall; az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  syscall (libc-2.31.so)
  0.00%  <stub: method entry point (kind = zerolocals)>
  0.00%  PMEM::account_enabled (libaztall.so)
  0.00%  _IO_default_xsputn (libc-2.31.so)
  0.00%  MutexLocker::~MutexLocker (libaztall.so)
  0.00%  _dl_addr (libc-2.31.so)
  0.02%  <...other 11 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.12%  <generated code>
  4.56%  <native code in ([kernel.kallsyms])>
  0.19%  <native code in (libjvm.so)>
  0.03%  <native code in (libaztall.so)>
  0.03%  <native code in (libc-2.31.so)>
  0.02%  <native code in (libazsys3.so)>
  0.01%  <native code in ([vdso])>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.00%  <native code in (ld-2.31.so)>
  0.00%  <native code in (kvm.ko)>
  0.00%  <native code in (libjli.so)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.stream_filter_npe
# Parameters: (nullThreshold = 16, size = 262144)

# Run progress: 62.50% complete, ETA 00:05:36
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2607.393 us/op
# Warmup Iteration   2: 2780.169 us/op
# Warmup Iteration   3: 2720.812 us/op
# Warmup Iteration   4: 1557.623 us/op
# Warmup Iteration   5: 1539.919 us/op
Iteration   1: 1538.988 us/op
Iteration   2: 1565.318 us/op
Iteration   3: 1562.541 us/op
Iteration   4: 1562.638 us/op
Iteration   5: 1562.413 us/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.stream_filter_npe":
  1558.379 ±(99.9%) 42.001 us/op [Average]
  (min, avg, max) = (1538.988, 1558.379, 1565.318), stdev = 10.908
  CI (99.9%): [1516.378, 1600.381] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.stream_filter_npe:·asm":
PrintAssembly processed: 153406 total address lines.
Perf output processed (skipped 56.541 seconds):
 Column 1: cycles (51630 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002cda0:0x3002cdeb] in [unknown] (perf-150176.map)

 <no assembly is recorded, native region>
....................................................................................................
 95.58%  <total for region 1>

....[Hottest Regions]...............................................................................
 95.58%  [0x3002cda0:0x3002cdeb] in [unknown] (perf-150176.map)
  0.47%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.24%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.24%  [0xffffffffa9ecfb66:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb93b0:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f0711c:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f695f0:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eef44f:0xffffffffa9eef4b0] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eff400:0xffffffffa9eff42a] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ee587e:0xffffffffa9ee588c] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f07060:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0800:0xffffffffa9ed0873] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eb7d82:0xffffffffa9eb7e46] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eceec5:0xffffffffa9ecef0f] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eaca37:0xffffffffa9eaca7e] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0740:0xffffffffa9ed07b2] in [unknown] ([kernel.kallsyms])
  1.97%  <...other 295 warm regions...>
....................................................................................................
 99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 95.58%  [unknown] (perf-150176.map)
  4.14%  [unknown] ([kernel.kallsyms])
  0.18%  [unknown] (libjvm.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  PMEM::account_enabled (libaztall.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  az_pmem_get_account_usage_tall (libaztall.so)
  0.01%  _IO_default_xsputn (libc-2.31.so)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  __errno_location (libpthread-2.31.so)
  0.00%  clock_gettime (libc-2.31.so)
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  <stub: invokeinterface  185 invokeinterface>
  0.00%  [unknown] (libstdc++.so.6)
  0.00%  PMEM::get_account_usage (libaztall.so)
  0.00%  _dl_addr (libc-2.31.so)
  0.00%  thread_stack_region_start@plt (libazsys3.so)
  0.00%  VMEM::get_account_usage (libaztall.so)
  0.00%  VMEM::get_account_usage@plt (libaztall.so)
  0.01%  <...other 4 warm methods...>
....................................................................................................
 99.99%  <totals>

....[Distribution by Area]..........................................................................
 95.58%  <native code in (perf-150176.map)>
  4.14%  <native code in ([kernel.kallsyms])>
  0.18%  <native code in (libjvm.so)>
  0.03%  <native code in (libc-2.31.so)>
  0.03%  <native code in (libaztall.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <generated code>
  0.01%  <native code in (libazsys3.so)>
  0.00%  <native code in (libpthread-2.31.so)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.try_npe_catch
# Parameters: (nullThreshold = 0, size = 262144)

# Run progress: 75.00% complete, ETA 00:03:44
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 253.075 us/op
# Warmup Iteration   2: 240.095 us/op
# Warmup Iteration   3: 243.010 us/op
# Warmup Iteration   4: 239.912 us/op
# Warmup Iteration   5: 243.207 us/op
Iteration   1: 238.577 us/op
Iteration   2: 242.901 us/op
Iteration   3: 242.277 us/op
Iteration   4: 239.779 us/op
Iteration   5: 243.184 us/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.try_npe_catch":
  241.344 ±(99.9%) 7.888 us/op [Average]
  (min, avg, max) = (238.577, 241.344, 243.184), stdev = 2.048
  CI (99.9%): [233.456, 249.231] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.try_npe_catch:·asm":
PrintAssembly processed: 136031 total address lines.
Perf output processed (skipped 58.466 seconds):
 Column 1: cycles (51489 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x30030f22:0x30031063] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch[Falcon]

         0x30030f22: 41 bf 40 00 00 00                 movl    $64, %r15d                    
         0x30030f28: 41 bc 38 00 00 00                 movl    $56, %r12d                    
         0x30030f2e: 41 bd 30 00 00 00                 movl    $48, %r13d                    
         0x30030f34: bd 28 00 00 00                    movl    $40, %ebp                     
         0x30030f39: b9 20 00 00 00                    movl    $32, %ecx                     
         0x30030f3e: 41 ba 10 00 00 00                 movl    $16, %r10d                    
         0x30030f44: bb 18 00 00 00                    movl    $24, %ebx                     
         0x30030f49: 45 31 db                          xorl    %r11d, %r11d                  
         0x30030f4c: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x30030f5b: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
  0.29%  0x30030f60: 4a 8b 44 ca 10                    movq    16(%rdx,%r9,8), %rax          
  4.19%  0x30030f65: 48 85 c6                          testq    %rax, %rsi                   
  0.00%  0x30030f68: 0f 85 22 01 00 00                 jne    290                            ; 0x30031090
  3.61%  0x30030f6e: 44 8b 40 08                       movl    8(%rax), %r8d                 
  6.77%  0x30030f72: 2e 2e 2e 2e 2e 2e 2e 2e 2e 4a     movq    %cs:24(%rdx,%r9,8), %rax      
  0.21%  0x30030f80: 48 85 c6                          testq    %rax, %rsi                   
         0x30030f83: 0f 85 2a 01 00 00                 jne    298                            ; 0x300310b3
  1.04%  0x30030f89: 45 01 d8                          addl    %r11d, %r8d                   
  3.72%  0x30030f8c: 44 8b 58 08                       movl    8(%rax), %r11d                
  8.35%  0x30030f90: 4a 8b 44 ca 20                    movq    32(%rdx,%r9,8), %rax          
  0.19%  0x30030f95: 48 85 c6                          testq    %rax, %rsi                   
         0x30030f98: 0f 85 3c 01 00 00                 jne    316                            ; 0x300310da
  0.77%  0x30030f9e: 45 01 d8                          addl    %r11d, %r8d                   
  4.28%  0x30030fa1: 44 8b 58 08                       movl    8(%rax), %r11d                
  2.47%  0x30030fa5: 4a 8b 44 ca 28                    movq    40(%rdx,%r9,8), %rax          
  0.19%  0x30030faa: 48 85 c6                          testq    %rax, %rsi                   
         0x30030fad: 0f 85 52 01 00 00                 jne    338                            ; 0x30031105
  0.65%  0x30030fb3: 45 01 d8                          addl    %r11d, %r8d                   
  4.25%  0x30030fb6: 44 8b 58 08                       movl    8(%rax), %r11d                
  1.12%  0x30030fba: 2e 4a 8b 44 ca 30                 movq    %cs:48(%rdx,%r9,8), %rax      
  0.18%  0x30030fc0: 48 85 c6                          testq    %rax, %rsi                   
         0x30030fc3: 0f 85 63 01 00 00                 jne    355                            ; 0x3003112c
  0.59%  0x30030fc9: 45 01 d8                          addl    %r11d, %r8d                   
  4.40%  0x30030fcc: 44 8b 58 08                       movl    8(%rax), %r11d                
  6.65%  0x30030fd0: 4a 8b 44 ca 38                    movq    56(%rdx,%r9,8), %rax          
  0.14%  0x30030fd5: 48 85 c6                          testq    %rax, %rsi                   
         0x30030fd8: 0f 85 75 01 00 00                 jne    373                            ; 0x30031153
  0.44%  0x30030fde: 45 01 d8                          addl    %r11d, %r8d                   
  4.47%  0x30030fe1: 44 8b 58 08                       movl    8(%rax), %r11d                
  9.73%  0x30030fe5: 4a 8b 44 ca 40                    movq    64(%rdx,%r9,8), %rax          
  0.11%  0x30030fea: 48 85 c6                          testq    %rax, %rsi                   
         0x30030fed: 0f 85 87 01 00 00                 jne    391                            ; 0x3003117a
  0.32%  0x30030ff3: 45 01 d8                          addl    %r11d, %r8d                   
  4.72%  0x30030ff6: 44 8b 58 08                       movl    8(%rax), %r11d                
  2.17%  0x30030ffa: 2e 4a 8b 44 ca 48                 movq    %cs:72(%rdx,%r9,8), %rax      
  0.12%  0x30031000: 48 85 c6                          testq    %rax, %rsi                   
         0x30031003: 0f 85 9c 01 00 00                 jne    412                            ; 0x300311a5
  0.29%  0x30031009: 45 01 c3                          addl    %r8d, %r11d                   
  4.65%  0x3003100c: 44 03 58 08                       addl    8(%rax), %r11d                
  4.62%  0x30031010: 49 83 c1 08                       addq    $8, %r9                       
  0.08%  0x30031014: 49 83 c6 40                       addq    $64, %r14                     
  0.24%  0x30031018: 49 83 c7 40                       addq    $64, %r15                     
  1.20%  0x3003101c: 49 83 c4 40                       addq    $64, %r12                     
  3.53%  0x30031020: 49 83 c5 40                       addq    $64, %r13                     
  0.09%  0x30031024: 48 83 c5 40                       addq    $64, %rbp                     
  0.26%  0x30031028: 48 83 c1 40                       addq    $64, %rcx                     
  1.19%  0x3003102c: 49 83 c2 40                       addq    $64, %r10                     
  3.48%  0x30031030: 48 83 c3 40                       addq    $64, %rbx                     
  0.10%  0x30031034: 4c 39 4c 24 20                    cmpq    %r9, 32(%rsp)                 
         0x30031039: 0f 85 21 ff ff ff                 jne    -223                           ; 0x30030f60
         0x3003103f: 4c 8b 44 24 18                    movq    24(%rsp), %r8                 
         0x30031044: 41 83 e0 07                       andl    $7, %r8d                      
         0x30031048: 74 34                             je    52                              ; 0x3003107e
         0x3003104a: 4a 8d 34 ca                       leaq    (%rdx,%r9,8), %rsi            
         0x3003104e: 48 83 c6 10                       addq    $16, %rsi                     
         0x30031052: 48 b9 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rcx           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3003105c: 0f 1f 40 00                       nopl    (%rax)                        
         0x30031060: 48 8b 06                          movq    (%rsi), %rax                  
         0x30031063: 48 85 44 24 10                    testq    %rax, 16(%rsp)               
....................................................................................................
 95.85%  <total for region 1>

....[Hottest Regions]...............................................................................
 95.85%  [0x30030f22:0x30031063] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch[Falcon]
  0.25%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.23%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.19%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb8d80:0xffffffffa9eb8de6] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9f0711f:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ee587e:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eff400:0xffffffffa9eff42d] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f07060:0xffffffffa9f070d1] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0740:0xffffffffa9ed07b2] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0800:0xffffffffa9ed0889] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9da97a0:0xffffffffa9da9801] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28ead0:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9eee5d6:0xffffffffa9eee62f] in [unknown] ([kernel.kallsyms])
  2.06%  <...other 359 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 95.87%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch[Falcon]
  3.71%  [unknown] ([kernel.kallsyms])
  0.23%  [unknown] (libjvm.so)
  0.03%  [unknown] (libc-2.31.so)
  0.02%  PMEM::account_enabled; PMEM::accounts (libaztall.so)
  0.02%  az_pmem_get_account_usage_tall (libaztall.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.01%  PMEM_Account::fetch_stats (libaztall.so)
  0.01%  az_zmd_api_version (libazsys3.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  __pthread_mutex_unlock (libpthread-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  __errno_location (libpthread-2.31.so)
  0.00%  az_zmd_api_version_tall (libaztall.so)
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  __pthread_mutex_lock (libpthread-2.31.so)
  0.00%  az_get_elastic_tall (libaztall.so)
  0.03%  <...other 15 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.87%  <generated code>
  3.71%  <native code in ([kernel.kallsyms])>
  0.23%  <native code in (libjvm.so)>
  0.10%  <native code in (libaztall.so)>
  0.04%  <native code in (libc-2.31.so)>
  0.02%  <native code in (libazsys3.so)>
  0.02%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.00%  <native code in ([vdso])>
  0.00%  <native code in (kvm.ko)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.try_npe_catch
# Parameters: (nullThreshold = 16, size = 262144)

# Run progress: 87.50% complete, ETA 00:01:52
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2399.755 us/op
# Warmup Iteration   2: 2310.006 us/op
# Warmup Iteration   3: 2312.344 us/op
# Warmup Iteration   4: 2315.677 us/op
# Warmup Iteration   5: 2311.793 us/op
Iteration   1: 2312.828 us/op
Iteration   2: 2314.400 us/op
Iteration   3: 2311.345 us/op
Iteration   4: 2310.791 us/op
Iteration   5: 2307.103 us/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.try_npe_catch":
  2311.293 ±(99.9%) 10.515 us/op [Average]
  (min, avg, max) = (2307.103, 2311.293, 2314.400), stdev = 2.731
  CI (99.9%): [2300.779, 2321.808] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.try_npe_catch:·asm":
PrintAssembly processed: 136911 total address lines.
Perf output processed (skipped 57.684 seconds):
 Column 1: cycles (51518 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x300316ef:0x3003179b] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch[Falcon]

         0x300316ef: 48 8b 4b 20                       movq    32(%rbx), %rcx                
         0x300316f3: 49 85 c8                          testq    %rcx, %r8                    
         0x300316f6: 0f 85 03 01 00 00                 jne    259                            ; 0x300317ff
         0x300316fc: 45 31 e4                          xorl    %r12d, %r12d                  
         0x300316ff: 41 bd 10 00 00 00                 movl    $16, %r13d                    
         0x30031705: 41 bf 48 00 f8 2f                 movl    $804782152, %r15d             ; 804782152 = clearable_gc_phase_trap_mask
         0x3003170b: 31 ed                             xorl    %ebp, %ebp                    
         0x3003170d: eb 27                             jmp    39                             ; 0x30031736
         0x3003170f: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x3003171e: 66 90                             nop                                   
 11.36%  0x30031720: 03 68 08                          addl    8(%rax), %ebp                 
 21.65%  0x30031723: 49 ff c4                          incq    %r12                          
  0.00%  0x30031726: 48 63 c2                          movslq    %edx, %rax                  
  0.19%  0x30031729: 49 83 c5 08                       addq    $8, %r13                      
  0.02%  0x3003172d: 49 39 c4                          cmpq    %rax, %r12                    
         0x30031730: 0f 8d e6 00 00 00                 jge    230                            ; 0x3003181c
  5.90%  0x30031736: 8b 41 08                          movl    8(%rcx), %eax                 
  1.93%  0x30031739: 49 39 c4                          cmpq    %rax, %r12                    
         0x3003173c: 73 6b                             jae    107                            ; 0x300317a9
  2.00%  0x3003173e: 4a 8b 04 29                       movq    (%rcx,%r13), %rax             
  2.15%  0x30031742: 49 85 c0                          testq    %rax, %r8                    
         0x30031745: 75 4d                             jne    77                             ; 0x30031794
  4.58%  0x30031747: 48 85 c0                          testq    %rax, %rax                   
         0x3003174a: 75 d4                             jne    -44                            ; 0x30031720
 14.03%  0x3003174c: 49 c7 46 10 00 00 00 00           movq    $0, 16(%r14)                  
 11.20%  0x30031754: 65 48 c7 04 25 08 00 00 00 00     movq    $0, %gs:8                     ; thread:[8] = _pending_exception
  7.95%  0x30031761: 48 89 df                          movq    %rbx, %rdi                    
  0.14%  0x30031764: 4c 89 f6                          movq    %r14, %rsi                    
  0.04%  0x30031767: 90                                nop                                   
  0.02%  0x30031768: e8 93 c1 fd ff                    callq    -147053                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  1.47%  0x3003176d: 8b 53 0c                          movl    12(%rbx), %edx                
  5.04%  0x30031770: 48 8b 4b 20                       movq    32(%rbx), %rcx                
  1.85%  0x30031774: 4d 8b 07                          movq    (%r15), %r8                   
  0.06%  0x30031777: 49 85 c8                          testq    %rcx, %r8                    
         0x3003177a: 74 a7                             je    -89                             ; 0x30031723
         0x3003177c: 48 8d 73 20                       leaq    32(%rbx), %rsi                
         0x30031780: 48 89 cf                          movq    %rcx, %rdi                    
         0x30031783: 48 b8 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rax           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3003178d: ff d0                             callq    *%rax                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3003178f: 48 89 c1                          movq    %rax, %rcx                    
         0x30031792: eb 8f                             jmp    -113                           ; 0x30031723
         0x30031794: 4a 8d 34 29                       leaq    (%rcx,%r13), %rsi             
         0x30031798: 48 89 c7                          movq    %rax, %rdi                    
         0x3003179b: 48 b8 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rax           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
....................................................................................................
 91.59%  <total for region 1>

....[Hottest Regions]...............................................................................
 91.59%  [0x300316ef:0x3003179b] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch[Falcon]
  4.22%  [0x32b0ef0d:0x32b0f0aa] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::sink[C1]
  0.21%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eef3a2:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9f0711c:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f695f0:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eef30c:0xffffffffa9eef381] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f07065:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ee587e:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9ed0800:0xffffffffa9ed0861] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9ed0740:0xffffffffa9ed07a5] in [unknown] ([kernel.kallsyms])
  2.24%  <...other 334 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 91.59%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch[Falcon]
  4.22%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::sink[C1]
  3.78%  [unknown] ([kernel.kallsyms])
  0.22%  [unknown] (libjvm.so)
  0.02%  __errno_location (libpthread-2.31.so)
  0.02%  PMEM::account_enabled; PMEM::accounts (libaztall.so)
  0.02%  PMEM::get_account_usage (libaztall.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  az_pmem_get_account_usage_tall (libaztall.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.01%  az_zmd_api_version_tall (libaztall.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  PMEM::account_enabled@plt (libaztall.so)
  0.00%  az_get_elastic_tall (libaztall.so)
  0.00%  MutexLocker::~MutexLocker (libaztall.so)
  0.00%  <stub: istore_1  60 istore_1>
  0.04%  <...other 23 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.84%  <generated code>
  3.78%  <native code in ([kernel.kallsyms])>
  0.22%  <native code in (libjvm.so)>
  0.08%  <native code in (libaztall.so)>
  0.04%  <native code in (libc-2.31.so)>
  0.02%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.00%  <native code in (libstdc++.so.6)>
  0.00%  <native code in ([vdso])>
....................................................................................................
100.00%  <totals>



# Run complete. Total time: 00:14:57

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

Benchmark                                             (nullThreshold)  (size)  Mode  Cnt     Score    Error  Units
NpeControlFlowBenchmark.if_not_npe_do_statement                     0  262144  avgt    5   262.288 ± 24.351  us/op
NpeControlFlowBenchmark.if_not_npe_do_statement:·asm                0  262144  avgt            NaN             ---
NpeControlFlowBenchmark.if_not_npe_do_statement                    16  262144  avgt    5   201.108 ±  7.234  us/op
NpeControlFlowBenchmark.if_not_npe_do_statement:·asm               16  262144  avgt            NaN             ---
NpeControlFlowBenchmark.if_npe_continue                             0  262144  avgt    5   254.812 ± 27.172  us/op
NpeControlFlowBenchmark.if_npe_continue:·asm                        0  262144  avgt            NaN             ---
NpeControlFlowBenchmark.if_npe_continue                            16  262144  avgt    5   202.186 ±  6.463  us/op
NpeControlFlowBenchmark.if_npe_continue:·asm                       16  262144  avgt            NaN             ---
NpeControlFlowBenchmark.stream_filter_npe                           0  262144  avgt    5   296.876 ±  0.773  us/op
NpeControlFlowBenchmark.stream_filter_npe:·asm                      0  262144  avgt            NaN             ---
NpeControlFlowBenchmark.stream_filter_npe                          16  262144  avgt    5  1558.379 ± 42.001  us/op
NpeControlFlowBenchmark.stream_filter_npe:·asm                     16  262144  avgt            NaN             ---
NpeControlFlowBenchmark.try_npe_catch                               0  262144  avgt    5   241.344 ±  7.888  us/op
NpeControlFlowBenchmark.try_npe_catch:·asm                          0  262144  avgt            NaN             ---
NpeControlFlowBenchmark.try_npe_catch                              16  262144  avgt    5  2311.293 ± 10.515  us/op
NpeControlFlowBenchmark.try_npe_catch:·asm                         16  262144  avgt            NaN             ---
