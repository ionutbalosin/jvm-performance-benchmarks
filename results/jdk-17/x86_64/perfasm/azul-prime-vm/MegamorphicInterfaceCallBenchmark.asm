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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MONOMORPHIC)

# Run progress: 0.00% complete, ETA 00:23:20
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.090 ns/op
# Warmup Iteration   2: 1.068 ns/op
# Warmup Iteration   3: 1.068 ns/op
# Warmup Iteration   4: 1.068 ns/op
# Warmup Iteration   5: 1.068 ns/op
Iteration   1: 1.068 ns/op
Iteration   2: 1.068 ns/op
Iteration   3: 1.068 ns/op
Iteration   4: 1.068 ns/op
Iteration   5: 1.068 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic":
  1.068 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (1.068, 1.068, 1.068), stdev = 0.001
  CI (99.9%): [1.068, 1.068] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 136531 total address lines.
Perf output processed (skipped 56.569 seconds):
 Column 1: cycles (51462 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3003084e:0x30030c6b] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]

         0x3003084e: 00 80 66 66 66 0f                 addb    %al, 258369126(%rax)          
         0x30030854:                                                                         
         Call tree size: 1
         0: caller_index: -1 bci: -1 callee: virtual void com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.setInstanceIndex(jint, jint)
         Encoded locations size: 4
         offset: 0 length: 2444 scope: 0 bci: 0
         <nmethodAdapter compile_id='237' level='2' size='40' address='0x00007f6c18169990' dependencies_offset='32' stamp='85335.074'/>
         5.834:  237         3 inlining into com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::setInstanceIndex (II)V (tid 144806) (kid 1447 pkid/prev 1423/NA) (mid 1481730 pmid 18437) (bytes 24) (generation 0) (lvl O2) (score 0) (score_updated 15ms; orig 0; promoted 0) (rank 0, time-between-promotions 3ms) (wait 15ms)
           # {method}{0x20002659268} devirtualize_to_monomorphic[Falcon] ()V in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicInterfaceCallBenchmark
         Decoding CodeBlob 0x30030a00
  0.00%  0x30030aa0: eb f9                             pushq    %r15                         
         0x30030aa2: 41 56                             pushq    %r14                         
         0x30030aa4: 41 54                             pushq    %r12                         
         0x30030aa6: 53                                pushq    %rbx                         
  0.00%  0x30030aa7: 50                                pushq    %rax                         
         0x30030aa8: 49 89 f8                          movq    %rdi, %r8                     
         0x30030aab: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
         0x30030ab4: 0f 85 13 02 00 00                 jne    531                            ; 0x30030ccd
  0.00%  0x30030aba: 49 8b 48 10                       movq    16(%r8), %rcx                 
         0x30030abe: b8 48 00 f8 2f                    movl    $804782152, %eax              ; 804782152 = clearable_gc_phase_trap_mask
         0x30030ac3: 4c 8b 10                          movq    (%rax), %r10                  
         0x30030ac6: 49 85 ca                          testq    %rcx, %r10                   
         0x30030ac9: 0f 85 0f 02 00 00                 jne    527                            ; 0x30030cde
  0.01%  0x30030acf: 49 8b 50 08                       movq    8(%r8), %rdx                  
         0x30030ad3: 49 85 d2                          testq    %rdx, %r10                   
         0x30030ad6: 0f 85 1d 02 00 00                 jne    541                            ; 0x30030cf9
  0.00%  0x30030adc: 48 b8 10 c8 ff 2c 00 00 00 00     movabsq    $754960400, %rax           ; 0x2cffc810 = 
         0x30030ae6: 4c 8b 00                          movq    (%rax), %r8                   
  0.00%  0x30030ae9: 4d 85 c2                          testq    %r8, %r10                    
         0x30030aec: 0f 85 25 02 00 00                 jne    549                            ; 0x30030d17
  0.00%  0x30030af2: 8b 5a 08                          movl    8(%rdx), %ebx                 
  0.06%  0x30030af5: 48 85 c9                          testq    %rcx, %rcx                   
         0x30030af8: 0f 84 4c 02 00 00                 je    588                             ; 0x30030d4a
         0x30030afe: 81 79 08 20 1c 00 00              cmpl    $7200, 8(%rcx)                
         0x30030b05: 0f 82 56 02 00 00                 jb    598                             ; 0x30030d61
         0x30030b0b: 45 8b 58 08                       movl    8(%r8), %r11d                 
  0.01%  0x30030b0f: 4c 8d 4a 28                       leaq    40(%rdx), %r9                 
         0x30030b13: 49 c7 c6 ff ff ff ff              movq    $-1, %r14                     
         0x30030b1a: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
  2.10%  0x30030b20: 4d 8d 7e 01                       leaq    1(%r14), %r15                 
  2.22%  0x30030b24: 49 39 df                          cmpq    %rbx, %r15                    
         0x30030b27: 0f 83 39 02 00 00                 jae    569                            ; 0x30030d66
  2.15%  0x30030b2d: 4a 8b 44 f2 18                    movq    24(%rdx,%r14,8), %rax         
  2.26%  0x30030b32: 49 85 c2                          testq    %rax, %r10                   
         0x30030b35: 0f 85 03 01 00 00                 jne    259                            ; 0x30030c3e
  2.42%  0x30030b3b: 42 0f b6 74 31 11                 movzbl    17(%rcx,%r14), %esi         
  2.30%  0x30030b41: 40 84 f6                          testb    %sil, %sil                   
         0x30030b44: 0f 85 5b 01 00 00                 jne    347                            ; 0x30030ca5
  2.08%  0x30030b4a: 48 85 c0                          testq    %rax, %rax                   
         0x30030b4d: 0f 84 68 01 00 00                 je    360                             ; 0x30030cbb
  2.17%  0x30030b53: 43 8d 04 33                       leal    (%r11,%r14), %eax             
  2.17%  0x30030b57: 83 c0 02                          addl    $2, %eax                      
  2.03%  0x30030b5a: 41 89 40 08                       movl    %eax, 8(%r8)                  
  2.02%  0x30030b5e: 4d 8d 7e 02                       leaq    2(%r14), %r15                 
  2.33%  0x30030b62: 49 39 df                          cmpq    %rbx, %r15                    
         0x30030b65: 0f 83 fb 01 00 00                 jae    507                            ; 0x30030d66
  2.20%  0x30030b6b: 4a 8b 44 f2 20                    movq    32(%rdx,%r14,8), %rax         
  2.16%  0x30030b70: 49 85 c2                          testq    %rax, %r10                   
         0x30030b73: 0f 85 de 00 00 00                 jne    222                            ; 0x30030c57
  2.03%  0x30030b79: 2e 42 0f b6 74 31 12              movzbl    %cs:18(%rcx,%r14), %esi     
  2.50%  0x30030b80: 40 84 f6                          testb    %sil, %sil                   
         0x30030b83: 0f 85 1c 01 00 00                 jne    284                            ; 0x30030ca5
  2.30%  0x30030b89: 48 85 c0                          testq    %rax, %rax                   
         0x30030b8c: 0f 84 29 01 00 00                 je    297                             ; 0x30030cbb
  2.20%  0x30030b92: 43 8d 04 33                       leal    (%r11,%r14), %eax             
  2.09%  0x30030b96: 83 c0 03                          addl    $3, %eax                      
  2.21%  0x30030b99: 41 89 40 08                       movl    %eax, 8(%r8)                  
  2.34%  0x30030b9d: 4d 8d 7e 03                       leaq    3(%r14), %r15                 
  2.04%  0x30030ba1: 49 39 df                          cmpq    %rbx, %r15                    
         0x30030ba4: 0f 83 bc 01 00 00                 jae    444                            ; 0x30030d66
  2.11%  0x30030baa: 4a 8b 44 f2 28                    movq    40(%rdx,%r14,8), %rax         
  3.12%  0x30030baf: 49 85 c2                          testq    %rax, %r10                   
         0x30030bb2: 0f 85 b8 00 00 00                 jne    184                            ; 0x30030c70
  2.76%  0x30030bb8: 2e 2e 42 0f b6 74 31 13           movzbl    %cs:19(%rcx,%r14), %esi     
  2.00%  0x30030bc0: 40 84 f6                          testb    %sil, %sil                   
         0x30030bc3: 0f 85 dc 00 00 00                 jne    220                            ; 0x30030ca5
  1.83%  0x30030bc9: 48 85 c0                          testq    %rax, %rax                   
         0x30030bcc: 0f 84 e9 00 00 00                 je    233                             ; 0x30030cbb
  2.22%  0x30030bd2: 43 8d 04 33                       leal    (%r11,%r14), %eax             
  2.53%  0x30030bd6: 83 c0 04                          addl    $4, %eax                      
  2.03%  0x30030bd9: 41 89 40 08                       movl    %eax, 8(%r8)                  
  1.87%  0x30030bdd: 4d 8d 7e 04                       leaq    4(%r14), %r15                 
  2.21%  0x30030be1: 49 39 df                          cmpq    %rbx, %r15                    
         0x30030be4: 0f 83 7c 01 00 00                 jae    380                            ; 0x30030d66
  2.84%  0x30030bea: 4a 8b 44 f2 30                    movq    48(%rdx,%r14,8), %rax         
  2.01%  0x30030bef: 49 85 c2                          testq    %rax, %r10                   
         0x30030bf2: 0f 85 91 00 00 00                 jne    145                            ; 0x30030c89
  2.29%  0x30030bf8: 2e 2e 42 0f b6 74 31 14           movzbl    %cs:20(%rcx,%r14), %esi     
  2.15%  0x30030c00: 40 84 f6                          testb    %sil, %sil                   
         0x30030c03: 0f 85 9c 00 00 00                 jne    156                            ; 0x30030ca5
  2.10%  0x30030c09: 48 85 c0                          testq    %rax, %rax                   
         0x30030c0c: 0f 84 a9 00 00 00                 je    169                             ; 0x30030cbb
  2.12%  0x30030c12: 43 8d 04 33                       leal    (%r11,%r14), %eax             
  2.27%  0x30030c16: 83 c0 05                          addl    $5, %eax                      
  2.04%  0x30030c19: 41 89 40 08                       movl    %eax, 8(%r8)                  
  2.15%  0x30030c1d: 49 83 c6 04                       addq    $4, %r14                      
  2.05%  0x30030c21: 49 83 c1 20                       addq    $32, %r9                      
  2.30%  0x30030c25: 49 81 fe 1e 1c 00 00              cmpq    $7198, %r14                   
         0x30030c2c: 0f 86 ee fe ff ff                 jbe    -274                           ; 0x30030b20
  0.01%  0x30030c32: 48 83 c4 08                       addq    $8, %rsp                      
  0.03%  0x30030c36: 5b                                popq    %rbx                          
  0.07%  0x30030c37: 41 5c                             popq    %r12                          
  0.03%  0x30030c39: 41 5e                             popq    %r14                          
         0x30030c3b: 41 5f                             popq    %r15                          
  0.02%  0x30030c3d: c3                                retq                                  
         0x30030c3e: 49 8d 71 e8                       leaq    -24(%r9), %rsi                
         0x30030c42: 49 bc c0 c8 00 30 00 00 00 00     movabsq    $805357760, %r12           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x30030c4c: 48 89 c7                          movq    %rax, %rdi                    
         0x30030c4f: 41 ff d4                          callq    *%r12                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x30030c52: e9 e4 fe ff ff                    jmp    -284                           ; 0x30030b3b
         0x30030c57: 49 8d 71 f0                       leaq    -16(%r9), %rsi                
         0x30030c5b: 49 bc c0 c8 00 30 00 00 00 00     movabsq    $805357760, %r12           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x30030c65: 48 89 c7                          movq    %rax, %rdi                    
         0x30030c68: 41 ff d4                          callq    *%r12                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x30030c6b: e9 09 ff ff ff                    jmp    -247                           ; 0x30030b79
....................................................................................................
 95.55%  <total for region 1>

....[Hottest Regions]...............................................................................
 95.55%  [0x3003084e:0x30030c6b] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]
  0.21%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.20%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.18%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9f0711f:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9eb93b5:0xffffffffa9eb9423] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9eff400:0xffffffffa9eff436] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffaa28ead0:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9c0f77a:0xffffffffa9c0f7a5] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eee5d0:0xffffffffa9eee62e] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ee587e:0xffffffffa9ee58a7] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9e8e730:0xffffffffa9e8e730] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9f63240:0xffffffffa9f63270] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9f69690:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0800:0xffffffffa9ed0873] in [unknown] ([kernel.kallsyms])
  2.34%  <...other 348 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 95.55%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]
  4.09%  [unknown] ([kernel.kallsyms])
  0.19%  [unknown] (libjvm.so)
  0.05%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub[Falcon]
  0.02%  [unknown] (libc-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  az_pmem_get_account_usage_tall (libaztall.so)
  0.01%  thread_stack_region_start (libazsys3.so)
  0.01%  PMEM::account_enabled (libaztall.so)
  0.00%  _dl_addr (libc-2.31.so)
  0.00%  syscall (libc-2.31.so)
  0.00%  <stub: method entry point (kind = zerolocals)>
  0.00%  clock_gettime (libc-2.31.so)
  0.00%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  [unknown] ([vdso])
  0.00%  MutexLocker::MutexLocker (libaztall.so)
  0.00%  __pthread_mutex_unlock (libpthread-2.31.so)
  0.00%  <stub: ireturn  172 ireturn>
  0.00%  PMEM::get_account_usage@plt (libaztall.so)
  0.02%  <...other 8 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.61%  <generated code>
  4.09%  <native code in ([kernel.kallsyms])>
  0.19%  <native code in (libjvm.so)>
  0.04%  <native code in (libc-2.31.so)>
  0.03%  <native code in (libaztall.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (libazsys3.so)>
  0.00%  <native code in ([vdso])>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = BIMORPHIC)

# Run progress: 7.14% complete, ETA 00:24:21
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.630 ns/op
# Warmup Iteration   2: 1.607 ns/op
# Warmup Iteration   3: 1.602 ns/op
# Warmup Iteration   4: 1.602 ns/op
# Warmup Iteration   5: 1.604 ns/op
Iteration   1: 1.602 ns/op
Iteration   2: 1.603 ns/op
Iteration   3: 1.602 ns/op
Iteration   4: 1.602 ns/op
Iteration   5: 1.602 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic":
  1.602 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (1.602, 1.602, 1.603), stdev = 0.001
  CI (99.9%): [1.601, 1.604] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 135877 total address lines.
Perf output processed (skipped 56.462 seconds):
 Column 1: cycles (51503 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002fe26:0x3002fefe] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]

         0x3002fe26: 74 18                             je    24                              ; 0x3002fe40
         0x3002fe28: 48 8b 4c 24 08                    movq    8(%rsp), %rcx                 
         0x3002fe2d: 48 8d 71 10                       leaq    16(%rcx), %rsi                
         0x3002fe31: 48 b9 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rcx           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002fe3b: 48 89 c7                          movq    %rax, %rdi                    
         0x3002fe3e: ff d1                             callq    *%rcx                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002fe40: 48 b9 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rcx           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002fe4a: 41 bb 0d 00 00 00                 movl    $13, %r11d                    
         0x3002fe50: ff d1                             callq    *%rcx                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002fe52: 66 66 66 66 66 2e 0f 1f 84 00     nopw    %cs:(%rax,%rax)               
  0.65%  0x3002fe60: 43 8d 04 0b                       leal    (%r11,%r9), %eax              
  0.74%  0x3002fe64: 83 c0 0c                          addl    $12, %eax                     
  1.35%  0x3002fe67: 41 89 40 08                       movl    %eax, 8(%r8)                  
  1.01%  0x3002fe6b: 49 83 c1 06                       addq    $6, %r9                       
  0.69%  0x3002fe6f: 49 83 c6 30                       addq    $48, %r14                     
  0.72%  0x3002fe73: 49 83 c7 30                       addq    $48, %r15                     
  1.40%  0x3002fe77: 49 83 c4 30                       addq    $48, %r12                     
  1.03%  0x3002fe7b: 49 83 c5 30                       addq    $48, %r13                     
  0.73%  0x3002fe7f: 48 83 c5 30                       addq    $48, %rbp                     
  0.77%  0x3002fe83: 48 83 c1 30                       addq    $48, %rcx                     
  1.40%  0x3002fe87: 49 81 f9 19 1c 00 00              cmpq    $7193, %r9                    
         0x3002fe8e: 0f 87 f3 02 00 00                 ja    755                             ; 0x30030187
  0.92%  0x3002fe94: 2e 2e 2e 2e 2e 2e 2e 2e 49 8d     leaq    %cs:6(%r9), %rdx              
  0.72%  0x3002fea0: 48 39 da                          cmpq    %rbx, %rdx                    
         0x3002fea3: 0f 83 5c ff ff ff                 jae    -164                           ; 0x3002fe05
  0.73%  0x3002fea9: 48 8b 44 24 08                    movq    8(%rsp), %rax                 
  1.36%  0x3002feae: 4a 8b 44 c8 40                    movq    64(%rax,%r9,8), %rax          
  1.39%  0x3002feb3: 49 85 c2                          testq    %rax, %r10                   
         0x3002feb6: 0f 85 da 02 00 00                 jne    730                            ; 0x30030196
  0.70%  0x3002febc: 42 0f be 74 0f 16                 movsbl    22(%rdi,%r9), %esi          
  0.75%  0x3002fec2: 85 f6                             testl    %esi, %esi                   
         0x3002fec4: 75 1a                             jne    26                             ; 0x3002fee0
  1.33%  0x3002fec6: 8b 50 04                          movl    4(%rax), %edx                 
  3.15%  0x3002fec9: 81 e2 ff ff ff 01                 andl    $33554431, %edx               
  1.31%  0x3002fecf: 81 fa ef 06 00 00                 cmpl    $1775, %edx                   
         0x3002fed5: 74 27                             je    39                              ; 0x3002fefe
         0x3002fed7: e9 d7 03 00 00                    jmp    983                            ; 0x300302b3
         0x3002fedc: 0f 1f 40 00                       nopl    (%rax)                        
         0x3002fee0: 83 fe 01                          cmpl    $1, %esi                      
         0x3002fee3: 0f 85 a6 03 00 00                 jne    934                            ; 0x3003028f
         0x3002fee9: 8b 50 04                          movl    4(%rax), %edx                 
         0x3002feec: 81 e2 ff ff ff 01                 andl    $33554431, %edx               
         0x3002fef2: 81 fa f1 06 00 00                 cmpl    $1777, %edx                   
         0x3002fef8: 0f 85 bb 03 00 00                 jne    955                            ; 0x300302b9
  1.11%  0x3002fefe: 43 8d 04 0b                       leal    (%r11,%r9), %eax              
....................................................................................................
 22.86%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x30030029:0x300300f8] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]

  1.28%  0x30030029: 42 0f be 74 0f 19                 movsbl    25(%rdi,%r9), %esi          
  0.54%  0x3003002f: 85 f6                             testl    %esi, %esi                   
         0x30030031: 75 2d                             jne    45                             ; 0x30030060
         0x30030033: 8b 50 04                          movl    4(%rax), %edx                 
         0x30030036: 2e 2e 2e 2e 81 e2 ff ff ff 01     andl    $33554431, %edx               
         0x30030040: 81 fa ef 06 00 00                 cmpl    $1775, %edx                   
         0x30030046: 74 36                             je    54                              ; 0x3003007e
         0x30030048: e9 8a 02 00 00                    jmp    650                            ; 0x300302d7
         0x3003004d: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x3003005c: 0f 1f 40 00                       nopl    (%rax)                        
  1.03%  0x30030060: 83 fe 01                          cmpl    $1, %esi                      
         0x30030063: 0f 85 26 02 00 00                 jne    550                            ; 0x3003028f
  1.06%  0x30030069: 8b 50 04                          movl    4(%rax), %edx                 
  1.37%  0x3003006c: 81 e2 ff ff ff 01                 andl    $33554431, %edx               
  0.56%  0x30030072: 81 fa f1 06 00 00                 cmpl    $1777, %edx                   
         0x30030078: 0f 85 5f 02 00 00                 jne    607                            ; 0x300302dd
  1.20%  0x3003007e: 43 8d 04 0b                       leal    (%r11,%r9), %eax              
  0.95%  0x30030082: 83 c0 0a                          addl    $10, %eax                     
  1.08%  0x30030085: 41 89 40 08                       movl    %eax, 8(%r8)                  
  0.55%  0x30030089: 49 8d 51 0a                       leaq    10(%r9), %rdx                 
  1.10%  0x3003008d: 48 39 da                          cmpq    %rbx, %rdx                    
         0x30030090: 0f 83 6f fd ff ff                 jae    -657                           ; 0x3002fe05
  1.01%  0x30030096: 48 8b 44 24 08                    movq    8(%rsp), %rax                 
  1.12%  0x3003009b: 4a 8b 44 c8 60                    movq    96(%rax,%r9,8), %rax          
  0.75%  0x300300a0: 49 85 c2                          testq    %rax, %r10                   
         0x300300a3: 0f 85 88 01 00 00                 jne    392                            ; 0x30030231
  1.16%  0x300300a9: 42 0f be 74 0f 1a                 movsbl    26(%rdi,%r9), %esi          
  1.03%  0x300300af: 85 f6                             testl    %esi, %esi                   
         0x300300b1: 75 2d                             jne    45                             ; 0x300300e0
  1.18%  0x300300b3: 8b 50 04                          movl    4(%rax), %edx                 
  2.35%  0x300300b6: 2e 2e 2e 2e 81 e2 ff ff ff 01     andl    $33554431, %edx               
  1.66%  0x300300c0: 81 fa ef 06 00 00                 cmpl    $1775, %edx                   
         0x300300c6: 74 36                             je    54                              ; 0x300300fe
         0x300300c8: e9 16 02 00 00                    jmp    534                            ; 0x300302e3
         0x300300cd: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x300300dc: 0f 1f 40 00                       nopl    (%rax)                        
         0x300300e0: 83 fe 01                          cmpl    $1, %esi                      
         0x300300e3: 0f 85 a6 01 00 00                 jne    422                            ; 0x3003028f
         0x300300e9: 8b 50 04                          movl    4(%rax), %edx                 
         0x300300ec: 81 e2 ff ff ff 01                 andl    $33554431, %edx               
         0x300300f2: 81 fa f1 06 00 00                 cmpl    $1777, %edx                   
         0x300300f8: 0f 85 eb 01 00 00                 jne    491                            ; 0x300302e9
....................................................................................................
 19.16%  <total for region 2>

....[Hottest Region 3]..............................................................................
 [0x3002ff29:0x3002fff8] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]

  1.08%  0x3002ff29: 42 0f be 74 0f 17                 movsbl    23(%rdi,%r9), %esi          
  1.53%  0x3002ff2f: 85 f6                             testl    %esi, %esi                   
         0x3002ff31: 75 2d                             jne    45                             ; 0x3002ff60
         0x3002ff33: 8b 50 04                          movl    4(%rax), %edx                 
         0x3002ff36: 2e 2e 2e 2e 81 e2 ff ff ff 01     andl    $33554431, %edx               
         0x3002ff40: 81 fa ef 06 00 00                 cmpl    $1775, %edx                   
         0x3002ff46: 74 36                             je    54                              ; 0x3002ff7e
         0x3002ff48: e9 72 03 00 00                    jmp    882                            ; 0x300302bf
         0x3002ff4d: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x3002ff5c: 0f 1f 40 00                       nopl    (%rax)                        
  0.86%  0x3002ff60: 83 fe 01                          cmpl    $1, %esi                      
         0x3002ff63: 0f 85 26 03 00 00                 jne    806                            ; 0x3003028f
  0.63%  0x3002ff69: 8b 50 04                          movl    4(%rax), %edx                 
  1.10%  0x3002ff6c: 81 e2 ff ff ff 01                 andl    $33554431, %edx               
  1.47%  0x3002ff72: 81 fa f1 06 00 00                 cmpl    $1777, %edx                   
         0x3002ff78: 0f 85 47 03 00 00                 jne    839                            ; 0x300302c5
  1.24%  0x3002ff7e: 43 8d 04 0b                       leal    (%r11,%r9), %eax              
  0.61%  0x3002ff82: 83 c0 08                          addl    $8, %eax                      
  0.50%  0x3002ff85: 41 89 40 08                       movl    %eax, 8(%r8)                  
  1.29%  0x3002ff89: 49 8d 51 08                       leaq    8(%r9), %rdx                  
  1.24%  0x3002ff8d: 48 39 da                          cmpq    %rbx, %rdx                    
         0x3002ff90: 0f 83 6f fe ff ff                 jae    -401                           ; 0x3002fe05
  0.66%  0x3002ff96: 48 8b 44 24 08                    movq    8(%rsp), %rax                 
  0.58%  0x3002ff9b: 4a 8b 44 c8 50                    movq    80(%rax,%r9,8), %rax          
  1.47%  0x3002ffa0: 49 85 c2                          testq    %rax, %r10                   
         0x3002ffa3: 0f 85 3c 02 00 00                 jne    572                            ; 0x300301e5
  1.32%  0x3002ffa9: 42 0f be 74 0f 18                 movsbl    24(%rdi,%r9), %esi          
  0.69%  0x3002ffaf: 85 f6                             testl    %esi, %esi                   
         0x3002ffb1: 75 2d                             jne    45                             ; 0x3002ffe0
  0.54%  0x3002ffb3: 8b 50 04                          movl    4(%rax), %edx                 
  2.91%  0x3002ffb6: 2e 2e 2e 2e 81 e2 ff ff ff 01     andl    $33554431, %edx               
  1.74%  0x3002ffc0: 81 fa ef 06 00 00                 cmpl    $1775, %edx                   
         0x3002ffc6: 74 36                             je    54                              ; 0x3002fffe
         0x3002ffc8: e9 fe 02 00 00                    jmp    766                            ; 0x300302cb
         0x3002ffcd: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x3002ffdc: 0f 1f 40 00                       nopl    (%rax)                        
         0x3002ffe0: 83 fe 01                          cmpl    $1, %esi                      
         0x3002ffe3: 0f 85 a6 02 00 00                 jne    678                            ; 0x3003028f
         0x3002ffe9: 8b 50 04                          movl    4(%rax), %edx                 
         0x3002ffec: 81 e2 ff ff ff 01                 andl    $33554431, %edx               
         0x3002fff2: 81 fa f1 06 00 00                 cmpl    $1777, %edx                   
         0x3002fff8: 0f 85 d3 02 00 00                 jne    723                            ; 0x300302d1
....................................................................................................
 18.83%  <total for region 3>

....[Hottest Region 4]..............................................................................
 [0x300300c6:0x30030169] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]

         0x300300c6: 74 36                             je    54                              ; 0x300300fe
         0x300300c8: e9 16 02 00 00                    jmp    534                            ; 0x300302e3
         0x300300cd: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x300300dc: 0f 1f 40 00                       nopl    (%rax)                        
         0x300300e0: 83 fe 01                          cmpl    $1, %esi                      
         0x300300e3: 0f 85 a6 01 00 00                 jne    422                            ; 0x3003028f
         0x300300e9: 8b 50 04                          movl    4(%rax), %edx                 
         0x300300ec: 81 e2 ff ff ff 01                 andl    $33554431, %edx               
         0x300300f2: 81 fa f1 06 00 00                 cmpl    $1777, %edx                   
         0x300300f8: 0f 85 eb 01 00 00                 jne    491                            ; 0x300302e9
  1.62%  0x300300fe: 43 8d 04 0b                       leal    (%r11,%r9), %eax              
  1.01%  0x30030102: 83 c0 0b                          addl    $11, %eax                     
  0.42%  0x30030105: 41 89 40 08                       movl    %eax, 8(%r8)                  
  0.83%  0x30030109: 49 8d 51 0b                       leaq    11(%r9), %rdx                 
  1.78%  0x3003010d: 48 39 da                          cmpq    %rbx, %rdx                    
         0x30030110: 0f 83 ef fc ff ff                 jae    -785                           ; 0x3002fe05
  1.01%  0x30030116: 48 8b 44 24 08                    movq    8(%rsp), %rax                 
  0.42%  0x3003011b: 4a 8b 44 c8 68                    movq    104(%rax,%r9,8), %rax         
  0.80%  0x30030120: 49 85 c2                          testq    %rax, %r10                   
         0x30030123: 0f 85 2e 01 00 00                 jne    302                            ; 0x30030257
  1.67%  0x30030129: 42 0f be 74 0f 1b                 movsbl    27(%rdi,%r9), %esi          
  1.00%  0x3003012f: 85 f6                             testl    %esi, %esi                   
         0x30030131: 75 2d                             jne    45                             ; 0x30030160
         0x30030133: 8b 50 04                          movl    4(%rax), %edx                 
         0x30030136: 2e 2e 2e 2e 81 e2 ff ff ff 01     andl    $33554431, %edx               
         0x30030140: 81 fa ef 06 00 00                 cmpl    $1775, %edx                   
         0x30030146: 0f 84 14 fd ff ff                 je    -748                            ; 0x3002fe60
         0x3003014c: e9 ae 01 00 00                    jmp    430                            ; 0x300302ff
         0x30030151: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
  0.39%  0x30030160: 83 fe 01                          cmpl    $1, %esi                      
         0x30030163: 0f 85 26 01 00 00                 jne    294                            ; 0x3003028f
  0.75%  0x30030169: 8b 50 04                          movl    4(%rax), %edx                 
....................................................................................................
 10.55%  <total for region 4>

....[Hottest Region 5]..............................................................................
 [0x3002fecf:0x3002ff63] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]

  1.31%  0x3002fecf: 81 fa ef 06 00 00                 cmpl    $1775, %edx                   
         0x3002fed5: 74 27                             je    39                              ; 0x3002fefe
         0x3002fed7: e9 d7 03 00 00                    jmp    983                            ; 0x300302b3
         0x3002fedc: 0f 1f 40 00                       nopl    (%rax)                        
         0x3002fee0: 83 fe 01                          cmpl    $1, %esi                      
         0x3002fee3: 0f 85 a6 03 00 00                 jne    934                            ; 0x3003028f
         0x3002fee9: 8b 50 04                          movl    4(%rax), %edx                 
         0x3002feec: 81 e2 ff ff ff 01                 andl    $33554431, %edx               
         0x3002fef2: 81 fa f1 06 00 00                 cmpl    $1777, %edx                   
         0x3002fef8: 0f 85 bb 03 00 00                 jne    955                            ; 0x300302b9
  1.11%  0x3002fefe: 43 8d 04 0b                       leal    (%r11,%r9), %eax              
  1.36%  0x3002ff02: 83 c0 07                          addl    $7, %eax                      
  0.79%  0x3002ff05: 41 89 40 08                       movl    %eax, 8(%r8)                  
  0.63%  0x3002ff09: 49 8d 51 07                       leaq    7(%r9), %rdx                  
  1.12%  0x3002ff0d: 48 39 da                          cmpq    %rbx, %rdx                    
         0x3002ff10: 0f 83 ef fe ff ff                 jae    -273                           ; 0x3002fe05
  1.39%  0x3002ff16: 48 8b 44 24 08                    movq    8(%rsp), %rax                 
  0.85%  0x3002ff1b: 4a 8b 44 c8 48                    movq    72(%rax,%r9,8), %rax          
  0.68%  0x3002ff20: 49 85 c2                          testq    %rax, %r10                   
         0x3002ff23: 0f 85 93 02 00 00                 jne    659                            ; 0x300301bc
  1.08%  0x3002ff29: 42 0f be 74 0f 17                 movsbl    23(%rdi,%r9), %esi          
  1.53%  0x3002ff2f: 85 f6                             testl    %esi, %esi                   
         0x3002ff31: 75 2d                             jne    45                             ; 0x3002ff60
         0x3002ff33: 8b 50 04                          movl    4(%rax), %edx                 
         0x3002ff36: 2e 2e 2e 2e 81 e2 ff ff ff 01     andl    $33554431, %edx               
         0x3002ff40: 81 fa ef 06 00 00                 cmpl    $1775, %edx                   
         0x3002ff46: 74 36                             je    54                              ; 0x3002ff7e
         0x3002ff48: e9 72 03 00 00                    jmp    882                            ; 0x300302bf
         0x3002ff4d: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x3002ff5c: 0f 1f 40 00                       nopl    (%rax)                        
  0.86%  0x3002ff60: 83 fe 01                          cmpl    $1, %esi                      
         0x3002ff63: 0f 85 26 03 00 00                 jne    806                            ; 0x3003028f
....................................................................................................
 10.55%  <total for region 5>

....[Hottest Region 6]..............................................................................
 [0x3002ffc6:0x30030063] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]

         0x3002ffc6: 74 36                             je    54                              ; 0x3002fffe
         0x3002ffc8: e9 fe 02 00 00                    jmp    766                            ; 0x300302cb
         0x3002ffcd: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x3002ffdc: 0f 1f 40 00                       nopl    (%rax)                        
         0x3002ffe0: 83 fe 01                          cmpl    $1, %esi                      
         0x3002ffe3: 0f 85 a6 02 00 00                 jne    678                            ; 0x3003028f
         0x3002ffe9: 8b 50 04                          movl    4(%rax), %edx                 
         0x3002ffec: 81 e2 ff ff ff 01                 andl    $33554431, %edx               
         0x3002fff2: 81 fa f1 06 00 00                 cmpl    $1777, %edx                   
         0x3002fff8: 0f 85 d3 02 00 00                 jne    723                            ; 0x300302d1
  1.34%  0x3002fffe: 43 8d 04 0b                       leal    (%r11,%r9), %eax              
  0.52%  0x30030002: 83 c0 09                          addl    $9, %eax                      
  0.98%  0x30030005: 41 89 40 08                       movl    %eax, 8(%r8)                  
  1.04%  0x30030009: 49 8d 51 09                       leaq    9(%r9), %rdx                  
  1.31%  0x3003000d: 48 39 da                          cmpq    %rbx, %rdx                    
         0x30030010: 0f 83 ef fd ff ff                 jae    -529                           ; 0x3002fe05
  0.50%  0x30030016: 48 8b 44 24 08                    movq    8(%rsp), %rax                 
  0.94%  0x3003001b: 4a 8b 44 c8 58                    movq    88(%rax,%r9,8), %rax          
  1.01%  0x30030020: 49 85 c2                          testq    %rax, %r10                   
         0x30030023: 0f 85 e2 01 00 00                 jne    482                            ; 0x3003020b
  1.28%  0x30030029: 42 0f be 74 0f 19                 movsbl    25(%rdi,%r9), %esi          
  0.54%  0x3003002f: 85 f6                             testl    %esi, %esi                   
         0x30030031: 75 2d                             jne    45                             ; 0x30030060
         0x30030033: 8b 50 04                          movl    4(%rax), %edx                 
         0x30030036: 2e 2e 2e 2e 81 e2 ff ff ff 01     andl    $33554431, %edx               
         0x30030040: 81 fa ef 06 00 00                 cmpl    $1775, %edx                   
         0x30030046: 74 36                             je    54                              ; 0x3003007e
         0x30030048: e9 8a 02 00 00                    jmp    650                            ; 0x300302d7
         0x3003004d: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x3003005c: 0f 1f 40 00                       nopl    (%rax)                        
  1.03%  0x30030060: 83 fe 01                          cmpl    $1, %esi                      
         0x30030063: 0f 85 26 02 00 00                 jne    550                            ; 0x3003028f
....................................................................................................
  9.46%  <total for region 6>

....[Hottest Regions]...............................................................................
 22.86%  [0x3002fe26:0x3002fefe] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]
 19.16%  [0x30030029:0x300300f8] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]
 18.83%  [0x3002ff29:0x3002fff8] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]
 10.55%  [0x300300c6:0x30030169] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]
 10.55%  [0x3002fecf:0x3002ff63] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]
  9.46%  [0x3002ffc6:0x30030063] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]
  4.04%  [0x30030123:0x300301bc] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]
  0.24%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9f0711c:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eef35f:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.13%  [0x3002fca0:0x30030319] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]
  0.11%  [0xffffffffa9eb93b5:0xffffffffa9eb9444] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f07060:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ed0740:0xffffffffa9ed0797] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ee587e:0xffffffffa9ee58b8] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eff400:0xffffffffa9eff44c] in [unknown] ([kernel.kallsyms])
  2.92%  <...other 407 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 95.59%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]
  3.88%  [unknown] ([kernel.kallsyms])
  0.29%  [unknown] (libjvm.so)
  0.06%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub[Falcon]
  0.03%  [unknown] ([vdso])
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.01%  PMEM::account_enabled; PMEM::accounts (libaztall.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  _dl_addr (libc-2.31.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  [unknown] (kvm.ko)
  0.00%  az_zmd_api_version_tall (libaztall.so)
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  sprintf (libc-2.31.so)
  0.00%  <stub: dup  89 dup>
  0.04%  <...other 19 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.66%  <generated code>
  3.88%  <native code in ([kernel.kallsyms])>
  0.29%  <native code in (libjvm.so)>
  0.05%  <native code in (libaztall.so)>
  0.04%  <native code in (libc-2.31.so)>
  0.03%  <native code in ([vdso])>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in (kvm.ko)>
  0.00%  <native code in (perf-144920.map)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_3)

# Run progress: 14.29% complete, ETA 00:22:24
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.630 ns/op
# Warmup Iteration   2: 1.570 ns/op
# Warmup Iteration   3: 1.569 ns/op
# Warmup Iteration   4: 1.570 ns/op
# Warmup Iteration   5: 1.570 ns/op
Iteration   1: 1.570 ns/op
Iteration   2: 1.569 ns/op
Iteration   3: 1.572 ns/op
Iteration   4: 1.572 ns/op
Iteration   5: 1.572 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic":
  1.571 ±(99.9%) 0.005 ns/op [Average]
  (min, avg, max) = (1.569, 1.571, 1.572), stdev = 0.001
  CI (99.9%): [1.566, 1.576] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 136611 total address lines.
Perf output processed (skipped 59.110 seconds):
 Column 1: cycles (51535 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x300307c3:0x30030b80] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]

         0x300307c3: 74 14                             je    20                              ; 0x300307d9
         0x300307c5: 48 8d 72 10                       leaq    16(%rdx), %rsi                
         0x300307c9: 49 b8 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %r8            ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x300307d3: 48 89 c7                          movq    %rax, %rdi                    
         0x300307d6: 41 ff d0                          callq    *%r8                         ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x300307d9: 48 be 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rsi           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x300307e3: 41 bb 0d 00 00 00                 movl    $13, %r11d                    
         0x300307e9: ff d6                             callq    *%rsi                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x300307eb: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x300307fa: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
  1.80%  0x30030800: 43 8d 04 16                       leal    (%r14,%r10), %eax             
  1.05%  0x30030804: 83 c0 0a                          addl    $10, %eax                     
  0.38%  0x30030807: 41 89 40 08                       movl    %eax, 8(%r8)                  
  1.51%  0x3003080b: 49 83 c2 05                       addq    $5, %r10                      
  1.79%  0x3003080f: 2e 2e 2e 2e 2e 2e 2e 2e 49 81     addq    $40, %r9                      
  1.03%  0x3003081e: 66 90                             nop                                   
  0.48%  0x30030820: 49 81 fa 1a 1c 00 00              cmpq    $7194, %r10                   
         0x30030827: 0f 87 1a 03 00 00                 ja    794                             ; 0x30030b47
  1.51%  0x3003082d: 4d 8d 7a 05                       leaq    5(%r10), %r15                 
  1.65%  0x30030831: 49 39 df                          cmpq    %rbx, %r15                    
         0x30030834: 0f 83 6d ff ff ff                 jae    -147                           ; 0x300307a7
  1.03%  0x3003083a: 2e 4a 8b 44 d2 38                 movq    %cs:56(%rdx,%r10,8), %rax     
  0.67%  0x30030840: 49 85 c3                          testq    %rax, %r11                   
         0x30030843: 0f 85 0a 03 00 00                 jne    778                            ; 0x30030b53
  1.53%  0x30030849: 42 0f be 74 11 15                 movsbl    21(%rcx,%r10), %esi         
  1.72%  0x3003084f: 85 f6                             testl    %esi, %esi                   
         0x30030851: 74 2d                             je    45                              ; 0x30030880
  0.04%  0x30030853: 83 fe 01                          cmpl    $1, %esi                      
         0x30030856: 75 48                             jne    72                             ; 0x300308a0
  0.17%  0x30030858: 8b 70 04                          movl    4(%rax), %esi                 
  0.50%  0x3003085b: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  1.23%  0x30030861: 81 fe f2 06 00 00                 cmpl    $1778, %esi                   
         0x30030867: 74 55                             je    85                              ; 0x300308be
         0x30030869: e9 a9 03 00 00                    jmp    937                            ; 0x30030c17
         0x3003086e: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x3003087d: 0f 1f 00                          nopl    (%rax)                        
  1.02%  0x30030880: 8b 70 04                          movl    4(%rax), %esi                 
  0.79%  0x30030883: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.29%  0x30030889: 81 fe f0 06 00 00                 cmpl    $1776, %esi                   
         0x3003088f: 74 2d                             je    45                              ; 0x300308be
         0x30030891: e9 87 03 00 00                    jmp    903                            ; 0x30030c1d
         0x30030896: 66 2e 0f 1f 84 00 00 00 00 00     nopw    %cs:(%rax,%rax)               
  0.11%  0x300308a0: 83 fe 02                          cmpl    $2, %esi                      
         0x300308a3: 0f 85 4a 03 00 00                 jne    842                            ; 0x30030bf3
  1.22%  0x300308a9: 8b 70 04                          movl    4(%rax), %esi                 
  0.97%  0x300308ac: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.21%  0x300308b2: 81 fe f3 06 00 00                 cmpl    $1779, %esi                   
         0x300308b8: 0f 85 65 03 00 00                 jne    869                            ; 0x30030c23
  1.72%  0x300308be: 43 8d 04 16                       leal    (%r14,%r10), %eax             
  1.11%  0x300308c2: 83 c0 06                          addl    $6, %eax                      
  0.43%  0x300308c5: 41 89 40 08                       movl    %eax, 8(%r8)                  
  1.31%  0x300308c9: 4d 8d 7a 06                       leaq    6(%r10), %r15                 
  1.83%  0x300308cd: 49 39 df                          cmpq    %rbx, %r15                    
         0x300308d0: 0f 83 d1 fe ff ff                 jae    -303                           ; 0x300307a7
  1.05%  0x300308d6: 2e 2e 2e 2e 2e 4a 8b 44 d2 40     movq    %cs:64(%rdx,%r10,8), %rax     
  0.66%  0x300308e0: 49 85 c3                          testq    %rax, %r11                   
         0x300308e3: 0f 85 83 02 00 00                 jne    643                            ; 0x30030b6c
  1.27%  0x300308e9: 42 0f be 74 11 16                 movsbl    22(%rcx,%r10), %esi         
  1.73%  0x300308ef: 85 f6                             testl    %esi, %esi                   
         0x300308f1: 74 2d                             je    45                              ; 0x30030920
  0.14%  0x300308f3: 83 fe 01                          cmpl    $1, %esi                      
         0x300308f6: 75 48                             jne    72                             ; 0x30030940
  0.19%  0x300308f8: 8b 70 04                          movl    4(%rax), %esi                 
  0.42%  0x300308fb: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  1.30%  0x30030901: 81 fe f2 06 00 00                 cmpl    $1778, %esi                   
         0x30030907: 74 55                             je    85                              ; 0x3003095e
         0x30030909: e9 1b 03 00 00                    jmp    795                            ; 0x30030c29
         0x3003090e: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x3003091d: 0f 1f 00                          nopl    (%rax)                        
  1.08%  0x30030920: 8b 70 04                          movl    4(%rax), %esi                 
  0.95%  0x30030923: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.24%  0x30030929: 81 fe f0 06 00 00                 cmpl    $1776, %esi                   
         0x3003092f: 74 2d                             je    45                              ; 0x3003095e
         0x30030931: e9 f9 02 00 00                    jmp    761                            ; 0x30030c2f
         0x30030936: 66 2e 0f 1f 84 00 00 00 00 00     nopw    %cs:(%rax,%rax)               
  0.17%  0x30030940: 83 fe 02                          cmpl    $2, %esi                      
         0x30030943: 0f 85 aa 02 00 00                 jne    682                            ; 0x30030bf3
  1.20%  0x30030949: 8b 70 04                          movl    4(%rax), %esi                 
  0.39%  0x3003094c: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.29%  0x30030952: 81 fe f3 06 00 00                 cmpl    $1779, %esi                   
         0x30030958: 0f 85 d7 02 00 00                 jne    727                            ; 0x30030c35
  1.83%  0x3003095e: 43 8d 04 16                       leal    (%r14,%r10), %eax             
  1.16%  0x30030962: 83 c0 07                          addl    $7, %eax                      
  0.42%  0x30030965: 41 89 40 08                       movl    %eax, 8(%r8)                  
  1.43%  0x30030969: 4d 8d 7a 07                       leaq    7(%r10), %r15                 
  1.81%  0x3003096d: 49 39 df                          cmpq    %rbx, %r15                    
         0x30030970: 0f 83 31 fe ff ff                 jae    -463                           ; 0x300307a7
  1.13%  0x30030976: 2e 2e 2e 2e 2e 4a 8b 44 d2 48     movq    %cs:72(%rdx,%r10,8), %rax     
  0.65%  0x30030980: 49 85 c3                          testq    %rax, %r11                   
         0x30030983: 0f 85 fc 01 00 00                 jne    508                            ; 0x30030b85
  1.41%  0x30030989: 42 0f be 74 11 17                 movsbl    23(%rcx,%r10), %esi         
  1.76%  0x3003098f: 85 f6                             testl    %esi, %esi                   
         0x30030991: 74 2d                             je    45                              ; 0x300309c0
  0.14%  0x30030993: 83 fe 01                          cmpl    $1, %esi                      
         0x30030996: 75 48                             jne    72                             ; 0x300309e0
  0.17%  0x30030998: 8b 70 04                          movl    4(%rax), %esi                 
  0.50%  0x3003099b: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  1.36%  0x300309a1: 81 fe f2 06 00 00                 cmpl    $1778, %esi                   
         0x300309a7: 74 55                             je    85                              ; 0x300309fe
         0x300309a9: e9 8d 02 00 00                    jmp    653                            ; 0x30030c3b
         0x300309ae: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x300309bd: 0f 1f 00                          nopl    (%rax)                        
  1.01%  0x300309c0: 8b 70 04                          movl    4(%rax), %esi                 
  0.64%  0x300309c3: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.29%  0x300309c9: 81 fe f0 06 00 00                 cmpl    $1776, %esi                   
         0x300309cf: 74 2d                             je    45                              ; 0x300309fe
         0x300309d1: e9 6c 02 00 00                    jmp    620                            ; 0x30030c42
         0x300309d6: 66 2e 0f 1f 84 00 00 00 00 00     nopw    %cs:(%rax,%rax)               
  0.14%  0x300309e0: 83 fe 02                          cmpl    $2, %esi                      
         0x300309e3: 0f 85 0a 02 00 00                 jne    522                            ; 0x30030bf3
  1.24%  0x300309e9: 8b 70 04                          movl    4(%rax), %esi                 
  0.72%  0x300309ec: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.34%  0x300309f2: 81 fe f3 06 00 00                 cmpl    $1779, %esi                   
         0x300309f8: 0f 85 4a 02 00 00                 jne    586                            ; 0x30030c48
  1.86%  0x300309fe: 43 8d 04 16                       leal    (%r14,%r10), %eax             
  1.27%  0x30030a02: 83 c0 08                          addl    $8, %eax                      
  0.19%  0x30030a05: 41 89 40 08                       movl    %eax, 8(%r8)                  
  1.39%  0x30030a09: 4d 8d 7a 08                       leaq    8(%r10), %r15                 
  1.86%  0x30030a0d: 49 39 df                          cmpq    %rbx, %r15                    
         0x30030a10: 0f 83 91 fd ff ff                 jae    -623                           ; 0x300307a7
  1.18%  0x30030a16: 2e 2e 2e 2e 2e 4a 8b 44 d2 50     movq    %cs:80(%rdx,%r10,8), %rax     
  0.37%  0x30030a20: 49 85 c3                          testq    %rax, %r11                   
         0x30030a23: 0f 85 75 01 00 00                 jne    373                            ; 0x30030b9e
  1.50%  0x30030a29: 42 0f be 74 11 18                 movsbl    24(%rcx,%r10), %esi         
  1.83%  0x30030a2f: 85 f6                             testl    %esi, %esi                   
         0x30030a31: 74 2d                             je    45                              ; 0x30030a60
  0.20%  0x30030a33: 83 fe 01                          cmpl    $1, %esi                      
         0x30030a36: 75 48                             jne    72                             ; 0x30030a80
  0.12%  0x30030a38: 8b 70 04                          movl    4(%rax), %esi                 
  0.64%  0x30030a3b: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  1.31%  0x30030a41: 81 fe f2 06 00 00                 cmpl    $1778, %esi                   
         0x30030a47: 74 55                             je    85                              ; 0x30030a9e
         0x30030a49: e9 00 02 00 00                    jmp    512                            ; 0x30030c4e
         0x30030a4e: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x30030a5d: 0f 1f 00                          nopl    (%rax)                        
  0.95%  0x30030a60: 8b 70 04                          movl    4(%rax), %esi                 
  1.05%  0x30030a63: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.33%  0x30030a69: 81 fe f0 06 00 00                 cmpl    $1776, %esi                   
         0x30030a6f: 74 2d                             je    45                              ; 0x30030a9e
         0x30030a71: e9 de 01 00 00                    jmp    478                            ; 0x30030c54
         0x30030a76: 66 2e 0f 1f 84 00 00 00 00 00     nopw    %cs:(%rax,%rax)               
  0.02%  0x30030a80: 83 fe 02                          cmpl    $2, %esi                      
         0x30030a83: 0f 85 6a 01 00 00                 jne    362                            ; 0x30030bf3
  1.21%  0x30030a89: 8b 70 04                          movl    4(%rax), %esi                 
  0.60%  0x30030a8c: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.37%  0x30030a92: 81 fe f3 06 00 00                 cmpl    $1779, %esi                   
         0x30030a98: 0f 85 bc 01 00 00                 jne    444                            ; 0x30030c5a
  1.89%  0x30030a9e: 43 8d 04 16                       leal    (%r14,%r10), %eax             
  1.15%  0x30030aa2: 83 c0 09                          addl    $9, %eax                      
  0.34%  0x30030aa5: 41 89 40 08                       movl    %eax, 8(%r8)                  
  1.41%  0x30030aa9: 4d 8d 7a 09                       leaq    9(%r10), %r15                 
  1.70%  0x30030aad: 49 39 df                          cmpq    %rbx, %r15                    
         0x30030ab0: 0f 83 f1 fc ff ff                 jae    -783                           ; 0x300307a7
  1.14%  0x30030ab6: 2e 2e 2e 2e 2e 4a 8b 44 d2 58     movq    %cs:88(%rdx,%r10,8), %rax     
  0.45%  0x30030ac0: 49 85 c3                          testq    %rax, %r11                   
         0x30030ac3: 0f 85 ee 00 00 00                 jne    238                            ; 0x30030bb7
  1.41%  0x30030ac9: 42 0f be 74 11 19                 movsbl    25(%rcx,%r10), %esi         
  1.90%  0x30030acf: 85 f6                             testl    %esi, %esi                   
         0x30030ad1: 74 2d                             je    45                              ; 0x30030b00
  0.16%  0x30030ad3: 83 fe 01                          cmpl    $1, %esi                      
         0x30030ad6: 75 48                             jne    72                             ; 0x30030b20
  0.04%  0x30030ad8: 8b 70 04                          movl    4(%rax), %esi                 
  1.07%  0x30030adb: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  1.37%  0x30030ae1: 81 fe f2 06 00 00                 cmpl    $1778, %esi                   
         0x30030ae7: 0f 84 13 fd ff ff                 je    -749                            ; 0x30030800
         0x30030aed: e9 7e 01 00 00                    jmp    382                            ; 0x30030c70
         0x30030af2: 66 66 66 66 66 2e 0f 1f 84 00     nopw    %cs:(%rax,%rax)               
  1.03%  0x30030b00: 8b 70 04                          movl    4(%rax), %esi                 
  1.13%  0x30030b03: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.34%  0x30030b09: 81 fe f0 06 00 00                 cmpl    $1776, %esi                   
         0x30030b0f: 0f 84 eb fc ff ff                 je    -789                            ; 0x30030800
         0x30030b15: e9 6c 01 00 00                    jmp    364                            ; 0x30030c86
         0x30030b1a: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
  0.16%  0x30030b20: 83 fe 02                          cmpl    $2, %esi                      
         0x30030b23: 0f 85 ca 00 00 00                 jne    202                            ; 0x30030bf3
  1.15%  0x30030b29: 8b 70 04                          movl    4(%rax), %esi                 
  0.77%  0x30030b2c: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.32%  0x30030b32: 81 fe f3 06 00 00                 cmpl    $1779, %esi                   
         0x30030b38: 0f 84 c2 fc ff ff                 je    -830                            ; 0x30030800
         0x30030b3e: 49 83 c2 09                       addq    $9, %r10                      
         0x30030b42: e9 17 01 00 00                    jmp    279                            ; 0x30030c5e
  0.01%  0x30030b47: 48 83 c4 08                       addq    $8, %rsp                      
  0.02%  0x30030b4b: 5b                                popq    %rbx                          
  0.07%  0x30030b4c: 41 5c                             popq    %r12                          
  0.01%  0x30030b4e: 41 5e                             popq    %r14                          
         0x30030b50: 41 5f                             popq    %r15                          
  0.00%  0x30030b52: c3                                retq                                  
         0x30030b53: 49 8d 71 e0                       leaq    -32(%r9), %rsi                
         0x30030b57: 49 bc c0 c8 00 30 00 00 00 00     movabsq    $805357760, %r12           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x30030b61: 48 89 c7                          movq    %rax, %rdi                    
         0x30030b64: 41 ff d4                          callq    *%r12                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x30030b67: e9 dd fc ff ff                    jmp    -803                           ; 0x30030849
         0x30030b6c: 49 8d 71 e8                       leaq    -24(%r9), %rsi                
         0x30030b70: 49 bc c0 c8 00 30 00 00 00 00     movabsq    $805357760, %r12           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x30030b7a: 48 89 c7                          movq    %rax, %rdi                    
         0x30030b7d: 41 ff d4                          callq    *%r12                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x30030b80: e9 64 fd ff ff                    jmp    -668                           ; 0x300308e9
....................................................................................................
 95.61%  <total for region 1>

....[Hottest Regions]...............................................................................
 95.61%  [0x300307c3:0x30030b80] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]
  0.38%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.23%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.23%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9f0711f:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eb8dcf:0xffffffffa9eb8de6] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eef5b2:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.10%  [0x300304b6:0x30030738] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]
  0.09%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f695f6:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f07060:0xffffffffa9f070cd] in [unknown] ([kernel.kallsyms])
  0.08%  [0x30032ec6:0x30032f3c] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub[Falcon]
  0.08%  [0xffffffffa9ed0800:0xffffffffa9ed0889] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28ead0:0xffffffffaa28eb20] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0740:0xffffffffa9ed0797] in [unknown] ([kernel.kallsyms])
  1.97%  <...other 297 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 95.71%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]
  3.92%  [unknown] ([kernel.kallsyms])
  0.16%  [unknown] (libjvm.so)
  0.08%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub[Falcon]
  0.02%  [unknown] (liborca.so.0.0.0.0)
  0.02%  [unknown] (libc-2.31.so)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  PMEM::account_enabled; PMEM::accounts (libaztall.so)
  0.01%  thread_stack_region_start (libazsys3.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  syscall (libc-2.31.so)
  0.00%  [unknown] ([vdso])
  0.00%  PMEM_Account::fetch_stats (libaztall.so)
  0.00%  thread_stack_region_start@plt (libazsys3.so)
  0.00%  is_thread_initialized (libazsys3.so)
  0.00%  az_zmd_api_version_tall (libaztall.so)
  0.00%  [unknown] (perf-145056.map)
  0.00%  __pthread_mutex_unlock (libpthread-2.31.so)
  0.02%  <...other 9 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.80%  <generated code>
  3.92%  <native code in ([kernel.kallsyms])>
  0.16%  <native code in (libjvm.so)>
  0.04%  <native code in (libaztall.so)>
  0.03%  <native code in (libc-2.31.so)>
  0.02%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.00%  <native code in ([vdso])>
  0.00%  <native code in (libstdc++.so.6)>
  0.00%  <native code in (perf-145056.map)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_4)

# Run progress: 21.43% complete, ETA 00:20:39
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 12.050 ns/op
# Warmup Iteration   2: 11.878 ns/op
# Warmup Iteration   3: 11.882 ns/op
# Warmup Iteration   4: 11.880 ns/op
# Warmup Iteration   5: 11.875 ns/op
Iteration   1: 11.876 ns/op
Iteration   2: 11.897 ns/op
Iteration   3: 11.867 ns/op
Iteration   4: 11.868 ns/op
Iteration   5: 11.865 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic":
  11.874 ±(99.9%) 0.050 ns/op [Average]
  (min, avg, max) = (11.865, 11.874, 11.897), stdev = 0.013
  CI (99.9%): [11.824, 11.925] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 136915 total address lines.
Perf output processed (skipped 56.229 seconds):
 Column 1: cycles (51478 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x30031589:0x30031649] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]

         0x30031589: 81 fe f3 06 00 00                 cmpl    $1779, %esi                   
         0x3003158f: 74 44                             je    68                              ; 0x300315d5
         0x30031591: e9 f4 02 00 00                    jmp    756                            ; 0x3003188a
         0x30031596: 66 2e 0f 1f 84 00 00 00 00 00     nopw    %cs:(%rax,%rax)               
         0x300315a0: 8b 70 04                          movl    4(%rax), %esi                 
         0x300315a3: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
         0x300315a9: 81 fe f4 06 00 00                 cmpl    $1780, %esi                   
         0x300315af: 74 24                             je    36                              ; 0x300315d5
         0x300315b1: e9 9b 02 00 00                    jmp    667                            ; 0x30031851
         0x300315b6: 66 2e 0f 1f 84 00 00 00 00 00     nopw    %cs:(%rax,%rax)               
 10.81%  0x300315c0: 8b 70 04                          movl    4(%rax), %esi                 
  7.71%  0x300315c3: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.74%  0x300315c9: 81 fe f2 06 00 00                 cmpl    $1778, %esi                   
         0x300315cf: 0f 85 bb 02 00 00                 jne    699                            ; 0x30031890
  1.51%  0x300315d5: 43 8d 04 16                       leal    (%r14,%r10), %eax             
         0x300315d9: 83 c0 03                          addl    $3, %eax                      
  0.01%  0x300315dc: 41 89 40 08                       movl    %eax, 8(%r8)                  
  0.74%  0x300315e0: 4d 8d 7a 03                       leaq    3(%r10), %r15                 
  0.01%  0x300315e4: 49 39 df                          cmpq    %rbx, %r15                    
         0x300315e7: 0f 83 07 fe ff ff                 jae    -505                           ; 0x300313f4
         0x300315ed: 4a 8b 44 d2 28                    movq    40(%rdx,%r10,8), %rax         
  3.08%  0x300315f2: 49 85 c3                          testq    %rax, %r11                   
         0x300315f5: 0f 85 b6 01 00 00                 jne    438                            ; 0x300317b1
  0.78%  0x300315fb: 42 0f be 74 11 13                 movsbl    19(%rcx,%r10), %esi         
  0.35%  0x30031601: 83 fe 03                          cmpl    $3, %esi                      
         0x30031604: 0f 87 f5 01 00 00                 ja    501                             ; 0x300317ff
  0.38%  0x3003160a: 41 ff 64 f5 00                    jmpq    *(%r13,%rsi,8)                
         0x3003160f: 8b 70 04                          movl    4(%rax), %esi                 
         0x30031612: 2e 2e 2e 2e 2e 2e 2e 2e 81 e6     andl    $33554431, %esi               
         0x30031620: 81 fe f0 06 00 00                 cmpl    $1776, %esi                   
         0x30031626: 74 6d                             je    109                             ; 0x30031695
         0x30031628: e9 69 02 00 00                    jmp    617                            ; 0x30031896
         0x3003162d: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x3003163c: 0f 1f 40 00                       nopl    (%rax)                        
 12.12%  0x30031640: 8b 70 04                          movl    4(%rax), %esi                 
  7.50%  0x30031643: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.80%  0x30031649: 81 fe f3 06 00 00                 cmpl    $1779, %esi                   
....................................................................................................
 26.11%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x300316e0:0x3003175e] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]

         0x300316e0: 81 fe f0 06 00 00                 cmpl    $1776, %esi                   
         0x300316e6: 0f 84 54 fd ff ff                 je    -684                            ; 0x30031440
         0x300316ec: e9 c7 01 00 00                    jmp    455                            ; 0x300318b8
         0x300316f1: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x30031700: 8b 70 04                          movl    4(%rax), %esi                 
         0x30031703: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
         0x30031709: 81 fe f3 06 00 00                 cmpl    $1779, %esi                   
         0x3003170f: 0f 84 2b fd ff ff                 je    -725                            ; 0x30031440
         0x30031715: e9 b4 01 00 00                    jmp    436                            ; 0x300318ce
         0x3003171a: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
 11.94%  0x30031720: 8b 70 04                          movl    4(%rax), %esi                 
  7.74%  0x30031723: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.83%  0x30031729: 81 fe f4 06 00 00                 cmpl    $1780, %esi                   
         0x3003172f: 0f 84 0b fd ff ff                 je    -757                            ; 0x30031440
         0x30031735: e9 17 01 00 00                    jmp    279                            ; 0x30031851
         0x3003173a: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
         0x30031740: 8b 70 04                          movl    4(%rax), %esi                 
         0x30031743: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
         0x30031749: 81 fe f2 06 00 00                 cmpl    $1778, %esi                   
         0x3003174f: 0f 84 eb fc ff ff                 je    -789                            ; 0x30031440
         0x30031755: 49 83 c2 04                       addq    $4, %r10                      
         0x30031759: e9 48 01 00 00                    jmp    328                            ; 0x300318a6
  0.00%  0x3003175e: 48 83 c4 08                       addq    $8, %rsp                      
....................................................................................................
 20.50%  <total for region 2>

....[Hottest Region 3]..............................................................................
 [0x30031601:0x30031680] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]

  0.35%  0x30031601: 83 fe 03                          cmpl    $3, %esi                      
         0x30031604: 0f 87 f5 01 00 00                 ja    501                             ; 0x300317ff
  0.38%  0x3003160a: 41 ff 64 f5 00                    jmpq    *(%r13,%rsi,8)                
         0x3003160f: 8b 70 04                          movl    4(%rax), %esi                 
         0x30031612: 2e 2e 2e 2e 2e 2e 2e 2e 81 e6     andl    $33554431, %esi               
         0x30031620: 81 fe f0 06 00 00                 cmpl    $1776, %esi                   
         0x30031626: 74 6d                             je    109                             ; 0x30031695
         0x30031628: e9 69 02 00 00                    jmp    617                            ; 0x30031896
         0x3003162d: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x3003163c: 0f 1f 40 00                       nopl    (%rax)                        
 12.12%  0x30031640: 8b 70 04                          movl    4(%rax), %esi                 
  7.50%  0x30031643: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.80%  0x30031649: 81 fe f3 06 00 00                 cmpl    $1779, %esi                   
         0x3003164f: 74 44                             je    68                              ; 0x30031695
         0x30031651: e9 46 02 00 00                    jmp    582                            ; 0x3003189c
         0x30031656: 66 2e 0f 1f 84 00 00 00 00 00     nopw    %cs:(%rax,%rax)               
         0x30031660: 8b 70 04                          movl    4(%rax), %esi                 
         0x30031663: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
         0x30031669: 81 fe f4 06 00 00                 cmpl    $1780, %esi                   
         0x3003166f: 74 24                             je    36                              ; 0x30031695
         0x30031671: e9 db 01 00 00                    jmp    475                            ; 0x30031851
         0x30031676: 66 2e 0f 1f 84 00 00 00 00 00     nopw    %cs:(%rax,%rax)               
         0x30031680: 8b 70 04                          movl    4(%rax), %esi                 
....................................................................................................
 20.43%  <total for region 3>

....[Hottest Region 4]..............................................................................
 [0x30031433:0x300314e0] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]

         0x30031433: ff d6                             callq    *%rsi                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x30031435: 66 66 2e 0f 1f 84 00 00 00 00     nopw    %cs:(%rax,%rax)               
  1.64%  0x30031440: 43 8d 04 16                       leal    (%r14,%r10), %eax             
         0x30031444: 83 c0 05                          addl    $5, %eax                      
  0.05%  0x30031447: 41 89 40 08                       movl    %eax, 8(%r8)                  
  2.91%  0x3003144b: 49 83 c2 04                       addq    $4, %r10                      
         0x3003144f: 2e 2e 2e 2e 2e 2e 2e 2e 49 81     addq    $32, %r9                      
         0x3003145e: 66 90                             nop                                   
         0x30031460: 49 81 fa 1e 1c 00 00              cmpq    $7198, %r10                   
         0x30031467: 0f 87 f1 02 00 00                 ja    753                             ; 0x3003175e
  0.81%  0x3003146d: 4d 8d 7a 01                       leaq    1(%r10), %r15                 
         0x30031471: 49 39 df                          cmpq    %rbx, %r15                    
         0x30031474: 0f 83 7a ff ff ff                 jae    -134                           ; 0x300313f4
         0x3003147a: 2e 4a 8b 44 d2 18                 movq    %cs:24(%rdx,%r10,8), %rax     
  0.76%  0x30031480: 49 85 c3                          testq    %rax, %r11                   
         0x30031483: 0f 85 e4 02 00 00                 jne    740                            ; 0x3003176d
  0.84%  0x30031489: 42 0f be 74 11 11                 movsbl    17(%rcx,%r10), %esi         
  0.37%  0x3003148f: 83 fe 03                          cmpl    $3, %esi                      
         0x30031492: 0f 87 5c 03 00 00                 ja    860                             ; 0x300317f4
  0.79%  0x30031498: ff 24 f7                          jmpq    *(%rdi,%rsi,8)                
  3.81%  0x3003149b: 8b 70 04                          movl    4(%rax), %esi                 
  7.91%  0x3003149e: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.79%  0x300314a4: 81 fe f0 06 00 00                 cmpl    $1776, %esi                   
         0x300314aa: 74 69                             je    105                             ; 0x30031515
         0x300314ac: e9 c4 03 00 00                    jmp    964                            ; 0x30031875
         0x300314b1: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x300314c0: 8b 70 04                          movl    4(%rax), %esi                 
         0x300314c3: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
         0x300314c9: 81 fe f3 06 00 00                 cmpl    $1779, %esi                   
         0x300314cf: 74 44                             je    68                              ; 0x30031515
         0x300314d1: e9 a4 03 00 00                    jmp    932                            ; 0x3003187a
         0x300314d6: 66 2e 0f 1f 84 00 00 00 00 00     nopw    %cs:(%rax,%rax)               
         0x300314e0: 8b 70 04                          movl    4(%rax), %esi                 
....................................................................................................
 16.08%  <total for region 4>

....[Hottest Region 5]..............................................................................
 [0x30031660:0x3003170f] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]

         0x30031660: 8b 70 04                          movl    4(%rax), %esi                 
         0x30031663: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
         0x30031669: 81 fe f4 06 00 00                 cmpl    $1780, %esi                   
         0x3003166f: 74 24                             je    36                              ; 0x30031695
         0x30031671: e9 db 01 00 00                    jmp    475                            ; 0x30031851
         0x30031676: 66 2e 0f 1f 84 00 00 00 00 00     nopw    %cs:(%rax,%rax)               
         0x30031680: 8b 70 04                          movl    4(%rax), %esi                 
         0x30031683: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
         0x30031689: 81 fe f2 06 00 00                 cmpl    $1778, %esi                   
         0x3003168f: 0f 85 0d 02 00 00                 jne    525                            ; 0x300318a2
  1.50%  0x30031695: 43 8d 04 16                       leal    (%r14,%r10), %eax             
         0x30031699: 83 c0 04                          addl    $4, %eax                      
         0x3003169c: 41 89 40 08                       movl    %eax, 8(%r8)                  
  1.62%  0x300316a0: 4d 8d 7a 04                       leaq    4(%r10), %r15                 
  0.01%  0x300316a4: 49 39 df                          cmpq    %rbx, %r15                    
         0x300316a7: 0f 83 47 fd ff ff                 jae    -697                           ; 0x300313f4
         0x300316ad: 4a 8b 44 d2 30                    movq    48(%rdx,%r10,8), %rax         
         0x300316b2: 49 85 c3                          testq    %rax, %r11                   
         0x300316b5: 0f 85 18 01 00 00                 jne    280                            ; 0x300317d3
  0.79%  0x300316bb: 42 0f be 74 11 14                 movsbl    20(%rcx,%r10), %esi         
  0.71%  0x300316c1: 83 fe 03                          cmpl    $3, %esi                      
         0x300316c4: 0f 87 3b 01 00 00                 ja    315                             ; 0x30031805
  0.73%  0x300316ca: ff 64 f5 00                       jmpq    *(%rbp,%rsi,8)                
         0x300316ce: 8b 70 04                          movl    4(%rax), %esi                 
         0x300316d1: 2e 2e 2e 2e 2e 2e 2e 2e 2e 81     andl    $33554431, %esi               
         0x300316e0: 81 fe f0 06 00 00                 cmpl    $1776, %esi                   
         0x300316e6: 0f 84 54 fd ff ff                 je    -684                            ; 0x30031440
         0x300316ec: e9 c7 01 00 00                    jmp    455                            ; 0x300318b8
         0x300316f1: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x30031700: 8b 70 04                          movl    4(%rax), %esi                 
         0x30031703: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
         0x30031709: 81 fe f3 06 00 00                 cmpl    $1779, %esi                   
         0x3003170f: 0f 84 2b fd ff ff                 je    -725                            ; 0x30031440
....................................................................................................
  5.36%  <total for region 5>

....[Hottest Regions]...............................................................................
 26.11%  [0x30031589:0x30031649] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]
 20.50%  [0x300316e0:0x3003175e] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]
 20.43%  [0x30031601:0x30031680] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]
 16.08%  [0x30031433:0x300314e0] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]
  5.36%  [0x30031660:0x3003170f] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]
  4.61%  [0x3003140a:0x30031483] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]
  2.37%  [0x300314e0:0x30031583] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]
  0.26%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.23%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.20%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9f0711c:0xffffffffa9f07167] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9f211f9:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eb8dcf:0xffffffffa9eb8de6] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eff400:0xffffffffa9eff42d] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f69608:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9da97a0:0xffffffffa9da9801] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffaa28eb60:0xffffffffaa28eba9] in [unknown] ([kernel.kallsyms])
  2.63%  <...other 393 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 95.48%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]
  4.26%  [unknown] ([kernel.kallsyms])
  0.13%  [unknown] (libjvm.so)
  0.03%  [unknown] (libc-2.31.so)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub[Falcon]
  0.01%  [unknown] (nf_conntrack.ko)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.00%  __pthread_mutex_lock (libpthread-2.31.so)
  0.00%  <stub: method entry point (kind = zerolocals)>
  0.00%  [unknown] (libstdc++.so.6)
  0.00%  PMEM::account_enabled (libaztall.so)
  0.00%  [unknown] ([vdso])
  0.00%  az_zmd_api_version (libazsys3.so)
  0.00%  _dl_addr (libc-2.31.so)
  0.00%  java.util.concurrent.ConcurrentHashMap$Traverser::advance[C1]
  0.00%  <stub: bipush  16 bipush>
  0.00%  [unknown] (iwlmvm.ko)
  0.03%  <...other 17 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.51%  <generated code>
  4.26%  <native code in ([kernel.kallsyms])>
  0.13%  <native code in (libjvm.so)>
  0.03%  <native code in (libc-2.31.so)>
  0.02%  <native code in (libaztall.so)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in (nf_conntrack.ko)>
  0.00%  <native code in ([vdso])>
  0.00%  <native code in (libstdc++.so.6)>
  0.00%  <native code in (mac80211.ko)>
  0.00%  <native code in (kvm.ko)>
  0.00%  <native code in (iwlmvm.ko)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_5)

# Run progress: 28.57% complete, ETA 00:18:42
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 12.474 ns/op
# Warmup Iteration   2: 12.078 ns/op
# Warmup Iteration   3: 12.097 ns/op
# Warmup Iteration   4: 12.054 ns/op
# Warmup Iteration   5: 12.116 ns/op
Iteration   1: 12.112 ns/op
Iteration   2: 12.126 ns/op
Iteration   3: 12.107 ns/op
Iteration   4: 12.107 ns/op
Iteration   5: 12.098 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic":
  12.110 ±(99.9%) 0.039 ns/op [Average]
  (min, avg, max) = (12.098, 12.110, 12.126), stdev = 0.010
  CI (99.9%): [12.071, 12.149] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 136741 total address lines.
Perf output processed (skipped 58.570 seconds):
 Column 1: cycles (51567 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x30030ff7:0x300312d7] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]

         0x30030ff7: 2e 2e 2e 2e 2e 48 8b 42 10        movq    %cs:16(%rdx), %rax            
         0x30031000: 49 85 c3                          testq    %rax, %r11                   
         0x30031003: 74 14                             je    20                              ; 0x30031019
         0x30031005: 48 8d 72 10                       leaq    16(%rdx), %rsi                
         0x30031009: 49 b8 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %r8            ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x30031013: 48 89 c7                          movq    %rax, %rdi                    
         0x30031016: 41 ff d0                          callq    *%r8                         ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x30031019: 48 be 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rsi           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x30031023: 41 bb 0d 00 00 00                 movl    $13, %r11d                    
         0x30031029: ff d6                             callq    *%rsi                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
  3.07%  0x3003102b: 8b 70 04                          movl    4(%rax), %esi                 
  2.27%  0x3003102e: 2e 2e 2e 2e 2e 2e 2e 2e 2e 81     andl    $33554431, %esi               
  0.27%  0x3003103d: 0f 1f 00                          nopl    (%rax)                        
         0x30031040: 81 fe f0 06 00 00                 cmpl    $1776, %esi                   
         0x30031046: 0f 85 4d 03 00 00                 jne    845                            ; 0x30031399
  0.28%  0x3003104c: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x3003105b: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
  1.49%  0x30031060: 43 8d 04 16                       leal    (%r14,%r10), %eax             
         0x30031064: 83 c0 06                          addl    $6, %eax                      
  0.39%  0x30031067: 41 89 40 08                       movl    %eax, 8(%r8)                  
  2.90%  0x3003106b: 49 83 c2 03                       addq    $3, %r10                      
  0.16%  0x3003106f: 2e 2e 2e 2e 2e 2e 2e 2e 49 81     addq    $24, %r9                      
         0x3003107e: 66 90                             nop                                   
  0.06%  0x30031080: 49 81 fa 1c 1c 00 00              cmpq    $7196, %r10                   
         0x30031087: 0f 87 28 02 00 00                 ja    552                             ; 0x300312b5
  0.81%  0x3003108d: 49 8d 6a 03                       leaq    3(%r10), %rbp                 
  0.13%  0x30031091: 48 39 dd                          cmpq    %rbx, %rbp                    
         0x30031094: 0f 83 4b ff ff ff                 jae    -181                           ; 0x30030fe5
  0.00%  0x3003109a: 2e 4a 8b 44 d2 28                 movq    %cs:40(%rdx,%r10,8), %rax     
  1.65%  0x300310a0: 49 85 c3                          testq    %rax, %r11                   
         0x300310a3: 0f 85 1b 02 00 00                 jne    539                            ; 0x300312c4
  0.87%  0x300310a9: 42 0f be 74 11 13                 movsbl    19(%rcx,%r10), %esi         
  0.22%  0x300310af: 83 fe 04                          cmpl    $4, %esi                      
         0x300310b2: 0f 87 53 02 00 00                 ja    595                             ; 0x3003130b
  0.77%  0x300310b8: 41 ff 24 f7                       jmpq    *(%r15,%rsi,8)                
  0.89%  0x300310bc: 8b 70 04                          movl    4(%rax), %esi                 
  1.01%  0x300310bf: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.21%  0x300310c5: 81 fe f0 06 00 00                 cmpl    $1776, %esi                   
         0x300310cb: 74 73                             je    115                             ; 0x30031140
         0x300310cd: e9 cd 02 00 00                    jmp    717                            ; 0x3003139f
  3.50%  0x300310d2: 8b 70 04                          movl    4(%rax), %esi                 
  2.09%  0x300310d5: 2e 2e 2e 2e 2e 81 e6 ff ff ff     andl    $33554431, %esi               
  0.26%  0x300310e0: 81 fe f5 06 00 00                 cmpl    $1781, %esi                   
         0x300310e6: 74 58                             je    88                              ; 0x30031140
         0x300310e8: e9 76 02 00 00                    jmp    630                            ; 0x30031363
  2.88%  0x300310ed: 8b 70 04                          movl    4(%rax), %esi                 
  2.21%  0x300310f0: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.26%  0x300310f6: 81 fe f3 06 00 00                 cmpl    $1779, %esi                   
         0x300310fc: 74 42                             je    66                              ; 0x30031140
         0x300310fe: 66 90                             nop                                   
         0x30031100: e9 a0 02 00 00                    jmp    672                            ; 0x300313a5
  3.55%  0x30031105: 8b 70 04                          movl    4(%rax), %esi                 
  2.06%  0x30031108: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.23%  0x3003110e: 81 fe f4 06 00 00                 cmpl    $1780, %esi                   
         0x30031114: 74 2a                             je    42                              ; 0x30031140
         0x30031116: e9 90 02 00 00                    jmp    656                            ; 0x300313ab
  3.65%  0x3003111b: 8b 70 04                          movl    4(%rax), %esi                 
  2.12%  0x3003111e: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.21%  0x30031124: 81 fe f2 06 00 00                 cmpl    $1778, %esi                   
         0x3003112a: 0f 85 81 02 00 00                 jne    641                            ; 0x300313b1
  0.21%  0x30031130: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x3003113f: 90                                nop                                   
  1.38%  0x30031140: 43 8d 04 16                       leal    (%r14,%r10), %eax             
         0x30031144: 83 c0 04                          addl    $4, %eax                      
  0.19%  0x30031147: 41 89 40 08                       movl    %eax, 8(%r8)                  
  2.05%  0x3003114b: 49 8d 6a 04                       leaq    4(%r10), %rbp                 
  0.09%  0x3003114f: 48 39 dd                          cmpq    %rbx, %rbp                    
         0x30031152: 0f 83 8d fe ff ff                 jae    -371                           ; 0x30030fe5
         0x30031158: 2e 2e 2e 4a 8b 44 d2 30           movq    %cs:48(%rdx,%r10,8), %rax     
  0.80%  0x30031160: 49 85 c3                          testq    %rax, %r11                   
         0x30031163: 0f 85 73 01 00 00                 jne    371                            ; 0x300312dc
  0.99%  0x30031169: 42 0f be 74 11 14                 movsbl    20(%rcx,%r10), %esi         
  0.18%  0x3003116f: 83 fe 04                          cmpl    $4, %esi                      
         0x30031172: 0f 87 99 01 00 00                 ja    409                             ; 0x30031311
  0.02%  0x30031178: 41 ff 24 f4                       jmpq    *(%r12,%rsi,8)                
  0.98%  0x3003117c: 8b 70 04                          movl    4(%rax), %esi                 
  0.99%  0x3003117f: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.22%  0x30031185: 81 fe f0 06 00 00                 cmpl    $1776, %esi                   
         0x3003118b: 74 73                             je    115                             ; 0x30031200
         0x3003118d: e9 25 02 00 00                    jmp    549                            ; 0x300313b7
  3.51%  0x30031192: 8b 70 04                          movl    4(%rax), %esi                 
  2.01%  0x30031195: 2e 2e 2e 2e 2e 81 e6 ff ff ff     andl    $33554431, %esi               
  0.21%  0x300311a0: 81 fe f5 06 00 00                 cmpl    $1781, %esi                   
         0x300311a6: 74 58                             je    88                              ; 0x30031200
         0x300311a8: e9 b6 01 00 00                    jmp    438                            ; 0x30031363
  3.08%  0x300311ad: 8b 70 04                          movl    4(%rax), %esi                 
  2.09%  0x300311b0: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.24%  0x300311b6: 81 fe f3 06 00 00                 cmpl    $1779, %esi                   
         0x300311bc: 74 42                             je    66                              ; 0x30031200
         0x300311be: 66 90                             nop                                   
         0x300311c0: e9 08 02 00 00                    jmp    520                            ; 0x300313cd
  3.61%  0x300311c5: 8b 70 04                          movl    4(%rax), %esi                 
  1.98%  0x300311c8: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.22%  0x300311ce: 81 fe f4 06 00 00                 cmpl    $1780, %esi                   
         0x300311d4: 74 2a                             je    42                              ; 0x30031200
         0x300311d6: e9 f8 01 00 00                    jmp    504                            ; 0x300313d3
  3.44%  0x300311db: 8b 70 04                          movl    4(%rax), %esi                 
  2.01%  0x300311de: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.17%  0x300311e4: 81 fe f2 06 00 00                 cmpl    $1778, %esi                   
         0x300311ea: 0f 85 f9 01 00 00                 jne    505                            ; 0x300313e9
  0.21%  0x300311f0: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x300311ff: 90                                nop                                   
  1.55%  0x30031200: 43 8d 04 16                       leal    (%r14,%r10), %eax             
         0x30031204: 83 c0 05                          addl    $5, %eax                      
  0.15%  0x30031207: 41 89 40 08                       movl    %eax, 8(%r8)                  
  2.37%  0x3003120b: 49 8d 6a 05                       leaq    5(%r10), %rbp                 
  0.09%  0x3003120f: 48 39 dd                          cmpq    %rbx, %rbp                    
         0x30031212: 0f 83 cd fd ff ff                 jae    -563                           ; 0x30030fe5
         0x30031218: 2e 2e 2e 4a 8b 44 d2 38           movq    %cs:56(%rdx,%r10,8), %rax     
  0.79%  0x30031220: 49 85 c3                          testq    %rax, %r11                   
         0x30031223: 0f 85 cb 00 00 00                 jne    203                            ; 0x300312f4
  0.93%  0x30031229: 42 0f be 74 11 15                 movsbl    21(%rcx,%r10), %esi         
  0.20%  0x3003122f: 83 fe 04                          cmpl    $4, %esi                      
         0x30031232: 0f 87 df 00 00 00                 ja    223                             ; 0x30031317
  0.02%  0x30031238: 41 ff 64 f5 00                    jmpq    *(%r13,%rsi,8)                
  0.75%  0x3003123d: 8b 70 04                          movl    4(%rax), %esi                 
  1.25%  0x30031240: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.20%  0x30031246: 81 fe f2 06 00 00                 cmpl    $1778, %esi                   
         0x3003124c: 0f 84 0e fe ff ff                 je    -498                            ; 0x30031060
         0x30031252: e9 98 01 00 00                    jmp    408                            ; 0x300313ef
  3.03%  0x30031257: 8b 70 04                          movl    4(%rax), %esi                 
  2.10%  0x3003125a: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.22%  0x30031260: 81 fe f5 06 00 00                 cmpl    $1781, %esi                   
         0x30031266: 0f 84 f4 fd ff ff                 je    -524                            ; 0x30031060
         0x3003126c: e9 f2 00 00 00                    jmp    242                            ; 0x30031363
  2.87%  0x30031271: 8b 70 04                          movl    4(%rax), %esi                 
  2.11%  0x30031274: 2e 2e 2e 2e 2e 2e 81 e6 ff ff     andl    $33554431, %esi               
  0.21%  0x30031280: 81 fe f3 06 00 00                 cmpl    $1779, %esi                   
         0x30031286: 0f 84 d4 fd ff ff                 je    -556                            ; 0x30031060
         0x3003128c: e9 74 01 00 00                    jmp    372                            ; 0x30031405
  3.05%  0x30031291: 8b 70 04                          movl    4(%rax), %esi                 
  2.24%  0x30031294: 2e 2e 2e 2e 2e 2e 81 e6 ff ff     andl    $33554431, %esi               
  0.25%  0x300312a0: 81 fe f4 06 00 00                 cmpl    $1780, %esi                   
         0x300312a6: 0f 84 b4 fd ff ff                 je    -588                            ; 0x30031060
         0x300312ac: 49 83 c2 05                       addq    $5, %r10                      
         0x300312b0: e9 22 01 00 00                    jmp    290                            ; 0x300313d7
  0.00%  0x300312b5: 48 83 c4 08                       addq    $8, %rsp                      
         0x300312b9: 5b                                popq    %rbx                          
  0.00%  0x300312ba: 41 5c                             popq    %r12                          
         0x300312bc: 41 5d                             popq    %r13                          
         0x300312be: 41 5e                             popq    %r14                          
         0x300312c0: 41 5f                             popq    %r15                          
         0x300312c2: 5d                                popq    %rbp                          
         0x300312c3: c3                                retq                                  
         0x300312c4: 49 8d 71 f0                       leaq    -16(%r9), %rsi                
         0x300312c8: 48 89 c7                          movq    %rax, %rdi                    
         0x300312cb: 48 b8 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rax           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x300312d5: ff d0                             callq    *%rax                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x300312d7: e9 cd fd ff ff                    jmp    -563                           ; 0x300310a9
....................................................................................................
 95.74%  <total for region 1>

....[Hottest Regions]...............................................................................
 95.74%  [0x30030ff7:0x300312d7] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]
  0.31%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.19%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9f0711f:0xffffffffa9f0714a] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb93b5:0xffffffffa9eb94aa] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eee5d0:0xffffffffa9eee62e] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eef3a2:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9eff400:0xffffffffa9eff42d] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9da97a0:0xffffffffa9da9801] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9ee5876:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eef44f:0xffffffffa9eef4b0] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f695fe:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0740:0xffffffffa9ed0797] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0800:0xffffffffa9ed0860] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffaa28eb12:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  0.05%  [0x7f3995afc5f8:0x7f3995afc621] in [unknown] (libjvm.so)
  2.01%  <...other 299 warm regions...>
....................................................................................................
 99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 95.74%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]
  3.91%  [unknown] ([kernel.kallsyms])
  0.23%  [unknown] (libjvm.so)
  0.02%  [unknown] (libc-2.31.so)
  0.01%  [unknown] ([vdso])
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub[Falcon]
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  _IO_default_xsputn (libc-2.31.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.01%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  syscall (libc-2.31.so)
  0.00%  <stub: method entry point (kind = zerolocals)>
  0.00%  az_get_elastic_tall (libaztall.so)
  0.00%  __errno_location (libpthread-2.31.so)
  0.00%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  _dl_addr (libc-2.31.so)
  0.00%  az_get_elastic (libazsys3.so)
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  ImageLocation::set_data (libjimage.so)
  0.02%  <...other 10 warm methods...>
....................................................................................................
 99.99%  <totals>

....[Distribution by Area]..........................................................................
 95.75%  <generated code>
  3.91%  <native code in ([kernel.kallsyms])>
  0.23%  <native code in (libjvm.so)>
  0.04%  <native code in (libc-2.31.so)>
  0.03%  <native code in (libaztall.so)>
  0.01%  <native code in ([vdso])>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (libazsys3.so)>
  0.00%  <native code in (libstdc++.so.6)>
  0.00%  <native code in (libjimage.so)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_6)

# Run progress: 35.71% complete, ETA 00:16:51
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 12.482 ns/op
# Warmup Iteration   2: 12.269 ns/op
# Warmup Iteration   3: 12.267 ns/op
# Warmup Iteration   4: 12.273 ns/op
# Warmup Iteration   5: 12.233 ns/op
Iteration   1: 12.193 ns/op
Iteration   2: 12.221 ns/op
Iteration   3: 12.220 ns/op
Iteration   4: 12.221 ns/op
Iteration   5: 12.222 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic":
  12.215 ±(99.9%) 0.048 ns/op [Average]
  (min, avg, max) = (12.193, 12.215, 12.222), stdev = 0.012
  CI (99.9%): [12.168, 12.263] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 136800 total address lines.
Perf output processed (skipped 56.283 seconds):
 Column 1: cycles (51380 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x300314fe:0x300315c8] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]

         0x300314fe: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
         0x30031504: 81 fe f2 06 00 00                 cmpl    $1778, %esi                   
         0x3003150a: 74 34                             je    52                              ; 0x30031540
         0x3003150c: e9 0b 03 00 00                    jmp    779                            ; 0x3003181c
         0x30031511: 8b 70 04                          movl    4(%rax), %esi                 
         0x30031514: 2e 2e 2e 2e 2e 2e 81 e6 ff ff     andl    $33554431, %esi               
         0x30031520: 81 fe f6 06 00 00                 cmpl    $1782, %esi                   
         0x30031526: 0f 85 e0 01 00 00                 jne    480                            ; 0x3003170c
         0x3003152c: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x3003153b: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
  1.90%  0x30031540: 43 8d 04 16                       leal    (%r14,%r10), %eax             
         0x30031544: 83 c0 04                          addl    $4, %eax                      
         0x30031547: 41 89 40 08                       movl    %eax, 8(%r8)                  
  2.30%  0x3003154b: 49 8d 6a 04                       leaq    4(%r10), %rbp                 
  0.01%  0x3003154f: 48 39 dd                          cmpq    %rbx, %rbp                    
         0x30031552: 0f 83 8d fe ff ff                 jae    -371                           ; 0x300313e5
         0x30031558: 2e 2e 2e 4a 8b 44 d2 30           movq    %cs:48(%rdx,%r10,8), %rax     
  0.76%  0x30031560: 49 85 c3                          testq    %rax, %r11                   
         0x30031563: 0f 85 dc 01 00 00                 jne    476                            ; 0x30031745
  1.02%  0x30031569: 42 0f be 74 11 14                 movsbl    20(%rcx,%r10), %esi         
  0.12%  0x3003156f: 83 fe 05                          cmpl    $5, %esi                      
         0x30031572: 0f 87 02 02 00 00                 ja    514                             ; 0x3003177a
  0.02%  0x30031578: 41 ff 24 f4                       jmpq    *(%r12,%rsi,8)                
         0x3003157c: 8b 70 04                          movl    4(%rax), %esi                 
         0x3003157f: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
         0x30031585: 81 fe f0 06 00 00                 cmpl    $1776, %esi                   
         0x3003158b: 0f 84 8f 00 00 00                 je    143                             ; 0x30031620
         0x30031591: e9 8c 02 00 00                    jmp    652                            ; 0x30031822
  8.30%  0x30031596: 8b 70 04                          movl    4(%rax), %esi                 
  5.13%  0x30031599: 2e 81 e6 ff ff ff 01              andl    $33554431, %esi               
  0.52%  0x300315a0: 81 fe f5 06 00 00                 cmpl    $1781, %esi                   
         0x300315a6: 74 78                             je    120                             ; 0x30031620
         0x300315a8: e9 7b 02 00 00                    jmp    635                            ; 0x30031828
         0x300315ad: 8b 70 04                          movl    4(%rax), %esi                 
         0x300315b0: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
         0x300315b6: 81 fe f3 06 00 00                 cmpl    $1779, %esi                   
         0x300315bc: 74 62                             je    98                              ; 0x30031620
         0x300315be: 66 90                             nop                                   
         0x300315c0: e9 69 02 00 00                    jmp    617                            ; 0x3003182e
         0x300315c5: 8b 70 04                          movl    4(%rax), %esi                 
         0x300315c8: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
....................................................................................................
 20.07%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x300315b0:0x30031624] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]

         0x300315b0: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
         0x300315b6: 81 fe f3 06 00 00                 cmpl    $1779, %esi                   
         0x300315bc: 74 62                             je    98                              ; 0x30031620
         0x300315be: 66 90                             nop                                   
         0x300315c0: e9 69 02 00 00                    jmp    617                            ; 0x3003182e
         0x300315c5: 8b 70 04                          movl    4(%rax), %esi                 
         0x300315c8: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
         0x300315ce: 81 fe f4 06 00 00                 cmpl    $1780, %esi                   
         0x300315d4: 74 4a                             je    74                              ; 0x30031620
         0x300315d6: e9 59 02 00 00                    jmp    601                            ; 0x30031834
  9.55%  0x300315db: 8b 70 04                          movl    4(%rax), %esi                 
  5.10%  0x300315de: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.51%  0x300315e4: 81 fe f2 06 00 00                 cmpl    $1778, %esi                   
         0x300315ea: 74 34                             je    52                              ; 0x30031620
         0x300315ec: e9 49 02 00 00                    jmp    585                            ; 0x3003183a
         0x300315f1: 8b 70 04                          movl    4(%rax), %esi                 
         0x300315f4: 2e 2e 2e 2e 2e 2e 81 e6 ff ff     andl    $33554431, %esi               
         0x30031600: 81 fe f6 06 00 00                 cmpl    $1782, %esi                   
         0x30031606: 0f 85 00 01 00 00                 jne    256                            ; 0x3003170c
         0x3003160c: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x3003161b: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
  2.11%  0x30031620: 43 8d 04 16                       leal    (%r14,%r10), %eax             
         0x30031624: 83 c0 05                          addl    $5, %eax                      
....................................................................................................
 15.16%  <total for region 2>

....[Hottest Region 3]..............................................................................
 [0x300314b9:0x30031520] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]

         0x300314b9: 2e 81 e6 ff ff ff 01              andl    $33554431, %esi               
         0x300314c0: 81 fe f5 06 00 00                 cmpl    $1781, %esi                   
         0x300314c6: 74 78                             je    120                             ; 0x30031540
         0x300314c8: e9 3d 03 00 00                    jmp    829                            ; 0x3003180a
         0x300314cd: 8b 70 04                          movl    4(%rax), %esi                 
         0x300314d0: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
         0x300314d6: 81 fe f3 06 00 00                 cmpl    $1779, %esi                   
         0x300314dc: 74 62                             je    98                              ; 0x30031540
         0x300314de: 66 90                             nop                                   
         0x300314e0: e9 2b 03 00 00                    jmp    811                            ; 0x30031810
  9.03%  0x300314e5: 8b 70 04                          movl    4(%rax), %esi                 
  5.33%  0x300314e8: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.54%  0x300314ee: 81 fe f4 06 00 00                 cmpl    $1780, %esi                   
         0x300314f4: 74 4a                             je    74                              ; 0x30031540
         0x300314f6: e9 1b 03 00 00                    jmp    795                            ; 0x30031816
         0x300314fb: 8b 70 04                          movl    4(%rax), %esi                 
         0x300314fe: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
         0x30031504: 81 fe f2 06 00 00                 cmpl    $1778, %esi                   
         0x3003150a: 74 34                             je    52                              ; 0x30031540
         0x3003150c: e9 0b 03 00 00                    jmp    779                            ; 0x3003181c
         0x30031511: 8b 70 04                          movl    4(%rax), %esi                 
         0x30031514: 2e 2e 2e 2e 2e 2e 81 e6 ff ff     andl    $33554431, %esi               
         0x30031520: 81 fe f6 06 00 00                 cmpl    $1782, %esi                   
....................................................................................................
 14.90%  <total for region 3>

....[Hottest Region 4]..............................................................................
 [0x300316b1:0x30031745] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]

         0x300316b1: 8b 70 04                          movl    4(%rax), %esi                 
         0x300316b4: 2e 2e 2e 2e 2e 2e 81 e6 ff ff     andl    $33554431, %esi               
         0x300316c0: 81 fe f4 06 00 00                 cmpl    $1780, %esi                   
         0x300316c6: 0f 84 74 fd ff ff                 je    -652                            ; 0x30031440
         0x300316cc: e9 b3 01 00 00                    jmp    435                            ; 0x30031884
         0x300316d1: 8b 70 04                          movl    4(%rax), %esi                 
         0x300316d4: 2e 2e 2e 2e 2e 2e 81 e6 ff ff     andl    $33554431, %esi               
         0x300316e0: 81 fe f2 06 00 00                 cmpl    $1778, %esi                   
         0x300316e6: 0f 84 54 fd ff ff                 je    -684                            ; 0x30031440
         0x300316ec: e9 a9 01 00 00                    jmp    425                            ; 0x3003189a
  7.78%  0x300316f1: 8b 70 04                          movl    4(%rax), %esi                 
  5.96%  0x300316f4: 2e 2e 2e 2e 2e 2e 81 e6 ff ff     andl    $33554431, %esi               
  0.64%  0x30031700: 81 fe f6 06 00 00                 cmpl    $1782, %esi                   
         0x30031706: 0f 84 34 fd ff ff                 je    -716                            ; 0x30031440
         0x3003170c: 48 be 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rsi           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x30031716: 41 bb 16 00 00 00                 movl    $22, %r11d                    
         0x3003171c: ff d6                             callq    *%rsi                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
  0.01%  0x3003171e: 48 83 c4 08                       addq    $8, %rsp                      
  0.00%  0x30031722: 5b                                popq    %rbx                          
         0x30031723: 41 5c                             popq    %r12                          
  0.00%  0x30031725: 41 5d                             popq    %r13                          
         0x30031727: 41 5e                             popq    %r14                          
         0x30031729: 41 5f                             popq    %r15                          
         0x3003172b: 5d                                popq    %rbp                          
         0x3003172c: c3                                retq                                  
         0x3003172d: 49 8d 71 f0                       leaq    -16(%r9), %rsi                
         0x30031731: 48 89 c7                          movq    %rax, %rdi                    
         0x30031734: 48 b8 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rax           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3003173e: ff d0                             callq    *%rax                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x30031740: e9 44 fd ff ff                    jmp    -700                           ; 0x30031489
         0x30031745: 49 8d 71 f8                       leaq    -8(%r9), %rsi                 
....................................................................................................
 14.39%  <total for region 4>

....[Hottest Region 5]..............................................................................
 [0x30031403:0x300314d6] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]

         0x30031403: 74 14                             je    20                              ; 0x30031419
         0x30031405: 48 8d 72 10                       leaq    16(%rdx), %rsi                
         0x30031409: 49 b8 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %r8            ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x30031413: 48 89 c7                          movq    %rax, %rdi                    
         0x30031416: 41 ff d0                          callq    *%r8                         ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x30031419: 48 be 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rsi           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x30031423: 41 bb 0d 00 00 00                 movl    $13, %r11d                    
         0x30031429: ff d6                             callq    *%rsi                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3003142b: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x3003143a: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
  1.78%  0x30031440: 43 8d 04 16                       leal    (%r14,%r10), %eax             
         0x30031444: 83 c0 06                          addl    $6, %eax                      
  0.00%  0x30031447: 41 89 40 08                       movl    %eax, 8(%r8)                  
  2.79%  0x3003144b: 49 83 c2 03                       addq    $3, %r10                      
  0.17%  0x3003144f: 2e 2e 2e 2e 2e 2e 2e 2e 49 81     addq    $24, %r9                      
         0x3003145e: 66 90                             nop                                   
         0x30031460: 49 81 fa 1c 1c 00 00              cmpq    $7196, %r10                   
         0x30031467: 0f 87 b1 02 00 00                 ja    689                             ; 0x3003171e
  0.80%  0x3003146d: 49 8d 6a 03                       leaq    3(%r10), %rbp                 
  0.17%  0x30031471: 48 39 dd                          cmpq    %rbx, %rbp                    
         0x30031474: 0f 83 6b ff ff ff                 jae    -149                           ; 0x300313e5
         0x3003147a: 2e 4a 8b 44 d2 28                 movq    %cs:40(%rdx,%r10,8), %rax     
  1.70%  0x30031480: 49 85 c3                          testq    %rax, %r11                   
         0x30031483: 0f 85 a4 02 00 00                 jne    676                            ; 0x3003172d
  0.84%  0x30031489: 42 0f be 74 11 13                 movsbl    19(%rcx,%r10), %esi         
  0.27%  0x3003148f: 83 fe 05                          cmpl    $5, %esi                      
         0x30031492: 0f 87 dc 02 00 00                 ja    732                             ; 0x30031774
  0.64%  0x30031498: 41 ff 24 f7                       jmpq    *(%r15,%rsi,8)                
  2.00%  0x3003149c: 8b 70 04                          movl    4(%rax), %esi                 
  1.44%  0x3003149f: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.49%  0x300314a5: 81 fe f0 06 00 00                 cmpl    $1776, %esi                   
         0x300314ab: 0f 84 8f 00 00 00                 je    143                             ; 0x30031540
         0x300314b1: e9 4e 03 00 00                    jmp    846                            ; 0x30031804
         0x300314b6: 8b 70 04                          movl    4(%rax), %esi                 
         0x300314b9: 2e 81 e6 ff ff ff 01              andl    $33554431, %esi               
         0x300314c0: 81 fe f5 06 00 00                 cmpl    $1781, %esi                   
         0x300314c6: 74 78                             je    120                             ; 0x30031540
         0x300314c8: e9 3d 03 00 00                    jmp    829                            ; 0x3003180a
         0x300314cd: 8b 70 04                          movl    4(%rax), %esi                 
         0x300314d0: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
         0x300314d6: 81 fe f3 06 00 00                 cmpl    $1779, %esi                   
....................................................................................................
 13.10%  <total for region 5>

....[Hottest Region 6]..............................................................................
 [0x3003165d:0x300316e0] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]

         0x3003165d: 8b 70 04                          movl    4(%rax), %esi                 
         0x30031660: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
         0x30031666: 81 fe f0 06 00 00                 cmpl    $1776, %esi                   
         0x3003166c: 0f 84 ce fd ff ff                 je    -562                            ; 0x30031440
         0x30031672: e9 cb 01 00 00                    jmp    459                            ; 0x30031842
         0x30031677: 8b 70 04                          movl    4(%rax), %esi                 
         0x3003167a: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
         0x30031680: 81 fe f5 06 00 00                 cmpl    $1781, %esi                   
         0x30031686: 0f 84 b4 fd ff ff                 je    -588                            ; 0x30031440
         0x3003168c: e9 c7 01 00 00                    jmp    455                            ; 0x30031858
  6.91%  0x30031691: 8b 70 04                          movl    4(%rax), %esi                 
  5.25%  0x30031694: 2e 2e 2e 2e 2e 2e 81 e6 ff ff     andl    $33554431, %esi               
  0.54%  0x300316a0: 81 fe f3 06 00 00                 cmpl    $1779, %esi                   
         0x300316a6: 0f 84 94 fd ff ff                 je    -620                            ; 0x30031440
         0x300316ac: e9 bd 01 00 00                    jmp    445                            ; 0x3003186e
         0x300316b1: 8b 70 04                          movl    4(%rax), %esi                 
         0x300316b4: 2e 2e 2e 2e 2e 2e 81 e6 ff ff     andl    $33554431, %esi               
         0x300316c0: 81 fe f4 06 00 00                 cmpl    $1780, %esi                   
         0x300316c6: 0f 84 74 fd ff ff                 je    -652                            ; 0x30031440
         0x300316cc: e9 b3 01 00 00                    jmp    435                            ; 0x30031884
         0x300316d1: 8b 70 04                          movl    4(%rax), %esi                 
         0x300316d4: 2e 2e 2e 2e 2e 2e 81 e6 ff ff     andl    $33554431, %esi               
         0x300316e0: 81 fe f2 06 00 00                 cmpl    $1778, %esi                   
....................................................................................................
 12.70%  <total for region 6>

....[Hottest Region 7]..............................................................................
 [0x300315de:0x3003168c] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]

  5.10%  0x300315de: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.51%  0x300315e4: 81 fe f2 06 00 00                 cmpl    $1778, %esi                   
         0x300315ea: 74 34                             je    52                              ; 0x30031620
         0x300315ec: e9 49 02 00 00                    jmp    585                            ; 0x3003183a
         0x300315f1: 8b 70 04                          movl    4(%rax), %esi                 
         0x300315f4: 2e 2e 2e 2e 2e 2e 81 e6 ff ff     andl    $33554431, %esi               
         0x30031600: 81 fe f6 06 00 00                 cmpl    $1782, %esi                   
         0x30031606: 0f 85 00 01 00 00                 jne    256                            ; 0x3003170c
         0x3003160c: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x3003161b: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
  2.11%  0x30031620: 43 8d 04 16                       leal    (%r14,%r10), %eax             
         0x30031624: 83 c0 05                          addl    $5, %eax                      
         0x30031627: 41 89 40 08                       movl    %eax, 8(%r8)                  
  1.55%  0x3003162b: 49 8d 6a 05                       leaq    5(%r10), %rbp                 
  0.01%  0x3003162f: 48 39 dd                          cmpq    %rbx, %rbp                    
         0x30031632: 0f 83 ad fd ff ff                 jae    -595                           ; 0x300313e5
         0x30031638: 2e 2e 2e 4a 8b 44 d2 38           movq    %cs:56(%rdx,%r10,8), %rax     
  0.85%  0x30031640: 49 85 c3                          testq    %rax, %r11                   
         0x30031643: 0f 85 14 01 00 00                 jne    276                            ; 0x3003175d
  1.02%  0x30031649: 42 0f be 74 11 15                 movsbl    21(%rcx,%r10), %esi         
  0.12%  0x3003164f: 83 fe 05                          cmpl    $5, %esi                      
         0x30031652: 0f 87 2a 01 00 00                 ja    298                             ; 0x30031782
  0.02%  0x30031658: 41 ff 64 f5 00                    jmpq    *(%r13,%rsi,8)                
         0x3003165d: 8b 70 04                          movl    4(%rax), %esi                 
         0x30031660: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
         0x30031666: 81 fe f0 06 00 00                 cmpl    $1776, %esi                   
         0x3003166c: 0f 84 ce fd ff ff                 je    -562                            ; 0x30031440
         0x30031672: e9 cb 01 00 00                    jmp    459                            ; 0x30031842
         0x30031677: 8b 70 04                          movl    4(%rax), %esi                 
         0x3003167a: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
         0x30031680: 81 fe f5 06 00 00                 cmpl    $1781, %esi                   
         0x30031686: 0f 84 b4 fd ff ff                 je    -588                            ; 0x30031440
         0x3003168c: e9 c7 01 00 00                    jmp    455                            ; 0x30031858
....................................................................................................
  5.68%  <total for region 7>

....[Hottest Regions]...............................................................................
 20.07%  [0x300314fe:0x300315c8] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]
 15.16%  [0x300315b0:0x30031624] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]
 14.90%  [0x300314b9:0x30031520] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]
 14.39%  [0x300316b1:0x30031745] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]
 13.10%  [0x30031403:0x300314d6] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]
 12.70%  [0x3003165d:0x300316e0] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]
  5.68%  [0x300315de:0x3003168c] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]
  0.23%  [0xffffffffa9eef31c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.18%  [0xffffffffa9ecfb60:0xffffffffa9ecfb7c] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9f0711c:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9eef5ae:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f07065:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f686c5:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9c0f7a2:0xffffffffa9c0f7a3] in [unknown] ([kernel.kallsyms])
  2.39%  <...other 309 warm regions...>
....................................................................................................
 99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 96.03%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]
  3.63%  [unknown] ([kernel.kallsyms])
  0.17%  [unknown] (libjvm.so)
  0.02%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub[Falcon]
  0.02%  [unknown] (liborca.so.0.0.0.0)
  0.02%  [unknown] (libc-2.31.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  az_pmem_get_account_usage_tall (libaztall.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.00%  <stub: putfield  181 putfield>
  0.00%  az_pmem_get_account_usage_tall; az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  is_thread_initialized (libazsys3.so)
  0.00%  syscall (libc-2.31.so)
  0.00%  __errno_location (libpthread-2.31.so)
  0.00%  PMEM::account_enabled (libaztall.so)
  0.00%  [unknown] ([vdso])
  0.00%  az_zmd_api_version (libazsys3.so)
  0.00%  <stub: fast_iaccess_0  221 fast_iaccess_0>
  0.00%  thread_stack_region_start@plt (libazsys3.so)
  0.03%  <...other 13 warm methods...>
....................................................................................................
 99.99%  <totals>

....[Distribution by Area]..........................................................................
 96.06%  <generated code>
  3.63%  <native code in ([kernel.kallsyms])>
  0.17%  <native code in (libjvm.so)>
  0.06%  <native code in (libaztall.so)>
  0.02%  <native code in (libc-2.31.so)>
  0.02%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.00%  <native code in ([vdso])>
  0.00%  <native code in (ld-2.31.so)>
  0.00%  <native code in (libz.so.1.2.11)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_6_DOMINANT_TARGET)

# Run progress: 42.86% complete, ETA 00:14:56
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.305 ns/op
# Warmup Iteration   2: 2.226 ns/op
# Warmup Iteration   3: 2.237 ns/op
# Warmup Iteration   4: 2.237 ns/op
# Warmup Iteration   5: 2.238 ns/op
Iteration   1: 2.237 ns/op
Iteration   2: 2.235 ns/op
Iteration   3: 2.231 ns/op
Iteration   4: 2.227 ns/op
Iteration   5: 2.228 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic":
  2.232 ±(99.9%) 0.017 ns/op [Average]
  (min, avg, max) = (2.227, 2.232, 2.237), stdev = 0.004
  CI (99.9%): [2.215, 2.248] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 137128 total address lines.
Perf output processed (skipped 56.254 seconds):
 Column 1: cycles (51648 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x30031df7:0x30032010] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]

         0x30031df7: 2e 2e 2e 2e 2e 48 8b 42 10        movq    %cs:16(%rdx), %rax            
         0x30031e00: 49 85 c3                          testq    %rax, %r11                   
         0x30031e03: 74 14                             je    20                              ; 0x30031e19
         0x30031e05: 48 8d 72 10                       leaq    16(%rdx), %rsi                
         0x30031e09: 49 b8 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %r8            ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x30031e13: 48 89 c7                          movq    %rax, %rdi                    
         0x30031e16: 41 ff d0                          callq    *%r8                         ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x30031e19: 48 be 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rsi           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x30031e23: 41 bb 0d 00 00 00                 movl    $13, %r11d                    
         0x30031e29: ff d6                             callq    *%rsi                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
  4.23%  0x30031e2b: 8b 70 04                          movl    4(%rax), %esi                 
  3.77%  0x30031e2e: 2e 2e 2e 2e 2e 2e 2e 2e 2e 81     andl    $33554431, %esi               
  0.27%  0x30031e3d: 0f 1f 00                          nopl    (%rax)                        
         0x30031e40: 81 fe f6 06 00 00                 cmpl    $1782, %esi                   
         0x30031e46: 0f 85 d9 03 00 00                 jne    985                            ; 0x30032225
  0.31%  0x30031e4c: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x30031e5b: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
  5.39%  0x30031e60: 43 8d 04 16                       leal    (%r14,%r10), %eax             
  0.04%  0x30031e64: 83 c0 06                          addl    $6, %eax                      
  0.25%  0x30031e67: 41 89 40 08                       movl    %eax, 8(%r8)                  
  0.28%  0x30031e6b: 49 83 c2 03                       addq    $3, %r10                      
  5.12%  0x30031e6f: 2e 2e 2e 2e 2e 2e 2e 2e 49 81     addq    $24, %r9                      
  0.04%  0x30031e7e: 66 90                             nop                                   
  0.16%  0x30031e80: 49 81 fa 1c 1c 00 00              cmpq    $7196, %r10                   
         0x30031e87: 0f 87 c8 02 00 00                 ja    712                             ; 0x30032155
  0.25%  0x30031e8d: 49 8d 6a 03                       leaq    3(%r10), %rbp                 
  5.13%  0x30031e91: 48 39 dd                          cmpq    %rbx, %rbp                    
         0x30031e94: 0f 83 4b ff ff ff                 jae    -181                           ; 0x30031de5
  0.17%  0x30031e9a: 2e 4a 8b 44 d2 28                 movq    %cs:40(%rdx,%r10,8), %rax     
  0.90%  0x30031ea0: 49 85 c3                          testq    %rax, %r11                   
         0x30031ea3: 0f 85 bb 02 00 00                 jne    699                            ; 0x30032164
  0.49%  0x30031ea9: 42 0f be 74 11 13                 movsbl    19(%rcx,%r10), %esi         
  5.23%  0x30031eaf: 85 f6                             testl    %esi, %esi                   
         0x30031eb1: 0f 85 ba 00 00 00                 jne    186                            ; 0x30031f71
  0.03%  0x30031eb7: 8b 70 04                          movl    4(%rax), %esi                 
  0.97%  0x30031eba: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.33%  0x30031ec0: 81 fe f0 06 00 00                 cmpl    $1776, %esi                   
         0x30031ec6: 0f 85 f1 02 00 00                 jne    753                            ; 0x300321bd
  5.56%  0x30031ecc: 43 8d 04 16                       leal    (%r14,%r10), %eax             
  0.03%  0x30031ed0: 83 c0 04                          addl    $4, %eax                      
  0.00%  0x30031ed3: 41 89 40 08                       movl    %eax, 8(%r8)                  
  0.23%  0x30031ed7: 2e 2e 2e 2e 2e 49 8d 6a 04        leaq    %cs:4(%r10), %rbp             
  5.36%  0x30031ee0: 48 39 dd                          cmpq    %rbx, %rbp                    
         0x30031ee3: 0f 83 fc fe ff ff                 jae    -260                           ; 0x30031de5
  0.04%  0x30031ee9: 4a 8b 44 d2 30                    movq    48(%rdx,%r10,8), %rax         
  0.43%  0x30031eee: 49 85 c3                          testq    %rax, %r11                   
         0x30031ef1: 0f 85 85 02 00 00                 jne    645                            ; 0x3003217c
  0.15%  0x30031ef7: 2e 2e 2e 42 0f be 74 11 14        movsbl    %cs:20(%rcx,%r10), %esi     
  5.45%  0x30031f00: 85 f6                             testl    %esi, %esi                   
         0x30031f02: 0f 85 94 00 00 00                 jne    148                            ; 0x30031f9c
  0.04%  0x30031f08: 8b 70 04                          movl    4(%rax), %esi                 
  0.24%  0x30031f0b: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.16%  0x30031f11: 81 fe f0 06 00 00                 cmpl    $1776, %esi                   
         0x30031f17: 0f 85 a6 02 00 00                 jne    678                            ; 0x300321c3
  5.81%  0x30031f1d: 43 8d 04 16                       leal    (%r14,%r10), %eax             
  0.03%  0x30031f21: 83 c0 05                          addl    $5, %eax                      
         0x30031f24: 41 89 40 08                       movl    %eax, 8(%r8)                  
  0.53%  0x30031f28: 49 8d 6a 05                       leaq    5(%r10), %rbp                 
  4.97%  0x30031f2c: 48 39 dd                          cmpq    %rbx, %rbp                    
         0x30031f2f: 0f 83 b0 fe ff ff                 jae    -336                           ; 0x30031de5
  0.03%  0x30031f35: 2e 2e 2e 2e 2e 2e 4a 8b 44 d2     movq    %cs:56(%rdx,%r10,8), %rax     
  0.50%  0x30031f40: 49 85 c3                          testq    %rax, %r11                   
         0x30031f43: 0f 85 4b 02 00 00                 jne    587                            ; 0x30032194
  0.37%  0x30031f49: 42 0f be 74 11 15                 movsbl    21(%rcx,%r10), %esi         
  5.59%  0x30031f4f: 85 f6                             testl    %esi, %esi                   
         0x30031f51: 75 7e                             jne    126                            ; 0x30031fd1
  0.03%  0x30031f53: 8b 70 04                          movl    4(%rax), %esi                 
  0.47%  0x30031f56: 2e 2e 2e 2e 81 e6 ff ff ff 01     andl    $33554431, %esi               
  0.18%  0x30031f60: 81 fe f0 06 00 00                 cmpl    $1776, %esi                   
         0x30031f66: 0f 84 f4 fe ff ff                 je    -268                            ; 0x30031e60
         0x30031f6c: e9 58 02 00 00                    jmp    600                            ; 0x300321c9
  0.30%  0x30031f71: 8d 7e ff                          leal    -1(%rsi), %edi                
  0.02%  0x30031f74: 83 ff 04                          cmpl    $4, %edi                      
         0x30031f77: 0f 87 62 02 00 00                 ja    610                             ; 0x300321df
  0.25%  0x30031f7d: 41 ff 64 fd 00                    jmpq    *(%r13,%rdi,8)                
         0x30031f82: 8b 70 04                          movl    4(%rax), %esi                 
         0x30031f85: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
         0x30031f8b: 81 fe f2 06 00 00                 cmpl    $1778, %esi                   
         0x30031f91: 0f 84 35 ff ff ff                 je    -203                            ; 0x30031ecc
         0x30031f97: e9 d1 02 00 00                    jmp    721                            ; 0x3003226d
  0.01%  0x30031f9c: 2e 8d 7e ff                       leal    %cs:-1(%rsi), %edi            
  0.01%  0x30031fa0: 83 ff 04                          cmpl    $4, %edi                      
         0x30031fa3: 0f 87 3c 02 00 00                 ja    572                             ; 0x300321e5
  0.13%  0x30031fa9: 41 ff 24 fc                       jmpq    *(%r12,%rdi,8)                
  0.39%  0x30031fad: 8b 70 04                          movl    4(%rax), %esi                 
  1.35%  0x30031fb0: 2e 2e 2e 2e 2e 2e 2e 2e 2e 81     andl    $33554431, %esi               
  0.12%  0x30031fbf: 90                                nop                                   
  0.14%  0x30031fc0: 81 fe f2 06 00 00                 cmpl    $1778, %esi                   
         0x30031fc6: 0f 84 51 ff ff ff                 je    -175                            ; 0x30031f1d
         0x30031fcc: e9 a2 02 00 00                    jmp    674                            ; 0x30032273
  0.36%  0x30031fd1: 8d 7e ff                          leal    -1(%rsi), %edi                
         0x30031fd4: 83 ff 04                          cmpl    $4, %edi                      
         0x30031fd7: 0f 87 0e 02 00 00                 ja    526                             ; 0x300321eb
  0.40%  0x30031fdd: 41 ff 24 ff                       jmpq    *(%r15,%rdi,8)                
         0x30031fe1: 8b 70 04                          movl    4(%rax), %esi                 
         0x30031fe4: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
         0x30031fea: 81 fe f2 06 00 00                 cmpl    $1778, %esi                   
         0x30031ff0: 0f 84 6a fe ff ff                 je    -406                            ; 0x30031e60
         0x30031ff6: e9 7e 02 00 00                    jmp    638                            ; 0x30032279
         0x30031ffb: 8b 70 04                          movl    4(%rax), %esi                 
         0x30031ffe: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
         0x30032004: 81 fe f6 06 00 00                 cmpl    $1782, %esi                   
         0x3003200a: 0f 84 bc fe ff ff                 je    -324                            ; 0x30031ecc
         0x30032010: e9 10 02 00 00                    jmp    528                            ; 0x30032225
....................................................................................................
 73.02%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x30031fe1:0x30032060] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]

         0x30031fe1: 8b 70 04                          movl    4(%rax), %esi                 
         0x30031fe4: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
         0x30031fea: 81 fe f2 06 00 00                 cmpl    $1778, %esi                   
         0x30031ff0: 0f 84 6a fe ff ff                 je    -406                            ; 0x30031e60
         0x30031ff6: e9 7e 02 00 00                    jmp    638                            ; 0x30032279
         0x30031ffb: 8b 70 04                          movl    4(%rax), %esi                 
         0x30031ffe: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
         0x30032004: 81 fe f6 06 00 00                 cmpl    $1782, %esi                   
         0x3003200a: 0f 84 bc fe ff ff                 je    -324                            ; 0x30031ecc
         0x30032010: e9 10 02 00 00                    jmp    528                            ; 0x30032225
  5.33%  0x30032015: 8b 70 04                          movl    4(%rax), %esi                 
  3.70%  0x30032018: 2e 2e 81 e6 ff ff ff 01           andl    $33554431, %esi               
  0.32%  0x30032020: 81 fe f4 06 00 00                 cmpl    $1780, %esi                   
         0x30032026: 0f 84 a0 fe ff ff                 je    -352                            ; 0x30031ecc
         0x3003202c: e9 5e 02 00 00                    jmp    606                            ; 0x3003228f
         0x30032031: 8b 70 04                          movl    4(%rax), %esi                 
         0x30032034: 2e 2e 2e 2e 2e 2e 81 e6 ff ff     andl    $33554431, %esi               
         0x30032040: 81 fe f5 06 00 00                 cmpl    $1781, %esi                   
         0x30032046: 0f 84 80 fe ff ff                 je    -384                            ; 0x30031ecc
         0x3003204c: e9 44 02 00 00                    jmp    580                            ; 0x30032295
         0x30032051: 8b 70 04                          movl    4(%rax), %esi                 
         0x30032054: 2e 2e 2e 2e 2e 2e 81 e6 ff ff     andl    $33554431, %esi               
         0x30032060: 81 fe f3 06 00 00                 cmpl    $1779, %esi                   
....................................................................................................
  9.34%  <total for region 2>

....[Hottest Region 3]..............................................................................
 [0x30032071:0x30032100] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]

         0x30032071: 8b 70 04                          movl    4(%rax), %esi                 
         0x30032074: 2e 2e 2e 2e 2e 2e 81 e6 ff ff     andl    $33554431, %esi               
         0x30032080: 81 fe f6 06 00 00                 cmpl    $1782, %esi                   
         0x30032086: 0f 84 91 fe ff ff                 je    -367                            ; 0x30031f1d
         0x3003208c: e9 94 01 00 00                    jmp    404                            ; 0x30032225
         0x30032091: 8b 70 04                          movl    4(%rax), %esi                 
         0x30032094: 2e 2e 2e 2e 2e 2e 81 e6 ff ff     andl    $33554431, %esi               
         0x300320a0: 81 fe f4 06 00 00                 cmpl    $1780, %esi                   
         0x300320a6: 0f 84 71 fe ff ff                 je    -399                            ; 0x30031f1d
         0x300320ac: e9 f1 01 00 00                    jmp    497                            ; 0x300322a2
  3.55%  0x300320b1: 8b 70 04                          movl    4(%rax), %esi                 
  2.72%  0x300320b4: 2e 2e 2e 2e 2e 2e 81 e6 ff ff     andl    $33554431, %esi               
  0.25%  0x300320c0: 81 fe f5 06 00 00                 cmpl    $1781, %esi                   
         0x300320c6: 0f 84 51 fe ff ff                 je    -431                            ; 0x30031f1d
         0x300320cc: e9 d7 01 00 00                    jmp    471                            ; 0x300322a8
         0x300320d1: 8b 70 04                          movl    4(%rax), %esi                 
         0x300320d4: 2e 2e 2e 2e 2e 2e 81 e6 ff ff     andl    $33554431, %esi               
         0x300320e0: 81 fe f3 06 00 00                 cmpl    $1779, %esi                   
         0x300320e6: 0f 84 31 fe ff ff                 je    -463                            ; 0x30031f1d
         0x300320ec: e9 bd 01 00 00                    jmp    445                            ; 0x300322ae
         0x300320f1: 8b 70 04                          movl    4(%rax), %esi                 
         0x300320f4: 2e 2e 2e 2e 2e 2e 81 e6 ff ff     andl    $33554431, %esi               
         0x30032100: 81 fe f4 06 00 00                 cmpl    $1780, %esi                   
....................................................................................................
  6.52%  <total for region 3>

....[Hottest Region 4]..............................................................................
 [0x300320f1:0x3003217c] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]

         0x300320f1: 8b 70 04                          movl    4(%rax), %esi                 
         0x300320f4: 2e 2e 2e 2e 2e 2e 81 e6 ff ff     andl    $33554431, %esi               
         0x30032100: 81 fe f4 06 00 00                 cmpl    $1780, %esi                   
         0x30032106: 0f 84 54 fd ff ff                 je    -684                            ; 0x30031e60
         0x3003210c: e9 b3 01 00 00                    jmp    435                            ; 0x300322c4
         0x30032111: 8b 70 04                          movl    4(%rax), %esi                 
         0x30032114: 2e 2e 2e 2e 2e 2e 81 e6 ff ff     andl    $33554431, %esi               
         0x30032120: 81 fe f5 06 00 00                 cmpl    $1781, %esi                   
         0x30032126: 0f 84 34 fd ff ff                 je    -716                            ; 0x30031e60
         0x3003212c: e9 a9 01 00 00                    jmp    425                            ; 0x300322da
  3.39%  0x30032131: 8b 70 04                          movl    4(%rax), %esi                 
  2.78%  0x30032134: 2e 2e 2e 2e 2e 2e 81 e6 ff ff     andl    $33554431, %esi               
  0.31%  0x30032140: 81 fe f3 06 00 00                 cmpl    $1779, %esi                   
         0x30032146: 0f 84 14 fd ff ff                 je    -748                            ; 0x30031e60
         0x3003214c: 49 83 c2 05                       addq    $5, %r10                      
         0x30032150: e9 5d 01 00 00                    jmp    349                            ; 0x300322b2
         0x30032155: 48 83 c4 08                       addq    $8, %rsp                      
  0.00%  0x30032159: 5b                                popq    %rbx                          
  0.02%  0x3003215a: 41 5c                             popq    %r12                          
  0.01%  0x3003215c: 41 5d                             popq    %r13                          
         0x3003215e: 41 5e                             popq    %r14                          
         0x30032160: 41 5f                             popq    %r15                          
         0x30032162: 5d                                popq    %rbp                          
         0x30032163: c3                                retq                                  
         0x30032164: 49 8d 71 f0                       leaq    -16(%r9), %rsi                
         0x30032168: 48 89 c7                          movq    %rax, %rdi                    
         0x3003216b: 48 b8 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rax           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x30032175: ff d0                             callq    *%rax                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x30032177: e9 2d fd ff ff                    jmp    -723                           ; 0x30031ea9
         0x3003217c: 49 8d 71 f8                       leaq    -8(%r9), %rsi                 
....................................................................................................
  6.52%  <total for region 4>

....[Hottest Regions]...............................................................................
 73.02%  [0x30031df7:0x30032010] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]
  9.34%  [0x30031fe1:0x30032060] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]
  6.52%  [0x30032071:0x30032100] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]
  6.52%  [0x300320f1:0x3003217c] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]
  0.69%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.21%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9f0711f:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eef5b2:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f07065:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9ee587e:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eef44f:0xffffffffa9eef4ad] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28d0d0:0xffffffffaa28d129] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28ead0:0xffffffffaa28eb16] in [unknown] ([kernel.kallsyms])
  0.07%  [0x30031ca0:0x300322f4] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]
  0.07%  [0xffffffffa9ed0800:0xffffffffa9ed0889] in [unknown] ([kernel.kallsyms])
  2.19%  <...other 320 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 95.50%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic[Falcon]
  4.15%  [unknown] ([kernel.kallsyms])
  0.17%  [unknown] (libjvm.so)
  0.04%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub[Falcon]
  0.03%  [unknown] (libc-2.31.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  PMEM::account_enabled (libaztall.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  az_pmem_get_account_usage_tall (libaztall.so)
  0.01%  syscall (libc-2.31.so)
  0.00%  is_thread_initialized (libazsys3.so)
  0.00%  __pthread_mutex_lock (libpthread-2.31.so)
  0.00%  __errno_location (libpthread-2.31.so)
  0.00%  _IO_default_xsputn (libc-2.31.so)
  0.00%  [unknown] (perf-145592.map)
  0.00%  memcpy (libc-2.31.so)
  0.00%  az_zmd_api_version_tall (libaztall.so)
  0.00%  az_get_elastic (libazsys3.so)
  0.02%  <...other 10 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.55%  <generated code>
  4.15%  <native code in ([kernel.kallsyms])>
  0.17%  <native code in (libjvm.so)>
  0.05%  <native code in (libaztall.so)>
  0.05%  <native code in (libc-2.31.so)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libazsys3.so)>
  0.00%  <native code in (perf-145592.map)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain
# Parameters: (targetType = MONOMORPHIC)

# Run progress: 50.00% complete, ETA 00:13:03
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 0.624 ns/op
# Warmup Iteration   2: 0.616 ns/op
# Warmup Iteration   3: 0.616 ns/op
# Warmup Iteration   4: 0.616 ns/op
# Warmup Iteration   5: 0.616 ns/op
Iteration   1: 0.616 ns/op
Iteration   2: 0.616 ns/op
Iteration   3: 0.616 ns/op
Iteration   4: 0.616 ns/op
Iteration   5: 0.616 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain":
  0.616 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (0.616, 0.616, 0.616), stdev = 0.001
  CI (99.9%): [0.616, 0.616] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain:·asm":
PrintAssembly processed: 136409 total address lines.
Perf output processed (skipped 56.252 seconds):
 Column 1: cycles (51533 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x30030d02:0x30030e53] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain[Falcon]

         0x30030d02: 31 ff                             xorl    %edi, %edi                    
         0x30030d04: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x30030d13: 66 66 66 66 2e 0f 1f 84 00 00     nopw    %cs:(%rax,%rax)               
         0x30030d20: 48 83 3c f9 00                    cmpq    $0, (%rcx,%rdi,8)             
         0x30030d25: 0f 84 5a 01 00 00                 je    346                             ; 0x30030e85
         0x30030d2b: 44 8d 04 3e                       leal    (%rsi,%rdi), %r8d             
         0x30030d2f: 44 89 40 08                       movl    %r8d, 8(%rax)                 
         0x30030d33: 48 ff c7                          incq    %rdi                          
         0x30030d36: 48 39 fa                          cmpq    %rdi, %rdx                    
         0x30030d39: 75 e5                             jne    -27                            ; 0x30030d20
  0.01%  0x30030d3b: 58                                popq    %rax                          
  0.02%  0x30030d3c: c3                                retq                                  
         0x30030d3d: 41 89 d0                          movl    %edx, %r8d                    
         0x30030d40: 41 81 e0 f8 ff ff 7f              andl    $2147483640, %r8d             
         0x30030d47: 31 ff                             xorl    %edi, %edi                    
  0.01%  0x30030d49: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x30030d58: 0f 1f 84 00 00 00 00 00           nopl    (%rax,%rax)                   
         0x30030d60: 48 83 7c f9 10 00                 cmpq    $0, 16(%rcx,%rdi,8)           
  3.71%  0x30030d66: 0f 84 19 01 00 00                 je    281                             ; 0x30030e85
  3.74%  0x30030d6c: 44 8d 0c 3e                       leal    (%rsi,%rdi), %r9d             
         0x30030d70: 41 ff c1                          incl    %r9d                          
  3.78%  0x30030d73: 44 89 48 08                       movl    %r9d, 8(%rax)                 
         0x30030d77: 48 81 7c f9 18 00 00 00 00        cmpq    $0, 24(%rcx,%rdi,8)           
  3.73%  0x30030d80: 0f 84 ff 00 00 00                 je    255                             ; 0x30030e85
  3.80%  0x30030d86: 44 8d 0c 3e                       leal    (%rsi,%rdi), %r9d             
         0x30030d8a: 41 83 c1 02                       addl    $2, %r9d                      
  3.79%  0x30030d8e: 44 89 48 08                       movl    %r9d, 8(%rax)                 
  0.00%  0x30030d92: 48 83 7c f9 20 00                 cmpq    $0, 32(%rcx,%rdi,8)           
  5.36%  0x30030d98: 0f 84 e7 00 00 00                 je    231                             ; 0x30030e85
  3.96%  0x30030d9e: 44 8d 0c 3e                       leal    (%rsi,%rdi), %r9d             
         0x30030da2: 41 83 c1 03                       addl    $3, %r9d                      
  3.70%  0x30030da6: 44 89 48 08                       movl    %r9d, 8(%rax)                 
         0x30030daa: 48 83 7c f9 28 00                 cmpq    $0, 40(%rcx,%rdi,8)           
  3.62%  0x30030db0: 0f 84 cf 00 00 00                 je    207                             ; 0x30030e85
  3.66%  0x30030db6: 44 8d 0c 3e                       leal    (%rsi,%rdi), %r9d             
  0.00%  0x30030dba: 41 83 c1 04                       addl    $4, %r9d                      
  3.70%  0x30030dbe: 44 89 48 08                       movl    %r9d, 8(%rax)                 
         0x30030dc2: 48 83 7c f9 30 00                 cmpq    $0, 48(%rcx,%rdi,8)           
  3.83%  0x30030dc8: 0f 84 b7 00 00 00                 je    183                             ; 0x30030e85
  3.74%  0x30030dce: 44 8d 0c 3e                       leal    (%rsi,%rdi), %r9d             
         0x30030dd2: 41 83 c1 05                       addl    $5, %r9d                      
  3.87%  0x30030dd6: 44 89 48 08                       movl    %r9d, 8(%rax)                 
  0.00%  0x30030dda: 48 83 7c f9 38 00                 cmpq    $0, 56(%rcx,%rdi,8)           
  3.67%  0x30030de0: 0f 84 9f 00 00 00                 je    159                             ; 0x30030e85
  3.79%  0x30030de6: 44 8d 0c 3e                       leal    (%rsi,%rdi), %r9d             
         0x30030dea: 41 83 c1 06                       addl    $6, %r9d                      
  3.67%  0x30030dee: 44 89 48 08                       movl    %r9d, 8(%rax)                 
  0.00%  0x30030df2: 48 83 7c f9 40 00                 cmpq    $0, 64(%rcx,%rdi,8)           
  3.71%  0x30030df8: 0f 84 87 00 00 00                 je    135                             ; 0x30030e85
  3.89%  0x30030dfe: 44 8d 0c 3e                       leal    (%rsi,%rdi), %r9d             
         0x30030e02: 41 83 c1 07                       addl    $7, %r9d                      
  3.69%  0x30030e06: 44 89 48 08                       movl    %r9d, 8(%rax)                 
         0x30030e0a: 48 83 7c f9 48 00                 cmpq    $0, 72(%rcx,%rdi,8)           
  3.83%  0x30030e10: 74 73                             je    115                             ; 0x30030e85
  3.68%  0x30030e12: 44 8d 0c 3e                       leal    (%rsi,%rdi), %r9d             
         0x30030e16: 41 83 c1 08                       addl    $8, %r9d                      
  3.76%  0x30030e1a: 44 89 48 08                       movl    %r9d, 8(%rax)                 
  0.00%  0x30030e1e: 48 83 c7 08                       addq    $8, %rdi                      
  3.85%  0x30030e22: 49 39 f8                          cmpq    %rdi, %r8                     
         0x30030e25: 0f 85 35 ff ff ff                 jne    -203                           ; 0x30030d60
         0x30030e2b: 01 fe                             addl    %edi, %esi                    
         0x30030e2d: e9 c1 fe ff ff                    jmp    -319                           ; 0x30030cf3
         0x30030e32: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x30030e3c: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x30030e3e: 66 90                             nop                                   
         0x30030e40: e9 6f fe ff ff                    jmp    -401                           ; 0x30030cb4
         0x30030e45: 48 83 c6 08                       addq    $8, %rsi                      
         0x30030e49: 48 b8 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rax           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x30030e53: 48 89 cf                          movq    %rcx, %rdi                    
....................................................................................................
 95.58%  <total for region 1>

....[Hottest Regions]...............................................................................
 95.58%  [0x30030d02:0x30030e53] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain[Falcon]
  0.24%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.19%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eb93b0:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.14%  [0x30030ca0:0x30030ead] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain[Falcon]
  0.13%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f0711f:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9f695f0:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.09%  [0x300338c6:0x3003393c] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_virtual_calls_chain_jmhTest::virtual_calls_chain_avgt_jmhStub[Falcon]
  0.09%  [0xffffffffaa28ead0:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f686c0:0xffffffffa9f68761] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ed0800:0xffffffffa9ed0860] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.06%  [0x7f0512cde5f8:0x7f0512cde621] in [unknown] (libjvm.so)
  0.06%  [0xffffffffa9ee587e:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  2.13%  <...other 321 warm regions...>
....................................................................................................
 99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 95.72%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain[Falcon]
  3.75%  [unknown] ([kernel.kallsyms])
  0.30%  [unknown] (libjvm.so)
  0.09%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_virtual_calls_chain_jmhTest::virtual_calls_chain_avgt_jmhStub[Falcon]
  0.01%  [unknown] (libc-2.31.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  thread_stack_region_start (libazsys3.so)
  0.01%  _IO_fwrite (libc-2.31.so)
  0.01%  <stub: method entry point (kind = zerolocals)>
  0.01%  _IO_default_xsputn (libc-2.31.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  syscall (libc-2.31.so)
  0.00%  VMEM_SpaceManager::uses_cache_for_account (libaztall.so)
  0.00%  __errno_location (libpthread-2.31.so)
  0.00%  [unknown] ([vdso])
  0.00%  millis_to_ticks (libazsys3.so)
  0.00%  <stub: return entry points>
  0.00%  az_pmem_get_account_usage_tall (libaztall.so)
  0.04%  <...other 20 warm methods...>
....................................................................................................
 99.99%  <totals>

....[Distribution by Area]..........................................................................
 95.84%  <generated code>
  3.75%  <native code in ([kernel.kallsyms])>
  0.30%  <native code in (libjvm.so)>
  0.04%  <native code in (libc-2.31.so)>
  0.03%  <native code in (libaztall.so)>
  0.02%  <native code in (libazsys3.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.00%  <native code in (libpthread-2.31.so)>
  0.00%  <native code in ([vdso])>
  0.00%  <native code in (perf-145731.map)>
  0.00%  <native code in (ld-2.31.so)>
  0.00%  <native code in (libz.so.1.2.11)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain
# Parameters: (targetType = BIMORPHIC)

# Run progress: 57.14% complete, ETA 00:11:10
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.224 ns/op
# Warmup Iteration   2: 1.209 ns/op
# Warmup Iteration   3: 1.209 ns/op
# Warmup Iteration   4: 1.209 ns/op
# Warmup Iteration   5: 1.209 ns/op
Iteration   1: 1.211 ns/op
Iteration   2: 1.209 ns/op
Iteration   3: 1.208 ns/op
Iteration   4: 1.208 ns/op
Iteration   5: 1.214 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain":
  1.210 ±(99.9%) 0.011 ns/op [Average]
  (min, avg, max) = (1.208, 1.210, 1.214), stdev = 0.003
  CI (99.9%): [1.199, 1.221] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain:·asm":
PrintAssembly processed: 135934 total address lines.
Perf output processed (skipped 56.221 seconds):
 Column 1: cycles (51601 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x300300a0:0x300301df] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain[Falcon]

         0x300301c4: e9 20 ff ff ff                    jmp    -224                           ; 0x300300e9
         0x300301c9: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x300301d3: 41 bb 0b 00 00 00                 movl    $11, %r11d                    
         0x300301d9: ff d0                             callq    *%rax                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x300301db: 00 00                             addb    %al, (%rax)                   
         0x300301dd: 00 00                             addb    %al, (%rax)                   
         0x300301df: 00 00                             addb    %al, (%rax)                   
         -----------
           # {method}{0x20002658ef8} virtual_calls_chain[Falcon] ()V in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicInterfaceCallBenchmark
         Decoding CodeBlob 0x30030000
  0.00%  0x300300a0: eb f9                             pushq    %rbx                         
         0x300300a2: 48 89 fe                          movq    %rdi, %rsi                    
         0x300300a5: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  0.03%  0x300300ae: 0f 85 c8 00 00 00                 jne    200                            ; 0x3003017c
  0.00%  0x300300b4: 48 8b 4e 08                       movq    8(%rsi), %rcx                 
  0.13%  0x300300b8: b8 48 00 f8 2f                    movl    $804782152, %eax              ; 804782152 = clearable_gc_phase_trap_mask
         0x300300bd: 4c 8b 00                          movq    (%rax), %r8                   
         0x300300c0: 49 85 c8                          testq    %rcx, %r8                    
         0x300300c3: 0f 85 c4 00 00 00                 jne    196                            ; 0x3003018d
         0x300300c9: 44 8b 49 08                       movl    8(%rcx), %r9d                 
  0.05%  0x300300cd: 45 85 c9                          testl    %r9d, %r9d                   
         0x300300d0: 74 7d                             je    125                             ; 0x3003014f
  0.00%  0x300300d2: 48 b8 60 d1 ff 2c 00 00 00 00     movabsq    $754962784, %rax           ; 0x2cffd160 = 
         0x300300dc: 2e 48 8b 10                       movq    %cs:(%rax), %rdx              
         0x300300e0: 49 85 d0                          testq    %rdx, %r8                    
         0x300300e3: 0f 85 bf 00 00 00                 jne    191                            ; 0x300301a8
         0x300300e9: 48 8d 71 10                       leaq    16(%rcx), %rsi                
  0.00%  0x300300ed: 44 8b 5a 08                       movl    8(%rdx), %r11d                
         0x300300f1: 41 ff c3                          incl    %r11d                         
         0x300300f4: 45 31 d2                          xorl    %r10d, %r10d                  
         0x300300f7: 48 bb c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rbx           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
  0.01%  0x30030101: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x30030110: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x3003011f: 90                                nop                                   
  7.53%  0x30030120: 48 8b 06                          movq    (%rsi), %rax                  
  7.78%  0x30030123: 49 85 c0                          testq    %rax, %r8                    
         0x30030126: 75 29                             jne    41                             ; 0x30030151
  6.01%  0x30030128: 8b 78 04                          movl    4(%rax), %edi                 
 14.18%  0x3003012b: 83 cf 02                          orl    $2, %edi                       
 10.16%  0x3003012e: 81 e7 ff ff ff 01                 andl    $33554431, %edi               
  9.35%  0x30030134: 81 ff f2 06 00 00                 cmpl    $1778, %edi                   
         0x3003013a: 75 2e                             jne    46                             ; 0x3003016a
  9.76%  0x3003013c: 43 8d 04 13                       leal    (%r11,%r10), %eax             
  7.68%  0x30030140: 89 42 08                          movl    %eax, 8(%rdx)                 
  7.28%  0x30030143: 49 ff c2                          incq    %r10                          
  5.86%  0x30030146: 48 83 c6 08                       addq    $8, %rsi                      
  9.71%  0x3003014a: 4d 39 ca                          cmpq    %r9, %r10                     
         0x3003014d: 72 d1                             jb    -47                             ; 0x30030120
  0.00%  0x3003014f: 5b                                popq    %rbx                          
  0.07%  0x30030150: c3                                retq                                  
         0x30030151: 48 89 c7                          movq    %rax, %rdi                    
         0x30030154: ff d3                             callq    *%rbx                        
         0x30030156: eb d0                             jmp    -48                            ; 0x30030128
         0x30030158: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x30030162: 41 bb 0b 00 00 00                 movl    $11, %r11d                    
         0x30030168: ff d0                             callq    *%rax                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3003016a: 48 ba 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rdx           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x30030174: 41 bb 17 00 00 00                 movl    $23, %r11d                    
         0x3003017a: ff d2                             callq    *%rdx                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3003017c: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
....................................................................................................
 95.60%  <total for region 1>

....[Hottest Regions]...............................................................................
 95.60%  [0x300300a0:0x300301df] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain[Falcon]
  0.47%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.24%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9f0711f:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f686cb:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eef5ae:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eff400:0xffffffffa9eff42d] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f695f0:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffaa28d0d0:0xffffffffaa28d129] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ee5876:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0800:0xffffffffa9ed0889] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9c0f77a:0xffffffffa9c0f7a3] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0748:0xffffffffa9ed0797] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28eb12:0xffffffffaa28eb20] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9da97b2:0xffffffffa9da9802] in [unknown] ([kernel.kallsyms])
  1.99%  <...other 309 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 95.60%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain[Falcon]
  4.06%  [unknown] ([kernel.kallsyms])
  0.19%  [unknown] (libjvm.so)
  0.04%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_virtual_calls_chain_jmhTest::virtual_calls_chain_avgt_jmhStub[Falcon]
  0.01%  [unknown] (libc-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  [unknown] ([vdso])
  0.01%  az_get_elastic (libazsys3.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.00%  PMEM::get_account_usage (libaztall.so)
  0.00%  PMEM::account_enabled (libaztall.so)
  0.00%  PMEM_Account::fetch_stats (libaztall.so)
  0.00%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  <stub: aload  25 aload>
  0.00%  memcpy (libc-2.31.so)
  0.00%  _IO_padn (libc-2.31.so)
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  syscall (libc-2.31.so)
  0.02%  <...other 12 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.66%  <generated code>
  4.06%  <native code in ([kernel.kallsyms])>
  0.19%  <native code in (libjvm.so)>
  0.03%  <native code in (libaztall.so)>
  0.03%  <native code in (libc-2.31.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in ([vdso])>
  0.01%  <native code in (libpthread-2.31.so)>
  0.00%  <native code in (libstdc++.so.6)>
  0.00%  <native code in (libjava.so)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain
# Parameters: (targetType = MEGAMORPHIC_3)

# Run progress: 64.29% complete, ETA 00:09:18
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.298 ns/op
# Warmup Iteration   2: 1.281 ns/op
# Warmup Iteration   3: 1.281 ns/op
# Warmup Iteration   4: 1.281 ns/op
# Warmup Iteration   5: 1.281 ns/op
Iteration   1: 1.287 ns/op
Iteration   2: 1.289 ns/op
Iteration   3: 1.290 ns/op
Iteration   4: 1.289 ns/op
Iteration   5: 1.287 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain":
  1.289 ±(99.9%) 0.005 ns/op [Average]
  (min, avg, max) = (1.287, 1.289, 1.290), stdev = 0.001
  CI (99.9%): [1.283, 1.294] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain:·asm":
PrintAssembly processed: 136132 total address lines.
Perf output processed (skipped 56.207 seconds):
 Column 1: cycles (51343 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002ff25:0x3002ffd2] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain[Falcon]

         0x3002ff25: 48 b8 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rax           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002ff2f: 48 89 d7                          movq    %rdx, %rdi                    
         0x3002ff32: ff d0                             callq    *%rax                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002ff34: 48 89 c2                          movq    %rax, %rdx                    
         0x3002ff37: eb ac                             jmp    -84                            ; 0x3002fee5
         0x3002ff39: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002ff43: 41 bb 0b 00 00 00                 movl    $11, %r11d                    
         0x3002ff49: ff d0                             callq    *%rax                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002ff4b: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x3002ff5a: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
  8.73%  0x3002ff60: 43 8d 04 13                       leal    (%r11,%r10), %eax             
  7.95%  0x3002ff64: 89 42 08                          movl    %eax, 8(%rdx)                 
  5.00%  0x3002ff67: 49 ff c2                          incq    %r10                          
  7.24%  0x3002ff6a: 48 83 c6 08                       addq    $8, %rsi                      
  8.75%  0x3002ff6e: 4d 39 ca                          cmpq    %r9, %r10                     
         0x3002ff71: 73 36                             jae    54                             ; 0x3002ffa9
  8.07%  0x3002ff73: 48 8b 06                          movq    (%rsi), %rax                  
  5.30%  0x3002ff76: 49 85 c0                          testq    %rax, %r8                    
         0x3002ff79: 75 30                             jne    48                             ; 0x3002ffab
  7.26%  0x3002ff7b: 8b 78 04                          movl    4(%rax), %edi                 
 16.01%  0x3002ff7e: 81 e7 ff ff ff 01                 andl    $33554431, %edi               
 10.01%  0x3002ff84: 8d 9f 0e f9 ff ff                 leal    -1778(%rdi), %ebx             
  7.63%  0x3002ff8a: 83 fb 02                          cmpl    $2, %ebx                      
         0x3002ff8d: 72 d1                             jb    -47                             ; 0x3002ff60
  3.80%  0x3002ff8f: 81 ff f0 06 00 00                 cmpl    $1776, %edi                   
         0x3002ff95: 74 c9                             je    -55                             ; 0x3002ff60
         0x3002ff97: 48 ba 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rdx           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002ffa1: 41 bb 18 00 00 00                 movl    $24, %r11d                    
         0x3002ffa7: ff d2                             callq    *%rdx                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
  0.01%  0x3002ffa9: 5b                                popq    %rbx                          
  0.07%  0x3002ffaa: c3                                retq                                  
         0x3002ffab: 48 bb c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rbx           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002ffb5: 48 89 c7                          movq    %rax, %rdi                    
         0x3002ffb8: ff d3                             callq    *%rbx                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002ffba: eb bf                             jmp    -65                            ; 0x3002ff7b
         0x3002ffbc: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002ffc6: 41 bb 0b 00 00 00                 movl    $11, %r11d                    
         0x3002ffcc: ff d0                             callq    *%rax                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002ffce: 00 00                             addb    %al, (%rax)                   
         0x3002ffd0: 00 00                             addb    %al, (%rax)                   
         0x3002ffd2: 00 00                             addb    %al, (%rax)                   
....................................................................................................
 95.82%  <total for region 1>

....[Hottest Regions]...............................................................................
 95.82%  [0x3002ff25:0x3002ffd2] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain[Falcon]
  0.24%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.21%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9f0711c:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eb93b5:0xffffffffa9eb9412] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f695f5:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9c94c86:0xffffffffa9c94c86] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f686c0:0xffffffffa9f6875f] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffaa28ead0:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f07065:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.08%  [0x3002fea0:0x3002ffd2] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain[Falcon]
  0.08%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0745:0xffffffffa9ed07c7] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eef467:0xffffffffa9eef4ad] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ee587e:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eee5d0:0xffffffffa9eee62f] in [unknown] ([kernel.kallsyms])
  2.07%  <...other 332 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 95.90%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain[Falcon]
  3.76%  [unknown] ([kernel.kallsyms])
  0.19%  [unknown] (libjvm.so)
  0.04%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_virtual_calls_chain_jmhTest::virtual_calls_chain_avgt_jmhStub[Falcon]
  0.02%  [unknown] (liborca.so.0.0.0.0)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  __pthread_mutex_lock (libpthread-2.31.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.00%  is_thread_initialized (libazsys3.so)
  0.00%  __errno_location (libpthread-2.31.so)
  0.00%  PMEM::account_enabled (libaztall.so)
  0.00%  clock_gettime (libc-2.31.so)
  0.00%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  VMEM::get_account_usage (libaztall.so)
  0.00%  PMEM_Account::fetch_stats (libaztall.so)
  0.00%  <stub: return entry points>
  0.00%  <stub: aload  25 aload>
  0.00%  _fini (libextnet.so)
  0.00%  _IO_padn (libc-2.31.so)
  0.00%  [unknown] (librt-2.31.so)
  0.03%  <...other 13 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.96%  <generated code>
  3.76%  <native code in ([kernel.kallsyms])>
  0.19%  <native code in (libjvm.so)>
  0.03%  <native code in (libc-2.31.so)>
  0.03%  <native code in (libaztall.so)>
  0.02%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (libazsys3.so)>
  0.00%  <native code in (librt-2.31.so)>
  0.00%  <native code in (kvm.ko)>
  0.00%  <native code in (libextnet.so)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain
# Parameters: (targetType = MEGAMORPHIC_4)

# Run progress: 71.43% complete, ETA 00:07:26
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.004 ns/op
# Warmup Iteration   2: 1.963 ns/op
# Warmup Iteration   3: 1.963 ns/op
# Warmup Iteration   4: 1.962 ns/op
# Warmup Iteration   5: 1.963 ns/op
Iteration   1: 1.963 ns/op
Iteration   2: 1.963 ns/op
Iteration   3: 1.963 ns/op
Iteration   4: 1.962 ns/op
Iteration   5: 1.962 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain":
  1.963 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (1.962, 1.963, 1.963), stdev = 0.001
  CI (99.9%): [1.961, 1.965] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain:·asm":
PrintAssembly processed: 136576 total address lines.
Perf output processed (skipped 56.523 seconds):
 Column 1: cycles (51560 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x300308a0:0x30030b3b] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain[Falcon]

         0x30030b31: 00 00                             addb    %al, (%rax)                   
         0x30030b33: 00 00                             addb    %al, (%rax)                   
         0x30030b35: 00 00                             addb    %al, (%rax)                   
         0x30030b37: 00 00                             addb    %al, (%rax)                   
         0x30030b39: 00 00                             addb    %al, (%rax)                   
         0x30030b3b: 00 00                             addb    %al, (%rax)                   
         5.974:  263         3 promoted  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain ()V (tid 146169) (kid 1447 pkid/prev 1423/NA) (mid 1481732 pmid 18435) (bytes 39) (generation 0) (lvl O2) (score -19) (score_updated 0ms; orig 0; promoted 100) (rank 0, time-between-promotions 0ms) (wait 71ms)
         -----------
           # {method}{0x20002658f00} virtual_calls_chain[Falcon] ()V in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicInterfaceCallBenchmark
         Decoding CodeBlob 0x30030800
  0.00%  0x300308a0: eb f9                             pushq    %r15                         
         0x300308a2: 41 56                             pushq    %r14                         
         0x300308a4: 41 55                             pushq    %r13                         
         0x300308a6: 41 54                             pushq    %r12                         
  0.01%  0x300308a8: 53                                pushq    %rbx                         
         0x300308a9: 48 83 ec 40                       subq    $64, %rsp                     
         0x300308ad: 48 89 fe                          movq    %rdi, %rsi                    
  0.00%  0x300308b0: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
         0x300308b9: 0f 85 7a 01 00 00                 jne    378                            ; 0x30030a39
         0x300308bf: 48 8b 5e 08                       movq    8(%rsi), %rbx                 
         0x300308c3: b8 48 00 f8 2f                    movl    $804782152, %eax              ; 804782152 = clearable_gc_phase_trap_mask
  0.01%  0x300308c8: 48 8b 08                          movq    (%rax), %rcx                  
         0x300308cb: 48 85 d9                          testq    %rbx, %rcx                   
         0x300308ce: 0f 85 76 01 00 00                 jne    374                            ; 0x30030a4a
         0x300308d4: 2e 2e 2e 2e 2e 2e 2e 2e 44 8b     movl    %cs:8(%rbx), %r15d            
  0.02%  0x300308e0: 45 85 ff                          testl    %r15d, %r15d                 
         0x300308e3: 0f 84 11 01 00 00                 je    273                             ; 0x300309fa
  0.01%  0x300308e9: 48 b8 50 e7 ff 2c 00 00 00 00     movabsq    $754968400, %rax           ; 0x2cffe750 = 
         0x300308f3: 4c 8b 30                          movq    (%rax), %r14                  
         0x300308f6: 4c 85 f1                          testq    %r14, %rcx                   
         0x300308f9: 0f 85 66 01 00 00                 jne    358                            ; 0x30030a65
         0x300308ff: 45 31 e4                          xorl    %r12d, %r12d                  
  0.00%  0x30030902: 41 bd 48 00 f8 2f                 movl    $804782152, %r13d             ; 804782152 = clearable_gc_phase_trap_mask
         0x30030908: 0f 1f 84 00 00 00 00 00           nopl    (%rax,%rax)                   
         0x30030910: 4a 8b 4c e3 10                    movq    16(%rbx,%r12,8), %rcx         
  0.04%  0x30030915: 2e 2e 2e 2e 2e 2e 2e 4d 8b 4d     movq    %cs:(%r13), %r9               
 18.55%  0x30030920: 49 85 c9                          testq    %rcx, %r9                    
         0x30030923: 0f 85 df 00 00 00                 jne    223                            ; 0x30030a08
  0.12%  0x30030929: 8b 41 04                          movl    4(%rcx), %eax                 
  0.13%  0x3003092c: 25 ff ff ff 01                    andl    $33554431, %eax               
  0.04%  0x30030931: 8d 90 0e f9 ff ff                 leal    -1778(%rax), %edx             
 18.75%  0x30030937: 83 fa 03                          cmpl    $3, %edx                      
         0x3003093a: 73 14                             jae    20                             ; 0x30030950
  4.95%  0x3003093c: 41 ff 46 08                       incl    8(%r14)                       
 52.86%  0x30030940: 49 ff c4                          incq    %r12                          
  0.12%  0x30030943: 4d 39 fc                          cmpq    %r15, %r12                    
         0x30030946: 72 c8                             jb    -56                             ; 0x30030910
         0x30030948: e9 ad 00 00 00                    jmp    173                            ; 0x300309fa
         0x3003094d: 0f 1f 00                          nopl    (%rax)                        
  0.04%  0x30030950: 3d f0 06 00 00                    cmpl    $1776, %eax                   
         0x30030955: 74 e5                             je    -27                             ; 0x3003093c
         0x30030957: 2e 48 8b 14 c5 00 00 00 2d        movq    %cs:754974720(,%rax,8), %rdx  
         0x30030960: 49 85 d1                          testq    %rdx, %r9                    
         0x30030963: 0f 85 56 01 00 00                 jne    342                            ; 0x30030abf
         0x30030969: 44 8b 92 a0 02 00 00              movl    672(%rdx), %r10d              
         0x30030970: 45 85 d2                          testl    %r10d, %r10d                 
         0x30030973: 0f 84 1f 01 00 00                 je    287                             ; 0x30030a98
         0x30030979: 4c 8b 04 25 28 37 00 2d           movq    754988840, %r8                
         0x30030981: 4d 85 c1                          testq    %r8, %r9                     
         0x30030984: 0f 85 54 01 00 00                 jne    340                            ; 0x30030ade
....................................................................................................
 95.64%  <total for region 1>

....[Hottest Regions]...............................................................................
 95.64%  [0x300308a0:0x30030b3b] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain[Falcon]
  0.26%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.24%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.20%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.18%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9f0711c:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eb93b5:0xffffffffa9eb9441] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f695fe:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.09%  [0x300334c6:0x3003353c] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_virtual_calls_chain_jmhTest::virtual_calls_chain_avgt_jmhStub[Falcon]
  0.08%  [0xffffffffa9f686c0:0xffffffffa9f6875f] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ed0800:0xffffffffa9ed0889] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ee587e:0xffffffffa9ee58a7] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9f07069:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eee5d0:0xffffffffa9eee62f] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28d0d1:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.06%  [0x7fa8c8a7b5f8:0x7fa8c8a7b621] in [unknown] (libjvm.so)
  2.13%  <...other 362 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 95.65%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain[Falcon]
  3.84%  [unknown] ([kernel.kallsyms])
  0.24%  [unknown] (libjvm.so)
  0.09%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_virtual_calls_chain_jmhTest::virtual_calls_chain_avgt_jmhStub[Falcon]
  0.02%  [unknown] (libc-2.31.so)
  0.02%  __errno_location (libpthread-2.31.so)
  0.02%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  PMEM::account_enabled; PMEM::accounts (libaztall.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  [unknown] ([vdso])
  0.01%  az_zmd_api_version_tall (libaztall.so)
  0.01%  az_pmem_get_account_usage_tall (libaztall.so)
  0.01%  __pthread_mutex_lock (libpthread-2.31.so)
  0.01%  [unknown] (libstdc++.so.6)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.00%  PMEM::get_account_usage (libaztall.so)
  0.00%  <stub: return entry points>
  0.00%  __errno_location@plt (libaztall.so)
  0.02%  <...other 12 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.76%  <generated code>
  3.84%  <native code in ([kernel.kallsyms])>
  0.24%  <native code in (libjvm.so)>
  0.06%  <native code in (libaztall.so)>
  0.05%  <native code in (libc-2.31.so)>
  0.02%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in ([vdso])>
  0.01%  <native code in (libstdc++.so.6)>
  0.01%  <native code in (libazsys3.so)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain
# Parameters: (targetType = MEGAMORPHIC_5)

# Run progress: 78.57% complete, ETA 00:05:34
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.994 ns/op
# Warmup Iteration   2: 1.963 ns/op
# Warmup Iteration   3: 1.959 ns/op
# Warmup Iteration   4: 1.961 ns/op
# Warmup Iteration   5: 1.960 ns/op
Iteration   1: 1.959 ns/op
Iteration   2: 1.958 ns/op
Iteration   3: 1.959 ns/op
Iteration   4: 1.959 ns/op
Iteration   5: 1.960 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain":
  1.959 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (1.958, 1.959, 1.960), stdev = 0.001
  CI (99.9%): [1.957, 1.961] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain:·asm":
PrintAssembly processed: 136591 total address lines.
Perf output processed (skipped 56.222 seconds):
 Column 1: cycles (51355 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x300312b0:0x30031384] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain[Falcon]

         0x300312b0: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
         0x300312b9: 0f 85 7a 01 00 00                 jne    378                            ; 0x30031439
         0x300312bf: 48 8b 5e 08                       movq    8(%rsi), %rbx                 
         0x300312c3: b8 48 00 f8 2f                    movl    $804782152, %eax              ; 804782152 = clearable_gc_phase_trap_mask
  0.01%  0x300312c8: 48 8b 08                          movq    (%rax), %rcx                  
         0x300312cb: 48 85 d9                          testq    %rbx, %rcx                   
         0x300312ce: 0f 85 76 01 00 00                 jne    374                            ; 0x3003144a
         0x300312d4: 2e 2e 2e 2e 2e 2e 2e 2e 44 8b     movl    %cs:8(%rbx), %r15d            
         0x300312e0: 45 85 ff                          testl    %r15d, %r15d                 
         0x300312e3: 0f 84 11 01 00 00                 je    273                             ; 0x300313fa
  0.00%  0x300312e9: 48 b8 58 e9 ff 2c 00 00 00 00     movabsq    $754968920, %rax           ; 0x2cffe958 = 
         0x300312f3: 4c 8b 30                          movq    (%rax), %r14                  
         0x300312f6: 4c 85 f1                          testq    %r14, %rcx                   
         0x300312f9: 0f 85 66 01 00 00                 jne    358                            ; 0x30031465
         0x300312ff: 45 31 e4                          xorl    %r12d, %r12d                  
  0.01%  0x30031302: 41 bd 48 00 f8 2f                 movl    $804782152, %r13d             ; 804782152 = clearable_gc_phase_trap_mask
         0x30031308: 0f 1f 84 00 00 00 00 00           nopl    (%rax,%rax)                   
         0x30031310: 4a 8b 4c e3 10                    movq    16(%rbx,%r12,8), %rcx         
  0.02%  0x30031315: 2e 2e 2e 2e 2e 2e 2e 4d 8b 4d     movq    %cs:(%r13), %r9               
 18.86%  0x30031320: 49 85 c9                          testq    %rcx, %r9                    
         0x30031323: 0f 85 df 00 00 00                 jne    223                            ; 0x30031408
  0.09%  0x30031329: 8b 41 04                          movl    4(%rcx), %eax                 
  0.11%  0x3003132c: 25 ff ff ff 01                    andl    $33554431, %eax               
  0.02%  0x30031331: 8d 90 0e f9 ff ff                 leal    -1778(%rax), %edx             
 18.86%  0x30031337: 83 fa 04                          cmpl    $4, %edx                      
         0x3003133a: 73 11                             jae    17                             ; 0x3003134d
  3.97%  0x3003133c: 41 ff 46 08                       incl    8(%r14)                       
 53.98%  0x30031340: 49 ff c4                          incq    %r12                          
  0.11%  0x30031343: 4d 39 fc                          cmpq    %r15, %r12                    
         0x30031346: 72 c8                             jb    -56                             ; 0x30031310
         0x30031348: e9 ad 00 00 00                    jmp    173                            ; 0x300313fa
  0.03%  0x3003134d: 3d f0 06 00 00                    cmpl    $1776, %eax                   
         0x30031352: 74 e8                             je    -24                             ; 0x3003133c
         0x30031354: 2e 2e 2e 2e 48 8b 14 c5 00 00     movq    %cs:754974720(,%rax,8), %rdx  
         0x30031360: 49 85 d1                          testq    %rdx, %r9                    
         0x30031363: 0f 85 56 01 00 00                 jne    342                            ; 0x300314bf
         0x30031369: 44 8b 92 a0 02 00 00              movl    672(%rdx), %r10d              
         0x30031370: 45 85 d2                          testl    %r10d, %r10d                 
         0x30031373: 0f 84 1f 01 00 00                 je    287                             ; 0x30031498
         0x30031379: 4c 8b 04 25 28 37 00 2d           movq    754988840, %r8                
         0x30031381: 4d 85 c1                          testq    %r8, %r9                     
         0x30031384: 0f 85 54 01 00 00                 jne    340                            ; 0x300314de
....................................................................................................
 96.06%  <total for region 1>

....[Hottest Regions]...............................................................................
 96.06%  [0x300312b0:0x30031384] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain[Falcon]
  0.23%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.23%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9f0711c:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f695f0:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ee5876:0xffffffffa9ee587e] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.08%  [0x300336c6:0x3003373c] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_virtual_calls_chain_jmhTest::virtual_calls_chain_avgt_jmhStub[Falcon]
  0.07%  [0xffffffffa9ed0740:0xffffffffa9ed07c7] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f07065:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28ead0:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eff400:0xffffffffa9eff42a] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0800:0xffffffffa9ed0873] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eee5d0:0xffffffffa9eee62f] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28d0d0:0xffffffffaa28d127] in [unknown] ([kernel.kallsyms])
  1.91%  <...other 294 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 96.07%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain[Falcon]
  3.57%  [unknown] ([kernel.kallsyms])
  0.15%  [unknown] (libjvm.so)
  0.08%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_virtual_calls_chain_jmhTest::virtual_calls_chain_avgt_jmhStub[Falcon]
  0.03%  [unknown] (libc-2.31.so)
  0.01%  _IO_default_xsputn (libc-2.31.so)
  0.01%  thread_stack_region_start (libazsys3.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.01%  is_thread_initialized (libazsys3.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.00%  az_zmd_api_version_tall (libaztall.so)
  0.00%  __pthread_mutex_unlock (libpthread-2.31.so)
  0.00%  syscall (libc-2.31.so)
  0.00%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  [unknown] ([vdso])
  0.00%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  sprintf (libc-2.31.so)
  0.00%  <stub: putfield  181 putfield>
  0.03%  <...other 15 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 96.15%  <generated code>
  3.57%  <native code in ([kernel.kallsyms])>
  0.15%  <native code in (libjvm.so)>
  0.06%  <native code in (libc-2.31.so)>
  0.03%  <native code in (libaztall.so)>
  0.02%  <native code in (libazsys3.so)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.00%  <native code in ([vdso])>
  0.00%  <native code in (liborca.so.0.0.0.0)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain
# Parameters: (targetType = MEGAMORPHIC_6)

# Run progress: 85.71% complete, ETA 00:03:42
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.009 ns/op
# Warmup Iteration   2: 1.976 ns/op
# Warmup Iteration   3: 1.975 ns/op
# Warmup Iteration   4: 1.974 ns/op
# Warmup Iteration   5: 1.974 ns/op
Iteration   1: 1.974 ns/op
Iteration   2: 1.966 ns/op
Iteration   3: 1.966 ns/op
Iteration   4: 1.966 ns/op
Iteration   5: 1.966 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain":
  1.967 ±(99.9%) 0.014 ns/op [Average]
  (min, avg, max) = (1.966, 1.967, 1.974), stdev = 0.004
  CI (99.9%): [1.953, 1.982] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain:·asm":
PrintAssembly processed: 136562 total address lines.
Perf output processed (skipped 56.261 seconds):
 Column 1: cycles (51486 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x30030ed4:0x30030f84] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain[Falcon]

         0x30030ed4: 2e 2e 2e 2e 2e 2e 2e 2e 44 8b     movl    %cs:8(%rbx), %r15d            
         0x30030ee0: 45 85 ff                          testl    %r15d, %r15d                 
         0x30030ee3: 0f 84 11 01 00 00                 je    273                             ; 0x30030ffa
         0x30030ee9: 48 b8 68 f8 ff 2c 00 00 00 00     movabsq    $754972776, %rax           ; 0x2cfff868 = 
         0x30030ef3: 4c 8b 30                          movq    (%rax), %r14                  
         0x30030ef6: 4c 85 f1                          testq    %r14, %rcx                   
         0x30030ef9: 0f 85 66 01 00 00                 jne    358                            ; 0x30031065
         0x30030eff: 45 31 e4                          xorl    %r12d, %r12d                  
         0x30030f02: 41 bd 48 00 f8 2f                 movl    $804782152, %r13d             ; 804782152 = clearable_gc_phase_trap_mask
         0x30030f08: 0f 1f 84 00 00 00 00 00           nopl    (%rax,%rax)                   
  0.00%  0x30030f10: 4a 8b 4c e3 10                    movq    16(%rbx,%r12,8), %rcx         
  0.09%  0x30030f15: 2e 2e 2e 2e 2e 2e 2e 4d 8b 4d     movq    %cs:(%r13), %r9               
 18.39%  0x30030f20: 49 85 c9                          testq    %rcx, %r9                    
         0x30030f23: 0f 85 df 00 00 00                 jne    223                            ; 0x30031008
  0.48%  0x30030f29: 8b 41 04                          movl    4(%rcx), %eax                 
  0.80%  0x30030f2c: 25 ff ff ff 01                    andl    $33554431, %eax               
  0.11%  0x30030f31: 8d 90 0e f9 ff ff                 leal    -1778(%rax), %edx             
 18.56%  0x30030f37: 83 fa 05                          cmpl    $5, %edx                      
         0x30030f3a: 73 11                             jae    17                             ; 0x30030f4d
  3.45%  0x30030f3c: 41 ff 46 08                       incl    8(%r14)                       
 53.36%  0x30030f40: 49 ff c4                          incq    %r12                          
  0.48%  0x30030f43: 4d 39 fc                          cmpq    %r15, %r12                    
         0x30030f46: 72 c8                             jb    -56                             ; 0x30030f10
         0x30030f48: e9 ad 00 00 00                    jmp    173                            ; 0x30030ffa
  0.07%  0x30030f4d: 3d f0 06 00 00                    cmpl    $1776, %eax                   
         0x30030f52: 74 e8                             je    -24                             ; 0x30030f3c
         0x30030f54: 2e 2e 2e 2e 48 8b 14 c5 00 00     movq    %cs:754974720(,%rax,8), %rdx  
         0x30030f60: 49 85 d1                          testq    %rdx, %r9                    
         0x30030f63: 0f 85 56 01 00 00                 jne    342                            ; 0x300310bf
         0x30030f69: 44 8b 92 a0 02 00 00              movl    672(%rdx), %r10d              
         0x30030f70: 45 85 d2                          testl    %r10d, %r10d                 
         0x30030f73: 0f 84 1f 01 00 00                 je    287                             ; 0x30031098
         0x30030f79: 4c 8b 04 25 28 37 00 2d           movq    754988840, %r8                
         0x30030f81: 4d 85 c1                          testq    %r8, %r9                     
         0x30030f84: 0f 85 54 01 00 00                 jne    340                            ; 0x300310de
....................................................................................................
 95.78%  <total for region 1>

....[Hottest Regions]...............................................................................
 95.78%  [0x30030ed4:0x30030f84] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain[Falcon]
  0.26%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.19%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eb8dd5:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eef5ae:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eef3d6:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f0711c:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f07060:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f695f6:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eef30c:0xffffffffa9eef3b4] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eef44f:0xffffffffa9eef4ad] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f211f0:0xffffffffa9f21223] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28ead0:0xffffffffaa28eb20] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eb7e24:0xffffffffa9eb7e8a] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0800:0xffffffffa9ed0889] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.06%  [0x30030ea0:0x3003113b] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain[Falcon]
  2.11%  <...other 297 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 95.86%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain[Falcon]
  3.84%  [unknown] ([kernel.kallsyms])
  0.17%  [unknown] (libjvm.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_virtual_calls_chain_jmhTest::virtual_calls_chain_avgt_jmhStub[Falcon]
  0.01%  [unknown] ([vdso])
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  _IO_default_xsputn (libc-2.31.so)
  0.00%  [unknown] (libc-2.31.so)
  0.00%  VMEM_SpaceManager::uses_cache_for_account (libaztall.so)
  0.00%  PMEM::account_enabled (libaztall.so)
  0.00%  clock_gettime (libc-2.31.so)
  0.00%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  az_pmem_get_fund_stats (libazsys3.so)
  0.00%  <stub: putfield  181 putfield>
  0.00%  _dl_addr (libc-2.31.so)
  0.00%  is_thread_initialized (libazsys3.so)
  0.03%  <...other 16 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.88%  <generated code>
  3.84%  <native code in ([kernel.kallsyms])>
  0.17%  <native code in (libjvm.so)>
  0.04%  <native code in (libaztall.so)>
  0.02%  <native code in (libc-2.31.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in (libpthread-2.31.so)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain
# Parameters: (targetType = MEGAMORPHIC_6_DOMINANT_TARGET)

# Run progress: 92.86% complete, ETA 00:01:51
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 15.643 ns/op
# Warmup Iteration   2: 15.316 ns/op
# Warmup Iteration   3: 15.308 ns/op
# Warmup Iteration   4: 15.302 ns/op
# Warmup Iteration   5: 15.291 ns/op
Iteration   1: 15.394 ns/op
Iteration   2: 15.335 ns/op
Iteration   3: 15.335 ns/op
Iteration   4: 15.333 ns/op
Iteration   5: 15.332 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain":
  15.346 ±(99.9%) 0.104 ns/op [Average]
  (min, avg, max) = (15.332, 15.346, 15.394), stdev = 0.027
  CI (99.9%): [15.242, 15.450] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain:·asm":
PrintAssembly processed: 136420 total address lines.
Perf output processed (skipped 56.261 seconds):
 Column 1: cycles (51491 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x30031d28:0x30031e48] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain[Falcon]

         0x30031d28: 48 be 98 fa ff 2c 00 00 00 00     movabsq    $754973336, %rsi           ; 0x2cfffa98 = 
         0x30031d32: 48 b8 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rax           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x30031d3c: 4c 89 f7                          movq    %r14, %rdi                    
         0x30031d3f: ff d0                             callq    *%rax                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x30031d41: 49 89 c6                          movq    %rax, %r14                    
         0x30031d44: eb a7                             jmp    -89                            ; 0x30031ced
         0x30031d46: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x30031d50: 41 bb 0b 00 00 00                 movl    $11, %r11d                    
         0x30031d56: ff d0                             callq    *%rax                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x30031d58: 0f 1f 84 00 00 00 00 00           nopl    (%rax,%rax)                   
  2.70%  0x30031d60: 41 ff 46 08                       incl    8(%r14)                       
  6.80%  0x30031d64: 49 ff c4                          incq    %r12                          
         0x30031d67: 4d 39 fc                          cmpq    %r15, %r12                    
         0x30031d6a: 0f 83 c9 00 00 00                 jae    201                            ; 0x30031e39
  0.22%  0x30031d70: 4a 8b 4c e3 10                    movq    16(%rbx,%r12,8), %rcx         
  0.97%  0x30031d75: 2e 2e 2e 2e 2e 2e 2e 4d 8b 4d     movq    %cs:(%r13), %r9               
  2.04%  0x30031d80: 49 85 c9                          testq    %rcx, %r9                    
         0x30031d83: 0f 85 c6 00 00 00                 jne    198                            ; 0x30031e4f
  0.20%  0x30031d89: 8b 41 04                          movl    4(%rcx), %eax                 
  1.21%  0x30031d8c: 25 ff ff ff 01                    andl    $33554431, %eax               
  0.26%  0x30031d91: 3d f0 06 00 00                    cmpl    $1776, %eax                   
         0x30031d96: 74 c8                             je    -56                             ; 0x30031d60
  0.19%  0x30031d98: 48 8b 14 c5 00 00 00 2d           movq    754974720(,%rax,8), %rdx      
  0.89%  0x30031da0: 49 85 d1                          testq    %rdx, %r9                    
         0x30031da3: 0f 85 bc 00 00 00                 jne    188                            ; 0x30031e65
  0.21%  0x30031da9: 44 8b 92 a0 02 00 00              movl    672(%rdx), %r10d              
  0.88%  0x30031db0: 45 85 d2                          testl    %r10d, %r10d                 
         0x30031db3: 0f 84 fc 00 00 00                 je    252                             ; 0x30031eb5
  0.26%  0x30031db9: 4c 8b 04 25 28 37 00 2d           movq    754988840, %r8                
         0x30031dc1: 4d 85 c1                          testq    %r8, %r9                     
         0x30031dc4: 0f 85 bb 00 00 00                 jne    187                            ; 0x30031e85
         0x30031dca: 49 63 c2                          movslq    %r10d, %rax                 
         0x30031dcd: 48 8d 34 c2                       leaq    (%rdx,%rax,8), %rsi           
  0.20%  0x30031dd1: 48 81 c6 10 03 00 00              addq    $784, %rsi                    
  0.18%  0x30031dd8: 0f 1f 84 00 00 00 00 00           nopl    (%rax,%rax)                   
  0.86%  0x30031de0: 48 8b 06                          movq    (%rsi), %rax                  
  1.24%  0x30031de3: 49 85 c1                          testq    %rax, %r9                    
         0x30031de6: 75 60                             jne    96                             ; 0x30031e48
  1.29%  0x30031de8: 48 85 c0                          testq    %rax, %rax                   
         0x30031deb: 0f 84 c4 00 00 00                 je    196                             ; 0x30031eb5
  1.16%  0x30031df1: 48 83 c6 10                       addq    $16, %rsi                     
  0.00%  0x30031df5: 4c 39 c0                          cmpq    %r8, %rax                     
         0x30031df8: 75 e6                             jne    -26                            ; 0x30031de0
  0.19%  0x30031dfa: 48 63 76 f8                       movslq    -8(%rsi), %rsi              
  0.00%  0x30031dfe: 48 8b 04 32                       movq    (%rdx,%rsi), %rax             
  0.03%  0x30031e02: 49 85 c1                          testq    %rax, %r9                    
         0x30031e05: 0f 85 9a 00 00 00                 jne    154                            ; 0x30031ea5
  0.22%  0x30031e0b: 48 85 c0                          testq    %rax, %rax                   
         0x30031e0e: 0f 84 a1 00 00 00                 je    161                             ; 0x30031eb5
  0.17%  0x30031e14: 48 8b 80 a8 00 00 00              movq    168(%rax), %rax               
  0.12%  0x30031e1b: 48 89 cf                          movq    %rcx, %rdi                    
         0x30031e1e: 48 89 5c 24 38                    movq    %rbx, 56(%rsp)                
         0x30031e23: 4c 89 74 24 40                    movq    %r14, 64(%rsp)                
  0.18%  0x30031e28: ff d0                             callq    *%rax                        
  1.15%  0x30031e2a: 48 8b 5c 24 38                    movq    56(%rsp), %rbx                
  1.63%  0x30031e2f: 4c 8b 74 24 40                    movq    64(%rsp), %r14                
         0x30031e34: e9 2b ff ff ff                    jmp    -213                           ; 0x30031d64
         0x30031e39: 48 83 c4 48                       addq    $72, %rsp                     
         0x30031e3d: 5b                                popq    %rbx                          
         0x30031e3e: 41 5c                             popq    %r12                          
         0x30031e40: 41 5d                             popq    %r13                          
         0x30031e42: 41 5e                             popq    %r14                          
         0x30031e44: 41 5f                             popq    %r15                          
         0x30031e46: 5d                                popq    %rbp                          
         0x30031e47: c3                                retq                                  
         0x30031e48: 48 89 c7                          movq    %rax, %rdi                    
....................................................................................................
 25.44%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x3002f2a0:0x3002f2f7] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1[Falcon]

         0x3002f2e2: 48 b9 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rcx           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f2ec: 48 89 c7                          movq    %rax, %rdi                    
         0x3002f2ef: ff d1                             callq    *%rcx                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f2f1: eb d2                             jmp    -46                            ; 0x3002f2c5
         0x3002f2f3: 00 00                             addb    %al, (%rax)                   
         0x3002f2f5: 00 00                             addb    %al, (%rax)                   
         0x3002f2f7: 00 00                             addb    %al, (%rax)                   
         -----------
           # {method}{0x20002b44d80} foo_1[Falcon] ()V in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicInterfaceCallBenchmark$I1
         Decoding CodeBlob 0x3002f200
  2.67%  0x3002f2a0: eb f9                             pushq    %rax                         
  2.16%  0x3002f2a2: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  0.38%  0x3002f2ab: 75 1d                             jne    29                             ; 0x3002f2ca
  0.24%  0x3002f2ad: 48 b8 98 fa ff 2c 00 00 00 00     movabsq    $754973336, %rax           ; 0x2cfffa98 = 
         0x3002f2b7: 48 8b 00                          movq    (%rax), %rax                  
         0x3002f2ba: 2e b9 48 00 f8 2f                 movl    $804782152, %ecx              ; 804782152 = clearable_gc_phase_trap_mask
         0x3002f2c0: 48 85 01                          testq    %rax, (%rcx)                 
         0x3002f2c3: 75 13                             jne    19                             ; 0x3002f2d8
  0.23%  0x3002f2c5: ff 40 08                          incl    8(%rax)                       
  2.64%  0x3002f2c8: 58                                popq    %rax                          
  0.00%  0x3002f2c9: c3                                retq                                  
         0x3002f2ca: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f2d4: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f2d6: eb d5                             jmp    -43                            ; 0x3002f2ad
         0x3002f2d8: 48 be 98 fa ff 2c 00 00 00 00     movabsq    $754973336, %rsi           ; 0x2cfffa98 = 
         0x3002f2e2: 48 b9 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rcx           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f2ec: 48 89 c7                          movq    %rax, %rdi                    
         0x3002f2ef: ff d1                             callq    *%rcx                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f2f1: eb d2                             jmp    -46                            ; 0x3002f2c5
         0x3002f2f3: 00 00                             addb    %al, (%rax)                   
         0x3002f2f5: 00 00                             addb    %al, (%rax)                   
....................................................................................................
  8.33%  <total for region 2>

....[Hottest Region 3]..............................................................................
 [0x3002fd12:0x3002fdd5] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark$I::foo[Falcon]

         0x3002fd12: 0f 84 1a 01 00 00                 je    282                             ; 0x3002fe32
  0.21%  0x3002fd18: 4c 63 d0                          movslq    %eax, %r10                  
  0.05%  0x3002fd1b: 4c 8b 04 25 20 37 00 2d           movq    754988832, %r8                
         0x3002fd23: 4d 85 c1                          testq    %r8, %r9                     
         0x3002fd26: 0f 85 cf 00 00 00                 jne    207                            ; 0x3002fdfb
         0x3002fd2c: 4a 8d 34 d2                       leaq    (%rdx,%r10,8), %rsi           
  0.17%  0x3002fd30: 48 81 c6 10 03 00 00              addq    $784, %rsi                    
  0.21%  0x3002fd37: 49 ba c0 c8 00 30 00 00 00 00     movabsq    $805357760, %r10           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002fd41: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x3002fd50: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
  0.02%  0x3002fd5f: 90                                nop                                   
  1.13%  0x3002fd60: 48 8b 06                          movq    (%rsi), %rax                  
  0.71%  0x3002fd63: 49 85 c1                          testq    %rax, %r9                    
         0x3002fd66: 75 3d                             jne    61                             ; 0x3002fda5
  1.11%  0x3002fd68: 48 85 c0                          testq    %rax, %rax                   
         0x3002fd6b: 0f 84 c1 00 00 00                 je    193                             ; 0x3002fe32
  1.04%  0x3002fd71: 48 83 c6 10                       addq    $16, %rsi                     
         0x3002fd75: 4c 39 c0                          cmpq    %r8, %rax                     
         0x3002fd78: 75 e6                             jne    -26                            ; 0x3002fd60
  0.18%  0x3002fd7a: 48 63 76 f8                       movslq    -8(%rsi), %rsi              
         0x3002fd7e: 48 8b 04 32                       movq    (%rdx,%rsi), %rax             
  0.04%  0x3002fd82: 49 85 c1                          testq    %rax, %r9                    
         0x3002fd85: 0f 85 8c 00 00 00                 jne    140                            ; 0x3002fe17
  0.18%  0x3002fd8b: 48 85 c0                          testq    %rax, %rax                   
         0x3002fd8e: 0f 84 9e 00 00 00                 je    158                             ; 0x3002fe32
  0.21%  0x3002fd94: 48 8b 80 a8 00 00 00              movq    168(%rax), %rax               
  0.38%  0x3002fd9b: 48 89 cf                          movq    %rcx, %rdi                    
         0x3002fd9e: ff d0                             callq    *%rax                        
  1.20%  0x3002fda0: 48 83 c4 38                       addq    $56, %rsp                     
  0.59%  0x3002fda4: c3                                retq                                  
         0x3002fda5: 48 89 c7                          movq    %rax, %rdi                    
         0x3002fda8: 41 ff d2                          callq    *%r10                        
         0x3002fdab: eb bb                             jmp    -69                            ; 0x3002fd68
         0x3002fdad: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002fdb7: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002fdb9: e9 f8 fe ff ff                    jmp    -264                           ; 0x3002fcb6
         0x3002fdbe: 48 be 98 fa ff 2c 00 00 00 00     movabsq    $754973336, %rsi           ; 0x2cfffa98 = 
         0x3002fdc8: 48 b9 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rcx           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002fdd2: 48 89 c7                          movq    %rax, %rdi                    
         0x3002fdd5: ff d1                             callq    *%rcx                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
....................................................................................................
  6.78%  <total for region 3>

....[Hottest Region 4]..............................................................................
 [0x3002f912:0x3002f9d5] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5[Falcon]

         0x3002f912: 0f 84 1a 01 00 00                 je    282                             ; 0x3002fa32
  0.26%  0x3002f918: 4c 63 d0                          movslq    %eax, %r10                  
  0.04%  0x3002f91b: 4c 8b 04 25 18 37 00 2d           movq    754988824, %r8                
         0x3002f923: 4d 85 c1                          testq    %r8, %r9                     
         0x3002f926: 0f 85 cf 00 00 00                 jne    207                            ; 0x3002f9fb
         0x3002f92c: 4a 8d 34 d2                       leaq    (%rdx,%r10,8), %rsi           
  0.21%  0x3002f930: 48 81 c6 10 03 00 00              addq    $784, %rsi                    
  0.15%  0x3002f937: 49 ba c0 c8 00 30 00 00 00 00     movabsq    $805357760, %r10           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f941: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x3002f950: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
  0.05%  0x3002f95f: 90                                nop                                   
  0.79%  0x3002f960: 48 8b 06                          movq    (%rsi), %rax                  
  0.67%  0x3002f963: 49 85 c1                          testq    %rax, %r9                    
         0x3002f966: 75 3d                             jne    61                             ; 0x3002f9a5
  0.80%  0x3002f968: 48 85 c0                          testq    %rax, %rax                   
         0x3002f96b: 0f 84 c1 00 00 00                 je    193                             ; 0x3002fa32
  0.98%  0x3002f971: 48 83 c6 10                       addq    $16, %rsi                     
         0x3002f975: 4c 39 c0                          cmpq    %r8, %rax                     
         0x3002f978: 75 e6                             jne    -26                            ; 0x3002f960
  0.09%  0x3002f97a: 48 63 76 f8                       movslq    -8(%rsi), %rsi              
         0x3002f97e: 48 8b 04 32                       movq    (%rdx,%rsi), %rax             
  0.10%  0x3002f982: 49 85 c1                          testq    %rax, %r9                    
         0x3002f985: 0f 85 8c 00 00 00                 jne    140                            ; 0x3002fa17
  0.06%  0x3002f98b: 48 85 c0                          testq    %rax, %rax                   
         0x3002f98e: 0f 84 9e 00 00 00                 je    158                             ; 0x3002fa32
  0.22%  0x3002f994: 48 8b 80 a8 00 00 00              movq    168(%rax), %rax               
         0x3002f99b: 48 89 cf                          movq    %rcx, %rdi                    
         0x3002f99e: ff d0                             callq    *%rax                        
  1.17%  0x3002f9a0: 48 83 c4 38                       addq    $56, %rsp                     
  0.61%  0x3002f9a4: c3                                retq                                  
         0x3002f9a5: 48 89 c7                          movq    %rax, %rdi                    
         0x3002f9a8: 41 ff d2                          callq    *%r10                        
         0x3002f9ab: eb bb                             jmp    -69                            ; 0x3002f968
         0x3002f9ad: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f9b7: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f9b9: e9 f8 fe ff ff                    jmp    -264                           ; 0x3002f8b6
         0x3002f9be: 48 be 98 fa ff 2c 00 00 00 00     movabsq    $754973336, %rsi           ; 0x2cfffa98 = 
         0x3002f9c8: 48 b9 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rcx           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f9d2: 48 89 c7                          movq    %rax, %rdi                    
         0x3002f9d5: ff d1                             callq    *%rcx                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
....................................................................................................
  5.55%  <total for region 4>

....[Hottest Region 5]..............................................................................
 [0x30031512:0x300315d5] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4[Falcon]

         0x30031512: 0f 84 1a 01 00 00                 je    282                             ; 0x30031632
  0.25%  0x30031518: 4c 63 d0                          movslq    %eax, %r10                  
  0.05%  0x3003151b: 4c 8b 04 25 10 37 00 2d           movq    754988816, %r8                
         0x30031523: 4d 85 c1                          testq    %r8, %r9                     
         0x30031526: 0f 85 cf 00 00 00                 jne    207                            ; 0x300315fb
         0x3003152c: 4a 8d 34 d2                       leaq    (%rdx,%r10,8), %rsi           
  0.21%  0x30031530: 48 81 c6 10 03 00 00              addq    $784, %rsi                    
  0.21%  0x30031537: 49 ba c0 c8 00 30 00 00 00 00     movabsq    $805357760, %r10           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x30031541: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x30031550: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
  0.03%  0x3003155f: 90                                nop                                   
  0.69%  0x30031560: 48 8b 06                          movq    (%rsi), %rax                  
  0.74%  0x30031563: 49 85 c1                          testq    %rax, %r9                    
         0x30031566: 75 3d                             jne    61                             ; 0x300315a5
  0.61%  0x30031568: 48 85 c0                          testq    %rax, %rax                   
         0x3003156b: 0f 84 c1 00 00 00                 je    193                             ; 0x30031632
  0.73%  0x30031571: 48 83 c6 10                       addq    $16, %rsi                     
         0x30031575: 4c 39 c0                          cmpq    %r8, %rax                     
         0x30031578: 75 e6                             jne    -26                            ; 0x30031560
  0.12%  0x3003157a: 48 63 76 f8                       movslq    -8(%rsi), %rsi              
         0x3003157e: 48 8b 04 32                       movq    (%rdx,%rsi), %rax             
  0.07%  0x30031582: 49 85 c1                          testq    %rax, %r9                    
         0x30031585: 0f 85 8c 00 00 00                 jne    140                            ; 0x30031617
  0.12%  0x3003158b: 48 85 c0                          testq    %rax, %rax                   
         0x3003158e: 0f 84 9e 00 00 00                 je    158                             ; 0x30031632
  0.24%  0x30031594: 48 8b 80 a8 00 00 00              movq    168(%rax), %rax               
  0.23%  0x3003159b: 48 89 cf                          movq    %rcx, %rdi                    
         0x3003159e: ff d0                             callq    *%rax                        
  1.21%  0x300315a0: 48 83 c4 38                       addq    $56, %rsp                     
  0.61%  0x300315a4: c3                                retq                                  
         0x300315a5: 48 89 c7                          movq    %rax, %rdi                    
         0x300315a8: 41 ff d2                          callq    *%r10                        
         0x300315ab: eb bb                             jmp    -69                            ; 0x30031568
         0x300315ad: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x300315b7: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x300315b9: e9 f8 fe ff ff                    jmp    -264                           ; 0x300314b6
         0x300315be: 48 be 98 fa ff 2c 00 00 00 00     movabsq    $754973336, %rsi           ; 0x2cfffa98 = 
         0x300315c8: 48 b9 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rcx           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x300315d2: 48 89 c7                          movq    %rax, %rdi                    
         0x300315d5: ff d1                             callq    *%rcx                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
....................................................................................................
  5.40%  <total for region 5>

....[Hottest Region 6]..............................................................................
 [0x3002f8a0:0x3002fa60] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5[Falcon]

         0x3002fa54: ff d0                             callq    *%rax                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002fa56: 00 00                             addb    %al, (%rax)                   
         0x3002fa58: 00 00                             addb    %al, (%rax)                   
         0x3002fa5a: 00 00                             addb    %al, (%rax)                   
         0x3002fa5c: 00 00                             addb    %al, (%rax)                   
         0x3002fa5e: 00 00                             addb    %al, (%rax)                   
         0x3002fa60: 00 00                             addb    %al, (%rax)                   
         -----------
           # {method}{0x20002b46fc0} foo_5[Falcon] ()V in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicInterfaceCallBenchmark$I5
         Decoding CodeBlob 0x3002f800
  2.63%  0x3002f8a0: eb f9 ec 38                       subq    $56, %rsp                     
  1.55%  0x3002f8a4: 48 89 f9                          movq    %rdi, %rcx                    
         0x3002f8a7: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  1.00%  0x3002f8b0: 0f 85 f7 00 00 00                 jne    247                            ; 0x3002f9ad
  0.19%  0x3002f8b6: 8b 41 04                          movl    4(%rcx), %eax                 
         0x3002f8b9: 2e 2e 25 ff ff ff 01              andl    $33554431, %eax               
         0x3002f8c0: 3d f0 06 00 00                    cmpl    $1776, %eax                   
         0x3002f8c5: 75 2a                             jne    42                             ; 0x3002f8f1
         0x3002f8c7: 48 b8 98 fa ff 2c 00 00 00 00     movabsq    $754973336, %rax           ; 0x2cfffa98 = 
         0x3002f8d1: 48 8b 00                          movq    (%rax), %rax                  
         0x3002f8d4: 2e 2e 2e 2e 2e 2e 2e b9 48 00     movl    $804782152, %ecx              ; 804782152 = clearable_gc_phase_trap_mask
         0x3002f8e0: 48 85 01                          testq    %rax, (%rcx)                 
         0x3002f8e3: 0f 85 d5 00 00 00                 jne    213                            ; 0x3002f9be
         0x3002f8e9: ff 40 08                          incl    8(%rax)                       
         0x3002f8ec: 48 83 c4 38                       addq    $56, %rsp                     
....................................................................................................
  5.36%  <total for region 6>

....[Hottest Region 7]..............................................................................
 [0x3002f4a0:0x3002f660] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3[Falcon]

         0x3002f654: ff d0                             callq    *%rax                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f656: 00 00                             addb    %al, (%rax)                   
         0x3002f658: 00 00                             addb    %al, (%rax)                   
         0x3002f65a: 00 00                             addb    %al, (%rax)                   
         0x3002f65c: 00 00                             addb    %al, (%rax)                   
         0x3002f65e: 00 00                             addb    %al, (%rax)                   
         0x3002f660: 00 00                             addb    %al, (%rax)                   
         -----------
           # {method}{0x20002b45f30} foo_3[Falcon] ()V in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicInterfaceCallBenchmark$I3
         Decoding CodeBlob 0x3002f400
  2.30%  0x3002f4a0: eb f9 ec 38                       subq    $56, %rsp                     
  1.67%  0x3002f4a4: 48 89 f9                          movq    %rdi, %rcx                    
         0x3002f4a7: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  1.07%  0x3002f4b0: 0f 85 f7 00 00 00                 jne    247                            ; 0x3002f5ad
  0.22%  0x3002f4b6: 8b 41 04                          movl    4(%rcx), %eax                 
         0x3002f4b9: 2e 2e 25 ff ff ff 01              andl    $33554431, %eax               
         0x3002f4c0: 3d f0 06 00 00                    cmpl    $1776, %eax                   
         0x3002f4c5: 75 2a                             jne    42                             ; 0x3002f4f1
         0x3002f4c7: 48 b8 98 fa ff 2c 00 00 00 00     movabsq    $754973336, %rax           ; 0x2cfffa98 = 
         0x3002f4d1: 48 8b 00                          movq    (%rax), %rax                  
         0x3002f4d4: 2e 2e 2e 2e 2e 2e 2e b9 48 00     movl    $804782152, %ecx              ; 804782152 = clearable_gc_phase_trap_mask
         0x3002f4e0: 48 85 01                          testq    %rax, (%rcx)                 
         0x3002f4e3: 0f 85 d5 00 00 00                 jne    213                            ; 0x3002f5be
         0x3002f4e9: ff 40 08                          incl    8(%rax)                       
         0x3002f4ec: 48 83 c4 38                       addq    $56, %rsp                     
....................................................................................................
  5.27%  <total for region 7>

....[Hottest Region 8]..............................................................................
 [0x300318a0:0x30031a60] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2[Falcon]

         0x30031a56: 00 00                             addb    %al, (%rax)                   
         0x30031a58: 00 00                             addb    %al, (%rax)                   
         0x30031a5a: 00 00                             addb    %al, (%rax)                   
         0x30031a5c: 00 00                             addb    %al, (%rax)                   
         0x30031a5e: 00 00                             addb    %al, (%rax)                   
         0x30031a60: 00 00                             addb    %al, (%rax)                   
         -----------
         5.704:  260         3 promoted  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain ()V (tid 146619) (kid 1447 pkid/prev 1423/NA) (mid 1481732 pmid 18435) (bytes 39) (generation 0) (lvl O2) (score -37) (score_updated 0ms; orig 0; promoted 100) (rank 0, time-between-promotions 0ms) (wait 99ms)
           # {method}{0x20002b45718} foo_2[Falcon] ()V in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicInterfaceCallBenchmark$I2
         Decoding CodeBlob 0x30031800
  2.39%  0x300318a0: eb f9 ec 38                       subq    $56, %rsp                     
  1.61%  0x300318a4: 48 89 f9                          movq    %rdi, %rcx                    
         0x300318a7: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  0.98%  0x300318b0: 0f 85 f7 00 00 00                 jne    247                            ; 0x300319ad
  0.25%  0x300318b6: 8b 41 04                          movl    4(%rcx), %eax                 
         0x300318b9: 2e 2e 25 ff ff ff 01              andl    $33554431, %eax               
         0x300318c0: 3d f0 06 00 00                    cmpl    $1776, %eax                   
         0x300318c5: 75 2a                             jne    42                             ; 0x300318f1
         0x300318c7: 48 b8 98 fa ff 2c 00 00 00 00     movabsq    $754973336, %rax           ; 0x2cfffa98 = 
         0x300318d1: 48 8b 00                          movq    (%rax), %rax                  
         0x300318d4: 2e 2e 2e 2e 2e 2e 2e b9 48 00     movl    $804782152, %ecx              ; 804782152 = clearable_gc_phase_trap_mask
         0x300318e0: 48 85 01                          testq    %rax, (%rcx)                 
         0x300318e3: 0f 85 d5 00 00 00                 jne    213                            ; 0x300319be
         0x300318e9: ff 40 08                          incl    8(%rax)                       
         0x300318ec: 48 83 c4 38                       addq    $56, %rsp                     
....................................................................................................
  5.23%  <total for region 8>

....[Hottest Region 9]..............................................................................
 [0x3002fca0:0x300312b1] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark$I::foo[Falcon]

         0x30031295: ff d0                             callq    *%rax                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x30031297: 40 0f be ff                       movsbl    %dil, %edi                  
         0x3003129b: 49 b9 40 dd 00 30 00 00 00 00     movabsq    $805363008, %r9            ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x300312a5: 41 bb 07 00 00 00                 movl    $7, %r11d                     
         0x300312ab: 41 ff d1                          callq    *%r9                         ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x300312ae: 49 89 da                          movq    %rbx, %r10                    
         0x300312b1: e9 58 ff ff ff                    jmp    -168                           ; 0x3003120e
         -----------
           # {method}{0x20002b47820} foo[Falcon] ()V in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicInterfaceCallBenchmark$I
         Decoding CodeBlob 0x3002fc00
  2.10%  0x3002fca0: eb f9 ec 38                       subq    $56, %rsp                     
  1.77%  0x3002fca4: 48 89 f9                          movq    %rdi, %rcx                    
         0x3002fca7: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  1.07%  0x3002fcb0: 0f 85 f7 00 00 00                 jne    247                            ; 0x3002fdad
  0.20%  0x3002fcb6: 8b 41 04                          movl    4(%rcx), %eax                 
         0x3002fcb9: 2e 2e 25 ff ff ff 01              andl    $33554431, %eax               
         0x3002fcc0: 3d f0 06 00 00                    cmpl    $1776, %eax                   
         0x3002fcc5: 75 2a                             jne    42                             ; 0x3002fcf1
         0x3002fcc7: 48 b8 98 fa ff 2c 00 00 00 00     movabsq    $754973336, %rax           ; 0x2cfffa98 = 
         0x3002fcd1: 48 8b 00                          movq    (%rax), %rax                  
         0x3002fcd4: 2e 2e 2e 2e 2e 2e 2e b9 48 00     movl    $804782152, %ecx              ; 804782152 = clearable_gc_phase_trap_mask
         0x3002fce0: 48 85 01                          testq    %rax, (%rcx)                 
         0x3002fce3: 0f 85 d5 00 00 00                 jne    213                            ; 0x3002fdbe
         0x3002fce9: ff 40 08                          incl    8(%rax)                       
         0x3002fcec: 48 83 c4 38                       addq    $56, %rsp                     
....................................................................................................
  5.14%  <total for region 9>

....[Hottest Region 10].............................................................................
 [0x30030a4e:0x300314ec] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4[Falcon]

         0x30030a4e: 00 80 66 66 66 0f                 addb    %al, 258369126(%rax)          
         0x30030a54:                                                                         
         Call tree size: 1
         0: caller_index: -1 bci: -1 callee: virtual void com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark.setInstanceIndex(jint, jint)
         Encoded locations size: 4
         offset: 0 length: 2444 scope: 0 bci: 0
         <nmethodAdapter compile_id='240' level='2' size='40' address='0x00007efe741d5ce0' dependencies_offset='32' stamp='86782.894'/>
         5.529:  240         3 inlining into com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::setInstanceIndex (II)V (tid 146617) (kid 1447 pkid/prev 1423/NA) (mid 1481730 pmid 18437) (bytes 24) (generation 0) (lvl O2) (score 0) (score_updated 0ms; orig 0; promoted 0) (rank 0, time-between-promotions 3ms) (wait 0ms)
           # {method}{0x20002b46770} foo_4[Falcon] ()V in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicInterfaceCallBenchmark$I4
         Decoding CodeBlob 0x30031400
  2.09%  0x300314a0: eb f9 ec 38                       subq    $56, %rsp                     
  1.69%  0x300314a4: 48 89 f9                          movq    %rdi, %rcx                    
         0x300314a7: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  1.06%  0x300314b0: 0f 85 f7 00 00 00                 jne    247                            ; 0x300315ad
  0.19%  0x300314b6: 8b 41 04                          movl    4(%rcx), %eax                 
         0x300314b9: 2e 2e 25 ff ff ff 01              andl    $33554431, %eax               
         0x300314c0: 3d f0 06 00 00                    cmpl    $1776, %eax                   
         0x300314c5: 75 2a                             jne    42                             ; 0x300314f1
         0x300314c7: 48 b8 98 fa ff 2c 00 00 00 00     movabsq    $754973336, %rax           ; 0x2cfffa98 = 
         0x300314d1: 48 8b 00                          movq    (%rax), %rax                  
         0x300314d4: 2e 2e 2e 2e 2e 2e 2e b9 48 00     movl    $804782152, %ecx              ; 804782152 = clearable_gc_phase_trap_mask
         0x300314e0: 48 85 01                          testq    %rax, (%rcx)                 
         0x300314e3: 0f 85 d5 00 00 00                 jne    213                            ; 0x300315be
         0x300314e9: ff 40 08                          incl    8(%rax)                       
         0x300314ec: 48 83 c4 38                       addq    $56, %rsp                     
....................................................................................................
  5.04%  <total for region 10>

....[Hottest Regions]...............................................................................
 25.44%  [0x30031d28:0x30031e48] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain[Falcon]
  8.33%  [0x3002f2a0:0x3002f2f7] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1[Falcon]
  6.78%  [0x3002fd12:0x3002fdd5] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark$I::foo[Falcon]
  5.55%  [0x3002f912:0x3002f9d5] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5[Falcon]
  5.40%  [0x30031512:0x300315d5] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4[Falcon]
  5.36%  [0x3002f8a0:0x3002fa60] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5[Falcon]
  5.27%  [0x3002f4a0:0x3002f660] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3[Falcon]
  5.23%  [0x300318a0:0x30031a60] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2[Falcon]
  5.14%  [0x3002fca0:0x300312b1] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark$I::foo[Falcon]
  5.04%  [0x30030a4e:0x300314ec] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4[Falcon]
  3.46%  [0x3002f518:0x3002f5d2] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3[Falcon]
  3.05%  [0x30031918:0x300319c8] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2[Falcon]
  2.39%  [0x3002fcc5:0x3002fd75] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark$I::foo[Falcon]
  2.38%  [0x300318c0:0x30031975] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2[Falcon]
  2.34%  [0x300314c5:0x30031575] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4[Falcon]
  2.32%  [0x3002f8c0:0x3002f975] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5[Falcon]
  2.28%  [0x3002f4c0:0x3002f575] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3[Falcon]
  0.32%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.23%  [0xffffffffa9eef317:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.22%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  3.46%  <...other 320 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 25.46%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain[Falcon]
 14.31%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark$I::foo[Falcon]
 13.23%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5[Falcon]
 12.79%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4[Falcon]
 11.01%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3[Falcon]
 10.66%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2[Falcon]
  8.33%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1[Falcon]
  3.93%  [unknown] ([kernel.kallsyms])
  0.18%  [unknown] (libjvm.so)
  0.02%  [unknown] (libc-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  [unknown] ([vdso])
  0.01%  PMEM::account_enabled (libaztall.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.01%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_virtual_calls_chain_jmhTest::virtual_calls_chain_avgt_jmhStub[Falcon]
  0.00%  PMEM::get_account_usage (libaztall.so)
  0.00%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  <stub: return entry points>
  0.03%  <...other 13 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.81%  <generated code>
  3.93%  <native code in ([kernel.kallsyms])>
  0.18%  <native code in (libjvm.so)>
  0.03%  <native code in (libc-2.31.so)>
  0.03%  <native code in (libaztall.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in ([vdso])>
  0.00%  <native code in (perf-146596.map)>
....................................................................................................
100.00%  <totals>



# Run complete. Total time: 00:25:58

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

Benchmark                                                                            (targetType)  Mode  Cnt   Score    Error  Units
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic                         MONOMORPHIC  avgt    5   1.068 ±  0.001  ns/op
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:·asm                    MONOMORPHIC  avgt          NaN             ---
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic                           BIMORPHIC  avgt    5   1.602 ±  0.001  ns/op
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:·asm                      BIMORPHIC  avgt          NaN             ---
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic                       MEGAMORPHIC_3  avgt    5   1.571 ±  0.005  ns/op
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:·asm                  MEGAMORPHIC_3  avgt          NaN             ---
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic                       MEGAMORPHIC_4  avgt    5  11.874 ±  0.050  ns/op
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:·asm                  MEGAMORPHIC_4  avgt          NaN             ---
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic                       MEGAMORPHIC_5  avgt    5  12.110 ±  0.039  ns/op
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:·asm                  MEGAMORPHIC_5  avgt          NaN             ---
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic                       MEGAMORPHIC_6  avgt    5  12.215 ±  0.048  ns/op
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:·asm                  MEGAMORPHIC_6  avgt          NaN             ---
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic       MEGAMORPHIC_6_DOMINANT_TARGET  avgt    5   2.232 ±  0.017  ns/op
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:·asm  MEGAMORPHIC_6_DOMINANT_TARGET  avgt          NaN             ---
MegamorphicInterfaceCallBenchmark.virtual_calls_chain                                 MONOMORPHIC  avgt    5   0.616 ±  0.001  ns/op
MegamorphicInterfaceCallBenchmark.virtual_calls_chain:·asm                            MONOMORPHIC  avgt          NaN             ---
MegamorphicInterfaceCallBenchmark.virtual_calls_chain                                   BIMORPHIC  avgt    5   1.210 ±  0.011  ns/op
MegamorphicInterfaceCallBenchmark.virtual_calls_chain:·asm                              BIMORPHIC  avgt          NaN             ---
MegamorphicInterfaceCallBenchmark.virtual_calls_chain                               MEGAMORPHIC_3  avgt    5   1.289 ±  0.005  ns/op
MegamorphicInterfaceCallBenchmark.virtual_calls_chain:·asm                          MEGAMORPHIC_3  avgt          NaN             ---
MegamorphicInterfaceCallBenchmark.virtual_calls_chain                               MEGAMORPHIC_4  avgt    5   1.963 ±  0.002  ns/op
MegamorphicInterfaceCallBenchmark.virtual_calls_chain:·asm                          MEGAMORPHIC_4  avgt          NaN             ---
MegamorphicInterfaceCallBenchmark.virtual_calls_chain                               MEGAMORPHIC_5  avgt    5   1.959 ±  0.002  ns/op
MegamorphicInterfaceCallBenchmark.virtual_calls_chain:·asm                          MEGAMORPHIC_5  avgt          NaN             ---
MegamorphicInterfaceCallBenchmark.virtual_calls_chain                               MEGAMORPHIC_6  avgt    5   1.967 ±  0.014  ns/op
MegamorphicInterfaceCallBenchmark.virtual_calls_chain:·asm                          MEGAMORPHIC_6  avgt          NaN             ---
MegamorphicInterfaceCallBenchmark.virtual_calls_chain               MEGAMORPHIC_6_DOMINANT_TARGET  avgt    5  15.346 ±  0.104  ns/op
MegamorphicInterfaceCallBenchmark.virtual_calls_chain:·asm          MEGAMORPHIC_6_DOMINANT_TARGET  avgt          NaN             ---
