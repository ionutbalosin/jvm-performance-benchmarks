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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.class_non_static_method
# Parameters: (depth = 256)

# Run progress: 0.00% complete, ETA 00:10:00
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 717.214 ns/op
# Warmup Iteration   2: 714.926 ns/op
# Warmup Iteration   3: 714.656 ns/op
# Warmup Iteration   4: 714.542 ns/op
# Warmup Iteration   5: 714.535 ns/op
Iteration   1: 714.563 ns/op
Iteration   2: 714.531 ns/op
Iteration   3: 714.531 ns/op
Iteration   4: 714.527 ns/op
Iteration   5: 714.580 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.class_non_static_method":
  714.547 ±(99.9%) 0.092 ns/op [Average]
  (min, avg, max) = (714.527, 714.547, 714.580), stdev = 0.024
  CI (99.9%): [714.454, 714.639] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.class_non_static_method:·asm":
PrintAssembly processed: 135186 total address lines.
Perf output processed (skipped 56.485 seconds):
 Column 1: cycles (51618 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f2a0:0x3002f316] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static[Falcon]

         offset: 493 length: 9 scope: 2 bci: 0
         offset: 502 length: 9 scope: 0 bci: 0
         offset: 511 length: 280 scope: 1 bci: 0
         offset: 791 length: 30 scope: 0 bci: 0
         offset: 821 length: 30 scope: 2 bci: 0
         offset: 851 length: 18 scope: 1 bci: 0
         offset: 869 length: 42 scope: 0 bci: 0
         <nmethodAdapter compile_id='230' level='2' size='40' address='0x00007fad6c234870' dependencies_offset='32' stamp='90376.799'/>
           # {method}{0x20002658fe8} cls_non_static[Falcon] (I)Ljava/lang/Object; in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/RecursiveMethodCallBenchmark
         Decoding CodeBlob 0x3002f200
  1.79%  0x3002f2a0: eb f9 ec 38                       subq    $56, %rsp                     
  2.09%  0x3002f2a4: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  2.66%  0x3002f2ad: 75 3e                             jne    62                             ; 0x3002f2ed
  1.12%  0x3002f2af: 83 fe 03                          cmpl    $3, %esi                      
         0x3002f2b2: 76 0e                             jbe    14                             ; 0x3002f2c2
  0.29%  0x3002f2b4: 83 c6 fc                          addl    $-4, %esi                     
  0.71%  0x3002f2b7: 90                                nop                                   
  1.40%  0x3002f2b8: e8 43 e6 fd ff                    callq    -137661                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
 57.80%  0x3002f2bd: 48 83 c4 38                       addq    $56, %rsp                     
 23.42%  0x3002f2c1: c3                                retq                                  
         0x3002f2c2: 89 f0                             movl    %esi, %eax                    
  0.00%  0x3002f2c4: 48 b9 40 f3 02 30 00 00 00 00     movabsq    $805499712, %rcx           ; 0x3002f340
  0.00%  0x3002f2ce: ff 24 c1                          jmpq    *(%rcx,%rax,8)                
  0.16%  0x3002f2d1: 48 b8 58 fc ff 2c 00 00 00 00     movabsq    $754973784, %rax           ; 0x2cfffc58 = 
  0.16%  0x3002f2db: 48 8b 00                          movq    (%rax), %rax                  
  0.34%  0x3002f2de: b9 48 00 f8 2f                    movl    $804782152, %ecx              ; 804782152 = clearable_gc_phase_trap_mask
         0x3002f2e3: 48 85 01                          testq    %rax, (%rcx)                 
         0x3002f2e6: 75 13                             jne    19                             ; 0x3002f2fb
  0.19%  0x3002f2e8: 48 83 c4 38                       addq    $56, %rsp                     
         0x3002f2ec: c3                                retq                                  
         0x3002f2ed: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f2f7: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f2f9: eb b4                             jmp    -76                            ; 0x3002f2af
         0x3002f2fb: 48 be 58 fc ff 2c 00 00 00 00     movabsq    $754973784, %rsi           ; 0x2cfffc58 = 
         0x3002f305: 48 b9 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rcx           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f30f: 48 89 c7                          movq    %rax, %rdi                    
         0x3002f312: ff d1                             callq    *%rcx                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f314: eb d2                             jmp    -46                            ; 0x3002f2e8
         0x3002f316: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
....................................................................................................
 92.12%  <total for region 1>

....[Hottest Regions]...............................................................................
 92.12%  [0x3002f2a0:0x3002f316] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static[Falcon]
  1.73%  [0x300318dc:0x30031941] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_class_non_static_method_jmhTest::class_non_static_method_avgt_jmhStub[Falcon]
  1.55%  [0x3002f6a0:0x3002f72b] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::class_non_static_method[Falcon]
  0.42%  [0xffffffffa9c0f7a2:0xffffffffa9c0f7a2] in [unknown] ([kernel.kallsyms])
  0.28%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.19%  [0xffffffffa9eef31c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.19%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9f0711c:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9c94c80:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f695f6:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9c0f77a:0xffffffffa9c0f77a] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0800:0xffffffffa9ed0866] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f07065:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0740:0xffffffffa9ed07c7] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ee587e:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eef44f:0xffffffffa9eef4ad] in [unknown] ([kernel.kallsyms])
  2.25%  <...other 373 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 92.12%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static[Falcon]
  4.21%  [unknown] ([kernel.kallsyms])
  1.73%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_class_non_static_method_jmhTest::class_non_static_method_avgt_jmhStub[Falcon]
  1.55%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::class_non_static_method[Falcon]
  0.18%  [unknown] (libjvm.so)
  0.07%  [unknown] (liborca.so.0.0.0.0)
  0.02%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  PMEM::account_enabled (libaztall.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.01%  az_get_elastic_tall (libaztall.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.00%  _dl_addr (libc-2.31.so)
  0.00%  memcpy (libc-2.31.so)
  0.00%  az_zmd_api_version_tall (libaztall.so)
  0.00%  [unknown] (libstdc++.so.6)
  0.00%  __pthread_disable_asynccancel (libpthread-2.31.so)
  0.00%  <stub: invokevirtual  182 invokevirtual>
  0.04%  <...other 18 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.41%  <generated code>
  4.21%  <native code in ([kernel.kallsyms])>
  0.18%  <native code in (libjvm.so)>
  0.07%  <native code in (liborca.so.0.0.0.0)>
  0.06%  <native code in (libaztall.so)>
  0.03%  <native code in (libc-2.31.so)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (libazsys3.so)>
  0.00%  <native code in (libstdc++.so.6)>
  0.00%  <native code in (kvm.ko)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.class_static_method
# Parameters: (depth = 256)

# Run progress: 16.67% complete, ETA 00:09:22
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 716.967 ns/op
# Warmup Iteration   2: 714.819 ns/op
# Warmup Iteration   3: 714.777 ns/op
# Warmup Iteration   4: 714.634 ns/op
# Warmup Iteration   5: 714.641 ns/op
Iteration   1: 714.646 ns/op
Iteration   2: 714.612 ns/op
Iteration   3: 714.622 ns/op
Iteration   4: 714.649 ns/op
Iteration   5: 714.628 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.class_static_method":
  714.631 ±(99.9%) 0.061 ns/op [Average]
  (min, avg, max) = (714.612, 714.631, 714.649), stdev = 0.016
  CI (99.9%): [714.570, 714.692] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.class_static_method:·asm":
PrintAssembly processed: 134831 total address lines.
Perf output processed (skipped 56.631 seconds):
 Column 1: cycles (51478 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f0a0:0x3002f116] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static[Falcon]

         offset: 493 length: 9 scope: 2 bci: 0
         offset: 502 length: 9 scope: 0 bci: 0
         offset: 511 length: 280 scope: 1 bci: 0
         offset: 791 length: 30 scope: 0 bci: 0
         offset: 821 length: 30 scope: 2 bci: 0
         offset: 851 length: 18 scope: 1 bci: 0
         offset: 869 length: 42 scope: 0 bci: 0
         <nmethodAdapter compile_id='227' level='2' size='40' address='0x00007fb25c1761e0' dependencies_offset='32' stamp='90489.584'/>
           # {method}{0x20002658d68} cls_static[Falcon] (I)Ljava/lang/Object; in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/RecursiveMethodCallBenchmark
         Decoding CodeBlob 0x3002f000
  2.02%  0x3002f0a0: eb f9 ec 38                       subq    $56, %rsp                     
  2.08%  0x3002f0a4: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  2.86%  0x3002f0ad: 75 3e                             jne    62                             ; 0x3002f0ed
  1.14%  0x3002f0af: 83 ff 03                          cmpl    $3, %edi                      
         0x3002f0b2: 76 0e                             jbe    14                             ; 0x3002f0c2
  0.28%  0x3002f0b4: 83 c7 fc                          addl    $-4, %edi                     
  0.78%  0x3002f0b7: 90                                nop                                   
  1.39%  0x3002f0b8: e8 43 e8 fd ff                    callq    -137149                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
 57.59%  0x3002f0bd: 48 83 c4 38                       addq    $56, %rsp                     
 23.05%  0x3002f0c1: c3                                retq                                  
         0x3002f0c2: 89 f8                             movl    %edi, %eax                    
         0x3002f0c4: 48 b9 40 f1 02 30 00 00 00 00     movabsq    $805499200, %rcx           ; 0x3002f140
  0.00%  0x3002f0ce: ff 24 c1                          jmpq    *(%rcx,%rax,8)                
  0.14%  0x3002f0d1: 48 b8 b0 dc ff 2c 00 00 00 00     movabsq    $754965680, %rax           ; 0x2cffdcb0 = 
  0.11%  0x3002f0db: 48 8b 00                          movq    (%rax), %rax                  
  0.28%  0x3002f0de: b9 48 00 f8 2f                    movl    $804782152, %ecx              ; 804782152 = clearable_gc_phase_trap_mask
         0x3002f0e3: 48 85 01                          testq    %rax, (%rcx)                 
         0x3002f0e6: 75 13                             jne    19                             ; 0x3002f0fb
  0.14%  0x3002f0e8: 48 83 c4 38                       addq    $56, %rsp                     
         0x3002f0ec: c3                                retq                                  
         0x3002f0ed: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f0f7: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f0f9: eb b4                             jmp    -76                            ; 0x3002f0af
         0x3002f0fb: 48 be b0 dc ff 2c 00 00 00 00     movabsq    $754965680, %rsi           ; 0x2cffdcb0 = 
         0x3002f105: 48 b9 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rcx           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f10f: 48 89 c7                          movq    %rax, %rdi                    
         0x3002f112: ff d1                             callq    *%rcx                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f114: eb d2                             jmp    -46                            ; 0x3002f0e8
         0x3002f116: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
....................................................................................................
 91.87%  <total for region 1>

....[Hottest Regions]...............................................................................
 91.87%  [0x3002f0a0:0x3002f116] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static[Falcon]
  2.04%  [0x300316dc:0x30031741] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_class_static_method_jmhTest::class_static_method_avgt_jmhStub[Falcon]
  1.99%  [0x3002f4a0:0x3002f52b] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::class_static_method[Falcon]
  0.26%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.24%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9f0711c:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9ee5876:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f07065:0xffffffffa9f070d1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eef44f:0xffffffffa9eef4ad] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0800:0xffffffffa9ed0861] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28ead0:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28d0d0:0xffffffffaa28d110] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0748:0xffffffffa9ed07c7] in [unknown] ([kernel.kallsyms])
  2.13%  <...other 306 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 91.87%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static[Falcon]
  3.70%  [unknown] ([kernel.kallsyms])
  2.04%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_class_static_method_jmhTest::class_static_method_avgt_jmhStub[Falcon]
  1.99%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::class_static_method[Falcon]
  0.30%  [unknown] (libjvm.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  PMEM::account_enabled (libaztall.so)
  0.01%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  is_thread_initialized (libazsys3.so)
  0.00%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  VMEM::get_account_usage (libaztall.so)
  0.00%  [unknown] ([vdso])
  0.00%  __pthread_mutex_unlock (libpthread-2.31.so)
  0.00%  <stub: iload_1  27 iload_1>
  0.00%  _IO_file_write (libc-2.31.so)
  0.00%  <stub: arraylength  190 arraylength>
  0.01%  <...other 7 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.91%  <generated code>
  3.70%  <native code in ([kernel.kallsyms])>
  0.30%  <native code in (libjvm.so)>
  0.03%  <native code in (libc-2.31.so)>
  0.03%  <native code in (libaztall.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.00%  <native code in (libazsys3.so)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.interface_non_static_method
# Parameters: (depth = 256)

# Run progress: 33.33% complete, ETA 00:07:27
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 718.278 ns/op
# Warmup Iteration   2: 716.016 ns/op
# Warmup Iteration   3: 726.842 ns/op
# Warmup Iteration   4: 726.936 ns/op
# Warmup Iteration   5: 726.838 ns/op
Iteration   1: 726.970 ns/op
Iteration   2: 715.660 ns/op
Iteration   3: 715.655 ns/op
Iteration   4: 715.652 ns/op
Iteration   5: 715.590 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.interface_non_static_method":
  717.905 ±(99.9%) 19.512 ns/op [Average]
  (min, avg, max) = (715.590, 717.905, 726.970), stdev = 5.067
  CI (99.9%): [698.393, 737.418] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.interface_non_static_method:·asm":
PrintAssembly processed: 135077 total address lines.
Perf output processed (skipped 57.224 seconds):
 Column 1: cycles (51403 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f2a0:0x3002f349] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static[Falcon]

         0x3002f331: eb d2                             jmp    -46                            ; 0x3002f305
         0x3002f333: 48 b9 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rcx           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f33d: 41 bb 10 00 00 00                 movl    $16, %r11d                    
         0x3002f343: ff d1                             callq    *%rcx                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f345: 00 00                             addb    %al, (%rax)                   
         0x3002f347: 00 00                             addb    %al, (%rax)                   
         0x3002f349: 00 00                             addb    %al, (%rax)                   
         -----------
           # {method}{0x20002b393f0} itf_non_static[Falcon] (I)Ljava/lang/Object; in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/RecursiveMethodCallBenchmark$RInterface
         Decoding CodeBlob 0x3002f200
  0.53%  0x3002f2a0: eb f9 ec 38                       subq    $56, %rsp                     
  2.32%  0x3002f2a4: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  0.18%  0x3002f2ad: 75 5b                             jne    91                             ; 0x3002f30a
  0.35%  0x3002f2af: 85 f6                             testl    %esi, %esi                   
         0x3002f2b1: 74 37                             je    55                              ; 0x3002f2ea
  0.70%  0x3002f2b3: 8d 46 ff                          leal    -1(%rsi), %eax                
  1.73%  0x3002f2b6: 8b 4f 04                          movl    4(%rdi), %ecx                 
  0.18%  0x3002f2b9: 2e 81 e1 ff ff ff 01              andl    $33554431, %ecx               
  0.21%  0x3002f2c0: 81 f9 e6 06 00 00                 cmpl    $1766, %ecx                   
         0x3002f2c6: 75 6b                             jne    107                            ; 0x3002f333
  0.84%  0x3002f2c8: 85 c0                             testl    %eax, %eax                   
         0x3002f2ca: 74 1e                             je    30                              ; 0x3002f2ea
  2.01%  0x3002f2cc: 83 fe 02                          cmpl    $2, %esi                      
         0x3002f2cf: 74 19                             je    25                              ; 0x3002f2ea
  0.30%  0x3002f2d1: 83 fe 03                          cmpl    $3, %esi                      
         0x3002f2d4: 74 14                             je    20                              ; 0x3002f2ea
  0.27%  0x3002f2d6: 83 c6 fc                          addl    $-4, %esi                     
  0.59%  0x3002f2d9: 0f 1f 80 00 00 00 00              nopl    (%rax)                        
  1.79%  0x3002f2e0: e8 1b e6 fd ff                    callq    -137701                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
 57.08%  0x3002f2e5: 48 83 c4 38                       addq    $56, %rsp                     
 23.28%  0x3002f2e9: c3                                retq                                  
  0.06%  0x3002f2ea: 48 b8 a8 fe ff 2c 00 00 00 00     movabsq    $754974376, %rax           ; 0x2cfffea8 = 
  0.08%  0x3002f2f4: 48 8b 00                          movq    (%rax), %rax                  
  0.05%  0x3002f2f7: 2e 2e 2e 2e b9 48 00 f8 2f        movl    $804782152, %ecx              ; 804782152 = clearable_gc_phase_trap_mask
         0x3002f300: 48 85 01                          testq    %rax, (%rcx)                 
         0x3002f303: 75 13                             jne    19                             ; 0x3002f318
  0.02%  0x3002f305: 48 83 c4 38                       addq    $56, %rsp                     
  0.03%  0x3002f309: c3                                retq                                  
         0x3002f30a: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f314: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f316: eb 97                             jmp    -105                           ; 0x3002f2af
         0x3002f318: 48 be a8 fe ff 2c 00 00 00 00     movabsq    $754974376, %rsi           ; 0x2cfffea8 = 
         0x3002f322: 48 b9 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rcx           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f32c: 48 89 c7                          movq    %rax, %rdi                    
         0x3002f32f: ff d1                             callq    *%rcx                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f331: eb d2                             jmp    -46                            ; 0x3002f305
         0x3002f333: 48 b9 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rcx           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f33d: 41 bb 10 00 00 00                 movl    $16, %r11d                    
....................................................................................................
 92.61%  <total for region 1>

....[Hottest Regions]...............................................................................
 92.61%  [0x3002f2a0:0x3002f349] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static[Falcon]
  1.82%  [0x3002f6a0:0x3002f77e] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::interface_non_static_method[Falcon]
  1.57%  [0x300318dc:0x30031941] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_interface_non_static_method_jmhTest::interface_non_static_method_avgt_jmhStub[Falcon]
  0.25%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.21%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9f0711f:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eb93b0:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f6961f:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ed0800:0xffffffffa9ed086e] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ed0740:0xffffffffa9ed0797] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ee5876:0xffffffffa9ee58a7] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eef44f:0xffffffffa9eef4ad] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f686c0:0xffffffffa9f68758] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28d0d0:0xffffffffaa28d129] in [unknown] ([kernel.kallsyms])
  0.04%  [0xffffffffa9eb92c0:0xffffffffa9eb92d6] in [unknown] ([kernel.kallsyms])
  2.02%  <...other 338 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 92.61%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static[Falcon]
  3.66%  [unknown] ([kernel.kallsyms])
  1.82%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::interface_non_static_method[Falcon]
  1.57%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_interface_non_static_method_jmhTest::interface_non_static_method_avgt_jmhStub[Falcon]
  0.17%  [unknown] (libjvm.so)
  0.06%  [unknown] (liborca.so.0.0.0.0)
  0.02%  [unknown] (libc-2.31.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  [unknown] ([vdso])
  0.01%  az_zmd_api_version_tall (libaztall.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.00%  syscall (libc-2.31.so)
  0.00%  __pthread_mutex_lock (libpthread-2.31.so)
  0.00%  PMEM::get_account_usage (libaztall.so)
  0.00%  PMEM::account_enabled (libaztall.so)
  0.00%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  az_pmem_get_account_usage (libazsys3.so)
  0.00%  memcpy (libc-2.31.so)
  0.00%  <stub: astore  58 astore>
  0.00%  _IO_padn (libc-2.31.so)
  0.03%  <...other 16 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 96.01%  <generated code>
  3.66%  <native code in ([kernel.kallsyms])>
  0.17%  <native code in (libjvm.so)>
  0.06%  <native code in (liborca.so.0.0.0.0)>
  0.04%  <native code in (libc-2.31.so)>
  0.03%  <native code in (libaztall.so)>
  0.01%  <native code in (libpthread-2.31.so)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.interface_static_method
# Parameters: (depth = 256)

# Run progress: 50.00% complete, ETA 00:05:35
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 717.061 ns/op
# Warmup Iteration   2: 720.793 ns/op
# Warmup Iteration   3: 720.632 ns/op
# Warmup Iteration   4: 720.545 ns/op
# Warmup Iteration   5: 720.434 ns/op
Iteration   1: 720.711 ns/op
Iteration   2: 714.708 ns/op
Iteration   3: 714.709 ns/op
Iteration   4: 714.687 ns/op
Iteration   5: 714.674 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.interface_static_method":
  715.898 ±(99.9%) 10.360 ns/op [Average]
  (min, avg, max) = (714.674, 715.898, 720.711), stdev = 2.691
  CI (99.9%): [705.538, 726.258] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.interface_static_method:·asm":
PrintAssembly processed: 134928 total address lines.
Perf output processed (skipped 57.164 seconds):
 Column 1: cycles (51380 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f2a0:0x3002f316] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static[Falcon]

         6.466:            - @ 452   java.lang.String::substring (58 bytes)   callee is too large
         6.470:            - @ 504   java.net.URLStreamHandler::parseURL (1201 bytes)   no static binding
         6.470:            - @ 523   java.lang.Throwable::getMessage (5 bytes)   no static binding
         6.470:            - @ 526   java.net.MalformedURLException::&lt;init&gt; (6 bytes)   callee&apos;s klass not linked yet
         6.470:      s     - @ 535   java.lang.Throwable::initCause (64 bytes)   no static binding
         6.510:  243         1 started   com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_interface_static_method_jmhTest::interface_static_method_avgt_jmhStub (Lorg/openjdk/jmh/runner/InfraControl;Lorg/openjdk/jmh/results/RawResults;Lorg/openjdk/jmh/infra/BenchmarkParams;Lorg/openjdk/jmh/infra/IterationParams;Lorg/openjdk/jmh/infra/ThreadParams;Lorg/openjdk/jmh/infra/Blackhole;Lorg/openjdk/jmh/infra/Control;ILcom/ionutbalosin/jvm/performance/benchmarks/micro/compiler/jmh_generated/RecursiveMethodCallBenchmark_jmhType;)V (tid 152104) (kid 1414 pkid/prev 1390/NA) (mid 1447942 pmid 18285) (bytes 57) (generation 0) (lvl O2) (score 57) (score_updated 14ms; orig 57; promoted 0) (wait 14ms)
         6.510:  242    %    1 started   com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_interface_static_method_jmhTest::interface_static_method_avgt_jmhStub (Lorg/openjdk/jmh/runner/InfraControl;Lorg/openjdk/jmh/results/RawResults;Lorg/openjdk/jmh/infra/BenchmarkParams;Lorg/openjdk/jmh/infra/IterationParams;Lorg/openjdk/jmh/infra/ThreadParams;Lorg/openjdk/jmh/infra/Blackhole;Lorg/openjdk/jmh/infra/Control;ILcom/ionutbalosin/jvm/performance/benchmarks/micro/compiler/jmh_generated/RecursiveMethodCallBenchmark_jmhType;)V @ 13 (tid 152105) (kid 1414 pkid/prev 1390/NA) (mid 1447942 pmid 18285) (bytes 57) (generation 0) (lvl O2) (score 57) (score_updated 14ms; orig 57; promoted 0) (wait 14ms)
         6.511:  233  !      1 installed at 0x32b0bc80 with size 0x2e21. java.net.URL::&lt;init&gt; (Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V (tid 152103) (kid 148 pkid/prev 124/NA) (mid 151558 pmid 2941) (bytes 543) (generation 0) (lvl O2) (score 543) (score_updated 56ms; orig 543; promoted 0) (wait 6ms) (compile 25ms/50ms)
           # {method}{0x20002b390d0} itf_static[Falcon] (I)Ljava/lang/Object; in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/RecursiveMethodCallBenchmark$RInterface
         Decoding CodeBlob 0x3002f200
  1.69%  0x3002f2a0: eb f9 ec 38                       subq    $56, %rsp                     
  1.73%  0x3002f2a4: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  2.32%  0x3002f2ad: 75 3e                             jne    62                             ; 0x3002f2ed
  0.97%  0x3002f2af: 83 ff 03                          cmpl    $3, %edi                      
         0x3002f2b2: 76 0e                             jbe    14                             ; 0x3002f2c2
  0.21%  0x3002f2b4: 83 c7 fc                          addl    $-4, %edi                     
  0.62%  0x3002f2b7: 90                                nop                                   
  1.12%  0x3002f2b8: e8 43 e6 fd ff                    callq    -137661                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
 59.18%  0x3002f2bd: 48 83 c4 38                       addq    $56, %rsp                     
 23.89%  0x3002f2c1: c3                                retq                                  
  0.01%  0x3002f2c2: 89 f8                             movl    %edi, %eax                    
         0x3002f2c4: 48 b9 40 f3 02 30 00 00 00 00     movabsq    $805499712, %rcx           ; 0x3002f340
  0.01%  0x3002f2ce: ff 24 c1                          jmpq    *(%rcx,%rax,8)                
  0.11%  0x3002f2d1: 48 b8 a8 d0 ff 2c 00 00 00 00     movabsq    $754962600, %rax           ; 0x2cffd0a8 = 
  0.10%  0x3002f2db: 48 8b 00                          movq    (%rax), %rax                  
  0.25%  0x3002f2de: b9 48 00 f8 2f                    movl    $804782152, %ecx              ; 804782152 = clearable_gc_phase_trap_mask
         0x3002f2e3: 48 85 01                          testq    %rax, (%rcx)                 
         0x3002f2e6: 75 13                             jne    19                             ; 0x3002f2fb
  0.15%  0x3002f2e8: 48 83 c4 38                       addq    $56, %rsp                     
         0x3002f2ec: c3                                retq                                  
         0x3002f2ed: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f2f7: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f2f9: eb b4                             jmp    -76                            ; 0x3002f2af
         0x3002f2fb: 48 be a8 d0 ff 2c 00 00 00 00     movabsq    $754962600, %rsi           ; 0x2cffd0a8 = 
         0x3002f305: 48 b9 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rcx           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f30f: 48 89 c7                          movq    %rax, %rdi                    
         0x3002f312: ff d1                             callq    *%rcx                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f314: eb d2                             jmp    -46                            ; 0x3002f2e8
         0x3002f316: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
....................................................................................................
 92.35%  <total for region 1>

....[Hottest Regions]...............................................................................
 92.35%  [0x3002f2a0:0x3002f316] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static[Falcon]
  1.90%  [0x3002f6a0:0x3002f72b] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::interface_static_method[Falcon]
  1.79%  [0x300318dc:0x30031941] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_interface_static_method_jmhTest::interface_static_method_avgt_jmhStub[Falcon]
  0.27%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.23%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eb8dcf:0xffffffffa9eb8de6] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eb93b5:0xffffffffa9eb9441] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f0711f:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f695f5:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9c94c86:0xffffffffa9c94c86] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eef44f:0xffffffffa9eef4aa] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f0706b:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f686c5:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ee5876:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9da97a0:0xffffffffa9da9802] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9ed0800:0xffffffffa9ed0873] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffaa28d0d0:0xffffffffaa28d129] in [unknown] ([kernel.kallsyms])
  2.02%  <...other 312 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 92.35%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static[Falcon]
  3.66%  [unknown] ([kernel.kallsyms])
  1.90%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::interface_static_method[Falcon]
  1.79%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_interface_static_method_jmhTest::interface_static_method_avgt_jmhStub[Falcon]
  0.17%  [unknown] (libjvm.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  PMEM::account_enabled; PMEM::accounts (libaztall.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.01%  PMEM_Account::fetch_stats (libaztall.so)
  0.00%  __pthread_mutex_unlock (libpthread-2.31.so)
  0.00%  <stub: method entry point (kind = zerolocals)>
  0.00%  _IO_default_xsputn (libc-2.31.so)
  0.00%  [unknown] ([vdso])
  0.00%  _dl_addr (libc-2.31.so)
  0.00%  is_thread_initialized (libazsys3.so)
  0.03%  <...other 16 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 96.06%  <generated code>
  3.66%  <native code in ([kernel.kallsyms])>
  0.17%  <native code in (libjvm.so)>
  0.04%  <native code in (libaztall.so)>
  0.03%  <native code in (libc-2.31.so)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.lambda_non_static
# Parameters: (depth = 256)

# Run progress: 66.67% complete, ETA 00:03:43
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.421 ns/op
# Warmup Iteration   2: 8.323 ns/op
# Warmup Iteration   3: 8.121 ns/op
# Warmup Iteration   4: 8.159 ns/op
# Warmup Iteration   5: 8.141 ns/op
Iteration   1: 8.148 ns/op
Iteration   2: 8.094 ns/op
Iteration   3: 8.205 ns/op
Iteration   4: 8.203 ns/op
Iteration   5: 8.071 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.lambda_non_static":
  8.144 ±(99.9%) 0.236 ns/op [Average]
  (min, avg, max) = (8.071, 8.144, 8.205), stdev = 0.061
  CI (99.9%): [7.908, 8.380] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.lambda_non_static:·asm":
PrintAssembly processed: 135319 total address lines.
Perf output processed (skipped 58.017 seconds):
 Column 1: cycles (51814 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f2a0:0x3002f424] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_non_static[Falcon]

         0x3002f40b: 41 ff d1                          callq    *%r9                         ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f40e: 48 b9 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rcx           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f418: 41 bb 07 00 00 00                 movl    $7, %r11d                     
         0x3002f41e: ff d1                             callq    *%rcx                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f420: 00 00                             addb    %al, (%rax)                   
         0x3002f422: 00 00                             addb    %al, (%rax)                   
         0x3002f424: 00 00                             addb    %al, (%rax)                   
         -----------
           # {method}{0x200026588e8} lambda_non_static[Falcon] ()Ljava/lang/Object; in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/RecursiveMethodCallBenchmark
         Decoding CodeBlob 0x3002f200
  6.55%  0x3002f2a0: eb f9                             pushq    %rax                         
  4.61%  0x3002f2a2: 49 89 f8                          movq    %rdi, %r8                     
         0x3002f2a5: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  8.94%  0x3002f2ae: 75 7a                             jne    122                            ; 0x3002f32a
  4.39%  0x3002f2b0: 49 8b 48 20                       movq    32(%r8), %rcx                 
         0x3002f2b4: b8 48 00 f8 2f                    movl    $804782152, %eax              ; 804782152 = clearable_gc_phase_trap_mask
         0x3002f2b9: 2e 2e 2e 2e 4c 8b 08              movq    %cs:(%rax), %r9               
         0x3002f2c0: 49 85 c9                          testq    %rcx, %r9                    
         0x3002f2c3: 75 76                             jne    118                            ; 0x3002f33b
  4.51%  0x3002f2c5: 44 8b 51 04                       movl    4(%rcx), %r10d                
         0x3002f2c9: 49 8b 50 18                       movq    24(%r8), %rdx                 
         0x3002f2cd: 49 85 d1                          testq    %rdx, %r9                    
         0x3002f2d0: 0f 85 80 00 00 00                 jne    128                            ; 0x3002f356
  3.74%  0x3002f2d6: 2e 2e 2e 41 81 e2 ff ff ff 01     andl    $33554431, %r10d              
  0.81%  0x3002f2e0: 41 81 fa e3 06 00 00              cmpl    $1763, %r10d                  
         0x3002f2e7: 0f 85 b4 00 00 00                 jne    180                            ; 0x3002f3a1
  4.40%  0x3002f2ed: 48 8b 41 08                       movq    8(%rcx), %rax                 
         0x3002f2f1: 48 85 d2                          testq    %rdx, %rdx                   
         0x3002f2f4: 0f 84 b9 00 00 00                 je    185                             ; 0x3002f3b3
         0x3002f2fa: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
         0x3002f300: 48 85 c0                          testq    %rax, %rax                   
         0x3002f303: 0f 84 d7 00 00 00                 je    215                             ; 0x3002f3e0
  4.64%  0x3002f309: 44 8b 42 08                       movl    8(%rdx), %r8d                 
         0x3002f30d: 45 85 c0                          testl    %r8d, %r8d                   
  0.00%  0x3002f310: 0f 85 dc 00 00 00                 jne    220                            ; 0x3002f3f2
  4.26%  0x3002f316: 48 b8 e8 c0 ff 2c 00 00 00 00     movabsq    $754958568, %rax           ; 0x2cffc0e8 = 
         0x3002f320: 48 8b 00                          movq    (%rax), %rax                  
  0.21%  0x3002f323: 49 85 c1                          testq    %rax, %r9                    
         0x3002f326: 75 4c                             jne    76                             ; 0x3002f374
  3.87%  0x3002f328: 59                                popq    %rcx                          
  0.51%  0x3002f329: c3                                retq                                  
         0x3002f32a: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f334: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f336: e9 75 ff ff ff                    jmp    -139                           ; 0x3002f2b0
         0x3002f33b: 49 8d 70 20                       leaq    32(%r8), %rsi                 
         0x3002f33f: 48 b8 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rax           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f349: 48 89 cf                          movq    %rcx, %rdi                    
         0x3002f34c: ff d0                             callq    *%rax                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f34e: 48 89 c1                          movq    %rax, %rcx                    
         0x3002f351: e9 6f ff ff ff                    jmp    -145                           ; 0x3002f2c5
         0x3002f356: 49 83 c0 18                       addq    $24, %r8                      
....................................................................................................
 51.45%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x300318dc:0x30031941] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub[Falcon]

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
  4.60%  0x30031903: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30031908: e8 f3 bf fd ff                    callq    -147469                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  0.00%  0x3003190d: 48 89 44 24 40                    movq    %rax, 64(%rsp)                
 39.10%  0x30031912: 48 ff c5                          incq    %rbp                          
         0x30031915: 2e 2e 41 0f b6 84 24 94 00 00     movzbl    %cs:148(%r12), %eax         
         0x30031920: 84 c0                             testb    %al, %al                     
         0x30031922: 74 dc                             je    -36                             ; 0x30031900
         0x30031924: 41 ff d5                          callq    *%r13                        
         0x30031927: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x3003192b: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x30031933: c4 e1 fb 2a c5                    vcvtsi2sd    %rbp, %xmm0, %xmm0       
         0x30031938: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x3003193d: 48 83 c4 48                       addq    $72, %rsp                     
         0x30031941: 5b                                popq    %rbx                          
....................................................................................................
 43.70%  <total for region 2>

....[Hottest Regions]...............................................................................
 51.45%  [0x3002f2a0:0x3002f424] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_non_static[Falcon]
 43.70%  [0x300318dc:0x30031941] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub[Falcon]
  0.76%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.22%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.20%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.18%  [0xffffffffa9eb93b5:0xffffffffa9eb9441] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9eef5b2:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9f0711c:0xffffffffa9f07160] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eef44f:0xffffffffa9eef4ad] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ee587e:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9c0f77a:0xffffffffa9c0f77a] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ed0800:0xffffffffa9ed0873] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffaa28ead0:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9f07060:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28eb60:0xffffffffaa28eba6] in [unknown] ([kernel.kallsyms])
  2.18%  <...other 355 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 51.45%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_non_static[Falcon]
 43.70%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub[Falcon]
  4.50%  [unknown] ([kernel.kallsyms])
  0.21%  [unknown] (libjvm.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  syscall (libc-2.31.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  PMEM::account_enabled (libaztall.so)
  0.01%  [unknown] ([vdso])
  0.01%  is_thread_initialized (libazsys3.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.00%  az_pmem_get_account_usage_tall; az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  [unknown] (libstdc++.so.6)
  0.00%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  clock_gettime (libc-2.31.so)
  0.00%  VMEM::get_account_usage (libaztall.so)
  0.00%  <stub: putfield  181 putfield>
  0.00%  _dl_addr (libc-2.31.so)
  0.03%  <...other 15 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.16%  <generated code>
  4.50%  <native code in ([kernel.kallsyms])>
  0.21%  <native code in (libjvm.so)>
  0.04%  <native code in (libaztall.so)>
  0.03%  <native code in (libc-2.31.so)>
  0.02%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in ([vdso])>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.lambda_static
# Parameters: (depth = 256)

# Run progress: 83.33% complete, ETA 00:01:52
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.339 ns/op
# Warmup Iteration   2: 7.289 ns/op
# Warmup Iteration   3: 7.046 ns/op
# Warmup Iteration   4: 7.002 ns/op
# Warmup Iteration   5: 7.004 ns/op
Iteration   1: 7.009 ns/op
Iteration   2: 7.004 ns/op
Iteration   3: 7.005 ns/op
Iteration   4: 7.005 ns/op
Iteration   5: 7.004 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.lambda_static":
  7.005 ±(99.9%) 0.008 ns/op [Average]
  (min, avg, max) = (7.004, 7.005, 7.009), stdev = 0.002
  CI (99.9%): [6.997, 7.013] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.lambda_static:·asm":
PrintAssembly processed: 135131 total address lines.
Perf output processed (skipped 56.497 seconds):
 Column 1: cycles (51414 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x300316dc:0x30031744] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub[Falcon]

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
  5.37%  0x30031703: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30031708: e8 f3 c1 fd ff                    callq    -146957                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  5.32%  0x3003170d: 48 89 44 24 40                    movq    %rax, 64(%rsp)                
 42.15%  0x30031712: 48 ff c5                          incq    %rbp                          
         0x30031715: 2e 2e 41 0f b6 84 24 94 00 00     movzbl    %cs:148(%r12), %eax         
  0.00%  0x30031720: 84 c0                             testb    %al, %al                     
         0x30031722: 74 dc                             je    -36                             ; 0x30031700
         0x30031724: 41 ff d5                          callq    *%r13                        
         0x30031727: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x3003172b: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x30031733: c4 e1 fb 2a c5                    vcvtsi2sd    %rbp, %xmm0, %xmm0       
         0x30031738: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x3003173d: 48 83 c4 48                       addq    $72, %rsp                     
         0x30031741: 5b                                popq    %rbx                          
         0x30031742: 41 5c                             popq    %r12                          
         0x30031744: 41 5d                             popq    %r13                          
....................................................................................................
 52.84%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x3002f4a0:0x3002f546] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_static[Falcon]

         0x3002f52e: ff d0                             callq    *%rax                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f530: 48 b9 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rcx           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f53a: 41 bb 07 00 00 00                 movl    $7, %r11d                     
         0x3002f540: ff d1                             callq    *%rcx                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f542: 00 00                             addb    %al, (%rax)                   
         0x3002f544: 00 00                             addb    %al, (%rax)                   
         0x3002f546: 00 00                             addb    %al, (%rax)                   
         -----------
           # {method}{0x20002658c88} lambda_static[Falcon] ()Ljava/lang/Object; in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/RecursiveMethodCallBenchmark
         Decoding CodeBlob 0x3002f400
  5.59%  0x3002f4a0: eb f9                             pushq    %rax                         
  5.33%  0x3002f4a2: 48 89 fe                          movq    %rdi, %rsi                    
         0x3002f4a5: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 10.50%  0x3002f4ae: 75 30                             jne    48                             ; 0x3002f4e0
  5.30%  0x3002f4b0: 48 8b 46 18                       movq    24(%rsi), %rax                
  0.00%  0x3002f4b4: b9 48 00 f8 2f                    movl    $804782152, %ecx              ; 804782152 = clearable_gc_phase_trap_mask
         0x3002f4b9: 2e 2e 2e 2e 48 8b 09              movq    %cs:(%rcx), %rcx              
         0x3002f4c0: 48 85 c1                          testq    %rax, %rcx                   
         0x3002f4c3: 75 29                             jne    41                             ; 0x3002f4ee
  5.28%  0x3002f4c5: 8b 50 08                          movl    8(%rax), %edx                 
  0.00%  0x3002f4c8: 85 d2                             testl    %edx, %edx                   
         0x3002f4ca: 75 64                             jne    100                            ; 0x3002f530
  5.14%  0x3002f4cc: 48 b8 a8 c4 ff 2c 00 00 00 00     movabsq    $754959528, %rax           ; 0x2cffc4a8 = 
         0x3002f4d6: 48 8b 00                          movq    (%rax), %rax                  
         0x3002f4d9: 48 85 c1                          testq    %rax, %rcx                   
         0x3002f4dc: 75 25                             jne    37                             ; 0x3002f503
  5.43%  0x3002f4de: 59                                popq    %rcx                          
  0.00%  0x3002f4df: c3                                retq                                  
         0x3002f4e0: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f4ea: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f4ec: eb c2                             jmp    -62                            ; 0x3002f4b0
         0x3002f4ee: 48 83 c6 18                       addq    $24, %rsi                     
         0x3002f4f2: 48 ba c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rdx           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f4fc: 48 89 c7                          movq    %rax, %rdi                    
         0x3002f4ff: ff d2                             callq    *%rdx                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f501: eb c2                             jmp    -62                            ; 0x3002f4c5
         0x3002f503: 48 be a8 c4 ff 2c 00 00 00 00     movabsq    $754959528, %rsi           ; 0x2cffc4a8 = 
         0x3002f50d: 48 b9 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rcx           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
....................................................................................................
 42.58%  <total for region 2>

....[Hottest Regions]...............................................................................
 52.84%  [0x300316dc:0x30031744] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub[Falcon]
 42.58%  [0x3002f4a0:0x3002f546] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_static[Falcon]
  0.25%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.23%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.18%  [0xffffffffa9eb8dca:0xffffffffa9eb8de6] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9c94c82:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9f0711f:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eef5b2:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f07060:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f211f9:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffaa976531:0xffffffffaa976543] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f695f5:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ed0809:0xffffffffa9ed0889] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ee587e:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eff400:0xffffffffa9eff43c] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0748:0xffffffffa9ed0797] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffaa28eb60:0xffffffffaa28eb94] in [unknown] ([kernel.kallsyms])
  2.47%  <...other 384 warm regions...>
....................................................................................................
 99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 52.84%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub[Falcon]
 42.58%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_static[Falcon]
  4.32%  [unknown] ([kernel.kallsyms])
  0.17%  [unknown] (libjvm.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  [unknown] (kvm.ko)
  0.01%  syscall (libc-2.31.so)
  0.01%  <stub: method entry point (kind = zerolocals)>
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.00%  _dl_addr (libc-2.31.so)
  0.00%  __pthread_mutex_unlock (libpthread-2.31.so)
  0.00%  PMEM::get_account_usage (libaztall.so)
  0.00%  PMEM::account_enabled (libaztall.so)
  0.00%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  clock_gettime (libc-2.31.so)
  0.00%  VMEM::get_account_usage (libaztall.so)
  0.00%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  memcpy (libc-2.31.so)
  0.00%  __pthread_mutex_lock (libpthread-2.31.so)
  0.00%  PMEM::accounts (libaztall.so)
  0.02%  <...other 10 warm methods...>
....................................................................................................
 99.99%  <totals>

....[Distribution by Area]..........................................................................
 95.43%  <generated code>
  4.32%  <native code in ([kernel.kallsyms])>
  0.17%  <native code in (libjvm.so)>
  0.04%  <native code in (libc-2.31.so)>
  0.02%  <native code in (libaztall.so)>
  0.01%  <native code in (kvm.ko)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.00%  <native code in (libstdc++.so.6)>
  0.00%  <native code in (libazsys3.so)>
  0.00%  <native code in ([vdso])>
  0.00%  <native code in (perf-152359.map)>
....................................................................................................
 99.99%  <totals>



# Run complete. Total time: 00:11:11

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

Benchmark                                                      (depth)  Mode  Cnt    Score    Error  Units
RecursiveMethodCallBenchmark.class_non_static_method               256  avgt    5  714.547 ±  0.092  ns/op
RecursiveMethodCallBenchmark.class_non_static_method:·asm          256  avgt           NaN             ---
RecursiveMethodCallBenchmark.class_static_method                   256  avgt    5  714.631 ±  0.061  ns/op
RecursiveMethodCallBenchmark.class_static_method:·asm              256  avgt           NaN             ---
RecursiveMethodCallBenchmark.interface_non_static_method           256  avgt    5  717.905 ± 19.512  ns/op
RecursiveMethodCallBenchmark.interface_non_static_method:·asm      256  avgt           NaN             ---
RecursiveMethodCallBenchmark.interface_static_method               256  avgt    5  715.898 ± 10.360  ns/op
RecursiveMethodCallBenchmark.interface_static_method:·asm          256  avgt           NaN             ---
RecursiveMethodCallBenchmark.lambda_non_static                     256  avgt    5    8.144 ±  0.236  ns/op
RecursiveMethodCallBenchmark.lambda_non_static:·asm                256  avgt           NaN             ---
RecursiveMethodCallBenchmark.lambda_static                         256  avgt    5    7.005 ±  0.008  ns/op
RecursiveMethodCallBenchmark.lambda_static:·asm                    256  avgt           NaN             ---
