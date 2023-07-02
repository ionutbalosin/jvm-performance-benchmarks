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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MONOMORPHIC)

# Run progress: 0.00% complete, ETA 00:26:40
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.952 ns/op
# Warmup Iteration   2: 1.821 ns/op
# Warmup Iteration   3: 1.824 ns/op
# Warmup Iteration   4: 1.821 ns/op
# Warmup Iteration   5: 1.821 ns/op
Iteration   1: 1.822 ns/op
Iteration   2: 1.821 ns/op
Iteration   3: 1.821 ns/op
Iteration   4: 1.821 ns/op
Iteration   5: 1.821 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  1.821 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (1.821, 1.821, 1.822), stdev = 0.001
  CI (99.9%): [1.820, 1.822] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 144001 total address lines.
Perf output processed (skipped 56.529 seconds):
 Column 1: cycles (51493 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x30030616:0x30030722] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic[Falcon]

         0x30030616: e9 63 ff ff ff                    jmp    -157                           ; 0x3003057e
         0x3003061b: 49 8d 70 f8                       leaq    -8(%r8), %rsi                 
         0x3003061f: 48 89 c7                          movq    %rax, %rdi                    
         0x30030622: 41 ff d3                          callq    *%r11                        
         0x30030625: eb 82                             jmp    -126                           ; 0x300305a9
         0x30030627: 48 89 c7                          movq    %rax, %rdi                    
         0x3003062a: 4c 89 c6                          movq    %r8, %rsi                     
         0x3003062d: 41 ff d3                          callq    *%r11                        
         0x30030630: eb a8                             jmp    -88                            ; 0x300305da
         0x30030632: 48 bb c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rbx           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
  0.00%  0x3003063c: eb 21                             jmp    33                             ; 0x3003065f
         0x3003063e: 66 90                             nop                                   
  1.07%  0x30030640: ff 40 08                          incl    8(%rax)                       
 18.45%  0x30030643: 49 8d 42 04                       leaq    4(%r10), %rax                 
  0.88%  0x30030647: 49 83 c0 20                       addq    $32, %r8                      
  1.31%  0x3003064b: 49 83 c2 03                       addq    $3, %r10                      
  0.85%  0x3003064f: 49 81 fa 7f 9d 00 00              cmpq    $40319, %r10                  
  2.04%  0x30030656: 49 89 c2                          movq    %rax, %r10                    
  0.74%  0x30030659: 0f 83 f7 00 00 00                 jae    247                            ; 0x30030756
  1.39%  0x3003065f: 90                                nop                                   
  0.82%  0x30030660: 4d 39 da                          cmpq    %r11, %r10                    
         0x30030663: 0f 83 24 01 00 00                 jae    292                            ; 0x3003078d
  2.12%  0x30030669: 4a 8b 44 d2 10                    movq    16(%rdx,%r10,8), %rax         
  1.14%  0x3003066e: 49 85 c1                          testq    %rax, %r9                    
         0x30030671: 0f 85 94 00 00 00                 jne    148                            ; 0x3003070b
  1.30%  0x30030677: 2e 2e 2e 42 0f b6 74 11 10        movzbl    %cs:16(%rcx,%r10), %esi     
  1.21%  0x30030680: 40 84 f6                          testb    %sil, %sil                   
         0x30030683: 0f 85 d9 00 00 00                 jne    217                            ; 0x30030762
  2.20%  0x30030689: ff 40 08                          incl    8(%rax)                       
 15.91%  0x3003068c: 49 8d 42 01                       leaq    1(%r10), %rax                 
  1.42%  0x30030690: 4c 39 d8                          cmpq    %r11, %rax                    
         0x30030693: 0f 83 f7 00 00 00                 jae    247                            ; 0x30030790
  0.72%  0x30030699: 2e 2e 4a 8b 44 d2 18              movq    %cs:24(%rdx,%r10,8), %rax     
  1.09%  0x300306a0: 49 85 c1                          testq    %rax, %r9                    
         0x300306a3: 75 74                             jne    116                            ; 0x30030719
  2.03%  0x300306a5: 42 0f b6 74 11 11                 movzbl    17(%rcx,%r10), %esi         
  1.33%  0x300306ab: 40 84 f6                          testb    %sil, %sil                   
         0x300306ae: 0f 85 9d 00 00 00                 jne    157                            ; 0x30030751
  0.70%  0x300306b4: ff 40 08                          incl    8(%rax)                       
 11.42%  0x300306b7: 2e 2e 2e 2e 2e 49 8d 42 02        leaq    %cs:2(%r10), %rax             
  0.74%  0x300306c0: 4c 39 d8                          cmpq    %r11, %rax                    
         0x300306c3: 0f 83 c7 00 00 00                 jae    199                            ; 0x30030790
  0.96%  0x300306c9: 4a 8b 44 d2 20                    movq    32(%rdx,%r10,8), %rax         
  1.20%  0x300306ce: 49 85 c1                          testq    %rax, %r9                    
         0x300306d1: 75 51                             jne    81                             ; 0x30030724
  2.08%  0x300306d3: 42 0f b6 74 11 12                 movzbl    18(%rcx,%r10), %esi         
  0.69%  0x300306d9: 40 84 f6                          testb    %sil, %sil                   
         0x300306dc: 75 6d                             jne    109                            ; 0x3003074b
  0.98%  0x300306de: ff 40 08                          incl    8(%rax)                       
 11.13%  0x300306e1: 49 8d 42 03                       leaq    3(%r10), %rax                 
  0.97%  0x300306e5: 4c 39 d8                          cmpq    %r11, %rax                    
         0x300306e8: 0f 83 a2 00 00 00                 jae    162                            ; 0x30030790
  1.04%  0x300306ee: 4a 8b 44 d2 28                    movq    40(%rdx,%r10,8), %rax         
  3.27%  0x300306f3: 49 85 c1                          testq    %rax, %r9                    
         0x300306f6: 75 37                             jne    55                             ; 0x3003072f
  1.52%  0x300306f8: 2e 2e 42 0f b6 74 11 13           movzbl    %cs:19(%rcx,%r10), %esi     
  1.04%  0x30030700: 40 84 f6                          testb    %sil, %sil                   
         0x30030703: 0f 84 37 ff ff ff                 je    -201                            ; 0x30030640
         0x30030709: eb 53                             jmp    83                             ; 0x3003075e
         0x3003070b: 49 8d 70 e8                       leaq    -24(%r8), %rsi                
         0x3003070f: 48 89 c7                          movq    %rax, %rdi                    
         0x30030712: ff d3                             callq    *%rbx                        
         0x30030714: e9 5e ff ff ff                    jmp    -162                           ; 0x30030677
         0x30030719: 49 8d 70 f0                       leaq    -16(%r8), %rsi                
         0x3003071d: 48 89 c7                          movq    %rax, %rdi                    
         0x30030720: ff d3                             callq    *%rbx                        
         0x30030722: eb 81                             jmp    -127                           ; 0x300306a5
....................................................................................................
 95.74%  <total for region 1>

....[Hottest Regions]...............................................................................
 95.74%  [0x30030616:0x30030722] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic[Falcon]
  0.23%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.23%  [0xffffffffa9ecfb60:0xffffffffa9ecfb7c] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9eb8dcf:0xffffffffa9eb8de6] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb93b0:0xffffffffa9eb9441] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9f0711c:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f211f0:0xffffffffa9f2121e] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ee587e:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9f69678:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0800:0xffffffffa9ed0873] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eb7ddf:0xffffffffa9eb7e7c] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eee5d0:0xffffffffa9eee62f] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9ed0740:0xffffffffa9ed07c7] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffaa28d0d0:0xffffffffaa28d127] in [unknown] ([kernel.kallsyms])
  0.05%  [0x300304a0:0x30030517] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic[Falcon]
  2.24%  <...other 403 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 95.81%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic[Falcon]
  3.70%  [unknown] ([kernel.kallsyms])
  0.19%  [unknown] (libjvm.so)
  0.19%  [unknown] (liborca.so.0.0.0.0)
  0.02%  [unknown] (libc-2.31.so)
  0.01%  PMEM::account_enabled; PMEM::accounts (libaztall.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  malloc (libc-2.31.so)
  0.00%  memcpy (libc-2.31.so)
  0.00%  is_thread_initialized (libazsys3.so)
  0.00%  syscall (libc-2.31.so)
  0.00%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub[Falcon]
  0.00%  <stub: method entry point (kind = zerolocals)>
  0.00%  <stub: invokevirtual  182 invokevirtual>
  0.00%  az_zmd_api_version (libazsys3.so)
  0.00%  <stub: aload  25 aload>
  0.00%  thread_stack_region_start@plt (libazsys3.so)
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  <stub: monitorenter  194 monitorenter>
  0.00%  _IO_fwrite (libc-2.31.so)
  0.02%  <...other 11 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.83%  <generated code>
  3.70%  <native code in ([kernel.kallsyms])>
  0.19%  <native code in (libjvm.so)>
  0.19%  <native code in (liborca.so.0.0.0.0)>
  0.04%  <native code in (libc-2.31.so)>
  0.02%  <native code in (libaztall.so)>
  0.01%  <native code in (libazsys3.so)>
  0.00%  <native code in (libpthread-2.31.so)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = BIMORPHIC)

# Run progress: 6.25% complete, ETA 00:28:07
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.053 ns/op
# Warmup Iteration   2: 2.014 ns/op
# Warmup Iteration   3: 2.013 ns/op
# Warmup Iteration   4: 2.013 ns/op
# Warmup Iteration   5: 2.013 ns/op
Iteration   1: 2.015 ns/op
Iteration   2: 2.055 ns/op
Iteration   3: 2.054 ns/op
Iteration   4: 2.058 ns/op
Iteration   5: 2.055 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  2.047 ±(99.9%) 0.071 ns/op [Average]
  (min, avg, max) = (2.015, 2.047, 2.058), stdev = 0.018
  CI (99.9%): [1.977, 2.118] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 143790 total address lines.
Perf output processed (skipped 56.600 seconds):
 Column 1: cycles (51562 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x30030983:0x30030c73] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic[Falcon]

         0x30030983: 74 14                             je    20                              ; 0x30030999
         0x30030985: 48 8d 72 10                       leaq    16(%rdx), %rsi                
         0x30030989: 49 b8 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %r8            ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x30030993: 48 89 c7                          movq    %rax, %rdi                    
         0x30030996: 41 ff d0                          callq    *%r8                         ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x30030999: 48 be 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rsi           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x300309a3: 41 bb 0d 00 00 00                 movl    $13, %r11d                    
         0x300309a9: ff d6                             callq    *%rsi                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x300309ab: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x300309ba: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
  0.79%  0x300309c0: 49 83 c1 05                       addq    $5, %r9                       
  0.81%  0x300309c4: 49 83 c0 28                       addq    $40, %r8                      
  0.67%  0x300309c8: 49 81 f9 7a 9d 00 00              cmpq    $40314, %r9                   
         0x300309cf: 0f 87 71 02 00 00                 ja    625                             ; 0x30030c46
  1.38%  0x300309d5: 49 8d 41 05                       leaq    5(%r9), %rax                  
  0.73%  0x300309d9: 4c 39 d8                          cmpq    %r11, %rax                    
         0x300309dc: 73 89                             jae    -119                           ; 0x30030967
  0.82%  0x300309de: 4a 8b 44 ca 38                    movq    56(%rdx,%r9,8), %rax          
  1.30%  0x300309e3: 49 85 c2                          testq    %rax, %r10                   
         0x300309e6: 0f 85 5c 02 00 00                 jne    604                            ; 0x30030c48
  1.46%  0x300309ec: 42 0f be 74 09 15                 movsbl    21(%rcx,%r9), %esi          
  0.75%  0x300309f2: 85 f6                             testl    %esi, %esi                   
         0x300309f4: 75 2a                             jne    42                             ; 0x30030a20
  0.36%  0x300309f6: 8b 70 04                          movl    4(%rax), %esi                 
  1.82%  0x300309f9: 2e 81 e6 ff ff ff 01              andl    $33554431, %esi               
  0.76%  0x30030a00: 81 fe e6 06 00 00                 cmpl    $1766, %esi                   
         0x30030a06: 0f 85 dd 02 00 00                 jne    733                            ; 0x30030ce9
  0.56%  0x30030a0c: ff 40 08                          incl    8(%rax)                       
  1.87%  0x30030a0f: eb 30                             jmp    48                             ; 0x30030a41
         0x30030a11: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
  0.38%  0x30030a20: 83 fe 01                          cmpl    $1, %esi                      
         0x30030a23: 0f 85 c6 02 00 00                 jne    710                            ; 0x30030cef
  0.28%  0x30030a29: 8b 70 04                          movl    4(%rax), %esi                 
  2.43%  0x30030a2c: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.58%  0x30030a32: 81 fe e7 06 00 00                 cmpl    $1767, %esi                   
         0x30030a38: 0f 85 b7 02 00 00                 jne    695                            ; 0x30030cf5
  0.55%  0x30030a3e: ff 40 0c                          incl    12(%rax)                      
  4.01%  0x30030a41: 49 8d 41 06                       leaq    6(%r9), %rax                  
  0.72%  0x30030a45: 4c 39 d8                          cmpq    %r11, %rax                    
         0x30030a48: 0f 83 19 ff ff ff                 jae    -231                           ; 0x30030967
  0.56%  0x30030a4e: 4a 8b 44 ca 40                    movq    64(%rdx,%r9,8), %rax          
  1.63%  0x30030a53: 49 85 c2                          testq    %rax, %r10                   
         0x30030a56: 0f 85 09 02 00 00                 jne    521                            ; 0x30030c65
  1.09%  0x30030a5c: 42 0f be 74 09 16                 movsbl    22(%rcx,%r9), %esi          
  0.78%  0x30030a62: 85 f6                             testl    %esi, %esi                   
         0x30030a64: 75 3a                             jne    58                             ; 0x30030aa0
  0.23%  0x30030a66: 8b 70 04                          movl    4(%rax), %esi                 
  2.00%  0x30030a69: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.76%  0x30030a6f: 81 fe e6 06 00 00                 cmpl    $1766, %esi                   
         0x30030a75: 0f 85 80 02 00 00                 jne    640                            ; 0x30030cfb
  0.66%  0x30030a7b: 2e 2e ff 40 08                    incl    %cs:8(%rax)                   
  1.93%  0x30030a80: eb 3f                             jmp    63                             ; 0x30030ac1
         0x30030a82: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x30030a91: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
  0.36%  0x30030aa0: 83 fe 01                          cmpl    $1, %esi                      
         0x30030aa3: 0f 85 59 02 00 00                 jne    601                            ; 0x30030d02
  0.67%  0x30030aa9: 8b 70 04                          movl    4(%rax), %esi                 
  2.04%  0x30030aac: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.46%  0x30030ab2: 81 fe e7 06 00 00                 cmpl    $1767, %esi                   
         0x30030ab8: 0f 85 4a 02 00 00                 jne    586                            ; 0x30030d08
  0.56%  0x30030abe: ff 40 0c                          incl    12(%rax)                      
  4.08%  0x30030ac1: 49 8d 41 07                       leaq    7(%r9), %rax                  
  0.58%  0x30030ac5: 4c 39 d8                          cmpq    %r11, %rax                    
         0x30030ac8: 0f 83 99 fe ff ff                 jae    -359                           ; 0x30030967
  0.98%  0x30030ace: 4a 8b 44 ca 48                    movq    72(%rdx,%r9,8), %rax          
  1.46%  0x30030ad3: 49 85 c2                          testq    %rax, %r10                   
         0x30030ad6: 0f 85 a1 01 00 00                 jne    417                            ; 0x30030c7d
  1.07%  0x30030adc: 42 0f be 74 09 17                 movsbl    23(%rcx,%r9), %esi          
  0.57%  0x30030ae2: 85 f6                             testl    %esi, %esi                   
         0x30030ae4: 75 3a                             jne    58                             ; 0x30030b20
  0.54%  0x30030ae6: 8b 70 04                          movl    4(%rax), %esi                 
  1.74%  0x30030ae9: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.69%  0x30030aef: 81 fe e6 06 00 00                 cmpl    $1766, %esi                   
         0x30030af5: 0f 85 13 02 00 00                 jne    531                            ; 0x30030d0e
  0.59%  0x30030afb: 2e 2e ff 40 08                    incl    %cs:8(%rax)                   
  1.83%  0x30030b00: eb 3f                             jmp    63                             ; 0x30030b41
         0x30030b02: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x30030b11: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
  0.45%  0x30030b20: 83 fe 01                          cmpl    $1, %esi                      
         0x30030b23: 0f 85 eb 01 00 00                 jne    491                            ; 0x30030d14
  0.67%  0x30030b29: 8b 70 04                          movl    4(%rax), %esi                 
  2.26%  0x30030b2c: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.41%  0x30030b32: 81 fe e7 06 00 00                 cmpl    $1767, %esi                   
         0x30030b38: 0f 85 dc 01 00 00                 jne    476                            ; 0x30030d1a
  0.60%  0x30030b3e: ff 40 0c                          incl    12(%rax)                      
  3.65%  0x30030b41: 49 8d 41 08                       leaq    8(%r9), %rax                  
  0.93%  0x30030b45: 4c 39 d8                          cmpq    %r11, %rax                    
         0x30030b48: 0f 83 19 fe ff ff                 jae    -487                           ; 0x30030967
  0.73%  0x30030b4e: 4a 8b 44 ca 50                    movq    80(%rdx,%r9,8), %rax          
  1.44%  0x30030b53: 49 85 c2                          testq    %rax, %r10                   
         0x30030b56: 0f 85 39 01 00 00                 jne    313                            ; 0x30030c95
  1.02%  0x30030b5c: 42 0f be 74 09 18                 movsbl    24(%rcx,%r9), %esi          
  1.08%  0x30030b62: 85 f6                             testl    %esi, %esi                   
         0x30030b64: 75 3a                             jne    58                             ; 0x30030ba0
  0.50%  0x30030b66: 8b 70 04                          movl    4(%rax), %esi                 
  1.86%  0x30030b69: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.59%  0x30030b6f: 81 fe e6 06 00 00                 cmpl    $1766, %esi                   
         0x30030b75: 0f 85 ad 01 00 00                 jne    429                            ; 0x30030d28
  0.69%  0x30030b7b: 2e 2e ff 40 08                    incl    %cs:8(%rax)                   
  1.70%  0x30030b80: eb 3f                             jmp    63                             ; 0x30030bc1
         0x30030b82: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x30030b91: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
  0.26%  0x30030ba0: 83 fe 01                          cmpl    $1, %esi                      
         0x30030ba3: 0f 85 79 01 00 00                 jne    377                            ; 0x30030d22
  0.63%  0x30030ba9: 8b 70 04                          movl    4(%rax), %esi                 
  2.10%  0x30030bac: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.62%  0x30030bb2: 81 fe e7 06 00 00                 cmpl    $1767, %esi                   
         0x30030bb8: 0f 85 70 01 00 00                 jne    368                            ; 0x30030d2e
  0.44%  0x30030bbe: ff 40 0c                          incl    12(%rax)                      
  4.05%  0x30030bc1: 49 8d 41 09                       leaq    9(%r9), %rax                  
  0.75%  0x30030bc5: 4c 39 d8                          cmpq    %r11, %rax                    
         0x30030bc8: 0f 83 99 fd ff ff                 jae    -615                           ; 0x30030967
  0.83%  0x30030bce: 4a 8b 44 ca 58                    movq    88(%rdx,%r9,8), %rax          
  1.35%  0x30030bd3: 49 85 c2                          testq    %rax, %r10                   
         0x30030bd6: 0f 85 d1 00 00 00                 jne    209                            ; 0x30030cad
  1.25%  0x30030bdc: 42 0f be 74 09 19                 movsbl    25(%rcx,%r9), %esi          
  0.79%  0x30030be2: 85 f6                             testl    %esi, %esi                   
         0x30030be4: 75 3a                             jne    58                             ; 0x30030c20
  0.44%  0x30030be6: 8b 70 04                          movl    4(%rax), %esi                 
  1.66%  0x30030be9: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.78%  0x30030bef: 81 fe e6 06 00 00                 cmpl    $1766, %esi                   
         0x30030bf5: 0f 85 39 01 00 00                 jne    313                            ; 0x30030d34
  0.54%  0x30030bfb: 2e 2e ff 40 08                    incl    %cs:8(%rax)                   
  1.86%  0x30030c00: e9 bb fd ff ff                    jmp    -581                           ; 0x300309c0
         0x30030c05: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x30030c14: 66 66 66 2e 0f 1f 84 00 00 00     nopw    %cs:(%rax,%rax)               
  0.31%  0x30030c20: 83 fe 01                          cmpl    $1, %esi                      
         0x30030c23: 0f 85 21 01 00 00                 jne    289                            ; 0x30030d4a
  0.49%  0x30030c29: 8b 70 04                          movl    4(%rax), %esi                 
  2.27%  0x30030c2c: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.57%  0x30030c32: 81 fe e7 06 00 00                 cmpl    $1767, %esi                   
         0x30030c38: 0f 85 22 01 00 00                 jne    290                            ; 0x30030d60
  0.54%  0x30030c3e: ff 40 0c                          incl    12(%rax)                      
  3.61%  0x30030c41: e9 7a fd ff ff                    jmp    -646                           ; 0x300309c0
         0x30030c46: 5b                                popq    %rbx                          
         0x30030c47: c3                                retq                                  
         0x30030c48: 49 8d 70 e0                       leaq    -32(%r8), %rsi                
         0x30030c4c: 48 bb c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rbx           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x30030c56: 48 89 c7                          movq    %rax, %rdi                    
         0x30030c59: 2e 2e 2e 2e 2e ff d3              callq    *%rbx                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x30030c60: e9 87 fd ff ff                    jmp    -633                           ; 0x300309ec
         0x30030c65: 49 8d 70 e8                       leaq    -24(%r8), %rsi                
         0x30030c69: 48 bb c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rbx           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x30030c73: 48 89 c7                          movq    %rax, %rdi                    
....................................................................................................
 95.64%  <total for region 1>

....[Hottest Regions]...............................................................................
 95.64%  [0x30030983:0x30030c73] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic[Falcon]
  0.23%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.22%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9f0711f:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f695f0:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9eff400:0xffffffffa9eff42a] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f07060:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0740:0xffffffffa9ed078b] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ee587e:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9c0f77a:0xffffffffa9c0f7a3] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9f686c0:0xffffffffa9f68754] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28ead0:0xffffffffaa28eb16] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0800:0xffffffffa9ed0861] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  2.21%  <...other 409 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 95.67%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic[Falcon]
  3.81%  [unknown] ([kernel.kallsyms])
  0.19%  [unknown] (libjvm.so)
  0.19%  [unknown] (liborca.so.0.0.0.0)
  0.03%  [unknown] (libc-2.31.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  PMEM::account_enabled; PMEM::accounts (libaztall.so)
  0.01%  memcpy (libc-2.31.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub[Falcon]
  0.00%  [unknown] (libstdc++.so.6)
  0.00%  clock_gettime (libc-2.31.so)
  0.00%  _IO_setb (libc-2.31.so)
  0.00%  millis_to_ticks (libazsys3.so)
  0.00%  __pthread_mutex_trylock (libpthread-2.31.so)
  0.00%  is_thread_initialized (libazsys3.so)
  0.00%  az_zmd_api_version_tall (libaztall.so)
  0.03%  <...other 15 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.68%  <generated code>
  3.81%  <native code in ([kernel.kallsyms])>
  0.19%  <native code in (libjvm.so)>
  0.19%  <native code in (liborca.so.0.0.0.0)>
  0.05%  <native code in (libc-2.31.so)>
  0.05%  <native code in (libaztall.so)>
  0.02%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (libazsys3.so)>
  0.00%  <native code in (libstdc++.so.6)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_3)

# Run progress: 12.50% complete, ETA 00:26:06
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.150 ns/op
# Warmup Iteration   2: 2.097 ns/op
# Warmup Iteration   3: 2.097 ns/op
# Warmup Iteration   4: 2.096 ns/op
# Warmup Iteration   5: 2.098 ns/op
Iteration   1: 2.098 ns/op
Iteration   2: 2.097 ns/op
Iteration   3: 2.095 ns/op
Iteration   4: 2.094 ns/op
Iteration   5: 2.097 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  2.096 ±(99.9%) 0.007 ns/op [Average]
  (min, avg, max) = (2.094, 2.096, 2.098), stdev = 0.002
  CI (99.9%): [2.089, 2.103] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 136335 total address lines.
Perf output processed (skipped 57.205 seconds):
 Column 1: cycles (52208 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002ff6c:0x3003024a] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic[Falcon]

         0x3002ff6c: 49 85 c3                          testq    %rax, %r11                   
         0x3002ff6f: 74 0a                             je    10                              ; 0x3002ff7b
         0x3002ff71: 48 8d 72 10                       leaq    16(%rdx), %rsi                
         0x3002ff75: 48 89 c7                          movq    %rax, %rdi                    
         0x3002ff78: 41 ff d2                          callq    *%r10                        
         0x3002ff7b: 48 be 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rsi           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002ff85: 41 bb 0d 00 00 00                 movl    $13, %r11d                    
         0x3002ff8b: ff d6                             callq    *%rsi                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002ff8d: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x3002ff9c: 0f 1f 40 00                       nopl    (%rax)                        
  1.39%  0x3002ffa0: 49 83 c1 04                       addq    $4, %r9                       
  1.09%  0x3002ffa4: 49 83 c0 20                       addq    $32, %r8                      
  0.81%  0x3002ffa8: 49 81 f9 7e 9d 00 00              cmpq    $40318, %r9                   
         0x3002ffaf: 0f 87 71 02 00 00                 ja    625                             ; 0x30030226
  1.14%  0x3002ffb5: 49 8d 41 01                       leaq    1(%r9), %rax                  
  1.34%  0x3002ffb9: 48 39 d8                          cmpq    %rbx, %rax                    
         0x3002ffbc: 73 98                             jae    -104                           ; 0x3002ff56
  1.13%  0x3002ffbe: 4a 8b 44 ca 18                    movq    24(%rdx,%r9,8), %rax          
  0.95%  0x3002ffc3: 49 85 c3                          testq    %rax, %r11                   
         0x3002ffc6: 0f 85 5c 02 00 00                 jne    604                            ; 0x30030228
  1.13%  0x3002ffcc: 42 0f be 74 09 11                 movsbl    17(%rcx,%r9), %esi          
  1.79%  0x3002ffd2: 85 f6                             testl    %esi, %esi                   
         0x3002ffd4: 74 2a                             je    42                              ; 0x30030000
  0.65%  0x3002ffd6: 83 fe 01                          cmpl    $1, %esi                      
         0x3002ffd9: 75 45                             jne    69                             ; 0x30030020
  0.29%  0x3002ffdb: 8b 70 04                          movl    4(%rax), %esi                 
  3.20%  0x3002ffde: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.58%  0x3002ffe4: 81 fe e7 06 00 00                 cmpl    $1767, %esi                   
         0x3002ffea: 0f 85 ab 02 00 00                 jne    683                            ; 0x3003029b
  0.61%  0x3002fff0: ff 40 0c                          incl    12(%rax)                      
  1.82%  0x3002fff3: eb 4c                             jmp    76                             ; 0x30030041
         0x3002fff5: 66 66 2e 0f 1f 84 00 00 00 00     nopw    %cs:(%rax,%rax)               
  0.47%  0x30030000: 8b 70 04                          movl    4(%rax), %esi                 
  2.69%  0x30030003: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.48%  0x30030009: 81 fe e6 06 00 00                 cmpl    $1766, %esi                   
         0x3003000f: 0f 85 8d 02 00 00                 jne    653                            ; 0x300302a2
  0.66%  0x30030015: ff 40 08                          incl    8(%rax)                       
  1.61%  0x30030018: eb 27                             jmp    39                             ; 0x30030041
         0x3003001a: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
  0.26%  0x30030020: 83 fe 02                          cmpl    $2, %esi                      
         0x30030023: 0f 85 81 02 00 00                 jne    641                            ; 0x300302aa
  0.32%  0x30030029: 8b 70 04                          movl    4(%rax), %esi                 
  2.59%  0x3003002c: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.55%  0x30030032: 81 fe e8 06 00 00                 cmpl    $1768, %esi                   
         0x30030038: 0f 85 71 02 00 00                 jne    625                            ; 0x300302af
  0.49%  0x3003003e: ff 40 10                          incl    16(%rax)                      
  2.64%  0x30030041: 49 8d 41 02                       leaq    2(%r9), %rax                  
  0.97%  0x30030045: 48 39 d8                          cmpq    %rbx, %rax                    
         0x30030048: 0f 83 08 ff ff ff                 jae    -248                           ; 0x3002ff56
  0.77%  0x3003004e: 4a 8b 44 ca 20                    movq    32(%rdx,%r9,8), %rax          
  1.18%  0x30030053: 49 85 c3                          testq    %rax, %r11                   
         0x30030056: 0f 85 db 01 00 00                 jne    475                            ; 0x30030237
  1.46%  0x3003005c: 42 0f be 74 09 12                 movsbl    18(%rcx,%r9), %esi          
  1.01%  0x30030062: 85 f6                             testl    %esi, %esi                   
         0x30030064: 74 3a                             je    58                              ; 0x300300a0
  0.55%  0x30030066: 83 fe 01                          cmpl    $1, %esi                      
         0x30030069: 75 55                             jne    85                             ; 0x300300c0
  0.42%  0x3003006b: 8b 70 04                          movl    4(%rax), %esi                 
  1.46%  0x3003006e: 2e 2e 2e 2e 2e 2e 2e 2e 2e 81     andl    $33554431, %esi               
  0.39%  0x3003007d: 0f 1f 00                          nopl    (%rax)                        
  0.20%  0x30030080: 81 fe e7 06 00 00                 cmpl    $1767, %esi                   
         0x30030086: 0f 85 28 02 00 00                 jne    552                            ; 0x300302b4
  0.44%  0x3003008c: ff 40 0c                          incl    12(%rax)                      
  1.30%  0x3003008f: eb 50                             jmp    80                             ; 0x300300e1
         0x30030091: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
  0.21%  0x300300a0: 8b 70 04                          movl    4(%rax), %esi                 
  1.29%  0x300300a3: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.66%  0x300300a9: 81 fe e6 06 00 00                 cmpl    $1766, %esi                   
         0x300300af: 0f 85 05 02 00 00                 jne    517                            ; 0x300302ba
  0.40%  0x300300b5: ff 40 08                          incl    8(%rax)                       
  1.33%  0x300300b8: eb 27                             jmp    39                             ; 0x300300e1
         0x300300ba: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
  0.44%  0x300300c0: 83 fe 02                          cmpl    $2, %esi                      
         0x300300c3: 0f 85 f9 01 00 00                 jne    505                            ; 0x300302c2
  0.45%  0x300300c9: 8b 70 04                          movl    4(%rax), %esi                 
  1.24%  0x300300cc: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.40%  0x300300d2: 81 fe e8 06 00 00                 cmpl    $1768, %esi                   
         0x300300d8: 0f 85 ea 01 00 00                 jne    490                            ; 0x300302c8
  0.50%  0x300300de: ff 40 10                          incl    16(%rax)                      
  3.18%  0x300300e1: 49 8d 41 03                       leaq    3(%r9), %rax                  
  1.06%  0x300300e5: 48 39 d8                          cmpq    %rbx, %rax                    
         0x300300e8: 0f 83 68 fe ff ff                 jae    -408                           ; 0x3002ff56
  0.94%  0x300300ee: 4a 8b 44 ca 28                    movq    40(%rdx,%r9,8), %rax          
  1.13%  0x300300f3: 49 85 c3                          testq    %rax, %r11                   
         0x300300f6: 0f 85 4a 01 00 00                 jne    330                            ; 0x30030246
  1.25%  0x300300fc: 42 0f be 74 09 13                 movsbl    19(%rcx,%r9), %esi          
  0.96%  0x30030102: 85 f6                             testl    %esi, %esi                   
         0x30030104: 74 3a                             je    58                              ; 0x30030140
  0.62%  0x30030106: 83 fe 01                          cmpl    $1, %esi                      
         0x30030109: 75 55                             jne    85                             ; 0x30030160
  0.60%  0x3003010b: 8b 70 04                          movl    4(%rax), %esi                 
  1.38%  0x3003010e: 2e 2e 2e 2e 2e 2e 2e 2e 2e 81     andl    $33554431, %esi               
  0.24%  0x3003011d: 0f 1f 00                          nopl    (%rax)                        
  0.32%  0x30030120: 81 fe e7 06 00 00                 cmpl    $1767, %esi                   
         0x30030126: 0f 85 ae 01 00 00                 jne    430                            ; 0x300302da
  0.73%  0x3003012c: ff 40 0c                          incl    12(%rax)                      
  2.31%  0x3003012f: eb 50                             jmp    80                             ; 0x30030181
         0x30030131: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
  0.36%  0x30030140: 8b 70 04                          movl    4(%rax), %esi                 
  0.34%  0x30030143: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.49%  0x30030149: 81 fe e6 06 00 00                 cmpl    $1766, %esi                   
         0x3003014f: 0f 85 8d 01 00 00                 jne    397                            ; 0x300302e2
  0.47%  0x30030155: ff 40 08                          incl    8(%rax)                       
  2.20%  0x30030158: eb 27                             jmp    39                             ; 0x30030181
         0x3003015a: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
  0.30%  0x30030160: 83 fe 02                          cmpl    $2, %esi                      
         0x30030163: 0f 85 65 01 00 00                 jne    357                            ; 0x300302ce
  0.44%  0x30030169: 8b 70 04                          movl    4(%rax), %esi                 
  1.39%  0x3003016c: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.37%  0x30030172: 81 fe e8 06 00 00                 cmpl    $1768, %esi                   
         0x30030178: 0f 85 56 01 00 00                 jne    342                            ; 0x300302d4
  0.42%  0x3003017e: ff 40 10                          incl    16(%rax)                      
  3.84%  0x30030181: 49 8d 41 04                       leaq    4(%r9), %rax                  
  0.93%  0x30030185: 48 39 d8                          cmpq    %rbx, %rax                    
         0x30030188: 0f 83 c8 fd ff ff                 jae    -568                           ; 0x3002ff56
  0.67%  0x3003018e: 4a 8b 44 ca 30                    movq    48(%rdx,%r9,8), %rax          
  2.75%  0x30030193: 49 85 c3                          testq    %rax, %r11                   
         0x30030196: 0f 85 b9 00 00 00                 jne    185                            ; 0x30030255
  1.47%  0x3003019c: 42 0f be 74 09 14                 movsbl    20(%rcx,%r9), %esi          
  0.89%  0x300301a2: 85 f6                             testl    %esi, %esi                   
         0x300301a4: 74 3a                             je    58                              ; 0x300301e0
  0.35%  0x300301a6: 83 fe 01                          cmpl    $1, %esi                      
         0x300301a9: 75 55                             jne    85                             ; 0x30030200
  0.59%  0x300301ab: 8b 70 04                          movl    4(%rax), %esi                 
  1.73%  0x300301ae: 2e 2e 2e 2e 2e 2e 2e 2e 2e 81     andl    $33554431, %esi               
  0.44%  0x300301bd: 0f 1f 00                          nopl    (%rax)                        
  0.17%  0x300301c0: 81 fe e7 06 00 00                 cmpl    $1767, %esi                   
         0x300301c6: 0f 85 1c 01 00 00                 jne    284                            ; 0x300302e8
  0.70%  0x300301cc: ff 40 0c                          incl    12(%rax)                      
  1.37%  0x300301cf: e9 cc fd ff ff                    jmp    -564                           ; 0x3002ffa0
         0x300301d4: 66 66 66 2e 0f 1f 84 00 00 00     nopw    %cs:(%rax,%rax)               
  0.32%  0x300301e0: 8b 70 04                          movl    4(%rax), %esi                 
  1.63%  0x300301e3: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.52%  0x300301e9: 81 fe e6 06 00 00                 cmpl    $1766, %esi                   
         0x300301ef: 0f 85 35 01 00 00                 jne    309                            ; 0x3003032a
  0.50%  0x300301f5: ff 40 08                          incl    8(%rax)                       
  1.34%  0x300301f8: e9 a3 fd ff ff                    jmp    -605                           ; 0x3002ffa0
         0x300301fd: 0f 1f 00                          nopl    (%rax)                        
  0.48%  0x30030200: 83 fe 02                          cmpl    $2, %esi                      
         0x30030203: 0f 85 f5 00 00 00                 jne    245                            ; 0x300302fe
  0.58%  0x30030209: 8b 70 04                          movl    4(%rax), %esi                 
  1.66%  0x3003020c: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.35%  0x30030212: 81 fe e8 06 00 00                 cmpl    $1768, %esi                   
         0x30030218: 0f 85 f6 00 00 00                 jne    246                            ; 0x30030314
  0.57%  0x3003021e: ff 40 10                          incl    16(%rax)                      
  1.37%  0x30030221: e9 7a fd ff ff                    jmp    -646                           ; 0x3002ffa0
         0x30030226: 5b                                popq    %rbx                          
  0.02%  0x30030227: c3                                retq                                  
         0x30030228: 49 8d 70 e8                       leaq    -24(%r8), %rsi                
         0x3003022c: 48 89 c7                          movq    %rax, %rdi                    
         0x3003022f: 41 ff d2                          callq    *%r10                        
         0x30030232: e9 95 fd ff ff                    jmp    -619                           ; 0x3002ffcc
         0x30030237: 49 8d 70 f0                       leaq    -16(%r8), %rsi                
         0x3003023b: 48 89 c7                          movq    %rax, %rdi                    
         0x3003023e: 41 ff d2                          callq    *%r10                        
         0x30030241: e9 16 fe ff ff                    jmp    -490                           ; 0x3003005c
         0x30030246: 49 8d 70 f8                       leaq    -8(%r8), %rsi                 
         0x3003024a: 48 89 c7                          movq    %rax, %rdi                    
....................................................................................................
 94.49%  <total for region 1>

....[Hottest Regions]...............................................................................
 94.49%  [0x3002ff6c:0x3003024a] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic[Falcon]
  1.21%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.22%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9f0711c:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eef3c1:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9ed0800:0xffffffffa9ed0889] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f07060:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eef317:0xffffffffa9eef390] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffaa28ead0:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0740:0xffffffffa9ed07b2] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eee5d0:0xffffffffa9eee62f] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ee587e:0xffffffffa9ee588c] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  2.42%  <...other 457 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 94.52%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic[Falcon]
  4.86%  [unknown] ([kernel.kallsyms])
  0.27%  [unknown] (libjvm.so)
  0.20%  [unknown] (liborca.so.0.0.0.0)
  0.03%  [unknown] (libc-2.31.so)
  0.02%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub[Falcon]
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  PMEM::account_enabled (libaztall.so)
  0.01%  [unknown] ([vdso])
  0.00%  memcpy (libc-2.31.so)
  0.00%  syscall (libc-2.31.so)
  0.00%  <stub: method entry point (kind = zerolocals)>
  0.00%  [unknown] (libstdc++.so.6)
  0.00%  PMEM::get_account_usage (libaztall.so)
  0.00%  VMEM::get_account_usage (libaztall.so)
  0.00%  _dl_addr (libc-2.31.so)
  0.00%  __pthread_mutex_trylock (libpthread-2.31.so)
  0.00%  <stub: istore  54 istore>
  0.04%  <...other 21 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 94.54%  <generated code>
  4.86%  <native code in ([kernel.kallsyms])>
  0.27%  <native code in (libjvm.so)>
  0.20%  <native code in (liborca.so.0.0.0.0)>
  0.06%  <native code in (libc-2.31.so)>
  0.03%  <native code in (libaztall.so)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in ([vdso])>
  0.00%  <native code in (libstdc++.so.6)>
  0.00%  <native code in (libdl-2.31.so)>
  0.00%  <native code in (perf-147143.map)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_4)

# Run progress: 18.75% complete, ETA 00:24:15
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 11.721 ns/op
# Warmup Iteration   2: 11.641 ns/op
# Warmup Iteration   3: 11.642 ns/op
# Warmup Iteration   4: 11.636 ns/op
# Warmup Iteration   5: 11.640 ns/op
Iteration   1: 11.635 ns/op
Iteration   2: 11.638 ns/op
Iteration   3: 11.638 ns/op
Iteration   4: 11.640 ns/op
Iteration   5: 11.648 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  11.640 ±(99.9%) 0.019 ns/op [Average]
  (min, avg, max) = (11.635, 11.640, 11.648), stdev = 0.005
  CI (99.9%): [11.621, 11.659] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 136974 total address lines.
Perf output processed (skipped 56.521 seconds):
 Column 1: cycles (51538 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x300303a3:0x3003063c] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic[Falcon]

         0x300303a3: 74 0a                             je    10                              ; 0x300303af
         0x300303a5: 48 8d 72 10                       leaq    16(%rdx), %rsi                
         0x300303a9: 48 89 c7                          movq    %rax, %rdi                    
         0x300303ac: 41 ff d2                          callq    *%r10                        
         0x300303af: 48 be 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rsi           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x300303b9: 41 bb 0d 00 00 00                 movl    $13, %r11d                    
         0x300303bf: ff d6                             callq    *%rsi                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x300303c1: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x300303d0: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x300303df: 90                                nop                                   
  0.01%  0x300303e0: 49 83 c1 03                       addq    $3, %r9                       
  0.00%  0x300303e4: 49 83 c0 18                       addq    $24, %r8                      
         0x300303e8: 49 81 f9 7c 9d 00 00              cmpq    $40316, %r9                   
         0x300303ef: 0f 87 28 02 00 00                 ja    552                             ; 0x3003061d
  1.07%  0x300303f5: 49 8d 41 03                       leaq    3(%r9), %rax                  
  0.01%  0x300303f9: 48 39 d8                          cmpq    %rbx, %rax                    
         0x300303fc: 73 88                             jae    -120                           ; 0x30030386
  0.01%  0x300303fe: 4a 8b 44 ca 28                    movq    40(%rdx,%r9,8), %rax          
  0.99%  0x30030403: 49 85 c3                          testq    %rax, %r11                   
         0x30030406: 0f 85 1d 02 00 00                 jne    541                            ; 0x30030629
  1.04%  0x3003040c: 42 0f be 74 09 13                 movsbl    19(%rcx,%r9), %esi          
  0.18%  0x30030412: 83 fe 03                          cmpl    $3, %esi                      
         0x30030415: 0f 87 3a 02 00 00                 ja    570                             ; 0x30030655
  0.15%  0x3003041b: 41 ff 24 f6                       jmpq    *(%r14,%rsi,8)                
  0.87%  0x3003041f: 8b 70 04                          movl    4(%rax), %esi                 
  1.76%  0x30030422: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.24%  0x30030428: 81 fe e6 06 00 00                 cmpl    $1766, %esi                   
         0x3003042e: 0f 85 8c 02 00 00                 jne    652                            ; 0x300306c0
  0.24%  0x30030434: ff 40 08                          incl    8(%rax)                       
  0.74%  0x30030437: eb 5f                             jmp    95                             ; 0x30030498
         0x30030439: 0f 1f 80 00 00 00 00              nopl    (%rax)                        
  3.66%  0x30030440: 8b 70 04                          movl    4(%rax), %esi                 
  2.86%  0x30030443: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.23%  0x30030449: 81 fe e8 06 00 00                 cmpl    $1768, %esi                   
         0x3003044f: 0f 85 71 02 00 00                 jne    625                            ; 0x300306c6
  0.27%  0x30030455: ff 40 10                          incl    16(%rax)                      
  1.07%  0x30030458: eb 3e                             jmp    62                             ; 0x30030498
         0x3003045a: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
  3.59%  0x30030460: 8b 70 04                          movl    4(%rax), %esi                 
  3.56%  0x30030463: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.28%  0x30030469: 81 fe e9 06 00 00                 cmpl    $1769, %esi                   
         0x3003046f: 0f 85 57 02 00 00                 jne    599                            ; 0x300306cc
  0.26%  0x30030475: ff 40 14                          incl    20(%rax)                      
  1.12%  0x30030478: eb 1e                             jmp    30                             ; 0x30030498
         0x3003047a: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
  3.93%  0x30030480: 8b 70 04                          movl    4(%rax), %esi                 
  2.77%  0x30030483: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.26%  0x30030489: 81 fe e7 06 00 00                 cmpl    $1767, %esi                   
         0x3003048f: 0f 85 3d 02 00 00                 jne    573                            ; 0x300306d2
  0.24%  0x30030495: ff 40 0c                          incl    12(%rax)                      
  2.18%  0x30030498: 2e 2e 2e 2e 49 8d 41 04           leaq    %cs:4(%r9), %rax              
  0.04%  0x300304a0: 48 39 d8                          cmpq    %rbx, %rax                    
         0x300304a3: 0f 83 dd fe ff ff                 jae    -291                           ; 0x30030386
  0.00%  0x300304a9: 4a 8b 44 ca 30                    movq    48(%rdx,%r9,8), %rax          
  1.45%  0x300304ae: 49 85 c3                          testq    %rax, %r11                   
         0x300304b1: 0f 85 81 01 00 00                 jne    385                            ; 0x30030638
  0.40%  0x300304b7: 2e 2e 2e 42 0f be 74 09 14        movsbl    %cs:20(%rcx,%r9), %esi      
  0.09%  0x300304c0: 83 fe 03                          cmpl    $3, %esi                      
         0x300304c3: 0f 87 92 01 00 00                 ja    402                             ; 0x3003065b
  0.01%  0x300304c9: 41 ff 24 f7                       jmpq    *(%r15,%rsi,8)                
  0.68%  0x300304cd: 8b 70 04                          movl    4(%rax), %esi                 
  1.51%  0x300304d0: 2e 2e 2e 2e 2e 2e 2e 2e 2e 81     andl    $33554431, %esi               
  0.14%  0x300304df: 90                                nop                                   
  0.10%  0x300304e0: 81 fe e6 06 00 00                 cmpl    $1766, %esi                   
         0x300304e6: 0f 85 ec 01 00 00                 jne    492                            ; 0x300306d8
  0.14%  0x300304ec: ff 40 08                          incl    8(%rax)                       
  0.92%  0x300304ef: eb 67                             jmp    103                            ; 0x30030558
         0x300304f1: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
  3.36%  0x30030500: 8b 70 04                          movl    4(%rax), %esi                 
  2.91%  0x30030503: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.27%  0x30030509: 81 fe e8 06 00 00                 cmpl    $1768, %esi                   
         0x3003050f: 0f 85 c9 01 00 00                 jne    457                            ; 0x300306de
  0.26%  0x30030515: ff 40 10                          incl    16(%rax)                      
  1.11%  0x30030518: eb 3e                             jmp    62                             ; 0x30030558
         0x3003051a: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
  3.46%  0x30030520: 8b 70 04                          movl    4(%rax), %esi                 
  3.55%  0x30030523: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.29%  0x30030529: 81 fe e9 06 00 00                 cmpl    $1769, %esi                   
         0x3003052f: 0f 85 af 01 00 00                 jne    431                            ; 0x300306e4
  0.28%  0x30030535: ff 40 14                          incl    20(%rax)                      
  1.19%  0x30030538: eb 1e                             jmp    30                             ; 0x30030558
         0x3003053a: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
  3.29%  0x30030540: 8b 70 04                          movl    4(%rax), %esi                 
  2.63%  0x30030543: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.28%  0x30030549: 81 fe e7 06 00 00                 cmpl    $1767, %esi                   
         0x3003054f: 0f 85 95 01 00 00                 jne    405                            ; 0x300306ea
  0.27%  0x30030555: ff 40 0c                          incl    12(%rax)                      
  2.07%  0x30030558: 2e 2e 2e 2e 49 8d 41 05           leaq    %cs:5(%r9), %rax              
  0.00%  0x30030560: 48 39 d8                          cmpq    %rbx, %rax                    
         0x30030563: 0f 83 1d fe ff ff                 jae    -483                           ; 0x30030386
  0.00%  0x30030569: 4a 8b 44 ca 38                    movq    56(%rdx,%r9,8), %rax          
  1.55%  0x3003056e: 49 85 c3                          testq    %rax, %r11                   
         0x30030571: 0f 85 d0 00 00 00                 jne    208                            ; 0x30030647
  0.43%  0x30030577: 2e 2e 2e 42 0f be 74 09 15        movsbl    %cs:21(%rcx,%r9), %esi      
  0.08%  0x30030580: 83 fe 03                          cmpl    $3, %esi                      
         0x30030583: 0f 87 d9 00 00 00                 ja    217                             ; 0x30030662
  0.11%  0x30030589: 41 ff 24 f4                       jmpq    *(%r12,%rsi,8)                
  0.73%  0x3003058d: 8b 70 04                          movl    4(%rax), %esi                 
  1.52%  0x30030590: 2e 2e 2e 2e 2e 2e 2e 2e 2e 81     andl    $33554431, %esi               
  0.16%  0x3003059f: 90                                nop                                   
  0.12%  0x300305a0: 81 fe e6 06 00 00                 cmpl    $1766, %esi                   
         0x300305a6: 0f 85 5a 01 00 00                 jne    346                            ; 0x30030706
  0.15%  0x300305ac: ff 40 08                          incl    8(%rax)                       
  0.94%  0x300305af: e9 2c fe ff ff                    jmp    -468                           ; 0x300303e0
         0x300305b4: 66 66 66 2e 0f 1f 84 00 00 00     nopw    %cs:(%rax,%rax)               
  3.41%  0x300305c0: 8b 70 04                          movl    4(%rax), %esi                 
  2.63%  0x300305c3: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.26%  0x300305c9: 81 fe e8 06 00 00                 cmpl    $1768, %esi                   
         0x300305cf: 0f 85 47 01 00 00                 jne    327                            ; 0x3003071c
  0.26%  0x300305d5: ff 40 10                          incl    16(%rax)                      
  1.09%  0x300305d8: e9 03 fe ff ff                    jmp    -509                           ; 0x300303e0
         0x300305dd: 0f 1f 00                          nopl    (%rax)                        
  3.46%  0x300305e0: 8b 70 04                          movl    4(%rax), %esi                 
  3.54%  0x300305e3: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.26%  0x300305e9: 81 fe e9 06 00 00                 cmpl    $1769, %esi                   
         0x300305ef: 0f 85 fb 00 00 00                 jne    251                            ; 0x300306f0
  0.26%  0x300305f5: ff 40 14                          incl    20(%rax)                      
  1.28%  0x300305f8: e9 e3 fd ff ff                    jmp    -541                           ; 0x300303e0
         0x300305fd: 0f 1f 00                          nopl    (%rax)                        
  3.81%  0x30030600: 8b 70 04                          movl    4(%rax), %esi                 
  2.73%  0x30030603: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.24%  0x30030609: 81 fe e7 06 00 00                 cmpl    $1767, %esi                   
         0x3003060f: 0f 85 1d 01 00 00                 jne    285                            ; 0x30030732
  0.28%  0x30030615: ff 40 0c                          incl    12(%rax)                      
  2.16%  0x30030618: e9 c3 fd ff ff                    jmp    -573                           ; 0x300303e0
         0x3003061d: 48 83 c4 08                       addq    $8, %rsp                      
  0.00%  0x30030621: 5b                                popq    %rbx                          
         0x30030622: 41 5c                             popq    %r12                          
         0x30030624: 41 5e                             popq    %r14                          
         0x30030626: 41 5f                             popq    %r15                          
         0x30030628: c3                                retq                                  
         0x30030629: 49 8d 70 f0                       leaq    -16(%r8), %rsi                
         0x3003062d: 48 89 c7                          movq    %rax, %rdi                    
         0x30030630: 41 ff d2                          callq    *%r10                        
         0x30030633: e9 d4 fd ff ff                    jmp    -556                           ; 0x3003040c
         0x30030638: 49 8d 70 f8                       leaq    -8(%r8), %rsi                 
         0x3003063c: 48 89 c7                          movq    %rax, %rdi                    
....................................................................................................
 95.76%  <total for region 1>

....[Hottest Regions]...............................................................................
 95.76%  [0x300303a3:0x3003063c] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic[Falcon]
  0.24%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.20%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.20%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9f0711c:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f69640:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ee587e:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ed0800:0xffffffffa9ed0889] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffaa28d0d1:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eef44f:0xffffffffa9eef4ad] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0740:0xffffffffa9ed0797] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eff400:0xffffffffa9eff421] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28ead0:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9c0f77a:0xffffffffa9c0f7a3] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9f070ab:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9f63240:0xffffffffa9f63270] in [unknown] ([kernel.kallsyms])
  2.11%  <...other 340 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 95.76%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic[Falcon]
  3.81%  [unknown] ([kernel.kallsyms])
  0.22%  [unknown] (libjvm.so)
  0.02%  [unknown] (libc-2.31.so)
  0.02%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.02%  [unknown] ([vdso])
  0.01%  PMEM::account_enabled; PMEM::accounts (libaztall.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  az_pmem_get_account_usage_tall; az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  is_thread_initialized (libazsys3.so)
  0.01%  __pthread_mutex_lock (libpthread-2.31.so)
  0.01%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub[Falcon]
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  az_zmd_api_version_tall (libaztall.so)
  0.00%  az_get_elastic (libazsys3.so)
  0.04%  <...other 16 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.77%  <generated code>
  3.81%  <native code in ([kernel.kallsyms])>
  0.22%  <native code in (libjvm.so)>
  0.09%  <native code in (libaztall.so)>
  0.04%  <native code in (libc-2.31.so)>
  0.02%  <native code in (libpthread-2.31.so)>
  0.02%  <native code in (libazsys3.so)>
  0.02%  <native code in ([vdso])>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_5)

# Run progress: 25.00% complete, ETA 00:22:20
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 12.869 ns/op
# Warmup Iteration   2: 12.730 ns/op
# Warmup Iteration   3: 12.733 ns/op
# Warmup Iteration   4: 12.733 ns/op
# Warmup Iteration   5: 12.729 ns/op
Iteration   1: 12.730 ns/op
Iteration   2: 12.731 ns/op
Iteration   3: 12.734 ns/op
Iteration   4: 12.729 ns/op
Iteration   5: 12.728 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  12.730 ±(99.9%) 0.008 ns/op [Average]
  (min, avg, max) = (12.728, 12.730, 12.734), stdev = 0.002
  CI (99.9%): [12.722, 12.739] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 136896 total address lines.
Perf output processed (skipped 58.915 seconds):
 Column 1: cycles (51791 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x30031183:0x30031392] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic[Falcon]

         0x30031183: 49 85 c3                          testq    %rax, %r11                   
         0x30031186: 74 0a                             je    10                              ; 0x30031192
         0x30031188: 48 8d 72 10                       leaq    16(%rdx), %rsi                
         0x3003118c: 48 89 c7                          movq    %rax, %rdi                    
         0x3003118f: 41 ff d2                          callq    *%r10                        
         0x30031192: 48 be 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rsi           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3003119c: 41 bb 0d 00 00 00                 movl    $13, %r11d                    
         0x300311a2: ff d6                             callq    *%rsi                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x300311a4: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x300311b3: 66 66 66 66 2e 0f 1f 84 00 00     nopw    %cs:(%rax,%rax)               
  0.04%  0x300311c0: 49 83 c1 02                       addq    $2, %r9                       
         0x300311c4: 49 83 c0 10                       addq    $16, %r8                      
         0x300311c8: 49 81 f9 7e 9d 00 00              cmpq    $40318, %r9                   
         0x300311cf: 0f 87 9f 01 00 00                 ja    415                             ; 0x30031374
  1.42%  0x300311d5: 49 8d 41 01                       leaq    1(%r9), %rax                  
  0.03%  0x300311d9: 48 39 d8                          cmpq    %rbx, %rax                    
         0x300311dc: 73 8f                             jae    -113                           ; 0x3003116d
         0x300311de: 4a 8b 44 ca 18                    movq    24(%rdx,%r9,8), %rax          
  0.03%  0x300311e3: 49 85 c3                          testq    %rax, %r11                   
         0x300311e6: 0f 85 8e 01 00 00                 jne    398                            ; 0x3003137a
  1.45%  0x300311ec: 42 0f be 74 09 11                 movsbl    17(%rcx,%r9), %esi          
  0.80%  0x300311f2: 83 fe 04                          cmpl    $4, %esi                      
         0x300311f5: 0f 87 9c 01 00 00                 ja    412                             ; 0x30031397
  0.92%  0x300311fb: 41 ff 24 f6                       jmpq    *(%r14,%rsi,8)                
  1.03%  0x300311ff: 8b 70 04                          movl    4(%rax), %esi                 
  1.40%  0x30031202: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.24%  0x30031208: 81 fe e6 06 00 00                 cmpl    $1766, %esi                   
         0x3003120e: 0f 85 f8 01 00 00                 jne    504                            ; 0x3003140c
  0.29%  0x30031214: ff 40 08                          incl    8(%rax)                       
  1.65%  0x30031217: e9 84 00 00 00                    jmp    132                            ; 0x300312a0
  4.90%  0x3003121c: 8b 70 04                          movl    4(%rax), %esi                 
  2.95%  0x3003121f: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.29%  0x30031225: 81 fe ea 06 00 00                 cmpl    $1770, %esi                   
         0x3003122b: 0f 85 e0 01 00 00                 jne    480                            ; 0x30031411
  0.30%  0x30031231: ff 40 18                          incl    24(%rax)                      
  2.58%  0x30031234: eb 6a                             jmp    106                            ; 0x300312a0
  4.45%  0x30031236: 8b 70 04                          movl    4(%rax), %esi                 
  3.50%  0x30031239: 2e 81 e6 ff ff ff 01              andl    $33554431, %esi               
  0.28%  0x30031240: 81 fe e8 06 00 00                 cmpl    $1768, %esi                   
         0x30031246: 0f 85 ca 01 00 00                 jne    458                            ; 0x30031416
  0.28%  0x3003124c: ff 40 10                          incl    16(%rax)                      
  1.64%  0x3003124f: eb 4f                             jmp    79                             ; 0x300312a0
  4.58%  0x30031251: 8b 70 04                          movl    4(%rax), %esi                 
  2.93%  0x30031254: 2e 2e 2e 2e 2e 2e 81 e6 ff ff     andl    $33554431, %esi               
  0.24%  0x30031260: 81 fe e9 06 00 00                 cmpl    $1769, %esi                   
         0x30031266: 0f 85 af 01 00 00                 jne    431                            ; 0x3003141b
  0.33%  0x3003126c: ff 40 14                          incl    20(%rax)                      
  1.73%  0x3003126f: eb 2f                             jmp    47                             ; 0x300312a0
  4.27%  0x30031271: 8b 70 04                          movl    4(%rax), %esi                 
  2.96%  0x30031274: 2e 2e 2e 2e 2e 2e 81 e6 ff ff     andl    $33554431, %esi               
  0.26%  0x30031280: 81 fe e7 06 00 00                 cmpl    $1767, %esi                   
         0x30031286: 0f 85 96 01 00 00                 jne    406                            ; 0x30031422
  0.25%  0x3003128c: ff 40 0c                          incl    12(%rax)                      
  1.74%  0x3003128f: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x3003129e: 66 90                             nop                                   
  0.07%  0x300312a0: 49 8d 41 02                       leaq    2(%r9), %rax                  
  0.01%  0x300312a4: 48 39 d8                          cmpq    %rbx, %rax                    
         0x300312a7: 0f 83 c0 fe ff ff                 jae    -320                           ; 0x3003116d
  0.30%  0x300312ad: 4a 8b 44 ca 20                    movq    32(%rdx,%r9,8), %rax          
  3.26%  0x300312b2: 49 85 c3                          testq    %rax, %r11                   
         0x300312b5: 0f 85 ce 00 00 00                 jne    206                            ; 0x30031389
  0.34%  0x300312bb: 42 0f be 74 09 12                 movsbl    18(%rcx,%r9), %esi          
  0.07%  0x300312c1: 83 fe 04                          cmpl    $4, %esi                      
         0x300312c4: 0f 87 d2 00 00 00                 ja    210                             ; 0x3003139c
  0.53%  0x300312ca: 41 ff 24 f7                       jmpq    *(%r15,%rsi,8)                
  0.47%  0x300312ce: 8b 70 04                          movl    4(%rax), %esi                 
  1.02%  0x300312d1: 2e 2e 2e 2e 2e 2e 2e 2e 2e 81     andl    $33554431, %esi               
  0.14%  0x300312e0: 81 fe e6 06 00 00                 cmpl    $1766, %esi                   
         0x300312e6: 0f 85 93 01 00 00                 jne    403                            ; 0x3003147f
  0.31%  0x300312ec: ff 40 08                          incl    8(%rax)                       
  1.15%  0x300312ef: e9 cc fe ff ff                    jmp    -308                           ; 0x300311c0
  3.69%  0x300312f4: 8b 70 04                          movl    4(%rax), %esi                 
  3.12%  0x300312f7: 2e 2e 2e 81 e6 ff ff ff 01        andl    $33554431, %esi               
  0.27%  0x30031300: 81 fe ea 06 00 00                 cmpl    $1770, %esi                   
         0x30031306: 0f 85 1b 01 00 00                 jne    283                            ; 0x30031427
  0.42%  0x3003130c: ff 40 18                          incl    24(%rax)                      
  2.26%  0x3003130f: e9 ac fe ff ff                    jmp    -340                           ; 0x300311c0
  4.23%  0x30031314: 8b 70 04                          movl    4(%rax), %esi                 
  3.09%  0x30031317: 2e 2e 2e 81 e6 ff ff ff 01        andl    $33554431, %esi               
  0.28%  0x30031320: 81 fe e8 06 00 00                 cmpl    $1768, %esi                   
         0x30031326: 0f 85 11 01 00 00                 jne    273                            ; 0x3003143d
  0.27%  0x3003132c: ff 40 10                          incl    16(%rax)                      
  1.68%  0x3003132f: e9 8c fe ff ff                    jmp    -372                           ; 0x300311c0
  3.68%  0x30031334: 8b 70 04                          movl    4(%rax), %esi                 
  3.23%  0x30031337: 2e 2e 2e 81 e6 ff ff ff 01        andl    $33554431, %esi               
  0.34%  0x30031340: 81 fe e9 06 00 00                 cmpl    $1769, %esi                   
         0x30031346: 0f 85 07 01 00 00                 jne    263                            ; 0x30031453
  0.40%  0x3003134c: ff 40 14                          incl    20(%rax)                      
  2.08%  0x3003134f: e9 6c fe ff ff                    jmp    -404                           ; 0x300311c0
  3.87%  0x30031354: 8b 70 04                          movl    4(%rax), %esi                 
  3.15%  0x30031357: 2e 2e 2e 81 e6 ff ff ff 01        andl    $33554431, %esi               
  0.26%  0x30031360: 81 fe e7 06 00 00                 cmpl    $1767, %esi                   
         0x30031366: 0f 85 fd 00 00 00                 jne    253                            ; 0x30031469
  0.31%  0x3003136c: ff 40 0c                          incl    12(%rax)                      
  1.23%  0x3003136f: e9 4c fe ff ff                    jmp    -436                           ; 0x300311c0
  0.00%  0x30031374: 5b                                popq    %rbx                          
  0.00%  0x30031375: 41 5e                             popq    %r14                          
         0x30031377: 41 5f                             popq    %r15                          
         0x30031379: c3                                retq                                  
         0x3003137a: 49 8d 70 f8                       leaq    -8(%r8), %rsi                 
         0x3003137e: 48 89 c7                          movq    %rax, %rdi                    
         0x30031381: 41 ff d2                          callq    *%r10                        
         0x30031384: e9 63 fe ff ff                    jmp    -413                           ; 0x300311ec
         0x30031389: 48 89 c7                          movq    %rax, %rdi                    
         0x3003138c: 4c 89 c6                          movq    %r8, %rsi                     
         0x3003138f: 41 ff d2                          callq    *%r10                        
         0x30031392: e9 24 ff ff ff                    jmp    -220                           ; 0x300312bb
....................................................................................................
 95.32%  <total for region 1>

....[Hottest Regions]...............................................................................
 95.32%  [0x30031183:0x30031392] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic[Falcon]
  0.79%  [0xffffffffa9c94c86:0xffffffffa9c94c86] in [unknown] ([kernel.kallsyms])
  0.23%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.21%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9f0711f:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eb8dcf:0xffffffffa9eb8de6] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eb93b5:0xffffffffa9eb9441] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f211f9:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f07065:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f695f5:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ee587e:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.08%  [0x7ff8192655f8:0x7ff819265621] in [unknown] (libjvm.so)
  0.07%  [0xffffffffa9eff400:0xffffffffa9eff42a] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0800:0xffffffffa9ed0866] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28ead0:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9f68701:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9d5b2e0:0xffffffffa9d5b2ea] in [unknown] ([kernel.kallsyms])
  1.97%  <...other 316 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 95.32%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic[Falcon]
  4.33%  [unknown] ([kernel.kallsyms])
  0.20%  [unknown] (libjvm.so)
  0.02%  [unknown] (libc-2.31.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  PMEM::account_enabled; PMEM::accounts (libaztall.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub[Falcon]
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  is_thread_initialized (libazsys3.so)
  0.01%  _IO_default_xsputn (libc-2.31.so)
  0.01%  [unknown] ([vdso])
  0.01%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  VMEM::get_account_usage (libaztall.so)
  0.00%  PMEM_Account::fetch_stats (libaztall.so)
  0.00%  MutexLocker::~MutexLocker (libaztall.so)
  0.02%  <...other 12 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.34%  <generated code>
  4.33%  <native code in ([kernel.kallsyms])>
  0.20%  <native code in (libjvm.so)>
  0.05%  <native code in (libaztall.so)>
  0.04%  <native code in (libc-2.31.so)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_6)

# Run progress: 31.25% complete, ETA 00:20:33
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 12.984 ns/op
# Warmup Iteration   2: 12.905 ns/op
# Warmup Iteration   3: 12.904 ns/op
# Warmup Iteration   4: 12.906 ns/op
# Warmup Iteration   5: 12.904 ns/op
Iteration   1: 12.904 ns/op
Iteration   2: 12.904 ns/op
Iteration   3: 12.905 ns/op
Iteration   4: 12.906 ns/op
Iteration   5: 12.906 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  12.905 ±(99.9%) 0.004 ns/op [Average]
  (min, avg, max) = (12.904, 12.905, 12.906), stdev = 0.001
  CI (99.9%): [12.901, 12.909] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 137109 total address lines.
Perf output processed (skipped 56.255 seconds):
 Column 1: cycles (52003 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x30030720:0x300307d2] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic[Falcon]

         0x30030720: 81 fe ea 06 00 00                 cmpl    $1770, %esi                   
         0x30030726: 0f 85 66 01 00 00                 jne    358                            ; 0x30030892
         0x3003072c: ff 40 18                          incl    24(%rax)                      
         0x3003072f: e9 8c fe ff ff                    jmp    -372                           ; 0x300305c0
         0x30030734: 8b 70 04                          movl    4(%rax), %esi                 
         0x30030737: 2e 2e 2e 81 e6 ff ff ff 01        andl    $33554431, %esi               
         0x30030740: 81 fe e8 06 00 00                 cmpl    $1768, %esi                   
         0x30030746: 0f 85 5c 01 00 00                 jne    348                            ; 0x300308a8
         0x3003074c: ff 40 10                          incl    16(%rax)                      
         0x3003074f: e9 6c fe ff ff                    jmp    -404                           ; 0x300305c0
  8.00%  0x30030754: 8b 70 04                          movl    4(%rax), %esi                 
  4.93%  0x30030757: 2e 2e 2e 81 e6 ff ff ff 01        andl    $33554431, %esi               
  0.47%  0x30030760: 81 fe e9 06 00 00                 cmpl    $1769, %esi                   
         0x30030766: 0f 85 52 01 00 00                 jne    338                            ; 0x300308be
  0.45%  0x3003076c: ff 40 14                          incl    20(%rax)                      
  2.85%  0x3003076f: e9 4c fe ff ff                    jmp    -436                           ; 0x300305c0
  5.02%  0x30030774: 8b 70 04                          movl    4(%rax), %esi                 
  5.89%  0x30030777: 2e 2e 2e 81 e6 ff ff ff 01        andl    $33554431, %esi               
  0.55%  0x30030780: 81 fe e7 06 00 00                 cmpl    $1767, %esi                   
         0x30030786: 0f 85 48 01 00 00                 jne    328                            ; 0x300308d4
  0.60%  0x3003078c: ff 40 0c                          incl    12(%rax)                      
  3.37%  0x3003078f: e9 2c fe ff ff                    jmp    -468                           ; 0x300305c0
  7.25%  0x30030794: 8b 70 04                          movl    4(%rax), %esi                 
  4.76%  0x30030797: 2e 2e 2e 81 e6 ff ff ff 01        andl    $33554431, %esi               
  0.52%  0x300307a0: 81 fe eb 06 00 00                 cmpl    $1771, %esi                   
         0x300307a6: 0f 85 3e 01 00 00                 jne    318                            ; 0x300308ea
  0.48%  0x300307ac: ff 40 1c                          incl    28(%rax)                      
  3.85%  0x300307af: e9 0c fe ff ff                    jmp    -500                           ; 0x300305c0
         0x300307b4: 5b                                popq    %rbx                          
  0.00%  0x300307b5: 41 5e                             popq    %r14                          
         0x300307b7: 41 5f                             popq    %r15                          
         0x300307b9: c3                                retq                                  
         0x300307ba: 49 8d 70 f8                       leaq    -8(%r8), %rsi                 
         0x300307be: 48 89 c7                          movq    %rax, %rdi                    
         0x300307c1: 41 ff d2                          callq    *%r10                        
         0x300307c4: e9 23 fe ff ff                    jmp    -477                           ; 0x300305ec
         0x300307c9: 48 89 c7                          movq    %rax, %rdi                    
         0x300307cc: 4c 89 c6                          movq    %r8, %rsi                     
         0x300307cf: 41 ff d2                          callq    *%r10                        
         0x300307d2: e9 04 ff ff ff                    jmp    -252                           ; 0x300306db
....................................................................................................
 48.99%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x30030583:0x30030686] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic[Falcon]

         0x30030583: 49 85 c3                          testq    %rax, %r11                   
         0x30030586: 74 0a                             je    10                              ; 0x30030592
         0x30030588: 48 8d 72 10                       leaq    16(%rdx), %rsi                
         0x3003058c: 48 89 c7                          movq    %rax, %rdi                    
         0x3003058f: 41 ff d2                          callq    *%r10                        
         0x30030592: 48 be 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rsi           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3003059c: 41 bb 0d 00 00 00                 movl    $13, %r11d                    
         0x300305a2: ff d6                             callq    *%rsi                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x300305a4: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x300305b3: 66 66 66 66 2e 0f 1f 84 00 00     nopw    %cs:(%rax,%rax)               
  0.04%  0x300305c0: 49 83 c1 02                       addq    $2, %r9                       
  0.00%  0x300305c4: 49 83 c0 10                       addq    $16, %r8                      
         0x300305c8: 49 81 f9 7e 9d 00 00              cmpq    $40318, %r9                   
         0x300305cf: 0f 87 df 01 00 00                 ja    479                             ; 0x300307b4
  1.44%  0x300305d5: 49 8d 41 01                       leaq    1(%r9), %rax                  
  0.04%  0x300305d9: 48 39 d8                          cmpq    %rbx, %rax                    
         0x300305dc: 73 8f                             jae    -113                           ; 0x3003056d
         0x300305de: 4a 8b 44 ca 18                    movq    24(%rdx,%r9,8), %rax          
  0.00%  0x300305e3: 49 85 c3                          testq    %rax, %r11                   
         0x300305e6: 0f 85 ce 01 00 00                 jne    462                            ; 0x300307ba
  1.37%  0x300305ec: 42 0f be 74 09 11                 movsbl    17(%rcx,%r9), %esi          
  0.54%  0x300305f2: 83 fe 05                          cmpl    $5, %esi                      
         0x300305f5: 0f 87 dc 01 00 00                 ja    476                             ; 0x300307d7
  0.78%  0x300305fb: 41 ff 24 f6                       jmpq    *(%r14,%rsi,8)                
  1.26%  0x300305ff: 8b 70 04                          movl    4(%rax), %esi                 
  1.96%  0x30030602: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.45%  0x30030608: 81 fe e6 06 00 00                 cmpl    $1766, %esi                   
         0x3003060e: 0f 85 4a 02 00 00                 jne    586                            ; 0x3003085e
  0.49%  0x30030614: ff 40 08                          incl    8(%rax)                       
  1.79%  0x30030617: e9 a4 00 00 00                    jmp    164                            ; 0x300306c0
  8.08%  0x3003061c: 8b 70 04                          movl    4(%rax), %esi                 
  5.10%  0x3003061f: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.51%  0x30030625: 81 fe ea 06 00 00                 cmpl    $1770, %esi                   
         0x3003062b: 0f 85 32 02 00 00                 jne    562                            ; 0x30030863
  0.44%  0x30030631: ff 40 18                          incl    24(%rax)                      
  3.24%  0x30030634: e9 87 00 00 00                    jmp    135                            ; 0x300306c0
  5.96%  0x30030639: 8b 70 04                          movl    4(%rax), %esi                 
  5.40%  0x3003063c: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.54%  0x30030642: 81 fe e8 06 00 00                 cmpl    $1768, %esi                   
         0x30030648: 0f 85 1a 02 00 00                 jne    538                            ; 0x30030868
  0.47%  0x3003064e: ff 40 10                          incl    16(%rax)                      
  2.87%  0x30030651: eb 6d                             jmp    109                            ; 0x300306c0
         0x30030653: 8b 70 04                          movl    4(%rax), %esi                 
         0x30030656: 2e 2e 2e 2e 81 e6 ff ff ff 01     andl    $33554431, %esi               
         0x30030660: 81 fe e9 06 00 00                 cmpl    $1769, %esi                   
         0x30030666: 0f 85 01 02 00 00                 jne    513                            ; 0x3003086d
         0x3003066c: ff 40 14                          incl    20(%rax)                      
         0x3003066f: eb 4f                             jmp    79                             ; 0x300306c0
         0x30030671: 8b 70 04                          movl    4(%rax), %esi                 
         0x30030674: 2e 2e 2e 2e 2e 2e 81 e6 ff ff     andl    $33554431, %esi               
         0x30030680: 81 fe e7 06 00 00                 cmpl    $1767, %esi                   
         0x30030686: 0f 85 e6 01 00 00                 jne    486                            ; 0x30030872
....................................................................................................
 42.77%  <total for region 2>

....[Hottest Regions]...............................................................................
 48.99%  [0x30030720:0x300307d2] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic[Falcon]
 42.77%  [0x30030583:0x30030686] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic[Falcon]
  3.14%  [0x30030686:0x30030726] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic[Falcon]
  0.70%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.50%  [0xffffffffa9c0f77a:0xffffffffa9c0f77c] in [unknown] ([kernel.kallsyms])
  0.22%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.20%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9f0711f:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9eb8dcf:0xffffffffa9eb8e14] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffaa28ead0:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f695f6:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f686c0:0xffffffffa9f6875f] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f07060:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ee5876:0xffffffffa9ee58a7] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eef44f:0xffffffffa9eef4ad] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28d0d0:0xffffffffaa28d127] in [unknown] ([kernel.kallsyms])
  2.12%  <...other 335 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 94.91%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic[Falcon]
  4.71%  [unknown] ([kernel.kallsyms])
  0.20%  [unknown] (libjvm.so)
  0.03%  [unknown] (libc-2.31.so)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  PMEM::account_enabled; PMEM::accounts (libaztall.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.01%  [unknown] ([vdso])
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  _dl_addr (libc-2.31.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.00%  syscall (libc-2.31.so)
  0.00%  __pthread_mutex_lock (libpthread-2.31.so)
  0.00%  az_get_elastic_tall (libaztall.so)
  0.00%  __errno_location (libpthread-2.31.so)
  0.00%  _IO_default_xsputn (libc-2.31.so)
  0.00%  MutexLocker::~MutexLocker (libaztall.so)
  0.00%  sprintf (libc-2.31.so)
  0.00%  <stub: putfield  181 putfield>
  0.04%  <...other 21 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 94.92%  <generated code>
  4.71%  <native code in ([kernel.kallsyms])>
  0.20%  <native code in (libjvm.so)>
  0.06%  <native code in (libaztall.so)>
  0.06%  <native code in (libc-2.31.so)>
  0.01%  <native code in ([vdso])>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (libazsys3.so)>
  0.00%  <native code in (libm-2.31.so)>
  0.00%  <native code in (libstdc++.so.6)>
  0.00%  <native code in (perf-147549.map)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_7)

# Run progress: 37.50% complete, ETA 00:18:39
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 12.988 ns/op
# Warmup Iteration   2: 12.704 ns/op
# Warmup Iteration   3: 12.697 ns/op
# Warmup Iteration   4: 12.708 ns/op
# Warmup Iteration   5: 12.711 ns/op
Iteration   1: 12.698 ns/op
Iteration   2: 12.697 ns/op
Iteration   3: 12.698 ns/op
Iteration   4: 12.699 ns/op
Iteration   5: 12.698 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  12.698 ±(99.9%) 0.003 ns/op [Average]
  (min, avg, max) = (12.697, 12.698, 12.699), stdev = 0.001
  CI (99.9%): [12.695, 12.701] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 136990 total address lines.
Perf output processed (skipped 59.440 seconds):
 Column 1: cycles (51574 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002fd6f:0x3002fee1] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic[Falcon]

         0x3002fd6f: ff d0                             callq    *%rax                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002fd71: 48 8b 06                          movq    (%rsi), %rax                  
         0x3002fd74: 49 85 c2                          testq    %rax, %r10                   
         0x3002fd77: 74 06                             je    6                               ; 0x3002fd7f
         0x3002fd79: 48 89 c7                          movq    %rax, %rdi                    
         0x3002fd7c: 41 ff d1                          callq    *%r9                         
         0x3002fd7f: 48 be 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rsi           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002fd89: 41 bb 0d 00 00 00                 movl    $13, %r11d                    
         0x3002fd8f: ff d6                             callq    *%rsi                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002fd91: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
  0.04%  0x3002fda0: 49 8d 40 01                       leaq    1(%r8), %rax                  
  0.03%  0x3002fda4: 48 83 c6 08                       addq    $8, %rsi                      
         0x3002fda8: 49 81 f8 7e 9d 00 00              cmpq    $40318, %r8                   
  2.95%  0x3002fdaf: 49 89 c0                          movq    %rax, %r8                     
  0.04%  0x3002fdb2: 0f 87 f8 00 00 00                 ja    248                             ; 0x3002feb0
  0.01%  0x3002fdb8: 4d 39 d8                          cmpq    %r11, %r8                     
         0x3002fdbb: 73 a2                             jae    -94                            ; 0x3002fd5f
         0x3002fdbd: 48 8b 06                          movq    (%rsi), %rax                  
  5.21%  0x3002fdc0: 49 85 c2                          testq    %rax, %r10                   
         0x3002fdc3: 0f 85 e9 00 00 00                 jne    233                            ; 0x3002feb2
  0.31%  0x3002fdc9: 42 0f be 7c 01 10                 movsbl    16(%rcx,%r8), %edi          
  0.12%  0x3002fdcf: 83 ff 06                          cmpl    $6, %edi                      
         0x3002fdd2: 0f 87 e5 00 00 00                 ja    229                             ; 0x3002febd
  0.01%  0x3002fdd8: ff 24 fb                          jmpq    *(%rbx,%rdi,8)                
  0.63%  0x3002fddb: 8b 78 04                          movl    4(%rax), %edi                 
  0.85%  0x3002fdde: 81 e7 ff ff ff 01                 andl    $33554431, %edi               
  0.41%  0x3002fde4: 81 ff e6 06 00 00                 cmpl    $1766, %edi                   
         0x3002fdea: 0f 85 c9 01 00 00                 jne    457                            ; 0x3002ffb9
  0.46%  0x3002fdf0: ff 40 08                          incl    8(%rax)                       
  1.55%  0x3002fdf3: eb ab                             jmp    -85                            ; 0x3002fda0
  3.90%  0x3002fdf5: 8b 78 04                          movl    4(%rax), %edi                 
  5.31%  0x3002fdf8: 2e 2e 81 e7 ff ff ff 01           andl    $33554431, %edi               
  0.41%  0x3002fe00: 81 ff ea 06 00 00                 cmpl    $1770, %edi                   
         0x3002fe06: 0f 85 2f 01 00 00                 jne    303                            ; 0x3002ff3b
  0.50%  0x3002fe0c: ff 40 18                          incl    24(%rax)                      
  3.89%  0x3002fe0f: eb 8f                             jmp    -113                           ; 0x3002fda0
  5.33%  0x3002fe11: 8b 78 04                          movl    4(%rax), %edi                 
  5.72%  0x3002fe14: 2e 2e 2e 2e 2e 2e 81 e7 ff ff     andl    $33554431, %edi               
  0.41%  0x3002fe20: 81 ff e8 06 00 00                 cmpl    $1768, %edi                   
         0x3002fe26: 0f 85 57 01 00 00                 jne    343                            ; 0x3002ff83
  0.40%  0x3002fe2c: ff 40 10                          incl    16(%rax)                      
  2.44%  0x3002fe2f: e9 6c ff ff ff                    jmp    -148                           ; 0x3002fda0
  3.72%  0x3002fe34: 8b 78 04                          movl    4(%rax), %edi                 
  5.29%  0x3002fe37: 2e 2e 2e 81 e7 ff ff ff 01        andl    $33554431, %edi               
  0.39%  0x3002fe40: 81 ff e9 06 00 00                 cmpl    $1769, %edi                   
         0x3002fe46: 0f 85 13 01 00 00                 jne    275                            ; 0x3002ff5f
  0.46%  0x3002fe4c: ff 40 14                          incl    20(%rax)                      
  3.22%  0x3002fe4f: e9 4c ff ff ff                    jmp    -180                           ; 0x3002fda0
  5.74%  0x3002fe54: 8b 78 04                          movl    4(%rax), %edi                 
  5.83%  0x3002fe57: 2e 2e 2e 81 e7 ff ff ff 01        andl    $33554431, %edi               
  0.40%  0x3002fe60: 81 ff e7 06 00 00                 cmpl    $1767, %edi                   
         0x3002fe66: 0f 85 3b 01 00 00                 jne    315                            ; 0x3002ffa7
  0.41%  0x3002fe6c: ff 40 0c                          incl    12(%rax)                      
  2.16%  0x3002fe6f: e9 2c ff ff ff                    jmp    -212                           ; 0x3002fda0
  3.80%  0x3002fe74: 8b 78 04                          movl    4(%rax), %edi                 
  4.82%  0x3002fe77: 2e 2e 2e 81 e7 ff ff ff 01        andl    $33554431, %edi               
  0.49%  0x3002fe80: 81 ff eb 06 00 00                 cmpl    $1771, %edi                   
         0x3002fe86: 75 59                             jne    89                             ; 0x3002fee1
  0.40%  0x3002fe88: ff 40 1c                          incl    28(%rax)                      
  3.46%  0x3002fe8b: e9 10 ff ff ff                    jmp    -240                           ; 0x3002fda0
  4.89%  0x3002fe90: 8b 78 04                          movl    4(%rax), %edi                 
  4.96%  0x3002fe93: 2e 2e 2e 2e 2e 2e 2e 81 e7 ff     andl    $33554431, %edi               
  0.42%  0x3002fea0: 81 ff ec 06 00 00                 cmpl    $1772, %edi                   
         0x3002fea6: 75 5d                             jne    93                             ; 0x3002ff05
  0.43%  0x3002fea8: ff 40 20                          incl    32(%rax)                      
  3.46%  0x3002feab: e9 f0 fe ff ff                    jmp    -272                           ; 0x3002fda0
         0x3002feb0: 5b                                popq    %rbx                          
  0.00%  0x3002feb1: c3                                retq                                  
         0x3002feb2: 48 89 c7                          movq    %rax, %rdi                    
         0x3002feb5: 41 ff d1                          callq    *%r9                         
         0x3002feb8: e9 0c ff ff ff                    jmp    -244                           ; 0x3002fdc9
         0x3002febd: 48 be 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rsi           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002fec7: 41 bb 2b 00 00 00                 movl    $43, %r11d                    
         0x3002fecd: ff d6                             callq    *%rsi                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002fecf: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002fed9: 41 bb 0b 00 00 00                 movl    $11, %r11d                    
         0x3002fedf: ff d0                             callq    *%rax                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002fee1: 48 be 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rsi           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
....................................................................................................
 95.66%  <total for region 1>

....[Hottest Regions]...............................................................................
 95.66%  [0x3002fd6f:0x3002fee1] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic[Falcon]
  0.37%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.31%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.20%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eb8dcf:0xffffffffa9eb8de6] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f0711f:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f69649:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0800:0xffffffffa9ed0889] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0740:0xffffffffa9ed07c7] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eef467:0xffffffffa9eef4ad] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ee5876:0xffffffffa9ee587e] in [unknown] ([kernel.kallsyms])
  0.06%  [0x7fa77a9005f8:0x7fa77a90061d] in [unknown] (libjvm.so)
  0.06%  [0xffffffffa9f070ab:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9eee5d0:0xffffffffa9eee62e] in [unknown] ([kernel.kallsyms])
  2.12%  <...other 332 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 95.67%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic[Falcon]
  3.91%  [unknown] ([kernel.kallsyms])
  0.25%  [unknown] (libjvm.so)
  0.02%  [unknown] (libc-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  __pthread_mutex_unlock (libpthread-2.31.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  PMEM::account_enabled (libaztall.so)
  0.01%  thread_stack_region_start (libazsys3.so)
  0.01%  <stub: method entry point (kind = zerolocals)>
  0.01%  VMEM_SpaceManager::uses_cache_for_account (libaztall.so)
  0.01%  [unknown] ([vdso])
  0.00%  az_get_elastic (libazsys3.so)
  0.00%  PMEM::account_enabled@plt (libaztall.so)
  0.00%  __pthread_mutex_lock (libpthread-2.31.so)
  0.00%  az_get_elastic_tall (libaztall.so)
  0.00%  VMEM::get_account_usage (libaztall.so)
  0.03%  <...other 16 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.68%  <generated code>
  3.91%  <native code in ([kernel.kallsyms])>
  0.25%  <native code in (libjvm.so)>
  0.05%  <native code in (libaztall.so)>
  0.05%  <native code in (libc-2.31.so)>
  0.02%  <native code in (libpthread-2.31.so)>
  0.02%  <native code in (libazsys3.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in ([vdso])>
  0.00%  <native code in (perf-147687.map)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_8)

# Run progress: 43.75% complete, ETA 00:16:49
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 12.975 ns/op
# Warmup Iteration   2: 12.860 ns/op
# Warmup Iteration   3: 12.894 ns/op
# Warmup Iteration   4: 12.889 ns/op
# Warmup Iteration   5: 12.897 ns/op
Iteration   1: 12.887 ns/op
Iteration   2: 12.888 ns/op
Iteration   3: 12.879 ns/op
Iteration   4: 12.896 ns/op
Iteration   5: 12.885 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  12.887 ±(99.9%) 0.024 ns/op [Average]
  (min, avg, max) = (12.879, 12.887, 12.896), stdev = 0.006
  CI (99.9%): [12.863, 12.911] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 136606 total address lines.
Perf output processed (skipped 56.564 seconds):
 Column 1: cycles (51431 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3003016f:0x300302f9] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic[Falcon]

         0x3003016f: ff d0                             callq    *%rax                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x30030171: 48 8b 06                          movq    (%rsi), %rax                  
         0x30030174: 49 85 c2                          testq    %rax, %r10                   
         0x30030177: 74 06                             je    6                               ; 0x3003017f
         0x30030179: 48 89 c7                          movq    %rax, %rdi                    
         0x3003017c: 41 ff d1                          callq    *%r9                         
         0x3003017f: 48 be 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rsi           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x30030189: 41 bb 0d 00 00 00                 movl    $13, %r11d                    
         0x3003018f: ff d6                             callq    *%rsi                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x30030191: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
  0.05%  0x300301a0: 49 8d 40 01                       leaq    1(%r8), %rax                  
  0.01%  0x300301a4: 48 83 c6 08                       addq    $8, %rsi                      
         0x300301a8: 49 81 f8 7e 9d 00 00              cmpq    $40318, %r8                   
  2.78%  0x300301af: 49 89 c0                          movq    %rax, %r8                     
  0.03%  0x300301b2: 0f 87 18 01 00 00                 ja    280                             ; 0x300302d0
  0.01%  0x300301b8: 4d 39 d8                          cmpq    %r11, %r8                     
         0x300301bb: 73 a2                             jae    -94                            ; 0x3003015f
         0x300301bd: 48 8b 06                          movq    (%rsi), %rax                  
  3.46%  0x300301c0: 49 85 c2                          testq    %rax, %r10                   
         0x300301c3: 0f 85 09 01 00 00                 jne    265                            ; 0x300302d2
  0.09%  0x300301c9: 42 0f be 7c 01 10                 movsbl    16(%rcx,%r8), %edi          
  0.11%  0x300301cf: 83 ff 07                          cmpl    $7, %edi                      
         0x300301d2: 0f 87 05 01 00 00                 ja    261                             ; 0x300302dd
  0.01%  0x300301d8: ff 24 fb                          jmpq    *(%rbx,%rdi,8)                
  0.51%  0x300301db: 8b 78 04                          movl    4(%rax), %edi                 
  0.24%  0x300301de: 81 e7 ff ff ff 01                 andl    $33554431, %edi               
  0.32%  0x300301e4: 81 ff e6 06 00 00                 cmpl    $1766, %edi                   
         0x300301ea: 0f 85 fb 01 00 00                 jne    507                            ; 0x300303eb
  0.34%  0x300301f0: ff 40 08                          incl    8(%rax)                       
  0.59%  0x300301f3: eb ab                             jmp    -85                            ; 0x300301a0
  3.24%  0x300301f5: 8b 78 04                          movl    4(%rax), %edi                 
  3.49%  0x300301f8: 2e 2e 81 e7 ff ff ff 01           andl    $33554431, %edi               
  0.30%  0x30030200: 81 ff ea 06 00 00                 cmpl    $1770, %edi                   
         0x30030206: 0f 85 4f 01 00 00                 jne    335                            ; 0x3003035b
  0.41%  0x3003020c: ff 40 18                          incl    24(%rax)                      
  5.22%  0x3003020f: eb 8f                             jmp    -113                           ; 0x300301a0
  4.05%  0x30030211: 8b 78 04                          movl    4(%rax), %edi                 
  3.39%  0x30030214: 2e 2e 2e 2e 2e 2e 81 e7 ff ff     andl    $33554431, %edi               
  0.37%  0x30030220: 81 ff e8 06 00 00                 cmpl    $1768, %edi                   
         0x30030226: 0f 85 77 01 00 00                 jne    375                            ; 0x300303a3
  0.34%  0x3003022c: ff 40 10                          incl    16(%rax)                      
  1.46%  0x3003022f: e9 6c ff ff ff                    jmp    -148                           ; 0x300301a0
  5.10%  0x30030234: 8b 78 04                          movl    4(%rax), %edi                 
  6.53%  0x30030237: 2e 2e 2e 81 e7 ff ff ff 01        andl    $33554431, %edi               
  0.35%  0x30030240: 81 ff e9 06 00 00                 cmpl    $1769, %edi                   
         0x30030246: 0f 85 45 01 00 00                 jne    325                            ; 0x30030391
  0.40%  0x3003024c: ff 40 14                          incl    20(%rax)                      
  2.14%  0x3003024f: e9 4c ff ff ff                    jmp    -180                           ; 0x300301a0
  3.52%  0x30030254: 8b 78 04                          movl    4(%rax), %edi                 
  3.30%  0x30030257: 2e 2e 2e 81 e7 ff ff ff 01        andl    $33554431, %edi               
  0.29%  0x30030260: 81 ff ed 06 00 00                 cmpl    $1773, %edi                   
         0x30030266: 0f 85 a7 00 00 00                 jne    167                            ; 0x30030313
  0.35%  0x3003026c: ff 40 24                          incl    36(%rax)                      
  4.41%  0x3003026f: e9 2c ff ff ff                    jmp    -212                           ; 0x300301a0
  4.73%  0x30030274: 8b 78 04                          movl    4(%rax), %edi                 
  3.74%  0x30030277: 2e 2e 2e 81 e7 ff ff ff 01        andl    $33554431, %edi               
  0.35%  0x30030280: 81 ff e7 06 00 00                 cmpl    $1767, %edi                   
         0x30030286: 0f 85 4d 01 00 00                 jne    333                            ; 0x300303d9
  0.52%  0x3003028c: ff 40 0c                          incl    12(%rax)                      
  4.95%  0x3003028f: e9 0c ff ff ff                    jmp    -244                           ; 0x300301a0
  3.96%  0x30030294: 8b 78 04                          movl    4(%rax), %edi                 
  3.40%  0x30030297: 2e 2e 2e 81 e7 ff ff ff 01        andl    $33554431, %edi               
  0.34%  0x300302a0: 81 ff eb 06 00 00                 cmpl    $1771, %edi                   
         0x300302a6: 0f 85 8b 00 00 00                 jne    139                            ; 0x30030337
  0.36%  0x300302ac: ff 40 1c                          incl    28(%rax)                      
  1.41%  0x300302af: e9 ec fe ff ff                    jmp    -276                           ; 0x300301a0
  5.84%  0x300302b4: 8b 78 04                          movl    4(%rax), %edi                 
  6.67%  0x300302b7: 2e 2e 2e 81 e7 ff ff ff 01        andl    $33554431, %edi               
  0.36%  0x300302c0: 81 ff ec 06 00 00                 cmpl    $1772, %edi                   
         0x300302c6: 75 5d                             jne    93                             ; 0x30030325
  0.37%  0x300302c8: ff 40 20                          incl    32(%rax)                      
  1.53%  0x300302cb: e9 d0 fe ff ff                    jmp    -304                           ; 0x300301a0
         0x300302d0: 5b                                popq    %rbx                          
         0x300302d1: c3                                retq                                  
         0x300302d2: 48 89 c7                          movq    %rax, %rdi                    
         0x300302d5: 41 ff d1                          callq    *%r9                         
         0x300302d8: e9 ec fe ff ff                    jmp    -276                           ; 0x300301c9
         0x300302dd: 48 be 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rsi           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x300302e7: 41 bb 2b 00 00 00                 movl    $43, %r11d                    
         0x300302ed: ff d6                             callq    *%rsi                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x300302ef: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x300302f9: 41 bb 0b 00 00 00                 movl    $11, %r11d                    
....................................................................................................
 95.71%  <total for region 1>

....[Hottest Regions]...............................................................................
 95.71%  [0x3003016f:0x300302f9] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic[Falcon]
  0.25%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.21%  [0xffffffffa9c94c86:0xffffffffa9c94c86] in [unknown] ([kernel.kallsyms])
  0.19%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9eb8dcf:0xffffffffa9eb8de6] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f695f0:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9f0711f:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9ed0800:0xffffffffa9ed0889] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ee587e:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.06%  [0x7fa575af95f8:0x7fa575af963a] in [unknown] (libjvm.so)
  0.06%  [0xffffffffa9d5b2e0:0xffffffffa9d5b2e9] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0740:0xffffffffa9ed0799] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eee5d0:0xffffffffa9eee62f] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9f63240:0xffffffffa9f63270] in [unknown] ([kernel.kallsyms])
  2.17%  <...other 355 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 95.72%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic[Falcon]
  3.97%  [unknown] ([kernel.kallsyms])
  0.17%  [unknown] (libjvm.so)
  0.02%  [unknown] ([vdso])
  0.01%  syscall (libc-2.31.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  PMEM::account_enabled; PMEM::accounts (libaztall.so)
  0.00%  az_zmd_api_version_tall (libaztall.so)
  0.00%  _IO_default_xsputn (libc-2.31.so)
  0.00%  _dl_addr (libc-2.31.so)
  0.00%  memcpy (libc-2.31.so)
  0.00%  _IO_padn (libc-2.31.so)
  0.00%  is_thread_initialized (libazsys3.so)
  0.00%  az_get_elastic (libazsys3.so)
  0.00%  <stub: ifne  154 ifne>
  0.00%  <stub: if_icmpne  160 if_icmpne>
  0.03%  <...other 17 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.74%  <generated code>
  3.97%  <native code in ([kernel.kallsyms])>
  0.17%  <native code in (libjvm.so)>
  0.05%  <native code in (libc-2.31.so)>
  0.02%  <native code in (libaztall.so)>
  0.02%  <native code in ([vdso])>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libazsys3.so)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MONOMORPHIC)

# Run progress: 50.00% complete, ETA 00:14:56
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.774 ns/op
# Warmup Iteration   2: 1.631 ns/op
# Warmup Iteration   3: 1.631 ns/op
# Warmup Iteration   4: 1.639 ns/op
# Warmup Iteration   5: 1.638 ns/op
Iteration   1: 1.638 ns/op
Iteration   2: 1.632 ns/op
Iteration   3: 1.633 ns/op
Iteration   4: 1.632 ns/op
Iteration   5: 1.632 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  1.633 ±(99.9%) 0.010 ns/op [Average]
  (min, avg, max) = (1.632, 1.633, 1.638), stdev = 0.003
  CI (99.9%): [1.623, 1.644] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call:·asm":
PrintAssembly processed: 144096 total address lines.
Perf output processed (skipped 57.172 seconds):
 Column 1: cycles (51759 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x300312a0:0x30031365] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call[Falcon]

         6.570:                  @ 1   java.lang.Object::&lt;init&gt; (1 bytes)   cost=always, reason=always inline attribute [intrinsic]
         6.593:  243         3 installed at 0x300306a0 with size 0x50a. com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::setup ()V (tid 147977) (kid 1447 pkid/prev 1423/NA) (mid 1481732 pmid 18434) (bytes 808) (generation 0) (lvl O2) (score 0) (score_updated 179ms; orig 0; promoted 0) (rank 0, time-between-promotions 0ms) (wait 47ms) (compile 88ms/131ms)
         6.496:  250    %    3 inlining into com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call ()V @ 13 (tid 147975) (kid 1447 pkid/prev 1423/NA) (mid 1481733 pmid 18435) (bytes 38) (generation 0) (lvl O0) (score -1) (score_updated 0ms; orig 0; promoted 2) (rank 0, time-between-promotions 0ms) (wait 0ms)
         6.581:              @ 27   com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute (12 bytes)   cost=-20, threshold=948, frequency=16383.562538
         6.593:  250    %    3 installed at 0x30030ca0 with size 0x3f6. com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call ()V @ 13 (tid 147975) (kid 1447 pkid/prev 1423/NA) (mid 1481733 pmid 18435) (bytes 38) (generation 0) (lvl O0) (score -1) (score_updated 4ms; orig 0; promoted 130) (rank 0, time-between-promotions 0ms) (wait 0ms) (compile 69ms/96ms)
           # {method}{0x20002658980} virtual_call[Falcon] ()V in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark
         Decoding CodeBlob 0x30031200
         0x300312a0: eb f9                             pushq    %rbx                         
         0x300312a2: 48 89 fe                          movq    %rdi, %rsi                    
         0x300312a5: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  0.01%  0x300312ae: 0f 85 16 01 00 00                 jne    278                            ; 0x300313ca
  0.00%  0x300312b4: 48 8b 4e 08                       movq    8(%rsi), %rcx                 
  0.00%  0x300312b8: b8 48 00 f8 2f                    movl    $804782152, %eax              ; 804782152 = clearable_gc_phase_trap_mask
         0x300312bd: 48 8b 10                          movq    (%rax), %rdx                  
  0.00%  0x300312c0: 48 85 ca                          testq    %rcx, %rdx                   
         0x300312c3: 0f 85 12 01 00 00                 jne    274                            ; 0x300313db
  0.00%  0x300312c9: 44 8b 41 08                       movl    8(%rcx), %r8d                 
  0.03%  0x300312cd: 45 85 c0                          testl    %r8d, %r8d                   
         0x300312d0: 0f 84 9b 00 00 00                 je    155                             ; 0x30031371
  0.00%  0x300312d6: 41 83 f8 04                       cmpl    $4, %r8d                      
         0x300312da: 73 06                             jae    6                              ; 0x300312e2
         0x300312dc: 2e 45 31 c9                       xorl    %r9d, %r9d                    
         0x300312e0: eb 63                             jmp    99                             ; 0x30031345
         0x300312e2: 4d 89 c2                          movq    %r8, %r10                     
         0x300312e5: 49 c1 e2 03                       shlq    $3, %r10                      
         0x300312e9: 49 83 e2 e0                       andq    $-32, %r10                    
         0x300312ed: 45 31 db                          xorl    %r11d, %r11d                  
  0.00%  0x300312f0: 48 bb c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rbx           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x300312fa: 45 31 c9                          xorl    %r9d, %r9d                    
         0x300312fd: 0f 1f 00                          nopl    (%rax)                        
  1.06%  0x30031300: 4a 8b 44 19 10                    movq    16(%rcx,%r11), %rax           
  2.54%  0x30031305: 48 85 c2                          testq    %rax, %rdx                   
         0x30031308: 75 69                             jne    105                            ; 0x30031373
  1.13%  0x3003130a: ff 40 08                          incl    8(%rax)                       
 24.76%  0x3003130d: 4a 8b 44 19 18                    movq    24(%rcx,%r11), %rax           
  0.81%  0x30031312: 48 85 c2                          testq    %rax, %rdx                   
         0x30031315: 75 6b                             jne    107                            ; 0x30031382
  0.86%  0x30031317: ff 40 08                          incl    8(%rax)                       
 17.09%  0x3003131a: 2e 4a 8b 44 19 20                 movq    %cs:32(%rcx,%r11), %rax       
  0.77%  0x30031320: 48 85 c2                          testq    %rax, %rdx                   
         0x30031323: 75 6c                             jne    108                            ; 0x30031391
  0.74%  0x30031325: ff 40 08                          incl    8(%rax)                       
 17.25%  0x30031328: 4a 8b 44 19 28                    movq    40(%rcx,%r11), %rax           
  1.08%  0x3003132d: 48 85 c2                          testq    %rax, %rdx                   
         0x30031330: 75 70                             jne    112                            ; 0x300313a2
  1.59%  0x30031332: ff 40 08                          incl    8(%rax)                       
 23.44%  0x30031335: 49 83 c1 04                       addq    $4, %r9                       
  1.03%  0x30031339: 49 81 c3 20 00 00 00              addq    $32, %r11                     
  1.16%  0x30031340: 4d 39 da                          cmpq    %r11, %r10                    
         0x30031343: 75 bb                             jne    -69                            ; 0x30031300
         0x30031345: 41 83 e0 03                       andl    $3, %r8d                      
         0x30031349: 74 26                             je    38                              ; 0x30031371
         0x3003134b: 4a 8d 34 c9                       leaq    (%rcx,%r9,8), %rsi            
         0x3003134f: 48 83 c6 10                       addq    $16, %rsi                     
         0x30031353: 48 b9 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rcx           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3003135d: 48 8b 06                          movq    (%rsi), %rax                  
         0x30031360: 48 85 c2                          testq    %rax, %rdx                   
         0x30031363: 75 5e                             jne    94                             ; 0x300313c3
         0x30031365: ff 40 08                          incl    8(%rax)                       
....................................................................................................
 95.35%  <total for region 1>

....[Hottest Regions]...............................................................................
 95.35%  [0x300312a0:0x30031365] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call[Falcon]
  0.40%  [0xffffffffa9c94c80:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.24%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.19%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9f0711c:0xffffffffa9f07160] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eb93b5:0xffffffffa9eb9423] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9eee5d0:0xffffffffa9eee62f] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f686c0:0xffffffffa9f6875f] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f69674:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f07060:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffaa28ead0:0xffffffffaa28eb16] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0800:0xffffffffa9ed0873] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0740:0xffffffffa9ed0797] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ee587e:0xffffffffa9ee587e] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  2.29%  <...other 424 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 95.36%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call[Falcon]
  4.13%  [unknown] ([kernel.kallsyms])
  0.19%  [unknown] (liborca.so.0.0.0.0)
  0.18%  [unknown] (libjvm.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  _dl_addr (libc-2.31.so)
  0.01%  az_pmem_get_account_usage_tall; az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub[Falcon]
  0.01%  PMEM::account_enabled (libaztall.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.01%  [unknown] ([vdso])
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  syscall (libc-2.31.so)
  0.00%  __pthread_mutex_lock (libpthread-2.31.so)
  0.00%  __errno_location (libpthread-2.31.so)
  0.00%  _IO_default_xsputn (libc-2.31.so)
  0.00%  thread_stack_region_start@plt (libazsys3.so)
  0.00%  memcpy (libc-2.31.so)
  0.04%  <...other 19 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.38%  <generated code>
  4.13%  <native code in ([kernel.kallsyms])>
  0.19%  <native code in (liborca.so.0.0.0.0)>
  0.18%  <native code in (libjvm.so)>
  0.04%  <native code in (libc-2.31.so)>
  0.03%  <native code in (libaztall.so)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in ([vdso])>
  0.00%  <native code in (ld-2.31.so)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = BIMORPHIC)

# Run progress: 56.25% complete, ETA 00:13:04
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.018 ns/op
# Warmup Iteration   2: 1.991 ns/op
# Warmup Iteration   3: 1.991 ns/op
# Warmup Iteration   4: 1.992 ns/op
# Warmup Iteration   5: 1.991 ns/op
Iteration   1: 1.992 ns/op
Iteration   2: 1.992 ns/op
Iteration   3: 1.990 ns/op
Iteration   4: 1.991 ns/op
Iteration   5: 1.992 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  1.991 ±(99.9%) 0.003 ns/op [Average]
  (min, avg, max) = (1.990, 1.991, 1.992), stdev = 0.001
  CI (99.9%): [1.988, 1.995] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call:·asm":
PrintAssembly processed: 143780 total address lines.
Perf output processed (skipped 56.317 seconds):
 Column 1: cycles (51500 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x300306f3:0x30030783] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call[Falcon]

         0x300306f3: 48 83 c6 08                       addq    $8, %rsi                      
         0x300306f7: 48 b8 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rax           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x30030701: 48 89 cf                          movq    %rcx, %rdi                    
         0x30030704: ff d0                             callq    *%rax                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x30030706: 48 89 c1                          movq    %rax, %rcx                    
         0x30030709: eb ba                             jmp    -70                            ; 0x300306c5
         0x3003070b: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x30030715: 41 bb 0b 00 00 00                 movl    $11, %r11d                    
         0x3003071b: ff d0                             callq    *%rax                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3003071d: 0f 1f 00                          nopl    (%rax)                        
  3.13%  0x30030720: ff 40 0c                          incl    12(%rax)                      
 24.11%  0x30030723: 49 ff c1                          incq    %r9                           
  1.91%  0x30030726: 48 83 c6 08                       addq    $8, %rsi                      
         0x3003072a: 4d 39 c1                          cmpq    %r8, %r9                      
         0x3003072d: 73 26                             jae    38                             ; 0x30030755
  7.28%  0x3003072f: 48 8b 06                          movq    (%rsi), %rax                  
 11.99%  0x30030732: 48 85 c2                          testq    %rax, %rdx                   
         0x30030735: 75 20                             jne    32                             ; 0x30030757
  2.08%  0x30030737: 8b 78 04                          movl    4(%rax), %edi                 
 16.77%  0x3003073a: 81 e7 ff ff ff 01                 andl    $33554431, %edi               
  8.68%  0x30030740: 81 ff e7 06 00 00                 cmpl    $1767, %edi                   
         0x30030746: 74 d8                             je    -40                             ; 0x30030720
  7.79%  0x30030748: 81 ff e6 06 00 00                 cmpl    $1766, %edi                   
         0x3003074e: 75 21                             jne    33                             ; 0x30030771
  2.57%  0x30030750: ff 40 08                          incl    8(%rax)                       
  9.29%  0x30030753: eb ce                             jmp    -50                            ; 0x30030723
         0x30030755: 58                                popq    %rax                          
  0.01%  0x30030756: c3                                retq                                  
         0x30030757: 48 89 c7                          movq    %rax, %rdi                    
         0x3003075a: 41 ff d2                          callq    *%r10                        
         0x3003075d: eb d8                             jmp    -40                            ; 0x30030737
         0x3003075f: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x30030769: 41 bb 0b 00 00 00                 movl    $11, %r11d                    
         0x3003076f: ff d0                             callq    *%rax                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x30030771: 48 ba 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rdx           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3003077b: 41 bb 17 00 00 00                 movl    $23, %r11d                    
         0x30030781: ff d2                             callq    *%rdx                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x30030783: 00 00                             addb    %al, (%rax)                   
....................................................................................................
 95.61%  <total for region 1>

....[Hottest Regions]...............................................................................
 95.61%  [0x300306f3:0x30030783] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call[Falcon]
  0.23%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.18%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.18%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9f0711c:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9f211f0:0xffffffffa9f21223] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eef5ae:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eb93b5:0xffffffffa9eb9423] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9eff400:0xffffffffa9eff43f] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9ed0800:0xffffffffa9ed0889] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f695f5:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f07060:0xffffffffa9f070cd] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffaa28ead0:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ee587e:0xffffffffa9ee58a7] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eee5d0:0xffffffffa9eee62f] in [unknown] ([kernel.kallsyms])
  0.06%  [0x7f32a885c5f8:0x7f32a885c621] in [unknown] (libjvm.so)
  2.20%  <...other 431 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 95.64%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call[Falcon]
  3.88%  [unknown] ([kernel.kallsyms])
  0.19%  [unknown] (liborca.so.0.0.0.0)
  0.18%  [unknown] (libjvm.so)
  0.03%  [unknown] (libc-2.31.so)
  0.01%  thread_stack_region_start (libazsys3.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  _IO_default_xsputn (libc-2.31.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.01%  [unknown] ([vdso])
  0.00%  memcpy (libc-2.31.so)
  0.00%  PMEM::account_enabled; PMEM::accounts (libaztall.so)
  0.00%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub[Falcon]
  0.00%  PMEM::get_account_usage (libaztall.so)
  0.00%  sprintf (libc-2.31.so)
  0.00%  java.lang.Number::<init>[C1]
  0.00%  <stub: irem  112 irem>
  0.00%  <stub: fast_aload_0  220 fast_aload_0>
  0.00%  <stub: fast_aaccess_0  222 fast_aaccess_0>
  0.02%  <...other 10 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.66%  <generated code>
  3.88%  <native code in ([kernel.kallsyms])>
  0.19%  <native code in (liborca.so.0.0.0.0)>
  0.18%  <native code in (libjvm.so)>
  0.05%  <native code in (libc-2.31.so)>
  0.02%  <native code in (libaztall.so)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in ([vdso])>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MEGAMORPHIC_3)

# Run progress: 62.50% complete, ETA 00:11:11
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.120 ns/op
# Warmup Iteration   2: 2.104 ns/op
# Warmup Iteration   3: 2.087 ns/op
# Warmup Iteration   4: 2.086 ns/op
# Warmup Iteration   5: 2.087 ns/op
Iteration   1: 2.086 ns/op
Iteration   2: 2.088 ns/op
Iteration   3: 2.087 ns/op
Iteration   4: 2.087 ns/op
Iteration   5: 2.087 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  2.087 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (2.086, 2.087, 2.088), stdev = 0.001
  CI (99.9%): [2.085, 2.089] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call:·asm":
PrintAssembly processed: 135851 total address lines.
Perf output processed (skipped 56.265 seconds):
 Column 1: cycles (51563 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002faf3:0x3002fb9b] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call[Falcon]

         0x3002faf3: 48 83 c6 08                       addq    $8, %rsi                      
         0x3002faf7: 48 b8 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rax           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002fb01: 48 89 cf                          movq    %rcx, %rdi                    
         0x3002fb04: ff d0                             callq    *%rax                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002fb06: 48 89 c1                          movq    %rax, %rcx                    
         0x3002fb09: eb ba                             jmp    -70                            ; 0x3002fac5
         0x3002fb0b: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002fb15: 41 bb 0b 00 00 00                 movl    $11, %r11d                    
         0x3002fb1b: ff d0                             callq    *%rax                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002fb1d: 0f 1f 00                          nopl    (%rax)                        
  1.61%  0x3002fb20: ff 40 10                          incl    16(%rax)                      
 13.23%  0x3002fb23: 49 ff c1                          incq    %r9                           
  2.95%  0x3002fb26: 48 83 c6 08                       addq    $8, %rsi                      
  4.69%  0x3002fb2a: 4d 39 c1                          cmpq    %r8, %r9                      
         0x3002fb2d: 73 3e                             jae    62                             ; 0x3002fb6d
  4.79%  0x3002fb2f: 48 8b 06                          movq    (%rsi), %rax                  
  7.58%  0x3002fb32: 48 85 c2                          testq    %rax, %rdx                   
         0x3002fb35: 75 38                             jne    56                             ; 0x3002fb6f
  3.10%  0x3002fb37: 8b 78 04                          movl    4(%rax), %edi                 
 23.91%  0x3002fb3a: 81 e7 ff ff ff 01                 andl    $33554431, %edi               
  6.90%  0x3002fb40: 81 ff e8 06 00 00                 cmpl    $1768, %edi                   
         0x3002fb46: 74 d8                             je    -40                             ; 0x3002fb20
  6.40%  0x3002fb48: 81 ff e7 06 00 00                 cmpl    $1767, %edi                   
         0x3002fb4e: 75 10                             jne    16                             ; 0x3002fb60
  0.74%  0x3002fb50: ff 40 0c                          incl    12(%rax)                      
  9.58%  0x3002fb53: eb ce                             jmp    -50                            ; 0x3002fb23
         0x3002fb55: 66 66 2e 0f 1f 84 00 00 00 00     nopw    %cs:(%rax,%rax)               
  0.97%  0x3002fb60: 81 ff e6 06 00 00                 cmpl    $1766, %edi                   
         0x3002fb66: 75 21                             jne    33                             ; 0x3002fb89
  1.97%  0x3002fb68: ff 40 08                          incl    8(%rax)                       
  7.29%  0x3002fb6b: eb b6                             jmp    -74                            ; 0x3002fb23
         0x3002fb6d: 58                                popq    %rax                          
  0.01%  0x3002fb6e: c3                                retq                                  
         0x3002fb6f: 48 89 c7                          movq    %rax, %rdi                    
         0x3002fb72: 41 ff d2                          callq    *%r10                        
         0x3002fb75: eb c0                             jmp    -64                            ; 0x3002fb37
         0x3002fb77: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002fb81: 41 bb 0b 00 00 00                 movl    $11, %r11d                    
         0x3002fb87: ff d0                             callq    *%rax                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002fb89: 48 ba 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rdx           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002fb93: 41 bb 18 00 00 00                 movl    $24, %r11d                    
         0x3002fb99: ff d2                             callq    *%rdx                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002fb9b: 00 00                             addb    %al, (%rax)                   
....................................................................................................
 95.72%  <total for region 1>

....[Hottest Regions]...............................................................................
 95.72%  [0x3002faf3:0x3002fb9b] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call[Falcon]
  0.26%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.23%  [0xffffffffa9ecfb66:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9eb8dcf:0xffffffffa9eb8de6] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f0711f:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f07060:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f695f6:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eff400:0xffffffffa9eff43c] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f686c0:0xffffffffa9f6875f] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28ead0:0xffffffffaa28eb19] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0740:0xffffffffa9ed07b2] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0800:0xffffffffa9ed0861] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9da97a0:0xffffffffa9da97ff] in [unknown] ([kernel.kallsyms])
  0.06%  [0x7fde8f64b5f8:0x7fde8f64b621] in [unknown] (libjvm.so)
  0.06%  [0xffffffffa9eaca37:0xffffffffa9eaca69] in [unknown] ([kernel.kallsyms])
  2.18%  <...other 414 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 95.74%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call[Falcon]
  3.68%  [unknown] ([kernel.kallsyms])
  0.27%  [unknown] (liborca.so.0.0.0.0)
  0.19%  [unknown] (libjvm.so)
  0.03%  [unknown] (libc-2.31.so)
  0.02%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub[Falcon]
  0.01%  _IO_default_xsputn (libc-2.31.so)
  0.00%  [unknown] (libstdc++.so.6)
  0.00%  VMEM::get_account_usage (libaztall.so)
  0.00%  malloc (libc-2.31.so)
  0.00%  <stub: dup  89 dup>
  0.00%  _dl_addr (libc-2.31.so)
  0.00%  is_thread_initialized (libazsys3.so)
  0.00%  az_zmd_api_version_tall (libaztall.so)
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  <stub: lreturn  173 lreturn>
  0.00%  jdk.internal.reflect.ClassFileAssembler::emitByte[C1]
  0.00%  syscall (libc-2.31.so)
  0.00%  <stub: bastore  84 bastore>
  0.00%  _IO_fwrite (libc-2.31.so)
  0.03%  <...other 14 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.77%  <generated code>
  3.68%  <native code in ([kernel.kallsyms])>
  0.27%  <native code in (liborca.so.0.0.0.0)>
  0.19%  <native code in (libjvm.so)>
  0.06%  <native code in (libc-2.31.so)>
  0.01%  <native code in (libaztall.so)>
  0.01%  <native code in (libazsys3.so)>
  0.00%  <native code in (libstdc++.so.6)>
  0.00%  <native code in (ld-2.31.so)>
  0.00%  <native code in (libpthread-2.31.so)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MEGAMORPHIC_4)

# Run progress: 68.75% complete, ETA 00:09:18
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 13.805 ns/op
# Warmup Iteration   2: 13.727 ns/op
# Warmup Iteration   3: 13.727 ns/op
# Warmup Iteration   4: 13.727 ns/op
# Warmup Iteration   5: 13.726 ns/op
Iteration   1: 13.727 ns/op
Iteration   2: 13.727 ns/op
Iteration   3: 13.725 ns/op
Iteration   4: 13.726 ns/op
Iteration   5: 13.727 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  13.726 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (13.725, 13.726, 13.727), stdev = 0.001
  CI (99.9%): [13.724, 13.729] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call:·asm":
PrintAssembly processed: 136386 total address lines.
Perf output processed (skipped 56.250 seconds):
 Column 1: cycles (51625 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f70b:0x3002f7cd] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call[Falcon]

         0x3002f70b: 48 83 c6 08                       addq    $8, %rsi                      
         0x3002f70f: 48 b8 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rax           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f719: 48 89 df                          movq    %rbx, %rdi                    
         0x3002f71c: ff d0                             callq    *%rax                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f71e: 48 89 c3                          movq    %rax, %rbx                    
         0x3002f721: eb a8                             jmp    -88                            ; 0x3002f6cb
         0x3002f723: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f72d: 41 bb 0b 00 00 00                 movl    $11, %r11d                    
         0x3002f733: ff d0                             callq    *%rax                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f735: 66 66 2e 0f 1f 84 00 00 00 00     nopw    %cs:(%rax,%rax)               
 12.02%  0x3002f740: ff 41 10                          incl    16(%rcx)                      
  8.64%  0x3002f743: 49 ff c4                          incq    %r12                          
         0x3002f746: 49 83 c7 08                       addq    $8, %r15                      
         0x3002f74a: 4d 39 f4                          cmpq    %r14, %r12                    
         0x3002f74d: 73 56                             jae    86                             ; 0x3002f7a5
  2.02%  0x3002f74f: 4a 8b 0c 3b                       movq    (%rbx,%r15), %rcx             
  4.01%  0x3002f753: 49 8b 55 00                       movq    (%r13), %rdx                  
  0.00%  0x3002f757: 48 85 ca                          testq    %rcx, %rdx                   
         0x3002f75a: 75 58                             jne    88                             ; 0x3002f7b4
  1.59%  0x3002f75c: 8b 71 04                          movl    4(%rcx), %esi                 
 15.53%  0x3002f75f: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  2.44%  0x3002f765: 8d 86 1a f9 ff ff                 leal    -1766(%rsi), %eax             
  2.41%  0x3002f76b: 83 f8 03                          cmpl    $3, %eax                      
         0x3002f76e: 77 65                             ja    101                             ; 0x3002f7d5
  2.28%  0x3002f770: ff 64 c5 00                       jmpq    *(%rbp,%rax,8)                
  3.29%  0x3002f774: ff 41 08                          incl    8(%rcx)                       
  1.63%  0x3002f777: eb ca                             jmp    -54                            ; 0x3002f743
         0x3002f779: 0f 1f 80 00 00 00 00              nopl    (%rax)                        
 10.24%  0x3002f780: ff 41 14                          incl    20(%rcx)                      
  8.69%  0x3002f783: eb be                             jmp    -66                            ; 0x3002f743
         0x3002f785: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x3002f794: 66 66 66 2e 0f 1f 84 00 00 00     nopw    %cs:(%rax,%rax)               
  9.86%  0x3002f7a0: ff 41 0c                          incl    12(%rcx)                      
  8.96%  0x3002f7a3: eb 9e                             jmp    -98                            ; 0x3002f743
         0x3002f7a5: 48 83 c4 38                       addq    $56, %rsp                     
         0x3002f7a9: 5b                                popq    %rbx                          
         0x3002f7aa: 41 5c                             popq    %r12                          
         0x3002f7ac: 41 5d                             popq    %r13                          
  0.00%  0x3002f7ae: 41 5e                             popq    %r14                          
         0x3002f7b0: 41 5f                             popq    %r15                          
         0x3002f7b2: 5d                                popq    %rbp                          
         0x3002f7b3: c3                                retq                                  
         0x3002f7b4: 4a 8d 34 3b                       leaq    (%rbx,%r15), %rsi             
         0x3002f7b8: 48 89 cf                          movq    %rcx, %rdi                    
         0x3002f7bb: 41 ff d0                          callq    *%r8                         
         0x3002f7be: 48 89 c1                          movq    %rax, %rcx                    
         0x3002f7c1: eb 99                             jmp    -103                           ; 0x3002f75c
         0x3002f7c3: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f7cd: 41 bb 0b 00 00 00                 movl    $11, %r11d                    
....................................................................................................
 93.62%  <total for region 1>

....[Hottest Regions]...............................................................................
 93.62%  [0x3002f70b:0x3002f7cd] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call[Falcon]
  0.35%  [0xffffffffaa972dd0:0xffffffffaa972df1] in [unknown] ([kernel.kallsyms])
  0.31%  [0xffffffffa9c88c10:0xffffffffa9c88c1b] in [unknown] ([kernel.kallsyms])
  0.28%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.22%  [0xffffffffa9ecfb66:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9eb8dcf:0xffffffffa9eb8de6] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9d76df0:0xffffffffa9d76e82] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eef3d6:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9f0711c:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffaa9862c6:0xffffffffaa9862ec] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffaaa014b9:0xffffffffaaa014e0] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9eef44f:0xffffffffa9eef4ad] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9d73910:0xffffffffa9d73962] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9eef30c:0xffffffffa9eef3b4] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eb93b5:0xffffffffa9eb9441] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f07060:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9c7f74f:0xffffffffa9c7f788] in [unknown] ([kernel.kallsyms])
  3.43%  <...other 527 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 93.62%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call[Falcon]
  5.79%  [unknown] ([kernel.kallsyms])
  0.26%  [unknown] (liborca.so.0.0.0.0)
  0.17%  [unknown] (libjvm.so)
  0.03%  [unknown] (libc-2.31.so)
  0.02%  [unknown] (kvm.ko)
  0.01%  PMEM::account_enabled; PMEM::accounts (libaztall.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  malloc (libc-2.31.so)
  0.01%  PMEM_Account::fetch_stats (libaztall.so)
  0.00%  az_zmd_api_version_tall (libaztall.so)
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  syscall (libc-2.31.so)
  0.00%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub[Falcon]
  0.00%  __pthread_mutex_lock (libpthread-2.31.so)
  0.00%  <stub: method entry point (kind = zerolocals)>
  0.00%  PMEM::get_account_usage (libaztall.so)
  0.00%  <stub: method entry point (kind = accessor)>
  0.00%  _IO_default_xsputn (libc-2.31.so)
  0.03%  <...other 17 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 93.64%  <generated code>
  5.79%  <native code in ([kernel.kallsyms])>
  0.26%  <native code in (liborca.so.0.0.0.0)>
  0.17%  <native code in (libjvm.so)>
  0.06%  <native code in (libc-2.31.so)>
  0.03%  <native code in (libaztall.so)>
  0.02%  <native code in (kvm.ko)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (libazsys3.so)>
  0.00%  <native code in (ld-2.31.so)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MEGAMORPHIC_5)

# Run progress: 75.00% complete, ETA 00:07:26
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 14.548 ns/op
# Warmup Iteration   2: 14.448 ns/op
# Warmup Iteration   3: 14.446 ns/op
# Warmup Iteration   4: 14.447 ns/op
# Warmup Iteration   5: 14.446 ns/op
Iteration   1: 14.446 ns/op
Iteration   2: 14.445 ns/op
Iteration   3: 14.445 ns/op
Iteration   4: 14.446 ns/op
Iteration   5: 14.446 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  14.446 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (14.445, 14.446, 14.446), stdev = 0.001
  CI (99.9%): [14.444, 14.448] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call:·asm":
PrintAssembly processed: 136560 total address lines.
Perf output processed (skipped 56.309 seconds):
 Column 1: cycles (51469 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f90d:0x3002f9ac] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call[Falcon]

         0x3002f90d: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f90f: eb ac                             jmp    -84                            ; 0x3002f8bd
         0x3002f911: 48 83 c6 08                       addq    $8, %rsi                      
         0x3002f915: 48 89 df                          movq    %rbx, %rdi                    
         0x3002f918: 41 ff d1                          callq    *%r9                         
         0x3002f91b: 2e 2e 48 89 c3                    movq    %rax, %rbx                    
         0x3002f920: eb b3                             jmp    -77                            ; 0x3002f8d5
         0x3002f922: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f92c: 41 bb 0b 00 00 00                 movl    $11, %r11d                    
         0x3002f932: ff d0                             callq    *%rax                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
  9.15%  0x3002f934: ff 41 18                          incl    24(%rcx)                      
  7.77%  0x3002f937: 66 0f 1f 84 00 00 00 00 00        nopw    (%rax,%rax)                   
  0.16%  0x3002f940: 49 ff c5                          incq    %r13                          
         0x3002f943: 49 83 c4 08                       addq    $8, %r12                      
         0x3002f947: 4d 39 fd                          cmpq    %r15, %r13                    
         0x3002f94a: 0f 83 86 00 00 00                 jae    134                            ; 0x3002f9d6
  2.44%  0x3002f950: 4a 8b 0c 23                       movq    (%rbx,%r12), %rcx             
  2.91%  0x3002f954: 48 8b 55 00                       movq    (%rbp), %rdx                  
  0.05%  0x3002f958: 48 85 ca                          testq    %rcx, %rdx                   
         0x3002f95b: 75 2c                             jne    44                             ; 0x3002f989
  1.07%  0x3002f95d: 8b 71 04                          movl    4(%rcx), %esi                 
 13.32%  0x3002f960: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  2.45%  0x3002f966: 8d 86 1a f9 ff ff                 leal    -1766(%rsi), %eax             
  2.40%  0x3002f96c: 83 f8 04                          cmpl    $4, %eax                      
         0x3002f96f: 77 27                             ja    39                              ; 0x3002f998
  2.52%  0x3002f971: 41 ff 24 c6                       jmpq    *(%r14,%rax,8)                
  2.58%  0x3002f975: ff 41 08                          incl    8(%rcx)                       
  1.33%  0x3002f978: eb c6                             jmp    -58                            ; 0x3002f940
  7.92%  0x3002f97a: ff 41 10                          incl    16(%rcx)                      
  7.24%  0x3002f97d: eb c1                             jmp    -63                            ; 0x3002f940
 10.40%  0x3002f97f: ff 41 14                          incl    20(%rcx)                      
  7.33%  0x3002f982: eb bc                             jmp    -68                            ; 0x3002f940
  7.97%  0x3002f984: ff 41 0c                          incl    12(%rcx)                      
  6.87%  0x3002f987: eb b7                             jmp    -73                            ; 0x3002f940
         0x3002f989: 4a 8d 34 23                       leaq    (%rbx,%r12), %rsi             
         0x3002f98d: 48 89 cf                          movq    %rcx, %rdi                    
         0x3002f990: 41 ff d1                          callq    *%r9                         
         0x3002f993: 48 89 c1                          movq    %rax, %rcx                    
         0x3002f996: eb c5                             jmp    -59                            ; 0x3002f95d
         0x3002f998: 48 8b 04 f5 00 00 00 2d           movq    754974720(,%rsi,8), %rax      
         0x3002f9a0: 48 85 c2                          testq    %rax, %rdx                   
         0x3002f9a3: 75 52                             jne    82                             ; 0x3002f9f7
         0x3002f9a5: 48 8b b8 38 03 00 00              movq    824(%rax), %rdi               
         0x3002f9ac: 48 85 fa                          testq    %rdi, %rdx                   
....................................................................................................
 95.87%  <total for region 1>

....[Hottest Regions]...............................................................................
 95.87%  [0x3002f90d:0x3002f9ac] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call[Falcon]
  0.24%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.22%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9f0711f:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eb93b5:0xffffffffa9eb9441] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9c94c86:0xffffffffa9c94c86] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f695f6:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ed0800:0xffffffffa9ed0860] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffaa28ead0:0xffffffffaa28eb20] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ee587e:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eee5d0:0xffffffffa9eee62f] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0740:0xffffffffa9ed0797] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9f070ab:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  2.07%  <...other 330 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 95.88%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call[Falcon]
  3.75%  [unknown] ([kernel.kallsyms])
  0.24%  [unknown] (libjvm.so)
  0.02%  [unknown] (libc-2.31.so)
  0.02%  [unknown] (liborca.so.0.0.0.0)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  PMEM::account_enabled (libaztall.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  [unknown] ([vdso])
  0.00%  [unknown] (perf-148499.map)
  0.00%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub[Falcon]
  0.00%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  sprintf (libc-2.31.so)
  0.00%  memcpy (libc-2.31.so)
  0.00%  is_thread_initialized (libazsys3.so)
  0.00%  __pthread_mutex_unlock (libpthread-2.31.so)
  0.02%  <...other 9 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.89%  <generated code>
  3.75%  <native code in ([kernel.kallsyms])>
  0.24%  <native code in (libjvm.so)>
  0.04%  <native code in (libaztall.so)>
  0.04%  <native code in (libc-2.31.so)>
  0.02%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in ([vdso])>
  0.00%  <native code in (perf-148499.map)>
  0.00%  <native code in (libazsys3.so)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MEGAMORPHIC_6)

# Run progress: 81.25% complete, ETA 00:05:34
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 14.970 ns/op
# Warmup Iteration   2: 14.858 ns/op
# Warmup Iteration   3: 14.856 ns/op
# Warmup Iteration   4: 14.854 ns/op
# Warmup Iteration   5: 14.853 ns/op
Iteration   1: 14.854 ns/op
Iteration   2: 14.854 ns/op
Iteration   3: 14.855 ns/op
Iteration   4: 14.856 ns/op
Iteration   5: 14.863 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  14.856 ±(99.9%) 0.014 ns/op [Average]
  (min, avg, max) = (14.854, 14.856, 14.863), stdev = 0.004
  CI (99.9%): [14.842, 14.870] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call:·asm":
PrintAssembly processed: 136545 total address lines.
Perf output processed (skipped 56.270 seconds):
 Column 1: cycles (51486 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f909:0x3002f9a8] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call[Falcon]

         0x3002f909: eb b2                             jmp    -78                            ; 0x3002f8bd
         0x3002f90b: 48 83 c6 08                       addq    $8, %rsi                      
         0x3002f90f: 48 b8 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rax           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f919: 48 89 df                          movq    %rbx, %rdi                    
         0x3002f91c: ff d0                             callq    *%rax                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f91e: 48 89 c3                          movq    %rax, %rbx                    
         0x3002f921: eb a8                             jmp    -88                            ; 0x3002f8cb
         0x3002f923: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f92d: 41 bb 0b 00 00 00                 movl    $11, %r11d                    
         0x3002f933: ff d0                             callq    *%rax                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
  7.23%  0x3002f935: ff 41 18                          incl    24(%rcx)                      
  6.35%  0x3002f938: 0f 1f 84 00 00 00 00 00           nopl    (%rax,%rax)                   
  0.09%  0x3002f940: 49 ff c4                          incq    %r12                          
         0x3002f943: 49 83 c7 08                       addq    $8, %r15                      
         0x3002f947: 4d 39 f4                          cmpq    %r14, %r12                    
         0x3002f94a: 73 40                             jae    64                             ; 0x3002f98c
  2.24%  0x3002f94c: 4a 8b 0c 3b                       movq    (%rbx,%r15), %rcx             
  3.27%  0x3002f950: 49 8b 55 00                       movq    (%r13), %rdx                  
  0.03%  0x3002f954: 48 85 ca                          testq    %rcx, %rdx                   
         0x3002f957: 75 42                             jne    66                             ; 0x3002f99b
  0.80%  0x3002f959: 8b 71 04                          movl    4(%rcx), %esi                 
 13.22%  0x3002f95c: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  2.33%  0x3002f962: 8d 86 1a f9 ff ff                 leal    -1766(%rsi), %eax             
  2.35%  0x3002f968: 83 f8 05                          cmpl    $5, %eax                      
         0x3002f96b: 77 4f                             ja    79                              ; 0x3002f9bc
  2.29%  0x3002f96d: ff 64 c5 00                       jmpq    *(%rbp,%rax,8)                
  2.11%  0x3002f971: ff 41 08                          incl    8(%rcx)                       
  0.68%  0x3002f974: eb ca                             jmp    -54                            ; 0x3002f940
  6.80%  0x3002f976: ff 41 10                          incl    16(%rcx)                      
  6.23%  0x3002f979: eb c5                             jmp    -59                            ; 0x3002f940
  6.62%  0x3002f97b: 2e 2e ff 41 14                    incl    %cs:20(%rcx)                  
  5.57%  0x3002f980: eb be                             jmp    -66                            ; 0x3002f940
  7.86%  0x3002f982: ff 41 0c                          incl    12(%rcx)                      
  5.65%  0x3002f985: eb b9                             jmp    -71                            ; 0x3002f940
  7.86%  0x3002f987: ff 41 1c                          incl    28(%rcx)                      
  6.28%  0x3002f98a: eb b4                             jmp    -76                            ; 0x3002f940
         0x3002f98c: 48 83 c4 38                       addq    $56, %rsp                     
  0.00%  0x3002f990: 5b                                popq    %rbx                          
  0.00%  0x3002f991: 41 5c                             popq    %r12                          
         0x3002f993: 41 5d                             popq    %r13                          
         0x3002f995: 41 5e                             popq    %r14                          
         0x3002f997: 41 5f                             popq    %r15                          
         0x3002f999: 5d                                popq    %rbp                          
         0x3002f99a: c3                                retq                                  
         0x3002f99b: 4a 8d 34 3b                       leaq    (%rbx,%r15), %rsi             
         0x3002f99f: 48 89 cf                          movq    %rcx, %rdi                    
         0x3002f9a2: 41 ff d0                          callq    *%r8                         
         0x3002f9a5: 48 89 c1                          movq    %rax, %rcx                    
         0x3002f9a8: eb af                             jmp    -81                            ; 0x3002f959
....................................................................................................
 95.88%  <total for region 1>

....[Hottest Regions]...............................................................................
 95.88%  [0x3002f909:0x3002f9a8] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call[Falcon]
  0.23%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.20%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9eb93b5:0xffffffffa9eb9473] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9f0711f:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eb8dd5:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9eff400:0xffffffffa9eff42d] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eef44f:0xffffffffa9eef4ad] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f695f6:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9da97a0:0xffffffffa9da97fd] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28ead0:0xffffffffaa28eb20] in [unknown] ([kernel.kallsyms])
  0.07%  [0x7f48d51b05f8:0x7f48d51b0624] in [unknown] (libjvm.so)
  0.06%  [0xffffffffa9ee587e:0xffffffffa9ee587e] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9ed0806:0xffffffffa9ed0866] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9f6b890:0xffffffffa9f6b917] in [unknown] ([kernel.kallsyms])
  1.99%  <...other 319 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 95.88%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call[Falcon]
  3.72%  [unknown] ([kernel.kallsyms])
  0.25%  [unknown] (libjvm.so)
  0.02%  [unknown] (libc-2.31.so)
  0.02%  [unknown] ([vdso])
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  PMEM::account_enabled (libaztall.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.00%  is_thread_initialized (libazsys3.so)
  0.00%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub[Falcon]
  0.00%  <stub: method entry point (kind = zerolocals)>
  0.00%  clock_nanosleep (libc-2.31.so)
  0.00%  usleep (libc-2.31.so)
  0.00%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  clock_gettime (libc-2.31.so)
  0.00%  sprintf (libc-2.31.so)
  0.00%  az_zmd_api_version_tall (libaztall.so)
  0.02%  <...other 11 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.90%  <generated code>
  3.72%  <native code in ([kernel.kallsyms])>
  0.25%  <native code in (libjvm.so)>
  0.04%  <native code in (libc-2.31.so)>
  0.03%  <native code in (libaztall.so)>
  0.02%  <native code in ([vdso])>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libazsys3.so)>
  0.00%  <native code in (libm-2.31.so)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MEGAMORPHIC_7)

# Run progress: 87.50% complete, ETA 00:03:43
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 17.709 ns/op
# Warmup Iteration   2: 17.643 ns/op
# Warmup Iteration   3: 17.638 ns/op
# Warmup Iteration   4: 17.630 ns/op
# Warmup Iteration   5: 17.637 ns/op
Iteration   1: 17.645 ns/op
Iteration   2: 17.723 ns/op
Iteration   3: 17.723 ns/op
Iteration   4: 17.722 ns/op
Iteration   5: 17.723 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  17.707 ±(99.9%) 0.133 ns/op [Average]
  (min, avg, max) = (17.645, 17.707, 17.723), stdev = 0.035
  CI (99.9%): [17.574, 17.840] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call:·asm":
PrintAssembly processed: 136577 total address lines.
Perf output processed (skipped 56.269 seconds):
 Column 1: cycles (51881 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f6cf:0x3002f7cc] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call[Falcon]

         0x3002f6cf: 48 85 18                          testq    %rbx, (%rax)                 
         0x3002f6d2: 0f 85 44 01 00 00                 jne    324                            ; 0x3002f81c
         0x3002f6d8: 2e 2e 2e 2e 44 8b 7b 08           movl    %cs:8(%rbx), %r15d            
         0x3002f6e0: 45 85 ff                          testl    %r15d, %r15d                 
         0x3002f6e3: 0f 84 01 01 00 00                 je    257                             ; 0x3002f7ea
         0x3002f6e9: 41 bc 10 00 00 00                 movl    $16, %r12d                    
         0x3002f6ef: 45 31 ed                          xorl    %r13d, %r13d                  
         0x3002f6f2: bd 48 00 f8 2f                    movl    $804782152, %ebp              ; 804782152 = clearable_gc_phase_trap_mask
         0x3002f6f7: 49 be 70 f8 02 30 00 00 00 00     movabsq    $805501040, %r14           ; 0x3002f870
         0x3002f701: eb 2d                             jmp    45                             ; 0x3002f730
  5.28%  0x3002f703: ff 41 14                          incl    20(%rcx)                      
  4.20%  0x3002f706: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x3002f715: 66 66 2e 0f 1f 84 00 00 00 00     nopw    %cs:(%rax,%rax)               
  0.04%  0x3002f720: 49 ff c5                          incq    %r13                          
         0x3002f723: 49 83 c4 08                       addq    $8, %r12                      
  0.28%  0x3002f727: 4d 39 fd                          cmpq    %r15, %r13                    
         0x3002f72a: 0f 83 ba 00 00 00                 jae    186                            ; 0x3002f7ea
  1.72%  0x3002f730: 4a 8b 0c 23                       movq    (%rbx,%r12), %rcx             
  2.57%  0x3002f734: 48 8b 55 00                       movq    (%rbp), %rdx                  
  0.03%  0x3002f738: 48 85 ca                          testq    %rcx, %rdx                   
         0x3002f73b: 75 62                             jne    98                             ; 0x3002f79f
  1.09%  0x3002f73d: 8b 71 04                          movl    4(%rcx), %esi                 
 10.57%  0x3002f740: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  1.88%  0x3002f746: 8d 86 1a f9 ff ff                 leal    -1766(%rsi), %eax             
  2.03%  0x3002f74c: 83 f8 06                          cmpl    $6, %eax                      
         0x3002f74f: 77 0e                             ja    14                              ; 0x3002f75f
  1.99%  0x3002f751: 41 ff 24 c6                       jmpq    *(%r14,%rax,8)                
  1.44%  0x3002f755: ff 41 08                          incl    8(%rcx)                       
  0.92%  0x3002f758: eb c6                             jmp    -58                            ; 0x3002f720
  4.68%  0x3002f75a: ff 41 20                          incl    32(%rcx)                      
  4.76%  0x3002f75d: eb c1                             jmp    -63                            ; 0x3002f720
  5.82%  0x3002f75f: 48 8b 04 f5 00 00 00 2d           movq    754974720(,%rsi,8), %rax      
  3.12%  0x3002f767: 48 85 c2                          testq    %rax, %rdx                   
         0x3002f76a: 75 4b                             jne    75                             ; 0x3002f7b7
  0.32%  0x3002f76c: 48 8b b8 38 03 00 00              movq    824(%rax), %rdi               
  0.87%  0x3002f773: 48 85 fa                          testq    %rdi, %rdx                   
         0x3002f776: 75 58                             jne    88                             ; 0x3002f7d0
  0.27%  0x3002f778: 48 8b 87 a8 00 00 00              movq    168(%rdi), %rax               
  0.88%  0x3002f77f: 48 89 cf                          movq    %rcx, %rdi                    
         0x3002f782: 48 89 5c 24 30                    movq    %rbx, 48(%rsp)                
         0x3002f787: ff d0                             callq    *%rax                        
  0.00%  0x3002f789: 48 8b 5c 24 30                    movq    48(%rsp), %rbx                
  1.77%  0x3002f78e: eb 90                             jmp    -112                           ; 0x3002f720
  5.09%  0x3002f790: ff 41 10                          incl    16(%rcx)                      
  4.08%  0x3002f793: eb 8b                             jmp    -117                           ; 0x3002f720
  5.43%  0x3002f795: ff 41 18                          incl    24(%rcx)                      
  4.52%  0x3002f798: eb 86                             jmp    -122                           ; 0x3002f720
  5.41%  0x3002f79a: ff 41 1c                          incl    28(%rcx)                      
  4.43%  0x3002f79d: eb 81                             jmp    -127                           ; 0x3002f720
         0x3002f79f: 4a 8d 34 23                       leaq    (%rbx,%r12), %rsi             
         0x3002f7a3: 48 89 cf                          movq    %rcx, %rdi                    
         0x3002f7a6: 48 b8 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rax           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f7b0: ff d0                             callq    *%rax                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f7b2: 48 89 c1                          movq    %rax, %rcx                    
         0x3002f7b5: eb 86                             jmp    -122                           ; 0x3002f73d
         0x3002f7b7: 48 8d 34 f5 00 00 00 2d           leaq    754974720(,%rsi,8), %rsi      
         0x3002f7bf: 48 89 c7                          movq    %rax, %rdi                    
         0x3002f7c2: 48 b8 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rax           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f7cc: ff d0                             callq    *%rax                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
....................................................................................................
 85.51%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x3002f2a0:0x3002f2ce] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg2::compute[Falcon]

  0.03%  0x3002f2b0: ff c0                             incl    %eax                          
  0.00%  0x3002f2b2: 89 47 0c                          movl    %eax, 12(%rdi)                
         0x3002f2b5: 59                                popq    %rcx                          
  0.57%  0x3002f2b6: c3                                retq                                  
         0x3002f2b7: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f2c1: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f2c3: eb e8                             jmp    -24                            ; 0x3002f2ad
         -----------
           # {method}{0x20002b4b6f0} compute[Falcon] ()I in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg2
         Decoding CodeBlob 0x3002f200
  4.07%  0x3002f2a0: eb f9                             pushq    %rax                         
  3.32%  0x3002f2a2: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  0.63%  0x3002f2ab: 75 0a                             jne    10                             ; 0x3002f2b7
  0.33%  0x3002f2ad: 8b 47 0c                          movl    12(%rdi), %eax                
  0.03%  0x3002f2b0: ff c0                             incl    %eax                          
  0.00%  0x3002f2b2: 89 47 0c                          movl    %eax, 12(%rdi)                
         0x3002f2b5: 59                                popq    %rcx                          
  0.57%  0x3002f2b6: c3                                retq                                  
         0x3002f2b7: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f2c1: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f2c3: eb e8                             jmp    -24                            ; 0x3002f2ad
         0x3002f2c5: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x3002f2c9: e9 32 ef fd ff                    jmp    -135374                        ; 0x3000e200 = StubRoutines::deoptimize
         0x3002f2ce: cc                                int3                                  
         Call tree size: 1
         0: caller_index: -1 bci: -1 callee: virtual jint com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg2.compute()
         Encoded locations size: 3
         offset: 0 length: 37 scope: 0 bci: 0
....................................................................................................
  8.95%  <total for region 2>

....[Hottest Regions]...............................................................................
 85.51%  [0x3002f6cf:0x3002f7cc] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call[Falcon]
  8.95%  [0x3002f2a0:0x3002f2ce] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg2::compute[Falcon]
  0.91%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.28%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.23%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9f211f9:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9f07124:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9eee5d0:0xffffffffa9eee62f] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffaa28ead0:0xffffffffaa28eb19] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eff400:0xffffffffa9eff436] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffaaa01491:0xffffffffaaa014d1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ed0800:0xffffffffa9ed0873] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28d0d0:0xffffffffaa28d129] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9da97a5:0xffffffffa9da97fd] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28eb61:0xffffffffaa28eba7] in [unknown] ([kernel.kallsyms])
  2.68%  <...other 443 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 85.51%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call[Falcon]
  8.95%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg2::compute[Falcon]
  5.13%  [unknown] ([kernel.kallsyms])
  0.25%  [unknown] (libjvm.so)
  0.02%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.02%  thread_stack_region_start (libazsys3.so)
  0.02%  VMEM::get_account_usage (libaztall.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  PMEM::account_enabled; PMEM::accounts (libaztall.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  __pthread_mutex_lock (libpthread-2.31.so)
  0.00%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub[Falcon]
  0.00%  <stub: method entry point (kind = zerolocals)>
  0.00%  clock_gettime (libc-2.31.so)
  0.00%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  memcpy (libc-2.31.so)
  0.00%  az_zmd_api_version_tall (libaztall.so)
  0.02%  <...other 10 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 94.48%  <generated code>
  5.13%  <native code in ([kernel.kallsyms])>
  0.25%  <native code in (libjvm.so)>
  0.07%  <native code in (libaztall.so)>
  0.03%  <native code in (libc-2.31.so)>
  0.02%  <native code in (libazsys3.so)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MEGAMORPHIC_8)

# Run progress: 93.75% complete, ETA 00:01:51
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 17.315 ns/op
# Warmup Iteration   2: 17.216 ns/op
# Warmup Iteration   3: 17.211 ns/op
# Warmup Iteration   4: 17.212 ns/op
# Warmup Iteration   5: 17.210 ns/op
Iteration   1: 17.211 ns/op
Iteration   2: 17.211 ns/op
Iteration   3: 17.211 ns/op
Iteration   4: 17.210 ns/op
Iteration   5: 17.198 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  17.208 ±(99.9%) 0.022 ns/op [Average]
  (min, avg, max) = (17.198, 17.208, 17.211), stdev = 0.006
  CI (99.9%): [17.186, 17.230] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call:·asm":
PrintAssembly processed: 136685 total address lines.
Perf output processed (skipped 56.291 seconds):
 Column 1: cycles (51360 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002fd00:0x3002fe22] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call[Falcon]

         0x3002fd00: eb bb                             jmp    -69                            ; 0x3002fcbd
         0x3002fd02: 48 83 c6 08                       addq    $8, %rsi                      
         0x3002fd06: 48 b8 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rax           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002fd10: 48 89 df                          movq    %rbx, %rdi                    
         0x3002fd13: ff d0                             callq    *%rax                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002fd15: 48 89 c3                          movq    %rax, %rbx                    
         0x3002fd18: eb b1                             jmp    -79                            ; 0x3002fccb
         0x3002fd1a: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002fd24: 41 bb 0b 00 00 00                 movl    $11, %r11d                    
         0x3002fd2a: ff d0                             callq    *%rax                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
  4.13%  0x3002fd2c: ff 41 1c                          incl    28(%rcx)                      
  3.40%  0x3002fd2f: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x3002fd3e: 66 90                             nop                                   
  0.02%  0x3002fd40: 49 ff c4                          incq    %r12                          
         0x3002fd43: 49 83 c7 08                       addq    $8, %r15                      
  0.30%  0x3002fd47: 4d 39 f4                          cmpq    %r14, %r12                    
         0x3002fd4a: 0f 83 ad 00 00 00                 jae    173                            ; 0x3002fdfd
  1.95%  0x3002fd50: 4a 8b 0c 3b                       movq    (%rbx,%r15), %rcx             
  4.75%  0x3002fd54: 2e 2e 2e 2e 2e 2e 2e 2e 49 8b     movq    %cs:(%r13), %rdx              
  0.04%  0x3002fd60: 48 85 ca                          testq    %rcx, %rdx                   
         0x3002fd63: 0f 85 a3 00 00 00                 jne    163                            ; 0x3002fe0c
  1.55%  0x3002fd69: 8b 71 04                          movl    4(%rcx), %esi                 
  7.89%  0x3002fd6c: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  2.06%  0x3002fd72: 8d 86 19 f9 ff ff                 leal    -1767(%rsi), %eax             
  2.21%  0x3002fd78: 83 f8 05                          cmpl    $5, %eax                      
         0x3002fd7b: 77 23                             ja    35                              ; 0x3002fda0
  1.58%  0x3002fd7d: ff 64 c5 00                       jmpq    *(%rbp,%rax,8)                
  1.36%  0x3002fd81: ff 41 0c                          incl    12(%rcx)                      
  2.33%  0x3002fd84: eb ba                             jmp    -70                            ; 0x3002fd40
         0x3002fd86: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x3002fd95: 66 66 2e 0f 1f 84 00 00 00 00     nopw    %cs:(%rax,%rax)               
  0.55%  0x3002fda0: 48 8b 04 f5 00 00 00 2d           movq    754974720(,%rsi,8), %rax      
  1.71%  0x3002fda8: 48 85 c2                          testq    %rax, %rdx                   
         0x3002fdab: 75 7a                             jne    122                            ; 0x3002fe27
  0.50%  0x3002fdad: 48 8b b8 38 03 00 00              movq    824(%rax), %rdi               
  1.66%  0x3002fdb4: 48 85 fa                          testq    %rdi, %rdx                   
         0x3002fdb7: 0f 85 88 00 00 00                 jne    136                            ; 0x3002fe45
  0.53%  0x3002fdbd: 48 8b 87 a8 00 00 00              movq    168(%rdi), %rax               
  1.63%  0x3002fdc4: 48 89 cf                          movq    %rcx, %rdi                    
         0x3002fdc7: 48 89 5c 24 30                    movq    %rbx, 48(%rsp)                
         0x3002fdcc: ff d0                             callq    *%rax                        
  0.00%  0x3002fdce: 48 8b 5c 24 30                    movq    48(%rsp), %rbx                
  2.61%  0x3002fdd3: e9 68 ff ff ff                    jmp    -152                           ; 0x3002fd40
  5.25%  0x3002fdd8: 2e 2e 2e 2e 2e ff 41 14           incl    %cs:20(%rcx)                  
  3.72%  0x3002fde0: e9 5b ff ff ff                    jmp    -165                           ; 0x3002fd40
  4.38%  0x3002fde5: ff 41 18                          incl    24(%rcx)                      
  5.61%  0x3002fde8: e9 53 ff ff ff                    jmp    -173                           ; 0x3002fd40
  4.52%  0x3002fded: ff 41 10                          incl    16(%rcx)                      
  3.52%  0x3002fdf0: e9 4b ff ff ff                    jmp    -181                           ; 0x3002fd40
  4.52%  0x3002fdf5: ff 41 20                          incl    32(%rcx)                      
  3.73%  0x3002fdf8: e9 43 ff ff ff                    jmp    -189                           ; 0x3002fd40
  0.00%  0x3002fdfd: 48 83 c4 38                       addq    $56, %rsp                     
  0.00%  0x3002fe01: 5b                                popq    %rbx                          
         0x3002fe02: 41 5c                             popq    %r12                          
  0.00%  0x3002fe04: 41 5d                             popq    %r13                          
         0x3002fe06: 41 5e                             popq    %r14                          
         0x3002fe08: 41 5f                             popq    %r15                          
         0x3002fe0a: 5d                                popq    %rbp                          
         0x3002fe0b: c3                                retq                                  
         0x3002fe0c: 4a 8d 34 3b                       leaq    (%rbx,%r15), %rsi             
         0x3002fe10: 48 89 cf                          movq    %rcx, %rdi                    
         0x3002fe13: 48 b8 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rax           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002fe1d: ff d0                             callq    *%rax                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002fe1f: 48 89 c1                          movq    %rax, %rcx                    
         0x3002fe22: e9 42 ff ff ff                    jmp    -190                           ; 0x3002fd69
....................................................................................................
 78.06%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x300300a0:0x300300ce] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg8::compute[Falcon]

         offset: 225 length: 5 scope: 2 bci: 0
         offset: 230 length: 82 scope: 0 bci: 0
         offset: 312 length: 13 scope: 3 bci: 0
         offset: 325 length: 8 scope: 4 bci: 0
         offset: 333 length: 8 scope: 5 bci: 0
         offset: 341 length: 8 scope: 6 bci: 0
         offset: 349 length: 145 scope: 0 bci: 0
         <nmethodAdapter compile_id='260' level='2' size='40' address='0x00007f96441a2cd0' dependencies_offset='32' stamp='88569.883'/>
           # {method}{0x20002b4f788} compute[Falcon] ()I in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg8
         Decoding CodeBlob 0x30030000
  3.81%  0x300300a0: eb f9                             pushq    %rax                         
  3.00%  0x300300a2: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  0.51%  0x300300ab: 75 0a                             jne    10                             ; 0x300300b7
  0.25%  0x300300ad: 8b 47 24                          movl    36(%rdi), %eax                
  1.11%  0x300300b0: ff c0                             incl    %eax                          
  0.24%  0x300300b2: 89 47 24                          movl    %eax, 36(%rdi)                
  0.51%  0x300300b5: 59                                popq    %rcx                          
  0.05%  0x300300b6: c3                                retq                                  
         0x300300b7: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x300300c1: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x300300c3: eb e8                             jmp    -24                            ; 0x300300ad
         0x300300c5: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x300300c9: e9 32 e1 fd ff                    jmp    -138958                        ; 0x3000e200 = StubRoutines::deoptimize
         0x300300ce: cc                                int3                                  
         Call tree size: 1
         0: caller_index: -1 bci: -1 callee: virtual jint com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg8.compute()
         Encoded locations size: 3
         offset: 0 length: 37 scope: 0 bci: 0
....................................................................................................
  9.47%  <total for region 2>

....[Hottest Region 3]..............................................................................
 [0x300302a0:0x30030e66] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute[Falcon]

         0x30030e5a: 41 bb 0b 00 00 00                 movl    $11, %r11d                    
         0x30030e60: ff d0                             callq    *%rax                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x30030e62: 00 00                             addb    %al, (%rax)                   
         0x30030e64: 00 00                             addb    %al, (%rax)                   
         0x30030e66: 00 00                             addb    %al, (%rax)                   
         Disassembling com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg3::compute:
         -----------
         -----------
           # {method}{0x20002b4aea8} compute[Falcon] ()I in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg1
         Decoding CodeBlob 0x30030200
  3.77%  0x300302a0: eb f9                             pushq    %rax                         
  3.08%  0x300302a2: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  0.50%  0x300302ab: 75 0a                             jne    10                             ; 0x300302b7
  0.30%  0x300302ad: 8b 47 08                          movl    8(%rdi), %eax                 
  0.12%  0x300302b0: ff c0                             incl    %eax                          
  0.03%  0x300302b2: 89 47 08                          movl    %eax, 8(%rdi)                 
  0.06%  0x300302b5: 59                                popq    %rcx                          
  0.45%  0x300302b6: c3                                retq                                  
         0x300302b7: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x300302c1: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x300302c3: eb e8                             jmp    -24                            ; 0x300302ad
         0x300302c5: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x300302c9: e9 32 df fd ff                    jmp    -139470                        ; 0x3000e200 = StubRoutines::deoptimize
         0x300302ce: cc                                int3                                  
         Call tree size: 1
         0: caller_index: -1 bci: -1 callee: virtual jint com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1.compute()
         Encoded locations size: 3
         offset: 0 length: 37 scope: 0 bci: 0
....................................................................................................
  8.31%  <total for region 3>

....[Hottest Regions]...............................................................................
 78.06%  [0x3002fd00:0x3002fe22] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call[Falcon]
  9.47%  [0x300300a0:0x300300ce] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg8::compute[Falcon]
  8.31%  [0x300302a0:0x30030e66] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute[Falcon]
  0.26%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.20%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f0711f:0xffffffffa9f0715c] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eff400:0xffffffffa9eff42d] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9eb93b5:0xffffffffa9eb9423] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f695f5:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ee587e:0xffffffffa9ee587e] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f07060:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9c0f77a:0xffffffffa9c0f7a2] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f68701:0xffffffffa9f6872c] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eef44f:0xffffffffa9eef4ad] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0800:0xffffffffa9ed0889] in [unknown] ([kernel.kallsyms])
  2.17%  <...other 340 warm regions...>
....................................................................................................
 99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 78.07%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call[Falcon]
  9.47%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg8::compute[Falcon]
  8.31%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute[Falcon]
  3.87%  [unknown] ([kernel.kallsyms])
  0.17%  [unknown] (libjvm.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.01%  syscall (libc-2.31.so)
  0.00%  memcpy (libc-2.31.so)
  0.00%  <stub: method entry point (kind = zerolocals)>
  0.00%  PMEM::get_account_usage (libaztall.so)
  0.00%  PMEM::account_enabled (libaztall.so)
  0.00%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  PMEM_Account::fetch_stats (libaztall.so)
  0.00%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  sprintf (libc-2.31.so)
  0.00%  _dl_addr (libc-2.31.so)
  0.00%  is_thread_initialized (libazsys3.so)
  0.03%  <...other 14 warm methods...>
....................................................................................................
 99.99%  <totals>

....[Distribution by Area]..........................................................................
 95.86%  <generated code>
  3.87%  <native code in ([kernel.kallsyms])>
  0.17%  <native code in (libjvm.so)>
  0.04%  <native code in (libc-2.31.so)>
  0.03%  <native code in (libaztall.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libazsys3.so)>
  0.00%  <native code in (kvm.ko)>
  0.00%  <native code in (libpthread-2.31.so)>
  0.00%  <native code in (libjimage.so)>
....................................................................................................
 99.99%  <totals>



# Run complete. Total time: 00:29:43

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

Benchmark                                                         (targetType)  Mode  Cnt   Score   Error  Units
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic         MONOMORPHIC  avgt    5   1.821 ± 0.001  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm    MONOMORPHIC  avgt          NaN            ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic           BIMORPHIC  avgt    5   2.047 ± 0.071  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm      BIMORPHIC  avgt          NaN            ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic       MEGAMORPHIC_3  avgt    5   2.096 ± 0.007  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm  MEGAMORPHIC_3  avgt          NaN            ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic       MEGAMORPHIC_4  avgt    5  11.640 ± 0.019  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm  MEGAMORPHIC_4  avgt          NaN            ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic       MEGAMORPHIC_5  avgt    5  12.730 ± 0.008  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm  MEGAMORPHIC_5  avgt          NaN            ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic       MEGAMORPHIC_6  avgt    5  12.905 ± 0.004  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm  MEGAMORPHIC_6  avgt          NaN            ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic       MEGAMORPHIC_7  avgt    5  12.698 ± 0.003  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm  MEGAMORPHIC_7  avgt          NaN            ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic       MEGAMORPHIC_8  avgt    5  12.887 ± 0.024  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm  MEGAMORPHIC_8  avgt          NaN            ---
MegamorphicMethodCallBenchmark.virtual_call                        MONOMORPHIC  avgt    5   1.633 ± 0.010  ns/op
MegamorphicMethodCallBenchmark.virtual_call:·asm                   MONOMORPHIC  avgt          NaN            ---
MegamorphicMethodCallBenchmark.virtual_call                          BIMORPHIC  avgt    5   1.991 ± 0.003  ns/op
MegamorphicMethodCallBenchmark.virtual_call:·asm                     BIMORPHIC  avgt          NaN            ---
MegamorphicMethodCallBenchmark.virtual_call                      MEGAMORPHIC_3  avgt    5   2.087 ± 0.002  ns/op
MegamorphicMethodCallBenchmark.virtual_call:·asm                 MEGAMORPHIC_3  avgt          NaN            ---
MegamorphicMethodCallBenchmark.virtual_call                      MEGAMORPHIC_4  avgt    5  13.726 ± 0.002  ns/op
MegamorphicMethodCallBenchmark.virtual_call:·asm                 MEGAMORPHIC_4  avgt          NaN            ---
MegamorphicMethodCallBenchmark.virtual_call                      MEGAMORPHIC_5  avgt    5  14.446 ± 0.002  ns/op
MegamorphicMethodCallBenchmark.virtual_call:·asm                 MEGAMORPHIC_5  avgt          NaN            ---
MegamorphicMethodCallBenchmark.virtual_call                      MEGAMORPHIC_6  avgt    5  14.856 ± 0.014  ns/op
MegamorphicMethodCallBenchmark.virtual_call:·asm                 MEGAMORPHIC_6  avgt          NaN            ---
MegamorphicMethodCallBenchmark.virtual_call                      MEGAMORPHIC_7  avgt    5  17.707 ± 0.133  ns/op
MegamorphicMethodCallBenchmark.virtual_call:·asm                 MEGAMORPHIC_7  avgt          NaN            ---
MegamorphicMethodCallBenchmark.virtual_call                      MEGAMORPHIC_8  avgt    5  17.208 ± 0.022  ns/op
MegamorphicMethodCallBenchmark.virtual_call:·asm                 MEGAMORPHIC_8  avgt          NaN            ---
