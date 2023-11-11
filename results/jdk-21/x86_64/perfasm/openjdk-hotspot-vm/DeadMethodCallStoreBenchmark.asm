# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark.method_call_baseline

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2601.094 ns/op
# Warmup Iteration   2: 2575.118 ns/op
# Warmup Iteration   3: 2573.508 ns/op
# Warmup Iteration   4: 2573.304 ns/op
# Warmup Iteration   5: 2573.330 ns/op
Iteration   1: 2573.298 ns/op
Iteration   2: 2573.281 ns/op
Iteration   3: 2573.476 ns/op
Iteration   4: 2573.307 ns/op
Iteration   5: 2573.301 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark.method_call_baseline":
  2573.333 ±(99.9%) 0.311 ns/op [Average]
  (min, avg, max) = (2573.281, 2573.333, 2573.476), stdev = 0.081
  CI (99.9%): [2573.021, 2573.644] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark.method_call_baseline:asm":
PrintAssembly processed: 121976 total address lines.
Perf output processed (skipped 56.134 seconds):
 Column 1: cycles (50380 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline, version 2, compile id 547 

                      # {method} {0x00007f59c7479820} &apos;method_call_baseline&apos; &apos;()D&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadMethodCallStoreBenchmark&apos;
                      #           [sp+0x20]  (sp of caller)
                      0x00007f5a486392c0:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                      0x00007f5a486392c4:   movabs $0x7f59cb000000,%r11
                      0x00007f5a486392ce:   add    %r11,%r10
                      0x00007f5a486392d1:   cmp    %r10,%rax
                      0x00007f5a486392d4:   jne    0x00007f5a480c4080           ;   {runtime_call ic_miss_stub}
                      0x00007f5a486392da:   xchg   %ax,%ax
                      0x00007f5a486392dc:   nopl   0x0(%rax)
                    [Verified Entry Point]
   0.01%              0x00007f5a486392e0:   sub    $0x18,%rsp
                      0x00007f5a486392e7:   mov    %rbp,0x10(%rsp)
   0.01%              0x00007f5a486392ec:   cmpl   $0x1,0x20(%r15)
          ╭           0x00007f5a486392f4:   jne    0x00007f5a486394b8           ;*synchronization entry
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@-1 (line 81)
          │        ↗  0x00007f5a486392fa:   mov    $0x5,%r9d
          │        │  0x00007f5a48639300:   vmovsd -0x68(%rip),%xmm3        # 0x00007f5a486392a0
          │        │                                                            ;   {section_word}
   0.02%  │        │  0x00007f5a48639308:   vmovsd -0x68(%rip),%xmm0        # 0x00007f5a486392a8
          │        │                                                            ;   {section_word}
          │╭       │  0x00007f5a48639310:   jmp    0x00007f5a48639327
          ││       │  0x00007f5a48639312:   data16 nopw 0x0(%rax,%rax,1)
          ││       │  0x00007f5a4863931c:   data16 data16 xchg %ax,%ax
   0.02%  ││↗      │  0x00007f5a48639320:   vaddsd %xmm1,%xmm0,%xmm0
   1.63%  │││      │  0x00007f5a48639324:   mov    %r10d,%r9d                   ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@26 (line 94)
          │││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
          │↘│      │  0x00007f5a48639327:   lea    0x1e(%r9),%r11d
          │ │      │  0x00007f5a4863932b:   lea    0x1c(%r9),%r8d
   0.04%  │ │      │  0x00007f5a4863932f:   vcvtsi2sd %r11d,%xmm1,%xmm1
   0.44%  │ │      │  0x00007f5a48639334:   vdivsd %xmm1,%xmm3,%xmm4
   5.93%  │ │      │  0x00007f5a48639338:   vcvtsi2sd %r8d,%xmm1,%xmm1
   0.04%  │ │      │  0x00007f5a4863933d:   vdivsd %xmm1,%xmm3,%xmm5
   1.73%  │ │      │  0x00007f5a48639341:   lea    0x14(%r9),%r11d
          │ │      │  0x00007f5a48639345:   lea    0xc(%r9),%r8d
   0.03%  │ │      │  0x00007f5a48639349:   vcvtsi2sd %r11d,%xmm1,%xmm1
   0.48%  │ │      │  0x00007f5a4863934e:   vdivsd %xmm1,%xmm3,%xmm6
   1.35%  │ │      │  0x00007f5a48639352:   vcvtsi2sd %r8d,%xmm1,%xmm1
   0.02%  │ │      │  0x00007f5a48639357:   vdivsd %xmm1,%xmm3,%xmm7
   1.81%  │ │      │  0x00007f5a4863935b:   lea    0x4(%r9),%r11d
          │ │      │  0x00007f5a4863935f:   lea    0x2(%r9),%r8d
   0.02%  │ │      │  0x00007f5a48639363:   vcvtsi2sd %r11d,%xmm1,%xmm1
   0.43%  │ │      │  0x00007f5a48639368:   vdivsd %xmm1,%xmm3,%xmm1
   1.38%  │ │      │  0x00007f5a4863936c:   vcvtsi2sd %r8d,%xmm2,%xmm2
   0.01%  │ │      │  0x00007f5a48639371:   vdivsd %xmm2,%xmm3,%xmm2
          │ │      │  0x00007f5a48639375:   vsubsd %xmm2,%xmm0,%xmm0
   0.44%  │ │      │  0x00007f5a48639379:   vaddsd %xmm0,%xmm1,%xmm0
   1.30%  │ │      │  0x00007f5a4863937d:   lea    0x6(%r9),%r11d
          │ │      │  0x00007f5a48639381:   lea    0x8(%r9),%r8d
          │ │      │  0x00007f5a48639385:   vcvtsi2sd %r11d,%xmm1,%xmm1
   0.46%  │ │      │  0x00007f5a4863938a:   vdivsd %xmm1,%xmm3,%xmm1
   6.07%  │ │      │  0x00007f5a4863938e:   vsubsd %xmm1,%xmm0,%xmm0
   2.04%  │ │      │  0x00007f5a48639392:   vcvtsi2sd %r8d,%xmm1,%xmm1
   0.30%  │ │      │  0x00007f5a48639397:   vdivsd %xmm1,%xmm3,%xmm1
   6.10%  │ │      │  0x00007f5a4863939b:   vaddsd %xmm1,%xmm0,%xmm0
   1.74%  │ │      │  0x00007f5a4863939f:   lea    0xa(%r9),%r11d
          │ │      │  0x00007f5a486393a3:   lea    0xe(%r9),%r8d
   0.02%  │ │      │  0x00007f5a486393a7:   vcvtsi2sd %r11d,%xmm1,%xmm1
   0.45%  │ │      │  0x00007f5a486393ac:   vdivsd %xmm1,%xmm3,%xmm1
   6.07%  │ │      │  0x00007f5a486393b0:   vsubsd %xmm1,%xmm0,%xmm0
   1.82%  │ │      │  0x00007f5a486393b4:   vaddsd %xmm0,%xmm7,%xmm0
   1.79%  │ │      │  0x00007f5a486393b8:   vcvtsi2sd %r8d,%xmm1,%xmm1
          │ │      │  0x00007f5a486393bd:   vdivsd %xmm1,%xmm3,%xmm1
   4.87%  │ │      │  0x00007f5a486393c1:   vsubsd %xmm1,%xmm0,%xmm0
   1.83%  │ │      │  0x00007f5a486393c5:   lea    0x10(%r9),%r10d
          │ │      │  0x00007f5a486393c9:   lea    0x12(%r9),%r11d
          │ │      │  0x00007f5a486393cd:   vcvtsi2sd %r10d,%xmm1,%xmm1
   0.45%  │ │      │  0x00007f5a486393d2:   vdivsd %xmm1,%xmm3,%xmm1
   5.92%  │ │      │  0x00007f5a486393d6:   vaddsd %xmm1,%xmm0,%xmm0
   2.05%  │ │      │  0x00007f5a486393da:   vcvtsi2sd %r11d,%xmm1,%xmm1
   0.25%  │ │      │  0x00007f5a486393df:   vdivsd %xmm1,%xmm3,%xmm1
   5.77%  │ │      │  0x00007f5a486393e3:   vsubsd %xmm1,%xmm0,%xmm0
   1.82%  │ │      │  0x00007f5a486393e7:   vaddsd %xmm0,%xmm6,%xmm0
   1.76%  │ │      │  0x00007f5a486393eb:   lea    0x16(%r9),%r10d
          │ │      │  0x00007f5a486393ef:   lea    0x18(%r9),%r11d
          │ │      │  0x00007f5a486393f3:   vcvtsi2sd %r10d,%xmm1,%xmm1
   0.52%  │ │      │  0x00007f5a486393f8:   vdivsd %xmm1,%xmm3,%xmm1
   4.52%  │ │      │  0x00007f5a486393fc:   vsubsd %xmm1,%xmm0,%xmm0
   2.13%  │ │      │  0x00007f5a48639400:   vcvtsi2sd %r11d,%xmm1,%xmm1
   0.23%  │ │      │  0x00007f5a48639405:   vdivsd %xmm1,%xmm3,%xmm1            ;   {no_reloc}
   5.90%  │ │      │  0x00007f5a48639409:   vaddsd %xmm1,%xmm0,%xmm0
   1.98%  │ │      │  0x00007f5a4863940d:   lea    0x1a(%r9),%r10d
          │ │      │  0x00007f5a48639411:   vcvtsi2sd %r10d,%xmm1,%xmm1
   0.11%  │ │      │  0x00007f5a48639416:   vdivsd %xmm1,%xmm3,%xmm1
   6.02%  │ │      │  0x00007f5a4863941a:   vsubsd %xmm1,%xmm0,%xmm0
   1.81%  │ │      │  0x00007f5a4863941e:   vaddsd %xmm5,%xmm0,%xmm0
   1.84%  │ │      │  0x00007f5a48639422:   vsubsd %xmm4,%xmm0,%xmm0            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │ │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@38 (line 96)
          │ │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
   1.62%  │ │      │  0x00007f5a48639426:   lea    0x20(%r9),%r10d
          │ │      │  0x00007f5a4863942a:   vcvtsi2sd %r10d,%xmm1,%xmm1
   0.02%  │ │      │  0x00007f5a4863942f:   vdivsd %xmm1,%xmm3,%xmm1            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │ │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 94)
          │ │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
   2.83%  │ │      │  0x00007f5a48639433:   nopw   0x0(%rax,%rax,1)
          │ │      │  0x00007f5a4863943c:   data16 data16 xchg %ax,%ax
          │ │      │  0x00007f5a48639440:   cmp    $0x3e2,%r10d
          │ ╰      │  0x00007f5a48639447:   jl     0x00007f5a48639320           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@12 (line 92)
          │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
          │        │  0x00007f5a4863944d:   add    $0x20,%r9d
   0.02%  │        │  0x00007f5a48639451:   mov    $0x1,%r10d                   ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 94)
          │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
          │     ↗  │  0x00007f5a48639457:   test   %r10d,%r10d
          │  ╭  │  │  0x00007f5a4863945a:   je     0x00007f5a48639462           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │  │  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@16 (line 93)
          │  │  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
          │  │  │  │  0x00007f5a4863945c:   vaddsd %xmm1,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │  │  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@26 (line 94)
          │  │  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
   0.03%  │  │╭ │  │  0x00007f5a48639460:   jmp    0x00007f5a48639466
   0.01%  │  ↘│ │  │  0x00007f5a48639462:   vsubsd %xmm1,%xmm0,%xmm0            ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │   │ │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@40 (line 98)
          │   │ │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
   0.05%  │   ↘ │  │  0x00007f5a48639466:   add    $0x2,%r9d                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │     │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 92)
          │     │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
          │     │  │  0x00007f5a4863946a:   cmp    $0x3e8,%r9d
          │    ╭│  │  0x00007f5a48639471:   jge    0x00007f5a48639482           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │    ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@12 (line 92)
          │    ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
          │    ││  │  0x00007f5a48639473:   vcvtsi2sd %r9d,%xmm1,%xmm1
   0.02%  │    ││  │  0x00007f5a48639478:   vdivsd %xmm1,%xmm3,%xmm1            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │    ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 94)
          │    ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
   0.20%  │    ││  │  0x00007f5a4863947c:   xor    $0x1,%r10d                   ;*istore_2 {reexecute=0 rethrow=0 return_oop=0}
          │    ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@49 (line 98)
          │    ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
          │    │╰  │  0x00007f5a48639480:   jmp    0x00007f5a48639457
          │    ↘   │  0x00007f5a48639482:   vmovsd 0x10(%rsi),%xmm1             ;*getfield circleRadius {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@5 (line 82)
          │        │  0x00007f5a48639487:   vmulsd %xmm1,%xmm1,%xmm1
   0.01%  │        │  0x00007f5a4863948b:   vmulsd %xmm0,%xmm1,%xmm0            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@14 (line 82)
   0.03%  │        │  0x00007f5a4863948f:   add    $0x10,%rsp
          │        │  0x00007f5a48639493:   pop    %rbp
          │       ↗│  0x00007f5a48639494:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │      ╭││  0x00007f5a4863949b:   ja     0x00007f5a486394a2
   0.02%  │      │││  0x00007f5a486394a1:   ret    
          │      ↘╰│  0x00007f5a486394a2:   movabs $0x7f5a48639494,%r10         ;   {internal_word}
          │        │  0x00007f5a486394ac:   mov    %r10,0x468(%r15)
          │        │  0x00007f5a486394b3:   jmp    0x00007f5a480cb000           ;   {runtime_call SafepointBlob}
          ↘        │  0x00007f5a486394b8:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
                   ╰  0x00007f5a486394bd:   jmp    0x00007f5a486392fa
                      0x00007f5a486394c2:   hlt    
                      0x00007f5a486394c3:   hlt    
                      0x00007f5a486394c4:   hlt    
                      0x00007f5a486394c5:   hlt    
                      0x00007f5a486394c6:   hlt    
....................................................................................................
  98.66%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.66%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline, version 2, compile id 547 
   0.34%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%                      <unknown> 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadMethodCallStoreBenchmark_method_call_baseline_jmhTest::method_call_baseline_avgt_jmhStub, version 5, compile id 578 
   0.01%              kernel  [unknown] 
   0.51%  <...other 180 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.66%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline, version 2, compile id 547 
   1.18%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadMethodCallStoreBenchmark_method_call_baseline_jmhTest::method_call_baseline_avgt_jmhStub, version 5, compile id 578 
   0.01%           libjvm.so  clock_gettime@plt 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  defaultStream::write 
   0.00%           libjvm.so  ObjectSynchronizer::is_async_deflation_needed 
   0.00%        libc-2.31.so  _IO_old_init 
   0.00%           libjvm.so  MethodMatcher::matches 
   0.00%         interpreter  invokevirtual  182 invokevirtual  
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%         interpreter  iinc  132 iinc  
   0.00%           libjvm.so  os::vsnprintf 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%        libc-2.31.so  _IO_file_sync@@GLIBC_2.2.5 
   0.00%        libc-2.31.so  _IO_setb 
   0.06%  <...other 29 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.67%         c2, level 4
   1.18%              kernel
   0.08%           libjvm.so
   0.03%        libc-2.31.so
   0.03%                    
   0.01%         interpreter
   0.00%  libpthread-2.31.so
   0.00%      hsdis-amd64.so
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark.method_call_dse

# Run progress: 50.00% complete, ETA 00:01:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2489.344 ns/op
# Warmup Iteration   2: 2456.163 ns/op
# Warmup Iteration   3: 2457.224 ns/op
# Warmup Iteration   4: 2463.544 ns/op
# Warmup Iteration   5: 2457.740 ns/op
Iteration   1: 2457.706 ns/op
Iteration   2: 2457.585 ns/op
Iteration   3: 2457.599 ns/op
Iteration   4: 2457.708 ns/op
Iteration   5: 2457.761 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark.method_call_dse":
  2457.672 ±(99.9%) 0.294 ns/op [Average]
  (min, avg, max) = (2457.585, 2457.672, 2457.761), stdev = 0.076
  CI (99.9%): [2457.378, 2457.965] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark.method_call_dse:asm":
PrintAssembly processed: 125962 total address lines.
Perf output processed (skipped 56.306 seconds):
 Column 1: cycles (50818 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse, version 2, compile id 563 

                      # {method} {0x00007f03c8479740} &apos;method_call_dse&apos; &apos;()D&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadMethodCallStoreBenchmark&apos;
                      #           [sp+0x20]  (sp of caller)
                      0x00007f044c636b40:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                      0x00007f044c636b44:   movabs $0x7f03d3000000,%r11
                      0x00007f044c636b4e:   add    %r11,%r10
                      0x00007f044c636b51:   cmp    %r10,%rax
                      0x00007f044c636b54:   jne    0x00007f044c0c4080           ;   {runtime_call ic_miss_stub}
                      0x00007f044c636b5a:   xchg   %ax,%ax
                      0x00007f044c636b5c:   nopl   0x0(%rax)
                    [Verified Entry Point]
   0.02%              0x00007f044c636b60:   sub    $0x18,%rsp
                      0x00007f044c636b67:   mov    %rbp,0x10(%rsp)
   0.01%              0x00007f044c636b6c:   cmpl   $0x1,0x20(%r15)
          ╭           0x00007f044c636b74:   jne    0x00007f044c636d38           ;*synchronization entry
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@-1 (line 70)
          │        ↗  0x00007f044c636b7a:   mov    $0x5,%r9d
          │        │  0x00007f044c636b80:   vmovsd -0x68(%rip),%xmm2        # 0x00007f044c636b20
          │        │                                                            ;   {section_word}
   0.02%  │        │  0x00007f044c636b88:   vmovsd -0x68(%rip),%xmm0        # 0x00007f044c636b28
          │        │                                                            ;   {section_word}
          │╭       │  0x00007f044c636b90:   jmp    0x00007f044c636ba7
          ││       │  0x00007f044c636b92:   data16 nopw 0x0(%rax,%rax,1)
          ││       │  0x00007f044c636b9c:   data16 data16 xchg %ax,%ax
   0.01%  ││↗      │  0x00007f044c636ba0:   vaddsd %xmm1,%xmm0,%xmm0
   1.44%  │││      │  0x00007f044c636ba4:   mov    %r10d,%r9d                   ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@26 (line 94)
          │││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
          │↘│      │  0x00007f044c636ba7:   lea    0x1e(%r9),%r11d
          │ │      │  0x00007f044c636bab:   lea    0x1a(%r9),%r8d
   0.04%  │ │      │  0x00007f044c636baf:   vcvtsi2sd %r11d,%xmm1,%xmm1
   0.48%  │ │      │  0x00007f044c636bb4:   vdivsd %xmm1,%xmm2,%xmm3
   5.22%  │ │      │  0x00007f044c636bb8:   vcvtsi2sd %r8d,%xmm1,%xmm1
   0.02%  │ │      │  0x00007f044c636bbd:   vdivsd %xmm1,%xmm2,%xmm4
   1.71%  │ │      │  0x00007f044c636bc1:   lea    0x1c(%r9),%r11d
          │ │      │  0x00007f044c636bc5:   lea    0x18(%r9),%r8d
   0.04%  │ │      │  0x00007f044c636bc9:   vcvtsi2sd %r11d,%xmm1,%xmm1
   0.42%  │ │      │  0x00007f044c636bce:   vdivsd %xmm1,%xmm2,%xmm5
   1.49%  │ │      │  0x00007f044c636bd2:   vcvtsi2sd %r8d,%xmm1,%xmm1
   0.01%  │ │      │  0x00007f044c636bd7:   vdivsd %xmm1,%xmm2,%xmm6
   1.71%  │ │      │  0x00007f044c636bdb:   lea    0x10(%r9),%r11d
          │ │      │  0x00007f044c636bdf:   lea    0x8(%r9),%r8d
   0.01%  │ │      │  0x00007f044c636be3:   vcvtsi2sd %r11d,%xmm1,%xmm1
   0.47%  │ │      │  0x00007f044c636be8:   vdivsd %xmm1,%xmm2,%xmm7
   1.62%  │ │      │  0x00007f044c636bec:   vcvtsi2sd %r8d,%xmm1,%xmm1
   0.02%  │ │      │  0x00007f044c636bf1:   vdivsd %xmm1,%xmm2,%xmm8
   1.94%  │ │      │  0x00007f044c636bf5:   lea    0x2(%r9),%r11d
          │ │      │  0x00007f044c636bf9:   lea    0x4(%r9),%r8d
   0.01%  │ │      │  0x00007f044c636bfd:   vcvtsi2sd %r11d,%xmm1,%xmm1
   0.39%  │ │      │  0x00007f044c636c02:   vdivsd %xmm1,%xmm2,%xmm1
   1.49%  │ │      │  0x00007f044c636c06:   vsubsd %xmm1,%xmm0,%xmm0
   2.00%  │ │      │  0x00007f044c636c0a:   vcvtsi2sd %r8d,%xmm1,%xmm1
   0.29%  │ │      │  0x00007f044c636c0f:   vdivsd %xmm1,%xmm2,%xmm1
   6.45%  │ │      │  0x00007f044c636c13:   vaddsd %xmm1,%xmm0,%xmm0
   1.88%  │ │      │  0x00007f044c636c17:   lea    0x6(%r9),%r11d
          │ │      │  0x00007f044c636c1b:   lea    0xa(%r9),%r8d
          │ │      │  0x00007f044c636c1f:   vcvtsi2sd %r11d,%xmm1,%xmm1
   0.45%  │ │      │  0x00007f044c636c24:   vdivsd %xmm1,%xmm2,%xmm1
   6.43%  │ │      │  0x00007f044c636c28:   vsubsd %xmm1,%xmm0,%xmm0
   1.96%  │ │      │  0x00007f044c636c2c:   vaddsd %xmm0,%xmm8,%xmm0
   1.90%  │ │      │  0x00007f044c636c30:   vcvtsi2sd %r8d,%xmm1,%xmm1
   0.02%  │ │      │  0x00007f044c636c35:   vdivsd %xmm1,%xmm2,%xmm1
   4.82%  │ │      │  0x00007f044c636c39:   vsubsd %xmm1,%xmm0,%xmm0
   1.89%  │ │      │  0x00007f044c636c3d:   lea    0xc(%r9),%r10d
   0.02%  │ │      │  0x00007f044c636c41:   lea    0xe(%r9),%r11d
          │ │      │  0x00007f044c636c45:   vcvtsi2sd %r10d,%xmm1,%xmm1
   0.44%  │ │      │  0x00007f044c636c4a:   vdivsd %xmm1,%xmm2,%xmm1
   6.43%  │ │      │  0x00007f044c636c4e:   vaddsd %xmm1,%xmm0,%xmm0
   1.77%  │ │      │  0x00007f044c636c52:   vcvtsi2sd %r11d,%xmm1,%xmm1
   0.14%  │ │      │  0x00007f044c636c57:   vdivsd %xmm1,%xmm2,%xmm1
   6.30%  │ │      │  0x00007f044c636c5b:   vsubsd %xmm1,%xmm0,%xmm0
   1.86%  │ │      │  0x00007f044c636c5f:   vaddsd %xmm0,%xmm7,%xmm0
   1.81%  │ │      │  0x00007f044c636c63:   lea    0x12(%r9),%r10d
          │ │      │  0x00007f044c636c67:   lea    0x14(%r9),%r11d
   0.01%  │ │      │  0x00007f044c636c6b:   vcvtsi2sd %r10d,%xmm1,%xmm1
   0.44%  │ │      │  0x00007f044c636c70:   vdivsd %xmm1,%xmm2,%xmm1
   4.49%  │ │      │  0x00007f044c636c74:   vsubsd %xmm1,%xmm0,%xmm0
   2.06%  │ │      │  0x00007f044c636c78:   vcvtsi2sd %r11d,%xmm1,%xmm1
   0.29%  │ │      │  0x00007f044c636c7d:   vdivsd %xmm1,%xmm2,%xmm1
   6.26%  │ │      │  0x00007f044c636c81:   vaddsd %xmm1,%xmm0,%xmm0
   1.80%  │ │      │  0x00007f044c636c85:   lea    0x16(%r9),%r10d              ;   {no_reloc}
          │ │      │  0x00007f044c636c89:   vcvtsi2sd %r10d,%xmm1,%xmm1
   0.26%  │ │      │  0x00007f044c636c8e:   vdivsd %xmm1,%xmm2,%xmm1
   6.42%  │ │      │  0x00007f044c636c92:   vsubsd %xmm1,%xmm0,%xmm0
   2.02%  │ │      │  0x00007f044c636c96:   vaddsd %xmm0,%xmm6,%xmm0
   1.81%  │ │      │  0x00007f044c636c9a:   vsubsd %xmm4,%xmm0,%xmm0
   1.81%  │ │      │  0x00007f044c636c9e:   vaddsd %xmm0,%xmm5,%xmm0
   1.92%  │ │      │  0x00007f044c636ca2:   vsubsd %xmm3,%xmm0,%xmm0            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │ │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@38 (line 96)
          │ │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
   1.89%  │ │      │  0x00007f044c636ca6:   lea    0x20(%r9),%r10d
          │ │      │  0x00007f044c636caa:   vcvtsi2sd %r10d,%xmm1,%xmm1
   0.01%  │ │      │  0x00007f044c636caf:   vdivsd %xmm1,%xmm2,%xmm1            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │ │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 94)
          │ │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
   0.47%  │ │      │  0x00007f044c636cb3:   nopw   0x0(%rax,%rax,1)
          │ │      │  0x00007f044c636cbc:   data16 data16 xchg %ax,%ax
          │ │      │  0x00007f044c636cc0:   cmp    $0x3e2,%r10d
          │ ╰      │  0x00007f044c636cc7:   jl     0x00007f044c636ba0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@12 (line 92)
          │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
          │        │  0x00007f044c636ccd:   add    $0x20,%r9d
   0.01%  │        │  0x00007f044c636cd1:   mov    $0x1,%r10d                   ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 94)
          │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
          │     ↗  │  0x00007f044c636cd7:   test   %r10d,%r10d
          │  ╭  │  │  0x00007f044c636cda:   je     0x00007f044c636ce2           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │  │  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@16 (line 93)
          │  │  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
          │  │  │  │  0x00007f044c636cdc:   vaddsd %xmm1,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │  │  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@26 (line 94)
          │  │  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
   0.03%  │  │╭ │  │  0x00007f044c636ce0:   jmp    0x00007f044c636ce6
   0.01%  │  ↘│ │  │  0x00007f044c636ce2:   vsubsd %xmm1,%xmm0,%xmm0            ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │   │ │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@40 (line 98)
          │   │ │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
   0.04%  │   ↘ │  │  0x00007f044c636ce6:   add    $0x2,%r9d                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │     │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 92)
          │     │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
          │     │  │  0x00007f044c636cea:   cmp    $0x3e8,%r9d
          │    ╭│  │  0x00007f044c636cf1:   jge    0x00007f044c636d02           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │    ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@12 (line 92)
          │    ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
          │    ││  │  0x00007f044c636cf3:   vcvtsi2sd %r9d,%xmm1,%xmm1
   0.01%  │    ││  │  0x00007f044c636cf8:   vdivsd %xmm1,%xmm2,%xmm1            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │    ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 94)
          │    ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
   0.18%  │    ││  │  0x00007f044c636cfc:   xor    $0x1,%r10d                   ;*istore_2 {reexecute=0 rethrow=0 return_oop=0}
          │    ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@49 (line 98)
          │    ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
          │    │╰  │  0x00007f044c636d00:   jmp    0x00007f044c636cd7
          │    ↘   │  0x00007f044c636d02:   vmovsd 0x10(%rsi),%xmm1             ;*getfield circleRadius {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@21 (line 75)
          │        │  0x00007f044c636d07:   vmulsd %xmm1,%xmm1,%xmm1
   0.02%  │        │  0x00007f044c636d0b:   vmulsd %xmm0,%xmm1,%xmm0            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@30 (line 75)
   0.05%  │        │  0x00007f044c636d0f:   add    $0x10,%rsp
          │        │  0x00007f044c636d13:   pop    %rbp
          │       ↗│  0x00007f044c636d14:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │      ╭││  0x00007f044c636d1b:   ja     0x00007f044c636d22
   0.01%  │      │││  0x00007f044c636d21:   ret    
          │      ↘╰│  0x00007f044c636d22:   movabs $0x7f044c636d14,%r10         ;   {internal_word}
          │        │  0x00007f044c636d2c:   mov    %r10,0x468(%r15)
          │        │  0x00007f044c636d33:   jmp    0x00007f044c0cb000           ;   {runtime_call SafepointBlob}
          ↘        │  0x00007f044c636d38:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
                   ╰  0x00007f044c636d3d:   jmp    0x00007f044c636b7a
                      0x00007f044c636d42:   hlt    
                      0x00007f044c636d43:   hlt    
                      0x00007f044c636d44:   hlt    
                      0x00007f044c636d45:   hlt    
                      0x00007f044c636d46:   hlt    
....................................................................................................
  97.80%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.80%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse, version 2, compile id 563 
   0.67%              kernel  [unknown] 
   0.45%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%                      <unknown> 
   0.02%              kernel  [unknown] 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadMethodCallStoreBenchmark_method_call_dse_jmhTest::method_call_dse_avgt_jmhStub, version 5, compile id 593 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.57%  <...other 200 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.80%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse, version 2, compile id 563 
   1.94%              kernel  [unknown] 
   0.05%                      <unknown> 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadMethodCallStoreBenchmark_method_call_dse_jmhTest::method_call_dse_avgt_jmhStub, version 5, compile id 593 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_fflush 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%      hsdis-amd64.so  print_insn 
   0.00%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.00%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.00%  libpthread-2.31.so  __libc_write 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.00%        libc-2.31.so  _IO_fwrite 
   0.00%        libc-2.31.so  __strchrnul_avx2 
   0.00%      hsdis-amd64.so  get_valid_dis386 
   0.00%        libc-2.31.so  __vfprintf_internal 
   0.00%      hsdis-amd64.so  oappend 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.09%  <...other 48 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.83%         c2, level 4
   1.94%              kernel
   0.09%           libjvm.so
   0.05%                    
   0.05%        libc-2.31.so
   0.02%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.00%          ld-2.31.so
   0.00%              [vdso]
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:03:38

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

Benchmark                                              Mode  Cnt     Score   Error  Units
DeadMethodCallStoreBenchmark.method_call_baseline      avgt    5  2573.333 ± 0.311  ns/op
DeadMethodCallStoreBenchmark.method_call_baseline:asm  avgt            NaN            ---
DeadMethodCallStoreBenchmark.method_call_dse           avgt    5  2457.672 ± 0.294  ns/op
DeadMethodCallStoreBenchmark.method_call_dse:asm       avgt            NaN            ---
