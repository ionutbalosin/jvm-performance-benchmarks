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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MethodArgsBusterBenchmark.method_args_buster

# Run progress: 0.00% complete, ETA 00:01:40
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 169.351 ns/op
# Warmup Iteration   2: 163.600 ns/op
# Warmup Iteration   3: 163.036 ns/op
# Warmup Iteration   4: 163.069 ns/op
# Warmup Iteration   5: 163.035 ns/op
Iteration   1: 162.673 ns/op
Iteration   2: 162.841 ns/op
Iteration   3: 162.793 ns/op
Iteration   4: 162.544 ns/op
Iteration   5: 162.469 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MethodArgsBusterBenchmark.method_args_buster":
  162.664 ±(99.9%) 0.611 ns/op [Average]
  (min, avg, max) = (162.469, 162.664, 162.841), stdev = 0.159
  CI (99.9%): [162.053, 163.276] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MethodArgsBusterBenchmark.method_args_buster:·asm":
PrintAssembly processed: 136493 total address lines.
Perf output processed (skipped 56.440 seconds):
 Column 1: cycles (51677 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3003012f:0x30031866] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod[Falcon]

 <region is too big to display, has 1314 lines, but threshold is 1000>
....................................................................................................
 81.02%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x3002faa0:0x3002fc78] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MethodArgsBusterBenchmark::method_args_buster[Falcon]

  0.01%  0x3002fc55: c5 f8 77                          vzeroupper                            
  0.23%  0x3002fc58: e8 a3 dc fd ff                    callq    -140125                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  0.00%  0x3002fc5d: 48 81 c4 f8 01 00 00              addq    $504, %rsp                    
  0.46%  0x3002fc64: c3                                retq                                  
         0x3002fc65: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002fc6f: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002fc71: e9 40 fe ff ff                    jmp    -448                           ; 0x3002fab6
         -----------
           # {method}{0x200026554b0} method_args_buster[Falcon] ()J in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MethodArgsBusterBenchmark
         Decoding CodeBlob 0x3002fa00
  0.02%  0x3002faa0: eb f9 ec f8 01 00 00              subq    $504, %rsp                    
  0.17%  0x3002faa7: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  0.41%  0x3002fab0: 0f 85 af 01 00 00                 jne    431                            ; 0x3002fc65
  0.19%  0x3002fab6: 48 b8 c0 fc 02 30 00 00 00 00     movabsq    $805502144, %rax           ; 0x3002fcc0
  0.04%  0x3002fac0: c5 fc 28 00                       vmovaps    (%rax), %ymm0              
         0x3002fac4: c5 fc 11 84 24 d0 01 00 00        vmovups    %ymm0, 464(%rsp)           
  0.52%  0x3002facd: 48 b8 e0 fc 02 30 00 00 00 00     movabsq    $805502176, %rax           ; 0x3002fce0
  0.01%  0x3002fad7: c5 fc 28 00                       vmovaps    (%rax), %ymm0              
  0.01%  0x3002fadb: c5 fc 11 84 24 b0 01 00 00        vmovups    %ymm0, 432(%rsp)           
  0.19%  0x3002fae4: 48 b8 00 fd 02 30 00 00 00 00     movabsq    $805502208, %rax           ; 0x3002fd00
  0.09%  0x3002faee: c5 fc 28 00                       vmovaps    (%rax), %ymm0              
         0x3002faf2: c5 fc 11 84 24 90 01 00 00        vmovups    %ymm0, 400(%rsp)           
  0.22%  0x3002fafb: 48 b8 20 fd 02 30 00 00 00 00     movabsq    $805502240, %rax           ; 0x3002fd20
  0.03%  0x3002fb05: c5 fc 28 00                       vmovaps    (%rax), %ymm0              
  0.07%  0x3002fb09: c5 fc 11 84 24 70 01 00 00        vmovups    %ymm0, 368(%rsp)           
  0.16%  0x3002fb12: 48 b8 40 fd 02 30 00 00 00 00     movabsq    $805502272, %rax           ; 0x3002fd40
  0.06%  0x3002fb1c: c5 fc 28 00                       vmovaps    (%rax), %ymm0              
  0.02%  0x3002fb20: c5 fc 11 84 24 50 01 00 00        vmovups    %ymm0, 336(%rsp)           
  0.23%  0x3002fb29: 48 b8 60 fd 02 30 00 00 00 00     movabsq    $805502304, %rax           ; 0x3002fd60
  0.00%  0x3002fb33: c5 fc 28 00                       vmovaps    (%rax), %ymm0              
  0.05%  0x3002fb37: c5 fc 11 84 24 30 01 00 00        vmovups    %ymm0, 304(%rsp)           
  0.22%  0x3002fb40: 48 b8 80 fd 02 30 00 00 00 00     movabsq    $805502336, %rax           ; 0x3002fd80
  0.02%  0x3002fb4a: c5 fc 28 00                       vmovaps    (%rax), %ymm0              
  1.22%  0x3002fb4e: c5 fc 11 84 24 10 01 00 00        vmovups    %ymm0, 272(%rsp)           
  0.68%  0x3002fb57: 48 b8 a0 fd 02 30 00 00 00 00     movabsq    $805502368, %rax           ; 0x3002fda0
         0x3002fb61: c5 fc 28 00                       vmovaps    (%rax), %ymm0              
  0.19%  0x3002fb65: c5 fc 11 84 24 f0 00 00 00        vmovups    %ymm0, 240(%rsp)           
  0.23%  0x3002fb6e: 48 b8 c0 fd 02 30 00 00 00 00     movabsq    $805502400, %rax           ; 0x3002fdc0
  0.06%  0x3002fb78: c5 fc 28 00                       vmovaps    (%rax), %ymm0              
  0.20%  0x3002fb7c: c5 fc 11 84 24 d0 00 00 00        vmovups    %ymm0, 208(%rsp)           
  0.33%  0x3002fb85: 48 b8 e0 fd 02 30 00 00 00 00     movabsq    $805502432, %rax           ; 0x3002fde0
  0.03%  0x3002fb8f: c5 fc 28 00                       vmovaps    (%rax), %ymm0              
  0.08%  0x3002fb93: c5 fc 11 84 24 b0 00 00 00        vmovups    %ymm0, 176(%rsp)           
  0.17%  0x3002fb9c: 48 b8 00 fe 02 30 00 00 00 00     movabsq    $805502464, %rax           ; 0x3002fe00
  0.06%  0x3002fba6: c5 fc 28 00                       vmovaps    (%rax), %ymm0              
  0.02%  0x3002fbaa: c5 fc 11 84 24 90 00 00 00        vmovups    %ymm0, 144(%rsp)           
  0.21%  0x3002fbb3: 48 b8 20 fe 02 30 00 00 00 00     movabsq    $805502496, %rax           ; 0x3002fe20
  0.01%  0x3002fbbd: c5 fc 28 00                       vmovaps    (%rax), %ymm0              
  0.05%  0x3002fbc1: c5 fc 11 44 24 70                 vmovups    %ymm0, 112(%rsp)           
  0.05%  0x3002fbc7: 48 b8 40 fe 02 30 00 00 00 00     movabsq    $805502528, %rax           ; 0x3002fe40
  0.10%  0x3002fbd1: c5 fc 28 00                       vmovaps    (%rax), %ymm0              
  0.01%  0x3002fbd5: c5 fc 11 44 24 50                 vmovups    %ymm0, 80(%rsp)            
  0.05%  0x3002fbdb: 48 b8 60 fe 02 30 00 00 00 00     movabsq    $805502560, %rax           ; 0x3002fe60
  0.05%  0x3002fbe5: c5 fc 28 00                       vmovaps    (%rax), %ymm0              
  0.12%  0x3002fbe9: c5 fc 11 44 24 30                 vmovups    %ymm0, 48(%rsp)            
  0.02%  0x3002fbef: 48 b8 78 fc 02 30 00 00 00 00     movabsq    $805502072, %rax           ; 0x3002fc78
  0.05%  0x3002fbf9: c5 fb 10 08                       vmovsd    (%rax), %xmm1               
  0.04%  0x3002fbfd: 48 b8 80 fc 02 30 00 00 00 00     movabsq    $805502080, %rax           ; 0x3002fc80
  0.11%  0x3002fc07: c5 fb 10 10                       vmovsd    (%rax), %xmm2               
  0.87%  0x3002fc0b: 48 b8 88 fc 02 30 00 00 00 00     movabsq    $805502088, %rax           ; 0x3002fc88
  0.00%  0x3002fc15: c5 fb 10 18                       vmovsd    (%rax), %xmm3               
  0.34%  0x3002fc19: 48 b8 90 fc 02 30 00 00 00 00     movabsq    $805502096, %rax           ; 0x3002fc90
  0.01%  0x3002fc23: c5 fb 10 20                       vmovsd    (%rax), %xmm4               
  0.03%  0x3002fc27: 48 b8 98 fc 02 30 00 00 00 00     movabsq    $805502104, %rax           ; 0x3002fc98
  0.01%  0x3002fc31: c5 fb 10 28                       vmovsd    (%rax), %xmm5               
  0.16%  0x3002fc35: 48 b8 a0 fc 02 30 00 00 00 00     movabsq    $805502112, %rax           ; 0x3002fca0
  0.01%  0x3002fc3f: c5 fb 10 30                       vmovsd    (%rax), %xmm6               
  0.05%  0x3002fc43: 48 b8 a8 fc 02 30 00 00 00 00     movabsq    $805502120, %rax           ; 0x3002fca8
  0.01%  0x3002fc4d: c5 fb 10 38                       vmovsd    (%rax), %xmm7               
  0.21%  0x3002fc51: c5 f8 57 c0                       vxorps    %xmm0, %xmm0, %xmm0         
  0.01%  0x3002fc55: c5 f8 77                          vzeroupper                            
  0.23%  0x3002fc58: e8 a3 dc fd ff                    callq    -140125                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  0.00%  0x3002fc5d: 48 81 c4 f8 01 00 00              addq    $504, %rsp                    
  0.46%  0x3002fc64: c3                                retq                                  
         0x3002fc65: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002fc6f: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002fc71: e9 40 fe ff ff                    jmp    -448                           ; 0x3002fab6
         0x3002fc76: 66 90                             nop                                   
         0x3002fc78:                                                                         
         Call tree size: 1
         0: caller_index: -1 bci: -1 callee: virtual jlong com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MethodArgsBusterBenchmark.method_args_buster()
         Encoded locations size: 4
         offset: 0 length: 470 scope: 0 bci: 0
         <nmethodAdapter compile_id='239' level='2' size='40' address='0x00007fb0801a8140' dependencies_offset='32' stamp='88684.271'/>
....................................................................................................
  9.25%  <total for region 2>

....[Hottest Regions]...............................................................................
 81.02%  [0x3003012f:0x30031866] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod[Falcon]
  9.25%  [0x3002faa0:0x3002fc78] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MethodArgsBusterBenchmark::method_args_buster[Falcon]
  3.64%  [0x30034adc:0x30034b41] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MethodArgsBusterBenchmark_method_args_buster_jmhTest::method_args_buster_avgt_jmhStub[Falcon]
  1.46%  [0x300300a0:0x30032ee3] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod[Falcon]
  0.40%  [0xffffffffa9c0f77a:0xffffffffa9c0f77a] in [unknown] ([kernel.kallsyms])
  0.33%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.26%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.23%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.19%  [0xffffffffa9f0711f:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9f695f6:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9eb93b5:0xffffffffa9eb9423] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9ed0745:0xffffffffa9ed07b2] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9ed0800:0xffffffffa9ed0860] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f686c5:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eef44f:0xffffffffa9eef4ad] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eff400:0xffffffffa9eff432] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f07060:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  2.14%  <...other 300 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 82.48%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod[Falcon]
  9.25%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MethodArgsBusterBenchmark::method_args_buster[Falcon]
  4.29%  [unknown] ([kernel.kallsyms])
  3.64%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MethodArgsBusterBenchmark_method_args_buster_jmhTest::method_args_buster_avgt_jmhStub[Falcon]
  0.21%  [unknown] (libjvm.so)
  0.02%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  [unknown] ([vdso])
  0.00%  PMEM::account_enabled; PMEM::accounts (libaztall.so)
  0.00%  az_zmd_api_version_tall (libaztall.so)
  0.00%  az_get_elastic (libazsys3.so)
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  <stub: method entry point (kind = zerolocals)>
  0.00%  clock_gettime (libc-2.31.so)
  0.00%  <stub: fast_invokevfinal  227 fast_invokevfinal>
  0.00%  PMEM_Account::fetch_stats (libaztall.so)
  0.02%  <...other 11 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.39%  <generated code>
  4.29%  <native code in ([kernel.kallsyms])>
  0.21%  <native code in (libjvm.so)>
  0.05%  <native code in (libaztall.so)>
  0.02%  <native code in (libc-2.31.so)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in ([vdso])>
  0.00%  <native code in (libstdc++.so.6)>
....................................................................................................
100.00%  <totals>



# Run complete. Total time: 00:01:52

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

Benchmark                                          Mode  Cnt    Score   Error  Units
MethodArgsBusterBenchmark.method_args_buster       avgt    5  162.664 ± 0.611  ns/op
MethodArgsBusterBenchmark.method_args_buster:·asm  avgt           NaN            ---
