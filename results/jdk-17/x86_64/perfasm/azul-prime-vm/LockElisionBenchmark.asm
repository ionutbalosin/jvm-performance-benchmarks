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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark.baseline

# Run progress: 0.00% complete, ETA 00:10:00
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5.439 ns/op
# Warmup Iteration   2: 5.417 ns/op
# Warmup Iteration   3: 5.434 ns/op
# Warmup Iteration   4: 5.415 ns/op
# Warmup Iteration   5: 5.415 ns/op
Iteration   1: 5.416 ns/op
Iteration   2: 5.417 ns/op
Iteration   3: 5.415 ns/op
Iteration   4: 5.414 ns/op
Iteration   5: 5.415 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark.baseline":
  5.415 ±(99.9%) 0.004 ns/op [Average]
  (min, avg, max) = (5.414, 5.415, 5.417), stdev = 0.001
  CI (99.9%): [5.412, 5.419] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark.baseline:·asm":
PrintAssembly processed: 133708 total address lines.
Perf output processed (skipped 56.495 seconds):
 Column 1: cycles (51916 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002eea0:0x3002eed1] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark::baseline[Falcon]

         0x3002eeb3: 01 c0                             addl    %eax, %eax                    
         0x3002eeb5: 8d 04 c8                          leal    (%rax,%rcx,8), %eax           
  6.51%  0x3002eeb8: 59                                popq    %rcx                          
  6.72%  0x3002eeb9: c3                                retq                                  
         0x3002eeba: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002eec4: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002eec6: eb e5                             jmp    -27                            ; 0x3002eead
         -----------
           # {method}{0x20002655ec0} baseline[Falcon] ()I in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/LockElisionBenchmark
         Decoding CodeBlob 0x3002ee00
 13.80%  0x3002eea0: eb f9                             pushq    %rax                         
  6.66%  0x3002eea2: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 13.78%  0x3002eeab: 75 0d                             jne    13                             ; 0x3002eeba
  6.90%  0x3002eead: 8b 47 0c                          movl    12(%rdi), %eax                
         0x3002eeb0: 8b 4f 10                          movl    16(%rdi), %ecx                
         0x3002eeb3: 01 c0                             addl    %eax, %eax                    
         0x3002eeb5: 8d 04 c8                          leal    (%rax,%rcx,8), %eax           
  6.51%  0x3002eeb8: 59                                popq    %rcx                          
  6.72%  0x3002eeb9: c3                                retq                                  
         0x3002eeba: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002eec4: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002eec6: eb e5                             jmp    -27                            ; 0x3002eead
         0x3002eec8: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x3002eecc: e9 2f f3 fd ff                    jmp    -134353                        ; 0x3000e200 = StubRoutines::deoptimize
         0x3002eed1: cc                                int3                                  
         Call tree size: 1
         0: caller_index: -1 bci: -1 callee: virtual jint com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark.baseline()
         Encoded locations size: 3
         offset: 0 length: 40 scope: 0 bci: 0
....................................................................................................
 54.36%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x300316dc:0x30031741] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub[Falcon]

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
  6.77%  0x30031703: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30031708: e8 f3 c1 fd ff                    callq    -146957                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x3003170d: 89 44 24 34                       movl    %eax, 52(%rsp)                
 33.89%  0x30031711: 48 ff c5                          incq    %rbp                          
         0x30031714: 2e 2e 2e 41 0f b6 84 24 94 00     movzbl    %cs:148(%r12), %eax         
         0x30031720: 84 c0                             testb    %al, %al                     
         0x30031722: 74 dc                             je    -36                             ; 0x30031700
         0x30031724: 41 ff d5                          callq    *%r13                        
         0x30031727: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x3003172b: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x30031733: c4 e1 fb 2a c5                    vcvtsi2sd    %rbp, %xmm0, %xmm0       
         0x30031738: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x3003173d: 48 83 c4 38                       addq    $56, %rsp                     
         0x30031741: 5b                                popq    %rbx                          
....................................................................................................
 40.67%  <total for region 2>

....[Hottest Regions]...............................................................................
 54.36%  [0x3002eea0:0x3002eed1] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark::baseline[Falcon]
 40.67%  [0x300316dc:0x30031741] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub[Falcon]
  0.48%  [0xffffffffa9c0f77a:0xffffffffa9c0f77a] in [unknown] ([kernel.kallsyms])
  0.27%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.26%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9f0711c:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eb93b5:0xffffffffa9eb9470] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eef3b4:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9c0f7e5:0xffffffffa9c0f7e6] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eee5d0:0xffffffffa9eee62e] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eef44f:0xffffffffa9eef4b0] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f07060:0xffffffffa9f070c0] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ee587e:0xffffffffa9ee588c] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0800:0xffffffffa9ed0866] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28d0d0:0xffffffffaa28d129] in [unknown] ([kernel.kallsyms])
  2.47%  <...other 366 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 54.36%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark::baseline[Falcon]
 40.67%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub[Falcon]
  4.53%  [unknown] ([kernel.kallsyms])
  0.23%  [unknown] (libjvm.so)
  0.02%  VMEM::get_account_usage (libaztall.so)
  0.02%  [unknown] ([vdso])
  0.02%  __errno_location (libpthread-2.31.so)
  0.01%  PMEM::account_enabled; PMEM::accounts (libaztall.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  is_thread_initialized (libazsys3.so)
  0.01%  az_zmd_api_version_tall (libaztall.so)
  0.01%  az_pmem_get_account_usage_tall; az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  az_get_elastic_tall (libaztall.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  az_pmem_get_account_usage_tall (libaztall.so)
  0.01%  az_pmem_get_account_usage (libazsys3.so)
  0.01%  _dl_addr (libc-2.31.so)
  0.05%  <...other 15 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.03%  <generated code>
  4.53%  <native code in ([kernel.kallsyms])>
  0.23%  <native code in (libjvm.so)>
  0.10%  <native code in (libaztall.so)>
  0.03%  <native code in (libazsys3.so)>
  0.03%  <native code in (libc-2.31.so)>
  0.02%  <native code in (libpthread-2.31.so)>
  0.02%  <native code in ([vdso])>
  0.01%  <native code in (liborca.so.0.0.0.0)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark.chain_method_calls

# Run progress: 16.67% complete, ETA 00:09:21
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5.458 ns/op
# Warmup Iteration   2: 5.418 ns/op
# Warmup Iteration   3: 5.442 ns/op
# Warmup Iteration   4: 5.418 ns/op
# Warmup Iteration   5: 5.414 ns/op
Iteration   1: 5.414 ns/op
Iteration   2: 5.415 ns/op
Iteration   3: 5.415 ns/op
Iteration   4: 5.415 ns/op
Iteration   5: 5.415 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark.chain_method_calls":
  5.415 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (5.414, 5.415, 5.415), stdev = 0.001
  CI (99.9%): [5.414, 5.416] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark.chain_method_calls:·asm":
PrintAssembly processed: 135262 total address lines.
Perf output processed (skipped 56.371 seconds):
 Column 1: cycles (51458 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f8a0:0x3002fb97] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark::chain_method_calls[Falcon]

         0x3002fb74: 2e 2e 2e 41 0f b6 84 24 94 00     movzbl    %cs:148(%r12), %eax         
         0x3002fb80: 84 c0                             testb    %al, %al                     
         0x3002fb82: 74 dc                             je    -36                             ; 0x3002fb60
         0x3002fb84: 0f be c0                          movsbl    %al, %eax                   
         0x3002fb87: 48 b9 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rcx           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002fb91: 41 bb 07 00 00 00                 movl    $7, %r11d                     
         0x3002fb97: ff d1                             callq    *%rcx                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         -----------
           # {method}{0x20002655820} chain_method_calls[Falcon] ()I in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/LockElisionBenchmark
         Decoding CodeBlob 0x3002f800
 13.69%  0x3002f8a0: eb f9                             pushq    %rax                         
  6.86%  0x3002f8a2: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 13.61%  0x3002f8ab: 75 0d                             jne    13                             ; 0x3002f8ba
  6.75%  0x3002f8ad: 8b 47 0c                          movl    12(%rdi), %eax                
  0.00%  0x3002f8b0: 8b 4f 10                          movl    16(%rdi), %ecx                
         0x3002f8b3: 01 c0                             addl    %eax, %eax                    
         0x3002f8b5: 8d 04 c8                          leal    (%rax,%rcx,8), %eax           
  6.96%  0x3002f8b8: 59                                popq    %rcx                          
  6.94%  0x3002f8b9: c3                                retq                                  
         0x3002f8ba: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f8c4: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f8c6: eb e5                             jmp    -27                            ; 0x3002f8ad
         0x3002f8c8: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x3002f8cc: e9 2f e9 fd ff                    jmp    -136913                        ; 0x3000e200 = StubRoutines::deoptimize
         0x3002f8d1: cc                                int3                                  
         Call tree size: 2
         0: caller_index: -1 bci: 0 callee: virtual jint com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark.chain_method_calls()
         1: caller_index: 0 bci: -1 callee: virtual jint com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark.sum(jint)
         Encoded locations size: 9
....................................................................................................
 54.82%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x30031adc:0x30031b41] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub[Falcon]

         0x30031adc: 48 89 43 20                       movq    %rax, 32(%rbx)                
         0x30031ae0: 4d 85 f6                          testq    %r14, %r14                   
         0x30031ae3: 0f 84 86 00 00 00                 je    134                             ; 0x30031b6f
         0x30031ae9: 4d 85 ff                          testq    %r15, %r15                   
         0x30031aec: 0f 84 8f 00 00 00                 je    143                             ; 0x30031b81
         0x30031af2: 4d 85 e4                          testq    %r12, %r12                   
         0x30031af5: 0f 84 a4 00 00 00                 je    164                             ; 0x30031b9f
         0x30031afb: 31 ed                             xorl    %ebp, %ebp                    
         0x30031afd: 0f 1f 00                          nopl    (%rax)                        
         0x30031b00: 4c 89 f7                          movq    %r14, %rdi                    
  6.90%  0x30031b03: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30031b08: e8 f3 bd fd ff                    callq    -147981                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x30031b0d: 89 44 24 34                       movl    %eax, 52(%rsp)                
 34.21%  0x30031b11: 48 ff c5                          incq    %rbp                          
         0x30031b14: 2e 2e 2e 41 0f b6 84 24 94 00     movzbl    %cs:148(%r12), %eax         
         0x30031b20: 84 c0                             testb    %al, %al                     
         0x30031b22: 74 dc                             je    -36                             ; 0x30031b00
         0x30031b24: 41 ff d5                          callq    *%r13                        
         0x30031b27: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x30031b2b: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x30031b33: c4 e1 fb 2a c5                    vcvtsi2sd    %rbp, %xmm0, %xmm0       
         0x30031b38: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x30031b3d: 48 83 c4 38                       addq    $56, %rsp                     
         0x30031b41: 5b                                popq    %rbx                          
....................................................................................................
 41.11%  <total for region 2>

....[Hottest Regions]...............................................................................
 54.82%  [0x3002f8a0:0x3002fb97] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark::chain_method_calls[Falcon]
 41.11%  [0x30031adc:0x30031b41] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub[Falcon]
  0.24%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.23%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9f0711c:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eef5b2:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eb8dcf:0xffffffffa9eb8e14] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eef44f:0xffffffffa9eef4ad] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f695f0:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ee587e:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f07060:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eee5d0:0xffffffffa9eee62f] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9da97a0:0xffffffffa9da9802] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eff400:0xffffffffa9eff43c] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9c0f77a:0xffffffffa9c0f788] in [unknown] ([kernel.kallsyms])
  2.04%  <...other 298 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 54.82%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark::chain_method_calls[Falcon]
 41.11%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub[Falcon]
  3.74%  [unknown] ([kernel.kallsyms])
  0.21%  [unknown] (libjvm.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.00%  _dl_addr (libc-2.31.so)
  0.00%  <stub: method entry point (kind = zerolocals)>
  0.00%  clock_nanosleep (libc-2.31.so)
  0.00%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  [unknown] ([vdso])
  0.00%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  thread_stack_region_start@plt (libazsys3.so)
  0.00%  az_zmd_api_version_tall (libaztall.so)
  0.00%  thread_stack_region_start (libazsys3.so)
  0.03%  <...other 14 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.94%  <generated code>
  3.74%  <native code in ([kernel.kallsyms])>
  0.21%  <native code in (libjvm.so)>
  0.04%  <native code in (libc-2.31.so)>
  0.03%  <native code in (libaztall.so)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libazsys3.so)>
  0.00%  <native code in ([vdso])>
  0.00%  <native code in (ld-2.31.so)>
  0.00%  <native code in (perf-142767.map)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark.conditional_chain_method_calls

# Run progress: 33.33% complete, ETA 00:07:27
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.782 ns/op
# Warmup Iteration   2: 8.531 ns/op
# Warmup Iteration   3: 8.505 ns/op
# Warmup Iteration   4: 8.653 ns/op
# Warmup Iteration   5: 8.528 ns/op
Iteration   1: 8.516 ns/op
Iteration   2: 8.574 ns/op
Iteration   3: 8.549 ns/op
Iteration   4: 8.538 ns/op
Iteration   5: 8.496 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark.conditional_chain_method_calls":
  8.535 ±(99.9%) 0.116 ns/op [Average]
  (min, avg, max) = (8.496, 8.535, 8.574), stdev = 0.030
  CI (99.9%): [8.418, 8.651] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark.conditional_chain_method_calls:·asm":
PrintAssembly processed: 135256 total address lines.
Perf output processed (skipped 57.728 seconds):
 Column 1: cycles (52258 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f6a0:0x3002f78c] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark::conditional_chain_method_calls[Falcon]

         0x3002f768: ff d0                             callq    *%rax                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f76a: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f774: 41 bb 07 00 00 00                 movl    $7, %r11d                     
         0x3002f77a: ff d0                             callq    *%rax                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f77c: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f786: 41 bb 07 00 00 00                 movl    $7, %r11d                     
         0x3002f78c: ff d0                             callq    *%rax                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         -----------
           # {method}{0x20002655330} conditional_chain_method_calls[Falcon] ()I in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/LockElisionBenchmark
         Decoding CodeBlob 0x3002f600
  5.91%  0x3002f6a0: eb f9                             pushq    %rax                         
  4.42%  0x3002f6a2: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  8.27%  0x3002f6ab: 75 55                             jne    85                             ; 0x3002f702
  4.12%  0x3002f6ad: 8b 4f 0c                          movl    12(%rdi), %ecx                
  0.00%  0x3002f6b0: 01 c9                             addl    %ecx, %ecx                    
         0x3002f6b2: 83 f9 21                          cmpl    $33, %ecx                     
         0x3002f6b5: 7c 59                             jl    89                              ; 0x3002f710
         0x3002f6b7: 8b 57 10                          movl    16(%rdi), %edx                
  4.27%  0x3002f6ba: 01 d1                             addl    %edx, %ecx                    
         0x3002f6bc: 0f 1f 40 00                       nopl    (%rax)                        
         0x3002f6c0: 83 f9 21                          cmpl    $33, %ecx                     
         0x3002f6c3: 7c 5d                             jl    93                              ; 0x3002f722
  0.34%  0x3002f6c5: 01 d1                             addl    %edx, %ecx                    
  3.83%  0x3002f6c7: 83 f9 21                          cmpl    $33, %ecx                     
         0x3002f6ca: 7c 68                             jl    104                             ; 0x3002f734
         0x3002f6cc: 01 d1                             addl    %edx, %ecx                    
         0x3002f6ce: 83 f9 21                          cmpl    $33, %ecx                     
         0x3002f6d1: 7c 73                             jl    115                             ; 0x3002f746
  0.69%  0x3002f6d3: 01 d1                             addl    %edx, %ecx                    
  3.49%  0x3002f6d5: 83 f9 21                          cmpl    $33, %ecx                     
         0x3002f6d8: 7c 7e                             jl    126                             ; 0x3002f758
         0x3002f6da: 01 d1                             addl    %edx, %ecx                    
         0x3002f6dc: 0f 1f 40 00                       nopl    (%rax)                        
  1.47%  0x3002f6e0: 83 f9 21                          cmpl    $33, %ecx                     
         0x3002f6e3: 0f 8c 81 00 00 00                 jl    129                             ; 0x3002f76a
  5.00%  0x3002f6e9: 01 d1                             addl    %edx, %ecx                    
         0x3002f6eb: 83 f9 21                          cmpl    $33, %ecx                     
         0x3002f6ee: 0f 8c 88 00 00 00                 jl    136                             ; 0x3002f77c
  0.31%  0x3002f6f4: 01 d1                             addl    %edx, %ecx                    
  1.22%  0x3002f6f6: 31 c0                             xorl    %eax, %eax                    
  9.71%  0x3002f6f8: 83 f9 21                          cmpl    $33, %ecx                     
         0x3002f6fb: 0f 4d c2                          cmovgel    %edx, %eax                 
  0.65%  0x3002f6fe: 01 c8                             addl    %ecx, %eax                    
  1.47%  0x3002f700: 59                                popq    %rcx                          
  6.27%  0x3002f701: c3                                retq                                  
         0x3002f702: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f70c: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f70e: eb 9d                             jmp    -99                            ; 0x3002f6ad
         0x3002f710: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f71a: 41 bb 07 00 00 00                 movl    $7, %r11d                     
         0x3002f720: ff d0                             callq    *%rax                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f722: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f72c: 41 bb 07 00 00 00                 movl    $7, %r11d                     
         0x3002f732: ff d0                             callq    *%rax                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f734: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
....................................................................................................
 61.43%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x300316dc:0x30031741] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub[Falcon]

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
  4.22%  0x30031703: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30031708: e8 f3 c1 fd ff                    callq    -146957                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  0.00%  0x3003170d: 89 44 24 34                       movl    %eax, 52(%rsp)                
 28.63%  0x30031711: 48 ff c5                          incq    %rbp                          
         0x30031714: 2e 2e 2e 41 0f b6 84 24 94 00     movzbl    %cs:148(%r12), %eax         
         0x30031720: 84 c0                             testb    %al, %al                     
         0x30031722: 74 dc                             je    -36                             ; 0x30031700
         0x30031724: 41 ff d5                          callq    *%r13                        
         0x30031727: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x3003172b: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x30031733: c4 e1 fb 2a c5                    vcvtsi2sd    %rbp, %xmm0, %xmm0       
         0x30031738: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x3003173d: 48 83 c4 38                       addq    $56, %rsp                     
         0x30031741: 5b                                popq    %rbx                          
....................................................................................................
 32.85%  <total for region 2>

....[Hottest Regions]...............................................................................
 61.43%  [0x3002f6a0:0x3002f78c] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark::conditional_chain_method_calls[Falcon]
 32.85%  [0x300316dc:0x30031741] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub[Falcon]
  1.34%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.20%  [0xffffffffa9ecfb60:0xffffffffa9ecfb7c] in [unknown] ([kernel.kallsyms])
  0.19%  [0xffffffffa9eef353:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9f0711f:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9eff400:0xffffffffa9eff42d] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f686c0:0xffffffffa9f6875b] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f07065:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ee587e:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f695f6:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0800:0xffffffffa9ed0889] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28d0d1:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28ead0:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9da97a0:0xffffffffa9da97fd] in [unknown] ([kernel.kallsyms])
  2.52%  <...other 417 warm regions...>
....................................................................................................
 99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 61.43%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark::conditional_chain_method_calls[Falcon]
 32.85%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub[Falcon]
  5.27%  [unknown] ([kernel.kallsyms])
  0.26%  [unknown] (libjvm.so)
  0.02%  __errno_location (libpthread-2.31.so)
  0.02%  clock_gettime (libc-2.31.so)
  0.02%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  [unknown] ([vdso])
  0.01%  syscall (libc-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.01%  PMEM::account_enabled; PMEM::accounts (libaztall.so)
  0.01%  thread_stack_region_start (libazsys3.so)
  0.00%  az_pmem_get_account_usage_tall; az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  az_zmd_api_version_tall (libaztall.so)
  0.00%  [unknown] (libm-2.31.so)
  0.00%  [unknown] (kvm.ko)
  0.00%  az_pmem_get_account_usage (libazsys3.so)
  0.04%  <...other 20 warm methods...>
....................................................................................................
 99.99%  <totals>

....[Distribution by Area]..........................................................................
 94.28%  <generated code>
  5.27%  <native code in ([kernel.kallsyms])>
  0.26%  <native code in (libjvm.so)>
  0.06%  <native code in (libaztall.so)>
  0.05%  <native code in (libc-2.31.so)>
  0.02%  <native code in (libpthread-2.31.so)>
  0.02%  <native code in (libazsys3.so)>
  0.01%  <native code in ([vdso])>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.00%  <native code in (libm-2.31.so)>
  0.00%  <native code in (kvm.ko)>
  0.00%  <native code in (libc_hooks3.so)>
  0.00%  <native code in (perf-142904.map)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark.conditional_nested_method_calls

# Run progress: 50.00% complete, ETA 00:05:35
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.414 ns/op
# Warmup Iteration   2: 8.282 ns/op
# Warmup Iteration   3: 8.264 ns/op
# Warmup Iteration   4: 8.293 ns/op
# Warmup Iteration   5: 8.171 ns/op
Iteration   1: 7.988 ns/op
Iteration   2: 8.250 ns/op
Iteration   3: 7.836 ns/op
Iteration   4: 7.914 ns/op
Iteration   5: 8.018 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark.conditional_nested_method_calls":
  8.001 ±(99.9%) 0.601 ns/op [Average]
  (min, avg, max) = (7.836, 8.001, 8.250), stdev = 0.156
  CI (99.9%): [7.401, 8.602] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark.conditional_nested_method_calls:·asm":
PrintAssembly processed: 135391 total address lines.
Perf output processed (skipped 57.255 seconds):
 Column 1: cycles (51470 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f4a0:0x3002f511] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark::conditional_nested_method_calls[Falcon]

  0.19%  0x3002f4f3: 0f 4d d1                          cmovgel    %ecx, %edx                 
  0.75%  0x3002f4f6: 01 d0                             addl    %edx, %eax                    
  2.93%  0x3002f4f8: 59                                popq    %rcx                          
  4.49%  0x3002f4f9: c3                                retq                                  
         0x3002f4fa: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f504: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f506: eb a5                             jmp    -91                            ; 0x3002f4ad
         -----------
           # {method}{0x20002655be8} conditional_nested_method_calls[Falcon] ()I in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/LockElisionBenchmark
         Decoding CodeBlob 0x3002f400
  5.46%  0x3002f4a0: eb f9                             pushq    %rax                         
  4.72%  0x3002f4a2: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  9.31%  0x3002f4ab: 75 4d                             jne    77                             ; 0x3002f4fa
  4.60%  0x3002f4ad: 8b 47 0c                          movl    12(%rdi), %eax                
         0x3002f4b0: 01 c0                             addl    %eax, %eax                    
         0x3002f4b2: 83 f8 20                          cmpl    $32, %eax                     
         0x3002f4b5: 7e 41                             jle    65                             ; 0x3002f4f8
         0x3002f4b7: 8b 4f 10                          movl    16(%rdi), %ecx                
  4.51%  0x3002f4ba: 01 c8                             addl    %ecx, %eax                    
         0x3002f4bc: 0f 1f 40 00                       nopl    (%rax)                        
         0x3002f4c0: 83 f8 21                          cmpl    $33, %eax                     
         0x3002f4c3: 7c 33                             jl    51                              ; 0x3002f4f8
  0.51%  0x3002f4c5: 01 c8                             addl    %ecx, %eax                    
  4.13%  0x3002f4c7: 83 f8 21                          cmpl    $33, %eax                     
         0x3002f4ca: 7c 2c                             jl    44                              ; 0x3002f4f8
  0.02%  0x3002f4cc: 01 c8                             addl    %ecx, %eax                    
         0x3002f4ce: 83 f8 21                          cmpl    $33, %eax                     
         0x3002f4d1: 7c 25                             jl    37                              ; 0x3002f4f8
  0.97%  0x3002f4d3: 01 c8                             addl    %ecx, %eax                    
  3.65%  0x3002f4d5: 83 f8 21                          cmpl    $33, %eax                     
         0x3002f4d8: 7c 1e                             jl    30                              ; 0x3002f4f8
  0.36%  0x3002f4da: 01 c8                             addl    %ecx, %eax                    
  1.52%  0x3002f4dc: 0f 1f 40 00                       nopl    (%rax)                        
  2.01%  0x3002f4e0: 83 f8 21                          cmpl    $33, %eax                     
         0x3002f4e3: 7c 13                             jl    19                              ; 0x3002f4f8
  3.60%  0x3002f4e5: 01 c8                             addl    %ecx, %eax                    
  0.22%  0x3002f4e7: 83 f8 21                          cmpl    $33, %eax                     
         0x3002f4ea: 7c 0c                             jl    12                              ; 0x3002f4f8
  1.49%  0x3002f4ec: 01 c8                             addl    %ecx, %eax                    
  1.66%  0x3002f4ee: 31 d2                             xorl    %edx, %edx                    
  8.14%  0x3002f4f0: 83 f8 21                          cmpl    $33, %eax                     
  0.19%  0x3002f4f3: 0f 4d d1                          cmovgel    %ecx, %edx                 
  0.75%  0x3002f4f6: 01 d0                             addl    %edx, %eax                    
  2.93%  0x3002f4f8: 59                                popq    %rcx                          
  4.49%  0x3002f4f9: c3                                retq                                  
         0x3002f4fa: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f504: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f506: eb a5                             jmp    -91                            ; 0x3002f4ad
         0x3002f508: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x3002f50c: e9 ef ec fd ff                    jmp    -135953                        ; 0x3000e200 = StubRoutines::deoptimize
         0x3002f511: cc                                int3                                  
         Call tree size: 2
         0: caller_index: -1 bci: 0 callee: virtual jint com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark.conditional_nested_method_calls()
         1: caller_index: 0 bci: -1 callee: virtual jint com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark.sum(jint)
         Encoded locations size: 45
....................................................................................................
 65.23%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x300316dc:0x30031741] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub[Falcon]

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
  4.75%  0x30031703: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
  0.00%  0x30031708: e8 f3 c1 fd ff                    callq    -146957                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x3003170d: 89 44 24 34                       movl    %eax, 52(%rsp)                
 25.93%  0x30031711: 48 ff c5                          incq    %rbp                          
         0x30031714: 2e 2e 2e 41 0f b6 84 24 94 00     movzbl    %cs:148(%r12), %eax         
         0x30031720: 84 c0                             testb    %al, %al                     
         0x30031722: 74 dc                             je    -36                             ; 0x30031700
         0x30031724: 41 ff d5                          callq    *%r13                        
         0x30031727: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x3003172b: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x30031733: c4 e1 fb 2a c5                    vcvtsi2sd    %rbp, %xmm0, %xmm0       
         0x30031738: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x3003173d: 48 83 c4 38                       addq    $56, %rsp                     
         0x30031741: 5b                                popq    %rbx                          
....................................................................................................
 30.68%  <total for region 2>

....[Hottest Regions]...............................................................................
 65.23%  [0x3002f4a0:0x3002f511] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark::conditional_nested_method_calls[Falcon]
 30.68%  [0x300316dc:0x30031741] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub[Falcon]
  0.23%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.22%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9f0711c:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eb93b5:0xffffffffa9eb948a] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9c94c86:0xffffffffa9c94c86] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffaa28ead0:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f686c0:0xffffffffa9f6875f] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ed0816:0xffffffffa9ed0860] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ee5876:0xffffffffa9ee587e] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9f070ab:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9ed0740:0xffffffffa9ed079f] in [unknown] ([kernel.kallsyms])
  0.05%  [0x7fb2794645f8:0x7fb279464624] in [unknown] (libjvm.so)
  2.08%  <...other 351 warm regions...>
....................................................................................................
 99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 65.23%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark::conditional_nested_method_calls[Falcon]
 30.68%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub[Falcon]
  3.67%  [unknown] ([kernel.kallsyms])
  0.22%  [unknown] (libjvm.so)
  0.06%  [unknown] (liborca.so.0.0.0.0)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  az_get_elastic_tall (libaztall.so)
  0.01%  [unknown] ([vdso])
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  syscall (libc-2.31.so)
  0.00%  thread_stack_region_start@plt (libazsys3.so)
  0.00%  az_zmd_api_version_tall (libaztall.so)
  0.00%  clock_nanosleep (libc-2.31.so)
  0.00%  usleep (libc-2.31.so)
  0.00%  PMEM::account_enabled (libaztall.so)
  0.00%  sprintf (libc-2.31.so)
  0.00%  <stub: aaload  50 aaload>
  0.00%  _dl_addr (libc-2.31.so)
  0.03%  <...other 18 warm methods...>
....................................................................................................
 99.99%  <totals>

....[Distribution by Area]..........................................................................
 95.92%  <generated code>
  3.67%  <native code in ([kernel.kallsyms])>
  0.22%  <native code in (libjvm.so)>
  0.06%  <native code in (liborca.so.0.0.0.0)>
  0.04%  <native code in (libc-2.31.so)>
  0.04%  <native code in (libaztall.so)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in ([vdso])>
  0.01%  <native code in (libazsys3.so)>
  0.00%  <native code in (libstdc++.so.6)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark.nested_synchronized

# Run progress: 66.67% complete, ETA 00:03:43
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2040.757 ns/op
# Warmup Iteration   2: 1959.640 ns/op
# Warmup Iteration   3: 1953.321 ns/op
# Warmup Iteration   4: 1968.502 ns/op
# Warmup Iteration   5: 1983.733 ns/op
Iteration   1: 1982.595 ns/op
Iteration   2: 1974.570 ns/op
Iteration   3: 1959.247 ns/op
Iteration   4: 1957.175 ns/op
Iteration   5: 1958.527 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark.nested_synchronized":
  1966.423 ±(99.9%) 44.210 ns/op [Average]
  (min, avg, max) = (1957.175, 1966.423, 1982.595), stdev = 11.481
  CI (99.9%): [1922.212, 2010.633] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark.nested_synchronized:·asm":
PrintAssembly processed: 133489 total address lines.
Perf output processed (skipped 57.168 seconds):
 Column 1: cycles (53721 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x32a10595:0x32a106d1] in <stub: monitorexit  195 monitorexit>

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
  2.33%  0x32a10600: 0f b7 44 24 1a                    movzwl    26(%rsp), %eax              
  1.51%  0x32a10605: 85 c0                             testl    %eax, %eax                   
         0x32a10607: 0f 84 df 01 00 00                 je    479                             ; 0x32a107ec
  0.13%  0x32a1060d: 65 4c 8b 1c 25 c0 05 00 00        movq    %gs:1472, %r11                
  0.30%  0x32a10616: 49 83 eb 08                       subq    $8, %r11                      
  0.12%  0x32a1061a: 49 3b 0b                          cmpq    (%r11), %rcx                  
         0x32a1061d: 0f 85 92 01 00 00                 jne    402                            ; 0x32a107b5
  0.88%  0x32a10623: 65 4c 89 1c 25 c0 05 00 00        movq    %r11, %gs:1472                
         0x32a1062c: 66 83 44 24 1a ff                 addw    $-1, 26(%rsp)                 
         0x32a10632: 44 8b 19                          movl    (%rcx), %r11d                 
  0.15%  0x32a10635: 41 f7 c3 01 00 00 00              testl    $1, %r11d                    
         0x32a1063c: 74 2d                             je    45                              ; 0x32a1066b
         0x32a1063e: eb 1f                             jmp    31                             ; 0x32a1065f
  0.01%  0x32a10640: 0f b6 46 01                       movzbl    1(%rsi), %eax               
  0.01%  0x32a10644: 48 8b 4f f8                       movq    -8(%rdi), %rcx                
         0x32a10648: 48 83 ef 08                       subq    $8, %rdi                      
  0.13%  0x32a1064c: 49 bb 60 37 ae cb 3c 7f 00 00     movabsq    $139899091957600, %r11     ; 0x7f3ccbae3760 = libjvm.so
  0.00%  0x32a10656: 49 8b 04 c3                       movq    (%r11,%rax,8), %rax           
  0.01%  0x32a1065a: 48 ff c6                          incq    %rsi                          
         0x32a1065d: ff e0                             jmpq    *%rax                         
         0x32a1065f: 41 81 eb 00 00 00 10              subl    $268435456, %r11d             
         0x32a10666: 44 89 19                          movl    %r11d, (%rcx)                 
         0x32a10669: eb d5                             jmp    -43                            ; 0x32a10640
  0.00%  0x32a1066b: 49 0f ba f3 1f                    btrq    $31, %r11                     
         0x32a10670: 48 b8 40 12 71 cb 3c 7f 00 00     movabsq    $139899087950400, %rax     ; 0x7f3ccb711240 = libjvm.so
         0x32a1067a: 4c 8b 08                          movq    (%rax), %r9                   
  0.13%  0x32a1067d: 4d 03 d9                          addq    %r9, %r11                     
         0x32a10680: 41 83 bb b8 00 00 00 0a           cmpl    $10, 184(%r11)                
  0.51%  0x32a10688: 75 3e                             jne    62                             ; 0x32a106c8
  0.13%  0x32a1068a: 41 83 3b 01                       cmpl    $1, (%r11)                    
  0.02%  0x32a1068e: 74 06                             je    6                               ; 0x32a10696
  0.04%  0x32a10690: 41 83 2b 01                       subl    $1, (%r11)                    
  0.12%  0x32a10694: eb aa                             jmp    -86                            ; 0x32a10640
  0.01%  0x32a10696: 4d 8b 4b 58                       movq    88(%r11), %r9                 
         0x32a1069a: 4d 0b 4b 48                       orq    72(%r11), %r9                  
  0.01%  0x32a1069e: 4d 85 c9                          testq    %r9, %r9                     
         0x32a106a1: 75 09                             jne    9                              ; 0x32a106ac
  0.02%  0x32a106a3: 45 33 c9                          xorl    %r9d, %r9d                    
  0.00%  0x32a106a6: 4d 89 4b 28                       movq    %r9, 40(%r11)                 
         0x32a106aa: eb 94                             jmp    -108                           ; 0x32a10640
         0x32a106ac: 4d 8b 4b 60                       movq    96(%r11), %r9                 
         0x32a106b0: 4d 85 c9                          testq    %r9, %r9                     
         0x32a106b3: 74 13                             je    19                              ; 0x32a106c8
         0x32a106b5: 49 c7 43 28 00 00 00 00           movq    $0, 40(%r11)                  
         0x32a106bd: f0                                lock                                  
         0x32a106be: 48 83 04 24 00                    addq    $0, (%rsp)                    
         0x32a106c3: e9 78 ff ff ff                    jmp    -136                           ; 0x32a10640
         0x32a106c8: 65 48 89 3c 25 48 00 00 00        movq    %rdi, %gs:72                  ; thread:[72] = _jexstk_top
         0x32a106d1: 89 54 24 10                       movl    %edx, 16(%rsp)                
....................................................................................................
  6.58%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x32a12004:0x32a120d7] in <stub: fast_iaccess_0  221 fast_iaccess_0>

         0x32a12004: 48 89 0f                          movq    %rcx, (%rdi)                  
         0x32a12007: 48 83 c7 08                       addq    $8, %rdi                      
         0x32a1200b: 49 bb 60 37 ae cb 3c 7f 00 00     movabsq    $139899091957600, %r11     ; 0x7f3ccbae3760 = libjvm.so
         0x32a12015: 49 8b 04 c3                       movq    (%r11,%rax,8), %rax           
         0x32a12019: 48 ff c6                          incq    %rsi                          
         0x32a1201c: 48 8b 0a                          movq    (%rdx), %rcx                  
         0x32a1201f: ff e0                             jmpq    *%rax                         
         0x32a12021: 0f 1f 80 00 00 00 00              nopl    (%rax)                        
         ----------------------------------------------------------------------
         fast_iaccess_0  221 fast_iaccess_0  [ 0x0000000032a12040 - 0x0000000032a1207f ]  64 bytes
  2.20%  0x32a12040: 48 89 0f                          movq    %rcx, (%rdi)                  
  1.83%  0x32a12043: 48 83 c7 08                       addq    $8, %rdi                      
         0x32a12047: 44 0f b7 56 02                    movzwl    2(%rsi), %r10d              
         0x32a1204c: 41 c1 e2 05                       shll    $5, %r10d                     
         0x32a12050: 0f b6 46 04                       movzbl    4(%rsi), %eax               
  0.18%  0x32a12054: 4c 8b 0a                          movq    (%rdx), %r9                   
         0x32a12057: 47 8b 54 10 28                    movl    40(%r8,%r10), %r10d           
  0.96%  0x32a1205c: 48 ff c6                          incq    %rsi                          
         0x32a1205f: 4b 63 0c 11                       movslq    (%r9,%r10), %rcx            
  1.20%  0x32a12063: 48 ff ce                          decq    %rsi                          
         0x32a12066: 49 bb 60 37 ae cb 3c 7f 00 00     movabsq    $139899091957600, %r11     ; 0x7f3ccbae3760 = libjvm.so
  0.00%  0x32a12070: 49 8b 04 c3                       movq    (%r11,%rax,8), %rax           
         0x32a12074: 48 83 c6 04                       addq    $4, %rsi                      
  0.17%  0x32a12078: ff e0                             jmpq    *%rax                         
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
  6.54%  <total for region 2>

....[Hottest Region 3]..............................................................................
 [0x32a1030f:0x32a1046f] in <stub: monitorenter  194 monitorenter>

         0x32a1030f: e9 87 fd ff ff                    jmp    -633                           ; 0x32a1009b
         0x32a10314: b9 01 00 00 00                    movl    $1, %ecx                      
         0x32a10319: 0f b6 46 03                       movzbl    3(%rsi), %eax               
         0x32a1031d: 49 bb 60 37 ae cb 3c 7f 00 00     movabsq    $139899091957600, %r11     ; 0x7f3ccbae3760 = libjvm.so
         0x32a10327: 49 8b 04 c3                       movq    (%r11,%rax,8), %rax           
         0x32a1032b: 48 83 c6 03                       addq    $3, %rsi                      
         0x32a1032f: ff e0                             jmpq    *%rax                         
         0x32a10331: 0f 1f 80 00 00 00 00              nopl    (%rax)                        
         ----------------------------------------------------------------------
         monitorenter  194 monitorenter  [ 0x0000000032a10380 - 0x0000000032a105b7 ]  568 bytes
  2.08%  0x32a10380: 83 39 00                          cmpl    $0, (%rcx)                    
  1.69%  0x32a10383: 65 48 8b 04 25 c0 05 00 00        movq    %gs:1472, %rax                
  0.16%  0x32a1038c: 65 48 3b 04 25 c8 05 00 00        cmpq    %gs:1480, %rax                
         0x32a10395: 7d 7d                             jge    125                            ; 0x32a10414
  0.31%  0x32a10397: 48 89 08                          movq    %rcx, (%rax)                  
  0.59%  0x32a1039a: 48 83 c0 08                       addq    $8, %rax                      
         0x32a1039e: 65 48 89 04 25 c0 05 00 00        movq    %rax, %gs:1472                
  0.14%  0x32a103a7: 66 83 44 24 1a 01                 addw    $1, 26(%rsp)                  
  0.11%  0x32a103ad: 65 44 8b 0c 25 1c 02 00 00        movl    %gs:540, %r9d                 ; thread:[540] = _reversible_tid
  0.00%  0x32a103b6: 48 8b 01                          movq    (%rcx), %rax                  
  0.08%  0x32a103b9: a9 00 00 00 70                    testl    $1879048192, %eax            
         0x32a103be: 74 63                             je    99                              ; 0x32a10423
  0.00%  0x32a103c0: a9 01 00 00 00                    testl    $1, %eax                     
         0x32a103c5: 74 7d                             je    125                             ; 0x32a10444
  0.06%  0x32a103c7: 44 33 c8                          xorl    %eax, %r9d                    
         0x32a103ca: 41 f7 c1 ff ff ff 0f              testl    $268435455, %r9d             
         0x32a103d1: 0f 85 f4 00 00 00                 jne    244                            ; 0x32a104cb
  0.08%  0x32a103d7: 41 b9 00 00 00 70                 movl    $1879048192, %r9d             
  0.00%  0x32a103dd: 4c 0b c8                          orq    %rax, %r9                      
  0.05%  0x32a103e0: 4c 3b c8                          cmpq    %rax, %r9                     
         0x32a103e3: 48 8d 80 00 00 00 10              leaq    268435456(%rax), %rax         
  0.10%  0x32a103ea: 75 32                             jne    50                             ; 0x32a1041e
  0.05%  0x32a103ec: e9 da 00 00 00                    jmp    218                            ; 0x32a104cb
  0.07%  0x32a103f1: 4c 8b 04 24                       movq    (%rsp), %r8                   
  0.00%  0x32a103f5: 0f b6 46 01                       movzbl    1(%rsi), %eax               
  0.04%  0x32a103f9: 48 8b 4f f8                       movq    -8(%rdi), %rcx                
  0.04%  0x32a103fd: 48 83 ef 08                       subq    $8, %rdi                      
  0.07%  0x32a10401: 49 bb 60 37 ae cb 3c 7f 00 00     movabsq    $139899091957600, %r11     ; 0x7f3ccbae3760 = libjvm.so
  0.00%  0x32a1040b: 49 8b 04 c3                       movq    (%r11,%rax,8), %rax           
  0.20%  0x32a1040f: 48 ff c6                          incq    %rsi                          
  0.06%  0x32a10412: ff e0                             jmpq    *%rax                         
         0x32a10414: e8 e7 4b 60 fd                    callq    -44020761                    ; 0x30015000 = StubRoutines::extend_lckstk
         0x32a10419: e9 79 ff ff ff                    jmp    -135                           ; 0x32a10397
  0.00%  0x32a1041e: 48 89 01                          movq    %rax, (%rcx)                  
  0.06%  0x32a10421: eb ce                             jmp    -50                            ; 0x32a103f1
  0.00%  0x32a10423: 49 89 c0                          movq    %rax, %r8                     
  0.01%  0x32a10426: 49 81 e0 00 00 00 f0              andq    $-268435456, %r8              
         0x32a1042d: 49 81 c9 00 00 00 10              orq    $268435456, %r9                
  0.01%  0x32a10434: 4d 0b c8                          orq    %r8, %r9                       
  0.00%  0x32a10437: f0                                lock                                  
         0x32a10438: 4c 0f b1 09                       cmpxchgq    %r9, (%rcx)               
  0.40%  0x32a1043c: 0f 85 6b ff ff ff                 jne    -149                           ; 0x32a103ad
         0x32a10442: eb ad                             jmp    -83                            ; 0x32a103f1
         0x32a10444: 49 b8 40 12 71 cb 3c 7f 00 00     movabsq    $139899087950400, %r8      ; 0x7f3ccb711240 = libjvm.so
         0x32a1044e: 4d 8b 08                          movq    (%r8), %r9                    
         0x32a10451: 41 89 c0                          movl    %eax, %r8d                    
         0x32a10454: 49 0f ba f0 1f                    btrq    $31, %r8                      
         0x32a10459: 4d 03 c1                          addq    %r9, %r8                      
         0x32a1045c: 41 83 b8 b8 00 00 00 0a           cmpl    $10, 184(%r8)                 
         0x32a10464: 75 65                             jne    101                            ; 0x32a104cb
         0x32a10466: 65 4c 8b 0c 25 40 00 00 00        movq    %gs:64, %r9                   ; thread:[64] = _current_thread
         0x32a1046f: 4d 3b 48 28                       cmpq    40(%r8), %r9                  
....................................................................................................
  6.47%  <total for region 3>

....[Hottest Regions]...............................................................................
  6.58%  [0x32a10595:0x32a106d1] in <stub: monitorexit  195 monitorexit>
  6.54%  [0x32a12004:0x32a120d7] in <stub: fast_iaccess_0  221 fast_iaccess_0>
  6.47%  [0x32a1030f:0x32a1046f] in <stub: monitorenter  194 monitorenter>
  4.64%  [0x32a07cc0:0x32a07d5a] in <stub: dup  89 dup>
  4.35%  [0x32a05844:0x32a058d5] in <stub: iload_1  27 iload_1>
  4.34%  [0x32a05ec4:0x32a05f55] in <stub: aload_2  44 aload_2>
  3.94%  [0x32a069d6:0x32a06a6a] in <stub: istore_1  60 istore_1>
  3.78%  [0x32a05781:0x32a0580a] in <stub: aload  25 aload>
  3.62%  [0x32a0cbf8:0x32a0cc75] in <stub: goto  167 goto>
  3.58%  [0x32a0681f:0x32a068b4] in <stub: astore  58 astore>
  3.18%  [0x32a07f44:0x32a07fe0] in <stub: iadd  96 iadd>
  2.12%  [0x7f3cc92405b0:0x7f3cc92405dc] in is_thread_initialized (libazsys3.so)
  1.68%  [0x7f3cc9aecd80:0x7f3cc9aecdd8] in [unknown] (libjvm.so)
  1.59%  [0x7f3cca333800:0x7f3cca3338e1] in [unknown] (libjvm.so)
  1.52%  [0x32a0cd75:0x32a0cdfb] in <stub: goto  167 goto>
  1.50%  [0x7f3cc923fee0:0x7f3cc923feef] in thread_stack_region_start (libazsys3.so)
  1.43%  [0x7f3cca377ca1:0x7f3cca377d68] in [unknown] (libjvm.so)
  1.36%  [0x7f3cca331a40:0x7f3cca331ac6] in [unknown] (libjvm.so)
  1.33%  [0x32a06a5a:0x32a06b0b] in <stub: istore_1  60 istore_1>
  1.27%  [0x7f3cca041900:0x7f3cca041a15] in [unknown] (libjvm.so)
 35.17%  <...other 510 warm regions...>
....................................................................................................
 99.98%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 26.13%  [unknown] (libjvm.so)
  7.18%  <stub: monitorenter  194 monitorenter>
  6.58%  <stub: monitorexit  195 monitorexit>
  6.54%  <stub: fast_iaccess_0  221 fast_iaccess_0>
  5.27%  <stub: istore_1  60 istore_1>
  5.14%  <stub: goto  167 goto>
  4.64%  <stub: dup  89 dup>
  4.35%  <stub: iload_1  27 iload_1>
  4.34%  <stub: aload_2  44 aload_2>
  4.20%  <stub: astore  58 astore>
  3.78%  <stub: aload  25 aload>
  3.74%  [unknown] ([kernel.kallsyms])
  3.18%  <stub: iadd  96 iadd>
  2.12%  is_thread_initialized (libazsys3.so)
  2.10%  <stub: method entry point (kind = zerolocals)>
  1.50%  thread_stack_region_start (libazsys3.so)
  1.01%  <stub: invokespecial  183 invokespecial>
  0.94%  <stub: new  187 new>
  0.78%  [unknown] (perf-143166.map)
  0.75%  StubRoutines::shared_runtime_monitorenter_stub
  5.72%  <...other 46 warm methods...>
....................................................................................................
 99.98%  <totals>

....[Distribution by Area]..........................................................................
 65.29%  <generated code>
 26.13%  <native code in (libjvm.so)>
  3.86%  <native code in (libazsys3.so)>
  3.74%  <native code in ([kernel.kallsyms])>
  0.78%  <native code in (perf-143166.map)>
  0.10%  <native code in (libaztall.so)>
  0.05%  <native code in (libc-2.31.so)>
  0.03%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.00%  <native code in (libstdc++.so.6)>
....................................................................................................
 99.98%  <totals>



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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark.recursive_method_calls

# Run progress: 83.33% complete, ETA 00:01:51
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 16.947 ns/op
# Warmup Iteration   2: 16.937 ns/op
# Warmup Iteration   3: 17.196 ns/op
# Warmup Iteration   4: 17.268 ns/op
# Warmup Iteration   5: 17.309 ns/op
Iteration   1: 17.275 ns/op
Iteration   2: 17.266 ns/op
Iteration   3: 17.300 ns/op
Iteration   4: 17.227 ns/op
Iteration   5: 17.281 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark.recursive_method_calls":
  17.270 ±(99.9%) 0.104 ns/op [Average]
  (min, avg, max) = (17.227, 17.270, 17.300), stdev = 0.027
  CI (99.9%): [17.165, 17.374] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark.recursive_method_calls:·asm":
PrintAssembly processed: 133420 total address lines.
Perf output processed (skipped 56.544 seconds):
 Column 1: cycles (51401 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f4a0:0x3002f4fe] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark::recursiveSum[Falcon]

 13.45%  0x3002f4e6: c3                                retq                                  
         0x3002f4e7: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f4f1: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f4f3: eb bc                             jmp    -68                            ; 0x3002f4b1
         5.865:  243         3 enqueued  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub (Lorg/openjdk/jmh/runner/InfraControl;Lorg/openjdk/jmh/results/RawResults;Lorg/openjdk/jmh/infra/BenchmarkParams;Lorg/openjdk/jmh/infra/IterationParams;Lorg/openjdk/jmh/infra/ThreadParams;Lorg/openjdk/jmh/infra/Blackhole;Lorg/openjdk/jmh/infra/Control;ILcom/ionutbalosin/jvm/performance/benchmarks/micro/compiler/jmh_generated/LockElisionBenchmark_jmhType;)V (tid 143330) (kid 1412 pkid/prev 1388/NA) (mid 1445894 pmid 18277) (bytes 57) (generation 0) (lvl O2) (score 0) (score_updated 0ms; orig 0; promoted 0) (rank 0, time-between-promotions 6ms) (wait 0ms)
         5.866:  244    %    3 enqueued  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub (Lorg/openjdk/jmh/runner/InfraControl;Lorg/openjdk/jmh/results/RawResults;Lorg/openjdk/jmh/infra/BenchmarkParams;Lorg/openjdk/jmh/infra/IterationParams;Lorg/openjdk/jmh/infra/ThreadParams;Lorg/openjdk/jmh/infra/Blackhole;Lorg/openjdk/jmh/infra/Control;ILcom/ionutbalosin/jvm/performance/benchmarks/micro/compiler/jmh_generated/LockElisionBenchmark_jmhType;)V @ 13 (tid 143330) (kid 1412 pkid/prev 1388/NA) (mid 1445894 pmid 18277) (bytes 57) (generation 0) (lvl O0) (score 0) (score_updated 0ms; orig 0; promoted 0) (rank 0, time-between-promotions 6ms) (wait 0ms)
         5.866:  243         3 started   com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub (Lorg/openjdk/jmh/runner/InfraControl;Lorg/openjdk/jmh/results/RawResults;Lorg/openjdk/jmh/infra/BenchmarkParams;Lorg/openjdk/jmh/infra/IterationParams;Lorg/openjdk/jmh/infra/ThreadParams;Lorg/openjdk/jmh/infra/Blackhole;Lorg/openjdk/jmh/infra/Control;ILcom/ionutbalosin/jvm/performance/benchmarks/micro/compiler/jmh_generated/LockElisionBenchmark_jmhType;)V (tid 143329) (kid 1412 pkid/prev 1388/NA) (mid 1445894 pmid 18277) (bytes 57) (generation 0) (lvl O2) (score 0) (score_updated 0ms; orig 0; promoted 0) (rank 0, time-between-promotions 6ms) (wait 0ms)
         -----------
           # {method}{0x20002656260} recursiveSum[Falcon] (II)I in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/LockElisionBenchmark
         Decoding CodeBlob 0x3002f400
  0.19%  0x3002f4a0: eb f9                             pushq    %rbx                         
  2.18%  0x3002f4a2: 48 83 ec 30                       subq    $48, %rsp                     
  2.21%  0x3002f4a6: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  2.14%  0x3002f4af: 75 36                             jne    54                             ; 0x3002f4e7
  3.58%  0x3002f4b1: 85 d2                             testl    %edx, %edx                   
         0x3002f4b3: 74 2a                             je    42                              ; 0x3002f4df
         0x3002f4b5: 8b 5f 10                          movl    16(%rdi), %ebx                
  0.04%  0x3002f4b8: 83 fa 01                          cmpl    $1, %edx                      
         0x3002f4bb: 74 20                             je    32                              ; 0x3002f4dd
         0x3002f4bd: 0f 1f 00                          nopl    (%rax)                        
  2.19%  0x3002f4c0: 83 fa 02                          cmpl    $2, %edx                      
         0x3002f4c3: 74 16                             je    22                              ; 0x3002f4db
         0x3002f4c5: 83 fa 03                          cmpl    $3, %edx                      
         0x3002f4c8: 74 0f                             je    15                              ; 0x3002f4d9
  0.05%  0x3002f4ca: 83 c2 fc                          addl    $-4, %edx                     
         0x3002f4cd: 0f 1f 00                          nopl    (%rax)                        
  3.04%  0x3002f4d0: e8 2b e4 fd ff                    callq    -138197                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  0.38%  0x3002f4d5: 89 c6                             movl    %eax, %esi                    
  0.08%  0x3002f4d7: 01 de                             addl    %ebx, %esi                    
  2.71%  0x3002f4d9: 01 de                             addl    %ebx, %esi                    
  1.68%  0x3002f4db: 01 de                             addl    %ebx, %esi                    
  2.33%  0x3002f4dd: 01 de                             addl    %ebx, %esi                    
  2.73%  0x3002f4df: 89 f0                             movl    %esi, %eax                    
  0.59%  0x3002f4e1: 48 83 c4 30                       addq    $48, %rsp                     
  0.02%  0x3002f4e5: 5b                                popq    %rbx                          
 13.45%  0x3002f4e6: c3                                retq                                  
         0x3002f4e7: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f4f1: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f4f3: eb bc                             jmp    -68                            ; 0x3002f4b1
         0x3002f4f5: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x3002f4f9: e9 02 ed fd ff                    jmp    -135934                        ; 0x3000e200 = StubRoutines::deoptimize
         0x3002f4fe: cc                                int3                                  
         Call tree size: 4
         0: caller_index: -1 bci: 0 callee: virtual jint com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark.recursiveSum(jint, jint)
         1: caller_index: 0 bci: 0 callee: virtual jint com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark.recursiveSum(jint, jint)
         2: caller_index: 1 bci: 0 callee: virtual jint com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark.recursiveSum(jint, jint)
....................................................................................................
 39.60%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x3002f8a0:0x3002f8e5] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark::recursive_method_calls[Falcon]

  2.17%  0x3002f8c5: 8d 04 98                          leal    (%rax,%rbx,4), %eax           
  6.27%  0x3002f8c8: 48 83 c4 30                       addq    $48, %rsp                     
  1.03%  0x3002f8cc: 5b                                popq    %rbx                          
  9.67%  0x3002f8cd: c3                                retq                                  
         0x3002f8ce: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f8d8: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f8da: eb d5                             jmp    -43                            ; 0x3002f8b1
         -----------
           # {method}{0x20002655500} recursive_method_calls[Falcon] ()I in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/LockElisionBenchmark
         Decoding CodeBlob 0x3002f800
  0.12%  0x3002f8a0: eb f9                             pushq    %rbx                         
  2.38%  0x3002f8a2: 48 83 ec 30                       subq    $48, %rsp                     
  0.04%  0x3002f8a6: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  2.57%  0x3002f8af: 75 1d                             jne    29                             ; 0x3002f8ce
  2.14%  0x3002f8b1: 8b 77 0c                          movl    12(%rdi), %esi                
         0x3002f8b4: 01 f6                             addl    %esi, %esi                    
  0.04%  0x3002f8b6: 8b 5f 10                          movl    16(%rdi), %ebx                
         0x3002f8b9: ba 04 00 00 00                    movl    $4, %edx                      
  2.17%  0x3002f8be: 66 90                             nop                                   
         0x3002f8c0: e8 3b e0 fd ff                    callq    -139205                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  2.17%  0x3002f8c5: 8d 04 98                          leal    (%rax,%rbx,4), %eax           
  6.27%  0x3002f8c8: 48 83 c4 30                       addq    $48, %rsp                     
  1.03%  0x3002f8cc: 5b                                popq    %rbx                          
  9.67%  0x3002f8cd: c3                                retq                                  
         0x3002f8ce: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f8d8: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f8da: eb d5                             jmp    -43                            ; 0x3002f8b1
         0x3002f8dc: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x3002f8e0: e9 1b e9 fd ff                    jmp    -136933                        ; 0x3000e200 = StubRoutines::deoptimize
         0x3002f8e5: cc                                int3                                  
         Call tree size: 5
         0: caller_index: -1 bci: 0 callee: virtual jint com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark.recursive_method_calls()
         1: caller_index: 0 bci: 0 callee: virtual jint com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark.recursiveSum(jint, jint)
         2: caller_index: 1 bci: 0 callee: virtual jint com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark.recursiveSum(jint, jint)
....................................................................................................
 28.58%  <total for region 2>

....[Hottest Region 3]..............................................................................
 [0x30031adc:0x30031b44] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub[Falcon]

         0x30031adc: 48 89 43 20                       movq    %rax, 32(%rbx)                
         0x30031ae0: 4d 85 f6                          testq    %r14, %r14                   
         0x30031ae3: 0f 84 86 00 00 00                 je    134                             ; 0x30031b6f
         0x30031ae9: 4d 85 ff                          testq    %r15, %r15                   
         0x30031aec: 0f 84 8f 00 00 00                 je    143                             ; 0x30031b81
         0x30031af2: 4d 85 e4                          testq    %r12, %r12                   
         0x30031af5: 0f 84 a4 00 00 00                 je    164                             ; 0x30031b9f
         0x30031afb: 31 ed                             xorl    %ebp, %ebp                    
         0x30031afd: 0f 1f 00                          nopl    (%rax)                        
         0x30031b00: 4c 89 f7                          movq    %r14, %rdi                    
  2.13%  0x30031b03: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30031b08: e8 f3 bd fd ff                    callq    -147981                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  2.24%  0x30031b0d: 89 44 24 34                       movl    %eax, 52(%rsp)                
 23.30%  0x30031b11: 48 ff c5                          incq    %rbp                          
         0x30031b14: 2e 2e 2e 41 0f b6 84 24 94 00     movzbl    %cs:148(%r12), %eax         
  0.00%  0x30031b20: 84 c0                             testb    %al, %al                     
         0x30031b22: 74 dc                             je    -36                             ; 0x30031b00
         0x30031b24: 41 ff d5                          callq    *%r13                        
         0x30031b27: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x30031b2b: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x30031b33: c4 e1 fb 2a c5                    vcvtsi2sd    %rbp, %xmm0, %xmm0       
         0x30031b38: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x30031b3d: 48 83 c4 38                       addq    $56, %rsp                     
         0x30031b41: 5b                                popq    %rbx                          
         0x30031b42: 41 5c                             popq    %r12                          
         0x30031b44: 41 5d                             popq    %r13                          
....................................................................................................
 27.68%  <total for region 3>

....[Hottest Regions]...............................................................................
 39.60%  [0x3002f4a0:0x3002f4fe] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark::recursiveSum[Falcon]
 28.58%  [0x3002f8a0:0x3002f8e5] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark::recursive_method_calls[Falcon]
 27.68%  [0x30031adc:0x30031b44] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub[Falcon]
  0.21%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9f0711c:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb8dcf:0xffffffffa9eb8de6] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eef5b2:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eb93b5:0xffffffffa9eb9441] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eef3d6:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eef44f:0xffffffffa9eef4b0] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eee5d0:0xffffffffa9eee62f] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ed0800:0xffffffffa9ed0889] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ee587e:0xffffffffa9ee58a7] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffaa28d0d0:0xffffffffaa28d127] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28ead0:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0740:0xffffffffa9ed07b2] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eef310:0xffffffffa9eef3b4] in [unknown] ([kernel.kallsyms])
  2.32%  <...other 376 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 39.60%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark::recursiveSum[Falcon]
 28.58%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockElisionBenchmark::recursive_method_calls[Falcon]
 27.68%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub[Falcon]
  3.78%  [unknown] ([kernel.kallsyms])
  0.25%  [unknown] (libjvm.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  memcpy (libc-2.31.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  az_get_elastic_tall (libaztall.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  PMEM::account_enabled (libaztall.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  <stub: method entry point (kind = zerolocals)>
  0.00%  PMEM::get_account_usage (libaztall.so)
  0.00%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  VMEM::get_account_usage (libaztall.so)
  0.00%  _dl_addr (libc-2.31.so)
  0.00%  thread_stack_region_start@plt (libazsys3.so)
  0.02%  <...other 12 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.87%  <generated code>
  3.78%  <native code in ([kernel.kallsyms])>
  0.25%  <native code in (libjvm.so)>
  0.04%  <native code in (libc-2.31.so)>
  0.03%  <native code in (libaztall.so)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.00%  <native code in (kvm.ko)>
  0.00%  <native code in (libstdc++.so.6)>
  0.00%  <native code in ([vdso])>
....................................................................................................
100.00%  <totals>



# Run complete. Total time: 00:11:10

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

Benchmark                                                  Mode  Cnt     Score    Error  Units
LockElisionBenchmark.baseline                              avgt    5     5.415 ±  0.004  ns/op
LockElisionBenchmark.baseline:·asm                         avgt            NaN             ---
LockElisionBenchmark.chain_method_calls                    avgt    5     5.415 ±  0.001  ns/op
LockElisionBenchmark.chain_method_calls:·asm               avgt            NaN             ---
LockElisionBenchmark.conditional_chain_method_calls        avgt    5     8.535 ±  0.116  ns/op
LockElisionBenchmark.conditional_chain_method_calls:·asm   avgt            NaN             ---
LockElisionBenchmark.conditional_nested_method_calls       avgt    5     8.001 ±  0.601  ns/op
LockElisionBenchmark.conditional_nested_method_calls:·asm  avgt            NaN             ---
LockElisionBenchmark.nested_synchronized                   avgt    5  1966.423 ± 44.210  ns/op
LockElisionBenchmark.nested_synchronized:·asm              avgt            NaN             ---
LockElisionBenchmark.recursive_method_calls                avgt    5    17.270 ±  0.104  ns/op
LockElisionBenchmark.recursive_method_calls:·asm           avgt            NaN             ---
