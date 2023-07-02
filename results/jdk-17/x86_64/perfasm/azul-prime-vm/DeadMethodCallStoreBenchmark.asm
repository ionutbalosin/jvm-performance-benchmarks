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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark.method_call_baseline

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 773.588 ns/op
# Warmup Iteration   2: 771.929 ns/op
# Warmup Iteration   3: 771.949 ns/op
# Warmup Iteration   4: 771.882 ns/op
# Warmup Iteration   5: 771.888 ns/op
Iteration   1: 771.875 ns/op
Iteration   2: 771.904 ns/op
Iteration   3: 771.887 ns/op
Iteration   4: 771.879 ns/op
Iteration   5: 771.894 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark.method_call_baseline":
  771.888 ±(99.9%) 0.044 ns/op [Average]
  (min, avg, max) = (771.875, 771.888, 771.904), stdev = 0.012
  CI (99.9%): [771.843, 771.932] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark.method_call_baseline:·asm":
PrintAssembly processed: 133814 total address lines.
Perf output processed (skipped 56.422 seconds):
 Column 1: cycles (51373 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f6a0:0x3002f771] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline[Falcon]

         0x3002f74f: c5 db 59 c0                       vmulsd    %xmm0, %xmm4, %xmm0         
  0.18%  0x3002f753: 58                                popq    %rax                          
         0x3002f754: c3                                retq                                  
         0x3002f755: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f75f: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f761: e9 4b ff ff ff                    jmp    -181                           ; 0x3002f6b1
         -----------
           # {method}{0x200026551c8} method_call_baseline[Falcon] ()D in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/DeadMethodCallStoreBenchmark
         Decoding CodeBlob 0x3002f600
         0x3002f6a0: eb f9                             pushq    %rax                         
  0.04%  0x3002f6a2: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
         0x3002f6ab: 0f 85 a4 00 00 00                 jne    164                            ; 0x3002f755
         0x3002f6b1: b8 09 00 00 00                    movl    $9, %eax                      
         0x3002f6b6: 48 b9 68 f7 02 30 00 00 00 00     movabsq    $805500776, %rcx           ; 0x3002f768
  0.07%  0x3002f6c0: c5 fb 10 01                       vmovsd    (%rcx), %xmm0               
         0x3002f6c4: 48 b9 70 f7 02 30 00 00 00 00     movabsq    $805500784, %rcx           ; 0x3002f770
         0x3002f6ce: c5 fb 10 09                       vmovsd    (%rcx), %xmm1               
         0x3002f6d2: 48 b9 78 f7 02 30 00 00 00 00     movabsq    $805500792, %rcx           ; 0x3002f778
  0.06%  0x3002f6dc: c5 fb 10 11                       vmovsd    (%rcx), %xmm2               
         0x3002f6e0: 48 b9 80 f7 02 30 00 00 00 00     movabsq    $805500800, %rcx           ; 0x3002f780
         0x3002f6ea: c5 fb 10 19                       vmovsd    (%rcx), %xmm3               
         0x3002f6ee: c5 f9 28 e0                       vmovapd    %xmm0, %xmm4               
  0.04%  0x3002f6f2: 66 66 66 66 66 2e 0f 1f 84 00     nopw    %cs:(%rax,%rax)               
         0x3002f700: 8d 48 fa                          leal    -6(%rax), %ecx                
  5.87%  0x3002f703: c5 eb 5e e9                       vdivsd    %xmm1, %xmm2, %xmm5         
         0x3002f707: c5 db 58 e5                       vaddsd    %xmm5, %xmm4, %xmm4         
 18.01%  0x3002f70b: 8d 50 fc                          leal    -4(%rax), %edx                
         0x3002f70e: c5 cb 2a ea                       vcvtsi2sd    %edx, %xmm6, %xmm5       
         0x3002f712: c5 fb 5e ed                       vdivsd    %xmm5, %xmm0, %xmm5         
  5.99%  0x3002f716: c5 db 58 e5                       vaddsd    %xmm5, %xmm4, %xmm4         
 17.81%  0x3002f71a: 8d 50 fe                          leal    -2(%rax), %edx                
         0x3002f71d: c5 cb 2a ea                       vcvtsi2sd    %edx, %xmm6, %xmm5       
  0.06%  0x3002f721: c5 eb 5e ed                       vdivsd    %xmm5, %xmm2, %xmm5         
  5.88%  0x3002f725: c5 db 58 e5                       vaddsd    %xmm5, %xmm4, %xmm4         
 17.88%  0x3002f729: 81 f9 e1 03 00 00                 cmpl    $993, %ecx                    
         0x3002f72f: 77 15                             ja    21                              ; 0x3002f746
         0x3002f731: c5 cb 2a e8                       vcvtsi2sd    %eax, %xmm6, %xmm5       
  0.07%  0x3002f735: c5 fb 5e ed                       vdivsd    %xmm5, %xmm0, %xmm5         
  6.04%  0x3002f739: c5 db 58 e5                       vaddsd    %xmm5, %xmm4, %xmm4         
 17.94%  0x3002f73d: c5 f3 58 cb                       vaddsd    %xmm3, %xmm1, %xmm1         
  0.00%  0x3002f741: 83 c0 08                          addl    $8, %eax                      
         0x3002f744: eb ba                             jmp    -70                            ; 0x3002f700
         0x3002f746: c5 fb 10 47 08                    vmovsd    8(%rdi), %xmm0              
         0x3002f74b: c5 fb 59 c0                       vmulsd    %xmm0, %xmm0, %xmm0         
         0x3002f74f: c5 db 59 c0                       vmulsd    %xmm0, %xmm4, %xmm0         
  0.18%  0x3002f753: 58                                popq    %rax                          
         0x3002f754: c3                                retq                                  
         0x3002f755: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f75f: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f761: e9 4b ff ff ff                    jmp    -181                           ; 0x3002f6b1
         0x3002f766: 66 90                             nop                                   
         0x3002f768: 00 00                             addb    %al, (%rax)                   
         0x3002f76a: 00 00                             addb    %al, (%rax)                   
         0x3002f76c: 00 00                             addb    %al, (%rax)                   
         0x3002f76e: 10 40 00                          adcb    %al, (%rax)                   
         0x3002f771: 00 00                             addb    %al, (%rax)                   
....................................................................................................
 95.96%  <total for region 1>

....[Hottest Regions]...............................................................................
 95.96%  [0x3002f6a0:0x3002f771] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline[Falcon]
  0.24%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.18%  [0xffffffffa9eef317:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9c94c86:0xffffffffa9c94c86] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb93b5:0xffffffffa9eb9461] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9f0711c:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eef5ae:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.11%  [0x300318dc:0x30031941] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadMethodCallStoreBenchmark_method_call_baseline_jmhTest::method_call_baseline_avgt_jmhStub[Falcon]
  0.10%  [0xffffffffa9f695f0:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eee5d0:0xffffffffa9eee62f] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ed0800:0xffffffffa9ed0873] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28ead0:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f07060:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.07%  [0x7fe4566ea5f8:0x7fe4566ea624] in [unknown] (libjvm.so)
  0.07%  [0xffffffffaa28d0d1:0xffffffffaa28d129] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  1.85%  <...other 264 warm regions...>
....................................................................................................
 99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 95.96%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline[Falcon]
  3.65%  [unknown] ([kernel.kallsyms])
  0.18%  [unknown] (libjvm.so)
  0.11%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadMethodCallStoreBenchmark_method_call_baseline_jmhTest::method_call_baseline_avgt_jmhStub[Falcon]
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  thread_stack_region_start (libazsys3.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  PMEM::account_enabled (libaztall.so)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  is_thread_initialized (libazsys3.so)
  0.00%  PMEM::get_account_usage (libaztall.so)
  0.00%  clock_gettime (libc-2.31.so)
  0.00%  <stub: putfield  181 putfield>
  0.00%  thread_stack_region_start@plt (libazsys3.so)
  0.00%  memcpy (libc-2.31.so)
  0.00%  _IO_padn (libc-2.31.so)
  0.00%  <stub: fast_iputfield  217 fast_iputfield>
  0.00%  <stub: iadd  96 iadd>
  0.02%  <...other 8 warm methods...>
....................................................................................................
 99.99%  <totals>

....[Distribution by Area]..........................................................................
 96.08%  <generated code>
  3.65%  <native code in ([kernel.kallsyms])>
  0.18%  <native code in (libjvm.so)>
  0.04%  <native code in (libaztall.so)>
  0.02%  <native code in (libc-2.31.so)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libpthread-2.31.so)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark.method_call_dse

# Run progress: 50.00% complete, ETA 00:01:52
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 778.213 ns/op
# Warmup Iteration   2: 771.998 ns/op
# Warmup Iteration   3: 771.911 ns/op
# Warmup Iteration   4: 771.908 ns/op
# Warmup Iteration   5: 771.926 ns/op
Iteration   1: 771.942 ns/op
Iteration   2: 771.912 ns/op
Iteration   3: 771.907 ns/op
Iteration   4: 771.915 ns/op
Iteration   5: 771.934 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark.method_call_dse":
  771.922 ±(99.9%) 0.058 ns/op [Average]
  (min, avg, max) = (771.907, 771.922, 771.942), stdev = 0.015
  CI (99.9%): [771.863, 771.980] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark.method_call_dse:·asm":
PrintAssembly processed: 133822 total address lines.
Perf output processed (skipped 56.713 seconds):
 Column 1: cycles (51447 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f4a0:0x3002f571] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse[Falcon]

         0x3002f54f: c5 db 59 c0                       vmulsd    %xmm0, %xmm4, %xmm0         
  0.21%  0x3002f553: 58                                popq    %rax                          
         0x3002f554: c3                                retq                                  
         0x3002f555: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f55f: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f561: e9 4b ff ff ff                    jmp    -181                           ; 0x3002f4b1
         -----------
           # {method}{0x20002654e40} method_call_dse[Falcon] ()D in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/DeadMethodCallStoreBenchmark
         Decoding CodeBlob 0x3002f400
         0x3002f4a0: eb f9                             pushq    %rax                         
  0.03%  0x3002f4a2: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
         0x3002f4ab: 0f 85 a4 00 00 00                 jne    164                            ; 0x3002f555
         0x3002f4b1: b8 09 00 00 00                    movl    $9, %eax                      
         0x3002f4b6: 48 b9 68 f5 02 30 00 00 00 00     movabsq    $805500264, %rcx           ; 0x3002f568
  0.04%  0x3002f4c0: c5 fb 10 01                       vmovsd    (%rcx), %xmm0               
         0x3002f4c4: 48 b9 70 f5 02 30 00 00 00 00     movabsq    $805500272, %rcx           ; 0x3002f570
         0x3002f4ce: c5 fb 10 09                       vmovsd    (%rcx), %xmm1               
         0x3002f4d2: 48 b9 78 f5 02 30 00 00 00 00     movabsq    $805500280, %rcx           ; 0x3002f578
  0.04%  0x3002f4dc: c5 fb 10 11                       vmovsd    (%rcx), %xmm2               
         0x3002f4e0: 48 b9 80 f5 02 30 00 00 00 00     movabsq    $805500288, %rcx           ; 0x3002f580
         0x3002f4ea: c5 fb 10 19                       vmovsd    (%rcx), %xmm3               
         0x3002f4ee: c5 f9 28 e0                       vmovapd    %xmm0, %xmm4               
  0.05%  0x3002f4f2: 66 66 66 66 66 2e 0f 1f 84 00     nopw    %cs:(%rax,%rax)               
         0x3002f500: 8d 48 fa                          leal    -6(%rax), %ecx                
  5.92%  0x3002f503: c5 eb 5e e9                       vdivsd    %xmm1, %xmm2, %xmm5         
  0.00%  0x3002f507: c5 db 58 e5                       vaddsd    %xmm5, %xmm4, %xmm4         
 18.08%  0x3002f50b: 8d 50 fc                          leal    -4(%rax), %edx                
         0x3002f50e: c5 cb 2a ea                       vcvtsi2sd    %edx, %xmm6, %xmm5       
         0x3002f512: c5 fb 5e ed                       vdivsd    %xmm5, %xmm0, %xmm5         
  6.02%  0x3002f516: c5 db 58 e5                       vaddsd    %xmm5, %xmm4, %xmm4         
 17.87%  0x3002f51a: 8d 50 fe                          leal    -2(%rax), %edx                
         0x3002f51d: c5 cb 2a ea                       vcvtsi2sd    %edx, %xmm6, %xmm5       
  0.07%  0x3002f521: c5 eb 5e ed                       vdivsd    %xmm5, %xmm2, %xmm5         
  5.97%  0x3002f525: c5 db 58 e5                       vaddsd    %xmm5, %xmm4, %xmm4         
 17.76%  0x3002f529: 81 f9 e1 03 00 00                 cmpl    $993, %ecx                    
         0x3002f52f: 77 15                             ja    21                              ; 0x3002f546
         0x3002f531: c5 cb 2a e8                       vcvtsi2sd    %eax, %xmm6, %xmm5       
  0.06%  0x3002f535: c5 fb 5e ed                       vdivsd    %xmm5, %xmm0, %xmm5         
  5.76%  0x3002f539: c5 db 58 e5                       vaddsd    %xmm5, %xmm4, %xmm4         
 17.99%  0x3002f53d: c5 f3 58 cb                       vaddsd    %xmm3, %xmm1, %xmm1         
  0.00%  0x3002f541: 83 c0 08                          addl    $8, %eax                      
         0x3002f544: eb ba                             jmp    -70                            ; 0x3002f500
         0x3002f546: c5 fb 10 47 08                    vmovsd    8(%rdi), %xmm0              
         0x3002f54b: c5 fb 59 c0                       vmulsd    %xmm0, %xmm0, %xmm0         
         0x3002f54f: c5 db 59 c0                       vmulsd    %xmm0, %xmm4, %xmm0         
  0.21%  0x3002f553: 58                                popq    %rax                          
         0x3002f554: c3                                retq                                  
         0x3002f555: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f55f: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f561: e9 4b ff ff ff                    jmp    -181                           ; 0x3002f4b1
         0x3002f566: 66 90                             nop                                   
         0x3002f568: 00 00                             addb    %al, (%rax)                   
         0x3002f56a: 00 00                             addb    %al, (%rax)                   
         0x3002f56c: 00 00                             addb    %al, (%rax)                   
         0x3002f56e: 10 40 00                          adcb    %al, (%rax)                   
         0x3002f571: 00 00                             addb    %al, (%rax)                   
....................................................................................................
 95.89%  <total for region 1>

....[Hottest Regions]...............................................................................
 95.89%  [0x3002f4a0:0x3002f571] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse[Falcon]
  0.23%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.19%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f0711c:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f695fc:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9eef5b2:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.08%  [0x300316dc:0x30031741] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadMethodCallStoreBenchmark_method_call_dse_jmhTest::method_call_dse_avgt_jmhStub[Falcon]
  0.07%  [0xffffffffa9f686c5:0xffffffffa9f6875f] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0800:0xffffffffa9ed0860] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ee587e:0xffffffffa9ee587e] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9f07065:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed074e:0xffffffffa9ed07b2] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9eb8e14:0xffffffffa9eb8e6f] in [unknown] ([kernel.kallsyms])
  2.04%  <...other 294 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 95.89%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse[Falcon]
  3.74%  [unknown] ([kernel.kallsyms])
  0.16%  [unknown] (libjvm.so)
  0.08%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadMethodCallStoreBenchmark_method_call_dse_jmhTest::method_call_dse_avgt_jmhStub[Falcon]
  0.01%  [unknown] (libc-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  [unknown] ([vdso])
  0.01%  __pthread_mutex_unlock (libpthread-2.31.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.00%  _dl_addr (libc-2.31.so)
  0.00%  az_get_elastic (libazsys3.so)
  0.00%  az_get_elastic_tall (libaztall.so)
  0.00%  <stub: iload_3  29 iload_3>
  0.00%  az_zmd_api_version_tall (libaztall.so)
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  dladdr1 (libdl-2.31.so)
  0.00%  <stub: fast_aaccess_0  222 fast_aaccess_0>
  0.02%  <...other 10 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.97%  <generated code>
  3.74%  <native code in ([kernel.kallsyms])>
  0.16%  <native code in (libjvm.so)>
  0.03%  <native code in (libaztall.so)>
  0.03%  <native code in (libc-2.31.so)>
  0.02%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in ([vdso])>
  0.01%  <native code in (libazsys3.so)>
  0.00%  <native code in (libdl-2.31.so)>
....................................................................................................
100.00%  <totals>



# Run complete. Total time: 00:03:43

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

Benchmark                                               Mode  Cnt    Score   Error  Units
DeadMethodCallStoreBenchmark.method_call_baseline       avgt    5  771.888 ± 0.044  ns/op
DeadMethodCallStoreBenchmark.method_call_baseline:·asm  avgt           NaN            ---
DeadMethodCallStoreBenchmark.method_call_dse            avgt    5  771.922 ± 0.058  ns/op
DeadMethodCallStoreBenchmark.method_call_dse:·asm       avgt           NaN            ---
