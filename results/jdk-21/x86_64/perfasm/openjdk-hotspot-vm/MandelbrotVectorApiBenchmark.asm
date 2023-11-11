# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline
# Parameters: (iterations = 1000, size = 256)

# Run progress: 0.00% complete, ETA 00:13:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 33.644 ms/op
# Warmup Iteration   2: 33.224 ms/op
# Warmup Iteration   3: 33.223 ms/op
# Warmup Iteration   4: 33.223 ms/op
# Warmup Iteration   5: 33.223 ms/op
Iteration   1: 33.223 ms/op
Iteration   2: 33.227 ms/op
Iteration   3: 33.223 ms/op
Iteration   4: 33.223 ms/op
Iteration   5: 33.223 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline":
  33.224 ±(99.9%) 0.007 ms/op [Average]
  (min, avg, max) = (33.223, 33.224, 33.227), stdev = 0.002
  CI (99.9%): [33.217, 33.230] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline:asm":
PrintAssembly processed: 181745 total address lines.
Perf output processed (skipped 57.064 seconds):
 Column 1: cycles (54437 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 8, compile id 680 

                                 0x00007fbf106443aa:   mov    $0xffffffff80000000,%rsi
                                 0x00007fbf106443b1:   vmovsd -0x61(%rip),%xmm3        # 0x00007fbf10644358
                                                                                           ;   {section_word}
                                 0x00007fbf106443b9:   vmovsd -0x81(%rip),%xmm4        # 0x00007fbf10644340
                                                                                           ;   {section_word}
                                 0x00007fbf106443c1:   xor    %r10d,%r10d                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@146 (line 91)
                                 0x00007fbf106443c4:   mov    $0x1f40,%r11d
                                 0x00007fbf106443ca:   xor    %r13d,%r13d
          ╭                      0x00007fbf106443cd:   jmp    0x00007fbf1064468c
   0.01%  │           ↗          0x00007fbf106443d2:   add    $0x4,%ecx
   0.01%  │       ↗   │          0x00007fbf106443d5:   add    $0x2,%ecx
   0.00%  │╭      │   │          0x00007fbf106443d8:   jmp    0x00007fbf106443dd
   0.00%  ││      │ ↗ │          0x00007fbf106443da:   add    $0x4,%ecx
   0.03%  │↘    ↗ │ │ │          0x00007fbf106443dd:   inc    %ecx
   0.00%  │     │ │ │ │          0x00007fbf106443df:   nop
          │ ╭   │ │ │ │          0x00007fbf106443e0:   jmp    0x00007fbf106443e8
   0.00%  │ │   │ │ │↗│          0x00007fbf106443e2:   add    $0x4,%ecx
   0.02%  │ │   │↗│ │││          0x00007fbf106443e5:   add    $0x2,%ecx                    ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          │ │   │││ │││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   0.05%  │ ↘  ↗│││ │││  ↗↗↗  ↗  0x00007fbf106443e8:   movslq %ebx,%rdi
   0.00%  │    ││││ │││  │││  │  0x00007fbf106443eb:   add    %rax,%rdi                    ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │    ││││ │││  │││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@172 (line 92)
   0.01%  │    ││││ │││  │││  │  0x00007fbf106443ee:   cmp    %r9d,%ecx
          │  ╭ ││││ │││  │││  │  0x00007fbf106443f1:   jge    0x00007fbf10644658           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││││ │││  │││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@155 (line 92)
   0.01%  │  │ ││││ │││  │││  │  0x00007fbf106443f7:   mov    %r12,0x10(%rbp,%rdi,8)       ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││││ │││  │││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@194 (line 80)
   0.08%  │  │ ││││ │││  │││ ↗│  0x00007fbf106443fc:   mov    0x458(%r15),%rcx
          │  │ ││││ │││  │││ ││  0x00007fbf10644403:   inc    %ebx                         ; ImmutableOopMap {rbp=Oop xmm0=Oop }
          │  │ ││││ │││  │││ ││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │  │ ││││ │││  │││ ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@194 (line 80)
          │  │ ││││ │││  │││ ││  0x00007fbf10644405:   test   %eax,(%rcx)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││││ │││  │││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@194 (line 80)
          │  │ ││││ │││  │││ ││                                                            ;   {poll}
   0.02%  │  │ ││││ │││  │││ ││  0x00007fbf10644407:   cmp    %edx,%ebx
          │  │╭││││ │││  │││ ││  0x00007fbf10644409:   jge    0x00007fbf1064466d           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │  ││││││ │││  │││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@26 (line 81)
   0.08%  │  ││││││ │││  │││ ││  0x00007fbf1064440f:   test   %r9d,%r9d
          │  ││││││ │││  │││ ││  0x00007fbf10644412:   jle    0x00007fbf10644725           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │  ││││││ │││  │││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@90 (line 85)
          │  ││││││ │││  │││ ││  0x00007fbf10644418:   vcvtsi2sd %ebx,%xmm1,%xmm1
   0.01%  │  ││││││ │││  │││ ││  0x00007fbf1064441c:   vsubsd %xmm6,%xmm1,%xmm1
   0.07%  │  ││││││ │││  │││ ││  0x00007fbf10644420:   vmulsd -0xe8(%rip),%xmm1,%xmm1        # 0x00007fbf10644340
          │  ││││││ │││  │││ ││                                                            ;   {section_word}
   0.02%  │  ││││││ │││  │││ ││  0x00007fbf10644428:   vdivsd %xmm5,%xmm1,%xmm10           ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │  ││││││ │││  │││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@48 (line 81)
   0.61%  │  ││││││ │││  │││ ││  0x00007fbf1064442c:   vaddsd -0xec(%rip),%xmm10,%xmm12        # 0x00007fbf10644348
          │  ││││││ │││  │││ ││                                                            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││││││ │││  │││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
          │  ││││││ │││  │││ ││                                                            ;   {section_word}
   0.24%  │  ││││││ │││  │││ ││  0x00007fbf10644434:   vmulsd %xmm12,%xmm12,%xmm13
   0.23%  │  ││││││ │││  │││ ││  0x00007fbf10644439:   nopl   0x0(%rax)
          │  ││││││ │││  │││ ││  0x00007fbf10644440:   cmp    $0x1,%r8d
          │  ││││││ │││  │││ ││  0x00007fbf10644444:   jle    0x00007fbf1064474f
          │  ││││││ │││  │││ ││  0x00007fbf1064444a:   vmovapd %xmm8,%xmm11
          │  ││││││ │││  │││ ││  0x00007fbf1064444f:   vmovapd %xmm9,%xmm1
   0.06%  │  ││││││ │││  │││ ││  0x00007fbf10644454:   mov    $0x1,%ecx
          │  ││││││ │││ ↗│││ ││  0x00007fbf10644459:   mov    %r8d,%edi
          │  ││││││ │││ ││││ ││  0x00007fbf1064445c:   sub    %ecx,%edi
          │  ││││││ │││ ││││ ││  0x00007fbf1064445e:   cmp    %ecx,%r8d
   0.08%  │  ││││││ │││ ││││ ││  0x00007fbf10644461:   cmovl  %r10d,%edi
          │  ││││││ │││ ││││ ││  0x00007fbf10644465:   cmp    $0x1f40,%edi
          │  ││││││ │││ ││││ ││  0x00007fbf1064446b:   cmova  %r11d,%edi
   0.09%  │  ││││││ │││ ││││ ││  0x00007fbf1064446f:   add    %ecx,%edi                    ;*dload {reexecute=0 rethrow=0 return_oop=0}
          │  ││││││ │││ ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@93 (line 85)
          │  ││││││ │││↗││││ ││  0x00007fbf10644471:   vaddsd %xmm1,%xmm13,%xmm2
   3.26%  │  ││││││ ││││││││ ││  0x00007fbf10644475:   vucomisd %xmm2,%xmm4
   1.73%  │  ││╰│││ ││││││││ ││  0x00007fbf10644479:   jb     0x00007fbf106443e8           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          │  ││ │││ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   1.00%  │  ││ │││ ││││││││ ││  0x00007fbf1064447f:   vsubsd %xmm1,%xmm13,%xmm1
   0.00%  │  ││ │││ ││││││││ ││  0x00007fbf10644483:   vaddsd %xmm12,%xmm12,%xmm2
          │  ││ │││ ││││││││ ││  0x00007fbf10644488:   vaddsd %xmm10,%xmm1,%xmm13          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││ │││ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   1.57%  │  ││ │││ ││││││││ ││  0x00007fbf1064448d:   vmulsd %xmm11,%xmm2,%xmm1
   0.07%  │  ││ │││ ││││││││ ││  0x00007fbf10644492:   vmulsd %xmm13,%xmm13,%xmm2          ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │  ││ │││ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 85)
   3.80%  │  ││ │││ ││││││││ ││  0x00007fbf10644497:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││ │││ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
          │  ││ │││ ││││││││ ││  0x00007fbf1064449b:   vmulsd %xmm1,%xmm1,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │  ││ │││ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@102 (line 85)
   0.62%  │  ││ │││ ││││││││ ││  0x00007fbf1064449f:   vaddsd %xmm11,%xmm2,%xmm12
   3.30%  │  ││ │││ ││││││││ ││  0x00007fbf106444a4:   vucomisd %xmm12,%xmm4
   1.64%  │  ││ ╰││ ││││││││ ││  0x00007fbf106444a9:   jb     0x00007fbf106443dd           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          │  ││  ││ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   0.86%  │  ││  ││ ││││││││ ││  0x00007fbf106444af:   vsubsd %xmm11,%xmm2,%xmm2
          │  ││  ││ ││││││││ ││  0x00007fbf106444b4:   vaddsd %xmm13,%xmm13,%xmm11
          │  ││  ││ ││││││││ ││  0x00007fbf106444b9:   vmulsd %xmm1,%xmm11,%xmm1
          │  ││  ││ ││││││││ ││  0x00007fbf106444bd:   vaddsd %xmm10,%xmm2,%xmm2           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││  ││ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   1.26%  │  ││  ││ ││││││││ ││  0x00007fbf106444c2:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││  ││ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
   0.35%  │  ││  ││ ││││││││ ││  0x00007fbf106444c6:   vmulsd %xmm2,%xmm2,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │  ││  ││ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 85)
   2.95%  │  ││  ││ ││││││││ ││  0x00007fbf106444ca:   vmulsd %xmm1,%xmm1,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │  ││  ││ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@102 (line 85)
   0.40%  │  ││  ││ ││││││││ ││  0x00007fbf106444ce:   vaddsd %xmm12,%xmm11,%xmm13
   3.57%  │  ││  ││ ││││││││ ││  0x00007fbf106444d3:   vucomisd %xmm13,%xmm4
   1.67%  │  ││  ╰│ ││││││││ ││  0x00007fbf106444d8:   jb     0x00007fbf106443e5           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          │  ││   │ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   0.86%  │  ││   │ ││││││││ ││  0x00007fbf106444de:   vsubsd %xmm12,%xmm11,%xmm11
   0.01%  │  ││   │ ││││││││ ││  0x00007fbf106444e3:   vaddsd %xmm2,%xmm2,%xmm2
          │  ││   │ ││││││││ ││  0x00007fbf106444e7:   vmulsd %xmm1,%xmm2,%xmm1
          │  ││   │ ││││││││ ││  0x00007fbf106444eb:   vaddsd %xmm10,%xmm11,%xmm2          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││   │ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   1.26%  │  ││   │ ││││││││ ││  0x00007fbf106444f0:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││   │ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
   0.67%  │  ││   │ ││││││││ ││  0x00007fbf106444f4:   vmulsd %xmm2,%xmm2,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │  ││   │ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 85)
   2.67%  │  ││   │ ││││││││ ││  0x00007fbf106444f8:   vmulsd %xmm1,%xmm1,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │  ││   │ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@102 (line 85)
   0.63%  │  ││   │ ││││││││ ││  0x00007fbf106444fc:   vaddsd %xmm12,%xmm11,%xmm13
   3.30%  │  ││   │ ││││││││ ││  0x00007fbf10644501:   vucomisd %xmm13,%xmm4
   1.65%  │  ││   ╰ ││││││││ ││  0x00007fbf10644506:   jb     0x00007fbf106443d5           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          │  ││     ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   0.78%  │  ││     ││││││││ ││  0x00007fbf1064450c:   vsubsd %xmm12,%xmm11,%xmm11
   0.00%  │  ││     ││││││││ ││  0x00007fbf10644511:   vaddsd %xmm2,%xmm2,%xmm2
          │  ││     ││││││││ ││  0x00007fbf10644515:   vmulsd %xmm1,%xmm2,%xmm1
          │  ││     ││││││││ ││  0x00007fbf10644519:   vaddsd %xmm10,%xmm11,%xmm2          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││     ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   1.24%  │  ││     ││││││││ ││  0x00007fbf1064451e:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││     ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
   0.64%  │  ││     ││││││││ ││  0x00007fbf10644522:   vmulsd %xmm2,%xmm2,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │  ││     ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 85)
   2.67%  │  ││     ││││││││ ││  0x00007fbf10644526:   vmulsd %xmm1,%xmm1,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │  ││     ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@102 (line 85)
   0.63%  │  ││     ││││││││ ││  0x00007fbf1064452a:   vaddsd %xmm12,%xmm11,%xmm13         ;   {no_reloc}
   3.28%  │  ││     ││││││││ ││  0x00007fbf1064452f:   vucomisd %xmm13,%xmm4
   1.61%  │  ││    ╭││││││││ ││  0x00007fbf10644534:   jb     0x00007fbf10644665           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   0.78%  │  ││    │││││││││ ││  0x00007fbf1064453a:   vsubsd %xmm12,%xmm11,%xmm11
   0.00%  │  ││    │││││││││ ││  0x00007fbf1064453f:   vaddsd %xmm2,%xmm2,%xmm2
          │  ││    │││││││││ ││  0x00007fbf10644543:   vmulsd %xmm1,%xmm2,%xmm1
          │  ││    │││││││││ ││  0x00007fbf10644547:   vaddsd %xmm10,%xmm11,%xmm2          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   1.32%  │  ││    │││││││││ ││  0x00007fbf1064454c:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
   0.57%  │  ││    │││││││││ ││  0x00007fbf10644550:   vmulsd %xmm2,%xmm2,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 85)
   2.63%  │  ││    │││││││││ ││  0x00007fbf10644554:   vmulsd %xmm1,%xmm1,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@102 (line 85)
   0.56%  │  ││    │││││││││ ││  0x00007fbf10644558:   vaddsd %xmm12,%xmm11,%xmm13
   3.46%  │  ││    │││││││││ ││  0x00007fbf1064455d:   data16 xchg %ax,%ax
          │  ││    │││││││││ ││  0x00007fbf10644560:   vucomisd %xmm13,%xmm4
   1.52%  │  ││    │╰│││││││ ││  0x00007fbf10644565:   jb     0x00007fbf106443da           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │ │││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   0.82%  │  ││    │ │││││││ ││  0x00007fbf1064456b:   vsubsd %xmm12,%xmm11,%xmm11
   0.00%  │  ││    │ │││││││ ││  0x00007fbf10644570:   vaddsd %xmm2,%xmm2,%xmm2
          │  ││    │ │││││││ ││  0x00007fbf10644574:   vmulsd %xmm1,%xmm2,%xmm1
          │  ││    │ │││││││ ││  0x00007fbf10644578:   vaddsd %xmm10,%xmm11,%xmm2          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │ │││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   1.77%  │  ││    │ │││││││ ││  0x00007fbf1064457d:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │ │││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
   0.37%  │  ││    │ │││││││ ││  0x00007fbf10644581:   vmulsd %xmm2,%xmm2,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │ │││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 85)
   2.96%  │  ││    │ │││││││ ││  0x00007fbf10644585:   vmulsd %xmm1,%xmm1,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │ │││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@102 (line 85)
   0.43%  │  ││    │ │││││││ ││  0x00007fbf10644589:   vaddsd %xmm12,%xmm11,%xmm13
   3.19%  │  ││    │ │││││││ ││  0x00007fbf1064458e:   vucomisd %xmm13,%xmm4
   1.61%  │  ││    │ ╰││││││ ││  0x00007fbf10644593:   jb     0x00007fbf106443e2           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │  ││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   0.79%  │  ││    │  ││││││ ││  0x00007fbf10644599:   vsubsd %xmm12,%xmm11,%xmm11
   0.00%  │  ││    │  ││││││ ││  0x00007fbf1064459e:   vaddsd %xmm2,%xmm2,%xmm2
          │  ││    │  ││││││ ││  0x00007fbf106445a2:   vmulsd %xmm1,%xmm2,%xmm1
          │  ││    │  ││││││ ││  0x00007fbf106445a6:   vaddsd %xmm10,%xmm11,%xmm2          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │  ││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   1.49%  │  ││    │  ││││││ ││  0x00007fbf106445ab:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │  ││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
   0.40%  │  ││    │  ││││││ ││  0x00007fbf106445af:   vmulsd %xmm2,%xmm2,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │  ││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 85)
   2.94%  │  ││    │  ││││││ ││  0x00007fbf106445b3:   vmulsd %xmm1,%xmm1,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │  ││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@102 (line 85)
   0.44%  │  ││    │  ││││││ ││  0x00007fbf106445b7:   vaddsd %xmm12,%xmm11,%xmm13
   3.41%  │  ││    │  ││││││ ││  0x00007fbf106445bc:   nopl   0x0(%rax)
          │  ││    │  ││││││ ││  0x00007fbf106445c0:   vucomisd %xmm13,%xmm4
   1.50%  │  ││    │  ╰│││││ ││  0x00007fbf106445c5:   jb     0x00007fbf106443d2           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │   │││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   0.77%  │  ││    │   │││││ ││  0x00007fbf106445cb:   vsubsd %xmm12,%xmm11,%xmm11
   0.00%  │  ││    │   │││││ ││  0x00007fbf106445d0:   vaddsd %xmm2,%xmm2,%xmm2
          │  ││    │   │││││ ││  0x00007fbf106445d4:   vmulsd %xmm1,%xmm2,%xmm1
          │  ││    │   │││││ ││  0x00007fbf106445d8:   vaddsd %xmm10,%xmm11,%xmm12         ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │   │││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   1.75%  │  ││    │   │││││ ││  0x00007fbf106445dd:   vaddsd %xmm7,%xmm1,%xmm11           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │   │││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
   0.35%  │  ││    │   │││││ ││  0x00007fbf106445e1:   vmulsd %xmm12,%xmm12,%xmm13         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │   │││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 85)
   2.88%  │  ││    │   │││││ ││  0x00007fbf106445e6:   vmulsd %xmm11,%xmm11,%xmm1          ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │   │││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@102 (line 85)
   0.37%  │  ││    │   │││││ ││  0x00007fbf106445eb:   add    $0x8,%ecx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │   │││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@143 (line 90)
          │  ││    │   │││││ ││  0x00007fbf106445ee:   cmp    %edi,%ecx
          │  ││    │   ╰││││ ││  0x00007fbf106445f0:   jl     0x00007fbf10644471           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │    ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@90 (line 85)
          │  ││    │    ││││ ││  0x00007fbf106445f6:   mov    0x458(%r15),%r14             ; ImmutableOopMap {rbp=Oop xmm0=Oop }
          │  ││    │    ││││ ││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │  ││    │    ││││ ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@146 (line 91)
   0.00%  │  ││    │    ││││ ││  0x00007fbf106445fd:   test   %eax,(%r14)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │    ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@146 (line 91)
          │  ││    │    ││││ ││                                                            ;   {poll}
   0.00%  │  ││    │    ││││ ││  0x00007fbf10644600:   cmp    %r8d,%ecx
          │  ││    │    ╰│││ ││  0x00007fbf10644603:   jl     0x00007fbf10644459
          │  ││    │     │││ ││  0x00007fbf10644609:   cmp    %r9d,%ecx
          │  ││    │     ╰││ ││  0x00007fbf1064460c:   jge    0x00007fbf106443e8
          │  ││    │      ││ ││  0x00007fbf10644612:   xchg   %ax,%ax                      ;*dload {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@93 (line 85)
   0.00%  │  ││    │      ││↗││  0x00007fbf10644614:   vaddsd %xmm1,%xmm13,%xmm2
   0.20%  │  ││    │      │││││  0x00007fbf10644618:   nopl   0x0(%rax,%rax,1)
          │  ││    │      │││││  0x00007fbf10644620:   vucomisd %xmm2,%xmm4
   0.09%  │  ││    │      ╰││││  0x00007fbf10644624:   jb     0x00007fbf106443e8           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │       ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   0.05%  │  ││    │       ││││  0x00007fbf1064462a:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │       ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@143 (line 90)
   0.00%  │  ││    │       ││││  0x00007fbf1064462c:   cmp    %r9d,%ecx
          │  ││    │       ╰│││  0x00007fbf1064462f:   jge    0x00007fbf106443e8           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@90 (line 85)
          │  ││    │        │││  0x00007fbf10644635:   vsubsd %xmm1,%xmm13,%xmm1
          │  ││    │        │││  0x00007fbf10644639:   vaddsd %xmm12,%xmm12,%xmm2
   0.03%  │  ││    │        │││  0x00007fbf1064463e:   vaddsd %xmm10,%xmm1,%xmm12          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   0.01%  │  ││    │        │││  0x00007fbf10644643:   vmulsd %xmm11,%xmm2,%xmm1
          │  ││    │        │││  0x00007fbf10644648:   vmulsd %xmm12,%xmm12,%xmm13         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 85)
   0.14%  │  ││    │        │││  0x00007fbf1064464d:   vaddsd %xmm7,%xmm1,%xmm11           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
          │  ││    │        │││  0x00007fbf10644651:   vmulsd %xmm11,%xmm11,%xmm1          ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@102 (line 85)
   0.02%  │  ││    │        ╰││  0x00007fbf10644656:   jmp    0x00007fbf10644614
          │  ↘│    │         ││  0x00007fbf10644658:   vmovsd %xmm3,0x10(%rbp,%rdi,8)      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │   │    │         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@190 (line 93)
          │   │    │         ││  0x00007fbf1064465e:   xchg   %ax,%ax
          │   │    │         ╰│  0x00007fbf10644660:   jmp    0x00007fbf106443fc
   0.01%  │   │    ↘          │  0x00007fbf10644665:   add    $0x4,%ecx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │   │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@143 (line 90)
   0.00%  │   │               ╰  0x00007fbf10644668:   jmp    0x00007fbf106443e8           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@200 (line 79)
          │   ↘                  0x00007fbf1064466d:   mov    0x458(%r15),%r8
          │                      0x00007fbf10644674:   vmovq  %xmm0,%r9
          │                      0x00007fbf10644679:   mov    0xc(%r9),%edx                ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@8 (line 79)
          │                      0x00007fbf1064467d:   inc    %r13d                        ; ImmutableOopMap {xmm0=Oop }
          │                                                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@200 (line 79)
   0.00%  │                      0x00007fbf10644680:   test   %eax,(%r8)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@200 (line 79)
          │                                                                                ;   {poll}
          │                      0x00007fbf10644683:   cmp    %edx,%r13d
          │                      0x00007fbf10644686:   jge    0x00007fbf1064472c           ;*iconst_0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@14 (line 80)
          ↘                      0x00007fbf1064468c:   test   %edx,%edx
                                 0x00007fbf1064468e:   jle    0x00007fbf1064466d           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@23 (line 80)
....................................................................................................
  91.32%  <total for region 1>

....[Hottest Regions]...............................................................................
  91.32%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 8, compile id 680 
   0.60%              kernel  [unknown] 
   0.54%              kernel  [unknown] 
   0.45%              kernel  [unknown] 
   0.40%              kernel  [unknown] 
   0.31%              kernel  [unknown] 
   0.25%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.11%           libjvm.so  ElfSymbolTable::lookup 
   0.11%         interpreter  aload  25 aload  
   0.10%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.09%         interpreter  invokevirtual  182 invokevirtual  
   0.08%         interpreter  return entry points  
   0.07%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.06%              kernel  [unknown] 
   0.05%          ld-2.31.so  __tls_get_addr 
   0.05%           libjvm.so  MethodMatcher::matches 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   5.13%  <...other 1208 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  91.33%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 8, compile id 680 
   5.11%              kernel  [unknown] 
   0.21%                      <unknown> 
   0.13%         interpreter  invokevirtual  182 invokevirtual  
   0.11%           libjvm.so  ElfSymbolTable::lookup 
   0.11%         interpreter  aload  25 aload  
   0.10%         interpreter  return entry points  
   0.10%        libc-2.31.so  __vfprintf_internal 
   0.09%           libjvm.so  xmlStream::write_text 
   0.08%    perf-1940236.map  [unknown] 
   0.07%        libc-2.31.so  _IO_fwrite 
   0.07%           libjvm.so  defaultStream::write 
   0.07%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.06%  libpthread-2.31.so  __libc_write 
   0.06%        libc-2.31.so  _IO_default_xsputn 
   0.06%           libjvm.so  MethodMatcher::matches 
   0.05%         interpreter  method entry point (kind = zerolocals)  
   0.05%          ld-2.31.so  __tls_get_addr 
   0.05%         interpreter  getstatic  178 getstatic  
   0.04%        libc-2.31.so  __strchrnul_avx2 
   2.05%  <...other 497 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  91.47%         c2, level 4
   5.11%              kernel
   1.39%           libjvm.so
   0.79%         interpreter
   0.64%        libc-2.31.so
   0.21%                    
   0.12%  libpthread-2.31.so
   0.08%      hsdis-amd64.so
   0.08%    perf-1940236.map
   0.05%          ld-2.31.so
   0.03%         c1, level 3
   0.01%         c1, level 2
   0.01%              [vdso]
   0.01%    Unknown, level 0
   0.00%         c1, level 1
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline
# Parameters: (iterations = 1000, size = 512)

# Run progress: 12.50% complete, ETA 00:13:18
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 131.452 ms/op
# Warmup Iteration   2: 130.176 ms/op
# Warmup Iteration   3: 130.147 ms/op
# Warmup Iteration   4: 130.154 ms/op
# Warmup Iteration   5: 130.147 ms/op
Iteration   1: 130.154 ms/op
Iteration   2: 130.152 ms/op
Iteration   3: 130.153 ms/op
Iteration   4: 130.151 ms/op
Iteration   5: 130.151 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline":
  130.152 ±(99.9%) 0.005 ms/op [Average]
  (min, avg, max) = (130.151, 130.152, 130.154), stdev = 0.001
  CI (99.9%): [130.147, 130.157] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline:asm":
PrintAssembly processed: 182831 total address lines.
Perf output processed (skipped 57.051 seconds):
 Column 1: cycles (55109 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 6, compile id 670 

                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@11 (line 79)
                          0x00007f78a46418a9:   vmovsd -0x59(%rip),%xmm3        # 0x00007f78a4641858
                                                                                    ;   {section_word}
                          0x00007f78a46418b1:   vmovsd -0x79(%rip),%xmm4        # 0x00007f78a4641840
                                                                                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@146 (line 91)
                                                                                    ;   {section_word}
                          0x00007f78a46418b9:   mov    $0xfa0,%r14d
                          0x00007f78a46418bf:   xor    %edx,%edx
                          0x00007f78a46418c1:   jmp    0x00007f78a4641aae
   0.01%        ↗         0x00007f78a46418c6:   add    $0x2,%ebp
   0.06%      ↗ │         0x00007f78a46418c9:   inc    %ebp
   0.00%  ╭   │ │         0x00007f78a46418cb:   jmp    0x00007f78a46418d0
   0.02%  │   │↗│         0x00007f78a46418cd:   add    $0x2,%ebp                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │   │││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@143 (line 90)
   0.07%  ↘  ↗│││         0x00007f78a46418d0:   vmovq  %xmm0,%rsi                   ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
             ││││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   0.02%     ││││  ↗↗↗    0x00007f78a46418d5:   cmp    %ecx,%ebp
           ╭ ││││  │││    0x00007f78a46418d7:   jge    0x00007f78a4641a89           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │ ││││  │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@155 (line 92)
           │ ││││  │││    0x00007f78a46418dd:   mov    %r12,0x10(%r10,%r11,8)       ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │ ││││  │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@194 (line 80)
   0.01%   │ ││││  │││ ↗  0x00007f78a46418e2:   mov    0x458(%r15),%r11             ; ImmutableOopMap {r10=Oop rsi=Oop }
           │ ││││  │││ │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
           │ ││││  │││ │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@194 (line 80)
   0.04%   │ ││││  │││ │  0x00007f78a46418e9:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │ ││││  │││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@194 (line 80)
           │ ││││  │││ │                                                            ;   {poll}
   0.02%   │ ││││  │││ │  0x00007f78a46418ec:   cmp    %r8d,%ebx
           │╭││││  │││ │  0x00007f78a46418ef:   jge    0x00007f78a4641a95           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           ││││││  │││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@23 (line 80)
           ││││││  │││ │  0x00007f78a46418f5:   mov    %ebx,%edi                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
           ││││││  │││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@26 (line 81)
   0.02%   ││││││  │││ │  0x00007f78a46418f7:   movslq %edi,%r11
   0.03%   ││││││  │││ │  0x00007f78a46418fa:   add    %r13,%r11                    ;*dastore {reexecute=0 rethrow=0 return_oop=0}
           ││││││  │││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@172 (line 92)
   0.01%   ││││││  │││ │  0x00007f78a46418fd:   mov    %edi,%ebx
           ││││││  │││ │  0x00007f78a46418ff:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││││││  │││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@191 (line 80)
   0.02%   ││││││  │││ │  0x00007f78a4641901:   test   %ecx,%ecx
           ││││││  │││ │  0x00007f78a4641903:   jle    0x00007f78a4641b45           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           ││││││  │││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@90 (line 85)
   0.07%   ││││││  │││ │  0x00007f78a4641909:   vcvtsi2sd %edi,%xmm0,%xmm0
   0.01%   ││││││  │││ │  0x00007f78a464190d:   vsubsd %xmm6,%xmm0,%xmm0
   0.02%   ││││││  │││ │  0x00007f78a4641911:   vmulsd -0xd9(%rip),%xmm0,%xmm0        # 0x00007f78a4641840
           ││││││  │││ │                                                            ;   {section_word}
   0.08%   ││││││  │││ │  0x00007f78a4641919:   vdivsd %xmm5,%xmm0,%xmm10           ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
           ││││││  │││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@48 (line 81)
   0.14%   ││││││  │││ │  0x00007f78a464191d:   vaddsd -0xdd(%rip),%xmm10,%xmm12        # 0x00007f78a4641848
           ││││││  │││ │                                                            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           ││││││  │││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
           ││││││  │││ │                                                            ;   {section_word}
   0.03%   ││││││  │││ │  0x00007f78a4641925:   vmulsd %xmm12,%xmm12,%xmm13         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           ││││││  │││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 85)
   0.04%   ││││││  │││ │  0x00007f78a464192a:   cmp    $0x1,%r9d
           ││││││  │││ │  0x00007f78a464192e:   jle    0x00007f78a4641b6a
   0.06%   ││││││  │││ │  0x00007f78a4641934:   vmovq  %rsi,%xmm0
           ││││││  │││ │  0x00007f78a4641939:   vmovapd %xmm8,%xmm11
           ││││││  │││ │  0x00007f78a464193e:   vmovapd %xmm9,%xmm1
   0.02%   ││││││  │││ │  0x00007f78a4641943:   mov    $0x1,%ebp
   0.04%   ││││││ ↗│││ │  0x00007f78a4641948:   mov    %r9d,%eax
           ││││││ ││││ │  0x00007f78a464194b:   sub    %ebp,%eax
           ││││││ ││││ │  0x00007f78a464194d:   xor    %esi,%esi
   0.03%   ││││││ ││││ │  0x00007f78a464194f:   cmp    %ebp,%r9d
   0.05%   ││││││ ││││ │  0x00007f78a4641952:   cmovl  %esi,%eax
           ││││││ ││││ │  0x00007f78a4641955:   cmp    $0xfa0,%eax
           ││││││ ││││ │  0x00007f78a464195a:   cmova  %r14d,%eax
   0.05%   ││││││ ││││ │  0x00007f78a464195e:   add    %ebp,%eax                    ;*dload {reexecute=0 rethrow=0 return_oop=0}
           ││││││ ││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@93 (line 85)
   1.15%   ││││││↗││││ │  0x00007f78a4641960:   vaddsd %xmm13,%xmm1,%xmm2
   5.70%   │││││││││││ │  0x00007f78a4641965:   vucomisd %xmm2,%xmm4
   3.22%   ││╰││││││││ │  0x00007f78a4641969:   jb     0x00007f78a46418d0           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
           ││ ││││││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   1.98%   ││ ││││││││ │  0x00007f78a464196f:   vsubsd %xmm1,%xmm13,%xmm1
   0.01%   ││ ││││││││ │  0x00007f78a4641973:   vaddsd %xmm12,%xmm12,%xmm2
           ││ ││││││││ │  0x00007f78a4641978:   vaddsd %xmm10,%xmm1,%xmm13          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           ││ ││││││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   2.38%   ││ ││││││││ │  0x00007f78a464197d:   vmulsd %xmm2,%xmm11,%xmm1
   0.22%   ││ ││││││││ │  0x00007f78a4641981:   vmulsd %xmm13,%xmm13,%xmm2          ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           ││ ││││││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 85)
   6.67%   ││ ││││││││ │  0x00007f78a4641986:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           ││ ││││││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
           ││ ││││││││ │  0x00007f78a464198a:   vmulsd %xmm1,%xmm1,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           ││ ││││││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@102 (line 85)
   1.18%   ││ ││││││││ │  0x00007f78a464198e:   vaddsd %xmm11,%xmm2,%xmm12
   6.73%   ││ ││││││││ │  0x00007f78a4641993:   vucomisd %xmm12,%xmm4
   3.42%   ││ ╰│││││││ │  0x00007f78a4641998:   jb     0x00007f78a46418c9           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
           ││  │││││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   1.70%   ││  │││││││ │  0x00007f78a464199e:   vsubsd %xmm11,%xmm2,%xmm2
   0.01%   ││  │││││││ │  0x00007f78a46419a3:   vaddsd %xmm13,%xmm13,%xmm11
   0.00%   ││  │││││││ │  0x00007f78a46419a8:   vmulsd %xmm1,%xmm11,%xmm1
           ││  │││││││ │  0x00007f78a46419ac:   vaddsd %xmm10,%xmm2,%xmm2           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           ││  │││││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   2.83%   ││  │││││││ │  0x00007f78a46419b1:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           ││  │││││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
   0.97%   ││  │││││││ │  0x00007f78a46419b5:   vmulsd %xmm2,%xmm2,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           ││  │││││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 85)
   5.91%   ││  │││││││ │  0x00007f78a46419b9:   vmulsd %xmm1,%xmm1,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           ││  │││││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@102 (line 85)
   0.83%   ││  │││││││ │  0x00007f78a46419bd:   vaddsd %xmm12,%xmm11,%xmm13
   6.71%   ││  │││││││ │  0x00007f78a46419c2:   vucomisd %xmm13,%xmm4
   3.29%   ││  ╰││││││ │  0x00007f78a46419c7:   jb     0x00007f78a46418cd           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
           ││   ││││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   1.67%   ││   ││││││ │  0x00007f78a46419cd:   vsubsd %xmm12,%xmm11,%xmm11
   0.01%   ││   ││││││ │  0x00007f78a46419d2:   vaddsd %xmm2,%xmm2,%xmm2
           ││   ││││││ │  0x00007f78a46419d6:   vmulsd %xmm1,%xmm2,%xmm1
           ││   ││││││ │  0x00007f78a46419da:   vaddsd %xmm10,%xmm11,%xmm2          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           ││   ││││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   2.81%   ││   ││││││ │  0x00007f78a46419df:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           ││   ││││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
   1.10%   ││   ││││││ │  0x00007f78a46419e3:   vmulsd %xmm2,%xmm2,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           ││   ││││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 85)
   5.56%   ││   ││││││ │  0x00007f78a46419e7:   vmulsd %xmm1,%xmm1,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           ││   ││││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@102 (line 85)
   1.12%   ││   ││││││ │  0x00007f78a46419eb:   vaddsd %xmm12,%xmm11,%xmm13
   6.95%   ││   ││││││ │  0x00007f78a46419f0:   vucomisd %xmm13,%xmm4
   3.27%   ││   ╰│││││ │  0x00007f78a46419f5:   jb     0x00007f78a46418c6           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
           ││    │││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   1.75%   ││    │││││ │  0x00007f78a46419fb:   vsubsd %xmm12,%xmm11,%xmm11
           ││    │││││ │  0x00007f78a4641a00:   vaddsd %xmm2,%xmm2,%xmm2
   0.00%   ││    │││││ │  0x00007f78a4641a04:   vmulsd %xmm1,%xmm2,%xmm1
           ││    │││││ │  0x00007f78a4641a08:   vaddsd %xmm10,%xmm11,%xmm12         ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           ││    │││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   2.89%   ││    │││││ │  0x00007f78a4641a0d:   vaddsd %xmm7,%xmm1,%xmm11           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           ││    │││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
   0.77%   ││    │││││ │  0x00007f78a4641a11:   vmulsd %xmm12,%xmm12,%xmm13         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           ││    │││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 85)
   5.73%   ││    │││││ │  0x00007f78a4641a16:   vmulsd %xmm11,%xmm11,%xmm1          ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           ││    │││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@102 (line 85)
   0.88%   ││    │││││ │  0x00007f78a4641a1b:   add    $0x4,%ebp                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││    │││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@143 (line 90)
           ││    │││││ │                                                            ;   {no_reloc}
           ││    │││││ │  0x00007f78a4641a1e:   xchg   %ax,%ax
   0.00%   ││    │││││ │  0x00007f78a4641a20:   cmp    %eax,%ebp
           ││    ╰││││ │  0x00007f78a4641a22:   jl     0x00007f78a4641960           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           ││     ││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@90 (line 85)
   0.00%   ││     ││││ │  0x00007f78a4641a28:   mov    0x458(%r15),%rsi             ; ImmutableOopMap {r10=Oop xmm0=Oop }
           ││     ││││ │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
           ││     ││││ │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@146 (line 91)
   0.00%   ││     ││││ │  0x00007f78a4641a2f:   test   %eax,(%rsi)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
           ││     ││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@146 (line 91)
           ││     ││││ │                                                            ;   {poll}
           ││     ││││ │  0x00007f78a4641a31:   cmp    %r9d,%ebp
           ││     ╰│││ │  0x00007f78a4641a34:   jl     0x00007f78a4641948
           ││      │││ │  0x00007f78a4641a3a:   vmovq  %xmm0,%rsi
   0.00%   ││      │││ │  0x00007f78a4641a3f:   nop
   0.00%   ││      │││ │  0x00007f78a4641a40:   cmp    %ecx,%ebp
           ││      ╰││ │  0x00007f78a4641a42:   jge    0x00007f78a46418d5           ;*dload {reexecute=0 rethrow=0 return_oop=0}
           ││       ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@93 (line 85)
           ││       ││↗│  0x00007f78a4641a48:   vaddsd %xmm1,%xmm13,%xmm0
   0.08%   ││       ││││  0x00007f78a4641a4c:   vucomisd %xmm0,%xmm4
   0.04%   ││       ╰│││  0x00007f78a4641a50:   jb     0x00007f78a46418d5           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
           ││        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   0.02%   ││        │││  0x00007f78a4641a56:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@143 (line 90)
           ││        │││  0x00007f78a4641a58:   cmp    %ecx,%ebp
           ││        │││  0x00007f78a4641a5a:   nopw   0x0(%rax,%rax,1)
           ││        ╰││  0x00007f78a4641a60:   jge    0x00007f78a46418d5           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           ││         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@90 (line 85)
   0.00%   ││         ││  0x00007f78a4641a66:   vsubsd %xmm1,%xmm13,%xmm0
           ││         ││  0x00007f78a4641a6a:   vaddsd %xmm12,%xmm12,%xmm1
           ││         ││  0x00007f78a4641a6f:   vaddsd %xmm10,%xmm0,%xmm12          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           ││         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   0.00%   ││         ││  0x00007f78a4641a74:   vmulsd %xmm11,%xmm1,%xmm0
   0.01%   ││         ││  0x00007f78a4641a79:   vmulsd %xmm12,%xmm12,%xmm13         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           ││         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 85)
   0.06%   ││         ││  0x00007f78a4641a7e:   vaddsd %xmm7,%xmm0,%xmm11           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           ││         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
           ││         ││  0x00007f78a4641a82:   vmulsd %xmm11,%xmm11,%xmm1          ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           ││         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@102 (line 85)
   0.02%   ││         ╰│  0x00007f78a4641a87:   jmp    0x00007f78a4641a48
   0.01%   ↘│          │  0x00007f78a4641a89:   vmovsd %xmm3,0x10(%r10,%r11,8)      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
            │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@190 (line 93)
            │          ╰  0x00007f78a4641a90:   jmp    0x00007f78a46418e2           ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@200 (line 79)
            ↘             0x00007f78a4641a95:   mov    0x458(%r15),%r10
                          0x00007f78a4641a9c:   mov    0xc(%rsi),%r8d               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@8 (line 79)
                          0x00007f78a4641aa0:   inc    %edx                         ; ImmutableOopMap {rsi=Oop }
                                                                                    ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@200 (line 79)
                          0x00007f78a4641aa2:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  90.63%  <total for region 1>

....[Hottest Regions]...............................................................................
  90.63%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 6, compile id 670 
   0.85%              kernel  [unknown] 
   0.83%              kernel  [unknown] 
   0.79%              kernel  [unknown] 
   0.66%              kernel  [unknown] 
   0.11%         interpreter  aload  25 aload  
   0.10%           libjvm.so  ElfSymbolTable::lookup 
   0.10%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.09%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.09%         interpreter  return entry points  
   0.08%              kernel  [unknown] 
   0.08%         interpreter  invokevirtual  182 invokevirtual  
   0.08%          ld-2.31.so  __tls_get_addr 
   0.07%           libjvm.so  fileStream::flush 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%         interpreter  astore  58 astore  
   5.06%  <...other 1244 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  90.63%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 6, compile id 670 
   5.43%              kernel  [unknown] 
   0.19%                      <unknown> 
   0.13%         interpreter  return entry points  
   0.12%         interpreter  invokevirtual  182 invokevirtual  
   0.11%        libc-2.31.so  __vfprintf_internal 
   0.11%         interpreter  aload  25 aload  
   0.11%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 1, compile id 1023 
   0.10%           libjvm.so  ElfSymbolTable::lookup 
   0.09%        libc-2.31.so  _IO_fwrite 
   0.09%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.08%          ld-2.31.so  __tls_get_addr 
   0.07%    perf-1940306.map  [unknown] 
   0.07%           libjvm.so  fileStream::flush 
   0.07%           libjvm.so  xmlStream::write_text 
   0.06%         interpreter  method entry point (kind = zerolocals)  
   0.06%           libjvm.so  defaultStream::write 
   0.06%        libc-2.31.so  __strchr_avx2 
   0.05%         interpreter  getstatic  178 getstatic  
   0.05%      hsdis-amd64.so  print_insn 
   2.31%  <...other 535 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  90.90%         c2, level 4
   5.43%              kernel
   1.54%           libjvm.so
   0.87%         interpreter
   0.69%        libc-2.31.so
   0.19%                    
   0.10%  libpthread-2.31.so
   0.09%      hsdis-amd64.so
   0.08%          ld-2.31.so
   0.07%    perf-1940306.map
   0.02%         c1, level 3
   0.01%              [vdso]
   0.01%         c1, level 2
   0.01%    Unknown, level 0
   0.00%         c1, level 1
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline
# Parameters: (iterations = 2000, size = 256)

# Run progress: 25.00% complete, ETA 00:11:22
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 65.054 ms/op
# Warmup Iteration   2: 64.496 ms/op
# Warmup Iteration   3: 64.498 ms/op
# Warmup Iteration   4: 64.498 ms/op
# Warmup Iteration   5: 64.494 ms/op
Iteration   1: 64.493 ms/op
Iteration   2: 64.495 ms/op
Iteration   3: 64.495 ms/op
Iteration   4: 64.494 ms/op
Iteration   5: 64.495 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline":
  64.494 ±(99.9%) 0.004 ms/op [Average]
  (min, avg, max) = (64.493, 64.494, 64.495), stdev = 0.001
  CI (99.9%): [64.490, 64.499] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline:asm":
PrintAssembly processed: 180995 total address lines.
Perf output processed (skipped 57.314 seconds):
 Column 1: cycles (54555 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 6, compile id 679 

                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@11 (line 79)
                                0x00007f6990641829:   vmovsd -0x59(%rip),%xmm3        # 0x00007f69906417d8
                                                                                          ;   {section_word}
                                0x00007f6990641831:   vmovsd -0x79(%rip),%xmm4        # 0x00007f69906417c0
                                                                                          ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@146 (line 91)
                                                                                          ;   {section_word}
                                0x00007f6990641839:   mov    $0x1f40,%r14d
                                0x00007f699064183f:   xor    %edx,%edx
                                0x00007f6990641841:   jmp    0x00007f6990641b16
   0.00%             ↗          0x00007f6990641846:   add    $0x4,%ebp
   0.01%         ↗   │          0x00007f6990641849:   add    $0x2,%ebp
          ╭      │   │          0x00007f699064184c:   jmp    0x00007f6990641851
   0.00%  │      │ ↗ │          0x00007f699064184e:   add    $0x4,%ebp
   0.01%  ↘    ↗ │ │ │          0x00007f6990641851:   inc    %ebp
   0.00%   ╭   │ │ │ │          0x00007f6990641853:   jmp    0x00007f699064185b
   0.00%   │   │ │ │↗│          0x00007f6990641855:   add    $0x4,%ebp
   0.01%   │   │↗│ │││          0x00007f6990641858:   add    $0x2,%ebp                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │   │││ │││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@143 (line 90)
   0.03%   ↘  ↗│││ │││      ↗   0x00007f699064185b:   vmovq  %xmm0,%rsi                   ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
              ││││ │││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   0.01%      ││││ │││  ↗↗↗ │   0x00007f6990641860:   cmp    %ecx,%ebp
            ╭ ││││ │││  │││ │   0x00007f6990641862:   jge    0x00007f6990641af1           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │ ││││ │││  │││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@155 (line 92)
            │ ││││ │││  │││ │   0x00007f6990641868:   mov    %r12,0x10(%r10,%r11,8)       ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │ ││││ │││  │││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@194 (line 80)
   0.01%    │ ││││ │││  │││ │↗  0x00007f699064186d:   mov    0x458(%r15),%r11             ; ImmutableOopMap {r10=Oop rsi=Oop }
            │ ││││ │││  │││ ││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
            │ ││││ │││  │││ ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@194 (line 80)
   0.03%    │ ││││ │││  │││ ││  0x00007f6990641874:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │ ││││ │││  │││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@194 (line 80)
            │ ││││ │││  │││ ││                                                            ;   {poll}
   0.01%    │ ││││ │││  │││ ││  0x00007f6990641877:   cmp    %r8d,%ebx
            │ ││││ │││  │││ ││  0x00007f699064187a:   nopw   0x0(%rax,%rax,1)
   0.01%    │╭││││ │││  │││ ││  0x00007f6990641880:   jge    0x00007f6990641afd           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            ││││││ │││  │││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@23 (line 80)
   0.01%    ││││││ │││  │││ ││  0x00007f6990641886:   mov    %ebx,%edi                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
            ││││││ │││  │││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@26 (line 81)
   0.00%    ││││││ │││  │││ ││  0x00007f6990641888:   movslq %edi,%r11
   0.00%    ││││││ │││  │││ ││  0x00007f699064188b:   add    %r13,%r11                    ;*dastore {reexecute=0 rethrow=0 return_oop=0}
            ││││││ │││  │││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@172 (line 92)
   0.00%    ││││││ │││  │││ ││  0x00007f699064188e:   mov    %edi,%ebx
   0.01%    ││││││ │││  │││ ││  0x00007f6990641890:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││││││ │││  │││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@191 (line 80)
   0.01%    ││││││ │││  │││ ││  0x00007f6990641892:   test   %ecx,%ecx
            ││││││ │││  │││ ││  0x00007f6990641894:   jle    0x00007f6990641ba5           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            ││││││ │││  │││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@90 (line 85)
   0.00%    ││││││ │││  │││ ││  0x00007f699064189a:   vcvtsi2sd %edi,%xmm0,%xmm0
   0.03%    ││││││ │││  │││ ││  0x00007f699064189e:   vsubsd %xmm6,%xmm0,%xmm0
   0.01%    ││││││ │││  │││ ││  0x00007f69906418a2:   vmulsd -0xea(%rip),%xmm0,%xmm0        # 0x00007f69906417c0
            ││││││ │││  │││ ││                                                            ;   {section_word}
   0.01%    ││││││ │││  │││ ││  0x00007f69906418aa:   vdivsd %xmm5,%xmm0,%xmm10           ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
            ││││││ │││  │││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@48 (line 81)
   0.07%    ││││││ │││  │││ ││  0x00007f69906418ae:   vaddsd -0xee(%rip),%xmm10,%xmm12        # 0x00007f69906417c8
            ││││││ │││  │││ ││                                                            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││││││ │││  │││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
            ││││││ │││  │││ ││                                                            ;   {section_word}
   0.04%    ││││││ │││  │││ ││  0x00007f69906418b6:   vmulsd %xmm12,%xmm12,%xmm13
   0.02%    ││││││ │││  │││ ││  0x00007f69906418bb:   nopl   0x0(%rax,%rax,1)
   0.00%    ││││││ │││  │││ ││  0x00007f69906418c0:   cmp    $0x1,%r9d
            ││││││ │││  │││ ││  0x00007f69906418c4:   jle    0x00007f6990641bca
            ││││││ │││  │││ ││  0x00007f69906418ca:   vmovq  %rsi,%xmm0
   0.02%    ││││││ │││  │││ ││  0x00007f69906418cf:   vmovapd %xmm8,%xmm11
   0.00%    ││││││ │││  │││ ││  0x00007f69906418d4:   vmovapd %xmm9,%xmm1
   0.00%    ││││││ │││  │││ ││  0x00007f69906418d9:   mov    $0x1,%ebp
   0.00%    ││││││ │││ ↗│││ ││  0x00007f69906418de:   mov    %r9d,%eax
   0.02%    ││││││ │││ ││││ ││  0x00007f69906418e1:   sub    %ebp,%eax
   0.01%    ││││││ │││ ││││ ││  0x00007f69906418e3:   xor    %esi,%esi
   0.00%    ││││││ │││ ││││ ││  0x00007f69906418e5:   cmp    %ebp,%r9d
   0.01%    ││││││ │││ ││││ ││  0x00007f69906418e8:   cmovl  %esi,%eax
   0.02%    ││││││ │││ ││││ ││  0x00007f69906418eb:   cmp    $0x1f40,%eax
   0.01%    ││││││ │││ ││││ ││  0x00007f69906418f0:   cmova  %r14d,%eax
   0.00%    ││││││ │││ ││││ ││  0x00007f69906418f4:   add    %ebp,%eax
   0.02%    ││││││ │││ ││││ ││  0x00007f69906418f6:   data16 nopw 0x0(%rax,%rax,1)        ;*dload {reexecute=0 rethrow=0 return_oop=0}
            ││││││ │││ ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@93 (line 85)
   0.54%    ││││││ │││↗││││ ││  0x00007f6990641900:   vaddsd %xmm1,%xmm13,%xmm2
   2.99%    ││││││ ││││││││ ││  0x00007f6990641904:   vucomisd %xmm2,%xmm4
   1.67%    ││╰│││ ││││││││ ││  0x00007f6990641908:   jb     0x00007f699064185b           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
            ││ │││ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   1.00%    ││ │││ ││││││││ ││  0x00007f699064190e:   vsubsd %xmm1,%xmm13,%xmm1
   0.00%    ││ │││ ││││││││ ││  0x00007f6990641912:   vaddsd %xmm12,%xmm12,%xmm2
   0.00%    ││ │││ ││││││││ ││  0x00007f6990641917:   vaddsd %xmm10,%xmm1,%xmm13          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││ │││ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   1.21%    ││ │││ ││││││││ ││  0x00007f699064191c:   vmulsd %xmm11,%xmm2,%xmm1
   0.07%    ││ │││ ││││││││ ││  0x00007f6990641921:   vmulsd %xmm13,%xmm13,%xmm2          ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││ │││ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 85)
   3.26%    ││ │││ ││││││││ ││  0x00007f6990641926:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││ │││ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
            ││ │││ ││││││││ ││  0x00007f699064192a:   vmulsd %xmm1,%xmm1,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││ │││ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@102 (line 85)
   0.54%    ││ │││ ││││││││ ││  0x00007f699064192e:   vaddsd %xmm11,%xmm2,%xmm12
   3.59%    ││ │││ ││││││││ ││  0x00007f6990641933:   vucomisd %xmm12,%xmm4
   1.65%    ││ ╰││ ││││││││ ││  0x00007f6990641938:   jb     0x00007f6990641851           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
            ││  ││ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   0.82%    ││  ││ ││││││││ ││  0x00007f699064193e:   vsubsd %xmm11,%xmm2,%xmm2
   0.01%    ││  ││ ││││││││ ││  0x00007f6990641943:   vaddsd %xmm13,%xmm13,%xmm11
   0.00%    ││  ││ ││││││││ ││  0x00007f6990641948:   vmulsd %xmm1,%xmm11,%xmm1
   0.00%    ││  ││ ││││││││ ││  0x00007f699064194c:   vaddsd %xmm10,%xmm2,%xmm2           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││  ││ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   1.50%    ││  ││ ││││││││ ││  0x00007f6990641951:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││  ││ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
   0.34%    ││  ││ ││││││││ ││  0x00007f6990641955:   vmulsd %xmm2,%xmm2,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││  ││ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 85)
   3.03%    ││  ││ ││││││││ ││  0x00007f6990641959:   vmulsd %xmm1,%xmm1,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││  ││ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@102 (line 85)
   0.38%    ││  ││ ││││││││ ││  0x00007f699064195d:   vaddsd %xmm12,%xmm11,%xmm13
   3.51%    ││  ││ ││││││││ ││  0x00007f6990641962:   vucomisd %xmm13,%xmm4
   1.59%    ││  ╰│ ││││││││ ││  0x00007f6990641967:   jb     0x00007f6990641858           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
            ││   │ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   0.91%    ││   │ ││││││││ ││  0x00007f699064196d:   vsubsd %xmm12,%xmm11,%xmm11
   0.00%    ││   │ ││││││││ ││  0x00007f6990641972:   vaddsd %xmm2,%xmm2,%xmm2
            ││   │ ││││││││ ││  0x00007f6990641976:   vmulsd %xmm1,%xmm2,%xmm1
            ││   │ ││││││││ ││  0x00007f699064197a:   vaddsd %xmm10,%xmm11,%xmm2          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││   │ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   1.49%    ││   │ ││││││││ ││  0x00007f699064197f:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││   │ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
   0.58%    ││   │ ││││││││ ││  0x00007f6990641983:   vmulsd %xmm2,%xmm2,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││   │ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 85)
   2.82%    ││   │ ││││││││ ││  0x00007f6990641987:   vmulsd %xmm1,%xmm1,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││   │ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@102 (line 85)
   0.55%    ││   │ ││││││││ ││  0x00007f699064198b:   vaddsd %xmm12,%xmm11,%xmm13
   3.47%    ││   │ ││││││││ ││  0x00007f6990641990:   vucomisd %xmm13,%xmm4
   1.64%    ││   ╰ ││││││││ ││  0x00007f6990641995:   jb     0x00007f6990641849           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
            ││     ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   0.89%    ││     ││││││││ ││  0x00007f699064199b:   vsubsd %xmm12,%xmm11,%xmm11
   0.00%    ││     ││││││││ ││  0x00007f69906419a0:   vaddsd %xmm2,%xmm2,%xmm2
   0.00%    ││     ││││││││ ││  0x00007f69906419a4:   vmulsd %xmm1,%xmm2,%xmm1
            ││     ││││││││ ││  0x00007f69906419a8:   vaddsd %xmm10,%xmm11,%xmm2          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││     ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   1.43%    ││     ││││││││ ││  0x00007f69906419ad:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││     ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
            ││     ││││││││ ││                                                            ;   {no_reloc}
   0.58%    ││     ││││││││ ││  0x00007f69906419b1:   vmulsd %xmm2,%xmm2,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││     ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 85)
   2.74%    ││     ││││││││ ││  0x00007f69906419b5:   vmulsd %xmm1,%xmm1,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││     ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@102 (line 85)
   0.52%    ││     ││││││││ ││  0x00007f69906419b9:   vaddsd %xmm12,%xmm11,%xmm13
   3.52%    ││     ││││││││ ││  0x00007f69906419be:   xchg   %ax,%ax
            ││     ││││││││ ││  0x00007f69906419c0:   vucomisd %xmm13,%xmm4
   1.45%    ││    ╭││││││││ ││  0x00007f69906419c5:   jb     0x00007f6990641ae9           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
            ││    │││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   0.84%    ││    │││││││││ ││  0x00007f69906419cb:   vsubsd %xmm12,%xmm11,%xmm11
   0.00%    ││    │││││││││ ││  0x00007f69906419d0:   vaddsd %xmm2,%xmm2,%xmm2
            ││    │││││││││ ││  0x00007f69906419d4:   vmulsd %xmm1,%xmm2,%xmm1
            ││    │││││││││ ││  0x00007f69906419d8:   vaddsd %xmm10,%xmm11,%xmm2          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││    │││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   1.65%    ││    │││││││││ ││  0x00007f69906419dd:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││    │││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
   0.36%    ││    │││││││││ ││  0x00007f69906419e1:   vmulsd %xmm2,%xmm2,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││    │││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 85)
   2.92%    ││    │││││││││ ││  0x00007f69906419e5:   vmulsd %xmm1,%xmm1,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││    │││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@102 (line 85)
   0.41%    ││    │││││││││ ││  0x00007f69906419e9:   vaddsd %xmm12,%xmm11,%xmm13
   3.52%    ││    │││││││││ ││  0x00007f69906419ee:   vucomisd %xmm13,%xmm4
   1.70%    ││    │╰│││││││ ││  0x00007f69906419f3:   jb     0x00007f699064184e           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
            ││    │ │││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   0.93%    ││    │ │││││││ ││  0x00007f69906419f9:   vsubsd %xmm12,%xmm11,%xmm11
   0.00%    ││    │ │││││││ ││  0x00007f69906419fe:   vaddsd %xmm2,%xmm2,%xmm2
            ││    │ │││││││ ││  0x00007f6990641a02:   vmulsd %xmm1,%xmm2,%xmm1
            ││    │ │││││││ ││  0x00007f6990641a06:   vaddsd %xmm10,%xmm11,%xmm2          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││    │ │││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   1.55%    ││    │ │││││││ ││  0x00007f6990641a0b:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││    │ │││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
   0.56%    ││    │ │││││││ ││  0x00007f6990641a0f:   vmulsd %xmm2,%xmm2,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││    │ │││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 85)
   2.89%    ││    │ │││││││ ││  0x00007f6990641a13:   vmulsd %xmm1,%xmm1,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││    │ │││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@102 (line 85)
   0.58%    ││    │ │││││││ ││  0x00007f6990641a17:   vaddsd %xmm12,%xmm11,%xmm13
   3.53%    ││    │ │││││││ ││  0x00007f6990641a1c:   nopl   0x0(%rax)
            ││    │ │││││││ ││  0x00007f6990641a20:   vucomisd %xmm13,%xmm4
   1.59%    ││    │ ╰││││││ ││  0x00007f6990641a25:   jb     0x00007f6990641855           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
            ││    │  ││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   0.81%    ││    │  ││││││ ││  0x00007f6990641a2b:   vsubsd %xmm12,%xmm11,%xmm11
            ││    │  ││││││ ││  0x00007f6990641a30:   vaddsd %xmm2,%xmm2,%xmm2
            ││    │  ││││││ ││  0x00007f6990641a34:   vmulsd %xmm1,%xmm2,%xmm1
            ││    │  ││││││ ││  0x00007f6990641a38:   vaddsd %xmm10,%xmm11,%xmm2          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││    │  ││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   1.71%    ││    │  ││││││ ││  0x00007f6990641a3d:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││    │  ││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
   0.39%    ││    │  ││││││ ││  0x00007f6990641a41:   vmulsd %xmm2,%xmm2,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││    │  ││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 85)
   3.04%    ││    │  ││││││ ││  0x00007f6990641a45:   vmulsd %xmm1,%xmm1,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││    │  ││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@102 (line 85)
   0.35%    ││    │  ││││││ ││  0x00007f6990641a49:   vaddsd %xmm12,%xmm11,%xmm13
   3.47%    ││    │  ││││││ ││  0x00007f6990641a4e:   vucomisd %xmm13,%xmm4
   1.65%    ││    │  ╰│││││ ││  0x00007f6990641a53:   jb     0x00007f6990641846           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
            ││    │   │││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   0.89%    ││    │   │││││ ││  0x00007f6990641a59:   vsubsd %xmm12,%xmm11,%xmm11
            ││    │   │││││ ││  0x00007f6990641a5e:   vaddsd %xmm2,%xmm2,%xmm2
            ││    │   │││││ ││  0x00007f6990641a62:   vmulsd %xmm1,%xmm2,%xmm1
            ││    │   │││││ ││  0x00007f6990641a66:   vaddsd %xmm10,%xmm11,%xmm12         ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││    │   │││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   1.49%    ││    │   │││││ ││  0x00007f6990641a6b:   vaddsd %xmm7,%xmm1,%xmm11           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││    │   │││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
   0.43%    ││    │   │││││ ││  0x00007f6990641a6f:   vmulsd %xmm12,%xmm12,%xmm13         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││    │   │││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 85)
   2.88%    ││    │   │││││ ││  0x00007f6990641a74:   vmulsd %xmm11,%xmm11,%xmm1          ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││    │   │││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@102 (line 85)
   0.49%    ││    │   │││││ ││  0x00007f6990641a79:   add    $0x8,%ebp                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││    │   │││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@143 (line 90)
            ││    │   │││││ ││  0x00007f6990641a7c:   nopl   0x0(%rax)
            ││    │   │││││ ││  0x00007f6990641a80:   cmp    %eax,%ebp
            ││    │   ╰││││ ││  0x00007f6990641a82:   jl     0x00007f6990641900           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            ││    │    ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@90 (line 85)
            ││    │    ││││ ││  0x00007f6990641a88:   mov    0x458(%r15),%rsi             ; ImmutableOopMap {r10=Oop xmm0=Oop }
            ││    │    ││││ ││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
            ││    │    ││││ ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@146 (line 91)
   0.00%    ││    │    ││││ ││  0x00007f6990641a8f:   test   %eax,(%rsi)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
            ││    │    ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@146 (line 91)
            ││    │    ││││ ││                                                            ;   {poll}
            ││    │    ││││ ││  0x00007f6990641a91:   cmp    %r9d,%ebp
            ││    │    ╰│││ ││  0x00007f6990641a94:   jl     0x00007f69906418de
            ││    │     │││ ││  0x00007f6990641a9a:   vmovq  %xmm0,%rsi
            ││    │     │││ ││  0x00007f6990641a9f:   nop
   0.00%    ││    │     │││ ││  0x00007f6990641aa0:   cmp    %ecx,%ebp
            ││    │     ╰││ ││  0x00007f6990641aa2:   jge    0x00007f6990641860           ;*dload {reexecute=0 rethrow=0 return_oop=0}
            ││    │      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@93 (line 85)
            ││    │      ││↗││  0x00007f6990641aa8:   vaddsd %xmm1,%xmm13,%xmm0
   0.09%    ││    │      │││││  0x00007f6990641aac:   vucomisd %xmm0,%xmm4
   0.05%    ││    │      ╰││││  0x00007f6990641ab0:   jb     0x00007f6990641860           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
            ││    │       ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   0.02%    ││    │       ││││  0x00007f6990641ab6:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││    │       ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@143 (line 90)
            ││    │       ││││  0x00007f6990641ab8:   cmp    %ecx,%ebp
            ││    │       ││││  0x00007f6990641aba:   nopw   0x0(%rax,%rax,1)
            ││    │       ╰│││  0x00007f6990641ac0:   jge    0x00007f6990641860           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            ││    │        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@90 (line 85)
   0.04%    ││    │        │││  0x00007f6990641ac6:   vsubsd %xmm1,%xmm13,%xmm0
            ││    │        │││  0x00007f6990641aca:   vaddsd %xmm12,%xmm12,%xmm1
            ││    │        │││  0x00007f6990641acf:   vaddsd %xmm10,%xmm0,%xmm12          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││    │        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   0.01%    ││    │        │││  0x00007f6990641ad4:   vmulsd %xmm11,%xmm1,%xmm0
   0.01%    ││    │        │││  0x00007f6990641ad9:   vmulsd %xmm12,%xmm12,%xmm13         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││    │        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 85)
   0.06%    ││    │        │││  0x00007f6990641ade:   vaddsd %xmm7,%xmm0,%xmm11           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││    │        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
            ││    │        │││  0x00007f6990641ae2:   vmulsd %xmm11,%xmm11,%xmm1          ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││    │        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@102 (line 85)
   0.01%    ││    │        ╰││  0x00007f6990641ae7:   jmp    0x00007f6990641aa8
   0.00%    ││    ↘         ││  0x00007f6990641ae9:   add    $0x4,%ebp                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@143 (line 90)
   0.00%    ││              ╰│  0x00007f6990641aec:   jmp    0x00007f699064185b
            ↘│               │  0x00007f6990641af1:   vmovsd %xmm3,0x10(%r10,%r11,8)      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
             │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@190 (line 93)
             │               ╰  0x00007f6990641af8:   jmp    0x00007f699064186d           ;*goto {reexecute=0 rethrow=0 return_oop=0}
             │                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@200 (line 79)
             ↘                  0x00007f6990641afd:   mov    0x458(%r15),%r10
                                0x00007f6990641b04:   mov    0xc(%rsi),%r8d               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@8 (line 79)
                                0x00007f6990641b08:   inc    %edx                         ; ImmutableOopMap {rsi=Oop }
                                                                                          ;*goto {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  91.76%  <total for region 1>

....[Hottest Regions]...............................................................................
  91.76%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 6, compile id 679 
   0.78%              kernel  [unknown] 
   0.73%              kernel  [unknown] 
   0.67%              kernel  [unknown] 
   0.41%              kernel  [unknown] 
   0.15%           libjvm.so  ElfSymbolTable::lookup 
   0.12%              kernel  [unknown] 
   0.09%         interpreter  aload  25 aload  
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%         interpreter  invokevirtual  182 invokevirtual  
   0.07%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.07%              kernel  [unknown] 
   0.06%           libjvm.so  MethodMatcher::matches 
   0.05%         interpreter  return entry points  
   0.05%              kernel  [unknown] 
   0.05%        libc-2.31.so  __strchrnul_avx2 
   0.05%              kernel  [unknown] 
   0.05%    perf-1940372.map  [unknown] 
   0.05%          ld-2.31.so  __tls_get_addr 
   4.58%  <...other 1097 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  91.76%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 6, compile id 679 
   4.75%              kernel  [unknown] 
   0.19%                      <unknown> 
   0.15%           libjvm.so  ElfSymbolTable::lookup 
   0.12%         interpreter  invokevirtual  182 invokevirtual  
   0.11%        libc-2.31.so  __vfprintf_internal 
   0.11%         interpreter  return entry points  
   0.09%         interpreter  aload  25 aload  
   0.08%           libjvm.so  xmlStream::write_text 
   0.08%    perf-1940372.map  [unknown] 
   0.07%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.07%           libjvm.so  defaultStream::write 
   0.06%        libc-2.31.so  _IO_default_xsputn 
   0.06%           libjvm.so  MethodMatcher::matches 
   0.06%        libc-2.31.so  __strchrnul_avx2 
   0.06%  libpthread-2.31.so  __libc_write 
   0.06%         interpreter  method entry point (kind = zerolocals)  
   0.05%           libjvm.so  fileStream::write 
   0.05%        libc-2.31.so  _IO_fwrite 
   0.05%      hsdis-amd64.so  print_insn 
   1.96%  <...other 461 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  91.93%         c2, level 4
   4.75%              kernel
   1.41%           libjvm.so
   0.73%         interpreter
   0.64%        libc-2.31.so
   0.19%                    
   0.09%      hsdis-amd64.so
   0.09%  libpthread-2.31.so
   0.08%    perf-1940372.map
   0.05%          ld-2.31.so
   0.02%         c1, level 3
   0.01%    Unknown, level 0
   0.01%              [vdso]
   0.00%         c1, level 2
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline
# Parameters: (iterations = 2000, size = 512)

# Run progress: 37.50% complete, ETA 00:09:27
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 260.496 ms/op
# Warmup Iteration   2: 259.675 ms/op
# Warmup Iteration   3: 258.374 ms/op
# Warmup Iteration   4: 258.376 ms/op
# Warmup Iteration   5: 258.373 ms/op
Iteration   1: 258.358 ms/op
Iteration   2: 258.375 ms/op
Iteration   3: 258.374 ms/op
Iteration   4: 258.378 ms/op
Iteration   5: 258.376 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline":
  258.372 ±(99.9%) 0.031 ms/op [Average]
  (min, avg, max) = (258.358, 258.372, 258.378), stdev = 0.008
  CI (99.9%): [258.341, 258.403] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline:asm":
PrintAssembly processed: 183781 total address lines.
Perf output processed (skipped 57.469 seconds):
 Column 1: cycles (55286 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 6, compile id 670 

                    0x00007f4a886411aa:   mov    $0xffffffff80000000,%rsi
                    0x00007f4a886411b1:   vmovsd -0x61(%rip),%xmm3        # 0x00007f4a88641158
                                                                              ;   {section_word}
                    0x00007f4a886411b9:   vmovsd -0x81(%rip),%xmm4        # 0x00007f4a88641140
                                                                              ;   {section_word}
                    0x00007f4a886411c1:   xor    %r10d,%r10d                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@146 (line 91)
                    0x00007f4a886411c4:   mov    $0xfa0,%r11d
                    0x00007f4a886411ca:   xor    %r13d,%r13d
                    0x00007f4a886411cd:   jmp    0x00007f4a886413c9
   0.00%       ↗    0x00007f4a886411d2:   add    $0x2,%ecx
   0.01%     ↗ │    0x00007f4a886411d5:   inc    %ecx
   0.00%  ╭  │ │    0x00007f4a886411d7:   jmp    0x00007f4a886411dc
   0.01%  │  │↗│    0x00007f4a886411d9:   add    $0x2,%ecx                    ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          │  │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   0.03%  ↘ ↗│││    0x00007f4a886411dc:   movslq %ebx,%rdi
   0.01%    ││││    0x00007f4a886411df:   add    %rax,%rdi                    ;*dastore {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@172 (line 92)
   0.01%    ││││    0x00007f4a886411e2:   cmp    %r9d,%ecx
            ││││    0x00007f4a886411e5:   jge    0x00007f4a88641398           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@155 (line 92)
   0.01%    ││││    0x00007f4a886411eb:   mov    %r12,0x10(%rbp,%rdi,8)       ;*goto {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@194 (line 80)
   0.04%    ││││    0x00007f4a886411f0:   mov    0x458(%r15),%rcx
   0.00%    ││││    0x00007f4a886411f7:   inc    %ebx                         ; ImmutableOopMap {rbp=Oop xmm0=Oop }
            ││││                                                              ;*goto {reexecute=1 rethrow=0 return_oop=0}
            ││││                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@194 (line 80)
            ││││    0x00007f4a886411f9:   test   %eax,(%rcx)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@194 (line 80)
            ││││                                                              ;   {poll}
   0.02%    ││││    0x00007f4a886411fb:   cmp    %edx,%ebx
   0.02%    ││││    0x00007f4a886411fd:   data16 xchg %ax,%ax
   0.00%    ││││    0x00007f4a88641200:   jge    0x00007f4a886413a5           ;*iload {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@26 (line 81)
   0.00%    ││││    0x00007f4a88641206:   test   %r9d,%r9d
            ││││    0x00007f4a88641209:   jle    0x00007f4a88641465           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@90 (line 85)
   0.01%    ││││    0x00007f4a8864120f:   vcvtsi2sd %ebx,%xmm1,%xmm1
   0.02%    ││││    0x00007f4a88641213:   vsubsd %xmm6,%xmm1,%xmm1
   0.00%    ││││    0x00007f4a88641217:   vmulsd -0xdf(%rip),%xmm1,%xmm1        # 0x00007f4a88641140
            ││││                                                              ;   {section_word}
   0.02%    ││││    0x00007f4a8864121f:   vdivsd %xmm5,%xmm1,%xmm10           ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@48 (line 81)
   0.29%    ││││    0x00007f4a88641223:   vaddsd -0xe3(%rip),%xmm10,%xmm12        # 0x00007f4a88641148
            ││││                                                              ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
            ││││                                                              ;   {section_word}
   0.11%    ││││    0x00007f4a8864122b:   vmulsd %xmm12,%xmm12,%xmm13         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 85)
   0.11%    ││││    0x00007f4a88641230:   cmp    $0x1,%r8d
           ╭││││    0x00007f4a88641234:   jle    0x00007f4a8864133d
   0.01%   │││││    0x00007f4a8864123a:   vmovapd %xmm8,%xmm11
   0.00%   │││││    0x00007f4a8864123f:   vmovapd %xmm9,%xmm1
           │││││    0x00007f4a88641244:   mov    $0x1,%ecx
   0.04%   │││││ ↗  0x00007f4a88641249:   mov    %r8d,%edi
           │││││ │  0x00007f4a8864124c:   sub    %ecx,%edi
   0.01%   │││││ │  0x00007f4a8864124e:   cmp    %ecx,%r8d
   0.00%   │││││ │  0x00007f4a88641251:   cmovl  %r10d,%edi
   0.02%   │││││ │  0x00007f4a88641255:   cmp    $0xfa0,%edi
   0.00%   │││││ │  0x00007f4a8864125b:   cmova  %r11d,%edi
   0.01%   │││││ │  0x00007f4a8864125f:   add    %ecx,%edi                    ;*dload {reexecute=0 rethrow=0 return_oop=0}
           │││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@93 (line 85)
   1.30%   │││││↗│  0x00007f4a88641261:   vaddsd %xmm13,%xmm1,%xmm2
   5.93%   │││││││  0x00007f4a88641266:   vucomisd %xmm2,%xmm4
   3.26%   │╰│││││  0x00007f4a8864126a:   jb     0x00007f4a886411dc           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
           │ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   2.01%   │ │││││  0x00007f4a88641270:   vsubsd %xmm1,%xmm13,%xmm1
   0.01%   │ │││││  0x00007f4a88641274:   vaddsd %xmm12,%xmm12,%xmm2
           │ │││││  0x00007f4a88641279:   vaddsd %xmm10,%xmm1,%xmm13          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   2.35%   │ │││││  0x00007f4a8864127e:   vmulsd %xmm2,%xmm11,%xmm1
   0.23%   │ │││││  0x00007f4a88641282:   vmulsd %xmm13,%xmm13,%xmm2          ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           │ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 85)
   7.01%   │ │││││  0x00007f4a88641287:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
           │ │││││  0x00007f4a8864128b:   vmulsd %xmm1,%xmm1,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           │ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@102 (line 85)
   1.14%   │ │││││  0x00007f4a8864128f:   vaddsd %xmm11,%xmm2,%xmm12
   6.63%   │ │││││  0x00007f4a88641294:   vucomisd %xmm12,%xmm4
   3.36%   │ ╰││││  0x00007f4a88641299:   jb     0x00007f4a886411d5           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
           │  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   1.73%   │  ││││  0x00007f4a8864129f:   vsubsd %xmm11,%xmm2,%xmm2
   0.00%   │  ││││  0x00007f4a886412a4:   vaddsd %xmm13,%xmm13,%xmm11
           │  ││││  0x00007f4a886412a9:   vmulsd %xmm1,%xmm11,%xmm1
           │  ││││  0x00007f4a886412ad:   vaddsd %xmm10,%xmm2,%xmm2           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   2.98%   │  ││││  0x00007f4a886412b2:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
   0.86%   │  ││││  0x00007f4a886412b6:   vmulsd %xmm2,%xmm2,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           │  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 85)
   5.94%   │  ││││  0x00007f4a886412ba:   vmulsd %xmm1,%xmm1,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           │  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@102 (line 85)
   0.81%   │  ││││  0x00007f4a886412be:   vaddsd %xmm12,%xmm11,%xmm13
   6.65%   │  ││││  0x00007f4a886412c3:   vucomisd %xmm13,%xmm4
   3.31%   │  ╰│││  0x00007f4a886412c8:   jb     0x00007f4a886411d9           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
           │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   1.75%   │   │││  0x00007f4a886412ce:   vsubsd %xmm12,%xmm11,%xmm11
   0.00%   │   │││  0x00007f4a886412d3:   vaddsd %xmm2,%xmm2,%xmm2
           │   │││  0x00007f4a886412d7:   vmulsd %xmm1,%xmm2,%xmm1
           │   │││  0x00007f4a886412db:   vaddsd %xmm10,%xmm11,%xmm2          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   3.00%   │   │││  0x00007f4a886412e0:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
   1.16%   │   │││  0x00007f4a886412e4:   vmulsd %xmm2,%xmm2,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 85)
   5.51%   │   │││  0x00007f4a886412e8:   vmulsd %xmm1,%xmm1,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@102 (line 85)
   1.10%   │   │││  0x00007f4a886412ec:   vaddsd %xmm12,%xmm11,%xmm13
   6.84%   │   │││  0x00007f4a886412f1:   vucomisd %xmm13,%xmm4
   3.22%   │   ╰││  0x00007f4a886412f6:   jb     0x00007f4a886411d2           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
           │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   1.60%   │    ││  0x00007f4a886412fc:   vsubsd %xmm12,%xmm11,%xmm11
   0.01%   │    ││  0x00007f4a88641301:   vaddsd %xmm2,%xmm2,%xmm2
           │    ││  0x00007f4a88641305:   vmulsd %xmm1,%xmm2,%xmm1
           │    ││  0x00007f4a88641309:   vaddsd %xmm10,%xmm11,%xmm12         ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   2.84%   │    ││  0x00007f4a8864130e:   vaddsd %xmm7,%xmm1,%xmm11           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
   0.77%   │    ││  0x00007f4a88641312:   vmulsd %xmm12,%xmm12,%xmm13         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 85)
   5.74%   │    ││  0x00007f4a88641317:   vmulsd %xmm11,%xmm11,%xmm1          ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@102 (line 85)
   0.93%   │    ││  0x00007f4a8864131c:   add    $0x4,%ecx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@143 (line 90)
           │    ││  0x00007f4a8864131f:   nop
           │    ││  0x00007f4a88641320:   cmp    %edi,%ecx
           │    ╰│  0x00007f4a88641322:   jl     0x00007f4a88641261           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@90 (line 85)
           │     │                                                            ;   {no_reloc}
   0.00%   │     │  0x00007f4a88641328:   mov    0x458(%r15),%r14             ; ImmutableOopMap {rbp=Oop xmm0=Oop }
           │     │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
           │     │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@146 (line 91)
   0.00%   │     │  0x00007f4a8864132f:   test   %eax,(%r14)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@146 (line 91)
           │     │                                                            ;   {poll}
           │     │  0x00007f4a88641332:   cmp    %r8d,%ecx
           │     ╰  0x00007f4a88641335:   jl     0x00007f4a88641249
           │        0x00007f4a8864133b:   jmp    0x00007f4a8864134c
           ↘        0x00007f4a8864133d:   vmovapd %xmm8,%xmm11
                    0x00007f4a88641342:   vmovapd %xmm9,%xmm1
                    0x00007f4a88641347:   mov    $0x1,%ecx
....................................................................................................
  90.77%  <total for region 1>

....[Hottest Regions]...............................................................................
  90.77%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 6, compile id 670 
   0.84%              kernel  [unknown] 
   0.77%              kernel  [unknown] 
   0.71%              kernel  [unknown] 
   0.29%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.11%         interpreter  aload  25 aload  
   0.11%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 6, compile id 670 
   0.11%           libjvm.so  ElfSymbolTable::lookup 
   0.10%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.09%              kernel  [unknown] 
   0.08%           libjvm.so  fileStream::flush 
   0.08%         interpreter  invokevirtual  182 invokevirtual  
   0.07%              kernel  [unknown] 
   0.07%          ld-2.31.so  __tls_get_addr 
   0.06%              kernel  [unknown] 
   0.06%  libpthread-2.31.so  __libc_write 
   0.05%              kernel  [unknown] 
   0.05%         interpreter  return entry points  
   5.36%  <...other 1256 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  90.88%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 6, compile id 670 
   5.22%              kernel  [unknown] 
   0.24%                      <unknown> 
   0.21%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 1, compile id 1023 
   0.12%        libc-2.31.so  __vfprintf_internal 
   0.12%         interpreter  invokevirtual  182 invokevirtual  
   0.11%         interpreter  aload  25 aload  
   0.11%           libjvm.so  ElfSymbolTable::lookup 
   0.10%         interpreter  return entry points  
   0.10%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.08%           libjvm.so  fileStream::flush 
   0.07%        libc-2.31.so  _IO_default_xsputn 
   0.07%    perf-1940438.map  [unknown] 
   0.07%          ld-2.31.so  __tls_get_addr 
   0.07%           libjvm.so  defaultStream::write 
   0.06%         interpreter  method entry point (kind = zerolocals)  
   0.06%           libjvm.so  xmlStream::write_text 
   0.06%        libc-2.31.so  _IO_fwrite 
   0.06%  libpthread-2.31.so  __libc_write 
   0.05%         interpreter  getstatic  178 getstatic  
   2.14%  <...other 522 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  91.23%         c2, level 4
   5.22%              kernel
   1.49%           libjvm.so
   0.78%         interpreter
   0.68%        libc-2.31.so
   0.24%                    
   0.10%  libpthread-2.31.so
   0.09%      hsdis-amd64.so
   0.07%    perf-1940438.map
   0.07%          ld-2.31.so
   0.02%         c1, level 3
   0.01%    Unknown, level 0
   0.01%              [vdso]
   0.00%         c1, level 2
   0.00%         c1, level 1
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized
# Parameters: (iterations = 1000, size = 256)

# Run progress: 50.00% complete, ETA 00:07:34
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3.695 ms/op
# Warmup Iteration   2: 2.470 ms/op
# Warmup Iteration   3: 2.470 ms/op
# Warmup Iteration   4: 2.470 ms/op
# Warmup Iteration   5: 2.470 ms/op
Iteration   1: 2.470 ms/op
Iteration   2: 2.470 ms/op
Iteration   3: 2.470 ms/op
Iteration   4: 2.470 ms/op
Iteration   5: 2.470 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized":
  2.470 ±(99.9%) 0.001 ms/op [Average]
  (min, avg, max) = (2.470, 2.470, 2.470), stdev = 0.001
  CI (99.9%): [2.469, 2.470] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized:asm":
PrintAssembly processed: 191829 total address lines.
Perf output processed (skipped 56.963 seconds):
 Column 1: cycles (50666 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 969 

                                                                                ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                                ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@145 (line 120)
                      0x00007fa838676560:   vmulpd %ymm10,%ymm0,%ymm5
                      0x00007fa838676565:   vsubpd %ymm1,%ymm1,%ymm7
                      0x00007fa838676569:   mov    $0xfa0,%edi
                      0x00007fa83867656e:   movabs $0x7f200b988,%rax            ;   {oop([D{0x00000007f200b988})}
                      0x00007fa838676578:   xor    %r10d,%r10d
                      0x00007fa83867657b:   nopl   0x0(%rax,%rax,1)
          ╭           0x00007fa838676580:   jmp    0x00007fa8386767d3
   0.05%  │ ↗↗↗↗↗     0x00007fa838676585:   vmovdqu 0x20(%rsp),%ymm5
   0.05%  │ │││││     0x00007fa83867658b:   vmovdqu 0x40(%rsp),%ymm6
          │ │││││     0x00007fa838676591:   vmovdqu 0x60(%rsp),%ymm7
   0.00%  │ │││││     0x00007fa838676597:   vmovsd 0x10(%rsp),%xmm3
   0.03%  │ │││││     0x00007fa83867659d:   vmovq  %r13,%xmm4
   0.03%  │ │││││     0x00007fa8386765a2:   vbroadcastsd %xmm4,%ymm2
          │ │││││     0x00007fa8386765a7:   vcmpeqpd %ymm2,%ymm13,%ymm2
   0.02%  │ │││││     0x00007fa8386765ac:   vblendvps %ymm2,%ymm6,%ymm10,%ymm2
   0.16%  │ │││││     0x00007fa8386765b2:   vmovdqu %ymm2,0x10(%rbp,%rcx,8)
   0.08%  │ │││││     0x00007fa8386765b8:   mov    0x458(%r15),%r8
   0.01%  │ │││││     0x00007fa8386765bf:   add    $0x4,%ecx                    ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │ │││││                                                               ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          │ │││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   0.01%  │ │││││     0x00007fa8386765c2:   vbroadcastsd %xmm3,%ymm2            ; ImmutableOopMap {r11=Oop rbx=Oop rbp=Derived_oop_rbx rax=Oop [0]=Oop }
          │ │││││                                                               ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ │││││                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@335 (line 111)
   0.01%  │ │││││     0x00007fa8386765c7:   test   %eax,(%r8)                   ;   {poll}
   0.05%  │ │││││     0x00007fa8386765ca:   cmp    %edx,%ecx
          │╭│││││     0x00007fa8386765cc:   jge    0x00007fa8386767ab
          │││││││     0x00007fa8386765d2:   test   %r9d,%r9d
          │││││││     0x00007fa8386765d5:   jle    0x00007fa8386768d8
   0.01%  │││││││     0x00007fa8386765db:   vmovq  %xmm4,%r13
   0.02%  │││││││     0x00007fa8386765e0:   vmovsd %xmm3,0x10(%rsp)
   0.04%  │││││││     0x00007fa8386765e6:   vmovdqu %ymm7,0x60(%rsp)
          │││││││     0x00007fa8386765ec:   vmovdqu %ymm6,0x40(%rsp)
   0.01%  │││││││     0x00007fa8386765f2:   vmovdqu %ymm5,0x20(%rsp)
   0.02%  │││││││     0x00007fa8386765f8:   vmovdqu 0x10(%r11),%ymm14
   0.02%  │││││││     0x00007fa8386765fe:   vaddpd %ymm14,%ymm10,%ymm4
   0.00%  │││││││     0x00007fa838676603:   vcvtsi2sd %ecx,%xmm2,%xmm2
   0.04%  │││││││     0x00007fa838676607:   vbroadcastsd %xmm2,%ymm2
   0.04%  │││││││     0x00007fa83867660c:   vaddpd 0x10(%rax),%ymm2,%ymm2       ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                               ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          │││││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   0.00%  │││││││     0x00007fa838676611:   vbroadcastsd %xmm1,%ymm3            ;*invokestatic fromBitsCoerced {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                               ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcastBits@19 (line 3742)
          │││││││                                                               ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3751)
          │││││││                                                               ; - jdk.incubator.vector.DoubleVector::broadcastTemplate@7 (line 607)
          │││││││                                                               ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 125)
          │││││││                                                               ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 41)
          │││││││                                                               ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 872)
          │││││││                                                               ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1323)
          │││││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@80 (line 114)
   0.01%  │││││││     0x00007fa838676616:   vsubpd %ymm3,%ymm2,%ymm2            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                               ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          │││││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   0.02%  │││││││     0x00007fa83867661a:   vbroadcastsd %xmm0,%ymm3            ;*invokestatic fromBitsCoerced {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                               ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcastBits@19 (line 3742)
          │││││││                                                               ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3751)
          │││││││                                                               ; - jdk.incubator.vector.DoubleVector::broadcastTemplate@7 (line 607)
          │││││││                                                               ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 125)
          │││││││                                                               ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 41)
          │││││││                                                               ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 872)
          │││││││                                                               ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1397)
          │││││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@120 (line 115)
   0.04%  │││││││     0x00007fa83867661f:   vmulpd %ymm3,%ymm2,%ymm3            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                               ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │││││││                                                               ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │││││││                                                               ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │││││││                                                               ; - jdk.incubator.vector.DoubleVector::lanewise@7 (line 872)
          │││││││                                                               ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1397)
          │││││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@92 (line 114)
   0.00%  │││││││     0x00007fa838676623:   vaddpd %ymm3,%ymm7,%ymm2            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                               ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │││││││                                                               ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │││││││                                                               ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │││││││                                                               ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          │││││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@188 (line 126)
   0.03%  │││││││     0x00007fa838676627:   vmulpd %ymm2,%ymm2,%ymm5            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                               ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │││││││                                                               ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │││││││                                                               ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │││││││                                                               ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
          │││││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@220 (line 130)
   0.01%  │││││││     0x00007fa83867662b:   vaddpd %ymm12,%ymm5,%ymm6           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                               ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          │││││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   0.06%  │││││││     0x00007fa838676630:   vcmplepd %ymm9,%ymm6,%ymm6          ;*invokestatic compare {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                               ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
          │││││││                                                               ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1969)
          │││││││                                                               ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
          │││││││                                                               ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
          │││││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
   0.01%  │││││││     0x00007fa838676636:   vblendvps %ymm6,%ymm4,%ymm10,%ymm13 ;*invokestatic test {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                               ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
          │││││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   0.06%  │││││││     0x00007fa83867663c:   nopl   0x0(%rax)
          │││││││     0x00007fa838676640:   vtestps %ymm6,%ymm6                 ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                               ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          │││││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
          ││╰││││     0x00007fa838676645:   je     0x00007fa838676585
   0.03%  ││ ││││     0x00007fa83867664b:   cmp    $0x1,%r10d
          ││ ││││     0x00007fa83867664f:   jle    0x00007fa838676909
   0.01%  ││ ││││     0x00007fa838676655:   vmovdqu %ymm12,%ymm7
          ││ ││││     0x00007fa83867665a:   vmovdqu %ymm11,%ymm6
          ││ ││││     0x00007fa83867665f:   mov    $0x1,%r8d
   0.05%  ││ ││││ ↗   0x00007fa838676665:   mov    %r10d,%esi
   0.01%  ││ ││││ │   0x00007fa838676668:   sub    %r8d,%esi
          ││ ││││ │   0x00007fa83867666b:   cmp    %r8d,%r10d
          ││ ││││ │   0x00007fa83867666e:   cmovl  %r14d,%esi
   0.04%  ││ ││││ │   0x00007fa838676672:   cmp    $0xfa0,%esi
   0.00%  ││ ││││ │   0x00007fa838676678:   cmova  %edi,%esi
          ││ ││││ │   0x00007fa83867667b:   add    %r8d,%esi
   0.05%  ││ ││││ │   0x00007fa83867667e:   xchg   %ax,%ax                      ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@179 (line 126)
   0.01%  ││ ││││↗│   0x00007fa838676680:   vaddpd %ymm14,%ymm13,%ymm4
   1.67%  ││ ││││││   0x00007fa838676685:   vsubpd %ymm7,%ymm5,%ymm5
   0.02%  ││ ││││││   0x00007fa838676689:   vaddpd %ymm2,%ymm2,%ymm2            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          ││ ││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   0.05%  ││ ││││││   0x00007fa83867668d:   vaddpd %ymm3,%ymm5,%ymm5            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          ││ ││││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          ││ ││││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          ││ ││││││                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          ││ ││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@188 (line 126)
   0.00%  ││ ││││││   0x00007fa838676691:   vmulpd %ymm6,%ymm2,%ymm2            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          ││ ││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   1.64%  ││ ││││││   0x00007fa838676695:   vmulpd %ymm5,%ymm5,%ymm6            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          ││ ││││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          ││ ││││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          ││ ││││││                                                             ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
          ││ ││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@220 (line 130)
   0.07%  ││ ││││││   0x00007fa838676699:   vaddpd %ymm8,%ymm2,%ymm7            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          ││ ││││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          ││ ││││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          ││ ││││││                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          ││ ││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@207 (line 127)
   0.05%  ││ ││││││   0x00007fa83867669e:   vmulpd %ymm7,%ymm7,%ymm15           ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          ││ ││││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          ││ ││││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          ││ ││││││                                                             ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
          ││ ││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@229 (line 131)
   0.04%  ││ ││││││   0x00007fa8386766a2:   vaddpd %ymm15,%ymm6,%ymm2           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          ││ ││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   5.36%  ││ ││││││   0x00007fa8386766a7:   vcmplepd %ymm9,%ymm2,%ymm2          ;*invokestatic compare {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││││                                                             ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
          ││ ││││││                                                             ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1969)
          ││ ││││││                                                             ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
          ││ ││││││                                                             ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
          ││ ││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
   7.69%  ││ ││││││   0x00007fa8386766ad:   vblendvps %ymm2,%ymm4,%ymm13,%ymm13 ;*invokestatic test {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││││                                                             ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
          ││ ││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   3.32%  ││ ││││││   0x00007fa8386766b3:   vtestps %ymm2,%ymm2
   1.31%  ││ ╰│││││   0x00007fa8386766b8:   je     0x00007fa838676585
   3.13%  ││  │││││   0x00007fa8386766be:   vaddpd %ymm14,%ymm13,%ymm4
   1.76%  ││  │││││   0x00007fa8386766c3:   vaddpd %ymm5,%ymm5,%ymm2            ;   {no_reloc}
          ││  │││││   0x00007fa8386766c7:   vsubpd %ymm15,%ymm6,%ymm5
          ││  │││││   0x00007fa8386766cc:   vmulpd %ymm7,%ymm2,%ymm2            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││  │││││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          ││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
          ││  │││││   0x00007fa8386766d0:   vaddpd %ymm3,%ymm5,%ymm5            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          ││  │││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          ││  │││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          ││  │││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          ││  │││││                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          ││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@188 (line 126)
   1.58%  ││  │││││   0x00007fa8386766d4:   vaddpd %ymm8,%ymm2,%ymm6            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          ││  │││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          ││  │││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          ││  │││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          ││  │││││                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          ││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@207 (line 127)
   0.00%  ││  │││││   0x00007fa8386766d9:   vmulpd %ymm5,%ymm5,%ymm7            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          ││  │││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          ││  │││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          ││  │││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          ││  │││││                                                             ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
          ││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@220 (line 130)
   0.01%  ││  │││││   0x00007fa8386766dd:   vmulpd %ymm6,%ymm6,%ymm15           ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          ││  │││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          ││  │││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          ││  │││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          ││  │││││                                                             ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
          ││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@229 (line 131)
   0.01%  ││  │││││   0x00007fa8386766e1:   vaddpd %ymm15,%ymm7,%ymm2           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││  │││││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          ││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   5.09%  ││  │││││   0x00007fa8386766e6:   vcmplepd %ymm9,%ymm2,%ymm2          ;*invokestatic compare {reexecute=0 rethrow=0 return_oop=0}
          ││  │││││                                                             ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
          ││  │││││                                                             ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1969)
          ││  │││││                                                             ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
          ││  │││││                                                             ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
          ││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
   7.67%  ││  │││││   0x00007fa8386766ec:   vblendvps %ymm2,%ymm4,%ymm13,%ymm13 ;*invokestatic test {reexecute=0 rethrow=0 return_oop=0}
          ││  │││││                                                             ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
          ││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   3.17%  ││  │││││   0x00007fa8386766f2:   vtestps %ymm2,%ymm2
   1.38%  ││  ╰││││   0x00007fa8386766f7:   je     0x00007fa838676585
   3.27%  ││   ││││   0x00007fa8386766fd:   vaddpd %ymm14,%ymm13,%ymm4
   1.78%  ││   ││││   0x00007fa838676702:   vaddpd %ymm5,%ymm5,%ymm2
          ││   ││││   0x00007fa838676706:   vsubpd %ymm15,%ymm7,%ymm5
          ││   ││││   0x00007fa83867670b:   vmulpd %ymm6,%ymm2,%ymm2            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││   ││││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          ││   ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
          ││   ││││   0x00007fa83867670f:   vaddpd %ymm3,%ymm5,%ymm5            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          ││   ││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          ││   ││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          ││   ││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          ││   ││││                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          ││   ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@188 (line 126)
   1.66%  ││   ││││   0x00007fa838676713:   vaddpd %ymm8,%ymm2,%ymm6            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          ││   ││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          ││   ││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          ││   ││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          ││   ││││                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          ││   ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@207 (line 127)
          ││   ││││   0x00007fa838676718:   vmulpd %ymm5,%ymm5,%ymm7            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          ││   ││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          ││   ││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          ││   ││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          ││   ││││                                                             ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
          ││   ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@220 (line 130)
   0.00%  ││   ││││   0x00007fa83867671c:   vmulpd %ymm6,%ymm6,%ymm15           ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          ││   ││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          ││   ││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          ││   ││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          ││   ││││                                                             ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
          ││   ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@229 (line 131)
   0.02%  ││   ││││   0x00007fa838676720:   vaddpd %ymm15,%ymm7,%ymm2           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││   ││││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          ││   ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   5.48%  ││   ││││   0x00007fa838676725:   vcmplepd %ymm9,%ymm2,%ymm2          ;*invokestatic compare {reexecute=0 rethrow=0 return_oop=0}
          ││   ││││                                                             ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
          ││   ││││                                                             ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1969)
          ││   ││││                                                             ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
          ││   ││││                                                             ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
          ││   ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
   7.58%  ││   ││││   0x00007fa83867672b:   vblendvps %ymm2,%ymm4,%ymm13,%ymm13 ;*invokestatic test {reexecute=0 rethrow=0 return_oop=0}
          ││   ││││                                                             ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
          ││   ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   3.40%  ││   ││││   0x00007fa838676731:   vtestps %ymm2,%ymm2
   1.31%  ││   ╰│││   0x00007fa838676736:   je     0x00007fa838676585
   3.17%  ││    │││   0x00007fa83867673c:   vaddpd %ymm14,%ymm13,%ymm4
   1.79%  ││    │││   0x00007fa838676741:   vaddpd %ymm5,%ymm5,%ymm2
          ││    │││   0x00007fa838676745:   vsubpd %ymm15,%ymm7,%ymm5
          ││    │││   0x00007fa83867674a:   vmulpd %ymm6,%ymm2,%ymm6            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││    │││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          ││    │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
          ││    │││   0x00007fa83867674e:   vaddpd %ymm3,%ymm5,%ymm2            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          ││    │││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          ││    │││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          ││    │││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          ││    │││                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          ││    │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@188 (line 126)
   1.58%  ││    │││   0x00007fa838676752:   vaddpd %ymm8,%ymm6,%ymm6            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          ││    │││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          ││    │││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          ││    │││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          ││    │││                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          ││    │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@207 (line 127)
   0.00%  ││    │││   0x00007fa838676757:   vmulpd %ymm2,%ymm2,%ymm5            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          ││    │││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          ││    │││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          ││    │││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          ││    │││                                                             ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
          ││    │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@220 (line 130)
   0.01%  ││    │││   0x00007fa83867675b:   vmulpd %ymm6,%ymm6,%ymm7            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          ││    │││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          ││    │││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          ││    │││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          ││    │││                                                             ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
          ││    │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@229 (line 131)
   0.01%  ││    │││   0x00007fa83867675f:   vaddpd %ymm7,%ymm5,%ymm15           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││    │││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          ││    │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   5.40%  ││    │││   0x00007fa838676763:   vcmplepd %ymm9,%ymm15,%ymm15        ;*invokestatic compare {reexecute=0 rethrow=0 return_oop=0}
          ││    │││                                                             ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
          ││    │││                                                             ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1969)
          ││    │││                                                             ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
          ││    │││                                                             ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
          ││    │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
   8.81%  ││    │││   0x00007fa838676769:   vblendvps %ymm15,%ymm4,%ymm13,%ymm13;*invokestatic test {reexecute=0 rethrow=0 return_oop=0}
          ││    │││                                                             ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
          ││    │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   3.18%  ││    │││   0x00007fa83867676f:   vtestps %ymm15,%ymm15
   0.31%  ││    ╰││   0x00007fa838676774:   je     0x00007fa838676585
   2.67%  ││     ││   0x00007fa83867677a:   add    $0x4,%r8d
   0.02%  ││     ││   0x00007fa83867677e:   xchg   %ax,%ax
          ││     ││   0x00007fa838676780:   cmp    %esi,%r8d
          ││     ╰│   0x00007fa838676783:   jl     0x00007fa838676680
          ││      │   0x00007fa838676789:   mov    0x458(%r15),%rsi             ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││      │                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   0.01%  ││      │   0x00007fa838676790:   vbroadcastsd 0x10(%rsp),%ymm4       ; ImmutableOopMap {r11=Oop rbx=Oop rbp=Derived_oop_rbx rax=Oop [0]=Oop }
          ││      │                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││      │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@276 (line 140)
          ││      │   0x00007fa838676797:   test   %eax,(%rsi)                  ;   {poll}
          ││      │   0x00007fa838676799:   cmp    %r10d,%r8d
          ││      │   0x00007fa83867679c:   nopl   0x0(%rax)
   0.01%  ││      ╰   0x00007fa8386767a0:   jl     0x00007fa838676665
          ││          0x00007fa8386767a6:   jmp    0x00007fa838676919
          │↘          0x00007fa8386767ab:   mov    (%rsp),%rsi
          │           0x00007fa8386767af:   mov    0x8(%rsp),%r10d
          │        ↗  0x00007fa8386767b4:   mov    0x458(%r15),%r8              ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
          │        │  0x00007fa8386767bb:   mov    0xc(%rsi),%ecx               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@11 (line 105)
   0.00%  │        │  0x00007fa8386767be:   add    $0x4,%r10d                   ; ImmutableOopMap {r11=Oop rsi=Oop rax=Oop }
          │        │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │        │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@349 (line 106)
          │        │  0x00007fa8386767c2:   test   %eax,(%r8)                   ;   {poll}
          │        │  0x00007fa8386767c5:   mov    %ecx,%edx
   0.00%  │        │  0x00007fa8386767c7:   and    $0xfffffffc,%edx
          │        │  0x00007fa8386767ca:   cmp    %edx,%r10d
          │        │  0x00007fa8386767cd:   jge    0x00007fa8386768e5
          ↘        │  0x00007fa8386767d3:   test   %edx,%edx
                   ╰  0x00007fa8386767d5:   jle    0x00007fa8386767b4           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
                      0x00007fa8386767d7:   mov    0x10(%rsi),%r9d              ;*getfield iterations {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@173 (line 125)
   0.00%              0x00007fa8386767db:   vcvtsi2sd %r10d,%xmm3,%xmm3         ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
                      0x00007fa8386767e0:   movslq %r9d,%r13                    ;*i2l {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@295 (line 142)
                      0x00007fa8386767e3:   vcvtsi2sd %r13,%xmm4,%xmm4          ;*l2d {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::longToElementBits@1 (line 3765)
                                                                                ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@3 (line 3757)
                                                                                ; - jdk.incubator.vector.DoubleVector::broadcastTemplate@5 (line 650)
                                                                                ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 131)
....................................................................................................
  97.62%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.62%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 969 
   0.28%              kernel  [unknown] 
   0.27%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 969 
   0.09%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%         interpreter  dload  24 dload  
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   1.20%  <...other 396 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.91%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 969 
   1.53%              kernel  [unknown] 
   0.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 2, compile id 1035 
   0.04%         interpreter  dload  24 dload  
   0.03%                      <unknown> 
   0.03%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 1034 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  fileStream::write 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%         interpreter  fast_iload  224 fast_iload  
   0.01%         interpreter  goto  167 goto  
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%         interpreter  return entry points  
   0.01%         interpreter  nofast_iload  237 nofast_iload  
   0.01%         interpreter  dmul  107 dmul  
   0.01%         interpreter  fast_iaccess_0  221 fast_iaccess_0  
   0.01%         interpreter  ldc2_w  20 ldc2_w  
   0.27%  <...other 110 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.96%         c2, level 4
   1.53%              kernel
   0.19%           libjvm.so
   0.16%         interpreter
   0.06%        libc-2.31.so
   0.03%         c1, level 3
   0.03%                    
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
   0.00%    perf-1940501.map
   0.00%          ld-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized
# Parameters: (iterations = 1000, size = 512)

# Run progress: 62.50% complete, ETA 00:05:38
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 14.227 ms/op
# Warmup Iteration   2: 9.183 ms/op
# Warmup Iteration   3: 9.183 ms/op
# Warmup Iteration   4: 9.184 ms/op
# Warmup Iteration   5: 9.184 ms/op
Iteration   1: 9.184 ms/op
Iteration   2: 9.184 ms/op
Iteration   3: 9.184 ms/op
Iteration   4: 9.184 ms/op
Iteration   5: 9.184 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized":
  9.184 ±(99.9%) 0.001 ms/op [Average]
  (min, avg, max) = (9.184, 9.184, 9.184), stdev = 0.001
  CI (99.9%): [9.183, 9.185] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized:asm":
PrintAssembly processed: 189336 total address lines.
Perf output processed (skipped 56.868 seconds):
 Column 1: cycles (50909 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 952 

                                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                             ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@145 (line 120)
                   0x00007f3b44675ddf:   vmulpd %ymm11,%ymm0,%ymm6
                   0x00007f3b44675de4:   vsubpd %ymm1,%ymm1,%ymm8
                   0x00007f3b44675de8:   mov    $0xfa0,%r14d
                   0x00007f3b44675dee:   movabs $0x76641c030,%rax            ;   {oop([D{0x000000076641c030})}
                   0x00007f3b44675df8:   xor    %r10d,%r10d
                   0x00007f3b44675dfb:   nopl   0x0(%rax,%rax,1)
                   0x00007f3b44675e00:   jmp    0x00007f3b4467607f
   0.10%  ↗↗↗↗↗    0x00007f3b44675e05:   vmovdqu 0x20(%rsp),%ymm6
   0.05%  │││││    0x00007f3b44675e0b:   vmovdqu 0x40(%rsp),%ymm7
   0.00%  │││││    0x00007f3b44675e11:   vmovdqu 0x60(%rsp),%ymm8
   0.00%  │││││    0x00007f3b44675e17:   vmovsd 0x10(%rsp),%xmm4
   0.04%  │││││    0x00007f3b44675e1d:   vmovdqu 0x80(%rsp),%ymm1
   0.03%  │││││    0x00007f3b44675e26:   vbroadcastsd %xmm0,%ymm3
   0.00%  │││││    0x00007f3b44675e2b:   vcmpeqpd %ymm3,%ymm14,%ymm3
   0.04%  │││││    0x00007f3b44675e30:   vblendvps %ymm3,%ymm7,%ymm11,%ymm3
   0.19%  │││││    0x00007f3b44675e36:   vmovdqu %ymm3,0x10(%rsi,%r8,8)
   0.09%  │││││    0x00007f3b44675e3d:   mov    0x458(%r15),%r11
          │││││    0x00007f3b44675e44:   add    $0x4,%r8d                    ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                              ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   0.01%  │││││    0x00007f3b44675e48:   vbroadcastsd %xmm4,%ymm3            ; ImmutableOopMap {rdi=Oop rax=Oop r13=Oop rsi=Derived_oop_r13 [0]=Oop }
          │││││                                                              ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │││││                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@335 (line 111)
   0.01%  │││││    0x00007f3b44675e4d:   test   %eax,(%r11)                  ;   {poll}
   0.05%  │││││    0x00007f3b44675e50:   cmp    %edx,%r8d
          │││││    0x00007f3b44675e53:   jge    0x00007f3b44676055
          │││││    0x00007f3b44675e59:   test   %ebp,%ebp
   0.01%  │││││    0x00007f3b44675e5b:   nopl   0x0(%rax,%rax,1)
   0.01%  │││││    0x00007f3b44675e60:   jle    0x00007f3b44676185
   0.04%  │││││    0x00007f3b44675e66:   vmovdqu %ymm1,0x80(%rsp)
          │││││    0x00007f3b44675e6f:   vmovsd %xmm4,0x10(%rsp)
   0.01%  │││││    0x00007f3b44675e75:   vmovdqu %ymm8,0x60(%rsp)
   0.02%  │││││    0x00007f3b44675e7b:   vmovdqu %ymm7,0x40(%rsp)
   0.05%  │││││    0x00007f3b44675e81:   vmovdqu %ymm6,0x20(%rsp)
          │││││    0x00007f3b44675e87:   vmovdqu 0x10(%rdi),%ymm9
   0.01%  │││││    0x00007f3b44675e8c:   vaddpd %ymm9,%ymm11,%ymm4
   0.01%  │││││    0x00007f3b44675e91:   vcvtsi2sd %r8d,%xmm1,%xmm1
   0.06%  │││││    0x00007f3b44675e96:   vbroadcastsd %xmm1,%ymm1
   0.01%  │││││    0x00007f3b44675e9b:   vaddpd 0x10(%rax),%ymm1,%ymm1       ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                              ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   0.01%  │││││    0x00007f3b44675ea0:   vbroadcastsd %xmm2,%ymm3            ;*invokestatic fromBitsCoerced {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                              ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcastBits@19 (line 3742)
          │││││                                                              ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3751)
          │││││                                                              ; - jdk.incubator.vector.DoubleVector::broadcastTemplate@7 (line 607)
          │││││                                                              ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 125)
          │││││                                                              ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 41)
          │││││                                                              ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 872)
          │││││                                                              ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1323)
          │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@80 (line 114)
   0.05%  │││││    0x00007f3b44675ea5:   vsubpd %ymm3,%ymm1,%ymm1            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                              ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   0.02%  │││││    0x00007f3b44675ea9:   vbroadcastsd %xmm5,%ymm3            ;*invokestatic fromBitsCoerced {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                              ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcastBits@19 (line 3742)
          │││││                                                              ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3751)
          │││││                                                              ; - jdk.incubator.vector.DoubleVector::broadcastTemplate@7 (line 607)
          │││││                                                              ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 125)
          │││││                                                              ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 41)
          │││││                                                              ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 872)
          │││││                                                              ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1397)
          │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@120 (line 115)
   0.01%  │││││    0x00007f3b44675eae:   vmulpd %ymm3,%ymm1,%ymm3            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                              ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │││││                                                              ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │││││                                                              ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │││││                                                              ; - jdk.incubator.vector.DoubleVector::lanewise@7 (line 872)
          │││││                                                              ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1397)
          │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@92 (line 114)
   0.01%  │││││    0x00007f3b44675eb2:   vaddpd %ymm3,%ymm8,%ymm1            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                              ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │││││                                                              ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │││││                                                              ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │││││                                                              ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@188 (line 126)
   0.07%  │││││    0x00007f3b44675eb6:   vmulpd %ymm1,%ymm1,%ymm6            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                              ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │││││                                                              ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │││││                                                              ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │││││                                                              ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
          │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@220 (line 130)
   0.01%  │││││    0x00007f3b44675eba:   vaddpd %ymm13,%ymm6,%ymm7           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                              ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   0.03%  │││││    0x00007f3b44675ebf:   vcmplepd %ymm10,%ymm7,%ymm7         ;*invokestatic compare {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                              ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
          │││││                                                              ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1969)
          │││││                                                              ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
          │││││                                                              ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
          │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
   0.03%  │││││    0x00007f3b44675ec5:   vblendvps %ymm7,%ymm4,%ymm11,%ymm14 ;*invokestatic test {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                              ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
          │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   0.11%  │││││    0x00007f3b44675ecb:   vtestps %ymm7,%ymm7                 ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                              ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
          ╰││││    0x00007f3b44675ed0:   je     0x00007f3b44675e05
   0.01%   ││││    0x00007f3b44675ed6:   cmp    $0x1,%r10d
   0.05%   ││││    0x00007f3b44675eda:   nopw   0x0(%rax,%rax,1)
   0.00%   ││││    0x00007f3b44675ee0:   jle    0x00007f3b446761b3
           ││││    0x00007f3b44675ee6:   vmovdqu %ymm13,%ymm8
           ││││    0x00007f3b44675eeb:   vmovdqu 0x80(%rsp),%ymm7
   0.05%   ││││    0x00007f3b44675ef4:   mov    $0x1,%r11d
   0.00%   ││││ ↗  0x00007f3b44675efa:   mov    %r11d,%r9d
           ││││ │  0x00007f3b44675efd:   data16 xchg %ax,%ax                 ;*aload {reexecute=0 rethrow=0 return_oop=0}
           ││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@179 (line 126)
   0.00%   ││││↗│  0x00007f3b44675f00:   vaddpd %ymm9,%ymm14,%ymm4
   1.74%   ││││││  0x00007f3b44675f05:   vsubpd %ymm8,%ymm6,%ymm6
   0.12%   ││││││  0x00007f3b44675f0a:   vaddpd %ymm1,%ymm1,%ymm1            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
           ││││││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
           ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   0.01%   ││││││  0x00007f3b44675f0e:   vaddpd %ymm3,%ymm6,%ymm6            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
           ││││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
           ││││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
           ││││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           ││││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
           ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@188 (line 126)
           ││││││  0x00007f3b44675f12:   vmulpd %ymm7,%ymm1,%ymm1            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
           ││││││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
           ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   1.68%   ││││││  0x00007f3b44675f16:   vmulpd %ymm6,%ymm6,%ymm7            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
           ││││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
           ││││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
           ││││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           ││││││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
           ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@220 (line 130)
   0.13%   ││││││  0x00007f3b44675f1a:   vaddpd %ymm12,%ymm1,%ymm8           ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
           ││││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
           ││││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
           ││││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           ││││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
           ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@207 (line 127)
           ││││││  0x00007f3b44675f1f:   vmulpd %ymm8,%ymm8,%ymm15           ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
           ││││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
           ││││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
           ││││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           ││││││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
           ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@229 (line 131)
   0.00%   ││││││  0x00007f3b44675f24:   vaddpd %ymm15,%ymm7,%ymm1           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
           ││││││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
           ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   2.92%   ││││││  0x00007f3b44675f29:   vcmplepd %ymm10,%ymm1,%ymm1         ;*invokestatic compare {reexecute=0 rethrow=0 return_oop=0}
           ││││││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
           ││││││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1969)
           ││││││                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
           ││││││                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
           ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
   6.61%   ││││││  0x00007f3b44675f2f:   vblendvps %ymm1,%ymm4,%ymm14,%ymm14 ;*invokestatic test {reexecute=0 rethrow=0 return_oop=0}
           ││││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
           ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   2.82%   ││││││  0x00007f3b44675f35:   vtestps %ymm1,%ymm1
   1.72%   ││││││  0x00007f3b44675f3a:   nopw   0x0(%rax,%rax,1)
           ╰│││││  0x00007f3b44675f40:   je     0x00007f3b44675e05
   2.86%    │││││  0x00007f3b44675f46:   vaddpd %ymm9,%ymm14,%ymm4
   1.75%    │││││  0x00007f3b44675f4b:   vaddpd %ymm6,%ymm6,%ymm1            ;   {no_reloc}
   0.00%    │││││  0x00007f3b44675f4f:   vsubpd %ymm15,%ymm7,%ymm6
            │││││  0x00007f3b44675f54:   vmulpd %ymm8,%ymm1,%ymm1            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
            │││││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
            │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   0.02%    │││││  0x00007f3b44675f59:   vaddpd %ymm3,%ymm6,%ymm6            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
            │││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
            │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
            │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
            │││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
            │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@188 (line 126)
   1.67%    │││││  0x00007f3b44675f5d:   vaddpd %ymm12,%ymm1,%ymm7           ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
            │││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
            │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
            │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
            │││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
            │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@207 (line 127)
   0.01%    │││││  0x00007f3b44675f62:   vmulpd %ymm6,%ymm6,%ymm8            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
            │││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
            │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
            │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
            │││││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
            │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@220 (line 130)
            │││││  0x00007f3b44675f66:   vmulpd %ymm7,%ymm7,%ymm15           ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
            │││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
            │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
            │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
            │││││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
            │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@229 (line 131)
   0.03%    │││││  0x00007f3b44675f6a:   vaddpd %ymm15,%ymm8,%ymm1           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
            │││││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
            │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   5.65%    │││││  0x00007f3b44675f6f:   vcmplepd %ymm10,%ymm1,%ymm1         ;*invokestatic compare {reexecute=0 rethrow=0 return_oop=0}
            │││││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
            │││││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1969)
            │││││                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
            │││││                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
            │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
   6.47%    │││││  0x00007f3b44675f75:   vblendvps %ymm1,%ymm4,%ymm14,%ymm14 ;*invokestatic test {reexecute=0 rethrow=0 return_oop=0}
            │││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
            │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   3.87%    │││││  0x00007f3b44675f7b:   nopl   0x0(%rax,%rax,1)
            │││││  0x00007f3b44675f80:   vtestps %ymm1,%ymm1
   1.37%    ╰││││  0x00007f3b44675f85:   je     0x00007f3b44675e05
   3.52%     ││││  0x00007f3b44675f8b:   vaddpd %ymm9,%ymm14,%ymm4
   1.70%     ││││  0x00007f3b44675f90:   vaddpd %ymm6,%ymm6,%ymm1
             ││││  0x00007f3b44675f94:   vsubpd %ymm15,%ymm8,%ymm6
             ││││  0x00007f3b44675f99:   vmulpd %ymm7,%ymm1,%ymm1            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
             ││││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
             ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
             ││││  0x00007f3b44675f9d:   vaddpd %ymm3,%ymm6,%ymm6            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
             ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
             ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
             ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
             ││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
             ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@188 (line 126)
   1.68%     ││││  0x00007f3b44675fa1:   vaddpd %ymm12,%ymm1,%ymm7           ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
             ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
             ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
             ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
             ││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
             ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@207 (line 127)
   0.00%     ││││  0x00007f3b44675fa6:   vmulpd %ymm6,%ymm6,%ymm8            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
             ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
             ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
             ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
             ││││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
             ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@220 (line 130)
             ││││  0x00007f3b44675faa:   vmulpd %ymm7,%ymm7,%ymm15           ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
             ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
             ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
             ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
             ││││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
             ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@229 (line 131)
   0.02%     ││││  0x00007f3b44675fae:   vaddpd %ymm15,%ymm8,%ymm1           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
             ││││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
             ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   5.07%     ││││  0x00007f3b44675fb3:   vcmplepd %ymm10,%ymm1,%ymm1         ;*invokestatic compare {reexecute=0 rethrow=0 return_oop=0}
             ││││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
             ││││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1969)
             ││││                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
             ││││                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
             ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
   6.66%     ││││  0x00007f3b44675fb9:   vblendvps %ymm1,%ymm4,%ymm14,%ymm14 ;*invokestatic test {reexecute=0 rethrow=0 return_oop=0}
             ││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
             ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   3.79%     ││││  0x00007f3b44675fbf:   nop
             ││││  0x00007f3b44675fc0:   vtestps %ymm1,%ymm1
   1.51%     ╰│││  0x00007f3b44675fc5:   je     0x00007f3b44675e05
   3.41%      │││  0x00007f3b44675fcb:   vaddpd %ymm9,%ymm14,%ymm4
   1.75%      │││  0x00007f3b44675fd0:   vaddpd %ymm6,%ymm6,%ymm1
              │││  0x00007f3b44675fd4:   vsubpd %ymm15,%ymm8,%ymm6
              │││  0x00007f3b44675fd9:   vmulpd %ymm7,%ymm1,%ymm7            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
              │││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
              │││  0x00007f3b44675fdd:   vaddpd %ymm3,%ymm6,%ymm1            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
              │││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
              │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
              │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              │││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@188 (line 126)
   1.61%      │││  0x00007f3b44675fe1:   vaddpd %ymm12,%ymm7,%ymm7           ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
              │││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
              │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
              │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              │││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@207 (line 127)
   0.00%      │││  0x00007f3b44675fe6:   vmulpd %ymm1,%ymm1,%ymm6            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
              │││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
              │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
              │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              │││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@220 (line 130)
              │││  0x00007f3b44675fea:   vmulpd %ymm7,%ymm7,%ymm8            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
              │││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
              │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
              │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              │││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@229 (line 131)
   0.01%      │││  0x00007f3b44675fee:   vaddpd %ymm8,%ymm6,%ymm15           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
              │││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   5.59%      │││  0x00007f3b44675ff3:   vcmplepd %ymm10,%ymm15,%ymm15       ;*invokestatic compare {reexecute=0 rethrow=0 return_oop=0}
              │││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
              │││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1969)
              │││                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
              │││                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
   6.53%      │││  0x00007f3b44675ff9:   vblendvps %ymm15,%ymm4,%ymm14,%ymm14;*invokestatic test {reexecute=0 rethrow=0 return_oop=0}
              │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   5.07%      │││  0x00007f3b44675fff:   nop
              │││  0x00007f3b44676000:   vtestps %ymm15,%ymm15
   0.48%      ╰││  0x00007f3b44676005:   je     0x00007f3b44675e05
   2.82%       ││  0x00007f3b4467600b:   mov    %r10d,%ebx
   0.11%       ││  0x00007f3b4467600e:   sub    %r11d,%ebx
               ││  0x00007f3b44676011:   xor    %ecx,%ecx
               ││  0x00007f3b44676013:   cmp    %r11d,%r10d
   1.51%       ││  0x00007f3b44676016:   cmovl  %ecx,%ebx
   0.10%       ││  0x00007f3b44676019:   cmp    $0xfa0,%ebx
               ││  0x00007f3b4467601f:   cmova  %r14d,%ebx
   1.60%       ││  0x00007f3b44676023:   add    %r11d,%ebx
   0.11%       ││  0x00007f3b44676026:   add    $0x4,%r9d
               ││  0x00007f3b4467602a:   cmp    %ebx,%r9d
               ╰│  0x00007f3b4467602d:   jl     0x00007f3b44675f00
                │  0x00007f3b44676033:   mov    0x458(%r15),%r11             ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   0.00%        │  0x00007f3b4467603a:   vbroadcastsd 0x10(%rsp),%ymm4       ; ImmutableOopMap {rdi=Oop rax=Oop r13=Oop rsi=Derived_oop_r13 [0]=Oop }
                │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
                │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@276 (line 140)
                │  0x00007f3b44676041:   test   %eax,(%r11)                  ;   {poll}
                │  0x00007f3b44676044:   cmp    %r10d,%r9d
                │  0x00007f3b44676047:   jge    0x00007f3b446761c7
                │  0x00007f3b4467604d:   mov    %r9d,%r11d
                ╰  0x00007f3b44676050:   jmp    0x00007f3b44675efa
                   0x00007f3b44676055:   mov    (%rsp),%rsi
....................................................................................................
  97.39%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.39%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 952 
   0.44%              kernel  [unknown] 
   0.27%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 952 
   0.19%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 3, compile id 1018 
   0.11%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 1016 
   0.04%              kernel  [unknown] 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.02%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 1016 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.01%  <...other 336 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.67%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 952 
   1.56%              kernel  [unknown] 
   0.19%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 3, compile id 1018 
   0.07%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 1016 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.02%                      <unknown> 
   0.02%      hsdis-amd64.so  print_insn 
   0.02%           libjvm.so  xmlStream::write_text 
   0.02%           libjvm.so  fileStream::write 
   0.02%         interpreter  dload  24 dload  
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  syscall 
   0.01%         interpreter  invokevirtual  182 invokevirtual  
   0.01%         interpreter  return entry points  
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%         interpreter  getstatic  178 getstatic  
   0.01%         interpreter  dmul  107 dmul  
   0.01%         interpreter  goto  167 goto  
   0.01%         interpreter  dadd  99 dadd  
   0.01%         interpreter  dstore  57 dstore  
   0.29%  <...other 120 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.86%         c2, level 4
   1.56%              kernel
   0.20%           libjvm.so
   0.14%         interpreter
   0.08%        libc-2.31.so
   0.07%         c1, level 3
   0.03%      hsdis-amd64.so
   0.02%                    
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.00%    perf-1940569.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized
# Parameters: (iterations = 2000, size = 256)

# Run progress: 75.00% complete, ETA 00:03:44
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.257 ms/op
# Warmup Iteration   2: 4.840 ms/op
# Warmup Iteration   3: 4.840 ms/op
# Warmup Iteration   4: 4.840 ms/op
# Warmup Iteration   5: 4.840 ms/op
Iteration   1: 4.840 ms/op
Iteration   2: 4.840 ms/op
Iteration   3: 4.840 ms/op
Iteration   4: 4.840 ms/op
Iteration   5: 4.840 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized":
  4.840 ±(99.9%) 0.001 ms/op [Average]
  (min, avg, max) = (4.840, 4.840, 4.840), stdev = 0.001
  CI (99.9%): [4.839, 4.840] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized:asm":
PrintAssembly processed: 192682 total address lines.
Perf output processed (skipped 57.039 seconds):
 Column 1: cycles (51468 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 972 

                                                                              ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                              ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@145 (line 120)
                    0x00007fb638674060:   vmulpd %ymm10,%ymm0,%ymm5
                    0x00007fb638674065:   vsubpd %ymm1,%ymm1,%ymm7
                    0x00007fb638674069:   mov    $0xfa0,%edi
                    0x00007fb63867406e:   movabs $0x7f20005d0,%rax            ;   {oop([D{0x00000007f20005d0})}
                    0x00007fb638674078:   xor    %r10d,%r10d
                    0x00007fb63867407b:   nopl   0x0(%rax,%rax,1)
                    0x00007fb638674080:   jmp    0x00007fb6386742d3
   0.04%   ↗↗↗↗↗    0x00007fb638674085:   vmovdqu 0x20(%rsp),%ymm5
   0.03%   │││││    0x00007fb63867408b:   vmovdqu 0x40(%rsp),%ymm6
           │││││    0x00007fb638674091:   vmovdqu 0x60(%rsp),%ymm7
   0.00%   │││││    0x00007fb638674097:   vmovsd 0x10(%rsp),%xmm3
   0.02%   │││││    0x00007fb63867409d:   vmovq  %r13,%xmm4
   0.03%   │││││    0x00007fb6386740a2:   vbroadcastsd %xmm4,%ymm2
   0.00%   │││││    0x00007fb6386740a7:   vcmpeqpd %ymm2,%ymm13,%ymm2
   0.02%   │││││    0x00007fb6386740ac:   vblendvps %ymm2,%ymm6,%ymm10,%ymm2
   0.09%   │││││    0x00007fb6386740b2:   vmovdqu %ymm2,0x10(%rbp,%rcx,8)
   0.02%   │││││    0x00007fb6386740b8:   mov    0x458(%r15),%r8
           │││││    0x00007fb6386740bf:   add    $0x4,%ecx                    ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
           │││││                                                              ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
           │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   0.00%   │││││    0x00007fb6386740c2:   vbroadcastsd %xmm3,%ymm2            ; ImmutableOopMap {r11=Oop rbx=Oop rbp=Derived_oop_rbx rax=Oop [0]=Oop }
           │││││                                                              ;*goto {reexecute=1 rethrow=0 return_oop=0}
           │││││                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@335 (line 111)
   0.01%   │││││    0x00007fb6386740c7:   test   %eax,(%r8)                   ;   {poll}
   0.02%   │││││    0x00007fb6386740ca:   cmp    %edx,%ecx
          ╭│││││    0x00007fb6386740cc:   jge    0x00007fb6386742ab
          ││││││    0x00007fb6386740d2:   test   %r9d,%r9d
          ││││││    0x00007fb6386740d5:   jle    0x00007fb6386743d8
   0.01%  ││││││    0x00007fb6386740db:   vmovq  %xmm4,%r13
   0.00%  ││││││    0x00007fb6386740e0:   vmovsd %xmm3,0x10(%rsp)
   0.02%  ││││││    0x00007fb6386740e6:   vmovdqu %ymm7,0x60(%rsp)
          ││││││    0x00007fb6386740ec:   vmovdqu %ymm6,0x40(%rsp)
   0.01%  ││││││    0x00007fb6386740f2:   vmovdqu %ymm5,0x20(%rsp)
   0.01%  ││││││    0x00007fb6386740f8:   vmovdqu 0x10(%r11),%ymm14
   0.02%  ││││││    0x00007fb6386740fe:   vaddpd %ymm14,%ymm10,%ymm4
   0.00%  ││││││    0x00007fb638674103:   vcvtsi2sd %ecx,%xmm2,%xmm2
   0.01%  ││││││    0x00007fb638674107:   vbroadcastsd %xmm2,%ymm2
   0.02%  ││││││    0x00007fb63867410c:   vaddpd 0x10(%rax),%ymm2,%ymm2       ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                              ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          ││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   0.00%  ││││││    0x00007fb638674111:   vbroadcastsd %xmm1,%ymm3            ;*invokestatic fromBitsCoerced {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                              ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcastBits@19 (line 3742)
          ││││││                                                              ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3751)
          ││││││                                                              ; - jdk.incubator.vector.DoubleVector::broadcastTemplate@7 (line 607)
          ││││││                                                              ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 125)
          ││││││                                                              ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 41)
          ││││││                                                              ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 872)
          ││││││                                                              ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1323)
          ││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@80 (line 114)
   0.00%  ││││││    0x00007fb638674116:   vsubpd %ymm3,%ymm2,%ymm2            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                              ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          ││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   0.01%  ││││││    0x00007fb63867411a:   vbroadcastsd %xmm0,%ymm3            ;*invokestatic fromBitsCoerced {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                              ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcastBits@19 (line 3742)
          ││││││                                                              ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3751)
          ││││││                                                              ; - jdk.incubator.vector.DoubleVector::broadcastTemplate@7 (line 607)
          ││││││                                                              ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 125)
          ││││││                                                              ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 41)
          ││││││                                                              ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 872)
          ││││││                                                              ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1397)
          ││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@120 (line 115)
   0.02%  ││││││    0x00007fb63867411f:   vmulpd %ymm3,%ymm2,%ymm3            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                              ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          ││││││                                                              ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          ││││││                                                              ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          ││││││                                                              ; - jdk.incubator.vector.DoubleVector::lanewise@7 (line 872)
          ││││││                                                              ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1397)
          ││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@92 (line 114)
          ││││││    0x00007fb638674123:   vaddpd %ymm3,%ymm7,%ymm2            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                              ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          ││││││                                                              ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          ││││││                                                              ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          ││││││                                                              ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          ││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@188 (line 126)
   0.01%  ││││││    0x00007fb638674127:   vmulpd %ymm2,%ymm2,%ymm5            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                              ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          ││││││                                                              ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          ││││││                                                              ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          ││││││                                                              ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
          ││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@220 (line 130)
   0.01%  ││││││    0x00007fb63867412b:   vaddpd %ymm12,%ymm5,%ymm6           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                              ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          ││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   0.03%  ││││││    0x00007fb638674130:   vcmplepd %ymm9,%ymm6,%ymm6          ;*invokestatic compare {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                              ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
          ││││││                                                              ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1969)
          ││││││                                                              ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
          ││││││                                                              ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
          ││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
   0.01%  ││││││    0x00007fb638674136:   vblendvps %ymm6,%ymm4,%ymm10,%ymm13 ;*invokestatic test {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                              ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
          ││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   0.05%  ││││││    0x00007fb63867413c:   nopl   0x0(%rax)
          ││││││    0x00007fb638674140:   vtestps %ymm6,%ymm6                 ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                              ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          ││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   0.00%  │╰││││    0x00007fb638674145:   je     0x00007fb638674085
   0.03%  │ ││││    0x00007fb63867414b:   cmp    $0x1,%r10d
          │ ││││    0x00007fb63867414f:   jle    0x00007fb638674409
          │ ││││    0x00007fb638674155:   vmovdqu %ymm12,%ymm7
          │ ││││    0x00007fb63867415a:   vmovdqu %ymm11,%ymm6
          │ ││││    0x00007fb63867415f:   mov    $0x1,%r8d
   0.02%  │ ││││ ↗  0x00007fb638674165:   mov    %r10d,%esi
   0.01%  │ ││││ │  0x00007fb638674168:   sub    %r8d,%esi
          │ ││││ │  0x00007fb63867416b:   cmp    %r8d,%r10d
          │ ││││ │  0x00007fb63867416e:   cmovl  %r14d,%esi
   0.02%  │ ││││ │  0x00007fb638674172:   cmp    $0xfa0,%esi
   0.00%  │ ││││ │  0x00007fb638674178:   cmova  %edi,%esi
          │ ││││ │  0x00007fb63867417b:   add    %r8d,%esi
   0.03%  │ ││││ │  0x00007fb63867417e:   xchg   %ax,%ax                      ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@179 (line 126)
   0.00%  │ ││││↗│  0x00007fb638674180:   vaddpd %ymm14,%ymm13,%ymm4
   1.68%  │ ││││││  0x00007fb638674185:   vsubpd %ymm7,%ymm5,%ymm5
   0.03%  │ ││││││  0x00007fb638674189:   vaddpd %ymm2,%ymm2,%ymm2            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          │ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   0.02%  │ ││││││  0x00007fb63867418d:   vaddpd %ymm3,%ymm5,%ymm5            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │ ││││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │ ││││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          │ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@188 (line 126)
          │ ││││││  0x00007fb638674191:   vmulpd %ymm6,%ymm2,%ymm2            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          │ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   1.66%  │ ││││││  0x00007fb638674195:   vmulpd %ymm5,%ymm5,%ymm6            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │ ││││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │ ││││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
          │ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@220 (line 130)
   0.06%  │ ││││││  0x00007fb638674199:   vaddpd %ymm8,%ymm2,%ymm7            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │ ││││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │ ││││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          │ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@207 (line 127)
   0.03%  │ ││││││  0x00007fb63867419e:   vmulpd %ymm7,%ymm7,%ymm15           ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │ ││││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │ ││││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
          │ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@229 (line 131)
   0.03%  │ ││││││  0x00007fb6386741a2:   vaddpd %ymm15,%ymm6,%ymm2           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          │ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   5.35%  │ ││││││  0x00007fb6386741a7:   vcmplepd %ymm9,%ymm2,%ymm2          ;*invokestatic compare {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
          │ ││││││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1969)
          │ ││││││                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
          │ ││││││                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
          │ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
   7.53%  │ ││││││  0x00007fb6386741ad:   vblendvps %ymm2,%ymm4,%ymm13,%ymm13 ;*invokestatic test {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
          │ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   3.42%  │ ││││││  0x00007fb6386741b3:   vtestps %ymm2,%ymm2
   1.33%  │ ╰│││││  0x00007fb6386741b8:   je     0x00007fb638674085
   3.27%  │  │││││  0x00007fb6386741be:   vaddpd %ymm14,%ymm13,%ymm4
   1.66%  │  │││││  0x00007fb6386741c3:   vaddpd %ymm5,%ymm5,%ymm2            ;   {no_reloc}
          │  │││││  0x00007fb6386741c7:   vsubpd %ymm15,%ymm6,%ymm5
          │  │││││  0x00007fb6386741cc:   vmulpd %ymm7,%ymm2,%ymm2            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │  │││││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          │  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
          │  │││││  0x00007fb6386741d0:   vaddpd %ymm3,%ymm5,%ymm5            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          │  │││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │  │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │  │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │  │││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          │  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@188 (line 126)
   1.70%  │  │││││  0x00007fb6386741d4:   vaddpd %ymm8,%ymm2,%ymm6            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          │  │││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │  │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │  │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │  │││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          │  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@207 (line 127)
          │  │││││  0x00007fb6386741d9:   vmulpd %ymm5,%ymm5,%ymm7            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          │  │││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │  │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │  │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │  │││││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
          │  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@220 (line 130)
          │  │││││  0x00007fb6386741dd:   vmulpd %ymm6,%ymm6,%ymm15           ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          │  │││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │  │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │  │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │  │││││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
          │  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@229 (line 131)
   0.00%  │  │││││  0x00007fb6386741e1:   vaddpd %ymm15,%ymm7,%ymm2           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │  │││││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          │  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   4.92%  │  │││││  0x00007fb6386741e6:   vcmplepd %ymm9,%ymm2,%ymm2          ;*invokestatic compare {reexecute=0 rethrow=0 return_oop=0}
          │  │││││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
          │  │││││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1969)
          │  │││││                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
          │  │││││                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
          │  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
   7.35%  │  │││││  0x00007fb6386741ec:   vblendvps %ymm2,%ymm4,%ymm13,%ymm13 ;*invokestatic test {reexecute=0 rethrow=0 return_oop=0}
          │  │││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
          │  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   3.21%  │  │││││  0x00007fb6386741f2:   vtestps %ymm2,%ymm2
   1.40%  │  ╰││││  0x00007fb6386741f7:   je     0x00007fb638674085
   3.26%  │   ││││  0x00007fb6386741fd:   vaddpd %ymm14,%ymm13,%ymm4
   1.71%  │   ││││  0x00007fb638674202:   vaddpd %ymm5,%ymm5,%ymm2
          │   ││││  0x00007fb638674206:   vsubpd %ymm15,%ymm7,%ymm5
          │   ││││  0x00007fb63867420b:   vmulpd %ymm6,%ymm2,%ymm2            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │   ││││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
          │   ││││  0x00007fb63867420f:   vaddpd %ymm3,%ymm5,%ymm5            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          │   ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │   ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │   ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │   ││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@188 (line 126)
   1.80%  │   ││││  0x00007fb638674213:   vaddpd %ymm8,%ymm2,%ymm6            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          │   ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │   ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │   ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │   ││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@207 (line 127)
          │   ││││  0x00007fb638674218:   vmulpd %ymm5,%ymm5,%ymm7            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          │   ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │   ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │   ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │   ││││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
          │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@220 (line 130)
   0.01%  │   ││││  0x00007fb63867421c:   vmulpd %ymm6,%ymm6,%ymm15           ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          │   ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │   ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │   ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │   ││││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
          │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@229 (line 131)
   0.01%  │   ││││  0x00007fb638674220:   vaddpd %ymm15,%ymm7,%ymm2           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │   ││││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   5.46%  │   ││││  0x00007fb638674225:   vcmplepd %ymm9,%ymm2,%ymm2          ;*invokestatic compare {reexecute=0 rethrow=0 return_oop=0}
          │   ││││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
          │   ││││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1969)
          │   ││││                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
          │   ││││                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
          │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
   7.56%  │   ││││  0x00007fb63867422b:   vblendvps %ymm2,%ymm4,%ymm13,%ymm13 ;*invokestatic test {reexecute=0 rethrow=0 return_oop=0}
          │   ││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
          │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   3.44%  │   ││││  0x00007fb638674231:   vtestps %ymm2,%ymm2
   1.33%  │   ╰│││  0x00007fb638674236:   je     0x00007fb638674085
   3.21%  │    │││  0x00007fb63867423c:   vaddpd %ymm14,%ymm13,%ymm4
   1.67%  │    │││  0x00007fb638674241:   vaddpd %ymm5,%ymm5,%ymm2
          │    │││  0x00007fb638674245:   vsubpd %ymm15,%ymm7,%ymm5
          │    │││  0x00007fb63867424a:   vmulpd %ymm6,%ymm2,%ymm6            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │    │││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   0.00%  │    │││  0x00007fb63867424e:   vaddpd %ymm3,%ymm5,%ymm2            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          │    │││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │    │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │    │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │    │││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@188 (line 126)
   1.55%  │    │││  0x00007fb638674252:   vaddpd %ymm8,%ymm6,%ymm6            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          │    │││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │    │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │    │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │    │││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@207 (line 127)
          │    │││  0x00007fb638674257:   vmulpd %ymm2,%ymm2,%ymm5            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          │    │││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │    │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │    │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │    │││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
          │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@220 (line 130)
          │    │││  0x00007fb63867425b:   vmulpd %ymm6,%ymm6,%ymm7            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          │    │││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │    │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │    │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │    │││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
          │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@229 (line 131)
   0.01%  │    │││  0x00007fb63867425f:   vaddpd %ymm7,%ymm5,%ymm15           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │    │││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   5.41%  │    │││  0x00007fb638674263:   vcmplepd %ymm9,%ymm15,%ymm15        ;*invokestatic compare {reexecute=0 rethrow=0 return_oop=0}
          │    │││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
          │    │││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1969)
          │    │││                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
          │    │││                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
          │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
   8.65%  │    │││  0x00007fb638674269:   vblendvps %ymm15,%ymm4,%ymm13,%ymm13;*invokestatic test {reexecute=0 rethrow=0 return_oop=0}
          │    │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
          │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   2.98%  │    │││  0x00007fb63867426f:   vtestps %ymm15,%ymm15
   0.28%  │    ╰││  0x00007fb638674274:   je     0x00007fb638674085
   2.79%  │     ││  0x00007fb63867427a:   add    $0x4,%r8d
   0.02%  │     ││  0x00007fb63867427e:   xchg   %ax,%ax
          │     ││  0x00007fb638674280:   cmp    %esi,%r8d
          │     ╰│  0x00007fb638674283:   jl     0x00007fb638674180
          │      │  0x00007fb638674289:   mov    0x458(%r15),%rsi             ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   0.01%  │      │  0x00007fb638674290:   vbroadcastsd 0x10(%rsp),%ymm4       ; ImmutableOopMap {r11=Oop rbx=Oop rbp=Derived_oop_rbx rax=Oop [0]=Oop }
          │      │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │      │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@276 (line 140)
          │      │  0x00007fb638674297:   test   %eax,(%rsi)                  ;   {poll}
          │      │  0x00007fb638674299:   cmp    %r10d,%r8d
          │      │  0x00007fb63867429c:   nopl   0x0(%rax)
   0.00%  │      ╰  0x00007fb6386742a0:   jl     0x00007fb638674165
          │         0x00007fb6386742a6:   jmp    0x00007fb638674419
          ↘         0x00007fb6386742ab:   mov    (%rsp),%rsi
                    0x00007fb6386742af:   mov    0x8(%rsp),%r10d
                    0x00007fb6386742b4:   mov    0x458(%r15),%r8              ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
                    0x00007fb6386742bb:   mov    0xc(%rsi),%ecx               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@11 (line 105)
                    0x00007fb6386742be:   add    $0x4,%r10d                   ; ImmutableOopMap {r11=Oop rsi=Oop rax=Oop }
                                                                              ;*goto {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  96.40%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.40%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 972 
   1.52%              kernel  [unknown] 
   0.24%              kernel  [unknown] 
   0.14%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 972 
   0.10%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 2, compile id 1033 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%         interpreter  dload  24 dload  
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 3, compile id 1034 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%         interpreter  dmul  107 dmul  
   1.10%  <...other 335 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.54%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 972 
   2.81%              kernel  [unknown] 
   0.08%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 3, compile id 1034 
   0.05%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 2, compile id 1033 
   0.05%                      <unknown> 
   0.03%         interpreter  dload  24 dload  
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%         interpreter  dmul  107 dmul  
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  syscall 
   0.01%         interpreter  getstatic  178 getstatic  
   0.01%      hsdis-amd64.so  print_insn 
   0.01%         interpreter  if_icmpge  162 if_icmpge  
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%         interpreter  fast_iaccess_0  221 fast_iaccess_0  
   0.01%         interpreter  lload  22 lload  
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  fileStream::write 
   0.01%         interpreter  invokevirtual  182 invokevirtual  
   0.28%  <...other 111 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.62%         c2, level 4
   2.81%              kernel
   0.17%           libjvm.so
   0.16%         interpreter
   0.10%        libc-2.31.so
   0.05%         c1, level 3
   0.05%                    
   0.02%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%    perf-1940634.map
   0.00%      libz.so.1.2.11
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized
# Parameters: (iterations = 2000, size = 512)

# Run progress: 87.50% complete, ETA 00:01:52
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 28.687 ms/op
# Warmup Iteration   2: 18.090 ms/op
# Warmup Iteration   3: 18.088 ms/op
# Warmup Iteration   4: 18.089 ms/op
# Warmup Iteration   5: 18.089 ms/op
Iteration   1: 18.089 ms/op
Iteration   2: 18.088 ms/op
Iteration   3: 18.089 ms/op
Iteration   4: 18.088 ms/op
Iteration   5: 18.089 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized":
  18.088 ±(99.9%) 0.002 ms/op [Average]
  (min, avg, max) = (18.088, 18.088, 18.089), stdev = 0.001
  CI (99.9%): [18.087, 18.090] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized:asm":
PrintAssembly processed: 187284 total address lines.
Perf output processed (skipped 56.878 seconds):
 Column 1: cycles (51059 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 955 

                                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@145 (line 120)
                  0x00007f99386727e0:   vmulpd %ymm10,%ymm0,%ymm5
                  0x00007f99386727e5:   vsubpd %ymm1,%ymm1,%ymm7
                  0x00007f99386727e9:   mov    $0xfa0,%edi
                  0x00007f99386727ee:   movabs $0x76681c340,%rax            ;   {oop([D{0x000000076681c340})}
                  0x00007f99386727f8:   xor    %r10d,%r10d
                  0x00007f99386727fb:   nopl   0x0(%rax,%rax,1)
                  0x00007f9938672800:   jmp    0x00007f9938672a53
   0.04%  ↗↗↗↗↗   0x00007f9938672805:   vmovdqu 0x20(%rsp),%ymm5
   0.04%  │││││   0x00007f993867280b:   vmovdqu 0x40(%rsp),%ymm6
          │││││   0x00007f9938672811:   vmovdqu 0x60(%rsp),%ymm7
          │││││   0x00007f9938672817:   vmovsd 0x10(%rsp),%xmm3
   0.02%  │││││   0x00007f993867281d:   vmovq  %r13,%xmm4
   0.01%  │││││   0x00007f9938672822:   vbroadcastsd %xmm4,%ymm2
          │││││   0x00007f9938672827:   vcmpeqpd %ymm2,%ymm13,%ymm2
   0.03%  │││││   0x00007f993867282c:   vblendvps %ymm2,%ymm6,%ymm10,%ymm2
   0.10%  │││││   0x00007f9938672832:   vmovdqu %ymm2,0x10(%rbp,%rcx,8)
   0.02%  │││││   0x00007f9938672838:   mov    0x458(%r15),%r8
          │││││   0x00007f993867283f:   add    $0x4,%ecx                    ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   0.00%  │││││   0x00007f9938672842:   vbroadcastsd %xmm3,%ymm2            ; ImmutableOopMap {r11=Oop rbx=Oop rbp=Derived_oop_rbx rax=Oop [0]=Oop }
          │││││                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │││││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@335 (line 111)
   0.01%  │││││   0x00007f9938672847:   test   %eax,(%r8)                   ;   {poll}
   0.03%  │││││   0x00007f993867284a:   cmp    %edx,%ecx
          │││││   0x00007f993867284c:   jge    0x00007f9938672a2b
          │││││   0x00007f9938672852:   test   %r9d,%r9d
          │││││   0x00007f9938672855:   jle    0x00007f9938672b58
   0.00%  │││││   0x00007f993867285b:   vmovq  %xmm4,%r13
   0.01%  │││││   0x00007f9938672860:   vmovsd %xmm3,0x10(%rsp)
   0.02%  │││││   0x00007f9938672866:   vmovdqu %ymm7,0x60(%rsp)
          │││││   0x00007f993867286c:   vmovdqu %ymm6,0x40(%rsp)
   0.00%  │││││   0x00007f9938672872:   vmovdqu %ymm5,0x20(%rsp)
   0.01%  │││││   0x00007f9938672878:   vmovdqu 0x10(%r11),%ymm14
   0.02%  │││││   0x00007f993867287e:   vaddpd %ymm14,%ymm10,%ymm4
          │││││   0x00007f9938672883:   vcvtsi2sd %ecx,%xmm2,%xmm2
   0.01%  │││││   0x00007f9938672887:   vbroadcastsd %xmm2,%ymm2
   0.01%  │││││   0x00007f993867288c:   vaddpd 0x10(%rax),%ymm2,%ymm2       ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
          │││││   0x00007f9938672891:   vbroadcastsd %xmm1,%ymm3            ;*invokestatic fromBitsCoerced {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                             ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcastBits@19 (line 3742)
          │││││                                                             ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3751)
          │││││                                                             ; - jdk.incubator.vector.DoubleVector::broadcastTemplate@7 (line 607)
          │││││                                                             ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 125)
          │││││                                                             ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 41)
          │││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 872)
          │││││                                                             ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1323)
          │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@80 (line 114)
   0.01%  │││││   0x00007f9938672896:   vsubpd %ymm3,%ymm2,%ymm2            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   0.01%  │││││   0x00007f993867289a:   vbroadcastsd %xmm0,%ymm3            ;*invokestatic fromBitsCoerced {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                             ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcastBits@19 (line 3742)
          │││││                                                             ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3751)
          │││││                                                             ; - jdk.incubator.vector.DoubleVector::broadcastTemplate@7 (line 607)
          │││││                                                             ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 125)
          │││││                                                             ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 41)
          │││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 872)
          │││││                                                             ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1397)
          │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@120 (line 115)
   0.02%  │││││   0x00007f993867289f:   vmulpd %ymm3,%ymm2,%ymm3            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewise@7 (line 872)
          │││││                                                             ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1397)
          │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@92 (line 114)
   0.00%  │││││   0x00007f99386728a3:   vaddpd %ymm3,%ymm7,%ymm2            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │││││                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@188 (line 126)
   0.01%  │││││   0x00007f99386728a7:   vmulpd %ymm2,%ymm2,%ymm5            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │││││                                                             ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
          │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@220 (line 130)
   0.02%  │││││   0x00007f99386728ab:   vaddpd %ymm12,%ymm5,%ymm6           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   0.02%  │││││   0x00007f99386728b0:   vcmplepd %ymm9,%ymm6,%ymm6          ;*invokestatic compare {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                             ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
          │││││                                                             ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1969)
          │││││                                                             ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
          │││││                                                             ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
          │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
   0.01%  │││││   0x00007f99386728b6:   vblendvps %ymm6,%ymm4,%ymm10,%ymm13 ;*invokestatic test {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                             ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
          │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   0.05%  │││││   0x00007f99386728bc:   nopl   0x0(%rax)
          │││││   0x00007f99386728c0:   vtestps %ymm6,%ymm6                 ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
          ╰││││   0x00007f99386728c5:   je     0x00007f9938672805
   0.03%   ││││   0x00007f99386728cb:   cmp    $0x1,%r10d
           ││││   0x00007f99386728cf:   jle    0x00007f9938672b89
   0.00%   ││││   0x00007f99386728d5:   vmovdqu %ymm12,%ymm7
           ││││   0x00007f99386728da:   vmovdqu %ymm11,%ymm6
           ││││   0x00007f99386728df:   mov    $0x1,%r8d
   0.03%   ││││   0x00007f99386728e5:   mov    %r10d,%esi
   0.00%   ││││   0x00007f99386728e8:   sub    %r8d,%esi
           ││││   0x00007f99386728eb:   cmp    %r8d,%r10d
           ││││   0x00007f99386728ee:   cmovl  %r14d,%esi
   0.04%   ││││   0x00007f99386728f2:   cmp    $0xfa0,%esi
   0.00%   ││││   0x00007f99386728f8:   cmova  %edi,%esi
   0.00%   ││││   0x00007f99386728fb:   add    %r8d,%esi
   0.01%   ││││   0x00007f99386728fe:   xchg   %ax,%ax                      ;*aload {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@179 (line 126)
           ││││↗  0x00007f9938672900:   vaddpd %ymm14,%ymm13,%ymm4
   1.66%   │││││  0x00007f9938672905:   vsubpd %ymm7,%ymm5,%ymm5
   0.02%   │││││  0x00007f9938672909:   vaddpd %ymm2,%ymm2,%ymm2            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
           │││││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
           │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   0.03%   │││││  0x00007f993867290d:   vaddpd %ymm3,%ymm5,%ymm5            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
           │││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
           │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
           │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           │││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
           │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@188 (line 126)
   0.00%   │││││  0x00007f9938672911:   vmulpd %ymm6,%ymm2,%ymm2            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
           │││││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
           │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   1.65%   │││││  0x00007f9938672915:   vmulpd %ymm5,%ymm5,%ymm6            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
           │││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
           │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
           │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           │││││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
           │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@220 (line 130)
   0.05%   │││││  0x00007f9938672919:   vaddpd %ymm8,%ymm2,%ymm7            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
           │││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
           │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
           │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           │││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
           │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@207 (line 127)
   0.02%   │││││  0x00007f993867291e:   vmulpd %ymm7,%ymm7,%ymm15           ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
           │││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
           │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
           │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           │││││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
           │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@229 (line 131)
   0.05%   │││││  0x00007f9938672922:   vaddpd %ymm15,%ymm6,%ymm2           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
           │││││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
           │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   5.28%   │││││  0x00007f9938672927:   vcmplepd %ymm9,%ymm2,%ymm2          ;*invokestatic compare {reexecute=0 rethrow=0 return_oop=0}
           │││││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
           │││││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1969)
           │││││                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
           │││││                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
           │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
   7.54%   │││││  0x00007f993867292d:   vblendvps %ymm2,%ymm4,%ymm13,%ymm13 ;*invokestatic test {reexecute=0 rethrow=0 return_oop=0}
           │││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
           │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   3.29%   │││││  0x00007f9938672933:   vtestps %ymm2,%ymm2
   1.27%   ╰││││  0x00007f9938672938:   je     0x00007f9938672805
   3.25%    ││││  0x00007f993867293e:   vaddpd %ymm14,%ymm13,%ymm4
   1.72%    ││││  0x00007f9938672943:   vaddpd %ymm5,%ymm5,%ymm2            ;   {no_reloc}
   0.00%    ││││  0x00007f9938672947:   vsubpd %ymm15,%ymm6,%ymm5
            ││││  0x00007f993867294c:   vmulpd %ymm7,%ymm2,%ymm2            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
            ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
            ││││  0x00007f9938672950:   vaddpd %ymm3,%ymm5,%ymm5            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
            ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
            ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
            ││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
            ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@188 (line 126)
   1.65%    ││││  0x00007f9938672954:   vaddpd %ymm8,%ymm2,%ymm6            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
            ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
            ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
            ││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
            ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@207 (line 127)
            ││││  0x00007f9938672959:   vmulpd %ymm5,%ymm5,%ymm7            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
            ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
            ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
            ││││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
            ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@220 (line 130)
   0.00%    ││││  0x00007f993867295d:   vmulpd %ymm6,%ymm6,%ymm15           ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
            ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
            ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
            ││││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
            ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@229 (line 131)
   0.00%    ││││  0x00007f9938672961:   vaddpd %ymm15,%ymm7,%ymm2           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
            ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   5.09%    ││││  0x00007f9938672966:   vcmplepd %ymm9,%ymm2,%ymm2          ;*invokestatic compare {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
            ││││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1969)
            ││││                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
            ││││                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
            ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
   7.61%    ││││  0x00007f993867296c:   vblendvps %ymm2,%ymm4,%ymm13,%ymm13 ;*invokestatic test {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
            ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   3.34%    ││││  0x00007f9938672972:   vtestps %ymm2,%ymm2
   1.34%    ╰│││  0x00007f9938672977:   je     0x00007f9938672805
   3.16%     │││  0x00007f993867297d:   vaddpd %ymm14,%ymm13,%ymm4
   1.72%     │││  0x00007f9938672982:   vaddpd %ymm5,%ymm5,%ymm2
             │││  0x00007f9938672986:   vsubpd %ymm15,%ymm7,%ymm5
             │││  0x00007f993867298b:   vmulpd %ymm6,%ymm2,%ymm2            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
             │││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
             │││  0x00007f993867298f:   vaddpd %ymm3,%ymm5,%ymm5            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
             │││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
             │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
             │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
             │││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@188 (line 126)
   1.71%     │││  0x00007f9938672993:   vaddpd %ymm8,%ymm2,%ymm6            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
             │││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
             │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
             │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
             │││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@207 (line 127)
   0.00%     │││  0x00007f9938672998:   vmulpd %ymm5,%ymm5,%ymm7            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
             │││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
             │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
             │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
             │││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@220 (line 130)
             │││  0x00007f993867299c:   vmulpd %ymm6,%ymm6,%ymm15           ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
             │││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
             │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
             │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
             │││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@229 (line 131)
   0.01%     │││  0x00007f99386729a0:   vaddpd %ymm15,%ymm7,%ymm2           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
             │││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   5.34%     │││  0x00007f99386729a5:   vcmplepd %ymm9,%ymm2,%ymm2          ;*invokestatic compare {reexecute=0 rethrow=0 return_oop=0}
             │││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
             │││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1969)
             │││                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
             │││                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
   7.54%     │││  0x00007f99386729ab:   vblendvps %ymm2,%ymm4,%ymm13,%ymm13 ;*invokestatic test {reexecute=0 rethrow=0 return_oop=0}
             │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   3.41%     │││  0x00007f99386729b1:   vtestps %ymm2,%ymm2
   1.29%     ╰││  0x00007f99386729b6:   je     0x00007f9938672805
   3.33%      ││  0x00007f99386729bc:   vaddpd %ymm14,%ymm13,%ymm4
   1.73%      ││  0x00007f99386729c1:   vaddpd %ymm5,%ymm5,%ymm2
              ││  0x00007f99386729c5:   vsubpd %ymm15,%ymm7,%ymm5
              ││  0x00007f99386729ca:   vmulpd %ymm6,%ymm2,%ymm6            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
              ││  0x00007f99386729ce:   vaddpd %ymm3,%ymm5,%ymm2            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
              ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
              ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              ││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@188 (line 126)
   1.71%      ││  0x00007f99386729d2:   vaddpd %ymm8,%ymm6,%ymm6            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
              ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
              ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              ││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@207 (line 127)
   0.00%      ││  0x00007f99386729d7:   vmulpd %ymm2,%ymm2,%ymm5            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
              ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
              ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              ││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@220 (line 130)
   0.00%      ││  0x00007f99386729db:   vmulpd %ymm6,%ymm6,%ymm7            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
              ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
              ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              ││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@229 (line 131)
   0.00%      ││  0x00007f99386729df:   vaddpd %ymm7,%ymm5,%ymm15           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   5.58%      ││  0x00007f99386729e3:   vcmplepd %ymm9,%ymm15,%ymm15        ;*invokestatic compare {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
              ││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1969)
              ││                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
              ││                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
   8.93%      ││  0x00007f99386729e9:   vblendvps %ymm15,%ymm4,%ymm13,%ymm13;*invokestatic test {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   3.25%      ││  0x00007f99386729ef:   vtestps %ymm15,%ymm15
   0.26%      ╰│  0x00007f99386729f4:   je     0x00007f9938672805
   2.77%       │  0x00007f99386729fa:   add    $0x4,%r8d
   0.01%       │  0x00007f99386729fe:   xchg   %ax,%ax
               │  0x00007f9938672a00:   cmp    %esi,%r8d
               ╰  0x00007f9938672a03:   jl     0x00007f9938672900
                  0x00007f9938672a09:   mov    0x458(%r15),%rsi             ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
                  0x00007f9938672a10:   vbroadcastsd 0x10(%rsp),%ymm4       ; ImmutableOopMap {r11=Oop rbx=Oop rbp=Derived_oop_rbx rax=Oop [0]=Oop }
                                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@276 (line 140)
                  0x00007f9938672a17:   test   %eax,(%rsi)                  ;   {poll}
                  0x00007f9938672a19:   cmp    %r10d,%r8d
....................................................................................................
  97.27%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.27%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 955 
   0.45%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 2, compile id 1017 
   0.26%              kernel  [unknown] 
   0.15%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 955 
   0.10%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 1016 
   0.02%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 1016 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  fileStream::write 
   1.14%  <...other 357 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.42%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 955 
   1.48%              kernel  [unknown] 
   0.46%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 2, compile id 1017 
   0.05%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 1016 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.03%                      <unknown> 
   0.02%  libpthread-2.31.so  __libc_write 
   0.02%           libjvm.so  fileStream::write 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%         interpreter  getstatic  178 getstatic  
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%         interpreter  dmul  107 dmul  
   0.01%         interpreter  fast_iaccess_0  221 fast_iaccess_0  
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%         interpreter  invokevirtual  182 invokevirtual  
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%         interpreter  dstore  57 dstore  
   0.01%           libjvm.so  RelocIterator::initialize 
   0.35%  <...other 129 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.89%         c2, level 4
   1.48%              kernel
   0.24%           libjvm.so
   0.13%        libc-2.31.so
   0.13%         interpreter
   0.05%         c1, level 3
   0.04%  libpthread-2.31.so
   0.03%                    
   0.01%      hsdis-amd64.so
   0.00%          ld-2.31.so
   0.00%    perf-1940697.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:14:54

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

Benchmark                                    (iterations)  (size)  Mode  Cnt    Score    Error  Units
MandelbrotVectorApiBenchmark.baseline                1000     256  avgt    5   33.224 ±  0.007  ms/op
MandelbrotVectorApiBenchmark.baseline:asm            1000     256  avgt           NaN             ---
MandelbrotVectorApiBenchmark.baseline                1000     512  avgt    5  130.152 ±  0.005  ms/op
MandelbrotVectorApiBenchmark.baseline:asm            1000     512  avgt           NaN             ---
MandelbrotVectorApiBenchmark.baseline                2000     256  avgt    5   64.494 ±  0.004  ms/op
MandelbrotVectorApiBenchmark.baseline:asm            2000     256  avgt           NaN             ---
MandelbrotVectorApiBenchmark.baseline                2000     512  avgt    5  258.372 ±  0.031  ms/op
MandelbrotVectorApiBenchmark.baseline:asm            2000     512  avgt           NaN             ---
MandelbrotVectorApiBenchmark.vectorized              1000     256  avgt    5    2.470 ±  0.001  ms/op
MandelbrotVectorApiBenchmark.vectorized:asm          1000     256  avgt           NaN             ---
MandelbrotVectorApiBenchmark.vectorized              1000     512  avgt    5    9.184 ±  0.001  ms/op
MandelbrotVectorApiBenchmark.vectorized:asm          1000     512  avgt           NaN             ---
MandelbrotVectorApiBenchmark.vectorized              2000     256  avgt    5    4.840 ±  0.001  ms/op
MandelbrotVectorApiBenchmark.vectorized:asm          2000     256  avgt           NaN             ---
MandelbrotVectorApiBenchmark.vectorized              2000     512  avgt    5   18.088 ±  0.002  ms/op
MandelbrotVectorApiBenchmark.vectorized:asm          2000     512  avgt           NaN             ---
