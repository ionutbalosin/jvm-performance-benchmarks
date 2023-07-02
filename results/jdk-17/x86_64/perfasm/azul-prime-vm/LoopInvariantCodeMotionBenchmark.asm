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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopInvariantCodeMotionBenchmark.initial_loop
# Parameters: (iterations = 16384)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6737.465 us/op
# Warmup Iteration   2: 6721.613 us/op
# Warmup Iteration   3: 6835.154 us/op
# Warmup Iteration   4: 6865.300 us/op
# Warmup Iteration   5: 6866.270 us/op
Iteration   1: 6866.016 us/op
Iteration   2: 6865.546 us/op
Iteration   3: 6867.219 us/op
Iteration   4: 6866.971 us/op
Iteration   5: 6867.143 us/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopInvariantCodeMotionBenchmark.initial_loop":
  6866.579 ±(99.9%) 2.898 us/op [Average]
  (min, avg, max) = (6865.546, 6866.579, 6867.219), stdev = 0.753
  CI (99.9%): [6863.681, 6869.477] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopInvariantCodeMotionBenchmark.initial_loop:·asm":
PrintAssembly processed: 134109 total address lines.
Perf output processed (skipped 56.533 seconds):
 Column 1: cycles (51380 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x7fce4c64284f:0x7fce4c642a10] in __j__kernel_tan (libjava.so)

 <no assembly is recorded, native region>
....................................................................................................
 41.82%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x7fce4c6412de:0x7fce4c6413a8] in __j__ieee754_rem_pio2 (libjava.so)

 <no assembly is recorded, native region>
....................................................................................................
 15.53%  <total for region 2>

....[Hottest Region 3]..............................................................................
 [0x7fce4c63faa0:0x7fce4c63fab5] in jfabs (libjava.so)

 <no assembly is recorded, native region>
....................................................................................................
  9.61%  <total for region 3>

....[Hottest Region 4]..............................................................................
 [0x7fce4c63f40e:0x7fce4c63f4d2] in jatan (libjava.so)

 <no assembly is recorded, native region>
....................................................................................................
  6.37%  <total for region 4>

....[Hottest Regions]...............................................................................
 41.82%  [0x7fce4c64284f:0x7fce4c642a10] in __j__kernel_tan (libjava.so)
 15.53%  [0x7fce4c6412de:0x7fce4c6413a8] in __j__ieee754_rem_pio2 (libjava.so)
  9.61%  [0x7fce4c63faa0:0x7fce4c63fab5] in jfabs (libjava.so)
  6.37%  [0x7fce4c63f40e:0x7fce4c63f4d2] in jatan (libjava.so)
  3.51%  [0x32b0e2a1:0x32b0e3b6] in java.lang.StrictMath::tan[nativewrapper]
  3.37%  [0x7fce4c6413de:0x7fce4c641446] in __j__ieee754_rem_pio2 (libjava.so)
  3.27%  [0x7fce4c63ff30:0x7fce4c63ff85] in jtan (libjava.so)
  2.40%  [0x7fce4c641150:0x7fce4c6411e1] in __j__ieee754_rem_pio2 (libjava.so)
  2.19%  [0x3002f6c3:0x3002f7cf] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopInvariantCodeMotionBenchmark::initial_loop[Falcon]
  1.62%  [0x32b0e098:0x32b0e170] in java.lang.StrictMath::tan[nativewrapper]
  1.28%  [0x7fce4c63f5b8:0x7fce4c63f5c9] in jatan (libjava.so)
  1.24%  [0x32b0e080:0x32b0e0e2] in java.lang.StrictMath::tan[nativewrapper]
  1.17%  [0x7fce4c6427a0:0x7fce4c6427b7] in __j__kernel_tan (libjava.so)
  0.77%  [0x32b0a2a1:0x32b0a3b6] in java.lang.StrictMath::atan[nativewrapper]
  0.60%  [0x7fce4c636d80:0x7fce4c636d85] in Java_java_lang_StrictMath_tan (libjava.so)
  0.27%  [0x32b09ff2:0x32b0a0e2] in java.lang.StrictMath::atan[nativewrapper]
  0.26%  [0x32b0a0aa:0x32b0a158] in java.lang.StrictMath::atan[nativewrapper]
  0.25%  [0xffffffffa9eef317:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.24%  [0x7fce4c63f395:0x7fce4c63f3ad] in jatan (libjava.so)
  0.20%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  4.03%  <...other 366 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 42.99%  __j__kernel_tan (libjava.so)
 21.30%  __j__ieee754_rem_pio2 (libjava.so)
  9.61%  jfabs (libjava.so)
  8.12%  jatan (libjava.so)
  6.37%  java.lang.StrictMath::tan[nativewrapper]
  3.80%  [unknown] ([kernel.kallsyms])
  3.27%  jtan (libjava.so)
  2.19%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopInvariantCodeMotionBenchmark::initial_loop[Falcon]
  1.30%  java.lang.StrictMath::atan[nativewrapper]
  0.60%  Java_java_lang_StrictMath_tan (libjava.so)
  0.17%  [unknown] (libjvm.so)
  0.14%  Java_java_lang_StrictMath_atan (libjava.so)
  0.05%  [unknown] (liborca.so.0.0.0.0)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  [unknown] ([vdso])
  0.01%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  __errno_location (libpthread-2.31.so)
  0.00%  clock_gettime (libc-2.31.so)
  0.00%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  az_zmd_api_version_tall (libaztall.so)
  0.02%  <...other 10 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 86.05%  <native code in (libjava.so)>
  9.87%  <generated code>
  3.80%  <native code in ([kernel.kallsyms])>
  0.17%  <native code in (libjvm.so)>
  0.05%  <native code in (liborca.so.0.0.0.0)>
  0.02%  <native code in (libaztall.so)>
  0.02%  <native code in (libc-2.31.so)>
  0.01%  <native code in ([vdso])>
  0.00%  <native code in (libpthread-2.31.so)>
  0.00%  <native code in (ld-2.31.so)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking
# Parameters: (iterations = 16384)

# Run progress: 50.00% complete, ETA 00:01:52
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1478.873 us/op
# Warmup Iteration   2: 1482.854 us/op
# Warmup Iteration   3: 1484.487 us/op
# Warmup Iteration   4: 1512.070 us/op
# Warmup Iteration   5: 1511.895 us/op
Iteration   1: 1511.927 us/op
Iteration   2: 1481.780 us/op
Iteration   3: 1481.695 us/op
Iteration   4: 1481.256 us/op
Iteration   5: 1481.469 us/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking":
  1487.625 ±(99.9%) 52.317 us/op [Average]
  (min, avg, max) = (1481.256, 1487.625, 1511.927), stdev = 13.587
  CI (99.9%): [1435.308, 1539.942] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking:·asm":
PrintAssembly processed: 134184 total address lines.
Perf output processed (skipped 56.383 seconds):
 Column 1: cycles (51393 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x7f0d3e06984f:0x7f0d3e069a10] in __j__kernel_tan (libjava.so)

 <no assembly is recorded, native region>
....................................................................................................
 42.07%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x7f0d3e068330:0x7f0d3e0683a8] in __j__ieee754_rem_pio2 (libjava.so)

 <no assembly is recorded, native region>
....................................................................................................
 15.41%  <total for region 2>

....[Hottest Region 3]..............................................................................
 [0x7f0d3e0683de:0x7f0d3e068446] in __j__ieee754_rem_pio2 (libjava.so)

 <no assembly is recorded, native region>
....................................................................................................
  9.14%  <total for region 3>

....[Hottest Region 4]..............................................................................
 [0x7f0d3e066aa0:0x7f0d3e066ab5] in jfabs (libjava.so)

 <no assembly is recorded, native region>
....................................................................................................
  8.46%  <total for region 4>

....[Hottest Region 5]..............................................................................
 [0x3002f393:0x3002f638] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking[Falcon]

         0x3002f393: c3                                retq                                  
         0x3002f394: 41 89 ed                          movl    %ebp, %r13d                   
         0x3002f397: 41 83 e5 f8                       andl    $-8, %r13d                    
         0x3002f39b: 41 f7 dd                          negl    %r13d                         
         0x3002f39e: c5 e1 57 db                       vxorpd    %xmm3, %xmm3, %xmm3         
         0x3002f3a2: 41 bc 08 00 00 00                 movl    $8, %r12d                     
         0x3002f3a8: c5 fb 10 01                       vmovsd    (%rcx), %xmm0               
         0x3002f3ac: c5 fb 11 44 24 50                 vmovsd    %xmm0, 80(%rsp)             
         0x3002f3b2: 66 66 66 66 66 2e 0f 1f 84 00     nopw    %cs:(%rax,%rax)               
         0x3002f3c0: c5 fb 11 5c 24 38                 vmovsd    %xmm3, 56(%rsp)             
  0.05%  0x3002f3c6: 45 8d 7c 24 f9                    leal    -7(%r12), %r15d               
         0x3002f3cb: 41 8d 44 24 f8                    leal    -8(%r12), %eax                
         0x3002f3d0: c5 d3 2a c0                       vcvtsi2sd    %eax, %xmm5, %xmm0       
  0.05%  0x3002f3d4: c5 f3 59 c0                       vmulsd    %xmm0, %xmm1, %xmm0         
         0x3002f3d8: e8 23 e5 fd ff                    callq    -137949                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x3002f3dd: c5 fb 10 54 24 40                 vmovsd    64(%rsp), %xmm2             
  0.02%  0x3002f3e3: c5 eb 58 c8                       vaddsd    %xmm0, %xmm2, %xmm1         
  0.03%  0x3002f3e7: c5 eb 59 c0                       vmulsd    %xmm0, %xmm2, %xmm0         
         0x3002f3eb: c5 fb 10 54 24 50                 vmovsd    80(%rsp), %xmm2             
         0x3002f3f1: c5 eb 5c c0                       vsubsd    %xmm0, %xmm2, %xmm0         
  0.02%  0x3002f3f5: c5 f3 5e c0                       vdivsd    %xmm0, %xmm1, %xmm0         
  0.65%  0x3002f3f9: c5 fb 10 4c 24 38                 vmovsd    56(%rsp), %xmm1             
         0x3002f3ff: c5 f3 58 c8                       vaddsd    %xmm0, %xmm1, %xmm1         
  0.23%  0x3002f403: c5 fb 11 4c 24 38                 vmovsd    %xmm1, 56(%rsp)             
  0.05%  0x3002f409: 45 8d 74 24 fa                    leal    -6(%r12), %r14d               
         0x3002f40e: c4 c1 53 2a c7                    vcvtsi2sd    %r15d, %xmm5, %xmm0      
         0x3002f413: c5 fb 59 44 24 48                 vmulsd    72(%rsp), %xmm0, %xmm0      
  0.06%  0x3002f419: 0f 1f 80 00 00 00 00              nopl    (%rax)                        
         0x3002f420: e8 db e4 fd ff                    callq    -138021                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x3002f425: c5 fb 10 54 24 40                 vmovsd    64(%rsp), %xmm2             
  0.04%  0x3002f42b: c5 eb 58 c8                       vaddsd    %xmm0, %xmm2, %xmm1         
  0.04%  0x3002f42f: c5 eb 59 c0                       vmulsd    %xmm0, %xmm2, %xmm0         
         0x3002f433: c5 fb 10 54 24 50                 vmovsd    80(%rsp), %xmm2             
         0x3002f439: c5 eb 5c c0                       vsubsd    %xmm0, %xmm2, %xmm0         
  0.02%  0x3002f43d: c5 f3 5e c0                       vdivsd    %xmm0, %xmm1, %xmm0         
  0.60%  0x3002f441: c5 fb 10 4c 24 38                 vmovsd    56(%rsp), %xmm1             
         0x3002f447: c5 f3 58 c8                       vaddsd    %xmm0, %xmm1, %xmm1         
  0.23%  0x3002f44b: c5 fb 11 4c 24 38                 vmovsd    %xmm1, 56(%rsp)             
  0.05%  0x3002f451: 45 8d 7c 24 fb                    leal    -5(%r12), %r15d               
         0x3002f456: c4 c1 53 2a c6                    vcvtsi2sd    %r14d, %xmm5, %xmm0      
         0x3002f45b: c5 fb 59 44 24 48                 vmulsd    72(%rsp), %xmm0, %xmm0      
  0.03%  0x3002f461: 0f 1f 80 00 00 00 00              nopl    (%rax)                        
         0x3002f468: e8 93 e4 fd ff                    callq    -138093                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x3002f46d: c5 fb 10 54 24 40                 vmovsd    64(%rsp), %xmm2             
  0.01%  0x3002f473: c5 eb 58 c8                       vaddsd    %xmm0, %xmm2, %xmm1         
  0.03%  0x3002f477: c5 eb 59 c0                       vmulsd    %xmm0, %xmm2, %xmm0         
         0x3002f47b: c5 fb 10 54 24 50                 vmovsd    80(%rsp), %xmm2             
         0x3002f481: c5 eb 5c c0                       vsubsd    %xmm0, %xmm2, %xmm0         
  0.02%  0x3002f485: c5 f3 5e c0                       vdivsd    %xmm0, %xmm1, %xmm0         
  0.62%  0x3002f489: c5 fb 10 4c 24 38                 vmovsd    56(%rsp), %xmm1             
         0x3002f48f: c5 f3 58 c8                       vaddsd    %xmm0, %xmm1, %xmm1         
  0.22%  0x3002f493: c5 fb 11 4c 24 38                 vmovsd    %xmm1, 56(%rsp)             
  0.05%  0x3002f499: 45 8d 74 24 fc                    leal    -4(%r12), %r14d               
         0x3002f49e: c4 c1 53 2a c7                    vcvtsi2sd    %r15d, %xmm5, %xmm0      
         0x3002f4a3: c5 fb 59 44 24 48                 vmulsd    72(%rsp), %xmm0, %xmm0      
  0.06%  0x3002f4a9: 0f 1f 80 00 00 00 00              nopl    (%rax)                        
         0x3002f4b0: e8 4b e4 fd ff                    callq    -138165                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x3002f4b5: c5 fb 10 54 24 40                 vmovsd    64(%rsp), %xmm2             
  0.03%  0x3002f4bb: c5 eb 58 c8                       vaddsd    %xmm0, %xmm2, %xmm1         
  0.03%  0x3002f4bf: c5 eb 59 c0                       vmulsd    %xmm0, %xmm2, %xmm0         
         0x3002f4c3: c5 fb 10 54 24 50                 vmovsd    80(%rsp), %xmm2             
         0x3002f4c9: c5 eb 5c c0                       vsubsd    %xmm0, %xmm2, %xmm0         
  0.03%  0x3002f4cd: c5 f3 5e c0                       vdivsd    %xmm0, %xmm1, %xmm0         
  0.60%  0x3002f4d1: c5 fb 10 4c 24 38                 vmovsd    56(%rsp), %xmm1             
         0x3002f4d7: c5 f3 58 c8                       vaddsd    %xmm0, %xmm1, %xmm1         
  0.18%  0x3002f4db: c5 fb 11 4c 24 38                 vmovsd    %xmm1, 56(%rsp)             
  0.06%  0x3002f4e1: 45 8d 7c 24 fd                    leal    -3(%r12), %r15d               
         0x3002f4e6: c4 c1 53 2a c6                    vcvtsi2sd    %r14d, %xmm5, %xmm0      
         0x3002f4eb: c5 fb 59 44 24 48                 vmulsd    72(%rsp), %xmm0, %xmm0      
  0.06%  0x3002f4f1: 0f 1f 80 00 00 00 00              nopl    (%rax)                        
         0x3002f4f8: e8 03 e4 fd ff                    callq    -138237                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x3002f4fd: c5 fb 10 54 24 40                 vmovsd    64(%rsp), %xmm2             
  0.02%  0x3002f503: c5 eb 58 c8                       vaddsd    %xmm0, %xmm2, %xmm1         
  0.02%  0x3002f507: c5 eb 59 c0                       vmulsd    %xmm0, %xmm2, %xmm0         
         0x3002f50b: c5 fb 10 54 24 50                 vmovsd    80(%rsp), %xmm2             
         0x3002f511: c5 eb 5c c0                       vsubsd    %xmm0, %xmm2, %xmm0         
  0.02%  0x3002f515: c5 f3 5e c0                       vdivsd    %xmm0, %xmm1, %xmm0         
  0.55%  0x3002f519: c5 fb 10 4c 24 38                 vmovsd    56(%rsp), %xmm1             
         0x3002f51f: c5 f3 58 c8                       vaddsd    %xmm0, %xmm1, %xmm1         
  0.21%  0x3002f523: c5 fb 11 4c 24 38                 vmovsd    %xmm1, 56(%rsp)             
  0.06%  0x3002f529: 45 8d 74 24 fe                    leal    -2(%r12), %r14d               
         0x3002f52e: c4 c1 53 2a c7                    vcvtsi2sd    %r15d, %xmm5, %xmm0      
         0x3002f533: c5 fb 59 44 24 48                 vmulsd    72(%rsp), %xmm0, %xmm0      
  0.05%  0x3002f539: 0f 1f 80 00 00 00 00              nopl    (%rax)                        
         0x3002f540: e8 bb e3 fd ff                    callq    -138309                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x3002f545: c5 fb 10 54 24 40                 vmovsd    64(%rsp), %xmm2             
  0.02%  0x3002f54b: c5 eb 58 c8                       vaddsd    %xmm0, %xmm2, %xmm1         
  0.02%  0x3002f54f: c5 eb 59 c0                       vmulsd    %xmm0, %xmm2, %xmm0         
         0x3002f553: c5 fb 10 54 24 50                 vmovsd    80(%rsp), %xmm2             
         0x3002f559: c5 eb 5c c0                       vsubsd    %xmm0, %xmm2, %xmm0         
  0.02%  0x3002f55d: c5 f3 5e c0                       vdivsd    %xmm0, %xmm1, %xmm0         
  0.65%  0x3002f561: c5 fb 10 4c 24 38                 vmovsd    56(%rsp), %xmm1             
         0x3002f567: c5 f3 58 c8                       vaddsd    %xmm0, %xmm1, %xmm1         
  0.20%  0x3002f56b: c5 fb 11 4c 24 38                 vmovsd    %xmm1, 56(%rsp)             
  0.04%  0x3002f571: 45 8d 7c 24 ff                    leal    -1(%r12), %r15d               
         0x3002f576: c4 c1 53 2a c6                    vcvtsi2sd    %r14d, %xmm5, %xmm0      
         0x3002f57b: c5 fb 59 44 24 48                 vmulsd    72(%rsp), %xmm0, %xmm0      
  0.07%  0x3002f581: 0f 1f 80 00 00 00 00              nopl    (%rax)                        
         0x3002f588: e8 73 e3 fd ff                    callq    -138381                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x3002f58d: c5 fb 10 54 24 40                 vmovsd    64(%rsp), %xmm2             
  0.02%  0x3002f593: c5 eb 58 c8                       vaddsd    %xmm0, %xmm2, %xmm1         
  0.03%  0x3002f597: c5 eb 59 c0                       vmulsd    %xmm0, %xmm2, %xmm0         
         0x3002f59b: c5 fb 10 54 24 50                 vmovsd    80(%rsp), %xmm2             
         0x3002f5a1: c5 eb 5c c0                       vsubsd    %xmm0, %xmm2, %xmm0         
  0.03%  0x3002f5a5: c5 f3 5e c0                       vdivsd    %xmm0, %xmm1, %xmm0         
  0.70%  0x3002f5a9: c5 fb 10 4c 24 38                 vmovsd    56(%rsp), %xmm1             
         0x3002f5af: c5 f3 58 c8                       vaddsd    %xmm0, %xmm1, %xmm1         
  0.21%  0x3002f5b3: c5 fb 11 4c 24 38                 vmovsd    %xmm1, 56(%rsp)             
  0.02%  0x3002f5b9: c4 c1 53 2a c7                    vcvtsi2sd    %r15d, %xmm5, %xmm0      
         0x3002f5be: c5 fb 59 44 24 48                 vmulsd    72(%rsp), %xmm0, %xmm0      
         0x3002f5c4: 0f 1f 40 00                       nopl    (%rax)                        
  0.06%  0x3002f5c8: e8 33 e3 fd ff                    callq    -138445                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x3002f5cd: c5 fb 10 54 24 40                 vmovsd    64(%rsp), %xmm2             
  0.03%  0x3002f5d3: c5 eb 58 c8                       vaddsd    %xmm0, %xmm2, %xmm1         
  0.04%  0x3002f5d7: c5 eb 59 c0                       vmulsd    %xmm0, %xmm2, %xmm0         
         0x3002f5db: c5 fb 10 64 24 50                 vmovsd    80(%rsp), %xmm4             
         0x3002f5e1: c5 db 5c c0                       vsubsd    %xmm0, %xmm4, %xmm0         
  0.02%  0x3002f5e5: c5 f3 5e c0                       vdivsd    %xmm0, %xmm1, %xmm0         
  0.66%  0x3002f5e9: c5 fb 10 5c 24 38                 vmovsd    56(%rsp), %xmm3             
         0x3002f5ef: c5 e3 58 d8                       vaddsd    %xmm0, %xmm3, %xmm3         
  0.19%  0x3002f5f3: 44 89 e0                          movl    %r12d, %eax                   
         0x3002f5f6: 41 83 c4 08                       addl    $8, %r12d                     
         0x3002f5fa: 44 01 e8                          addl    %r13d, %eax                   
         0x3002f5fd: 83 c0 08                          addl    $8, %eax                      
  0.05%  0x3002f600: 83 f8 08                          cmpl    $8, %eax                      
         0x3002f603: c5 fb 10 4c 24 48                 vmovsd    72(%rsp), %xmm1             
         0x3002f609: 0f 85 b1 fd ff ff                 jne    -591                           ; 0x3002f3c0
         0x3002f60f: 41 83 c4 f9                       addl    $-7, %r12d                    
         0x3002f613: 45 89 e7                          movl    %r12d, %r15d                  
         0x3002f616: 48 b9 c8 f6 02 30 00 00 00 00     movabsq    $805500616, %rcx           ; 0x3002f6c8
         0x3002f620: e9 ec fc ff ff                    jmp    -788                           ; 0x3002f311
         0x3002f625: c5 e1 57 db                       vxorpd    %xmm3, %xmm3, %xmm3         
         0x3002f629: e9 42 fd ff ff                    jmp    -702                           ; 0x3002f370
         0x3002f62e: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f638: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
....................................................................................................
  8.15%  <total for region 5>

....[Hottest Regions]...............................................................................
 42.07%  [0x7f0d3e06984f:0x7f0d3e069a10] in __j__kernel_tan (libjava.so)
 15.41%  [0x7f0d3e068330:0x7f0d3e0683a8] in __j__ieee754_rem_pio2 (libjava.so)
  9.14%  [0x7f0d3e0683de:0x7f0d3e068446] in __j__ieee754_rem_pio2 (libjava.so)
  8.46%  [0x7f0d3e066aa0:0x7f0d3e066ab5] in jfabs (libjava.so)
  8.15%  [0x3002f393:0x3002f638] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking[Falcon]
  3.26%  [0x32b0e0a1:0x32b0e1b6] in java.lang.StrictMath::tan[nativewrapper]
  2.88%  [0x7f0d3e066f36:0x7f0d3e066f85] in jtan (libjava.so)
  1.30%  [0x7f0d3e068150:0x7f0d3e068169] in __j__ieee754_rem_pio2 (libjava.so)
  1.27%  [0x32b0de98:0x32b0df60] in java.lang.StrictMath::tan[nativewrapper]
  1.18%  [0x32b0de80:0x32b0dee2] in java.lang.StrictMath::tan[nativewrapper]
  0.88%  [0x7f0d3e0697a0:0x7f0d3e0697b7] in __j__kernel_tan (libjava.so)
  0.79%  [0x7f0d3e05dd80:0x7f0d3e05dd85] in Java_java_lang_StrictMath_tan (libjava.so)
  0.38%  [0x7f0d3e0682e3:0x7f0d3e0682e7] in __j__ieee754_rem_pio2 (libjava.so)
  0.34%  [0x7f0d3e0681d8:0x7f0d3e0681e1] in __j__ieee754_rem_pio2 (libjava.so)
  0.24%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.18%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9f0711f:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eef3b4:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eb93b5:0xffffffffa9eb9412] in [unknown] ([kernel.kallsyms])
  3.52%  <...other 435 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 42.95%  __j__kernel_tan (libjava.so)
 26.57%  __j__ieee754_rem_pio2 (libjava.so)
  8.46%  jfabs (libjava.so)
  8.16%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking[Falcon]
  5.72%  java.lang.StrictMath::tan[nativewrapper]
  4.09%  [unknown] ([kernel.kallsyms])
  2.88%  jtan (libjava.so)
  0.79%  Java_java_lang_StrictMath_tan (libjava.so)
  0.18%  [unknown] (libjvm.so)
  0.06%  [unknown] (liborca.so.0.0.0.0)
  0.02%  [unknown] (libc-2.31.so)
  0.02%  VMEM::get_account_usage (libaztall.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  [unknown] ([vdso])
  0.01%  _IO_default_xsputn (libc-2.31.so)
  0.01%  PMEM::account_enabled; PMEM::accounts (libaztall.so)
  0.01%  thread_stack_region_start (libazsys3.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  [unknown] (kvm.ko)
  0.01%  az_pmem_get_account_usage_tall (libaztall.so)
  0.04%  <...other 20 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 81.65%  <native code in (libjava.so)>
 13.89%  <generated code>
  4.09%  <native code in ([kernel.kallsyms])>
  0.18%  <native code in (libjvm.so)>
  0.06%  <native code in (liborca.so.0.0.0.0)>
  0.04%  <native code in (libaztall.so)>
  0.04%  <native code in (libc-2.31.so)>
  0.02%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in ([vdso])>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in (kvm.ko)>
  0.00%  <native code in (perf-144117.map)>
  0.00%  <native code in (libstdc++.so.6)>
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

Benchmark                                                               (iterations)  Mode  Cnt     Score    Error  Units
LoopInvariantCodeMotionBenchmark.initial_loop                                  16384  avgt    5  6866.579 ±  2.898  us/op
LoopInvariantCodeMotionBenchmark.initial_loop:·asm                             16384  avgt            NaN             ---
LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking              16384  avgt    5  1487.625 ± 52.317  us/op
LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking:·asm         16384  avgt            NaN             ---
