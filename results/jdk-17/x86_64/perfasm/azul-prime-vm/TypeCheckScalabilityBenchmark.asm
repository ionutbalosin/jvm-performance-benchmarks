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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1
# Parameters: (typePollution = false)

# Run progress: 0.00% complete, ETA 00:13:20
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.234 ns/op
# Warmup Iteration   2: 6.201 ns/op
# Warmup Iteration   3: 6.205 ns/op
# Warmup Iteration   4: 6.188 ns/op
# Warmup Iteration   5: 6.189 ns/op
Iteration   1: 6.253 ns/op
Iteration   2: 6.189 ns/op
Iteration   3: 6.189 ns/op
Iteration   4: 6.188 ns/op
Iteration   5: 6.188 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1":
  6.201 ±(99.9%) 0.110 ns/op [Average]
  (min, avg, max) = (6.188, 6.201, 6.253), stdev = 0.029
  CI (99.9%): [6.091, 6.312] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1:·asm":
PrintAssembly processed: 134110 total address lines.
Perf output processed (skipped 56.444 seconds):
 Column 1: cycles (51372 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f0a0:0x3002f121] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1[Falcon]

         0x3002f109: ff d0                             callq    *%rax                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f10b: 48 b9 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rcx           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f115: 41 bb 0f 00 00 00                 movl    $15, %r11d                    
         0x3002f11b: ff d1                             callq    *%rcx                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f11d: 00 00                             addb    %al, (%rax)                   
         0x3002f11f: 00 00                             addb    %al, (%rax)                   
         0x3002f121: 00 00                             addb    %al, (%rax)                   
         -----------
           # {method}{0x200026576c0} is_duplicated_1[Falcon] ()Z in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark
         Decoding CodeBlob 0x3002f000
 11.92%  0x3002f0a0: eb f9                             pushq    %rax                         
  6.07%  0x3002f0a2: 48 89 fe                          movq    %rdi, %rsi                    
         0x3002f0a5: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 11.82%  0x3002f0ae: 75 26                             jne    38                             ; 0x3002f0d6
  5.84%  0x3002f0b0: 48 8b 46 10                       movq    16(%rsi), %rax                
         0x3002f0b4: b9 48 00 f8 2f                    movl    $804782152, %ecx              ; 804782152 = clearable_gc_phase_trap_mask
         0x3002f0b9: 48 85 01                          testq    %rax, (%rcx)                 
         0x3002f0bc: 75 26                             jne    38                             ; 0x3002f0e4
  6.00%  0x3002f0be: 8b 48 04                          movl    4(%rax), %ecx                 
         0x3002f0c1: 81 e1 ff ff ff 01                 andl    $33554431, %ecx               
  5.79%  0x3002f0c7: 81 f9 e3 06 00 00                 cmpl    $1763, %ecx                   
         0x3002f0cd: 75 3c                             jne    60                             ; 0x3002f10b
  5.98%  0x3002f0cf: b8 01 00 00 00                    movl    $1, %eax                      
         0x3002f0d4: 59                                popq    %rcx                          
         0x3002f0d5: c3                                retq                                  
         0x3002f0d6: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f0e0: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f0e2: eb cc                             jmp    -52                            ; 0x3002f0b0
         0x3002f0e4: 48 83 c6 10                       addq    $16, %rsi                     
         0x3002f0e8: 48 b9 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rcx           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f0f2: 48 89 c7                          movq    %rax, %rdi                    
         0x3002f0f5: ff d1                             callq    *%rcx                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f0f7: eb c5                             jmp    -59                            ; 0x3002f0be
....................................................................................................
 53.40%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x30031adc:0x30031b41] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub[Falcon]

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
  5.94%  0x30031b03: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30031b08: e8 f3 bd fd ff                    callq    -147981                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x30031b0d: 89 44 24 34                       movl    %eax, 52(%rsp)                
 36.67%  0x30031b11: 48 ff c5                          incq    %rbp                          
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
 42.61%  <total for region 2>

....[Hottest Regions]...............................................................................
 53.40%  [0x3002f0a0:0x3002f121] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1[Falcon]
 42.61%  [0x30031adc:0x30031b41] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub[Falcon]
  0.27%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.24%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9f0711c:0xffffffffa9f07160] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ed0800:0xffffffffa9ed0889] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ee587e:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eef44f:0xffffffffa9eef4ad] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f686c0:0xffffffffa9f6875f] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eee5d0:0xffffffffa9eee62f] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28eadc:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0746:0xffffffffa9ed07b2] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28d0d0:0xffffffffaa28d129] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9f69678:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  2.06%  <...other 308 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 53.40%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1[Falcon]
 42.61%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub[Falcon]
  3.71%  [unknown] ([kernel.kallsyms])
  0.19%  [unknown] (libjvm.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  PMEM::account_enabled (libaztall.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.00%  is_thread_initialized (libazsys3.so)
  0.00%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  az_pmem_get_account_usage (libazsys3.so)
  0.00%  StubRoutines::c1_profile_callee
  0.00%  <stub: aload_3  45 aload_3>
  0.00%  [unknown] (libstdc++.so.6)
  0.00%  clock_nanosleep (libc-2.31.so)
  0.00%  <stub: istore  54 istore>
  0.00%  jdk.internal.reflect.ClassFileAssembler::cpi[C1]
  0.01%  <...other 3 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 96.02%  <generated code>
  3.71%  <native code in ([kernel.kallsyms])>
  0.19%  <native code in (libjvm.so)>
  0.03%  <native code in (libc-2.31.so)>
  0.02%  <native code in (libaztall.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (libazsys3.so)>
  0.00%  <native code in (libstdc++.so.6)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1
# Parameters: (typePollution = true)

# Run progress: 12.50% complete, ETA 00:13:06
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.658 ns/op
# Warmup Iteration   2: 6.664 ns/op
# Warmup Iteration   3: 6.661 ns/op
# Warmup Iteration   4: 6.585 ns/op
# Warmup Iteration   5: 6.581 ns/op
Iteration   1: 6.583 ns/op
Iteration   2: 6.579 ns/op
Iteration   3: 6.580 ns/op
Iteration   4: 6.580 ns/op
Iteration   5: 6.583 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1":
  6.581 ±(99.9%) 0.007 ns/op [Average]
  (min, avg, max) = (6.579, 6.581, 6.583), stdev = 0.002
  CI (99.9%): [6.574, 6.588] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1:·asm":
PrintAssembly processed: 135287 total address lines.
Perf output processed (skipped 56.616 seconds):
 Column 1: cycles (51533 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f6a0:0x3002f847] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1[Falcon]

         0x3002f831: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f83b: 41 bb 0f 00 00 00                 movl    $15, %r11d                    
         0x3002f841: ff d0                             callq    *%rax                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f843: 00 00                             addb    %al, (%rax)                   
         0x3002f845: 00 00                             addb    %al, (%rax)                   
         0x3002f847: 00 00                             addb    %al, (%rax)                   
         -----------
           # {method}{0x20002657c00} is_duplicated_1[Falcon] ()Z in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark
         Decoding CodeBlob 0x3002f600
         0x3002f6a0: eb f9                             pushq    %rbp                         
 17.62%  0x3002f6a2: 53                                pushq    %rbx                         
         0x3002f6a3: 50                                pushq    %rax                         
  7.06%  0x3002f6a4: 48 89 fe                          movq    %rdi, %rsi                    
         0x3002f6a7: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  3.20%  0x3002f6b0: 75 33                             jne    51                             ; 0x3002f6e5
  2.31%  0x3002f6b2: 48 8b 4e 10                       movq    16(%rsi), %rcx                
         0x3002f6b6: b8 48 00 f8 2f                    movl    $804782152, %eax              ; 804782152 = clearable_gc_phase_trap_mask
         0x3002f6bb: 2e 2e 4c 8b 10                    movq    %cs:(%rax), %r10              
  3.18%  0x3002f6c0: 49 85 ca                          testq    %rcx, %r10                   
         0x3002f6c3: 75 2e                             jne    46                             ; 0x3002f6f3
  2.47%  0x3002f6c5: 44 8b 49 04                       movl    4(%rcx), %r9d                 
         0x3002f6c9: 41 81 e1 ff ff ff 01              andl    $33554431, %r9d               
         0x3002f6d0: 41 81 f9 e4 06 00 00              cmpl    $1764, %r9d                   
         0x3002f6d7: 75 44                             jne    68                             ; 0x3002f71d
  3.31%  0x3002f6d9: b8 01 00 00 00                    movl    $1, %eax                      
  2.48%  0x3002f6de: 48 83 c4 08                       addq    $8, %rsp                      
         0x3002f6e2: 5b                                popq    %rbx                          
  4.89%  0x3002f6e3: 5d                                popq    %rbp                          
  2.33%  0x3002f6e4: c3                                retq                                  
         0x3002f6e5: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f6ef: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f6f1: eb bf                             jmp    -65                            ; 0x3002f6b2
         0x3002f6f3: 48 83 c6 10                       addq    $16, %rsi                     
         0x3002f6f7: 48 b8 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rax           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f701: 48 89 cf                          movq    %rcx, %rdi                    
         0x3002f704: ff d0                             callq    *%rax                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f706: 48 89 c1                          movq    %rax, %rcx                    
         0x3002f709: eb ba                             jmp    -70                            ; 0x3002f6c5
         0x3002f70b: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
....................................................................................................
 48.86%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x30031adc:0x30031b41] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub[Falcon]

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
  5.58%  0x30031b03: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30031b08: e8 f3 bd fd ff                    callq    -147981                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  0.05%  0x30031b0d: 89 44 24 34                       movl    %eax, 52(%rsp)                
 41.29%  0x30031b11: 48 ff c5                          incq    %rbp                          
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
 46.92%  <total for region 2>

....[Hottest Regions]...............................................................................
 48.86%  [0x3002f6a0:0x3002f847] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1[Falcon]
 46.92%  [0x30031adc:0x30031b41] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub[Falcon]
  0.23%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.20%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9f07124:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9c94c86:0xffffffffa9c94c86] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f695f6:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eb93bb:0xffffffffa9eb9470] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffaa28ead0:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eff400:0xffffffffa9eff436] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eee5d0:0xffffffffa9eee62e] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9f07060:0xffffffffa9f070ae] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0800:0xffffffffa9ed0860] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28d0d0:0xffffffffaa28d127] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ee587e:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28eb60:0xffffffffaa28eba9] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  2.41%  <...other 449 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 48.86%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1[Falcon]
 46.92%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub[Falcon]
  3.64%  [unknown] ([kernel.kallsyms])
  0.26%  [unknown] (libjvm.so)
  0.19%  [unknown] (liborca.so.0.0.0.0)
  0.02%  [unknown] (libc-2.31.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  memcpy (libc-2.31.so)
  0.01%  <stub: method entry point (kind = zerolocals)>
  0.01%  [unknown] (kvm.ko)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.00%  az_zmd_api_version_tall (libaztall.so)
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  __errno_location (libpthread-2.31.so)
  0.00%  PMEM::account_enabled (libaztall.so)
  0.00%  cfree (libc-2.31.so)
  0.00%  _dl_addr (libc-2.31.so)
  0.00%  __nanosleep (libc-2.31.so)
  0.00%  <stub: arraylength  190 arraylength>
  0.03%  <...other 14 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.80%  <generated code>
  3.64%  <native code in ([kernel.kallsyms])>
  0.26%  <native code in (libjvm.so)>
  0.19%  <native code in (liborca.so.0.0.0.0)>
  0.06%  <native code in (libc-2.31.so)>
  0.02%  <native code in (libaztall.so)>
  0.01%  <native code in (kvm.ko)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in (libpthread-2.31.so)>
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
# Threads: 2 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2
# Parameters: (typePollution = false)

# Run progress: 25.00% complete, ETA 00:11:10
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.270 ns/op
# Warmup Iteration   2: 6.205 ns/op
# Warmup Iteration   3: 6.236 ns/op
# Warmup Iteration   4: 6.205 ns/op
# Warmup Iteration   5: 6.203 ns/op
Iteration   1: 6.203 ns/op
Iteration   2: 6.203 ns/op
Iteration   3: 6.203 ns/op
Iteration   4: 6.203 ns/op
Iteration   5: 6.189 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2":
  6.200 ±(99.9%) 0.024 ns/op [Average]
  (min, avg, max) = (6.189, 6.200, 6.203), stdev = 0.006
  CI (99.9%): [6.176, 6.224] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2:·asm":
PrintAssembly processed: 136761 total address lines.
Perf output processed (skipped 56.648 seconds):
 Column 1: cycles (101592 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f6a0:0x3002f6f7] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2[Falcon]

         5.988:              @ 7   java.lang.System::nanoTime (0 bytes)   intrinsics
         5.988:            - @ 17   com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2 (8 bytes)   disallowed by CompilerOracle
         5.988:              @ 20   org.openjdk.jmh.infra.Blackhole::consume (19 bytes)   force inline by CompilerOracle 
         5.988:                @ 7   org.openjdk.jmh.infra.Blackhole::consumeCompiler (1 bytes)   intrinsics
         5.988:              @ 37   java.lang.System::nanoTime (0 bytes)   intrinsics
         5.991:  246         3 enqueued  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub (Lorg/openjdk/jmh/runner/InfraControl;Lorg/openjdk/jmh/results/RawResults;Lorg/openjdk/jmh/infra/BenchmarkParams;Lorg/openjdk/jmh/infra/IterationParams;Lorg/openjdk/jmh/infra/ThreadParams;Lorg/openjdk/jmh/infra/Blackhole;Lorg/openjdk/jmh/infra/Control;ILcom/ionutbalosin/jvm/performance/benchmarks/micro/compiler/jmh_generated/TypeCheckScalabilityBenchmark_jmhType;)V (tid 155617) (kid 1414 pkid/prev 1390/NA) (mid 1447942 pmid 18285) (bytes 57) (generation 0) (lvl O2) (score 0) (score_updated 0ms; orig 0; promoted 1) (rank 0, time-between-promotions 1ms) (wait 0ms)
         5.993:  244         1 installed at 0x32b0e680 with size 0x1b6. com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub (Lorg/openjdk/jmh/runner/InfraControl;Lorg/openjdk/jmh/results/RawResults;Lorg/openjdk/jmh/infra/BenchmarkParams;Lorg/openjdk/jmh/infra/IterationParams;Lorg/openjdk/jmh/infra/ThreadParams;Lorg/openjdk/jmh/infra/Blackhole;Lorg/openjdk/jmh/infra/Control;ILcom/ionutbalosin/jvm/performance/benchmarks/micro/compiler/jmh_generated/TypeCheckScalabilityBenchmark_jmhType;)V (tid 155609) (kid 1414 pkid/prev 1390/NA) (mid 1447942 pmid 18285) (bytes 57) (generation 0) (lvl O2) (score 57) (score_updated 3ms; orig 57; promoted 1) (wait 34ms) (compile 4ms/4ms)
         5.993:  247    %    3 enqueued  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub (Lorg/openjdk/jmh/runner/InfraControl;Lorg/openjdk/jmh/results/RawResults;Lorg/openjdk/jmh/infra/BenchmarkParams;Lorg/openjdk/jmh/infra/IterationParams;Lorg/openjdk/jmh/infra/ThreadParams;Lorg/openjdk/jmh/infra/Blackhole;Lorg/openjdk/jmh/infra/Control;ILcom/ionutbalosin/jvm/performance/benchmarks/micro/compiler/jmh_generated/TypeCheckScalabilityBenchmark_jmhType;)V @ 13 (tid 155617) (kid 1414 pkid/prev 1390/NA) (mid 1447942 pmid 18285) (bytes 57) (generation 0) (lvl O0) (score 0) (score_updated 0ms; orig 0; promoted 1) (rank 0, time-between-promotions 1ms) (wait 0ms)
           # {method}{0x200026576f0} is_duplicated_2[Falcon] ()Z in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark
         Decoding CodeBlob 0x3002f600
 12.02%  0x3002f6a0: eb f9                             pushq    %rax                         
  6.04%  0x3002f6a2: 48 89 fe                          movq    %rdi, %rsi                    
  0.00%  0x3002f6a5: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 12.20%  0x3002f6ae: 75 26                             jne    38                             ; 0x3002f6d6
  6.10%  0x3002f6b0: 48 8b 46 10                       movq    16(%rsi), %rax                
         0x3002f6b4: b9 48 00 f8 2f                    movl    $804782152, %ecx              ; 804782152 = clearable_gc_phase_trap_mask
         0x3002f6b9: 48 85 01                          testq    %rax, (%rcx)                 
         0x3002f6bc: 75 26                             jne    38                             ; 0x3002f6e4
  6.10%  0x3002f6be: 8b 48 04                          movl    4(%rax), %ecx                 
         0x3002f6c1: 81 e1 ff ff ff 01                 andl    $33554431, %ecx               
  6.12%  0x3002f6c7: 81 f9 e3 06 00 00                 cmpl    $1763, %ecx                   
         0x3002f6cd: 75 3c                             jne    60                             ; 0x3002f70b
  6.13%  0x3002f6cf: b8 01 00 00 00                    movl    $1, %eax                      
         0x3002f6d4: 59                                popq    %rcx                          
         0x3002f6d5: c3                                retq                                  
         0x3002f6d6: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f6e0: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f6e2: eb cc                             jmp    -52                            ; 0x3002f6b0
         0x3002f6e4: 48 83 c6 10                       addq    $16, %rsi                     
         0x3002f6e8: 48 b9 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rcx           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f6f2: 48 89 c7                          movq    %rax, %rdi                    
         0x3002f6f5: ff d1                             callq    *%rcx                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f6f7: eb c5                             jmp    -59                            ; 0x3002f6be
....................................................................................................
 54.72%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x300318dc:0x30031941] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub[Falcon]

         0x300318dc: 48 89 43 20                       movq    %rax, 32(%rbx)                
         0x300318e0: 4d 85 f6                          testq    %r14, %r14                   
         0x300318e3: 0f 84 86 00 00 00                 je    134                             ; 0x3003196f
         0x300318e9: 4d 85 ff                          testq    %r15, %r15                   
         0x300318ec: 0f 84 8f 00 00 00                 je    143                             ; 0x30031981
         0x300318f2: 4d 85 e4                          testq    %r12, %r12                   
         0x300318f5: 0f 84 a4 00 00 00                 je    164                             ; 0x3003199f
         0x300318fb: 31 ed                             xorl    %ebp, %ebp                    
         0x300318fd: 0f 1f 00                          nopl    (%rax)                        
         0x30031900: 4c 89 f7                          movq    %r14, %rdi                    
  6.10%  0x30031903: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30031908: e8 f3 bf fd ff                    callq    -147469                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x3003190d: 89 44 24 34                       movl    %eax, 52(%rsp)                
 36.16%  0x30031911: 48 ff c5                          incq    %rbp                          
         0x30031914: 2e 2e 2e 41 0f b6 84 24 94 00     movzbl    %cs:148(%r12), %eax         
         0x30031920: 84 c0                             testb    %al, %al                     
         0x30031922: 74 dc                             je    -36                             ; 0x30031900
         0x30031924: 41 ff d5                          callq    *%r13                        
         0x30031927: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x3003192b: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x30031933: c4 e1 fb 2a c5                    vcvtsi2sd    %rbp, %xmm0, %xmm0       
         0x30031938: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x3003193d: 48 83 c4 38                       addq    $56, %rsp                     
         0x30031941: 5b                                popq    %rbx                          
....................................................................................................
 42.25%  <total for region 2>

....[Hottest Regions]...............................................................................
 54.72%  [0x3002f6a0:0x3002f6f7] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2[Falcon]
 42.25%  [0x300318dc:0x30031941] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub[Falcon]
  0.47%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9eb8dd5:0xffffffffa9eb8e7a] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eef5ae:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f0711f:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9eef3e5:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9eff400:0xffffffffa9eff42d] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9ee587e:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.04%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.03%  [0xffffffffa9eef30c:0xffffffffa9eef3c1] in [unknown] ([kernel.kallsyms])
  0.03%  [0xffffffffa9da97a0:0xffffffffa9da9801] in [unknown] ([kernel.kallsyms])
  0.03%  [0xffffffffa9f07060:0xffffffffa9f070c8] in [unknown] ([kernel.kallsyms])
  0.03%  [0xffffffffaa28d0d0:0xffffffffaa28d110] in [unknown] ([kernel.kallsyms])
  0.03%  [0xffffffffa9eee5d0:0xffffffffa9eee62f] in [unknown] ([kernel.kallsyms])
  0.03%  [0xffffffffa9eac9f8:0xffffffffa9eaca69] in [unknown] ([kernel.kallsyms])
  1.60%  <...other 718 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 54.72%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2[Falcon]
 42.25%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub[Falcon]
  2.47%  [unknown] ([kernel.kallsyms])
  0.31%  [unknown] (liborca.so.0.0.0.0)
  0.14%  [unknown] (libjvm.so)
  0.04%  [unknown] (libc-2.31.so)
  0.01%  [unknown] (libstdc++.so.6)
  0.01%  malloc (libc-2.31.so)
  0.00%  __errno_location (libpthread-2.31.so)
  0.00%  _IO_default_xsputn (libc-2.31.so)
  0.00%  az_pmem_get_account_usage_tall; az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  memcpy (libc-2.31.so)
  0.00%  PMEM::account_enabled (libaztall.so)
  0.00%  __tls_get_addr (ld-2.31.so)
  0.00%  az_get_elastic (libazsys3.so)
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  syscall (libc-2.31.so)
  0.00%  PMEM::get_account_usage (libaztall.so)
  0.00%  clock_gettime (libc-2.31.so)
  0.00%  [unknown] ([vdso])
  0.02%  <...other 24 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 96.98%  <generated code>
  2.47%  <native code in ([kernel.kallsyms])>
  0.31%  <native code in (liborca.so.0.0.0.0)>
  0.14%  <native code in (libjvm.so)>
  0.06%  <native code in (libc-2.31.so)>
  0.01%  <native code in (libaztall.so)>
  0.01%  <native code in (libstdc++.so.6)>
  0.01%  <native code in (libazsys3.so)>
  0.00%  <native code in (libpthread-2.31.so)>
  0.00%  <native code in (ld-2.31.so)>
  0.00%  <native code in ([vdso])>
  0.00%  <native code in (perf-155594.map)>
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
# Threads: 2 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2
# Parameters: (typePollution = true)

# Run progress: 37.50% complete, ETA 00:09:18
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.672 ns/op
# Warmup Iteration   2: 6.707 ns/op
# Warmup Iteration   3: 6.638 ns/op
# Warmup Iteration   4: 6.593 ns/op
# Warmup Iteration   5: 6.607 ns/op
Iteration   1: 6.599 ns/op
Iteration   2: 6.605 ns/op
Iteration   3: 6.593 ns/op
Iteration   4: 6.604 ns/op
Iteration   5: 6.594 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2":
  6.599 ±(99.9%) 0.022 ns/op [Average]
  (min, avg, max) = (6.593, 6.599, 6.605), stdev = 0.006
  CI (99.9%): [6.577, 6.621] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2:·asm":
PrintAssembly processed: 136233 total address lines.
Perf output processed (skipped 57.474 seconds):
 Column 1: cycles (100857 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x30031cdc:0x30031d41] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub[Falcon]

         0x30031cdc: 48 89 43 20                       movq    %rax, 32(%rbx)                
         0x30031ce0: 4d 85 f6                          testq    %r14, %r14                   
         0x30031ce3: 0f 84 86 00 00 00                 je    134                             ; 0x30031d6f
         0x30031ce9: 4d 85 ff                          testq    %r15, %r15                   
         0x30031cec: 0f 84 8f 00 00 00                 je    143                             ; 0x30031d81
         0x30031cf2: 4d 85 e4                          testq    %r12, %r12                   
         0x30031cf5: 0f 84 a4 00 00 00                 je    164                             ; 0x30031d9f
         0x30031cfb: 31 ed                             xorl    %ebp, %ebp                    
         0x30031cfd: 0f 1f 00                          nopl    (%rax)                        
         0x30031d00: 4c 89 f7                          movq    %r14, %rdi                    
  5.76%  0x30031d03: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30031d08: e8 f3 bb fd ff                    callq    -148493                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  0.04%  0x30031d0d: 89 44 24 34                       movl    %eax, 52(%rsp)                
 57.08%  0x30031d11: 48 ff c5                          incq    %rbp                          
         0x30031d14: 2e 2e 2e 41 0f b6 84 24 94 00     movzbl    %cs:148(%r12), %eax         
         0x30031d20: 84 c0                             testb    %al, %al                     
         0x30031d22: 74 dc                             je    -36                             ; 0x30031d00
         0x30031d24: 41 ff d5                          callq    *%r13                        
         0x30031d27: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x30031d2b: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x30031d33: c4 e1 fb 2a c5                    vcvtsi2sd    %rbp, %xmm0, %xmm0       
         0x30031d38: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x30031d3d: 48 83 c4 38                       addq    $56, %rsp                     
         0x30031d41: 5b                                popq    %rbx                          
....................................................................................................
 62.88%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x3002f8a0:0x3002fa47] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2[Falcon]

         0x3002fa2c: e9 66 ff ff ff                    jmp    -154                           ; 0x3002f997
         0x3002fa31: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002fa3b: 41 bb 0f 00 00 00                 movl    $15, %r11d                    
         0x3002fa41: ff d0                             callq    *%rax                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002fa43: 00 00                             addb    %al, (%rax)                   
         0x3002fa45: 00 00                             addb    %al, (%rax)                   
         0x3002fa47: 00 00                             addb    %al, (%rax)                   
         -----------
           # {method}{0x20002657888} is_duplicated_2[Falcon] ()Z in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark
         Decoding CodeBlob 0x3002f800
  0.04%  0x3002f8a0: eb f9                             pushq    %rbp                         
  7.91%  0x3002f8a2: 53                                pushq    %rbx                         
  0.01%  0x3002f8a3: 50                                pushq    %rax                         
  1.27%  0x3002f8a4: 48 89 fe                          movq    %rdi, %rsi                    
         0x3002f8a7: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  5.31%  0x3002f8b0: 75 33                             jne    51                             ; 0x3002f8e5
  0.48%  0x3002f8b2: 48 8b 4e 10                       movq    16(%rsi), %rcx                
         0x3002f8b6: b8 48 00 f8 2f                    movl    $804782152, %eax              ; 804782152 = clearable_gc_phase_trap_mask
         0x3002f8bb: 2e 2e 4c 8b 10                    movq    %cs:(%rax), %r10              
  5.27%  0x3002f8c0: 49 85 ca                          testq    %rcx, %r10                   
         0x3002f8c3: 75 2e                             jne    46                             ; 0x3002f8f3
  0.48%  0x3002f8c5: 44 8b 49 04                       movl    4(%rcx), %r9d                 
         0x3002f8c9: 41 81 e1 ff ff ff 01              andl    $33554431, %r9d               
         0x3002f8d0: 41 81 f9 e4 06 00 00              cmpl    $1764, %r9d                   
         0x3002f8d7: 75 44                             jne    68                             ; 0x3002f91d
  5.21%  0x3002f8d9: b8 01 00 00 00                    movl    $1, %eax                      
  0.48%  0x3002f8de: 48 83 c4 08                       addq    $8, %rsp                      
         0x3002f8e2: 5b                                popq    %rbx                          
  8.10%  0x3002f8e3: 5d                                popq    %rbp                          
  0.46%  0x3002f8e4: c3                                retq                                  
         0x3002f8e5: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f8ef: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f8f1: eb bf                             jmp    -65                            ; 0x3002f8b2
         0x3002f8f3: 48 83 c6 10                       addq    $16, %rsi                     
         0x3002f8f7: 48 b8 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rax           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f901: 48 89 cf                          movq    %rcx, %rdi                    
         0x3002f904: ff d0                             callq    *%rax                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f906: 48 89 c1                          movq    %rax, %rcx                    
         0x3002f909: eb ba                             jmp    -70                            ; 0x3002f8c5
         0x3002f90b: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
....................................................................................................
 35.03%  <total for region 2>

....[Hottest Regions]...............................................................................
 62.88%  [0x30031cdc:0x30031d41] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub[Falcon]
 35.03%  [0x3002f8a0:0x3002fa47] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2[Falcon]
  0.12%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eb8dcf:0xffffffffa9eb8e73] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f211f0:0xffffffffa9f2121e] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eb93b5:0xffffffffa9eb9473] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f0711f:0xffffffffa9f07160] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eef3e5:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eef30c:0xffffffffa9eef3c1] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9c94c86:0xffffffffa9c94c86] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9f695f6:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.04%  [0xffffffffa9f07060:0xffffffffa9f070cd] in [unknown] ([kernel.kallsyms])
  0.04%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.04%  [0xffffffffa9ed0800:0xffffffffa9ed0889] in [unknown] ([kernel.kallsyms])
  0.04%  [0xffffffffa9ee587e:0xffffffffa9ee58a7] in [unknown] ([kernel.kallsyms])
  0.04%  [0xffffffffaa28ead0:0xffffffffaa28eb20] in [unknown] ([kernel.kallsyms])
  0.03%  [0xffffffffa9eee5d0:0xffffffffa9eee62e] in [unknown] ([kernel.kallsyms])
  1.06%  <...other 411 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 62.88%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub[Falcon]
 35.03%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2[Falcon]
  1.83%  [unknown] ([kernel.kallsyms])
  0.11%  [unknown] (libjvm.so)
  0.10%  [unknown] (liborca.so.0.0.0.0)
  0.02%  [unknown] (libc-2.31.so)
  0.00%  PMEM::get_account_usage (libaztall.so)
  0.00%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  PMEM::account_enabled (libaztall.so)
  0.00%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  malloc (libc-2.31.so)
  0.00%  az_pmem_get_account_usage_tall; az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  VMEM_SpaceManager::uses_cache_for_account (libaztall.so)
  0.00%  __errno_location (libpthread-2.31.so)
  0.00%  _dl_addr (libc-2.31.so)
  0.00%  memcpy (libc-2.31.so)
  0.00%  __pthread_mutex_trylock (libpthread-2.31.so)
  0.00%  __snprintf (libc-2.31.so)
  0.00%  az_zmd_api_version_tall (libaztall.so)
  0.00%  thread_stack_region_start (libazsys3.so)
  0.01%  <...other 11 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 97.91%  <generated code>
  1.83%  <native code in ([kernel.kallsyms])>
  0.11%  <native code in (libjvm.so)>
  0.10%  <native code in (liborca.so.0.0.0.0)>
  0.03%  <native code in (libc-2.31.so)>
  0.02%  <native code in (libaztall.so)>
  0.00%  <native code in (libpthread-2.31.so)>
  0.00%  <native code in (libazsys3.so)>
  0.00%  <native code in (ld-2.31.so)>
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
# Threads: 3 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3
# Parameters: (typePollution = false)

# Run progress: 50.00% complete, ETA 00:07:27
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.288 ±(99.9%) 0.179 ns/op
# Warmup Iteration   2: 6.203 ±(99.9%) 0.049 ns/op
# Warmup Iteration   3: 6.225 ±(99.9%) 0.017 ns/op
# Warmup Iteration   4: 6.188 ±(99.9%) 0.013 ns/op
# Warmup Iteration   5: 6.188 ±(99.9%) 0.004 ns/op
Iteration   1: 6.187 ±(99.9%) 0.004 ns/op
Iteration   2: 6.190 ±(99.9%) 0.075 ns/op
Iteration   3: 6.189 ±(99.9%) 0.015 ns/op
Iteration   4: 6.191 ±(99.9%) 0.070 ns/op
Iteration   5: 6.200 ±(99.9%) 0.302 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3":
  6.191 ±(99.9%) 0.019 ns/op [Average]
  (min, avg, max) = (6.187, 6.191, 6.200), stdev = 0.005
  CI (99.9%): [6.172, 6.211] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3:·asm":
PrintAssembly processed: 136884 total address lines.
Perf output processed (skipped 59.771 seconds):
 Column 1: cycles (150700 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f6a0:0x3002f721] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3[Falcon]

         0x3002f709: ff d0                             callq    *%rax                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f70b: 48 b9 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rcx           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f715: 41 bb 0f 00 00 00                 movl    $15, %r11d                    
         0x3002f71b: ff d1                             callq    *%rcx                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f71d: 00 00                             addb    %al, (%rax)                   
         0x3002f71f: 00 00                             addb    %al, (%rax)                   
         0x3002f721: 00 00                             addb    %al, (%rax)                   
         -----------
           # {method}{0x20002657860} is_duplicated_3[Falcon] ()Z in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark
         Decoding CodeBlob 0x3002f600
 12.26%  0x3002f6a0: eb f9                             pushq    %rax                         
  6.06%  0x3002f6a2: 48 89 fe                          movq    %rdi, %rsi                    
         0x3002f6a5: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 12.33%  0x3002f6ae: 75 26                             jne    38                             ; 0x3002f6d6
  6.23%  0x3002f6b0: 48 8b 46 10                       movq    16(%rsi), %rax                
         0x3002f6b4: b9 48 00 f8 2f                    movl    $804782152, %ecx              ; 804782152 = clearable_gc_phase_trap_mask
         0x3002f6b9: 48 85 01                          testq    %rax, (%rcx)                 
         0x3002f6bc: 75 26                             jne    38                             ; 0x3002f6e4
  6.17%  0x3002f6be: 8b 48 04                          movl    4(%rax), %ecx                 
         0x3002f6c1: 81 e1 ff ff ff 01                 andl    $33554431, %ecx               
  6.07%  0x3002f6c7: 81 f9 e2 06 00 00                 cmpl    $1762, %ecx                   
         0x3002f6cd: 75 3c                             jne    60                             ; 0x3002f70b
  5.93%  0x3002f6cf: b8 01 00 00 00                    movl    $1, %eax                      
         0x3002f6d4: 59                                popq    %rcx                          
  0.00%  0x3002f6d5: c3                                retq                                  
         0x3002f6d6: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f6e0: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f6e2: eb cc                             jmp    -52                            ; 0x3002f6b0
         0x3002f6e4: 48 83 c6 10                       addq    $16, %rsi                     
         0x3002f6e8: 48 b9 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rcx           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f6f2: 48 89 c7                          movq    %rax, %rdi                    
         0x3002f6f5: ff d1                             callq    *%rcx                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f6f7: eb c5                             jmp    -59                            ; 0x3002f6be
         0x3002f6f9: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f703: 41 bb 07 00 00 00                 movl    $7, %r11d                     
....................................................................................................
 55.05%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x300318dc:0x30031942] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub[Falcon]

         0x300318dc: 48 89 43 20                       movq    %rax, 32(%rbx)                
         0x300318e0: 4d 85 f6                          testq    %r14, %r14                   
         0x300318e3: 0f 84 86 00 00 00                 je    134                             ; 0x3003196f
         0x300318e9: 4d 85 ff                          testq    %r15, %r15                   
         0x300318ec: 0f 84 8f 00 00 00                 je    143                             ; 0x30031981
         0x300318f2: 4d 85 e4                          testq    %r12, %r12                   
         0x300318f5: 0f 84 a4 00 00 00                 je    164                             ; 0x3003199f
         0x300318fb: 31 ed                             xorl    %ebp, %ebp                    
         0x300318fd: 0f 1f 00                          nopl    (%rax)                        
         0x30031900: 4c 89 f7                          movq    %r14, %rdi                    
  6.16%  0x30031903: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30031908: e8 f3 bf fd ff                    callq    -147469                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x3003190d: 89 44 24 34                       movl    %eax, 52(%rsp)                
 36.78%  0x30031911: 48 ff c5                          incq    %rbp                          
  0.00%  0x30031914: 2e 2e 2e 41 0f b6 84 24 94 00     movzbl    %cs:148(%r12), %eax         
         0x30031920: 84 c0                             testb    %al, %al                     
         0x30031922: 74 dc                             je    -36                             ; 0x30031900
         0x30031924: 41 ff d5                          callq    *%r13                        
         0x30031927: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x3003192b: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x30031933: c4 e1 fb 2a c5                    vcvtsi2sd    %rbp, %xmm0, %xmm0       
         0x30031938: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x3003193d: 48 83 c4 38                       addq    $56, %rsp                     
         0x30031941: 5b                                popq    %rbx                          
         0x30031942: 41 5c                             popq    %r12                          
....................................................................................................
 42.94%  <total for region 2>

....[Hottest Regions]...............................................................................
 55.05%  [0x3002f6a0:0x3002f721] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3[Falcon]
 42.94%  [0x300318dc:0x30031942] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub[Falcon]
  0.08%  [0xffffffffa9c94c80:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ecfb60:0xffffffffa9ecfb7c] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eb8dcf:0xffffffffa9eb8de6] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9eef381:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9f0711c:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.04%  [0xffffffffa9eb93b5:0xffffffffa9eb9473] in [unknown] ([kernel.kallsyms])
  0.04%  [0xffffffffa9f211f9:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.03%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.03%  [0xffffffffa9eff400:0xffffffffa9eff43c] in [unknown] ([kernel.kallsyms])
  0.03%  [0xffffffffaa976542:0xffffffffaa97656e] in [unknown] ([kernel.kallsyms])
  0.03%  [0xffffffffa9ee5876:0xffffffffa9ee587e] in [unknown] ([kernel.kallsyms])
  0.03%  [0xffffffffa9f07060:0xffffffffa9f070db] in [unknown] ([kernel.kallsyms])
  0.03%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.03%  [0xffffffffa9ed0800:0xffffffffa9ed0866] in [unknown] ([kernel.kallsyms])
  0.02%  [0xffffffffa9f6966d:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.02%  [0xffffffffa9f686cb:0xffffffffa9f6875f] in [unknown] ([kernel.kallsyms])
  0.02%  [0xffffffffa9eee5d0:0xffffffffa9eee62e] in [unknown] ([kernel.kallsyms])
  1.30%  <...other 864 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 55.05%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3[Falcon]
 42.94%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub[Falcon]
  1.58%  [unknown] ([kernel.kallsyms])
  0.26%  [unknown] (liborca.so.0.0.0.0)
  0.07%  [unknown] (libjvm.so)
  0.03%  [unknown] (libc-2.31.so)
  0.01%  memcpy (libc-2.31.so)
  0.01%  malloc (libc-2.31.so)
  0.00%  cfree (libc-2.31.so)
  0.00%  VMEM::get_account_usage (libaztall.so)
  0.00%  PMEM::account_enabled; PMEM::accounts (libaztall.so)
  0.00%  syscall (libc-2.31.so)
  0.00%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  [unknown] ([vdso])
  0.00%  _dl_addr (libc-2.31.so)
  0.00%  is_thread_initialized (libazsys3.so)
  0.00%  PMEM::get_account_usage (libaztall.so)
  0.00%  __errno_location (libpthread-2.31.so)
  0.00%  __tls_get_addr (ld-2.31.so)
  0.00%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_AverageTime[Falcon]
  0.02%  <...other 27 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 98.00%  <generated code>
  1.58%  <native code in ([kernel.kallsyms])>
  0.26%  <native code in (liborca.so.0.0.0.0)>
  0.07%  <native code in (libjvm.so)>
  0.05%  <native code in (libc-2.31.so)>
  0.01%  <native code in (libaztall.so)>
  0.01%  <native code in (libazsys3.so)>
  0.00%  <native code in (libpthread-2.31.so)>
  0.00%  <native code in ([vdso])>
  0.00%  <native code in (ld-2.31.so)>
  0.00%  <native code in (libstdc++.so.6)>
  0.00%  <native code in (perf-155870.map)>
  0.00%  <native code in (libz.so.1.2.11)>
  0.00%  <native code in (libjli.so)>
  0.00%  <native code in (libgcc_s.so.1)>
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
# Threads: 3 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3
# Parameters: (typePollution = true)

# Run progress: 62.50% complete, ETA 00:05:37
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.753 ±(99.9%) 1.350 ns/op
# Warmup Iteration   2: 6.740 ±(99.9%) 0.304 ns/op
# Warmup Iteration   3: 6.637 ±(99.9%) 0.236 ns/op
# Warmup Iteration   4: 6.603 ±(99.9%) 0.375 ns/op
# Warmup Iteration   5: 6.600 ±(99.9%) 0.359 ns/op
Iteration   1: 6.604 ±(99.9%) 0.399 ns/op
Iteration   2: 6.605 ±(99.9%) 0.229 ns/op
Iteration   3: 6.600 ±(99.9%) 0.384 ns/op
Iteration   4: 6.607 ±(99.9%) 0.342 ns/op
Iteration   5: 6.601 ±(99.9%) 0.401 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3":
  6.603 ±(99.9%) 0.012 ns/op [Average]
  (min, avg, max) = (6.600, 6.603, 6.607), stdev = 0.003
  CI (99.9%): [6.591, 6.615] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3:·asm":
PrintAssembly processed: 138010 total address lines.
Perf output processed (skipped 56.278 seconds):
 Column 1: cycles (150708 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x300320dc:0x30032141] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub[Falcon]

         0x300320dc: 48 89 43 20                       movq    %rax, 32(%rbx)                
         0x300320e0: 4d 85 f6                          testq    %r14, %r14                   
         0x300320e3: 0f 84 86 00 00 00                 je    134                             ; 0x3003216f
         0x300320e9: 4d 85 ff                          testq    %r15, %r15                   
         0x300320ec: 0f 84 8f 00 00 00                 je    143                             ; 0x30032181
         0x300320f2: 4d 85 e4                          testq    %r12, %r12                   
         0x300320f5: 0f 84 a4 00 00 00                 je    164                             ; 0x3003219f
         0x300320fb: 31 ed                             xorl    %ebp, %ebp                    
         0x300320fd: 0f 1f 00                          nopl    (%rax)                        
         0x30032100: 4c 89 f7                          movq    %r14, %rdi                    
  5.78%  0x30032103: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30032108: e8 f3 b7 fd ff                    callq    -149517                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  0.00%  0x3003210d: 89 44 24 34                       movl    %eax, 52(%rsp)                
 45.71%  0x30032111: 48 ff c5                          incq    %rbp                          
         0x30032114: 2e 2e 2e 41 0f b6 84 24 94 00     movzbl    %cs:148(%r12), %eax         
         0x30032120: 84 c0                             testb    %al, %al                     
         0x30032122: 74 dc                             je    -36                             ; 0x30032100
         0x30032124: 41 ff d5                          callq    *%r13                        
         0x30032127: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x3003212b: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x30032133: c4 e1 fb 2a c5                    vcvtsi2sd    %rbp, %xmm0, %xmm0       
         0x30032138: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x3003213d: 48 83 c4 38                       addq    $56, %rsp                     
         0x30032141: 5b                                popq    %rbx                          
....................................................................................................
 51.50%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x3002fca0:0x30030197] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3[Falcon]

         0x30030184: 0f be c0                          movsbl    %al, %eax                   
         0x30030187: 48 b9 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rcx           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x30030191: 41 bb 07 00 00 00                 movl    $7, %r11d                     
         0x30030197: ff d1                             callq    *%rcx                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         Disassembling com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub:
         -----------
         -----------
           # {method}{0x20002657a20} is_duplicated_3[Falcon] ()Z in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark
         Decoding CodeBlob 0x3002fc00
         0x3002fca0: eb f9                             pushq    %rbp                         
 15.58%  0x3002fca2: 53                                pushq    %rbx                         
  0.00%  0x3002fca3: 50                                pushq    %rax                         
  5.97%  0x3002fca4: 48 89 fe                          movq    %rdi, %rsi                    
         0x3002fca7: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  3.73%  0x3002fcb0: 75 33                             jne    51                             ; 0x3002fce5
  1.95%  0x3002fcb2: 48 8b 4e 10                       movq    16(%rsi), %rcx                
         0x3002fcb6: b8 48 00 f8 2f                    movl    $804782152, %eax              ; 804782152 = clearable_gc_phase_trap_mask
         0x3002fcbb: 2e 2e 4c 8b 10                    movq    %cs:(%rax), %r10              
  3.79%  0x3002fcc0: 49 85 ca                          testq    %rcx, %r10                   
         0x3002fcc3: 75 2e                             jne    46                             ; 0x3002fcf3
  1.99%  0x3002fcc5: 44 8b 49 04                       movl    4(%rcx), %r9d                 
         0x3002fcc9: 41 81 e1 ff ff ff 01              andl    $33554431, %r9d               
         0x3002fcd0: 41 81 f9 e4 06 00 00              cmpl    $1764, %r9d                   
         0x3002fcd7: 75 44                             jne    68                             ; 0x3002fd1d
  3.74%  0x3002fcd9: b8 01 00 00 00                    movl    $1, %eax                      
  1.92%  0x3002fcde: 48 83 c4 08                       addq    $8, %rsp                      
         0x3002fce2: 5b                                popq    %rbx                          
  5.88%  0x3002fce3: 5d                                popq    %rbp                          
  1.93%  0x3002fce4: c3                                retq                                  
         0x3002fce5: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002fcef: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002fcf1: eb bf                             jmp    -65                            ; 0x3002fcb2
         0x3002fcf3: 48 83 c6 10                       addq    $16, %rsi                     
         0x3002fcf7: 48 b8 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rax           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002fd01: 48 89 cf                          movq    %rcx, %rdi                    
         0x3002fd04: ff d0                             callq    *%rax                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002fd06: 48 89 c1                          movq    %rax, %rcx                    
         0x3002fd09: eb ba                             jmp    -70                            ; 0x3002fcc5
         0x3002fd0b: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
....................................................................................................
 46.50%  <total for region 2>

....[Hottest Regions]...............................................................................
 51.50%  [0x300320dc:0x30032141] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub[Falcon]
 46.50%  [0x3002fca0:0x30030197] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3[Falcon]
  0.09%  [0xffffffffa9c94c86:0xffffffffa9c94c86] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffaaa00e30:0xffffffffaaa00e30] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9f0711c:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.04%  [0xffffffffa9f211f0:0xffffffffa9f2121e] in [unknown] ([kernel.kallsyms])
  0.03%  [0xffffffffa9f07060:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.03%  [0xffffffffa9f695f0:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.03%  [0xffffffffaa28ead0:0xffffffffaa28eb19] in [unknown] ([kernel.kallsyms])
  0.02%  [0xffffffffa9eb7dda:0xffffffffa9eb7e8a] in [unknown] ([kernel.kallsyms])
  0.02%  [0xffffffffa9eef44f:0xffffffffa9eef4ad] in [unknown] ([kernel.kallsyms])
  0.02%  [0xffffffffa9ed074e:0xffffffffa9ed0797] in [unknown] ([kernel.kallsyms])
  0.02%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.02%  [0xffffffffa9eee5d0:0xffffffffa9eee623] in [unknown] ([kernel.kallsyms])
  0.02%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  1.25%  <...other 845 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 51.50%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub[Falcon]
 46.50%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3[Falcon]
  1.57%  [unknown] ([kernel.kallsyms])
  0.27%  [unknown] (liborca.so.0.0.0.0)
  0.09%  [unknown] (libjvm.so)
  0.03%  [unknown] (libc-2.31.so)
  0.01%  [unknown] (libstdc++.so.6)
  0.01%  malloc (libc-2.31.so)
  0.00%  cfree (libc-2.31.so)
  0.00%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  VMEM::get_account_usage (libaztall.so)
  0.00%  syscall (libc-2.31.so)
  0.00%  _IO_default_xsputn (libc-2.31.so)
  0.00%  memcpy (libc-2.31.so)
  0.00%  is_thread_initialized (libazsys3.so)
  0.00%  __errno_location (libpthread-2.31.so)
  0.00%  clock_gettime (libc-2.31.so)
  0.00%  [unknown] ([vdso])
  0.00%  __tls_get_addr (ld-2.31.so)
  0.00%  _IO_fwrite (libc-2.31.so)
  0.01%  <...other 17 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 98.00%  <generated code>
  1.57%  <native code in ([kernel.kallsyms])>
  0.27%  <native code in (liborca.so.0.0.0.0)>
  0.09%  <native code in (libjvm.so)>
  0.05%  <native code in (libc-2.31.so)>
  0.01%  <native code in (libaztall.so)>
  0.01%  <native code in (libstdc++.so.6)>
  0.00%  <native code in (libpthread-2.31.so)>
  0.00%  <native code in (libazsys3.so)>
  0.00%  <native code in (ld-2.31.so)>
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
# Threads: 4 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4
# Parameters: (typePollution = false)

# Run progress: 75.00% complete, ETA 00:03:44
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.324 ±(99.9%) 0.320 ns/op
# Warmup Iteration   2: 6.207 ±(99.9%) 0.138 ns/op
# Warmup Iteration   3: 6.230 ±(99.9%) 0.100 ns/op
# Warmup Iteration   4: 6.200 ±(99.9%) 0.093 ns/op
# Warmup Iteration   5: 6.196 ±(99.9%) 0.102 ns/op
Iteration   1: 6.201 ±(99.9%) 0.096 ns/op
Iteration   2: 6.203 ±(99.9%) 0.149 ns/op
Iteration   3: 6.197 ±(99.9%) 0.092 ns/op
Iteration   4: 6.195 ±(99.9%) 0.100 ns/op
Iteration   5: 6.202 ±(99.9%) 0.108 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4":
  6.199 ±(99.9%) 0.013 ns/op [Average]
  (min, avg, max) = (6.195, 6.199, 6.203), stdev = 0.003
  CI (99.9%): [6.187, 6.212] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4:·asm":
PrintAssembly processed: 136454 total address lines.
Perf output processed (skipped 56.347 seconds):
 Column 1: cycles (199894 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f6cb:0x3002f903] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4[Falcon]

         0x3002f6cb: cc                                int3                                  
         Call tree size: 1
         0: caller_index: -1 bci: -1 callee: virtual final void org.openjdk.jmh.infra.Blackhole.consume(jboolean)
         Encoded locations size: 3
         offset: 0 length: 34 scope: 0 bci: 0
         <nmethodAdapter compile_id='245' level='2' size='40' address='0x00007fc004575ba0' dependencies_offset='32' stamp='93422.651'/>
         5.676:  245         3 inlining into org.openjdk.jmh.infra.Blackhole::consume (Z)V (tid 156165) (kid 1440 pkid/prev 1416/NA) (mid 1474564 pmid 18389) (bytes 19) (generation 0) (lvl O2) (score -1) (score_updated 3ms; orig 0; promoted 1) (rank 0, time-between-promotions 0ms) (wait 12ms)
         5.714:  245         3 installed at 0x3002f6a0 with size 0x2c. org.openjdk.jmh.infra.Blackhole::consume (Z)V (tid 156165) (kid 1440 pkid/prev 1416/NA) (mid 1474564 pmid 18389) (bytes 19) (generation 0) (lvl O2) (score -1) (score_updated 42ms; orig 0; promoted 1) (rank 0, time-between-promotions 0ms) (wait 12ms) (compile 11ms/38ms)
           # {method}{0x20002657948} is_duplicated_4[Falcon] ()Z in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark
         Decoding CodeBlob 0x3002f800
 12.27%  0x3002f8a0: eb f9                             pushq    %rax                         
  6.32%  0x3002f8a2: 48 89 fe                          movq    %rdi, %rsi                    
         0x3002f8a5: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 12.28%  0x3002f8ae: 75 26                             jne    38                             ; 0x3002f8d6
  6.11%  0x3002f8b0: 48 8b 46 10                       movq    16(%rsi), %rax                
  0.00%  0x3002f8b4: b9 48 00 f8 2f                    movl    $804782152, %ecx              ; 804782152 = clearable_gc_phase_trap_mask
         0x3002f8b9: 48 85 01                          testq    %rax, (%rcx)                 
         0x3002f8bc: 75 26                             jne    38                             ; 0x3002f8e4
  6.19%  0x3002f8be: 8b 48 04                          movl    4(%rax), %ecx                 
         0x3002f8c1: 81 e1 ff ff ff 01                 andl    $33554431, %ecx               
  6.17%  0x3002f8c7: 81 f9 e2 06 00 00                 cmpl    $1762, %ecx                   
         0x3002f8cd: 75 3c                             jne    60                             ; 0x3002f90b
  6.18%  0x3002f8cf: b8 01 00 00 00                    movl    $1, %eax                      
         0x3002f8d4: 59                                popq    %rcx                          
  0.00%  0x3002f8d5: c3                                retq                                  
         0x3002f8d6: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f8e0: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f8e2: eb cc                             jmp    -52                            ; 0x3002f8b0
         0x3002f8e4: 48 83 c6 10                       addq    $16, %rsi                     
         0x3002f8e8: 48 b9 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rcx           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f8f2: 48 89 c7                          movq    %rax, %rdi                    
         0x3002f8f5: ff d1                             callq    *%rcx                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f8f7: eb c5                             jmp    -59                            ; 0x3002f8be
         0x3002f8f9: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f903: 41 bb 07 00 00 00                 movl    $7, %r11d                     
....................................................................................................
 55.52%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x30031adc:0x30031b44] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub[Falcon]

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
  6.18%  0x30031b03: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30031b08: e8 f3 bd fd ff                    callq    -147981                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x30031b0d: 89 44 24 34                       movl    %eax, 52(%rsp)                
 36.93%  0x30031b11: 48 ff c5                          incq    %rbp                          
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
 43.10%  <total for region 2>

....[Hottest Regions]...............................................................................
 55.52%  [0x3002f6cb:0x3002f903] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4[Falcon]
 43.10%  [0x30031adc:0x30031b44] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub[Falcon]
  0.07%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.04%  [0xffffffffa9f0711c:0xffffffffa9f07160] in [unknown] ([kernel.kallsyms])
  0.04%  [0xffffffffa9eb93b5:0xffffffffa9eb944b] in [unknown] ([kernel.kallsyms])
  0.03%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.03%  [0xffffffffa9eb8dcf:0xffffffffa9eb8de6] in [unknown] ([kernel.kallsyms])
  0.03%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.02%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.02%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.02%  [0xffffffffa9ee5876:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.02%  [0xffffffffa9ed0800:0xffffffffa9ed0861] in [unknown] ([kernel.kallsyms])
  0.02%  [0xffffffffa9f07060:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.02%  [0x7fc12f68e5f8:0x7fc12f68e621] in [unknown] (libjvm.so)
  0.02%  [0xffffffffa9ed074e:0xffffffffa9ed07b2] in [unknown] ([kernel.kallsyms])
  0.02%  [0xffffffffa9f69678:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.02%  [0xffffffffa9eee5d0:0xffffffffa9eee62f] in [unknown] ([kernel.kallsyms])
  0.02%  [0xffffffffa9eff400:0xffffffffa9eff436] in [unknown] ([kernel.kallsyms])
  0.83%  <...other 746 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 55.52%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4[Falcon]
 43.10%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub[Falcon]
  1.11%  [unknown] ([kernel.kallsyms])
  0.16%  [unknown] (liborca.so.0.0.0.0)
  0.06%  [unknown] (libjvm.so)
  0.02%  [unknown] (libc-2.31.so)
  0.00%  memcpy (libc-2.31.so)
  0.00%  [unknown] (libstdc++.so.6)
  0.00%  __tls_get_addr (ld-2.31.so)
  0.00%  _dl_addr (libc-2.31.so)
  0.00%  VMEM::get_account_usage (libaztall.so)
  0.00%  [unknown] ([vdso])
  0.00%  <stub: method entry point (kind = zerolocals)>
  0.00%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  is_thread_initialized (libazsys3.so)
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  syscall (libc-2.31.so)
  0.00%  PMEM::account_enabled (libaztall.so)
  0.00%  malloc (libc-2.31.so)
  0.00%  [unknown] (libgcc_s.so.1)
  0.01%  <...other 19 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 98.63%  <generated code>
  1.11%  <native code in ([kernel.kallsyms])>
  0.16%  <native code in (liborca.so.0.0.0.0)>
  0.06%  <native code in (libjvm.so)>
  0.03%  <native code in (libc-2.31.so)>
  0.01%  <native code in (libaztall.so)>
  0.00%  <native code in (libstdc++.so.6)>
  0.00%  <native code in (ld-2.31.so)>
  0.00%  <native code in (libazsys3.so)>
  0.00%  <native code in ([vdso])>
  0.00%  <native code in (libpthread-2.31.so)>
  0.00%  <native code in (libm-2.31.so)>
  0.00%  <native code in (libgcc_s.so.1)>
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
# Threads: 4 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4
# Parameters: (typePollution = true)

# Run progress: 87.50% complete, ETA 00:01:52
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.665 ±(99.9%) 0.050 ns/op
# Warmup Iteration   2: 6.686 ±(99.9%) 0.310 ns/op
# Warmup Iteration   3: 6.664 ±(99.9%) 0.083 ns/op
# Warmup Iteration   4: 6.615 ±(99.9%) 0.149 ns/op
# Warmup Iteration   5: 6.616 ±(99.9%) 0.163 ns/op
Iteration   1: 6.625 ±(99.9%) 0.383 ns/op
Iteration   2: 6.613 ±(99.9%) 0.281 ns/op
Iteration   3: 6.601 ±(99.9%) 0.049 ns/op
Iteration   4: 6.605 ±(99.9%) 0.026 ns/op
Iteration   5: 6.601 ±(99.9%) 0.049 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4":
  6.609 ±(99.9%) 0.041 ns/op [Average]
  (min, avg, max) = (6.601, 6.609, 6.625), stdev = 0.011
  CI (99.9%): [6.568, 6.650] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4:·asm":
PrintAssembly processed: 137865 total address lines.
Perf output processed (skipped 56.281 seconds):
 Column 1: cycles (199970 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x30031cdc:0x30031d44] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub[Falcon]

         0x30031cdc: 48 89 43 20                       movq    %rax, 32(%rbx)                
         0x30031ce0: 4d 85 f6                          testq    %r14, %r14                   
         0x30031ce3: 0f 84 86 00 00 00                 je    134                             ; 0x30031d6f
         0x30031ce9: 4d 85 ff                          testq    %r15, %r15                   
         0x30031cec: 0f 84 8f 00 00 00                 je    143                             ; 0x30031d81
         0x30031cf2: 4d 85 e4                          testq    %r12, %r12                   
         0x30031cf5: 0f 84 a4 00 00 00                 je    164                             ; 0x30031d9f
         0x30031cfb: 31 ed                             xorl    %ebp, %ebp                    
         0x30031cfd: 0f 1f 00                          nopl    (%rax)                        
         0x30031d00: 4c 89 f7                          movq    %r14, %rdi                    
  5.75%  0x30031d03: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30031d08: e8 f3 bb fd ff                    callq    -148493                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  0.01%  0x30031d0d: 89 44 24 34                       movl    %eax, 52(%rsp)                
 56.57%  0x30031d11: 48 ff c5                          incq    %rbp                          
  0.00%  0x30031d14: 2e 2e 2e 41 0f b6 84 24 94 00     movzbl    %cs:148(%r12), %eax         
  0.00%  0x30031d20: 84 c0                             testb    %al, %al                     
         0x30031d22: 74 dc                             je    -36                             ; 0x30031d00
         0x30031d24: 41 ff d5                          callq    *%r13                        
         0x30031d27: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x30031d2b: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x30031d33: c4 e1 fb 2a c5                    vcvtsi2sd    %rbp, %xmm0, %xmm0       
         0x30031d38: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x30031d3d: 48 83 c4 38                       addq    $56, %rsp                     
         0x30031d41: 5b                                popq    %rbx                          
         0x30031d42: 41 5c                             popq    %r12                          
         0x30031d44: 41 5d                             popq    %r13                          
....................................................................................................
 62.32%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x3002f8a0:0x3002fa47] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4[Falcon]

         0x3002fa2c: e9 66 ff ff ff                    jmp    -154                           ; 0x3002f997
         0x3002fa31: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002fa3b: 41 bb 0f 00 00 00                 movl    $15, %r11d                    
         0x3002fa41: ff d0                             callq    *%rax                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002fa43: 00 00                             addb    %al, (%rax)                   
         0x3002fa45: 00 00                             addb    %al, (%rax)                   
         0x3002fa47: 00 00                             addb    %al, (%rax)                   
         -----------
           # {method}{0x20002657b58} is_duplicated_4[Falcon] ()Z in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark
         Decoding CodeBlob 0x3002f800
  0.01%  0x3002f8a0: eb f9                             pushq    %rbp                         
  8.71%  0x3002f8a2: 53                                pushq    %rbx                         
  0.00%  0x3002f8a3: 50                                pushq    %rax                         
  1.69%  0x3002f8a4: 48 89 fe                          movq    %rdi, %rsi                    
         0x3002f8a7: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  5.20%  0x3002f8b0: 75 33                             jne    51                             ; 0x3002f8e5
  0.57%  0x3002f8b2: 48 8b 4e 10                       movq    16(%rsi), %rcx                
         0x3002f8b6: b8 48 00 f8 2f                    movl    $804782152, %eax              ; 804782152 = clearable_gc_phase_trap_mask
         0x3002f8bb: 2e 2e 4c 8b 10                    movq    %cs:(%rax), %r10              
  5.24%  0x3002f8c0: 49 85 ca                          testq    %rcx, %r10                   
         0x3002f8c3: 75 2e                             jne    46                             ; 0x3002f8f3
  0.59%  0x3002f8c5: 44 8b 49 04                       movl    4(%rcx), %r9d                 
         0x3002f8c9: 41 81 e1 ff ff ff 01              andl    $33554431, %r9d               
         0x3002f8d0: 41 81 f9 e4 06 00 00              cmpl    $1764, %r9d                   
         0x3002f8d7: 75 44                             jne    68                             ; 0x3002f91d
  5.22%  0x3002f8d9: b8 01 00 00 00                    movl    $1, %eax                      
  0.56%  0x3002f8de: 48 83 c4 08                       addq    $8, %rsp                      
         0x3002f8e2: 5b                                popq    %rbx                          
  8.04%  0x3002f8e3: 5d                                popq    %rbp                          
  0.58%  0x3002f8e4: c3                                retq                                  
         0x3002f8e5: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f8ef: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f8f1: eb bf                             jmp    -65                            ; 0x3002f8b2
         0x3002f8f3: 48 83 c6 10                       addq    $16, %rsi                     
         0x3002f8f7: 48 b8 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rax           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f901: 48 89 cf                          movq    %rcx, %rdi                    
         0x3002f904: ff d0                             callq    *%rax                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f906: 48 89 c1                          movq    %rax, %rcx                    
         0x3002f909: eb ba                             jmp    -70                            ; 0x3002f8c5
         0x3002f90b: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
....................................................................................................
 36.42%  <total for region 2>

....[Hottest Regions]...............................................................................
 62.32%  [0x30031cdc:0x30031d44] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub[Falcon]
 36.42%  [0x3002f8a0:0x3002fa47] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4[Falcon]
  0.14%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.04%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.04%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.04%  [0xffffffffa9eef5b2:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.04%  [0xffffffffa9f0711c:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.03%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.03%  [0xffffffffa9eef44f:0xffffffffa9eef4ad] in [unknown] ([kernel.kallsyms])
  0.03%  [0xffffffffa9ee5876:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.02%  [0xffffffffa9f686c0:0xffffffffa9f6875b] in [unknown] ([kernel.kallsyms])
  0.02%  [0xffffffffa9ed0800:0xffffffffa9ed0866] in [unknown] ([kernel.kallsyms])
  0.02%  [0xffffffffa9f07060:0xffffffffa9f070cd] in [unknown] ([kernel.kallsyms])
  0.02%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.02%  [0xffffffffa9f6966d:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.02%  [0xffffffffaa28d0d0:0xffffffffaa28d127] in [unknown] ([kernel.kallsyms])
  0.02%  [0xffffffffa9eee5d0:0xffffffffa9eee62f] in [unknown] ([kernel.kallsyms])
  0.01%  [0xffffffffa9eb90de:0xffffffffa9eb91c8] in [unknown] ([kernel.kallsyms])
  0.64%  <...other 453 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 62.32%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub[Falcon]
 36.42%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4[Falcon]
  1.12%  [unknown] ([kernel.kallsyms])
  0.05%  [unknown] (libjvm.so)
  0.05%  [unknown] (liborca.so.0.0.0.0)
  0.01%  [unknown] (libc-2.31.so)
  0.00%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  [unknown] ([vdso])
  0.00%  PMEM::account_enabled; PMEM::accounts (libaztall.so)
  0.00%  __errno_location (libpthread-2.31.so)
  0.00%  is_thread_initialized (libazsys3.so)
  0.00%  syscall (libc-2.31.so)
  0.00%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_AverageTime[Falcon]
  0.00%  PMEM::get_account_usage (libaztall.so)
  0.00%  _IO_default_xsputn (libc-2.31.so)
  0.00%  __tls_get_addr (ld-2.31.so)
  0.00%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  VMEM::get_account_usage (libaztall.so)
  0.00%  memset@plt (libaztall.so)
  0.00%  malloc (libc-2.31.so)
  0.01%  <...other 21 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 98.74%  <generated code>
  1.12%  <native code in ([kernel.kallsyms])>
  0.05%  <native code in (libjvm.so)>
  0.05%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libaztall.so)>
  0.01%  <native code in (libc-2.31.so)>
  0.00%  <native code in (libpthread-2.31.so)>
  0.00%  <native code in ([vdso])>
  0.00%  <native code in (libazsys3.so)>
  0.00%  <native code in (ld-2.31.so)>
....................................................................................................
100.00%  <totals>



# Run complete. Total time: 00:14:59

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

Benchmark                                           (typePollution)  Mode  Cnt  Score   Error  Units
TypeCheckScalabilityBenchmark.is_duplicated_1                 false  avgt    5  6.201 ± 0.110  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_1:·asm            false  avgt         NaN            ---
TypeCheckScalabilityBenchmark.is_duplicated_1                  true  avgt    5  6.581 ± 0.007  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_1:·asm             true  avgt         NaN            ---
TypeCheckScalabilityBenchmark.is_duplicated_2                 false  avgt    5  6.200 ± 0.024  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_2:·asm            false  avgt         NaN            ---
TypeCheckScalabilityBenchmark.is_duplicated_2                  true  avgt    5  6.599 ± 0.022  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_2:·asm             true  avgt         NaN            ---
TypeCheckScalabilityBenchmark.is_duplicated_3                 false  avgt    5  6.191 ± 0.019  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_3:·asm            false  avgt         NaN            ---
TypeCheckScalabilityBenchmark.is_duplicated_3                  true  avgt    5  6.603 ± 0.012  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_3:·asm             true  avgt         NaN            ---
TypeCheckScalabilityBenchmark.is_duplicated_4                 false  avgt    5  6.199 ± 0.013  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_4:·asm            false  avgt         NaN            ---
TypeCheckScalabilityBenchmark.is_duplicated_4                  true  avgt    5  6.609 ± 0.041  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_4:·asm             true  avgt         NaN            ---
