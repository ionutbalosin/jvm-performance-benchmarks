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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark.no_if_branch
# Parameters: (size = 16384)

# Run progress: 0.00% complete, ETA 00:05:00
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 879.844 ns/op
# Warmup Iteration   2: 879.065 ns/op
# Warmup Iteration   3: 873.450 ns/op
# Warmup Iteration   4: 876.066 ns/op
# Warmup Iteration   5: 874.847 ns/op
Iteration   1: 865.558 ns/op
Iteration   2: 874.371 ns/op
Iteration   3: 873.797 ns/op
Iteration   4: 875.016 ns/op
Iteration   5: 874.370 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark.no_if_branch":
  872.622 ±(99.9%) 15.296 ns/op [Average]
  (min, avg, max) = (865.558, 872.622, 875.016), stdev = 3.972
  CI (99.9%): [857.326, 887.919] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark.no_if_branch:·asm":
PrintAssembly processed: 134984 total address lines.
Perf output processed (skipped 56.484 seconds):
 Column 1: cycles (51887 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f6a0:0x3002f7e2] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark::no_if_branch[Falcon]

         0x3002f7de: 00 00                             addb    %al, (%rax)                   
         0x3002f7e0: 00 00                             addb    %al, (%rax)                   
         0x3002f7e2: 00 00                             addb    %al, (%rax)                   
         -----------
         5.804:  245         3 promoted  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark::no_if_branch ()I (tid 138469) (kid 1447 pkid/prev 1423/NA) (mid 1481729 pmid 18435) (bytes 38) (generation 0) (lvl O2) (score -1) (score_updated 0ms; orig 0; promoted 700) (rank 0, time-between-promotions 0ms) (wait 1ms)
         5.804:  246    %    3 promoted  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark::no_if_branch ()I @ 13 (tid 138469) (kid 1447 pkid/prev 1423/NA) (mid 1481729 pmid 18435) (bytes 38) (generation 0) (lvl O0) (score -1) (score_updated 0ms; orig 0; promoted 700) (rank 0, time-between-promotions 0ms) (wait 1ms)
           # {method}{0x20002657bb8} no_if_branch[Falcon] ()I in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/IfConditionalBranchBenchmark
         Decoding CodeBlob 0x3002f600
         0x3002f6a0: eb f9                             pushq    %rax                         
         0x3002f6a2: 48 89 fe                          movq    %rdi, %rsi                    
  0.04%  0x3002f6a5: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  0.00%  0x3002f6ae: 0f 85 d2 00 00 00                 jne    210                            ; 0x3002f786
  0.00%  0x3002f6b4: 48 8b 46 18                       movq    24(%rsi), %rax                
         0x3002f6b8: 2e 2e 2e b9 48 00 f8 2f           movl    $804782152, %ecx              ; 804782152 = clearable_gc_phase_trap_mask
  0.03%  0x3002f6c0: 48 85 01                          testq    %rax, (%rcx)                 
         0x3002f6c3: 0f 85 ce 00 00 00                 jne    206                            ; 0x3002f797
  0.00%  0x3002f6c9: 8b 50 08                          movl    8(%rax), %edx                 
  0.14%  0x3002f6cc: 85 d2                             testl    %edx, %edx                   
         0x3002f6ce: 0f 84 ab 00 00 00                 je    171                             ; 0x3002f77f
  0.06%  0x3002f6d4: 83 fa 20                          cmpl    $32, %edx                     
         0x3002f6d7: 73 1f                             jae    31                             ; 0x3002f6f8
         0x3002f6d9: 31 f6                             xorl    %esi, %esi                    
         0x3002f6db: 31 c9                             xorl    %ecx, %ecx                    
         0x3002f6dd: 03 4c b0 10                       addl    16(%rax,%rsi,4), %ecx         
         0x3002f6e1: 48 89 f7                          movq    %rsi, %rdi                    
         0x3002f6e4: 48 83 cf 01                       orq    $1, %rdi                       
         0x3002f6e8: 48 39 d7                          cmpq    %rdx, %rdi                    
         0x3002f6eb: 0f 82 d0 00 00 00                 jb    208                             ; 0x3002f7c1
         0x3002f6f1: 89 c8                             movl    %ecx, %eax                    
  0.04%  0x3002f6f3: 59                                popq    %rcx                          
         0x3002f6f4: c5 f8 77                          vzeroupper                            
  0.04%  0x3002f6f7: c3                                retq                                  
  0.05%  0x3002f6f8: 89 d6                             movl    %edx, %esi                    
         0x3002f6fa: 81 e6 e0 ff ff 7f                 andl    $2147483616, %esi             
         0x3002f700: 48 8d 0c 95 00 00 00 00           leaq    (,%rdx,4), %rcx               
  0.01%  0x3002f708: 48 83 e1 80                       andq    $-128, %rcx                   
  0.02%  0x3002f70c: c5 f9 ef c0                       vpxor    %xmm0, %xmm0, %xmm0          
         0x3002f710: 31 ff                             xorl    %edi, %edi                    
         0x3002f712: c5 f1 ef c9                       vpxor    %xmm1, %xmm1, %xmm1          
  0.01%  0x3002f716: c5 e9 ef d2                       vpxor    %xmm2, %xmm2, %xmm2          
  0.06%  0x3002f71a: c5 e1 ef db                       vpxor    %xmm3, %xmm3, %xmm3          
         0x3002f71e: 66 90                             nop                                   
  0.00%  0x3002f720: c5 fd fe 44 38 10                 vpaddd    16(%rax,%rdi), %ymm0, %ymm0  
 26.88%  0x3002f726: c5 f5 fe 4c 38 30                 vpaddd    48(%rax,%rdi), %ymm1, %ymm1  
 10.74%  0x3002f72c: c5 ed fe 54 38 50                 vpaddd    80(%rax,%rdi), %ymm2, %ymm2  
 32.13%  0x3002f732: c5 e5 fe 5c 38 70                 vpaddd    112(%rax,%rdi), %ymm3, %ymm3  
  7.81%  0x3002f738: 2e 48 81 ef 80 ff ff ff           subq    $-128, %rdi                   
 16.55%  0x3002f740: 48 39 f9                          cmpq    %rdi, %rcx                    
         0x3002f743: 75 db                             jne    -37                            ; 0x3002f720
         0x3002f745: c5 f5 fe c0                       vpaddd    %ymm0, %ymm1, %ymm0         
  0.00%  0x3002f749: c5 e5 fe ca                       vpaddd    %ymm2, %ymm3, %ymm1         
  0.01%  0x3002f74d: c5 f5 fe c0                       vpaddd    %ymm0, %ymm1, %ymm0         
  0.03%  0x3002f751: c4 e3 7d 39 c1 01                 vextracti128    $1, %ymm0, %xmm1      
  0.01%  0x3002f757: c5 f9 fe c1                       vpaddd    %xmm1, %xmm0, %xmm0         
  0.15%  0x3002f75b: c5 f9 70 c8 ee                    vpshufd    $238, %xmm0, %xmm1         
         0x3002f760: c5 f9 fe c1                       vpaddd    %xmm1, %xmm0, %xmm0         
  0.12%  0x3002f764: c5 f9 70 c8 55                    vpshufd    $85, %xmm0, %xmm1          
         0x3002f769: c5 f9 fe c1                       vpaddd    %xmm1, %xmm0, %xmm0         
  0.03%  0x3002f76d: c5 f9 7e c1                       vmovd    %xmm0, %ecx                  
         0x3002f771: 48 39 d6                          cmpq    %rdx, %rsi                    
         0x3002f774: 0f 85 63 ff ff ff                 jne    -157                           ; 0x3002f6dd
         0x3002f77a: e9 72 ff ff ff                    jmp    -142                           ; 0x3002f6f1
         0x3002f77f: 31 c9                             xorl    %ecx, %ecx                    
         0x3002f781: e9 6b ff ff ff                    jmp    -149                           ; 0x3002f6f1
  0.00%  0x3002f786: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f790: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f792: e9 1d ff ff ff                    jmp    -227                           ; 0x3002f6b4
         0x3002f797: 48 83 c6 18                       addq    $24, %rsi                     
         0x3002f79b: 48 b9 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rcx           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f7a5: 48 89 c7                          movq    %rax, %rdi                    
         0x3002f7a8: ff d1                             callq    *%rcx                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f7aa: e9 1a ff ff ff                    jmp    -230                           ; 0x3002f6c9
         0x3002f7af: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f7b9: 41 bb 0b 00 00 00                 movl    $11, %r11d                    
         0x3002f7bf: ff d0                             callq    *%rax                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
....................................................................................................
 94.96%  <total for region 1>

....[Hottest Regions]...............................................................................
 94.96%  [0x3002f6a0:0x3002f7e2] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark::no_if_branch[Falcon]
  0.49%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.23%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.20%  [0xffffffffa9ecfb65:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb8dc3:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eb93b5:0xffffffffa9eb948a] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f0711c:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.09%  [0x300322e0:0x30032342] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.IfConditionalBranchBenchmark_no_if_branch_jmhTest::no_if_branch_avgt_jmhStub[Falcon]
  0.09%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ee5876:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eee5d0:0xffffffffa9eee62e] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0740:0xffffffffa9ed0797] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0809:0xffffffffa9ed0866] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9f69698:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9f07060:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9eb7dfd:0xffffffffa9eb7e8a] in [unknown] ([kernel.kallsyms])
  2.69%  <...other 388 warm regions...>
....................................................................................................
 99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 94.96%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark::no_if_branch[Falcon]
  4.35%  [unknown] ([kernel.kallsyms])
  0.31%  [unknown] (libjvm.so)
  0.09%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.IfConditionalBranchBenchmark_no_if_branch_jmhTest::no_if_branch_avgt_jmhStub[Falcon]
  0.03%  clock_gettime (libc-2.31.so)
  0.03%  [unknown] ([vdso])
  0.03%  __errno_location (libpthread-2.31.so)
  0.02%  PMEM::account_enabled; PMEM::accounts (libaztall.so)
  0.02%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.01%  thread_stack_region_start (libazsys3.so)
  0.01%  is_thread_initialized (libazsys3.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  az_zmd_api_version_tall (libaztall.so)
  0.01%  PMEM_Account::fetch_stats (libaztall.so)
  0.00%  <stub: fast_aload_0  220 fast_aload_0>
  0.00%  az_get_elastic_tall (libaztall.so)
  0.04%  <...other 18 warm methods...>
....................................................................................................
 99.99%  <totals>

....[Distribution by Area]..........................................................................
 95.07%  <generated code>
  4.35%  <native code in ([kernel.kallsyms])>
  0.31%  <native code in (libjvm.so)>
  0.08%  <native code in (libaztall.so)>
  0.07%  <native code in (libc-2.31.so)>
  0.03%  <native code in (libazsys3.so)>
  0.03%  <native code in (libpthread-2.31.so)>
  0.03%  <native code in ([vdso])>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.00%  <native code in (libm-2.31.so)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark.predictable_if_branch
# Parameters: (size = 16384)

# Run progress: 33.33% complete, ETA 00:03:44
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6412.913 ns/op
# Warmup Iteration   2: 6361.261 ns/op
# Warmup Iteration   3: 6361.483 ns/op
# Warmup Iteration   4: 6360.638 ns/op
# Warmup Iteration   5: 6360.620 ns/op
Iteration   1: 6360.979 ns/op
Iteration   2: 6360.850 ns/op
Iteration   3: 6360.708 ns/op
Iteration   4: 6360.684 ns/op
Iteration   5: 6361.007 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark.predictable_if_branch":
  6360.846 ±(99.9%) 0.574 ns/op [Average]
  (min, avg, max) = (6360.684, 6360.846, 6361.007), stdev = 0.149
  CI (99.9%): [6360.271, 6361.420] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark.predictable_if_branch:·asm":
PrintAssembly processed: 134965 total address lines.
Perf output processed (skipped 56.667 seconds):
 Column 1: cycles (51989 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f6dd:0x3002f7d2] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark::predictable_if_branch[Falcon]

  0.01%  0x3002f6dd: 2e 89 d7                          movl    %edx, %edi                    
  0.00%  0x3002f6e0: 83 e7 07                          andl    $7, %edi                      
         0x3002f6e3: 74 20                             je    32                              ; 0x3002f705
         0x3002f6e5: 44 8b 44 b0 10                    movl    16(%rax,%rsi,4), %r8d         
         0x3002f6ea: 41 81 f8 ff 0f 00 00              cmpl    $4095, %r8d                   
         0x3002f6f1: 0f 8f e1 00 00 00                 jg    225                             ; 0x3002f7d8
         0x3002f6f7: 44 01 c1                          addl    %r8d, %ecx                    
         0x3002f6fa: 2e 2e 2e 48 ff c6                 incq    %rsi                          
         0x3002f700: 48 ff cf                          decq    %rdi                          
         0x3002f703: 75 e0                             jne    -32                            ; 0x3002f6e5
  0.02%  0x3002f705: 89 c8                             movl    %ecx, %eax                    
         0x3002f707: 59                                popq    %rcx                          
  0.07%  0x3002f708: c3                                retq                                  
  0.01%  0x3002f709: 89 d7                             movl    %edx, %edi                    
         0x3002f70b: 81 e7 f8 ff ff 7f                 andl    $2147483640, %edi             
         0x3002f711: 31 f6                             xorl    %esi, %esi                    
         0x3002f713: 31 c9                             xorl    %ecx, %ecx                    
  0.01%  0x3002f715: 66 66 2e 0f 1f 84 00 00 00 00     nopw    %cs:(%rax,%rax)               
         0x3002f720: 44 8b 44 b0 10                    movl    16(%rax,%rsi,4), %r8d         
  0.08%  0x3002f725: 41 81 f8 ff 0f 00 00              cmpl    $4095, %r8d                   
         0x3002f72c: 0f 8f a6 00 00 00                 jg    166                             ; 0x3002f7d8
 11.77%  0x3002f732: 41 01 c8                          addl    %ecx, %r8d                    
         0x3002f735: 2e 2e 2e 2e 2e 2e 2e 8b 4c b0     movl    %cs:20(%rax,%rsi,4), %ecx     
         0x3002f740: 81 f9 ff 0f 00 00                 cmpl    $4095, %ecx                   
         0x3002f746: 7f 7b                             jg    123                             ; 0x3002f7c3
  0.05%  0x3002f748: 44 01 c1                          addl    %r8d, %ecx                    
 11.68%  0x3002f74b: 44 8b 44 b0 18                    movl    24(%rax,%rsi,4), %r8d         
         0x3002f750: 41 81 f8 ff 0f 00 00              cmpl    $4095, %r8d                   
         0x3002f757: 7f 6f                             jg    111                             ; 0x3002f7c8
         0x3002f759: 41 01 c8                          addl    %ecx, %r8d                    
 11.96%  0x3002f75c: 8b 4c b0 1c                       movl    28(%rax,%rsi,4), %ecx         
         0x3002f760: 81 f9 ff 0f 00 00                 cmpl    $4095, %ecx                   
         0x3002f766: 7f 55                             jg    85                              ; 0x3002f7bd
         0x3002f768: 44 01 c1                          addl    %r8d, %ecx                    
 11.75%  0x3002f76b: 44 8b 44 b0 20                    movl    32(%rax,%rsi,4), %r8d         
  0.00%  0x3002f770: 41 81 f8 ff 0f 00 00              cmpl    $4095, %r8d                   
         0x3002f777: 7f 5b                             jg    91                              ; 0x3002f7d4
         0x3002f779: 41 01 c8                          addl    %ecx, %r8d                    
 12.07%  0x3002f77c: 8b 4c b0 24                       movl    36(%rax,%rsi,4), %ecx         
         0x3002f780: 81 f9 ff 0f 00 00                 cmpl    $4095, %ecx                   
         0x3002f786: 7f 57                             jg    87                              ; 0x3002f7df
         0x3002f788: 44 01 c1                          addl    %r8d, %ecx                    
 11.74%  0x3002f78b: 44 8b 44 b0 28                    movl    40(%rax,%rsi,4), %r8d         
  0.01%  0x3002f790: 41 81 f8 ff 0f 00 00              cmpl    $4095, %r8d                   
         0x3002f797: 7f 35                             jg    53                              ; 0x3002f7ce
  0.01%  0x3002f799: 41 01 c8                          addl    %ecx, %r8d                    
 11.70%  0x3002f79c: 8b 4c b0 2c                       movl    44(%rax,%rsi,4), %ecx         
  0.03%  0x3002f7a0: 81 f9 ff 0f 00 00                 cmpl    $4095, %ecx                   
         0x3002f7a6: 7f 3d                             jg    61                              ; 0x3002f7e5
  0.05%  0x3002f7a8: 44 01 c1                          addl    %r8d, %ecx                    
 11.73%  0x3002f7ab: 48 83 c6 08                       addq    $8, %rsi                      
  0.00%  0x3002f7af: 48 39 f7                          cmpq    %rsi, %rdi                    
         0x3002f7b2: 0f 85 68 ff ff ff                 jne    -152                           ; 0x3002f720
         0x3002f7b8: e9 20 ff ff ff                    jmp    -224                           ; 0x3002f6dd
         0x3002f7bd: 48 83 c6 03                       addq    $3, %rsi                      
         0x3002f7c1: eb 26                             jmp    38                             ; 0x3002f7e9
         0x3002f7c3: 48 ff c6                          incq    %rsi                          
         0x3002f7c6: eb 21                             jmp    33                             ; 0x3002f7e9
         0x3002f7c8: 48 83 c6 02                       addq    $2, %rsi                      
         0x3002f7cc: eb 0a                             jmp    10                             ; 0x3002f7d8
         0x3002f7ce: 48 83 c6 06                       addq    $6, %rsi                      
         0x3002f7d2: eb 04                             jmp    4                              ; 0x3002f7d8
....................................................................................................
 94.75%  <total for region 1>

....[Hottest Regions]...............................................................................
 94.75%  [0x3002f6dd:0x3002f7d2] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark::predictable_if_branch[Falcon]
  1.16%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.26%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9f0711f:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb93bb:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eef5ae:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.12%  [0x3002f6a0:0x3002f849] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark::predictable_if_branch[Falcon]
  0.10%  [0xffffffffa9f211f0:0xffffffffa9f21223] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ed0800:0xffffffffa9ed0873] in [unknown] ([kernel.kallsyms])
  0.08%  [0x300322d9:0x30032344] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.IfConditionalBranchBenchmark_predictable_if_branch_jmhTest::predictable_if_branch_avgt_jmhStub[Falcon]
  0.07%  [0xffffffffa9f686c0:0xffffffffa9f6875f] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ee587e:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f07060:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0746:0xffffffffa9ed0797] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9da97a0:0xffffffffa9da9802] in [unknown] ([kernel.kallsyms])
  2.17%  <...other 327 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 94.87%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark::predictable_if_branch[Falcon]
  4.72%  [unknown] ([kernel.kallsyms])
  0.19%  [unknown] (libjvm.so)
  0.08%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.IfConditionalBranchBenchmark_predictable_if_branch_jmhTest::predictable_if_branch_avgt_jmhStub[Falcon]
  0.02%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.02%  [unknown] ([vdso])
  0.01%  [unknown] (libc-2.31.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.01%  PMEM::account_enabled; PMEM::accounts (libaztall.so)
  0.01%  thread_stack_region_start (libazsys3.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.00%  sprintf (libc-2.31.so)
  0.00%  is_thread_initialized (libazsys3.so)
  0.00%  syscall (libc-2.31.so)
  0.00%  clock_nanosleep (libc-2.31.so)
  0.00%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  az_pmem_get_account_usage (libazsys3.so)
  0.03%  <...other 17 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 94.95%  <generated code>
  4.72%  <native code in ([kernel.kallsyms])>
  0.19%  <native code in (libjvm.so)>
  0.04%  <native code in (libaztall.so)>
  0.04%  <native code in (libc-2.31.so)>
  0.02%  <native code in (libazsys3.so)>
  0.02%  <native code in ([vdso])>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark.unpredictable_if_branch
# Parameters: (size = 16384)

# Run progress: 66.67% complete, ETA 00:01:51
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1204.936 ns/op
# Warmup Iteration   2: 1174.696 ns/op
# Warmup Iteration   3: 1174.953 ns/op
# Warmup Iteration   4: 1172.905 ns/op
# Warmup Iteration   5: 1171.843 ns/op
Iteration   1: 1172.659 ns/op
Iteration   2: 1171.555 ns/op
Iteration   3: 1190.055 ns/op
Iteration   4: 1175.083 ns/op
Iteration   5: 1176.794 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark.unpredictable_if_branch":
  1177.229 ±(99.9%) 28.711 ns/op [Average]
  (min, avg, max) = (1171.555, 1177.229, 1190.055), stdev = 7.456
  CI (99.9%): [1148.518, 1205.940] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark.unpredictable_if_branch:·asm":
PrintAssembly processed: 134773 total address lines.
Perf output processed (skipped 57.624 seconds):
 Column 1: cycles (51391 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f4dd:0x3002f60c] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch[Falcon]

         0x3002f4dd: 45 31 c0                          xorl    %r8d, %r8d                    
         0x3002f4e0: 8b 4c b0 10                       movl    16(%rax,%rsi,4), %ecx         
         0x3002f4e4: 81 f9 01 08 00 00                 cmpl    $2049, %ecx                   
         0x3002f4ea: 0f 4c f9                          cmovll    %ecx, %edi                  
         0x3002f4ed: 89 f9                             movl    %edi, %ecx                    
         0x3002f4ef: 44 01 c1                          addl    %r8d, %ecx                    
         0x3002f4f2: 48 89 f7                          movq    %rsi, %rdi                    
         0x3002f4f5: 2e 2e 2e 2e 48 81 cf 01 00 00     orq    $1, %rdi                       
         0x3002f500: 48 39 d7                          cmpq    %rdx, %rdi                    
         0x3002f503: 0f 82 2e 01 00 00                 jb    302                             ; 0x3002f637
  0.03%  0x3002f509: 89 c8                             movl    %ecx, %eax                    
         0x3002f50b: 59                                popq    %rcx                          
  0.00%  0x3002f50c: c5 f8 77                          vzeroupper                            
  0.03%  0x3002f50f: c3                                retq                                  
  0.02%  0x3002f510: 89 d6                             movl    %edx, %esi                    
         0x3002f512: 81 e6 e0 ff ff 7f                 andl    $2147483616, %esi             
  0.02%  0x3002f518: 48 8d 0c 95 00 00 00 00           leaq    (,%rdx,4), %rcx               
         0x3002f520: 48 83 e1 80                       andq    $-128, %rcx                   
  0.01%  0x3002f524: c5 f9 ef c0                       vpxor    %xmm0, %xmm0, %xmm0          
         0x3002f528: 45 31 c0                          xorl    %r8d, %r8d                    
  0.01%  0x3002f52b: 49 b9 70 f6 02 30 00 00 00 00     movabsq    $805500528, %r9            ; 0x3002f670
         0x3002f535: c4 c2 7d 58 09                    vpbroadcastd    (%r9), %ymm1          
  0.02%  0x3002f53a: c5 e9 ef d2                       vpxor    %xmm2, %xmm2, %xmm2          
         0x3002f53e: c5 e1 ef db                       vpxor    %xmm3, %xmm3, %xmm3          
  0.01%  0x3002f542: c5 d9 ef e4                       vpxor    %xmm4, %xmm4, %xmm4          
         0x3002f546: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
  0.02%  0x3002f555: 66 66 2e 0f 1f 84 00 00 00 00     nopw    %cs:(%rax,%rax)               
  5.22%  0x3002f560: c4 a1 7e 6f 6c 00 10              vmovdqu    16(%rax,%r8), %ymm5        
  1.13%  0x3002f567: c4 a1 7e 6f 74 00 30              vmovdqu    48(%rax,%r8), %ymm6        
  9.36%  0x3002f56e: c4 a1 7e 6f 7c 00 50              vmovdqu    80(%rax,%r8), %ymm7        
  0.96%  0x3002f575: c4 21 7e 6f 44 00 70              vmovdqu    112(%rax,%r8), %ymm8       
  7.06%  0x3002f57c: c5 75 66 cd                       vpcmpgtd    %ymm5, %ymm1, %ymm9       
  1.34%  0x3002f580: c5 b5 db ed                       vpand    %ymm5, %ymm9, %ymm5          
  8.57%  0x3002f584: c5 d5 fe c0                       vpaddd    %ymm0, %ymm5, %ymm0         
  1.18%  0x3002f588: c5 f5 66 ee                       vpcmpgtd    %ymm6, %ymm1, %ymm5       
  7.94%  0x3002f58c: c5 d5 db ee                       vpand    %ymm6, %ymm5, %ymm5          
  1.78%  0x3002f590: c5 d5 fe d2                       vpaddd    %ymm2, %ymm5, %ymm2         
 10.84%  0x3002f594: c5 f5 66 ef                       vpcmpgtd    %ymm7, %ymm1, %ymm5       
  1.29%  0x3002f598: c5 d5 db ef                       vpand    %ymm7, %ymm5, %ymm5          
  6.28%  0x3002f59c: c5 d5 fe db                       vpaddd    %ymm3, %ymm5, %ymm3         
  2.44%  0x3002f5a0: c4 c1 75 66 e8                    vpcmpgtd    %ymm8, %ymm1, %ymm5       
 14.48%  0x3002f5a5: c5 bd db ed                       vpand    %ymm5, %ymm8, %ymm5          
  1.45%  0x3002f5a9: c5 d5 fe e4                       vpaddd    %ymm4, %ymm5, %ymm4         
 12.37%  0x3002f5ad: 49 83 e8 80                       subq    $-128, %r8                    
  1.03%  0x3002f5b1: 4c 39 c1                          cmpq    %r8, %rcx                     
         0x3002f5b4: 75 aa                             jne    -86                            ; 0x3002f560
  0.01%  0x3002f5b6: c5 ed fe c0                       vpaddd    %ymm0, %ymm2, %ymm0         
         0x3002f5ba: c5 e5 fe c0                       vpaddd    %ymm0, %ymm3, %ymm0         
  0.02%  0x3002f5be: c5 dd fe c0                       vpaddd    %ymm0, %ymm4, %ymm0         
  0.00%  0x3002f5c2: c4 e3 7d 39 c1 01                 vextracti128    $1, %ymm0, %xmm1      
  0.01%  0x3002f5c8: c5 f9 fe c1                       vpaddd    %xmm1, %xmm0, %xmm0         
  0.08%  0x3002f5cc: c5 f9 70 c8 ee                    vpshufd    $238, %xmm0, %xmm1         
         0x3002f5d1: c5 f9 fe c1                       vpaddd    %xmm1, %xmm0, %xmm0         
  0.06%  0x3002f5d5: c5 f9 70 c8 55                    vpshufd    $85, %xmm0, %xmm1          
         0x3002f5da: c5 f9 fe c1                       vpaddd    %xmm1, %xmm0, %xmm0         
  0.03%  0x3002f5de: c4 c1 79 7e c0                    vmovd    %xmm0, %r8d                  
         0x3002f5e3: 44 89 c1                          movl    %r8d, %ecx                    
         0x3002f5e6: 48 39 d6                          cmpq    %rdx, %rsi                    
         0x3002f5e9: 0f 85 f1 fe ff ff                 jne    -271                           ; 0x3002f4e0
         0x3002f5ef: e9 15 ff ff ff                    jmp    -235                           ; 0x3002f509
         0x3002f5f4: 31 c9                             xorl    %ecx, %ecx                    
         0x3002f5f6: e9 0e ff ff ff                    jmp    -242                           ; 0x3002f509
         0x3002f5fb: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f605: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f607: e9 a8 fe ff ff                    jmp    -344                           ; 0x3002f4b4
         0x3002f60c: 48 83 c6 18                       addq    $24, %rsi                     
....................................................................................................
 95.11%  <total for region 1>

....[Hottest Regions]...............................................................................
 95.11%  [0x3002f4dd:0x3002f60c] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch[Falcon]
  0.45%  [0x3002f4a0:0x3002f66c] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch[Falcon]
  0.24%  [0xffffffffa9eef320:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.20%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.17%  [0x30031ed9:0x30031f44] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.IfConditionalBranchBenchmark_unpredictable_if_branch_jmhTest::unpredictable_if_branch_avgt_jmhStub[Falcon]
  0.17%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9c94c86:0xffffffffa9c94c86] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb93b5:0xffffffffa9eb947b] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eef5ae:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9f0711f:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eff400:0xffffffffa9eff42d] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0800:0xffffffffa9ed0860] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eef44f:0xffffffffa9eef4b0] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eee5d6:0xffffffffa9eee62f] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9f070ab:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9da97a0:0xffffffffa9da97fd] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ee5876:0xffffffffa9ee587e] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffaaa00e30:0xffffffffaaa00e30] in [unknown] ([kernel.kallsyms])
  2.32%  <...other 367 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 95.56%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch[Falcon]
  3.97%  [unknown] ([kernel.kallsyms])
  0.18%  [unknown] (libjvm.so)
  0.17%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.IfConditionalBranchBenchmark_unpredictable_if_branch_jmhTest::unpredictable_if_branch_avgt_jmhStub[Falcon]
  0.01%  [unknown] (libc-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  [unknown] ([vdso])
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.00%  is_thread_initialized (libazsys3.so)
  0.00%  az_zmd_api_version_tall (libaztall.so)
  0.00%  PMEM::account_enabled (libaztall.so)
  0.00%  [unknown] (kvm.ko)
  0.00%  VMEM::get_account_usage (libaztall.so)
  0.00%  _dl_addr (libc-2.31.so)
  0.00%  az_get_elastic (libazsys3.so)
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  <stub: fast_aputfield  211 fast_aputfield>
  0.00%  __pthread_mutex_unlock (libpthread-2.31.so)
  0.03%  <...other 16 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.75%  <generated code>
  3.97%  <native code in ([kernel.kallsyms])>
  0.18%  <native code in (libjvm.so)>
  0.03%  <native code in (libaztall.so)>
  0.03%  <native code in (libc-2.31.so)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in ([vdso])>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.00%  <native code in (kvm.ko)>
....................................................................................................
100.00%  <totals>



# Run complete. Total time: 00:05:35

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

Benchmark                                                  (size)  Mode  Cnt     Score    Error  Units
IfConditionalBranchBenchmark.no_if_branch                   16384  avgt    5   872.622 ± 15.296  ns/op
IfConditionalBranchBenchmark.no_if_branch:·asm              16384  avgt            NaN             ---
IfConditionalBranchBenchmark.predictable_if_branch          16384  avgt    5  6360.846 ±  0.574  ns/op
IfConditionalBranchBenchmark.predictable_if_branch:·asm     16384  avgt            NaN             ---
IfConditionalBranchBenchmark.unpredictable_if_branch        16384  avgt    5  1177.229 ± 28.711  ns/op
IfConditionalBranchBenchmark.unpredictable_if_branch:·asm   16384  avgt            NaN             ---
