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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark.initial_loops
# Parameters: (size = 262144)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 352.484 us/op
# Warmup Iteration   2: 345.843 us/op
# Warmup Iteration   3: 345.712 us/op
# Warmup Iteration   4: 345.718 us/op
# Warmup Iteration   5: 345.705 us/op
Iteration   1: 345.768 us/op
Iteration   2: 345.707 us/op
Iteration   3: 345.731 us/op
Iteration   4: 345.754 us/op
Iteration   5: 345.712 us/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark.initial_loops":
  345.735 ±(99.9%) 0.102 us/op [Average]
  (min, avg, max) = (345.707, 345.735, 345.768), stdev = 0.026
  CI (99.9%): [345.633, 345.837] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark.initial_loops:·asm":
PrintAssembly processed: 135982 total address lines.
Perf output processed (skipped 56.516 seconds):
 Column 1: cycles (51422 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x30030fe2:0x300310b3] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops[Falcon]

         0x30030fe2: bf 01 00 00 00                    movl    $1, %edi                      
         0x30030fe7: 49 83 fa 03                       cmpq    $3, %r10                      
         0x30030feb: 0f 82 ac 00 00 00                 jb    172                             ; 0x3003109d
         0x30030ff1: 4d 89 c2                          movq    %r8, %r10                     
         0x30030ff4: 49 83 e2 fc                       andq    $-4, %r10                     
         0x30030ff8: 49 f7 da                          negq    %r10                          
         0x30030ffb: 41 b9 04 00 00 00                 movl    $4, %r9d                      
         0x30031001: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x30031010: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x3003101f: 90                                nop                                   
  2.49%  0x30031020: 49 8d 59 fc                       leaq    -4(%r9), %rbx                 
         0x30031024: 48 39 f3                          cmpq    %rsi, %rbx                    
         0x30031027: 0f 83 74 01 00 00                 jae    372                            ; 0x300311a1
  0.97%  0x3003102d: 49 8d 59 fd                       leaq    -3(%r9), %rbx                 
  5.44%  0x30031031: 46 8b 1c 88                       movl    (%rax,%r9,4), %r11d           
  4.89%  0x30031035: 46 03 5c 8a 04                    addl    4(%rdx,%r9,4), %r11d          
  1.01%  0x3003103a: 46 89 5c 88 04                    movl    %r11d, 4(%rax,%r9,4)          
 12.67%  0x3003103f: 4d 8d 71 fe                       leaq    -2(%r9), %r14                 
         0x30031043: 48 39 f3                          cmpq    %rsi, %rbx                    
         0x30031046: 0f 83 3f 01 00 00                 jae    319                            ; 0x3003118b
  1.30%  0x3003104c: 46 03 5c 8a 08                    addl    8(%rdx,%r9,4), %r11d          
  0.00%  0x30031051: 46 89 5c 88 08                    movl    %r11d, 8(%rax,%r9,4)          
  8.55%  0x30031056: 49 39 f6                          cmpq    %rsi, %r14                    
         0x30031059: 0f 83 31 01 00 00                 jae    305                            ; 0x30031190
         0x3003105f: 49 8d 59 ff                       leaq    -1(%r9), %rbx                 
  1.12%  0x30031063: 46 03 5c 8a 0c                    addl    12(%rdx,%r9,4), %r11d         
  0.01%  0x30031068: 46 89 5c 88 0c                    movl    %r11d, 12(%rax,%r9,4)         
  8.29%  0x3003106d: 48 39 f3                          cmpq    %rsi, %rbx                    
         0x30031070: 0f 83 27 01 00 00                 jae    295                            ; 0x3003119d
         0x30031076: 46 03 5c 8a 10                    addl    16(%rdx,%r9,4), %r11d         
  1.20%  0x3003107b: 46 89 5c 88 10                    movl    %r11d, 16(%rax,%r9,4)         
  5.15%  0x30031080: 48 83 c7 04                       addq    $4, %rdi                      
  2.44%  0x30031084: 4f 8d 1c 0a                       leaq    (%r10,%r9), %r11              
         0x30031088: 49 83 c3 04                       addq    $4, %r11                      
  0.91%  0x3003108c: 49 83 c1 04                       addq    $4, %r9                       
  3.52%  0x30031090: 49 83 fb 04                       cmpq    $4, %r11                      
         0x30031094: 75 8a                             jne    -118                           ; 0x30031020
         0x30031096: 49 83 c1 fd                       addq    $-3, %r9                      
         0x3003109a: 4c 89 cf                          movq    %r9, %rdi                     
         0x3003109d: 0f 1f 00                          nopl    (%rax)                        
         0x300310a0: 41 83 e0 03                       andl    $3, %r8d                      
         0x300310a4: 74 24                             je    36                              ; 0x300310ca
         0x300310a6: 48 8d 5f ff                       leaq    -1(%rdi), %rbx                
         0x300310aa: 48 39 f3                          cmpq    %rsi, %rbx                    
         0x300310ad: 0f 83 ee 00 00 00                 jae    238                            ; 0x300311a1
         0x300310b3: 44 8b 4c b8 0c                    movl    12(%rax,%rdi,4), %r9d         
....................................................................................................
 59.97%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x300310ce:0x30031189] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops[Falcon]

         0x300310ce: 5b                                popq    %rbx                          
  0.00%  0x300310cf: 41 5e                             popq    %r14                          
         0x300310d1: 41 5f                             popq    %r15                          
         0x300310d3: 5d                                popq    %rbp                          
         0x300310d4: c3                                retq                                  
         0x300310d5: 49 83 e6 f8                       andq    $-8, %r14                     
         0x300310d9: 49 f7 de                          negq    %r14                          
         0x300310dc: 41 ba 08 00 00 00                 movl    $8, %r10d                     
         0x300310e2: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x300310f1: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
  3.21%  0x30031100: 46 03 5c 90 f4                    addl    -12(%rax,%r10,4), %r11d       
  0.62%  0x30031105: 46 89 5c 92 f4                    movl    %r11d, -12(%rdx,%r10,4)       
  2.13%  0x3003110a: 46 03 5c 90 f8                    addl    -8(%rax,%r10,4), %r11d        
  0.03%  0x3003110f: 46 89 5c 92 f8                    movl    %r11d, -8(%rdx,%r10,4)        
  3.42%  0x30031114: 46 03 5c 90 fc                    addl    -4(%rax,%r10,4), %r11d        
  0.03%  0x30031119: 46 89 5c 92 fc                    movl    %r11d, -4(%rdx,%r10,4)        
  3.86%  0x3003111e: 46 03 1c 90                       addl    (%rax,%r10,4), %r11d          
  0.07%  0x30031122: 46 89 1c 92                       movl    %r11d, (%rdx,%r10,4)          
  3.70%  0x30031126: 46 03 5c 90 04                    addl    4(%rax,%r10,4), %r11d         
  0.04%  0x3003112b: 46 89 5c 92 04                    movl    %r11d, 4(%rdx,%r10,4)         
  3.95%  0x30031130: 46 03 5c 90 08                    addl    8(%rax,%r10,4), %r11d         
  0.02%  0x30031135: 46 89 5c 92 08                    movl    %r11d, 8(%rdx,%r10,4)         
  3.77%  0x3003113a: 46 03 5c 90 0c                    addl    12(%rax,%r10,4), %r11d        
  0.01%  0x3003113f: 46 89 5c 92 0c                    movl    %r11d, 12(%rdx,%r10,4)        
  3.60%  0x30031144: 46 03 5c 90 10                    addl    16(%rax,%r10,4), %r11d        
  3.35%  0x30031149: 46 89 5c 92 10                    movl    %r11d, 16(%rdx,%r10,4)        
  3.86%  0x3003114e: 4f 8d 3c 16                       leaq    (%r14,%r10), %r15             
         0x30031152: 49 83 c7 08                       addq    $8, %r15                      
  0.27%  0x30031156: 2e 2e 2e 49 81 c2 08 00 00 00     addq    $8, %r10                      
         0x30031160: 49 83 ff 08                       cmpq    $8, %r15                      
         0x30031164: 75 9a                             jne    -102                           ; 0x30031100
         0x30031166: 49 83 c2 f9                       addq    $-7, %r10                     
         0x3003116a: e9 e7 fd ff ff                    jmp    -537                           ; 0x30030f56
         0x3003116f: 43 8d 04 02                       leal    (%r10,%r8), %eax              
         0x30031173: 43 8d 34 02                       leal    (%r10,%r8), %esi              
         0x30031177: ff ce                             decl    %esi                          
         0x30031179: 48 bf 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rdi           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x30031183: 41 bb 0d 00 00 00                 movl    $13, %r11d                    
         0x30031189: ff d7                             callq    *%rdi                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
....................................................................................................
 35.97%  <total for region 2>

....[Hottest Regions]...............................................................................
 59.97%  [0x30030fe2:0x300310b3] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops[Falcon]
 35.97%  [0x300310ce:0x30031189] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops[Falcon]
  0.24%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.20%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.20%  [0xffffffffa9eef35f:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9eb8dbd:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eb93b5:0xffffffffa9eb9441] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eef5b7:0xffffffffa9eef5d2] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f0711f:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f695f6:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9ed0800:0xffffffffa9ed0889] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f686c0:0xffffffffa9f6875b] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eef467:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9c0f77a:0xffffffffa9c0f7a3] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eef30c:0xffffffffa9eef334] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28d0d0:0xffffffffaa28d127] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28ead0:0xffffffffaa28eb1f] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eb92c0:0xffffffffa9eb92d6] in [unknown] ([kernel.kallsyms])
  1.97%  <...other 284 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 95.95%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops[Falcon]
  3.81%  [unknown] ([kernel.kallsyms])
  0.12%  [unknown] (libjvm.so)
  0.01%  [unknown] ([vdso])
  0.01%  syscall (libc-2.31.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  is_thread_initialized (libazsys3.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.00%  PMEM::account_enabled; PMEM::accounts (libaztall.so)
  0.00%  <stub: method entry point (kind = zerolocals)>
  0.00%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  <stub: return entry points>
  0.00%  <stub: invokespecial  183 invokespecial>
  0.00%  az_zmd_api_version_tall (libaztall.so)
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  dladdr1 (libdl-2.31.so)
  0.00%  <stub: ifne  154 ifne>
  0.03%  <...other 14 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.98%  <generated code>
  3.81%  <native code in ([kernel.kallsyms])>
  0.12%  <native code in (libjvm.so)>
  0.03%  <native code in (libaztall.so)>
  0.03%  <native code in (libc-2.31.so)>
  0.01%  <native code in ([vdso])>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.00%  <native code in (libdl-2.31.so)>
  0.00%  <native code in (perf-143574.map)>
  0.00%  <native code in (nf_conntrack.ko)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark.manual_loops_fusion
# Parameters: (size = 262144)

# Run progress: 50.00% complete, ETA 00:01:52
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 365.150 us/op
# Warmup Iteration   2: 362.536 us/op
# Warmup Iteration   3: 362.379 us/op
# Warmup Iteration   4: 362.533 us/op
# Warmup Iteration   5: 360.710 us/op
Iteration   1: 364.734 us/op
Iteration   2: 359.883 us/op
Iteration   3: 359.895 us/op
Iteration   4: 359.888 us/op
Iteration   5: 359.891 us/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark.manual_loops_fusion":
  360.858 ±(99.9%) 8.343 us/op [Average]
  (min, avg, max) = (359.883, 360.858, 364.734), stdev = 2.167
  CI (99.9%): [352.516, 369.201] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark.manual_loops_fusion:·asm":
PrintAssembly processed: 135107 total address lines.
Perf output processed (skipped 56.894 seconds):
 Column 1: cycles (51635 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x30030636:0x300306e5] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion[Falcon]

  0.01%  0x30030636: 41 5c                             popq    %r12                          
         0x30030638: 41 5e                             popq    %r14                          
         0x3003063a: 41 5f                             popq    %r15                          
         0x3003063c: 5d                                popq    %rbp                          
         0x3003063d: c3                                retq                                  
         0x3003063e: 49 83 e7 fc                       andq    $-4, %r15                     
         0x30030642: 49 f7 df                          negq    %r15                          
         0x30030645: bf 04 00 00 00                    movl    $4, %edi                      
         0x3003064a: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x30030659: 0f 1f 80 00 00 00 00              nopl    (%rax)                        
  5.50%  0x30030660: 44 03 5c b8 04                    addl    4(%rax,%rdi,4), %r11d         
  7.39%  0x30030665: 44 89 5c ba 04                    movl    %r11d, 4(%rdx,%rdi,4)         
  7.83%  0x3003066a: 44 01 db                          addl    %r11d, %ebx                   
         0x3003066d: 89 5c b8 04                       movl    %ebx, 4(%rax,%rdi,4)          
  8.20%  0x30030671: 44 03 5c b8 08                    addl    8(%rax,%rdi,4), %r11d         
  0.27%  0x30030676: 44 89 5c ba 08                    movl    %r11d, 8(%rdx,%rdi,4)         
  8.82%  0x3003067b: 44 01 db                          addl    %r11d, %ebx                   
         0x3003067e: 89 5c b8 08                       movl    %ebx, 8(%rax,%rdi,4)          
  5.25%  0x30030682: 44 03 5c b8 0c                    addl    12(%rax,%rdi,4), %r11d        
  0.07%  0x30030687: 44 89 5c ba 0c                    movl    %r11d, 12(%rdx,%rdi,4)        
  7.58%  0x3003068c: 44 01 db                          addl    %r11d, %ebx                   
  0.00%  0x3003068f: 89 5c b8 0c                       movl    %ebx, 12(%rax,%rdi,4)         
  5.47%  0x30030693: 44 03 5c b8 10                    addl    16(%rax,%rdi,4), %r11d        
 18.26%  0x30030698: 44 89 5c ba 10                    movl    %r11d, 16(%rdx,%rdi,4)        
 10.61%  0x3003069d: 44 01 db                          addl    %r11d, %ebx                   
  1.04%  0x300306a0: 89 5c b8 10                       movl    %ebx, 16(%rax,%rdi,4)         
  7.85%  0x300306a4: 4d 8d 24 3f                       leaq    (%r15,%rdi), %r12             
         0x300306a8: 49 83 c4 04                       addq    $4, %r12                      
  1.03%  0x300306ac: 48 83 c7 04                       addq    $4, %rdi                      
  0.40%  0x300306b0: 49 83 fc 04                       cmpq    $4, %r12                      
         0x300306b4: 75 aa                             jne    -86                            ; 0x30030660
         0x300306b6: 48 83 c7 fd                       addq    $-3, %rdi                     
         0x300306ba: e9 fa fe ff ff                    jmp    -262                           ; 0x300305b9
         0x300306bf: 48 83 e3 fc                       andq    $-4, %rbx                     
         0x300306c3: 48 f7 db                          negq    %rbx                          
         0x300306c6: bf 04 00 00 00                    movl    $4, %edi                      
         0x300306cb: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x300306da: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
         0x300306e0: 41 8b 6c b9 f0                    movl    -16(%r9,%rdi,4), %ebp         
         0x300306e5: 41 03 6c ba f4                    addl    -12(%r10,%rdi,4), %ebp        
....................................................................................................
 95.53%  <total for region 1>

....[Hottest Regions]...............................................................................
 95.53%  [0x30030636:0x300306e5] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion[Falcon]
  0.29%  [0xffffffffa9c94c86:0xffffffffa9c94c86] in [unknown] ([kernel.kallsyms])
  0.26%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.22%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9c0f77a:0xffffffffa9c0f77c] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb93b5:0xffffffffa9eb94a0] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9f0711c:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f695f6:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f07060:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ee5876:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0800:0xffffffffa9ed0873] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eef44f:0xffffffffa9eef4ad] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9f68701:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9ed0746:0xffffffffa9ed0797] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9f63240:0xffffffffa9f63270] in [unknown] ([kernel.kallsyms])
  0.05%  [0x7f9e65d3e5f8:0x7f9e65d3e621] in [unknown] (libjvm.so)
  2.17%  <...other 335 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 95.54%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion[Falcon]
  4.08%  [unknown] ([kernel.kallsyms])
  0.19%  [unknown] (libjvm.so)
  0.02%  clock_gettime (libc-2.31.so)
  0.02%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.02%  [unknown] ([vdso])
  0.01%  [unknown] (libc-2.31.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  PMEM::account_enabled; PMEM::accounts (libaztall.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LoopFusionBenchmark_manual_loops_fusion_jmhTest::manual_loops_fusion_avgt_jmhStub[Falcon]
  0.01%  is_thread_initialized (libazsys3.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.00%  __pthread_mutex_lock (libpthread-2.31.so)
  0.00%  _IO_default_xsputn (libc-2.31.so)
  0.00%  millis_to_ticks (libazsys3.so)
  0.00%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  sprintf (libc-2.31.so)
  0.00%  _dl_addr (libc-2.31.so)
  0.04%  <...other 19 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.56%  <generated code>
  4.08%  <native code in ([kernel.kallsyms])>
  0.19%  <native code in (libjvm.so)>
  0.06%  <native code in (libc-2.31.so)>
  0.05%  <native code in (libaztall.so)>
  0.02%  <native code in (libpthread-2.31.so)>
  0.02%  <native code in (libazsys3.so)>
  0.02%  <native code in ([vdso])>
  0.00%  <native code in (ld-2.31.so)>
  0.00%  <native code in (libjimage.so)>
  0.00%  <native code in (liborca.so.0.0.0.0)>
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

Benchmark                                     (size)  Mode  Cnt    Score   Error  Units
LoopFusionBenchmark.initial_loops             262144  avgt    5  345.735 ± 0.102  us/op
LoopFusionBenchmark.initial_loops:·asm        262144  avgt           NaN            ---
LoopFusionBenchmark.manual_loops_fusion       262144  avgt    5  360.858 ± 8.343  us/op
LoopFusionBenchmark.manual_loops_fusion:·asm  262144  avgt           NaN            ---
