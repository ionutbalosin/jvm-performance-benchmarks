# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.baseline
# Parameters: (iterations = 1000, size = 256)

# Run progress: 0.00% complete, ETA 00:13:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 33.552 ms/op
# Warmup Iteration   2: 33.169 ms/op
# Warmup Iteration   3: 33.168 ms/op
# Warmup Iteration   4: 33.172 ms/op
# Warmup Iteration   5: 33.169 ms/op
Iteration   1: 33.168 ms/op
Iteration   2: 33.168 ms/op
Iteration   3: 33.167 ms/op
Iteration   4: 33.165 ms/op
Iteration   5: 33.166 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.baseline":
  33.167 ±(99.9%) 0.005 ms/op [Average]
  (min, avg, max) = (33.165, 33.167, 33.168), stdev = 0.001
  CI (99.9%): [33.162, 33.171] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.baseline:·asm":
PrintAssembly processed: 174347 total address lines.
Perf output processed (skipped 56.543 seconds):
 Column 1: cycles (54425 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 6, compile id 586 

                        0x00007fb8dcf6f0e2:   vmovsd -0x6a(%rip),%xmm3        # 0x00007fb8dcf6f080
                                                                                  ;   {section_word}
                        0x00007fb8dcf6f0ea:   vmovsd -0x8a(%rip),%xmm4        # 0x00007fb8dcf6f068
                                                                                  ;   {section_word}
                        0x00007fb8dcf6f0f2:   xor    %r8d,%r8d                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@146 (line 87)
                        0x00007fb8dcf6f0f5:   mov    $0x1f40,%r11d
                        0x00007fb8dcf6f0fb:   xor    %edx,%edx
                        0x00007fb8dcf6f0fd:   data16 xchg %ax,%ax
                        0x00007fb8dcf6f100:   jmp    0x00007fb8dcf6f3e6
   0.01%         ↗      0x00007fb8dcf6f105:   add    $0x4,%ebx
          ╭      │      0x00007fb8dcf6f108:   jmp    0x00007fb8dcf6f11f
   0.01%  │      │  ↗   0x00007fb8dcf6f10a:   add    $0x4,%ebx
   0.01%  │     ↗│  │   0x00007fb8dcf6f10d:   add    $0x2,%ebx
   0.00%  │╭    ││  │   0x00007fb8dcf6f110:   jmp    0x00007fb8dcf6f115
   0.00%  ││    ││↗ │   0x00007fb8dcf6f112:   add    $0x4,%ebx
   0.04%  │↘  ↗ │││ │   0x00007fb8dcf6f115:   inc    %ebx
   0.01%  │ ╭ │ │││ │   0x00007fb8dcf6f117:   jmp    0x00007fb8dcf6f11f
   0.00%  │ │ │ │││↗│   0x00007fb8dcf6f119:   add    $0x4,%ebx
   0.02%  │ │ │↗│││││   0x00007fb8dcf6f11c:   add    $0x2,%ebx                    ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          │ │ │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   0.05%  ↘ ↘↗│││││││   0x00007fb8dcf6f11f:   movslq %edi,%rsi
   0.01%     ││││││││   0x00007fb8dcf6f122:   add    %rbp,%rsi                    ;*dastore {reexecute=0 rethrow=0 return_oop=0}
             ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@172 (line 88)
   0.01%     ││││││││   0x00007fb8dcf6f125:   cmp    %ecx,%ebx
             ││││││││   0x00007fb8dcf6f127:   jge    0x00007fb8dcf6f3bb           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@155 (line 88)
   0.01%     ││││││││   0x00007fb8dcf6f12d:   mov    %r12,0x10(%r13,%rsi,8)       ;*goto {reexecute=0 rethrow=0 return_oop=0}
             ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@194 (line 76)
   0.06%     ││││││││   0x00007fb8dcf6f132:   mov    0x348(%r15),%rbx
             ││││││││   0x00007fb8dcf6f139:   inc    %edi                         ; ImmutableOopMap {r13=Oop xmm0=Oop }
             ││││││││                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
             ││││││││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@194 (line 76)
   0.01%     ││││││││   0x00007fb8dcf6f13b:   test   %eax,(%rbx)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
             ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@194 (line 76)
             ││││││││                                                             ;   {poll}
   0.01%     ││││││││   0x00007fb8dcf6f13d:   data16 xchg %ax,%ax
   0.05%     ││││││││   0x00007fb8dcf6f140:   cmp    %eax,%edi
             ││││││││   0x00007fb8dcf6f142:   jge    0x00007fb8dcf6f3c7           ;*iload {reexecute=0 rethrow=0 return_oop=0}
             ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@26 (line 77)
             ││││││││   0x00007fb8dcf6f148:   test   %ecx,%ecx
             ││││││││   0x00007fb8dcf6f14a:   jle    0x00007fb8dcf6f475           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@90 (line 81)
   0.00%     ││││││││   0x00007fb8dcf6f150:   vcvtsi2sd %edi,%xmm1,%xmm1
   0.07%     ││││││││   0x00007fb8dcf6f154:   vsubsd %xmm6,%xmm1,%xmm1
   0.01%     ││││││││   0x00007fb8dcf6f158:   vmulsd -0xf8(%rip),%xmm1,%xmm1        # 0x00007fb8dcf6f068
             ││││││││                                                             ;   {section_word}
   0.04%     ││││││││   0x00007fb8dcf6f160:   vdivsd %xmm5,%xmm1,%xmm10           ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
             ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@48 (line 77)
   0.54%     ││││││││   0x00007fb8dcf6f164:   vaddsd -0xfc(%rip),%xmm10,%xmm12        # 0x00007fb8dcf6f070
             ││││││││                                                             ;*dadd {reexecute=0 rethrow=0 return_oop=0}
             ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
             ││││││││                                                             ;   {section_word}
   0.26%     ││││││││   0x00007fb8dcf6f16c:   vmulsd %xmm12,%xmm12,%xmm13         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
             ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@97 (line 81)
   0.24%     ││││││││   0x00007fb8dcf6f171:   cmp    $0x1,%r9d
             ││││││││   0x00007fb8dcf6f175:   jle    0x00007fb8dcf6f49f
   0.01%     ││││││││   0x00007fb8dcf6f17b:   vmovapd %xmm8,%xmm11
             ││││││││   0x00007fb8dcf6f180:   vmovapd %xmm9,%xmm1
   0.01%     ││││││││   0x00007fb8dcf6f185:   mov    $0x1,%ebx
   0.06%     ││││││││   0x00007fb8dcf6f18a:   mov    %r9d,%esi
   0.01%     ││││││││   0x00007fb8dcf6f18d:   sub    %ebx,%esi
             ││││││││   0x00007fb8dcf6f18f:   cmp    %ebx,%r9d
   0.01%     ││││││││   0x00007fb8dcf6f192:   cmovl  %r8d,%esi
   0.05%     ││││││││   0x00007fb8dcf6f196:   cmp    $0x1f40,%esi
   0.01%     ││││││││   0x00007fb8dcf6f19c:   cmova  %r11d,%esi
   0.01%     ││││││││   0x00007fb8dcf6f1a0:   add    %ebx,%esi
   0.05%     ││││││││   0x00007fb8dcf6f1a2:   data16 nopw 0x0(%rax,%rax,1)
   0.01%     ││││││││   0x00007fb8dcf6f1ac:   data16 data16 xchg %ax,%ax          ;*dload {reexecute=0 rethrow=0 return_oop=0}
             ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@93 (line 81)
             ││││││││↗  0x00007fb8dcf6f1b0:   vaddsd %xmm13,%xmm1,%xmm2
   3.42%     │││││││││  0x00007fb8dcf6f1b5:   vucomisd %xmm2,%xmm4
   1.63%     ╰││││││││  0x00007fb8dcf6f1b9:   jb     0x00007fb8dcf6f11f           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
              ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   0.92%      ││││││││  0x00007fb8dcf6f1bf:   vsubsd %xmm1,%xmm13,%xmm1
   0.01%      ││││││││  0x00007fb8dcf6f1c3:   vmulsd -0x16b(%rip),%xmm12,%xmm2        # 0x00007fb8dcf6f060
              ││││││││                                                            ;   {section_word}
   0.00%      ││││││││  0x00007fb8dcf6f1cb:   vaddsd %xmm10,%xmm1,%xmm13          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
              ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   1.39%      ││││││││  0x00007fb8dcf6f1d0:   vmulsd %xmm11,%xmm2,%xmm1
   0.03%      ││││││││  0x00007fb8dcf6f1d5:   vmulsd %xmm13,%xmm13,%xmm2          ;*dmul {reexecute=0 rethrow=0 return_oop=0}
              ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@97 (line 81)
   3.76%      ││││││││  0x00007fb8dcf6f1da:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
              ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
              ││││││││  0x00007fb8dcf6f1de:   vmulsd %xmm1,%xmm1,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
              ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@102 (line 81)
   0.58%      ││││││││  0x00007fb8dcf6f1e2:   vaddsd %xmm11,%xmm2,%xmm12
   3.35%      ││││││││  0x00007fb8dcf6f1e7:   vucomisd %xmm12,%xmm4
   1.62%      ╰│││││││  0x00007fb8dcf6f1ec:   jb     0x00007fb8dcf6f115           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
               │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   0.88%       │││││││  0x00007fb8dcf6f1f2:   vsubsd %xmm11,%xmm2,%xmm2
   0.00%       │││││││  0x00007fb8dcf6f1f7:   vmulsd -0x19f(%rip),%xmm13,%xmm11        # 0x00007fb8dcf6f060
               │││││││                                                            ;   {section_word}
   0.00%       │││││││  0x00007fb8dcf6f1ff:   vmulsd %xmm1,%xmm11,%xmm1
   0.00%       │││││││  0x00007fb8dcf6f203:   vaddsd %xmm10,%xmm2,%xmm2           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
               │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   1.28%       │││││││  0x00007fb8dcf6f208:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
               │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
   0.51%       │││││││  0x00007fb8dcf6f20c:   vmulsd %xmm2,%xmm2,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
               │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@97 (line 81)
   2.95%       │││││││  0x00007fb8dcf6f210:   vmulsd %xmm1,%xmm1,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
               │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@102 (line 81)
   0.44%       │││││││  0x00007fb8dcf6f214:   vaddsd %xmm12,%xmm11,%xmm13
   3.47%       │││││││  0x00007fb8dcf6f219:   nopl   0x0(%rax)
               │││││││  0x00007fb8dcf6f220:   vucomisd %xmm13,%xmm4
   1.51%       ╰││││││  0x00007fb8dcf6f225:   jb     0x00007fb8dcf6f11c           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   0.84%        ││││││  0x00007fb8dcf6f22b:   vsubsd %xmm12,%xmm11,%xmm11
   0.00%        ││││││  0x00007fb8dcf6f230:   vmulsd -0x1d8(%rip),%xmm2,%xmm2        # 0x00007fb8dcf6f060
                ││││││                                                            ;   {section_word}
                ││││││  0x00007fb8dcf6f238:   vmulsd %xmm1,%xmm2,%xmm1
                ││││││  0x00007fb8dcf6f23c:   vaddsd %xmm10,%xmm11,%xmm2          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   1.75%        ││││││  0x00007fb8dcf6f241:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
   0.47%        ││││││  0x00007fb8dcf6f245:   vmulsd %xmm2,%xmm2,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@97 (line 81)
   2.77%        ││││││  0x00007fb8dcf6f249:   vmulsd %xmm1,%xmm1,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@102 (line 81)
   0.48%        ││││││  0x00007fb8dcf6f24d:   vaddsd %xmm12,%xmm11,%xmm13
   3.38%        ││││││  0x00007fb8dcf6f252:   vucomisd %xmm13,%xmm4
   1.61%        ╰│││││  0x00007fb8dcf6f257:   jb     0x00007fb8dcf6f10d           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                 │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   0.84%         │││││  0x00007fb8dcf6f25d:   vsubsd %xmm12,%xmm11,%xmm11
                 │││││  0x00007fb8dcf6f262:   vmulsd -0x20a(%rip),%xmm2,%xmm2        # 0x00007fb8dcf6f060
                 │││││                                                            ;   {section_word}
   0.00%         │││││  0x00007fb8dcf6f26a:   vmulsd %xmm1,%xmm2,%xmm1
                 │││││  0x00007fb8dcf6f26e:   vaddsd %xmm10,%xmm11,%xmm2          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                 │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   1.40%         │││││  0x00007fb8dcf6f273:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                 │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
   0.44%         │││││  0x00007fb8dcf6f277:   vmulsd %xmm2,%xmm2,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                 │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@97 (line 81)
   2.93%         │││││  0x00007fb8dcf6f27b:   vmulsd %xmm1,%xmm1,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                 │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@102 (line 81)
   0.35%         │││││  0x00007fb8dcf6f27f:   vaddsd %xmm12,%xmm11,%xmm13
   3.57%         │││││  0x00007fb8dcf6f284:   vucomisd %xmm13,%xmm4
   1.62%         ╰││││  0x00007fb8dcf6f289:   jb     0x00007fb8dcf6f105           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   0.76%          ││││  0x00007fb8dcf6f28f:   vsubsd %xmm12,%xmm11,%xmm11
                  ││││  0x00007fb8dcf6f294:   vmulsd -0x23c(%rip),%xmm2,%xmm2        # 0x00007fb8dcf6f060
                  ││││                                                            ;   {section_word}
                  ││││  0x00007fb8dcf6f29c:   vmulsd %xmm1,%xmm2,%xmm1
                  ││││  0x00007fb8dcf6f2a0:   vaddsd %xmm10,%xmm11,%xmm2          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   1.43%          ││││  0x00007fb8dcf6f2a5:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
   0.56%          ││││  0x00007fb8dcf6f2a9:   vmulsd %xmm2,%xmm2,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@97 (line 81)
   2.85%          ││││  0x00007fb8dcf6f2ad:   vmulsd %xmm1,%xmm1,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@102 (line 81)
   0.45%          ││││  0x00007fb8dcf6f2b1:   vaddsd %xmm12,%xmm11,%xmm13
   3.47%          ││││  0x00007fb8dcf6f2b6:   data16 nopw 0x0(%rax,%rax,1)
                  ││││  0x00007fb8dcf6f2c0:   vucomisd %xmm13,%xmm4
   1.45%          ╰│││  0x00007fb8dcf6f2c5:   jb     0x00007fb8dcf6f112           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   0.83%           │││  0x00007fb8dcf6f2cb:   vsubsd %xmm12,%xmm11,%xmm11
   0.00%           │││  0x00007fb8dcf6f2d0:   vmulsd -0x278(%rip),%xmm2,%xmm2        # 0x00007fb8dcf6f060
                   │││                                                            ;   {section_word}
                   │││  0x00007fb8dcf6f2d8:   vmulsd %xmm1,%xmm2,%xmm1
                   │││  0x00007fb8dcf6f2dc:   vaddsd %xmm10,%xmm11,%xmm2          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   1.54%           │││  0x00007fb8dcf6f2e1:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
   0.53%           │││  0x00007fb8dcf6f2e5:   vmulsd %xmm2,%xmm2,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@97 (line 81)
   2.80%           │││  0x00007fb8dcf6f2e9:   vmulsd %xmm1,%xmm1,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@102 (line 81)
   0.42%           │││  0x00007fb8dcf6f2ed:   vaddsd %xmm12,%xmm11,%xmm13
   3.37%           │││  0x00007fb8dcf6f2f2:   vucomisd %xmm13,%xmm4
   1.67%           ╰││  0x00007fb8dcf6f2f7:   jb     0x00007fb8dcf6f119           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   0.83%            ││  0x00007fb8dcf6f2fd:   vsubsd %xmm12,%xmm11,%xmm11
                    ││  0x00007fb8dcf6f302:   vmulsd -0x2aa(%rip),%xmm2,%xmm2        # 0x00007fb8dcf6f060
                    ││                                                            ;   {section_word}
                    ││  0x00007fb8dcf6f30a:   vmulsd %xmm1,%xmm2,%xmm1
                    ││  0x00007fb8dcf6f30e:   vaddsd %xmm10,%xmm11,%xmm2          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   1.20%            ││  0x00007fb8dcf6f313:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
   0.83%            ││  0x00007fb8dcf6f317:   vmulsd %xmm2,%xmm2,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@97 (line 81)
   2.51%            ││  0x00007fb8dcf6f31b:   vmulsd %xmm1,%xmm1,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@102 (line 81)
   0.60%            ││  0x00007fb8dcf6f31f:   vaddsd %xmm12,%xmm11,%xmm13
   3.41%            ││  0x00007fb8dcf6f324:   vucomisd %xmm13,%xmm4
   1.64%            ╰│  0x00007fb8dcf6f329:   jb     0x00007fb8dcf6f10a           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   0.80%             │  0x00007fb8dcf6f32f:   vsubsd %xmm12,%xmm11,%xmm11
   0.00%             │  0x00007fb8dcf6f334:   vmulsd -0x2dc(%rip),%xmm2,%xmm2        # 0x00007fb8dcf6f060
                     │                                                            ;   {section_word}
                     │  0x00007fb8dcf6f33c:   vmulsd %xmm1,%xmm2,%xmm1
                     │  0x00007fb8dcf6f340:   vaddsd %xmm10,%xmm11,%xmm12         ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   1.34%             │  0x00007fb8dcf6f345:   vaddsd %xmm7,%xmm1,%xmm11           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
   0.48%             │  0x00007fb8dcf6f349:   vmulsd %xmm12,%xmm12,%xmm13         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@97 (line 81)
   2.82%             │  0x00007fb8dcf6f34e:   vmulsd %xmm11,%xmm11,%xmm1          ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@102 (line 81)
   0.61%             │  0x00007fb8dcf6f353:   add    $0x8,%ebx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@143 (line 86)
                     │  0x00007fb8dcf6f356:   cmp    %esi,%ebx
                     ╰  0x00007fb8dcf6f358:   jl     0x00007fb8dcf6f1b0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@90 (line 81)
                        0x00007fb8dcf6f35e:   mov    0x348(%r15),%r14             ; ImmutableOopMap {r13=Oop xmm0=Oop }
                                                                                  ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                                                  ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@146 (line 87)
                        0x00007fb8dcf6f365:   test   %eax,(%r14)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@146 (line 87)
....................................................................................................
  91.06%  <total for region 1>

....[Hottest Regions]...............................................................................
  91.06%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 6, compile id 586 
   0.79%              kernel  [unknown] 
   0.68%              kernel  [unknown] 
   0.59%              kernel  [unknown] 
   0.57%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 6, compile id 586 
   0.45%              kernel  [unknown] 
   0.26%              kernel  [unknown] 
   0.20%              kernel  [unknown] 
   0.19%           libjvm.so  ElfSymbolTable::lookup 
   0.10%         interpreter  aload  25 aload  
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%         interpreter  return entry points  
   0.07%         interpreter  invokevirtual  182 invokevirtual  
   0.06%           libjvm.so  fileStream::flush 
   0.06%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%         interpreter  return entry points  
   4.50%  <...other 1102 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  91.63%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 6, compile id 586 
   5.03%              kernel  [unknown] 
   0.35%                      <unknown> 
   0.19%           libjvm.so  ElfSymbolTable::lookup 
   0.12%         interpreter  return entry points  
   0.11%         interpreter  invokevirtual  182 invokevirtual  
   0.10%         interpreter  aload  25 aload  
   0.09%        libc-2.31.so  __strxfrm_l 
   0.09%        libc-2.31.so  __strncat_ssse3 
   0.07%           libjvm.so  xmlStream::write_text 
   0.06%         interpreter  method entry point (kind = zerolocals)  
   0.06%           libjvm.so  fileStream::flush 
   0.06%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.05%      hsdis-amd64.so  print_insn 
   0.04%         interpreter  invokestatic  184 invokestatic  
   0.04%      perf-20794.map  [unknown] 
   0.04%  libpthread-2.31.so  __libc_write 
   0.04%         interpreter  astore  58 astore  
   0.03%           libjvm.so  stringStream::write 
   0.03%         interpreter  getstatic  178 getstatic  
   1.75%  <...other 455 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  91.80%         c2, level 4
   5.03%              kernel
   1.33%           libjvm.so
   0.77%         interpreter
   0.43%        libc-2.31.so
   0.35%                    
   0.07%      hsdis-amd64.so
   0.07%  libpthread-2.31.so
   0.06%          ld-2.31.so
   0.04%      perf-20794.map
   0.01%         c1, level 2
   0.01%         c1, level 3
   0.01%    Unknown, level 0
   0.01%              [vdso]
   0.00%         c1, level 1
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.baseline
# Parameters: (iterations = 1000, size = 512)

# Run progress: 12.50% complete, ETA 00:13:07
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 132.357 ms/op
# Warmup Iteration   2: 131.138 ms/op
# Warmup Iteration   3: 131.141 ms/op
# Warmup Iteration   4: 131.133 ms/op
# Warmup Iteration   5: 131.136 ms/op
Iteration   1: 131.136 ms/op
Iteration   2: 131.133 ms/op
Iteration   3: 131.134 ms/op
Iteration   4: 131.138 ms/op
Iteration   5: 131.142 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.baseline":
  131.137 ±(99.9%) 0.015 ms/op [Average]
  (min, avg, max) = (131.133, 131.137, 131.142), stdev = 0.004
  CI (99.9%): [131.122, 131.151] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.baseline:·asm":
PrintAssembly processed: 174565 total address lines.
Perf output processed (skipped 56.803 seconds):
 Column 1: cycles (55003 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 5, compile id 581 

                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@11 (line 75)
                          0x00007f0d84f6d5b9:   vmovsd -0x61(%rip),%xmm3        # 0x00007f0d84f6d560
                                                                                    ;   {section_word}
                          0x00007f0d84f6d5c1:   vmovsd -0x81(%rip),%xmm4        # 0x00007f0d84f6d548
                                                                                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@146 (line 87)
                                                                                    ;   {section_word}
                          0x00007f0d84f6d5c9:   mov    $0xfa0,%r14d
                          0x00007f0d84f6d5cf:   xor    %edi,%edi
                          0x00007f0d84f6d5d1:   jmp    0x00007f0d84f6d7e9
   0.01%        ↗         0x00007f0d84f6d5d6:   add    $0x2,%eax
   0.02%      ↗ │         0x00007f0d84f6d5d9:   inc    %eax
   0.02%  ╭   │ │         0x00007f0d84f6d5db:   jmp    0x00007f0d84f6d5e0
   0.03%  │   │↗│         0x00007f0d84f6d5dd:   add    $0x2,%eax                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │   │││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@143 (line 86)
   0.02%  ↘  ↗│││         0x00007f0d84f6d5e0:   vmovq  %xmm0,%rsi                   ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
             ││││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   0.01%     ││││  ↗↗↗    0x00007f0d84f6d5e5:   cmp    %ecx,%eax
           ╭ ││││  │││    0x00007f0d84f6d5e7:   jge    0x00007f0d84f6d7bf           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │ ││││  │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@155 (line 88)
   0.01%   │ ││││  │││    0x00007f0d84f6d5ed:   mov    %r12,0x10(%r10,%r11,8)       ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │ ││││  │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@194 (line 76)
   0.04%   │ ││││  │││ ↗  0x00007f0d84f6d5f2:   mov    0x348(%r15),%r11             ; ImmutableOopMap {r10=Oop rsi=Oop }
           │ ││││  │││ │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
           │ ││││  │││ │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@194 (line 76)
   0.01%   │ ││││  │││ │  0x00007f0d84f6d5f9:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │ ││││  │││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@194 (line 76)
           │ ││││  │││ │                                                            ;   {poll}
   0.02%   │ ││││  │││ │  0x00007f0d84f6d5fc:   nopl   0x0(%rax)
   0.00%   │ ││││  │││ │  0x00007f0d84f6d600:   cmp    %r8d,%edx
           │╭││││  │││ │  0x00007f0d84f6d603:   jge    0x00007f0d84f6d7cb           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           ││││││  │││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@23 (line 76)
   0.05%   ││││││  │││ │  0x00007f0d84f6d609:   mov    %edx,%ebx                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
           ││││││  │││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@26 (line 77)
   0.02%   ││││││  │││ │  0x00007f0d84f6d60b:   movslq %ebx,%r11
   0.01%   ││││││  │││ │  0x00007f0d84f6d60e:   add    %r13,%r11                    ;*dastore {reexecute=0 rethrow=0 return_oop=0}
           ││││││  │││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@172 (line 88)
   0.00%   ││││││  │││ │  0x00007f0d84f6d611:   mov    %ebx,%edx
   0.03%   ││││││  │││ │  0x00007f0d84f6d613:   inc    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││││││  │││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@191 (line 76)
   0.01%   ││││││  │││ │  0x00007f0d84f6d615:   test   %ecx,%ecx
           ││││││  │││ │  0x00007f0d84f6d617:   jle    0x00007f0d84f6d875           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           ││││││  │││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@90 (line 81)
   0.01%   ││││││  │││ │  0x00007f0d84f6d61d:   vcvtsi2sd %ebx,%xmm0,%xmm0
   0.04%   ││││││  │││ │  0x00007f0d84f6d621:   vsubsd %xmm6,%xmm0,%xmm0
   0.02%   ││││││  │││ │  0x00007f0d84f6d625:   vmulsd -0xe5(%rip),%xmm0,%xmm0        # 0x00007f0d84f6d548
           ││││││  │││ │                                                            ;   {section_word}
   0.05%   ││││││  │││ │  0x00007f0d84f6d62d:   vdivsd %xmm5,%xmm0,%xmm10           ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
           ││││││  │││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@48 (line 77)
   0.11%   ││││││  │││ │  0x00007f0d84f6d631:   vaddsd -0xe9(%rip),%xmm10,%xmm12        # 0x00007f0d84f6d550
           ││││││  │││ │                                                            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           ││││││  │││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
           ││││││  │││ │                                                            ;   {section_word}
   0.06%   ││││││  │││ │  0x00007f0d84f6d639:   vmulsd %xmm12,%xmm12,%xmm13
   0.07%   ││││││  │││ │  0x00007f0d84f6d63e:   xchg   %ax,%ax
   0.01%   ││││││  │││ │  0x00007f0d84f6d640:   cmp    $0x1,%r9d
           ││││││  │││ │  0x00007f0d84f6d644:   jle    0x00007f0d84f6d89a
   0.01%   ││││││  │││ │  0x00007f0d84f6d64a:   vmovq  %rsi,%xmm0
   0.06%   ││││││  │││ │  0x00007f0d84f6d64f:   vmovapd %xmm8,%xmm11
   0.02%   ││││││  │││ │  0x00007f0d84f6d654:   vmovapd %xmm9,%xmm1
           ││││││  │││ │  0x00007f0d84f6d659:   mov    $0x1,%eax
   0.01%   ││││││ ↗│││ │  0x00007f0d84f6d65e:   mov    %r9d,%esi
   0.03%   ││││││ ││││ │  0x00007f0d84f6d661:   sub    %eax,%esi
   0.03%   ││││││ ││││ │  0x00007f0d84f6d663:   xor    %ebp,%ebp
   0.00%   ││││││ ││││ │  0x00007f0d84f6d665:   cmp    %eax,%r9d
   0.00%   ││││││ ││││ │  0x00007f0d84f6d668:   cmovl  %ebp,%esi
   0.04%   ││││││ ││││ │  0x00007f0d84f6d66b:   cmp    $0xfa0,%esi
   0.03%   ││││││ ││││ │  0x00007f0d84f6d671:   cmova  %r14d,%esi
   0.01%   ││││││ ││││ │  0x00007f0d84f6d675:   add    %eax,%esi
   0.02%   ││││││ ││││ │  0x00007f0d84f6d677:   nopw   0x0(%rax,%rax,1)             ;*dload {reexecute=0 rethrow=0 return_oop=0}
           ││││││ ││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@93 (line 81)
   0.03%   ││││││↗││││ │  0x00007f0d84f6d680:   vaddsd %xmm1,%xmm13,%xmm2
   6.81%   │││││││││││ │  0x00007f0d84f6d684:   vucomisd %xmm2,%xmm4
   3.19%   ││╰││││││││ │  0x00007f0d84f6d688:   jb     0x00007f0d84f6d5e0           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
           ││ ││││││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   1.76%   ││ ││││││││ │  0x00007f0d84f6d68e:   vsubsd %xmm1,%xmm13,%xmm1
   0.01%   ││ ││││││││ │  0x00007f0d84f6d692:   vmulsd -0x15a(%rip),%xmm12,%xmm2        # 0x00007f0d84f6d540
           ││ ││││││││ │                                                            ;   {section_word}
   0.00%   ││ ││││││││ │  0x00007f0d84f6d69a:   vaddsd %xmm10,%xmm1,%xmm13          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           ││ ││││││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   2.85%   ││ ││││││││ │  0x00007f0d84f6d69f:   vmulsd %xmm11,%xmm2,%xmm1
   0.05%   ││ ││││││││ │  0x00007f0d84f6d6a4:   vmulsd %xmm13,%xmm13,%xmm2          ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           ││ ││││││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@97 (line 81)
   7.07%   ││ ││││││││ │  0x00007f0d84f6d6a9:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           ││ ││││││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
           ││ ││││││││ │  0x00007f0d84f6d6ad:   vmulsd %xmm1,%xmm1,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           ││ ││││││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@102 (line 81)
   1.21%   ││ ││││││││ │  0x00007f0d84f6d6b1:   vaddsd %xmm11,%xmm2,%xmm12
   7.33%   ││ ││││││││ │  0x00007f0d84f6d6b6:   data16 nopw 0x0(%rax,%rax,1)
   0.01%   ││ ││││││││ │  0x00007f0d84f6d6c0:   vucomisd %xmm12,%xmm4
   3.04%   ││ ╰│││││││ │  0x00007f0d84f6d6c5:   jb     0x00007f0d84f6d5d9           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
           ││  │││││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   1.79%   ││  │││││││ │  0x00007f0d84f6d6cb:   vsubsd %xmm11,%xmm2,%xmm2
   0.01%   ││  │││││││ │  0x00007f0d84f6d6d0:   vmulsd -0x198(%rip),%xmm13,%xmm11        # 0x00007f0d84f6d540
           ││  │││││││ │                                                            ;   {section_word}
   0.01%   ││  │││││││ │  0x00007f0d84f6d6d8:   vmulsd %xmm1,%xmm11,%xmm1
           ││  │││││││ │  0x00007f0d84f6d6dc:   vaddsd %xmm10,%xmm2,%xmm2           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           ││  │││││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   3.13%   ││  │││││││ │  0x00007f0d84f6d6e1:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           ││  │││││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
   1.08%   ││  │││││││ │  0x00007f0d84f6d6e5:   vmulsd %xmm2,%xmm2,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           ││  │││││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@97 (line 81)
   5.79%   ││  │││││││ │  0x00007f0d84f6d6e9:   vmulsd %xmm1,%xmm1,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           ││  │││││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@102 (line 81)
   0.96%   ││  │││││││ │  0x00007f0d84f6d6ed:   vaddsd %xmm12,%xmm11,%xmm13
   6.69%   ││  │││││││ │  0x00007f0d84f6d6f2:   vucomisd %xmm13,%xmm4
   3.32%   ││  ╰││││││ │  0x00007f0d84f6d6f7:   jb     0x00007f0d84f6d5dd           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
           ││   ││││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   1.65%   ││   ││││││ │  0x00007f0d84f6d6fd:   vsubsd %xmm12,%xmm11,%xmm11
   0.00%   ││   ││││││ │  0x00007f0d84f6d702:   vmulsd -0x1ca(%rip),%xmm2,%xmm2        # 0x00007f0d84f6d540
           ││   ││││││ │                                                            ;   {section_word}
           ││   ││││││ │  0x00007f0d84f6d70a:   vmulsd %xmm1,%xmm2,%xmm1
   0.00%   ││   ││││││ │  0x00007f0d84f6d70e:   vaddsd %xmm10,%xmm11,%xmm2          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           ││   ││││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   2.75%   ││   ││││││ │  0x00007f0d84f6d713:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           ││   ││││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
   1.22%   ││   ││││││ │  0x00007f0d84f6d717:   vmulsd %xmm2,%xmm2,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           ││   ││││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@97 (line 81)
   5.55%   ││   ││││││ │  0x00007f0d84f6d71b:   vmulsd %xmm1,%xmm1,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           ││   ││││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@102 (line 81)
   1.08%   ││   ││││││ │  0x00007f0d84f6d71f:   vaddsd %xmm12,%xmm11,%xmm13
   6.81%   ││   ││││││ │  0x00007f0d84f6d724:   vucomisd %xmm13,%xmm4
   3.13%   ││   ╰│││││ │  0x00007f0d84f6d729:   jb     0x00007f0d84f6d5d6           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
           ││    │││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   1.68%   ││    │││││ │  0x00007f0d84f6d72f:   vsubsd %xmm12,%xmm11,%xmm11
   0.01%   ││    │││││ │  0x00007f0d84f6d734:   vmulsd -0x1fc(%rip),%xmm2,%xmm2        # 0x00007f0d84f6d540
           ││    │││││ │                                                            ;   {section_word}
   0.00%   ││    │││││ │  0x00007f0d84f6d73c:   vmulsd %xmm1,%xmm2,%xmm1
           ││    │││││ │  0x00007f0d84f6d740:   vaddsd %xmm10,%xmm11,%xmm12         ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           ││    │││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   2.75%   ││    │││││ │  0x00007f0d84f6d745:   vaddsd %xmm7,%xmm1,%xmm11           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           ││    │││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
   0.77%   ││    │││││ │  0x00007f0d84f6d749:   vmulsd %xmm12,%xmm12,%xmm13         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           ││    │││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@97 (line 81)
   5.97%   ││    │││││ │  0x00007f0d84f6d74e:   vmulsd %xmm11,%xmm11,%xmm1          ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           ││    │││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@102 (line 81)
   0.92%   ││    │││││ │  0x00007f0d84f6d753:   add    $0x4,%eax                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││    │││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@143 (line 86)
           ││    │││││ │  0x00007f0d84f6d756:   cmp    %esi,%eax
           ││    ╰││││ │  0x00007f0d84f6d758:   jl     0x00007f0d84f6d680           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           ││     ││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@90 (line 81)
           ││     ││││ │  0x00007f0d84f6d75e:   mov    0x348(%r15),%rsi             ; ImmutableOopMap {r10=Oop xmm0=Oop }
           ││     ││││ │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
           ││     ││││ │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@146 (line 87)
   0.00%   ││     ││││ │  0x00007f0d84f6d765:   test   %eax,(%rsi)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
           ││     ││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@146 (line 87)
           ││     ││││ │                                                            ;   {poll}
   0.00%   ││     ││││ │  0x00007f0d84f6d767:   cmp    %r9d,%eax
           ││     ╰│││ │  0x00007f0d84f6d76a:   jl     0x00007f0d84f6d65e
           ││      │││ │  0x00007f0d84f6d770:   vmovq  %xmm0,%rsi
           ││      │││ │  0x00007f0d84f6d775:   cmp    %ecx,%eax
           ││      ╰││ │  0x00007f0d84f6d777:   jge    0x00007f0d84f6d5e5
   0.01%   ││       ││ │  0x00007f0d84f6d77d:   data16 xchg %ax,%ax                 ;*dload {reexecute=0 rethrow=0 return_oop=0}
           ││       ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@93 (line 81)
   0.00%   ││       ││↗│  0x00007f0d84f6d780:   vaddsd %xmm13,%xmm1,%xmm0
   0.06%   ││       ││││  0x00007f0d84f6d785:   vucomisd %xmm0,%xmm4
   0.04%   ││       ╰│││  0x00007f0d84f6d789:   jb     0x00007f0d84f6d5e5           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
           ││        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   0.02%   ││        │││  0x00007f0d84f6d78f:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@143 (line 86)
           ││        │││  0x00007f0d84f6d791:   cmp    %ecx,%eax
           ││        ╰││  0x00007f0d84f6d793:   jge    0x00007f0d84f6d5e5           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           ││         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@90 (line 81)
           ││         ││  0x00007f0d84f6d799:   vsubsd %xmm1,%xmm13,%xmm0
           ││         ││  0x00007f0d84f6d79d:   vmulsd -0x265(%rip),%xmm12,%xmm1        # 0x00007f0d84f6d540
           ││         ││                                                            ;   {section_word}
   0.02%   ││         ││  0x00007f0d84f6d7a5:   vaddsd %xmm10,%xmm0,%xmm12          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           ││         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   0.00%   ││         ││  0x00007f0d84f6d7aa:   vmulsd %xmm11,%xmm1,%xmm0
           ││         ││  0x00007f0d84f6d7af:   vmulsd %xmm12,%xmm12,%xmm13         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           ││         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@97 (line 81)
   0.05%   ││         ││  0x00007f0d84f6d7b4:   vaddsd %xmm7,%xmm0,%xmm11           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           ││         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
           ││         ││  0x00007f0d84f6d7b8:   vmulsd %xmm11,%xmm11,%xmm1          ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           ││         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@102 (line 81)
   0.01%   ││         ╰│  0x00007f0d84f6d7bd:   jmp    0x00007f0d84f6d780
   0.01%   ↘│          │  0x00007f0d84f6d7bf:   vmovsd %xmm3,0x10(%r10,%r11,8)      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
            │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@190 (line 89)
            │          ╰  0x00007f0d84f6d7c6:   jmp    0x00007f0d84f6d5f2           ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@200 (line 75)
            ↘             0x00007f0d84f6d7cb:   mov    0x348(%r15),%r10
                          0x00007f0d84f6d7d2:   mov    0xc(%rsi),%r8d               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@8 (line 75)
                          0x00007f0d84f6d7d6:   inc    %edi                         ; ImmutableOopMap {rsi=Oop }
                                                                                    ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@200 (line 75)
                          0x00007f0d84f6d7d8:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  91.58%  <total for region 1>

....[Hottest Regions]...............................................................................
  91.58%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 5, compile id 581 
   0.79%              kernel  [unknown] 
   0.77%              kernel  [unknown] 
   0.61%              kernel  [unknown] 
   0.45%              kernel  [unknown] 
   0.19%           libjvm.so  ElfSymbolTable::lookup 
   0.12%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.10%         interpreter  aload  25 aload  
   0.10%              kernel  [unknown] 
   0.09%         interpreter  invokevirtual  182 invokevirtual  
   0.07%         interpreter  return entry points  
   0.07%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.06%              kernel  [unknown] 
   0.06%           libjvm.so  xmlStream::write_text 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%         interpreter  method entry point (kind = zerolocals)  
   0.04%              kernel  [unknown] 
   0.04%         interpreter  method entry point (kind = zerolocals)  
   4.60%  <...other 1167 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  91.59%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 5, compile id 581 
   4.61%              kernel  [unknown] 
   0.40%                      <unknown> 
   0.19%           libjvm.so  ElfSymbolTable::lookup 
   0.15%         interpreter  invokevirtual  182 invokevirtual  
   0.11%         interpreter  return entry points  
   0.11%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 1, compile id 913 
   0.10%        libc-2.31.so  __strxfrm_l 
   0.10%         interpreter  method entry point (kind = zerolocals)  
   0.10%         interpreter  aload  25 aload  
   0.08%        libc-2.31.so  __strncat_ssse3 
   0.08%           libjvm.so  xmlStream::write_text 
   0.07%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.06%      hsdis-amd64.so  print_insn 
   0.06%           libjvm.so  fileStream::write 
   0.05%      perf-20857.map  [unknown] 
   0.05%  libpthread-2.31.so  __libc_write 
   0.05%         interpreter  invokestatic  184 invokestatic  
   0.04%           libjvm.so  outputStream::update_position 
   0.04%        libc-2.31.so  __strchr_sse2 
   1.97%  <...other 512 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  91.85%         c2, level 4
   4.61%              kernel
   1.48%           libjvm.so
   0.84%         interpreter
   0.47%        libc-2.31.so
   0.40%                    
   0.09%      hsdis-amd64.so
   0.09%  libpthread-2.31.so
   0.07%          ld-2.31.so
   0.05%      perf-20857.map
   0.02%         c1, level 3
   0.01%    Unknown, level 0
   0.01%         c1, level 2
   0.00%         c1, level 1
   0.00%        libm-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.baseline
# Parameters: (iterations = 2000, size = 256)

# Run progress: 25.00% complete, ETA 00:11:16
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 65.221 ms/op
# Warmup Iteration   2: 64.706 ms/op
# Warmup Iteration   3: 64.705 ms/op
# Warmup Iteration   4: 64.705 ms/op
# Warmup Iteration   5: 64.705 ms/op
Iteration   1: 64.703 ms/op
Iteration   2: 64.704 ms/op
Iteration   3: 64.707 ms/op
Iteration   4: 64.707 ms/op
Iteration   5: 64.706 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.baseline":
  64.705 ±(99.9%) 0.007 ms/op [Average]
  (min, avg, max) = (64.703, 64.705, 64.707), stdev = 0.002
  CI (99.9%): [64.699, 64.712] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.baseline:·asm":
PrintAssembly processed: 174295 total address lines.
Perf output processed (skipped 56.603 seconds):
 Column 1: cycles (54679 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 6, compile id 602 

                                0x00007fd7e4f6f2d9:   vmovsd -0x61(%rip),%xmm3        # 0x00007fd7e4f6f280
                                                                                          ;   {section_word}
                                0x00007fd7e4f6f2e1:   vmovsd -0x81(%rip),%xmm4        # 0x00007fd7e4f6f268
                                                                                          ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@146 (line 87)
                                                                                          ;   {section_word}
                                0x00007fd7e4f6f2e9:   mov    $0x1f40,%r14d
                                0x00007fd7e4f6f2ef:   xor    %edi,%edi
                                0x00007fd7e4f6f2f1:   jmp    0x00007fd7e4f6f5ea
                     ↗          0x00007fd7e4f6f2f6:   add    $0x4,%eax
   0.00%         ↗   │          0x00007fd7e4f6f2f9:   add    $0x2,%eax
          ╭      │   │          0x00007fd7e4f6f2fc:   jmp    0x00007fd7e4f6f301
   0.00%  │      │ ↗ │          0x00007fd7e4f6f2fe:   add    $0x4,%eax
   0.03%  ↘    ↗ │ │ │          0x00007fd7e4f6f301:   inc    %eax
           ╭   │ │ │ │          0x00007fd7e4f6f303:   jmp    0x00007fd7e4f6f30b
   0.00%   │   │ │ │↗│          0x00007fd7e4f6f305:   add    $0x4,%eax
   0.01%   │   │↗│ │││          0x00007fd7e4f6f308:   add    $0x2,%eax                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │   │││ │││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@143 (line 86)
   0.02%   ↘  ↗│││ │││      ↗   0x00007fd7e4f6f30b:   vmovq  %xmm0,%rsi                   ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
              ││││ │││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   0.01%      ││││ │││  ↗↗↗ │   0x00007fd7e4f6f310:   cmp    %ecx,%eax
            ╭ ││││ │││  │││ │   0x00007fd7e4f6f312:   jge    0x00007fd7e4f6f5c5           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │ ││││ │││  │││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@155 (line 88)
   0.00%    │ ││││ │││  │││ │   0x00007fd7e4f6f318:   mov    %r12,0x10(%r10,%r11,8)       ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │ ││││ │││  │││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@194 (line 76)
   0.02%    │ ││││ │││  │││ │↗  0x00007fd7e4f6f31d:   mov    0x348(%r15),%r11             ; ImmutableOopMap {r10=Oop rsi=Oop }
            │ ││││ │││  │││ ││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
            │ ││││ │││  │││ ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@194 (line 76)
   0.02%    │ ││││ │││  │││ ││  0x00007fd7e4f6f324:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │ ││││ │││  │││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@194 (line 76)
            │ ││││ │││  │││ ││                                                            ;   {poll}
   0.01%    │ ││││ │││  │││ ││  0x00007fd7e4f6f327:   cmp    %r8d,%edx
            │╭││││ │││  │││ ││  0x00007fd7e4f6f32a:   jge    0x00007fd7e4f6f5d1           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            ││││││ │││  │││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@23 (line 76)
   0.01%    ││││││ │││  │││ ││  0x00007fd7e4f6f330:   mov    %edx,%ebx                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
            ││││││ │││  │││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@26 (line 77)
   0.01%    ││││││ │││  │││ ││  0x00007fd7e4f6f332:   movslq %ebx,%r11
   0.02%    ││││││ │││  │││ ││  0x00007fd7e4f6f335:   add    %r13,%r11                    ;*dastore {reexecute=0 rethrow=0 return_oop=0}
            ││││││ │││  │││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@172 (line 88)
   0.00%    ││││││ │││  │││ ││  0x00007fd7e4f6f338:   mov    %ebx,%edx
            ││││││ │││  │││ ││  0x00007fd7e4f6f33a:   inc    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││││││ │││  │││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@191 (line 76)
   0.01%    ││││││ │││  │││ ││  0x00007fd7e4f6f33c:   nopl   0x0(%rax)
   0.01%    ││││││ │││  │││ ││  0x00007fd7e4f6f340:   test   %ecx,%ecx
            ││││││ │││  │││ ││  0x00007fd7e4f6f342:   jle    0x00007fd7e4f6f675           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            ││││││ │││  │││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@90 (line 81)
   0.01%    ││││││ │││  │││ ││  0x00007fd7e4f6f348:   vcvtsi2sd %ebx,%xmm0,%xmm0
   0.01%    ││││││ │││  │││ ││  0x00007fd7e4f6f34c:   vsubsd %xmm6,%xmm0,%xmm0
   0.01%    ││││││ │││  │││ ││  0x00007fd7e4f6f350:   vmulsd -0xf0(%rip),%xmm0,%xmm0        # 0x00007fd7e4f6f268
            ││││││ │││  │││ ││                                                            ;   {section_word}
   0.02%    ││││││ │││  │││ ││  0x00007fd7e4f6f358:   vdivsd %xmm5,%xmm0,%xmm10           ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
            ││││││ │││  │││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@48 (line 77)
   0.07%    ││││││ │││  │││ ││  0x00007fd7e4f6f35c:   vaddsd -0xf4(%rip),%xmm10,%xmm12        # 0x00007fd7e4f6f270
            ││││││ │││  │││ ││                                                            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││││││ │││  │││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
            ││││││ │││  │││ ││                                                            ;   {section_word}
   0.04%    ││││││ │││  │││ ││  0x00007fd7e4f6f364:   vmulsd %xmm12,%xmm12,%xmm13         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││││││ │││  │││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@97 (line 81)
   0.05%    ││││││ │││  │││ ││  0x00007fd7e4f6f369:   cmp    $0x1,%r9d
            ││││││ │││  │││ ││  0x00007fd7e4f6f36d:   jle    0x00007fd7e4f6f69a
   0.00%    ││││││ │││  │││ ││  0x00007fd7e4f6f373:   vmovq  %rsi,%xmm0
   0.00%    ││││││ │││  │││ ││  0x00007fd7e4f6f378:   vmovapd %xmm8,%xmm11
   0.01%    ││││││ │││  │││ ││  0x00007fd7e4f6f37d:   vmovapd %xmm9,%xmm1
   0.03%    ││││││ │││  │││ ││  0x00007fd7e4f6f382:   mov    $0x1,%eax
   0.00%    ││││││ │││ ↗│││ ││  0x00007fd7e4f6f387:   mov    %r9d,%esi
   0.00%    ││││││ │││ ││││ ││  0x00007fd7e4f6f38a:   sub    %eax,%esi
   0.01%    ││││││ │││ ││││ ││  0x00007fd7e4f6f38c:   xor    %ebp,%ebp
   0.03%    ││││││ │││ ││││ ││  0x00007fd7e4f6f38e:   cmp    %eax,%r9d
            ││││││ │││ ││││ ││  0x00007fd7e4f6f391:   cmovl  %ebp,%esi
   0.01%    ││││││ │││ ││││ ││  0x00007fd7e4f6f394:   cmp    $0x1f40,%esi
   0.01%    ││││││ │││ ││││ ││  0x00007fd7e4f6f39a:   cmova  %r14d,%esi
   0.01%    ││││││ │││ ││││ ││  0x00007fd7e4f6f39e:   add    %eax,%esi                    ;*dload {reexecute=0 rethrow=0 return_oop=0}
            ││││││ │││ ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@93 (line 81)
   0.00%    ││││││ │││↗││││ ││  0x00007fd7e4f6f3a0:   vaddsd %xmm13,%xmm1,%xmm2
   3.45%    ││││││ ││││││││ ││  0x00007fd7e4f6f3a5:   vucomisd %xmm2,%xmm4
   1.64%    ││╰│││ ││││││││ ││  0x00007fd7e4f6f3a9:   jb     0x00007fd7e4f6f30b           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
            ││ │││ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   0.87%    ││ │││ ││││││││ ││  0x00007fd7e4f6f3af:   vsubsd %xmm1,%xmm13,%xmm1
   0.00%    ││ │││ ││││││││ ││  0x00007fd7e4f6f3b3:   vmulsd -0x15b(%rip),%xmm12,%xmm2        # 0x00007fd7e4f6f260
            ││ │││ ││││││││ ││                                                            ;   {section_word}
   0.01%    ││ │││ ││││││││ ││  0x00007fd7e4f6f3bb:   vaddsd %xmm10,%xmm1,%xmm13          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││ │││ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   1.38%    ││ │││ ││││││││ ││  0x00007fd7e4f6f3c0:   vmulsd %xmm11,%xmm2,%xmm1
   0.03%    ││ │││ ││││││││ ││  0x00007fd7e4f6f3c5:   vmulsd %xmm13,%xmm13,%xmm2          ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││ │││ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@97 (line 81)
   3.40%    ││ │││ ││││││││ ││  0x00007fd7e4f6f3ca:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││ │││ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
   0.00%    ││ │││ ││││││││ ││  0x00007fd7e4f6f3ce:   vmulsd %xmm1,%xmm1,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││ │││ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@102 (line 81)
   0.63%    ││ │││ ││││││││ ││  0x00007fd7e4f6f3d2:   vaddsd %xmm11,%xmm2,%xmm12
   3.49%    ││ │││ ││││││││ ││  0x00007fd7e4f6f3d7:   nopw   0x0(%rax,%rax,1)
            ││ │││ ││││││││ ││  0x00007fd7e4f6f3e0:   vucomisd %xmm12,%xmm4
   1.50%    ││ ╰││ ││││││││ ││  0x00007fd7e4f6f3e5:   jb     0x00007fd7e4f6f301           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
            ││  ││ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   0.92%    ││  ││ ││││││││ ││  0x00007fd7e4f6f3eb:   vsubsd %xmm11,%xmm2,%xmm2
   0.00%    ││  ││ ││││││││ ││  0x00007fd7e4f6f3f0:   vmulsd -0x198(%rip),%xmm13,%xmm11        # 0x00007fd7e4f6f260
            ││  ││ ││││││││ ││                                                            ;   {section_word}
   0.00%    ││  ││ ││││││││ ││  0x00007fd7e4f6f3f8:   vmulsd %xmm1,%xmm11,%xmm1
   0.01%    ││  ││ ││││││││ ││  0x00007fd7e4f6f3fc:   vaddsd %xmm10,%xmm2,%xmm2           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││  ││ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   1.81%    ││  ││ ││││││││ ││  0x00007fd7e4f6f401:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││  ││ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
   0.42%    ││  ││ ││││││││ ││  0x00007fd7e4f6f405:   vmulsd %xmm2,%xmm2,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││  ││ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@97 (line 81)
   2.94%    ││  ││ ││││││││ ││  0x00007fd7e4f6f409:   vmulsd %xmm1,%xmm1,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││  ││ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@102 (line 81)
   0.41%    ││  ││ ││││││││ ││  0x00007fd7e4f6f40d:   vaddsd %xmm12,%xmm11,%xmm13
   3.43%    ││  ││ ││││││││ ││  0x00007fd7e4f6f412:   vucomisd %xmm13,%xmm4
   1.57%    ││  ╰│ ││││││││ ││  0x00007fd7e4f6f417:   jb     0x00007fd7e4f6f308           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
            ││   │ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   0.77%    ││   │ ││││││││ ││  0x00007fd7e4f6f41d:   vsubsd %xmm12,%xmm11,%xmm11
   0.00%    ││   │ ││││││││ ││  0x00007fd7e4f6f422:   vmulsd -0x1ca(%rip),%xmm2,%xmm2        # 0x00007fd7e4f6f260
            ││   │ ││││││││ ││                                                            ;   {section_word}
   0.00%    ││   │ ││││││││ ││  0x00007fd7e4f6f42a:   vmulsd %xmm1,%xmm2,%xmm1
            ││   │ ││││││││ ││  0x00007fd7e4f6f42e:   vaddsd %xmm10,%xmm11,%xmm2          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││   │ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   1.27%    ││   │ ││││││││ ││  0x00007fd7e4f6f433:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││   │ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
   0.58%    ││   │ ││││││││ ││  0x00007fd7e4f6f437:   vmulsd %xmm2,%xmm2,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││   │ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@97 (line 81)
   2.71%    ││   │ ││││││││ ││  0x00007fd7e4f6f43b:   vmulsd %xmm1,%xmm1,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││   │ ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@102 (line 81)
   0.55%    ││   │ ││││││││ ││  0x00007fd7e4f6f43f:   vaddsd %xmm12,%xmm11,%xmm13
   3.41%    ││   │ ││││││││ ││  0x00007fd7e4f6f444:   vucomisd %xmm13,%xmm4
   1.56%    ││   ╰ ││││││││ ││  0x00007fd7e4f6f449:   jb     0x00007fd7e4f6f2f9           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
            ││     ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   0.84%    ││     ││││││││ ││  0x00007fd7e4f6f44f:   vsubsd %xmm12,%xmm11,%xmm11
            ││     ││││││││ ││  0x00007fd7e4f6f454:   vmulsd -0x1fc(%rip),%xmm2,%xmm2        # 0x00007fd7e4f6f260
            ││     ││││││││ ││                                                            ;   {section_word}
            ││     ││││││││ ││  0x00007fd7e4f6f45c:   vmulsd %xmm1,%xmm2,%xmm1
   0.00%    ││     ││││││││ ││  0x00007fd7e4f6f460:   vaddsd %xmm10,%xmm11,%xmm2          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││     ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   1.46%    ││     ││││││││ ││  0x00007fd7e4f6f465:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││     ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
   0.57%    ││     ││││││││ ││  0x00007fd7e4f6f469:   vmulsd %xmm2,%xmm2,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││     ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@97 (line 81)
   2.72%    ││     ││││││││ ││  0x00007fd7e4f6f46d:   vmulsd %xmm1,%xmm1,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││     ││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@102 (line 81)
   0.55%    ││     ││││││││ ││  0x00007fd7e4f6f471:   vaddsd %xmm12,%xmm11,%xmm13
   3.58%    ││     ││││││││ ││  0x00007fd7e4f6f476:   data16 nopw 0x0(%rax,%rax,1)
            ││     ││││││││ ││  0x00007fd7e4f6f480:   vucomisd %xmm13,%xmm4
   1.63%    ││    ╭││││││││ ││  0x00007fd7e4f6f485:   jb     0x00007fd7e4f6f5bb           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
            ││    │││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   0.84%    ││    │││││││││ ││  0x00007fd7e4f6f48b:   vsubsd %xmm12,%xmm11,%xmm11
   0.00%    ││    │││││││││ ││  0x00007fd7e4f6f490:   vmulsd -0x238(%rip),%xmm2,%xmm2        # 0x00007fd7e4f6f260
            ││    │││││││││ ││                                                            ;   {section_word}
            ││    │││││││││ ││  0x00007fd7e4f6f498:   vmulsd %xmm1,%xmm2,%xmm1
            ││    │││││││││ ││  0x00007fd7e4f6f49c:   vaddsd %xmm10,%xmm11,%xmm2          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││    │││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   1.65%    ││    │││││││││ ││  0x00007fd7e4f6f4a1:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││    │││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
   0.37%    ││    │││││││││ ││  0x00007fd7e4f6f4a5:   vmulsd %xmm2,%xmm2,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││    │││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@97 (line 81)
   3.02%    ││    │││││││││ ││  0x00007fd7e4f6f4a9:   vmulsd %xmm1,%xmm1,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││    │││││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@102 (line 81)
   0.35%    ││    │││││││││ ││  0x00007fd7e4f6f4ad:   vaddsd %xmm12,%xmm11,%xmm13
   3.58%    ││    │││││││││ ││  0x00007fd7e4f6f4b2:   vucomisd %xmm13,%xmm4
   1.64%    ││    │╰│││││││ ││  0x00007fd7e4f6f4b7:   jb     0x00007fd7e4f6f2fe           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
            ││    │ │││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   0.91%    ││    │ │││││││ ││  0x00007fd7e4f6f4bd:   vsubsd %xmm12,%xmm11,%xmm11
   0.00%    ││    │ │││││││ ││  0x00007fd7e4f6f4c2:   vmulsd -0x26a(%rip),%xmm2,%xmm2        # 0x00007fd7e4f6f260
            ││    │ │││││││ ││                                                            ;   {section_word}
            ││    │ │││││││ ││  0x00007fd7e4f6f4ca:   vmulsd %xmm1,%xmm2,%xmm1
            ││    │ │││││││ ││  0x00007fd7e4f6f4ce:   vaddsd %xmm10,%xmm11,%xmm2          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││    │ │││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   1.29%    ││    │ │││││││ ││  0x00007fd7e4f6f4d3:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││    │ │││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
   0.63%    ││    │ │││││││ ││  0x00007fd7e4f6f4d7:   vmulsd %xmm2,%xmm2,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││    │ │││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@97 (line 81)
   2.88%    ││    │ │││││││ ││  0x00007fd7e4f6f4db:   vmulsd %xmm1,%xmm1,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││    │ │││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@102 (line 81)
   0.61%    ││    │ │││││││ ││  0x00007fd7e4f6f4df:   vaddsd %xmm12,%xmm11,%xmm13
   3.41%    ││    │ │││││││ ││  0x00007fd7e4f6f4e4:   vucomisd %xmm13,%xmm4
   1.61%    ││    │ ╰││││││ ││  0x00007fd7e4f6f4e9:   jb     0x00007fd7e4f6f305           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
            ││    │  ││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   0.83%    ││    │  ││││││ ││  0x00007fd7e4f6f4ef:   vsubsd %xmm12,%xmm11,%xmm11
   0.00%    ││    │  ││││││ ││  0x00007fd7e4f6f4f4:   vmulsd -0x29c(%rip),%xmm2,%xmm2        # 0x00007fd7e4f6f260
            ││    │  ││││││ ││                                                            ;   {section_word}
            ││    │  ││││││ ││  0x00007fd7e4f6f4fc:   vmulsd %xmm1,%xmm2,%xmm1
            ││    │  ││││││ ││  0x00007fd7e4f6f500:   vaddsd %xmm10,%xmm11,%xmm2          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││    │  ││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   1.52%    ││    │  ││││││ ││  0x00007fd7e4f6f505:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││    │  ││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
   0.58%    ││    │  ││││││ ││  0x00007fd7e4f6f509:   vmulsd %xmm2,%xmm2,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││    │  ││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@97 (line 81)
   2.72%    ││    │  ││││││ ││  0x00007fd7e4f6f50d:   vmulsd %xmm1,%xmm1,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││    │  ││││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@102 (line 81)
   0.51%    ││    │  ││││││ ││  0x00007fd7e4f6f511:   vaddsd %xmm12,%xmm11,%xmm13
   3.56%    ││    │  ││││││ ││  0x00007fd7e4f6f516:   data16 nopw 0x0(%rax,%rax,1)
            ││    │  ││││││ ││  0x00007fd7e4f6f520:   vucomisd %xmm13,%xmm4
   1.49%    ││    │  ╰│││││ ││  0x00007fd7e4f6f525:   jb     0x00007fd7e4f6f2f6           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
            ││    │   │││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   0.88%    ││    │   │││││ ││  0x00007fd7e4f6f52b:   vsubsd %xmm12,%xmm11,%xmm11
   0.00%    ││    │   │││││ ││  0x00007fd7e4f6f530:   vmulsd -0x2d8(%rip),%xmm2,%xmm2        # 0x00007fd7e4f6f260
            ││    │   │││││ ││                                                            ;   {section_word}
            ││    │   │││││ ││  0x00007fd7e4f6f538:   vmulsd %xmm1,%xmm2,%xmm1
   0.00%    ││    │   │││││ ││  0x00007fd7e4f6f53c:   vaddsd %xmm10,%xmm11,%xmm12         ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││    │   │││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   1.65%    ││    │   │││││ ││  0x00007fd7e4f6f541:   vaddsd %xmm7,%xmm1,%xmm11           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││    │   │││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
   0.40%    ││    │   │││││ ││  0x00007fd7e4f6f545:   vmulsd %xmm12,%xmm12,%xmm13         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││    │   │││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@97 (line 81)
   2.98%    ││    │   │││││ ││  0x00007fd7e4f6f54a:   vmulsd %xmm11,%xmm11,%xmm1          ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││    │   │││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@102 (line 81)
   0.47%    ││    │   │││││ ││  0x00007fd7e4f6f54f:   add    $0x8,%eax                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││    │   │││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@143 (line 86)
            ││    │   │││││ ││  0x00007fd7e4f6f552:   cmp    %esi,%eax
            ││    │   ╰││││ ││  0x00007fd7e4f6f554:   jl     0x00007fd7e4f6f3a0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            ││    │    ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@90 (line 81)
            ││    │    ││││ ││  0x00007fd7e4f6f55a:   mov    0x348(%r15),%rsi             ; ImmutableOopMap {r10=Oop xmm0=Oop }
            ││    │    ││││ ││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
            ││    │    ││││ ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@146 (line 87)
   0.01%    ││    │    ││││ ││  0x00007fd7e4f6f561:   test   %eax,(%rsi)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
            ││    │    ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@146 (line 87)
            ││    │    ││││ ││                                                            ;   {poll}
   0.00%    ││    │    ││││ ││  0x00007fd7e4f6f563:   cmp    %r9d,%eax
            ││    │    ╰│││ ││  0x00007fd7e4f6f566:   jl     0x00007fd7e4f6f387
            ││    │     │││ ││  0x00007fd7e4f6f56c:   vmovq  %xmm0,%rsi
            ││    │     │││ ││  0x00007fd7e4f6f571:   cmp    %ecx,%eax
            ││    │     ╰││ ││  0x00007fd7e4f6f573:   jge    0x00007fd7e4f6f310
   0.00%    ││    │      ││ ││  0x00007fd7e4f6f579:   data16 xchg %ax,%ax                 ;*dload {reexecute=0 rethrow=0 return_oop=0}
            ││    │      ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@93 (line 81)
   0.00%    ││    │      ││↗││  0x00007fd7e4f6f57c:   vaddsd %xmm13,%xmm1,%xmm0
   0.10%    ││    │      │││││  0x00007fd7e4f6f581:   vucomisd %xmm0,%xmm4
   0.04%    ││    │      ╰││││  0x00007fd7e4f6f585:   jb     0x00007fd7e4f6f310           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
            ││    │       ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   0.04%    ││    │       ││││  0x00007fd7e4f6f58b:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││    │       ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@143 (line 86)
            ││    │       ││││  0x00007fd7e4f6f58d:   cmp    %ecx,%eax
            ││    │       ╰│││  0x00007fd7e4f6f58f:   jge    0x00007fd7e4f6f310           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            ││    │        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@90 (line 81)
            ││    │        │││  0x00007fd7e4f6f595:   vsubsd %xmm1,%xmm13,%xmm0
            ││    │        │││  0x00007fd7e4f6f599:   vmulsd -0x341(%rip),%xmm12,%xmm1        # 0x00007fd7e4f6f260
            ││    │        │││                                                            ;   {section_word}
   0.03%    ││    │        │││  0x00007fd7e4f6f5a1:   vaddsd %xmm10,%xmm0,%xmm12          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││    │        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   0.01%    ││    │        │││  0x00007fd7e4f6f5a6:   vmulsd %xmm11,%xmm1,%xmm0
            ││    │        │││  0x00007fd7e4f6f5ab:   vmulsd %xmm12,%xmm12,%xmm13         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││    │        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@97 (line 81)
   0.08%    ││    │        │││  0x00007fd7e4f6f5b0:   vaddsd %xmm7,%xmm0,%xmm11           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││    │        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
            ││    │        │││  0x00007fd7e4f6f5b4:   vmulsd %xmm11,%xmm11,%xmm1          ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││    │        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@102 (line 81)
   0.01%    ││    │        ╰││  0x00007fd7e4f6f5b9:   jmp    0x00007fd7e4f6f57c
   0.00%    ││    ↘         ││  0x00007fd7e4f6f5bb:   add    $0x4,%eax                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@143 (line 86)
   0.00%    ││              ││  0x00007fd7e4f6f5be:   xchg   %ax,%ax
            ││              ╰│  0x00007fd7e4f6f5c0:   jmp    0x00007fd7e4f6f30b
   0.00%    ↘│               │  0x00007fd7e4f6f5c5:   vmovsd %xmm3,0x10(%r10,%r11,8)      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
             │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@190 (line 89)
             │               ╰  0x00007fd7e4f6f5cc:   jmp    0x00007fd7e4f6f31d           ;*goto {reexecute=0 rethrow=0 return_oop=0}
             │                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@200 (line 75)
             ↘                  0x00007fd7e4f6f5d1:   mov    0x348(%r15),%r10
                                0x00007fd7e4f6f5d8:   mov    0xc(%rsi),%r8d               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@8 (line 75)
                                0x00007fd7e4f6f5dc:   inc    %edi                         ; ImmutableOopMap {rsi=Oop }
                                                                                          ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                                                          ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@200 (line 75)
                                0x00007fd7e4f6f5de:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  91.39%  <total for region 1>

....[Hottest Regions]...............................................................................
  91.39%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 6, compile id 602 
   0.81%              kernel  [unknown] 
   0.70%              kernel  [unknown] 
   0.70%              kernel  [unknown] 
   0.67%              kernel  [unknown] 
   0.17%           libjvm.so  ElfSymbolTable::lookup 
   0.10%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.10%         interpreter  invokevirtual  182 invokevirtual  
   0.09%              kernel  [unknown] 
   0.08%         interpreter  aload  25 aload  
   0.08%         interpreter  return entry points  
   0.08%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.06%              kernel  [unknown] 
   0.05%         interpreter  astore  58 astore  
   0.05%              kernel  [unknown] 
   0.04%         interpreter  invokevirtual  182 invokevirtual  
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%      perf-20914.map  [unknown] 
   4.65%  <...other 1122 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  91.39%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 6, compile id 602 
   5.01%              kernel  [unknown] 
   0.35%                      <unknown> 
   0.17%           libjvm.so  ElfSymbolTable::lookup 
   0.15%         interpreter  invokevirtual  182 invokevirtual  
   0.12%         interpreter  return entry points  
   0.09%        libc-2.31.so  __strxfrm_l 
   0.09%        libc-2.31.so  __strncat_ssse3 
   0.08%         interpreter  aload  25 aload  
   0.08%      perf-20914.map  [unknown] 
   0.08%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.06%         interpreter  method entry point (kind = zerolocals)  
   0.06%           libjvm.so  xmlStream::write_text 
   0.05%         interpreter  invokestatic  184 invokestatic  
   0.05%         interpreter  astore  58 astore  
   0.04%  libpthread-2.31.so  __libc_write 
   0.04%      hsdis-amd64.so  print_insn 
   0.04%         c2, level 4  jdk.incubator.vector.DoubleVector::add, version 2, compile id 830 
   0.04%           libjvm.so  fileStream::write 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 1, compile id 923 
   1.96%  <...other 478 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  91.59%         c2, level 4
   5.01%              kernel
   1.34%           libjvm.so
   0.87%         interpreter
   0.47%        libc-2.31.so
   0.35%                    
   0.09%      hsdis-amd64.so
   0.08%  libpthread-2.31.so
   0.08%          ld-2.31.so
   0.08%      perf-20914.map
   0.02%         c1, level 3
   0.01%         c1, level 2
   0.01%              [vdso]
   0.00%    Unknown, level 0
   0.00%         c1, level 1
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.baseline
# Parameters: (iterations = 2000, size = 512)

# Run progress: 37.50% complete, ETA 00:09:21
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 260.596 ms/op
# Warmup Iteration   2: 258.265 ms/op
# Warmup Iteration   3: 258.250 ms/op
# Warmup Iteration   4: 258.253 ms/op
# Warmup Iteration   5: 258.247 ms/op
Iteration   1: 258.257 ms/op
Iteration   2: 258.265 ms/op
Iteration   3: 258.261 ms/op
Iteration   4: 258.261 ms/op
Iteration   5: 258.258 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.baseline":
  258.260 ±(99.9%) 0.012 ms/op [Average]
  (min, avg, max) = (258.257, 258.260, 258.265), stdev = 0.003
  CI (99.9%): [258.249, 258.272] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.baseline:·asm":
PrintAssembly processed: 175655 total address lines.
Perf output processed (skipped 56.755 seconds):
 Column 1: cycles (55561 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 6, compile id 578 

                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@11 (line 75)
                     0x00007fb354f6d639:   vmovsd -0x61(%rip),%xmm3        # 0x00007fb354f6d5e0
                                                                               ;   {section_word}
                     0x00007fb354f6d641:   vmovsd -0x81(%rip),%xmm4        # 0x00007fb354f6d5c8
                                                                               ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@146 (line 87)
                                                                               ;   {section_word}
                     0x00007fb354f6d649:   mov    $0xfa0,%r14d
                     0x00007fb354f6d64f:   xor    %edi,%edi
                     0x00007fb354f6d651:   jmp    0x00007fb354f6d874
   0.01%       ↗     0x00007fb354f6d656:   add    $0x2,%eax
   0.01%     ↗ │     0x00007fb354f6d659:   inc    %eax
   0.01%  ╭  │ │     0x00007fb354f6d65b:   jmp    0x00007fb354f6d660
   0.02%  │  │↗│     0x00007fb354f6d65d:   add    $0x2,%eax                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@143 (line 86)
   0.02%  ↘ ↗│││     0x00007fb354f6d660:   vmovq  %xmm0,%rsi                   ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   0.01%    ││││     0x00007fb354f6d665:   cmp    %ecx,%eax
            ││││     0x00007fb354f6d667:   jge    0x00007fb354f6d84f           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@155 (line 88)
   0.00%    ││││     0x00007fb354f6d66d:   mov    %r12,0x10(%r10,%r11,8)       ;*goto {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@194 (line 76)
   0.03%    ││││     0x00007fb354f6d672:   mov    0x348(%r15),%r11             ; ImmutableOopMap {r10=Oop rsi=Oop }
            ││││                                                               ;*goto {reexecute=1 rethrow=0 return_oop=0}
            ││││                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@194 (line 76)
   0.01%    ││││     0x00007fb354f6d679:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@194 (line 76)
            ││││                                                               ;   {poll}
   0.01%    ││││     0x00007fb354f6d67c:   nopl   0x0(%rax)
            ││││     0x00007fb354f6d680:   cmp    %r8d,%edx
            ││││     0x00007fb354f6d683:   jge    0x00007fb354f6d85b           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@23 (line 76)
   0.02%    ││││     0x00007fb354f6d689:   mov    %edx,%ebx                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@26 (line 77)
   0.00%    ││││     0x00007fb354f6d68b:   movslq %ebx,%r11
   0.00%    ││││     0x00007fb354f6d68e:   add    %r13,%r11                    ;*dastore {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@172 (line 88)
   0.00%    ││││     0x00007fb354f6d691:   mov    %ebx,%edx
   0.03%    ││││     0x00007fb354f6d693:   inc    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@191 (line 76)
   0.01%    ││││     0x00007fb354f6d695:   test   %ecx,%ecx
            ││││     0x00007fb354f6d697:   jle    0x00007fb354f6d8fc           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@90 (line 81)
   0.01%    ││││     0x00007fb354f6d69d:   vcvtsi2sd %ebx,%xmm0,%xmm0
   0.02%    ││││     0x00007fb354f6d6a1:   vsubsd %xmm6,%xmm0,%xmm0
   0.01%    ││││     0x00007fb354f6d6a5:   vmulsd -0xe5(%rip),%xmm0,%xmm0        # 0x00007fb354f6d5c8
            ││││                                                               ;   {section_word}
   0.02%    ││││     0x00007fb354f6d6ad:   vdivsd %xmm5,%xmm0,%xmm10           ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@48 (line 77)
   0.06%    ││││     0x00007fb354f6d6b1:   vaddsd -0xe9(%rip),%xmm10,%xmm12        # 0x00007fb354f6d5d0
            ││││                                                               ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
            ││││                                                               ;   {section_word}
   0.03%    ││││     0x00007fb354f6d6b9:   vmulsd %xmm12,%xmm12,%xmm13
   0.03%    ││││     0x00007fb354f6d6be:   xchg   %ax,%ax
   0.00%    ││││     0x00007fb354f6d6c0:   cmp    $0x1,%r9d
           ╭││││     0x00007fb354f6d6c4:   jle    0x00007fb354f6d7f7
   0.00%   │││││     0x00007fb354f6d6ca:   vmovq  %rsi,%xmm0
   0.01%   │││││     0x00007fb354f6d6cf:   vmovapd %xmm8,%xmm11
   0.02%   │││││     0x00007fb354f6d6d4:   vmovapd %xmm9,%xmm1
   0.00%   │││││     0x00007fb354f6d6d9:   mov    $0x1,%eax
   0.00%   │││││ ↗   0x00007fb354f6d6de:   mov    %r9d,%esi
   0.02%   │││││ │   0x00007fb354f6d6e1:   sub    %eax,%esi
   0.01%   │││││ │   0x00007fb354f6d6e3:   xor    %ebp,%ebp
   0.01%   │││││ │   0x00007fb354f6d6e5:   cmp    %eax,%r9d
   0.00%   │││││ │   0x00007fb354f6d6e8:   cmovl  %ebp,%esi
   0.02%   │││││ │   0x00007fb354f6d6eb:   cmp    $0xfa0,%esi
   0.01%   │││││ │   0x00007fb354f6d6f1:   cmova  %r14d,%esi
   0.00%   │││││ │   0x00007fb354f6d6f5:   add    %eax,%esi
   0.01%   │││││ │   0x00007fb354f6d6f7:   nopw   0x0(%rax,%rax,1)             ;*dload {reexecute=0 rethrow=0 return_oop=0}
           │││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@93 (line 81)
   0.02%   │││││↗│   0x00007fb354f6d700:   vaddsd %xmm1,%xmm13,%xmm2
   6.66%   │││││││   0x00007fb354f6d704:   vucomisd %xmm2,%xmm4
   3.22%   │╰│││││   0x00007fb354f6d708:   jb     0x00007fb354f6d660           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
           │ │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   1.77%   │ │││││   0x00007fb354f6d70e:   vsubsd %xmm1,%xmm13,%xmm1
   0.01%   │ │││││   0x00007fb354f6d712:   vmulsd -0x15a(%rip),%xmm12,%xmm2        # 0x00007fb354f6d5c0
           │ │││││                                                             ;   {section_word}
           │ │││││   0x00007fb354f6d71a:   vaddsd %xmm10,%xmm1,%xmm13          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │ │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   2.85%   │ │││││   0x00007fb354f6d71f:   vmulsd %xmm11,%xmm2,%xmm1
   0.06%   │ │││││   0x00007fb354f6d724:   vmulsd %xmm13,%xmm13,%xmm2          ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           │ │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@97 (line 81)
   7.11%   │ │││││   0x00007fb354f6d729:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │ │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
           │ │││││   0x00007fb354f6d72d:   vmulsd %xmm1,%xmm1,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           │ │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@102 (line 81)
   1.18%   │ │││││   0x00007fb354f6d731:   vaddsd %xmm11,%xmm2,%xmm12
   7.04%   │ │││││   0x00007fb354f6d736:   data16 nopw 0x0(%rax,%rax,1)
   0.00%   │ │││││   0x00007fb354f6d740:   vucomisd %xmm12,%xmm4
   2.89%   │ ╰││││   0x00007fb354f6d745:   jb     0x00007fb354f6d659           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
           │  ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   1.67%   │  ││││   0x00007fb354f6d74b:   vsubsd %xmm11,%xmm2,%xmm2
   0.01%   │  ││││   0x00007fb354f6d750:   vmulsd -0x198(%rip),%xmm13,%xmm11        # 0x00007fb354f6d5c0
           │  ││││                                                             ;   {section_word}
           │  ││││   0x00007fb354f6d758:   vmulsd %xmm1,%xmm11,%xmm1
           │  ││││   0x00007fb354f6d75c:   vaddsd %xmm10,%xmm2,%xmm2           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │  ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   3.21%   │  ││││   0x00007fb354f6d761:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │  ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
   1.03%   │  ││││   0x00007fb354f6d765:   vmulsd %xmm2,%xmm2,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           │  ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@97 (line 81)
   5.80%   │  ││││   0x00007fb354f6d769:   vmulsd %xmm1,%xmm1,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           │  ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@102 (line 81)
   0.85%   │  ││││   0x00007fb354f6d76d:   vaddsd %xmm12,%xmm11,%xmm13
   6.88%   │  ││││   0x00007fb354f6d772:   vucomisd %xmm13,%xmm4
   3.23%   │  ╰│││   0x00007fb354f6d777:   jb     0x00007fb354f6d65d           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
           │   │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   1.74%   │   │││   0x00007fb354f6d77d:   vsubsd %xmm12,%xmm11,%xmm11
           │   │││   0x00007fb354f6d782:   vmulsd -0x1ca(%rip),%xmm2,%xmm2        # 0x00007fb354f6d5c0
           │   │││                                                             ;   {section_word}
           │   │││   0x00007fb354f6d78a:   vmulsd %xmm1,%xmm2,%xmm1
   0.00%   │   │││   0x00007fb354f6d78e:   vaddsd %xmm10,%xmm11,%xmm2          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │   │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   2.71%   │   │││   0x00007fb354f6d793:   vaddsd %xmm7,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │   │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
   1.17%   │   │││   0x00007fb354f6d797:   vmulsd %xmm2,%xmm2,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           │   │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@97 (line 81)
   5.64%   │   │││   0x00007fb354f6d79b:   vmulsd %xmm1,%xmm1,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           │   │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@102 (line 81)
   1.09%   │   │││   0x00007fb354f6d79f:   vaddsd %xmm12,%xmm11,%xmm13
   6.81%   │   │││   0x00007fb354f6d7a4:   vucomisd %xmm13,%xmm4
   3.43%   │   ╰││   0x00007fb354f6d7a9:   jb     0x00007fb354f6d656           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
           │    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   1.73%   │    ││   0x00007fb354f6d7af:   vsubsd %xmm12,%xmm11,%xmm11
   0.00%   │    ││   0x00007fb354f6d7b4:   vmulsd -0x1fc(%rip),%xmm2,%xmm2        # 0x00007fb354f6d5c0
           │    ││                                                             ;   {section_word}
           │    ││   0x00007fb354f6d7bc:   vmulsd %xmm1,%xmm2,%xmm1
           │    ││   0x00007fb354f6d7c0:   vaddsd %xmm10,%xmm11,%xmm12         ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   2.74%   │    ││   0x00007fb354f6d7c5:   vaddsd %xmm7,%xmm1,%xmm11           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
   0.76%   │    ││   0x00007fb354f6d7c9:   vmulsd %xmm12,%xmm12,%xmm13         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           │    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@97 (line 81)
   5.74%   │    ││   0x00007fb354f6d7ce:   vmulsd %xmm11,%xmm11,%xmm1          ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           │    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@102 (line 81)
   1.00%   │    ││   0x00007fb354f6d7d3:   add    $0x4,%eax                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@143 (line 86)
           │    ││   0x00007fb354f6d7d6:   cmp    %esi,%eax
           │    ╰│   0x00007fb354f6d7d8:   jl     0x00007fb354f6d700           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@90 (line 81)
           │     │   0x00007fb354f6d7de:   mov    0x348(%r15),%rsi             ; ImmutableOopMap {r10=Oop xmm0=Oop }
           │     │                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
           │     │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@146 (line 87)
   0.00%   │     │   0x00007fb354f6d7e5:   test   %eax,(%rsi)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@146 (line 87)
           │     │                                                             ;   {poll}
   0.00%   │     │   0x00007fb354f6d7e7:   cmp    %r9d,%eax
           │     ╰   0x00007fb354f6d7ea:   jl     0x00007fb354f6d6de
           │         0x00007fb354f6d7f0:   vmovq  %xmm0,%rsi
           │      ╭  0x00007fb354f6d7f5:   jmp    0x00007fb354f6d806
           ↘      │  0x00007fb354f6d7f7:   vmovapd %xmm8,%xmm11
                  │  0x00007fb354f6d7fc:   vmovapd %xmm9,%xmm1
                  │  0x00007fb354f6d801:   mov    $0x1,%eax
                  ↘  0x00007fb354f6d806:   cmp    %ecx,%eax
                     0x00007fb354f6d808:   jge    0x00007fb354f6d665
....................................................................................................
  90.53%  <total for region 1>

....[Hottest Regions]...............................................................................
  90.53%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 6, compile id 578 
   1.33%              kernel  [unknown] 
   0.69%              kernel  [unknown] 
   0.67%              kernel  [unknown] 
   0.46%              kernel  [unknown] 
   0.36%              kernel  [unknown] 
   0.19%           libjvm.so  ElfSymbolTable::lookup 
   0.13%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 6, compile id 578 
   0.13%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.10%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 1, compile id 905 
   0.10%              kernel  [unknown] 
   0.09%         interpreter  aload  25 aload  
   0.08%         interpreter  invokevirtual  182 invokevirtual  
   0.08%         interpreter  return entry points  
   0.08%              kernel  [unknown] 
   0.07%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%           libjvm.so  xmlStream::write_text 
   4.64%  <...other 1172 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  90.67%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 6, compile id 578 
   5.60%              kernel  [unknown] 
   0.32%                      <unknown> 
   0.21%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 1, compile id 905 
   0.19%           libjvm.so  ElfSymbolTable::lookup 
   0.12%        libc-2.31.so  __strxfrm_l 
   0.12%         interpreter  return entry points  
   0.12%         interpreter  invokevirtual  182 invokevirtual  
   0.12%        libc-2.31.so  __strncat_ssse3 
   0.09%         interpreter  aload  25 aload  
   0.07%      hsdis-amd64.so  print_insn 
   0.07%           libjvm.so  xmlStream::write_text 
   0.07%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.06%      perf-20968.map  [unknown] 
   0.05%         interpreter  method entry point (kind = zerolocals)  
   0.04%           libjvm.so  defaultStream::write 
   0.04%  libpthread-2.31.so  __libc_write 
   0.04%        libc-2.31.so  getifaddrs_internal 
   0.04%         c2, level 4  jdk.incubator.vector.DoubleVector::mul, version 2, compile id 825 
   0.04%        libc-2.31.so  __GI___strcasecmp_l_sse2 
   1.90%  <...other 510 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  91.04%         c2, level 4
   5.60%              kernel
   1.42%           libjvm.so
   0.70%         interpreter
   0.54%        libc-2.31.so
   0.32%                    
   0.11%      hsdis-amd64.so
   0.07%  libpthread-2.31.so
   0.07%          ld-2.31.so
   0.06%      perf-20968.map
   0.02%         c1, level 3
   0.01%    Unknown, level 0
   0.01%              [vdso]
   0.01%         c1, level 2
   0.00%          libjava.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.vectorized
# Parameters: (iterations = 1000, size = 256)

# Run progress: 50.00% complete, ETA 00:07:29
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3.452 ms/op
# Warmup Iteration   2: 2.414 ms/op
# Warmup Iteration   3: 2.414 ms/op
# Warmup Iteration   4: 2.414 ms/op
# Warmup Iteration   5: 2.414 ms/op
Iteration   1: 2.414 ms/op
Iteration   2: 2.414 ms/op
Iteration   3: 2.414 ms/op
Iteration   4: 2.414 ms/op
Iteration   5: 2.414 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.vectorized":
  2.414 ±(99.9%) 0.001 ms/op [Average]
  (min, avg, max) = (2.414, 2.414, 2.414), stdev = 0.001
  CI (99.9%): [2.414, 2.414] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.vectorized:·asm":
PrintAssembly processed: 183313 total address lines.
Perf output processed (skipped 56.462 seconds):
 Column 1: cycles (50662 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 884 

                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@27 (line 103)
                     0x00007f1664f9fad7:   vmulpd %ymm5,%ymm0,%ymm7
                     0x00007f1664f9fadb:   vsubpd %ymm1,%ymm1,%ymm1
                     0x00007f1664f9fadf:   mov    $0xfa0,%r8d                  ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
                     0x00007f1664f9fae5:   vpcmpeqb %ymm6,%ymm6,%ymm6          ;*getstatic DOUBLE_VECTOR_SPECIES {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@52 (line 108)
                     0x00007f1664f9fae9:   xor    %r13d,%r13d
                     0x00007f1664f9faec:   jmp    0x00007f1664f9fdbf
   0.13%    ↗↗↗↗     0x00007f1664f9faf1:   mov    0xc0(%rsp),%rsi
   0.01%    ││││     0x00007f1664f9faf9:   vmovsd 0xc8(%rsp),%xmm3
   0.02%  ↗ ││││     0x00007f1664f9fb02:   mov    %rsi,0xc0(%rsp)
   0.02%  │ ││││     0x00007f1664f9fb0a:   mov    0x348(%r15),%rdx
   0.04%  │ ││││     0x00007f1664f9fb11:   vcmpeqpd %ymm12,%ymm14,%ymm0
          │ ││││     0x00007f1664f9fb17:   vmovdqu (%rsp),%ymm1
   0.02%  │ ││││     0x00007f1664f9fb1c:   vblendvps %ymm0,%ymm1,%ymm5,%ymm0
   0.14%  │ ││││     0x00007f1664f9fb22:   movslq %ebx,%rsi
          │ ││││     0x00007f1664f9fb25:   add    %rax,%rsi                    ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                               ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
          │ ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
          │ ││││     0x00007f1664f9fb28:   vmovdqu %ymm0,0x10(%rbp,%rsi,8)     ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                               ; - jdk.incubator.vector.VectorIntrinsics::roundDown@14 (line 86)
          │ ││││                                                               ; - jdk.incubator.vector.AbstractSpecies::loopBound@5 (line 203)
          │ ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@14 (line 101)
   0.03%  │ ││││     0x00007f1664f9fb2e:   add    $0x4,%ebx                    ; ImmutableOopMap {r9=NarrowOop rcx=NarrowOop rbp=Oop [192]=Oop }
          │ ││││                                                               ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ ││││                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@337 (line 107)
   0.03%  │ ││││     0x00007f1664f9fb31:   test   %eax,(%rdx)                  ;   {poll}
          │ ││││     0x00007f1664f9fb33:   cmp    %r10d,%ebx
          │ ││││     0x00007f1664f9fb36:   jge    0x00007f1664f9fd85
          │ ││││     0x00007f1664f9fb3c:   vcvtsi2sd %ebx,%xmm0,%xmm0          ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                               ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
          │ ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   0.12%  │ ││││     0x00007f1664f9fb40:   vbroadcastsd %xmm0,%ymm0            ;*invokevirtual broadcastBits {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                               ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3449)
          │ ││││                                                               ; - jdk.incubator.vector.DoubleVector::broadcast@7 (line 471)
          │ ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@58 (line 109)
   0.16%  │ ││││     0x00007f1664f9fb45:   mov    0xc0(%rsp),%rsi
          │ ││││     0x00007f1664f9fb4d:   test   %r11d,%r11d
          │ ││││     0x00007f1664f9fb50:   jle    0x00007f1664f9ff25
          │ ││││     0x00007f1664f9fb56:   vaddpd 0x10(%r12,%r9,8),%ymm0,%ymm0 ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                               ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
          │ ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   0.24%  │ ││││     0x00007f1664f9fb5d:   vmovdqu 0x10(%r12,%rcx,8),%ymm8     ;*invokestatic broadcastCoerced {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                               ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcastBits@18 (line 3440)
          │ ││││                                                               ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3449)
          │ ││││                                                               ; - jdk.incubator.vector.DoubleVector::broadcast@7 (line 471)
          │ ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@27 (line 103)
          │ ││││     0x00007f1664f9fb64:   vmovdqu 0xa0(%rsp),%ymm1
          │ ││││     0x00007f1664f9fb6d:   vsubpd %ymm1,%ymm0,%ymm0
   0.28%  │ ││││     0x00007f1664f9fb71:   vaddpd %ymm8,%ymm5,%ymm7
          │ ││││     0x00007f1664f9fb76:   vmovdqu 0x80(%rsp),%ymm1            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                               ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
          │ ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
          │ ││││     0x00007f1664f9fb7f:   vmulpd %ymm1,%ymm0,%ymm13           ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                               ; - jdk.incubator.vector.VectorIntrinsics::roundDown@11 (line 86)
          │ ││││                                                               ; - jdk.incubator.vector.AbstractSpecies::loopBound@5 (line 203)
          │ ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@14 (line 101)
   0.25%  │ ││││     0x00007f1664f9fb83:   vmovdqu 0x40(%rsp),%ymm0            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                               ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
          │ ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   0.00%  │ ││││     0x00007f1664f9fb89:   vaddpd %ymm13,%ymm0,%ymm1           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                               ; - jdk.incubator.vector.VectorIntrinsics::roundDown@5 (line 84)
          │ ││││                                                               ; - jdk.incubator.vector.AbstractSpecies::loopBound@5 (line 203)
          │ ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@14 (line 101)
   0.29%  │ ││││     0x00007f1664f9fb8e:   vmulpd %ymm1,%ymm1,%ymm2            ;*invokevirtual getClass {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                               ; - jdk.incubator.vector.AbstractVector::sameSpecies@1 (line 133)
          │ ││││                                                               ; - jdk.incubator.vector.AbstractVector::check@2 (line 124)
          │ ││││                                                               ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@7 (line 615)
          │ ││││                                                               ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
          │ ││││                                                               ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││                                                               ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
          │ ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
   0.24%  │ ││││     0x00007f1664f9fb92:   vaddpd %ymm11,%ymm2,%ymm0           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                               ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
          │ ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   0.23%  │ ││││     0x00007f1664f9fb97:   vcmplepd %ymm4,%ymm0,%ymm0          ;*synchronization entry
          │ ││││                                                               ; - jdk.incubator.vector.AbstractVector::sameSpecies@-1 (line 133)
          │ ││││                                                               ; - jdk.incubator.vector.AbstractVector::check@2 (line 124)
          │ ││││                                                               ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@7 (line 615)
          │ ││││                                                               ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
          │ ││││                                                               ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││                                                               ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
          │ ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
   0.27%  │ ││││     0x00007f1664f9fb9c:   vblendvps %ymm0,%ymm7,%ymm5,%ymm14
   0.23%  │ ││││     0x00007f1664f9fba2:   vptest %ymm6,%ymm0
   0.08%  ╰ ││││     0x00007f1664f9fba7:   je     0x00007f1664f9fb02
   0.07%    ││││     0x00007f1664f9fbad:   cmp    $0x1,%edi                    ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                               ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
            ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
           ╭││││     0x00007f1664f9fbb0:   jle    0x00007f1664f9fd0a
   0.00%   │││││     0x00007f1664f9fbb6:   vmovsd %xmm3,0xc8(%rsp)
   0.00%   │││││     0x00007f1664f9fbbf:   mov    %rsi,0xc0(%rsp)
           │││││     0x00007f1664f9fbc7:   vmovdqu %ymm11,%ymm15
   0.05%   │││││     0x00007f1664f9fbcc:   vmovdqu %ymm10,%ymm3
   0.01%   │││││     0x00007f1664f9fbd1:   mov    $0x1,%esi                    ;*invokevirtual find {reexecute=0 rethrow=0 return_oop=0}
           │││││                                                               ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@108 (line 633)
           │││││                                                               ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
           │││││                                                               ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           │││││                                                               ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
           │││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
           │││││ ↗   0x00007f1664f9fbd6:   mov    %edi,%edx
           │││││ │   0x00007f1664f9fbd8:   sub    %esi,%edx
   0.06%   │││││ │   0x00007f1664f9fbda:   cmp    %esi,%edi
   0.00%   │││││ │   0x00007f1664f9fbdc:   cmovl  %r14d,%edx
           │││││ │   0x00007f1664f9fbe0:   cmp    $0xfa0,%edx
           │││││ │   0x00007f1664f9fbe6:   cmova  %r8d,%edx
   0.06%   │││││ │   0x00007f1664f9fbea:   add    %esi,%edx                    ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
           │││││ │                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
           │││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   0.00%   │││││ │   0x00007f1664f9fbec:   nopl   0x0(%rax)                    ;*invokevirtual opCode {reexecute=0 rethrow=0 return_oop=0}
           │││││ │                                                             ; - jdk.incubator.vector.VectorOperators::opCode@6 (line 405)
           │││││ │                                                             ; - jdk.incubator.vector.DoubleVector::opCode@7 (line 63)
           │││││ │                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@77 (line 629)
           │││││ │                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
           │││││ │                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           │││││ │                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
           │││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
           │││││↗│   0x00007f1664f9fbf0:   vsubpd %ymm15,%ymm2,%ymm0
   0.04%   │││││││   0x00007f1664f9fbf5:   vaddpd %ymm1,%ymm1,%ymm2            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
           │││││││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
           │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   1.70%   │││││││   0x00007f1664f9fbf9:   vaddpd %ymm13,%ymm0,%ymm1           ;*invokestatic opCode {reexecute=0 rethrow=0 return_oop=0}
           │││││││                                                             ; - jdk.incubator.vector.DoubleVector::opCode@7 (line 63)
           │││││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@77 (line 629)
           │││││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
           │││││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           │││││││                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
           │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
   0.02%   │││││││   0x00007f1664f9fbfe:   vmulpd %ymm3,%ymm2,%ymm0            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
           │││││││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
           │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
           │││││││   0x00007f1664f9fc02:   vmulpd %ymm1,%ymm1,%ymm2            ;*invokestatic opKind {reexecute=0 rethrow=0 return_oop=0}
           │││││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@15 (line 616)
           │││││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
           │││││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           │││││││                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
           │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
   0.05%   │││││││   0x00007f1664f9fc06:   vaddpd %ymm9,%ymm0,%ymm3            ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
           │││││││                                                             ; - jdk.incubator.vector.DoubleVector::opCode@0 (line 63)
           │││││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@77 (line 629)
           │││││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
           │││││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           │││││││                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
           │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
   1.93%   │││││││   0x00007f1664f9fc0b:   vaddpd %ymm8,%ymm14,%ymm7           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
           │││││││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
           │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   0.02%   │││││││   0x00007f1664f9fc10:   vmulpd %ymm3,%ymm3,%ymm15           ;*synchronization entry
           │││││││                                                             ; - jdk.incubator.vector.DoubleVector::opCode@-1 (line 63)
           │││││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@77 (line 629)
           │││││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
           │││││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           │││││││                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
           │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
   0.00%   │││││││   0x00007f1664f9fc14:   vaddpd %ymm15,%ymm2,%ymm0
   0.95%   │││││││   0x00007f1664f9fc19:   vcmplepd %ymm4,%ymm0,%ymm0
   7.10%   │││││││   0x00007f1664f9fc1e:   vblendvps %ymm0,%ymm7,%ymm14,%ymm14
   5.89%   │││││││   0x00007f1664f9fc24:   vptest %ymm6,%ymm0
   2.81%   │╰│││││   0x00007f1664f9fc29:   je     0x00007f1664f9faf1
   3.54%   │ │││││   0x00007f1664f9fc2f:   vaddpd %ymm8,%ymm14,%ymm7
   0.74%   │ │││││   0x00007f1664f9fc34:   vaddpd %ymm1,%ymm1,%ymm0
           │ │││││   0x00007f1664f9fc38:   vsubpd %ymm15,%ymm2,%ymm1
           │ │││││   0x00007f1664f9fc3d:   vmulpd %ymm3,%ymm0,%ymm0            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
           │ │││││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
           │ │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   1.13%   │ │││││   0x00007f1664f9fc41:   vaddpd %ymm13,%ymm1,%ymm1           ;*invokestatic opCode {reexecute=0 rethrow=0 return_oop=0}
           │ │││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@77 (line 629)
           │ │││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
           │ │││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           │ │││││                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
           │ │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
   0.68%   │ │││││   0x00007f1664f9fc46:   vaddpd %ymm9,%ymm0,%ymm2            ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │ │││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@18 (line 616)
           │ │││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
           │ │││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           │ │││││                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
           │ │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
           │ │││││   0x00007f1664f9fc4b:   vmulpd %ymm1,%ymm1,%ymm3            ;*invokestatic opCode {reexecute=0 rethrow=0 return_oop=0}
           │ │││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@77 (line 629)
           │ │││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
           │ │││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           │ │││││                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
           │ │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
           │ │││││   0x00007f1664f9fc4f:   vmulpd %ymm2,%ymm2,%ymm15           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │ │││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@18 (line 616)
           │ │││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
           │ │││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           │ │││││                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
           │ │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
   1.29%   │ │││││   0x00007f1664f9fc53:   vaddpd %ymm15,%ymm3,%ymm0
   1.43%   │ │││││   0x00007f1664f9fc58:   vcmplepd %ymm4,%ymm0,%ymm0
   6.86%   │ │││││   0x00007f1664f9fc5d:   vblendvps %ymm0,%ymm7,%ymm14,%ymm14
   5.55%   │ │││││   0x00007f1664f9fc63:   vptest %ymm6,%ymm0
   2.63%   │ ╰││││   0x00007f1664f9fc68:   je     0x00007f1664f9faf1
   3.50%   │  ││││   0x00007f1664f9fc6e:   vaddpd %ymm8,%ymm14,%ymm7
   0.85%   │  ││││   0x00007f1664f9fc73:   vaddpd %ymm1,%ymm1,%ymm0
           │  ││││   0x00007f1664f9fc77:   vsubpd %ymm15,%ymm3,%ymm1
           │  ││││   0x00007f1664f9fc7c:   vmulpd %ymm2,%ymm0,%ymm0            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
           │  ││││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
           │  ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   0.95%   │  ││││   0x00007f1664f9fc80:   vaddpd %ymm13,%ymm1,%ymm1
   0.86%   │  ││││   0x00007f1664f9fc85:   vaddpd %ymm9,%ymm0,%ymm2
           │  ││││   0x00007f1664f9fc8a:   vmulpd %ymm1,%ymm1,%ymm3            ;*invokestatic opKind {reexecute=0 rethrow=0 return_oop=0}
           │  ││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@15 (line 616)
           │  ││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
           │  ││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           │  ││││                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
           │  ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
           │  ││││   0x00007f1664f9fc8e:   vmulpd %ymm2,%ymm2,%ymm15           ;*invokespecial lanewiseTemplate {reexecute=0 rethrow=0 return_oop=0}
           │  ││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
           │  ││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           │  ││││                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
           │  ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
   1.15%   │  ││││   0x00007f1664f9fc92:   vaddpd %ymm15,%ymm3,%ymm0           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
           │  ││││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
           │  ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   1.45%   │  ││││   0x00007f1664f9fc97:   vcmplepd %ymm4,%ymm0,%ymm0          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │  ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@19 (line 101)
   6.70%   │  ││││   0x00007f1664f9fc9c:   vblendvps %ymm0,%ymm7,%ymm14,%ymm14
   5.46%   │  ││││   0x00007f1664f9fca2:   vptest %ymm6,%ymm0
   2.59%   │  ╰│││   0x00007f1664f9fca7:   je     0x00007f1664f9faf1
   3.38%   │   │││   0x00007f1664f9fcad:   vaddpd %ymm8,%ymm14,%ymm7
   0.83%   │   │││   0x00007f1664f9fcb2:   vaddpd %ymm1,%ymm1,%ymm0
           │   │││   0x00007f1664f9fcb6:   vsubpd %ymm15,%ymm3,%ymm1
           │   │││   0x00007f1664f9fcbb:   vmulpd %ymm2,%ymm0,%ymm0            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
           │   │││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
           │   │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   0.85%   │   │││   0x00007f1664f9fcbf:   vaddpd %ymm13,%ymm1,%ymm1
   0.80%   │   │││   0x00007f1664f9fcc4:   vaddpd %ymm9,%ymm0,%ymm3
           │   │││   0x00007f1664f9fcc9:   vmulpd %ymm1,%ymm1,%ymm2
           │   │││   0x00007f1664f9fccd:   vmulpd %ymm3,%ymm3,%ymm15           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │   │││                                                             ; - jdk.incubator.vector.VectorIntrinsics::roundDown@5 (line 84)
           │   │││                                                             ; - jdk.incubator.vector.AbstractSpecies::loopBound@5 (line 203)
           │   │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@14 (line 101)
   1.18%   │   │││   0x00007f1664f9fcd1:   vaddpd %ymm15,%ymm2,%ymm0           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
           │   │││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
           │   │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   1.52%   │   │││   0x00007f1664f9fcd6:   vcmplepd %ymm4,%ymm0,%ymm0          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │   │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@19 (line 101)
   6.52%   │   │││   0x00007f1664f9fcdb:   vblendvps %ymm0,%ymm7,%ymm14,%ymm14
   6.65%   │   │││   0x00007f1664f9fce1:   vptest %ymm6,%ymm0
   1.79%   │   ╰││   0x00007f1664f9fce6:   je     0x00007f1664f9faf1           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
           │    ││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
           │    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   3.36%   │    ││   0x00007f1664f9fcec:   add    $0x4,%esi
   0.04%   │    ││   0x00007f1664f9fcef:   cmp    %edx,%esi
           │    ╰│   0x00007f1664f9fcf1:   jl     0x00007f1664f9fbf0           ;*invokestatic roundDown {reexecute=0 rethrow=0 return_oop=0}
           │     │                                                             ; - jdk.incubator.vector.AbstractSpecies::loopBound@5 (line 203)
           │     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@14 (line 101)
           │     │   0x00007f1664f9fcf7:   mov    0x348(%r15),%rdx             ; ImmutableOopMap {r9=NarrowOop rcx=NarrowOop rbp=Oop [192]=Oop }
           │     │                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
           │     │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@278 (line 136)
           │     │   0x00007f1664f9fcfe:   test   %eax,(%rdx)                  ;   {poll}
   0.00%   │     │   0x00007f1664f9fd00:   cmp    %edi,%esi
           │     ╰   0x00007f1664f9fd02:   jl     0x00007f1664f9fbd6
           │      ╭  0x00007f1664f9fd08:   jmp    0x00007f1664f9fd2a
           ↘      │  0x00007f1664f9fd0a:   vmovsd %xmm3,0xc8(%rsp)
                  │  0x00007f1664f9fd13:   mov    %rsi,0xc0(%rsp)
                  │  0x00007f1664f9fd1b:   vmovdqu %ymm10,%ymm3
                  │  0x00007f1664f9fd20:   vmovdqu %ymm11,%ymm15
                  │  0x00007f1664f9fd25:   mov    $0x1,%esi
                  ↘  0x00007f1664f9fd2a:   cmp    %r11d,%esi
                     0x00007f1664f9fd2d:   jge    0x00007f1664f9fd76
                     0x00007f1664f9fd2f:   nop                                 ;*invokespecial lanewiseTemplate {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  97.89%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.89%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 884 
   0.33%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 884 
   0.24%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%           libjvm.so  ElfSymbolTable::lookup 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 935 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%         interpreter  dload  24 dload  
   0.02%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 884 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.94%  <...other 318 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.25%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 884 
   1.11%              kernel  [unknown] 
   0.07%           libjvm.so  ElfSymbolTable::lookup 
   0.05%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 935 
   0.04%                      <unknown> 
   0.03%        libc-2.31.so  [unknown] 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 2, compile id 936 
   0.02%        libc-2.31.so  __strncat_ssse3 
   0.02%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%         interpreter  dload  24 dload  
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  OtherRegionsTable::occupied 
   0.01%           libjvm.so  G1Analytics::predict_young_other_time_ms 
   0.01%         interpreter  dmul  107 dmul  
   0.01%         interpreter  lload  22 lload  
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%         interpreter  invokevirtual  182 invokevirtual  
   0.01%           libjvm.so  AbsSeq::dsd 
   0.28%  <...other 106 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.27%         c2, level 4
   1.11%              kernel
   0.26%           libjvm.so
   0.14%         interpreter
   0.10%        libc-2.31.so
   0.05%         c1, level 3
   0.04%                    
   0.01%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.00%          ld-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.vectorized
# Parameters: (iterations = 1000, size = 512)

# Run progress: 62.50% complete, ETA 00:05:35
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 13.391 ms/op
# Warmup Iteration   2: 9.073 ms/op
# Warmup Iteration   3: 9.072 ms/op
# Warmup Iteration   4: 9.072 ms/op
# Warmup Iteration   5: 9.072 ms/op
Iteration   1: 9.072 ms/op
Iteration   2: 9.072 ms/op
Iteration   3: 9.072 ms/op
Iteration   4: 9.072 ms/op
Iteration   5: 9.072 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.vectorized":
  9.072 ±(99.9%) 0.001 ms/op [Average]
  (min, avg, max) = (9.072, 9.072, 9.072), stdev = 0.001
  CI (99.9%): [9.071, 9.073] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.vectorized:·asm":
PrintAssembly processed: 181720 total address lines.
Perf output processed (skipped 56.412 seconds):
 Column 1: cycles (51232 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 857 

                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@27 (line 103)
                  0x00007fdcb0f9ce57:   vmulpd %ymm5,%ymm0,%ymm7
                  0x00007fdcb0f9ce5b:   vsubpd %ymm1,%ymm1,%ymm1
                  0x00007fdcb0f9ce5f:   mov    $0xfa0,%r14d                 ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
                  0x00007fdcb0f9ce65:   vpcmpeqb %ymm6,%ymm6,%ymm6          ;*getstatic DOUBLE_VECTOR_SPECIES {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@52 (line 108)
                  0x00007fdcb0f9ce69:   xor    %r11d,%r11d
                  0x00007fdcb0f9ce6c:   jmp    0x00007fdcb0f9d109
   0.11%   ↗↗↗↗   0x00007fdcb0f9ce71:   mov    0xc0(%rsp),%rsi
   0.03%   ││││   0x00007fdcb0f9ce79:   vmovsd 0xc8(%rsp),%xmm3
           ││││   0x00007fdcb0f9ce82:   mov    0xd0(%rsp),%r11d
   0.04%  ↗││││   0x00007fdcb0f9ce8a:   mov    %rsi,0xc0(%rsp)
   0.07%  │││││   0x00007fdcb0f9ce92:   mov    %r11d,0xd0(%rsp)
   0.01%  │││││   0x00007fdcb0f9ce9a:   mov    0x348(%r15),%r11
          │││││   0x00007fdcb0f9cea1:   vcmpeqpd %ymm12,%ymm14,%ymm0
   0.01%  │││││   0x00007fdcb0f9cea7:   vmovdqu (%rsp),%ymm1
   0.03%  │││││   0x00007fdcb0f9ceac:   vblendvps %ymm0,%ymm1,%ymm5,%ymm0
   0.12%  │││││   0x00007fdcb0f9ceb2:   movslq %edi,%r9
          │││││   0x00007fdcb0f9ceb5:   add    %r13,%r9                     ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
          │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
          │││││   0x00007fdcb0f9ceb8:   vmovdqu %ymm0,0x10(%rax,%r9,8)      ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                             ; - jdk.incubator.vector.VectorIntrinsics::roundDown@14 (line 86)
          │││││                                                             ; - jdk.incubator.vector.AbstractSpecies::loopBound@5 (line 203)
          │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@14 (line 101)
   0.09%  │││││   0x00007fdcb0f9cebf:   add    $0x4,%edi                    ; ImmutableOopMap {rcx=NarrowOop rdx=NarrowOop rax=Oop [192]=Oop }
          │││││                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │││││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@337 (line 107)
   0.01%  │││││   0x00007fdcb0f9cec2:   test   %eax,(%r11)                  ;   {poll}
   0.01%  │││││   0x00007fdcb0f9cec5:   cmp    %r8d,%edi
          │││││   0x00007fdcb0f9cec8:   jge    0x00007fdcb0f9d0c5
          │││││   0x00007fdcb0f9cece:   vcvtsi2sd %edi,%xmm0,%xmm0          ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
          │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   0.09%  │││││   0x00007fdcb0f9ced2:   vbroadcastsd %xmm0,%ymm0            ;*invokevirtual broadcastBits {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                             ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3449)
          │││││                                                             ; - jdk.incubator.vector.DoubleVector::broadcast@7 (line 471)
          │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@58 (line 109)
   0.17%  │││││   0x00007fdcb0f9ced7:   mov    0xc0(%rsp),%rsi
          │││││   0x00007fdcb0f9cedf:   mov    0xd0(%rsp),%r11d
          │││││   0x00007fdcb0f9cee7:   test   %ebx,%ebx
          │││││   0x00007fdcb0f9cee9:   jle    0x00007fdcb0f9d27a
          │││││   0x00007fdcb0f9ceef:   vaddpd 0x10(%r12,%rdx,8),%ymm0,%ymm0;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
          │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   0.26%  │││││   0x00007fdcb0f9cef6:   vmovdqu 0x10(%r12,%rcx,8),%ymm8     ;*invokestatic broadcastCoerced {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                             ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcastBits@18 (line 3440)
          │││││                                                             ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3449)
          │││││                                                             ; - jdk.incubator.vector.DoubleVector::broadcast@7 (line 471)
          │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@27 (line 103)
   0.00%  │││││   0x00007fdcb0f9cefd:   vsubpd %ymm9,%ymm0,%ymm0
   0.28%  │││││   0x00007fdcb0f9cf02:   vaddpd %ymm8,%ymm5,%ymm7
   0.00%  │││││   0x00007fdcb0f9cf07:   vmovdqu 0x80(%rsp),%ymm1            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
          │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
          │││││   0x00007fdcb0f9cf10:   vmulpd %ymm1,%ymm0,%ymm13           ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                             ; - jdk.incubator.vector.VectorIntrinsics::roundDown@11 (line 86)
          │││││                                                             ; - jdk.incubator.vector.AbstractSpecies::loopBound@5 (line 203)
          │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@14 (line 101)
   0.26%  │││││   0x00007fdcb0f9cf14:   vmovdqu 0x40(%rsp),%ymm0            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
          │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
          │││││   0x00007fdcb0f9cf1a:   vaddpd %ymm13,%ymm0,%ymm1           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                             ; - jdk.incubator.vector.VectorIntrinsics::roundDown@5 (line 84)
          │││││                                                             ; - jdk.incubator.vector.AbstractSpecies::loopBound@5 (line 203)
          │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@14 (line 101)
   0.29%  │││││   0x00007fdcb0f9cf1f:   vmulpd %ymm1,%ymm1,%ymm2            ;*invokevirtual getClass {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                             ; - jdk.incubator.vector.AbstractVector::sameSpecies@1 (line 133)
          │││││                                                             ; - jdk.incubator.vector.AbstractVector::check@2 (line 124)
          │││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@7 (line 615)
          │││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
          │││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │││││                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
          │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
   0.27%  │││││   0x00007fdcb0f9cf23:   vaddpd %ymm11,%ymm2,%ymm0           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
          │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   0.23%  │││││   0x00007fdcb0f9cf28:   vcmplepd %ymm4,%ymm0,%ymm0          ;*synchronization entry
          │││││                                                             ; - jdk.incubator.vector.AbstractVector::sameSpecies@-1 (line 133)
          │││││                                                             ; - jdk.incubator.vector.AbstractVector::check@2 (line 124)
          │││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@7 (line 615)
          │││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
          │││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │││││                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
          │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
   0.34%  │││││   0x00007fdcb0f9cf2d:   vblendvps %ymm0,%ymm7,%ymm5,%ymm14
   0.26%  │││││   0x00007fdcb0f9cf33:   vptest %ymm6,%ymm0
   0.06%  ╰││││   0x00007fdcb0f9cf38:   je     0x00007fdcb0f9ce8a
   0.08%   ││││   0x00007fdcb0f9cf3e:   xchg   %ax,%ax
   0.01%   ││││   0x00007fdcb0f9cf40:   cmp    $0x1,%r10d                   ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
           ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
           ││││   0x00007fdcb0f9cf44:   jle    0x00007fdcb0f9d2b7
   0.00%   ││││   0x00007fdcb0f9cf4a:   mov    %r11d,0xd0(%rsp)
   0.00%   ││││   0x00007fdcb0f9cf52:   vmovsd %xmm3,0xc8(%rsp)
   0.05%   ││││   0x00007fdcb0f9cf5b:   mov    %rsi,0xc0(%rsp)
   0.01%   ││││   0x00007fdcb0f9cf63:   vmovdqu %ymm11,%ymm15
           ││││   0x00007fdcb0f9cf68:   vmovdqu 0xa0(%rsp),%ymm3
           ││││   0x00007fdcb0f9cf71:   mov    $0x1,%r11d                   ;*invokevirtual find {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@108 (line 633)
           ││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
           ││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           ││││                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
           ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
   0.04%   ││││   0x00007fdcb0f9cf77:   mov    %r11d,%r9d                   ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
           ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   0.01%   ││││   0x00007fdcb0f9cf7a:   nopw   0x0(%rax,%rax,1)             ;*invokevirtual opCode {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                             ; - jdk.incubator.vector.VectorOperators::opCode@6 (line 405)
           ││││                                                             ; - jdk.incubator.vector.DoubleVector::opCode@7 (line 63)
           ││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@77 (line 629)
           ││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
           ││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           ││││                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
           ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
   1.69%   ││││↗  0x00007fdcb0f9cf80:   vsubpd %ymm15,%ymm2,%ymm0
   0.00%   │││││  0x00007fdcb0f9cf85:   vaddpd %ymm1,%ymm1,%ymm2            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
           │││││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
           │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   0.04%   │││││  0x00007fdcb0f9cf89:   vaddpd %ymm13,%ymm0,%ymm1           ;*invokestatic opCode {reexecute=0 rethrow=0 return_oop=0}
           │││││                                                            ; - jdk.incubator.vector.DoubleVector::opCode@7 (line 63)
           │││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@77 (line 629)
           │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
           │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           │││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
           │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
   0.01%   │││││  0x00007fdcb0f9cf8e:   vmulpd %ymm3,%ymm2,%ymm0            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
           │││││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
           │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   1.66%   │││││  0x00007fdcb0f9cf92:   vmulpd %ymm1,%ymm1,%ymm2            ;*invokestatic opKind {reexecute=0 rethrow=0 return_oop=0}
           │││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@15 (line 616)
           │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
           │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           │││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
           │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
   0.01%   │││││  0x00007fdcb0f9cf96:   vaddpd %ymm10,%ymm0,%ymm3           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
           │││││                                                            ; - jdk.incubator.vector.DoubleVector::opCode@0 (line 63)
           │││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@77 (line 629)
           │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
           │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           │││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
           │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
   0.04%   │││││  0x00007fdcb0f9cf9b:   vaddpd %ymm8,%ymm14,%ymm7           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
           │││││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
           │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   0.03%   │││││  0x00007fdcb0f9cfa0:   vmulpd %ymm3,%ymm3,%ymm15           ;*synchronization entry
           │││││                                                            ; - jdk.incubator.vector.DoubleVector::opCode@-1 (line 63)
           │││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@77 (line 629)
           │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
           │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           │││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
           │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
   2.93%   │││││  0x00007fdcb0f9cfa4:   vaddpd %ymm15,%ymm2,%ymm0
   0.08%   │││││  0x00007fdcb0f9cfa9:   vcmplepd %ymm4,%ymm0,%ymm0
   2.19%   │││││  0x00007fdcb0f9cfae:   vblendvps %ymm0,%ymm7,%ymm14,%ymm14
   4.79%   │││││  0x00007fdcb0f9cfb4:   vptest %ymm6,%ymm0
   3.50%   ╰││││  0x00007fdcb0f9cfb9:   je     0x00007fdcb0f9ce71
   3.35%    ││││  0x00007fdcb0f9cfbf:   vaddpd %ymm8,%ymm14,%ymm7
   0.73%    ││││  0x00007fdcb0f9cfc4:   vaddpd %ymm1,%ymm1,%ymm0
            ││││  0x00007fdcb0f9cfc8:   vsubpd %ymm15,%ymm2,%ymm1
            ││││  0x00007fdcb0f9cfcd:   vmulpd %ymm3,%ymm0,%ymm0            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
            ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   1.10%    ││││  0x00007fdcb0f9cfd1:   vaddpd %ymm13,%ymm1,%ymm1           ;*invokestatic opCode {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@77 (line 629)
            ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
            ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
            ││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
            ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
   0.63%    ││││  0x00007fdcb0f9cfd6:   vaddpd %ymm10,%ymm0,%ymm2           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@18 (line 616)
            ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
            ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
            ││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
            ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
            ││││  0x00007fdcb0f9cfdb:   vmulpd %ymm1,%ymm1,%ymm3            ;*invokestatic opCode {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@77 (line 629)
            ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
            ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
            ││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
            ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
            ││││  0x00007fdcb0f9cfdf:   vmulpd %ymm2,%ymm2,%ymm15           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@18 (line 616)
            ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
            ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
            ││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
            ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
   1.24%    ││││  0x00007fdcb0f9cfe3:   vaddpd %ymm15,%ymm3,%ymm0
   1.48%    ││││  0x00007fdcb0f9cfe8:   vcmplepd %ymm4,%ymm0,%ymm0
   6.78%    ││││  0x00007fdcb0f9cfed:   vblendvps %ymm0,%ymm7,%ymm14,%ymm14
   5.35%    ││││  0x00007fdcb0f9cff3:   vptest %ymm6,%ymm0
   3.09%    ╰│││  0x00007fdcb0f9cff8:   je     0x00007fdcb0f9ce71
   3.33%     │││  0x00007fdcb0f9cffe:   vaddpd %ymm8,%ymm14,%ymm7
   0.77%     │││  0x00007fdcb0f9d003:   vaddpd %ymm1,%ymm1,%ymm0
             │││  0x00007fdcb0f9d007:   vsubpd %ymm15,%ymm3,%ymm1
             │││  0x00007fdcb0f9d00c:   vmulpd %ymm2,%ymm0,%ymm0            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
             │││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   1.04%     │││  0x00007fdcb0f9d010:   vaddpd %ymm13,%ymm1,%ymm1
   0.72%     │││  0x00007fdcb0f9d015:   vaddpd %ymm10,%ymm0,%ymm2
   0.00%     │││  0x00007fdcb0f9d01a:   vmulpd %ymm1,%ymm1,%ymm3            ;*invokestatic opKind {reexecute=0 rethrow=0 return_oop=0}
             │││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@15 (line 616)
             │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
             │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
             │││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
             │││  0x00007fdcb0f9d01e:   vmulpd %ymm2,%ymm2,%ymm15           ;*invokespecial lanewiseTemplate {reexecute=0 rethrow=0 return_oop=0}
             │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
             │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
             │││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
   1.18%     │││  0x00007fdcb0f9d022:   vaddpd %ymm15,%ymm3,%ymm0           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
             │││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   1.30%     │││  0x00007fdcb0f9d027:   vcmplepd %ymm4,%ymm0,%ymm0          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@19 (line 101)
   6.16%     │││  0x00007fdcb0f9d02c:   vblendvps %ymm0,%ymm7,%ymm14,%ymm14
   5.49%     │││  0x00007fdcb0f9d032:   vptest %ymm6,%ymm0
   2.65%     ╰││  0x00007fdcb0f9d037:   je     0x00007fdcb0f9ce71
   3.56%      ││  0x00007fdcb0f9d03d:   vaddpd %ymm8,%ymm14,%ymm7
   0.67%      ││  0x00007fdcb0f9d042:   vaddpd %ymm1,%ymm1,%ymm0
              ││  0x00007fdcb0f9d046:   vsubpd %ymm15,%ymm3,%ymm1
              ││  0x00007fdcb0f9d04b:   vmulpd %ymm2,%ymm0,%ymm0            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   1.00%      ││  0x00007fdcb0f9d04f:   vaddpd %ymm13,%ymm1,%ymm1
   0.74%      ││  0x00007fdcb0f9d054:   vaddpd %ymm10,%ymm0,%ymm3
   0.00%      ││  0x00007fdcb0f9d059:   vmulpd %ymm1,%ymm1,%ymm2
              ││  0x00007fdcb0f9d05d:   vmulpd %ymm3,%ymm3,%ymm15           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - jdk.incubator.vector.VectorIntrinsics::roundDown@5 (line 84)
              ││                                                            ; - jdk.incubator.vector.AbstractSpecies::loopBound@5 (line 203)
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@14 (line 101)
   1.29%      ││  0x00007fdcb0f9d061:   vaddpd %ymm15,%ymm2,%ymm0           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   1.49%      ││  0x00007fdcb0f9d066:   vcmplepd %ymm4,%ymm0,%ymm0          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@19 (line 101)
   7.06%      ││  0x00007fdcb0f9d06b:   vblendvps %ymm0,%ymm7,%ymm14,%ymm14
   4.71%      ││  0x00007fdcb0f9d071:   vptest %ymm6,%ymm0
   2.92%      ╰│  0x00007fdcb0f9d076:   je     0x00007fdcb0f9ce71
   3.49%       │  0x00007fdcb0f9d07c:   mov    %r10d,%ebp
               │  0x00007fdcb0f9d07f:   sub    %r11d,%ebp
   0.00%       │  0x00007fdcb0f9d082:   xor    %esi,%esi
               │  0x00007fdcb0f9d084:   cmp    %r11d,%r10d
   1.66%       │  0x00007fdcb0f9d087:   cmovl  %esi,%ebp
               │  0x00007fdcb0f9d08a:   cmp    $0xfa0,%ebp
   0.00%       │  0x00007fdcb0f9d090:   cmova  %r14d,%ebp
   1.66%       │  0x00007fdcb0f9d094:   add    %r11d,%ebp                   ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   0.00%       │  0x00007fdcb0f9d097:   add    $0x4,%r9d
               │  0x00007fdcb0f9d09b:   nopl   0x0(%rax,%rax,1)
               │  0x00007fdcb0f9d0a0:   cmp    %ebp,%r9d
               ╰  0x00007fdcb0f9d0a3:   jl     0x00007fdcb0f9cf80           ;*invokestatic roundDown {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.incubator.vector.AbstractSpecies::loopBound@5 (line 203)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@14 (line 101)
   0.01%          0x00007fdcb0f9d0a9:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rcx=NarrowOop rdx=NarrowOop rax=Oop [192]=Oop }
                                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@278 (line 136)
                  0x00007fdcb0f9d0b0:   test   %eax,(%r11)                  ;   {poll}
                  0x00007fdcb0f9d0b3:   cmp    %r10d,%r9d
                  0x00007fdcb0f9d0b6:   jge    0x00007fdcb0f9d2e4
                  0x00007fdcb0f9d0bc:   mov    %r9d,%r11d
                  0x00007fdcb0f9d0bf:   nop
                  0x00007fdcb0f9d0c0:   jmp    0x00007fdcb0f9cf77
....................................................................................................
  96.87%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.87%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 857 
   1.08%              kernel  [unknown] 
   0.24%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 857 
   0.21%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 2, compile id 913 
   0.12%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.02%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 912 
   0.02%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 912 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%         interpreter  dmul  107 dmul  
   0.01%        libc-2.31.so  re_search_stub 
   1.08%  <...other 380 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.12%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 857 
   1.99%              kernel  [unknown] 
   0.22%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 2, compile id 913 
   0.07%                      <unknown> 
   0.04%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 912 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.03%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%         interpreter  getstatic  178 getstatic  
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%         interpreter  dmul  107 dmul  
   0.01%        libc-2.31.so  re_search_stub 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __strchr_sse2 
   0.01%           libjvm.so  G1Policy::predict_region_non_copy_time_ms 
   0.01%         interpreter  nofast_iload  237 nofast_iload  
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%         interpreter  dload  24 dload  
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%      hsdis-amd64.so  print_insn 
   0.34%  <...other 121 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.34%         c2, level 4
   1.99%              kernel
   0.25%           libjvm.so
   0.14%         interpreter
   0.07%        libc-2.31.so
   0.07%                    
   0.05%         c1, level 3
   0.05%  libpthread-2.31.so
   0.03%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%              [vdso]
   0.00%      perf-21086.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.vectorized
# Parameters: (iterations = 2000, size = 256)

# Run progress: 75.00% complete, ETA 00:03:42
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.796 ms/op
# Warmup Iteration   2: 4.683 ms/op
# Warmup Iteration   3: 4.686 ms/op
# Warmup Iteration   4: 4.683 ms/op
# Warmup Iteration   5: 4.682 ms/op
Iteration   1: 4.682 ms/op
Iteration   2: 4.682 ms/op
Iteration   3: 4.682 ms/op
Iteration   4: 4.682 ms/op
Iteration   5: 4.682 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.vectorized":
  4.682 ±(99.9%) 0.001 ms/op [Average]
  (min, avg, max) = (4.682, 4.682, 4.682), stdev = 0.001
  CI (99.9%): [4.682, 4.683] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.vectorized:·asm":
PrintAssembly processed: 182355 total address lines.
Perf output processed (skipped 56.290 seconds):
 Column 1: cycles (50790 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 860 

                                                                             ; - jdk.incubator.vector.DoubleVector::broadcast@7 (line 471)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@27 (line 103)
                   0x00007f9698f9d557:   vmulpd %ymm5,%ymm0,%ymm7
                   0x00007f9698f9d55b:   vsubpd %ymm2,%ymm2,%ymm2            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
                   0x00007f9698f9d55f:   vpcmpeqb %ymm6,%ymm6,%ymm6          ;*getstatic DOUBLE_VECTOR_SPECIES {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@52 (line 108)
                   0x00007f9698f9d563:   xor    %ebx,%ebx
                   0x00007f9698f9d565:   jmp    0x00007f9698f9d7a9
   0.06%   ↗↗↗↗    0x00007f9698f9d56a:   vmovsd 0xd0(%rsp),%xmm3
   0.03%  ↗││││    0x00007f9698f9d573:   mov    0x348(%r15),%rdi
   0.00%  │││││    0x00007f9698f9d57a:   vcmpeqpd %ymm12,%ymm14,%ymm0
   0.01%  │││││    0x00007f9698f9d580:   vmovdqu (%rsp),%ymm1
   0.01%  │││││    0x00007f9698f9d585:   vblendvps %ymm0,%ymm1,%ymm5,%ymm0   ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                              ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
          │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   0.09%  │││││    0x00007f9698f9d58b:   vmovdqu %ymm0,0x10(%r10,%r11,8)     ; ImmutableOopMap {r10=Oop r9=NarrowOop rcx=NarrowOop [192]=Oop }
          │││││                                                              ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │││││                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@337 (line 107)
   0.02%  │││││    0x00007f9698f9d592:   test   %eax,(%rdi)                  ;   {poll}
          │││││    0x00007f9698f9d594:   cmp    %edx,%ebx
          │││││    0x00007f9698f9d596:   jge    0x00007f9698f9d76f
   0.01%  │││││    0x00007f9698f9d59c:   vcvtsi2sd %ebx,%xmm0,%xmm0          ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                              ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
          │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   0.06%  │││││    0x00007f9698f9d5a0:   vbroadcastsd %xmm0,%ymm0            ;*invokevirtual broadcastBits {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                              ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3449)
          │││││                                                              ; - jdk.incubator.vector.DoubleVector::broadcast@7 (line 471)
          │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@58 (line 109)
   0.10%  │││││    0x00007f9698f9d5a5:   mov    %ebx,%edi
          │││││    0x00007f9698f9d5a7:   movslq %edi,%r11
          │││││    0x00007f9698f9d5aa:   add    %r14,%r11
          │││││    0x00007f9698f9d5ad:   mov    %edi,%ebx
   0.04%  │││││    0x00007f9698f9d5af:   add    $0x4,%ebx
          │││││    0x00007f9698f9d5b2:   test   %r13d,%r13d
          │││││    0x00007f9698f9d5b5:   jle    0x00007f9698f9d933
          │││││    0x00007f9698f9d5bb:   vaddpd 0x10(%r12,%r9,8),%ymm0,%ymm0 ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                              ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
          │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   0.09%  │││││    0x00007f9698f9d5c2:   vmovdqu 0x10(%r12,%rcx,8),%ymm8     ;*invokestatic broadcastCoerced {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                              ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcastBits@18 (line 3440)
          │││││                                                              ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3449)
          │││││                                                              ; - jdk.incubator.vector.DoubleVector::broadcast@7 (line 471)
          │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@27 (line 103)
   0.00%  │││││    0x00007f9698f9d5c9:   vmovdqu 0xa0(%rsp),%ymm1
          │││││    0x00007f9698f9d5d2:   vsubpd %ymm1,%ymm0,%ymm0
   0.11%  │││││    0x00007f9698f9d5d6:   vaddpd %ymm8,%ymm5,%ymm7
          │││││    0x00007f9698f9d5db:   vmovdqu 0x80(%rsp),%ymm1            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                              ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
          │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
          │││││    0x00007f9698f9d5e4:   vmulpd %ymm1,%ymm0,%ymm13           ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                              ; - jdk.incubator.vector.VectorIntrinsics::roundDown@11 (line 86)
          │││││                                                              ; - jdk.incubator.vector.AbstractSpecies::loopBound@5 (line 203)
          │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@14 (line 101)
   0.12%  │││││    0x00007f9698f9d5e8:   vmovdqu 0x40(%rsp),%ymm0            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                              ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
          │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
          │││││    0x00007f9698f9d5ee:   vaddpd %ymm13,%ymm0,%ymm0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                              ; - jdk.incubator.vector.VectorIntrinsics::roundDown@5 (line 84)
          │││││                                                              ; - jdk.incubator.vector.AbstractSpecies::loopBound@5 (line 203)
          │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@14 (line 101)
   0.15%  │││││    0x00007f9698f9d5f3:   vmulpd %ymm0,%ymm0,%ymm1            ;*invokevirtual getClass {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                              ; - jdk.incubator.vector.AbstractVector::sameSpecies@1 (line 133)
          │││││                                                              ; - jdk.incubator.vector.AbstractVector::check@2 (line 124)
          │││││                                                              ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@7 (line 615)
          │││││                                                              ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
          │││││                                                              ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │││││                                                              ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
          │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
   0.12%  │││││    0x00007f9698f9d5f7:   vaddpd %ymm11,%ymm1,%ymm2           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                              ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
          │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   0.15%  │││││    0x00007f9698f9d5fc:   vcmplepd %ymm4,%ymm2,%ymm2          ;*synchronization entry
          │││││                                                              ; - jdk.incubator.vector.AbstractVector::sameSpecies@-1 (line 133)
          │││││                                                              ; - jdk.incubator.vector.AbstractVector::check@2 (line 124)
          │││││                                                              ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@7 (line 615)
          │││││                                                              ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
          │││││                                                              ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │││││                                                              ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
          │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
   0.12%  │││││    0x00007f9698f9d601:   vblendvps %ymm2,%ymm7,%ymm5,%ymm14
   0.13%  │││││    0x00007f9698f9d607:   vptest %ymm6,%ymm2
   0.05%  ╰││││    0x00007f9698f9d60c:   je     0x00007f9698f9d573
   0.03%   ││││    0x00007f9698f9d612:   cmp    $0x1,%r8d                    ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                              ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
           ││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
           ││││    0x00007f9698f9d616:   jle    0x00007f9698f9d968
   0.01%   ││││    0x00007f9698f9d61c:   vmovdqu %ymm11,%ymm15
           ││││    0x00007f9698f9d621:   vmovdqu %ymm10,%ymm2
           ││││    0x00007f9698f9d626:   mov    $0x1,%esi
   0.02%   ││││    0x00007f9698f9d62b:   vmovsd %xmm3,0xd0(%rsp)             ;*invokevirtual find {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                              ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@108 (line 633)
           ││││                                                              ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
           ││││                                                              ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           ││││                                                              ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
           ││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
   0.00%   ││││ ↗  0x00007f9698f9d634:   mov    %r8d,%ebp
           ││││ │  0x00007f9698f9d637:   sub    %esi,%ebp
           ││││ │  0x00007f9698f9d639:   xor    %eax,%eax
   0.02%   ││││ │  0x00007f9698f9d63b:   cmp    %esi,%r8d
           ││││ │  0x00007f9698f9d63e:   cmovl  %eax,%ebp
           ││││ │  0x00007f9698f9d641:   cmp    $0xfa0,%ebp
           ││││ │  0x00007f9698f9d647:   mov    $0xfa0,%eax
   0.01%   ││││ │  0x00007f9698f9d64c:   cmova  %eax,%ebp
   0.01%   ││││ │  0x00007f9698f9d64f:   add    %esi,%ebp                    ;*invokevirtual opCode {reexecute=0 rethrow=0 return_oop=0}
           ││││ │                                                            ; - jdk.incubator.vector.VectorOperators::opCode@6 (line 405)
           ││││ │                                                            ; - jdk.incubator.vector.DoubleVector::opCode@7 (line 63)
           ││││ │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@77 (line 629)
           ││││ │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
           ││││ │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           ││││ │                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
           ││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
           ││││↗│  0x00007f9698f9d651:   vsubpd %ymm15,%ymm1,%ymm1
   0.03%   ││││││  0x00007f9698f9d656:   vaddpd %ymm0,%ymm0,%ymm0            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
           ││││││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
           ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   1.80%   ││││││  0x00007f9698f9d65a:   vaddpd %ymm13,%ymm1,%ymm1           ;*invokestatic opCode {reexecute=0 rethrow=0 return_oop=0}
           ││││││                                                            ; - jdk.incubator.vector.DoubleVector::opCode@7 (line 63)
           ││││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@77 (line 629)
           ││││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
           ││││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           ││││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
           ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
   0.02%   ││││││  0x00007f9698f9d65f:   vmulpd %ymm2,%ymm0,%ymm0            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
           ││││││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
           ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
           ││││││  0x00007f9698f9d663:   vmulpd %ymm1,%ymm1,%ymm2            ;*invokestatic opKind {reexecute=0 rethrow=0 return_oop=0}
           ││││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@15 (line 616)
           ││││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
           ││││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           ││││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
           ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
   0.03%   ││││││  0x00007f9698f9d667:   vaddpd %ymm9,%ymm0,%ymm3            ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
           ││││││                                                            ; - jdk.incubator.vector.DoubleVector::opCode@0 (line 63)
           ││││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@77 (line 629)
           ││││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
           ││││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           ││││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
           ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
   1.98%   ││││││  0x00007f9698f9d66c:   vaddpd %ymm8,%ymm14,%ymm7           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
           ││││││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
           ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   0.05%   ││││││  0x00007f9698f9d671:   vmulpd %ymm3,%ymm3,%ymm15           ;*synchronization entry
           ││││││                                                            ; - jdk.incubator.vector.DoubleVector::opCode@-1 (line 63)
           ││││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@77 (line 629)
           ││││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
           ││││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           ││││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
           ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
           ││││││  0x00007f9698f9d675:   vaddpd %ymm15,%ymm2,%ymm0
   0.97%   ││││││  0x00007f9698f9d67a:   vcmplepd %ymm4,%ymm0,%ymm0
   7.08%   ││││││  0x00007f9698f9d67f:   vblendvps %ymm0,%ymm7,%ymm14,%ymm14
   5.63%   ││││││  0x00007f9698f9d685:   vptest %ymm6,%ymm0
   2.94%   ╰│││││  0x00007f9698f9d68a:   je     0x00007f9698f9d56a
   3.37%    │││││  0x00007f9698f9d690:   vaddpd %ymm8,%ymm14,%ymm7
   0.75%    │││││  0x00007f9698f9d695:   vaddpd %ymm1,%ymm1,%ymm0
            │││││  0x00007f9698f9d699:   vsubpd %ymm15,%ymm2,%ymm1
            │││││  0x00007f9698f9d69e:   vmulpd %ymm3,%ymm0,%ymm0            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
            │││││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
            │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   1.10%    │││││  0x00007f9698f9d6a2:   vaddpd %ymm13,%ymm1,%ymm1           ;*invokestatic opCode {reexecute=0 rethrow=0 return_oop=0}
            │││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@77 (line 629)
            │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
            │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
            │││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
            │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
   0.71%    │││││  0x00007f9698f9d6a7:   vaddpd %ymm9,%ymm0,%ymm2            ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            │││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@18 (line 616)
            │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
            │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
            │││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
            │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
            │││││  0x00007f9698f9d6ac:   vmulpd %ymm1,%ymm1,%ymm3            ;*invokestatic opCode {reexecute=0 rethrow=0 return_oop=0}
            │││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@77 (line 629)
            │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
            │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
            │││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
            │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
            │││││  0x00007f9698f9d6b0:   vmulpd %ymm2,%ymm2,%ymm15           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            │││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@18 (line 616)
            │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
            │││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
            │││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
            │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
   1.28%    │││││  0x00007f9698f9d6b4:   vaddpd %ymm15,%ymm3,%ymm0
   1.42%    │││││  0x00007f9698f9d6b9:   vcmplepd %ymm4,%ymm0,%ymm0
   6.95%    │││││  0x00007f9698f9d6be:   vblendvps %ymm0,%ymm7,%ymm14,%ymm14
   5.74%    │││││  0x00007f9698f9d6c4:   vptest %ymm6,%ymm0
   2.83%    ╰││││  0x00007f9698f9d6c9:   je     0x00007f9698f9d56a
   3.46%     ││││  0x00007f9698f9d6cf:   vaddpd %ymm8,%ymm14,%ymm7
   0.82%     ││││  0x00007f9698f9d6d4:   vaddpd %ymm1,%ymm1,%ymm0
             ││││  0x00007f9698f9d6d8:   vsubpd %ymm15,%ymm3,%ymm1
             ││││  0x00007f9698f9d6dd:   vmulpd %ymm2,%ymm0,%ymm0            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
             ││││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
             ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   0.93%     ││││  0x00007f9698f9d6e1:   vaddpd %ymm13,%ymm1,%ymm1
   0.88%     ││││  0x00007f9698f9d6e6:   vaddpd %ymm9,%ymm0,%ymm2
             ││││  0x00007f9698f9d6eb:   vmulpd %ymm1,%ymm1,%ymm3            ;*invokestatic opKind {reexecute=0 rethrow=0 return_oop=0}
             ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@15 (line 616)
             ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
             ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
             ││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
             ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
             ││││  0x00007f9698f9d6ef:   vmulpd %ymm2,%ymm2,%ymm15           ;*invokespecial lanewiseTemplate {reexecute=0 rethrow=0 return_oop=0}
             ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
             ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
             ││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
             ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
   1.10%     ││││  0x00007f9698f9d6f3:   vaddpd %ymm15,%ymm3,%ymm0           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
             ││││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
             ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   1.38%     ││││  0x00007f9698f9d6f8:   vcmplepd %ymm4,%ymm0,%ymm0          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@19 (line 101)
   6.95%     ││││  0x00007f9698f9d6fd:   vblendvps %ymm0,%ymm7,%ymm14,%ymm14
   5.77%     ││││  0x00007f9698f9d703:   vptest %ymm6,%ymm0
   2.70%     ╰│││  0x00007f9698f9d708:   je     0x00007f9698f9d56a
   3.62%      │││  0x00007f9698f9d70e:   vaddpd %ymm8,%ymm14,%ymm7
   0.87%      │││  0x00007f9698f9d713:   vaddpd %ymm1,%ymm1,%ymm0
              │││  0x00007f9698f9d717:   vsubpd %ymm15,%ymm3,%ymm1
              │││  0x00007f9698f9d71c:   vmulpd %ymm2,%ymm0,%ymm2            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
              │││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   0.92%      │││  0x00007f9698f9d720:   vaddpd %ymm13,%ymm1,%ymm0
   0.87%      │││  0x00007f9698f9d725:   vaddpd %ymm9,%ymm2,%ymm2
              │││  0x00007f9698f9d72a:   vmulpd %ymm0,%ymm0,%ymm1
              │││  0x00007f9698f9d72e:   vmulpd %ymm2,%ymm2,%ymm15           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
              │││                                                            ; - jdk.incubator.vector.VectorIntrinsics::roundDown@5 (line 84)
              │││                                                            ; - jdk.incubator.vector.AbstractSpecies::loopBound@5 (line 203)
              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@14 (line 101)
   1.22%      │││  0x00007f9698f9d732:   vaddpd %ymm15,%ymm1,%ymm3           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
              │││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   1.66%      │││  0x00007f9698f9d737:   vcmplepd %ymm4,%ymm3,%ymm3          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@19 (line 101)
   6.43%      │││  0x00007f9698f9d73c:   vblendvps %ymm3,%ymm7,%ymm14,%ymm14
   6.98%      │││  0x00007f9698f9d742:   vptest %ymm6,%ymm3
   1.59%      ╰││  0x00007f9698f9d747:   je     0x00007f9698f9d56a           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
               ││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
               ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   3.44%       ││  0x00007f9698f9d74d:   add    $0x4,%esi
   0.03%       ││  0x00007f9698f9d750:   cmp    %ebp,%esi
               ╰│  0x00007f9698f9d752:   jl     0x00007f9698f9d651           ;*invokestatic roundDown {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - jdk.incubator.vector.AbstractSpecies::loopBound@5 (line 203)
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@14 (line 101)
                │  0x00007f9698f9d758:   mov    0x348(%r15),%rax             ; ImmutableOopMap {r10=Oop r9=NarrowOop rcx=NarrowOop [192]=Oop }
                │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
                │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@278 (line 136)
                │  0x00007f9698f9d75f:   test   %eax,(%rax)                  ;   {poll}
                │  0x00007f9698f9d761:   cmp    %r8d,%esi
                ╰  0x00007f9698f9d764:   jl     0x00007f9698f9d634
                   0x00007f9698f9d76a:   jmp    0x00007f9698f9d980
....................................................................................................
  97.85%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.85%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 860 
   0.24%              kernel  [unknown] 
   0.13%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 860 
   0.11%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 2, compile id 921 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.04%              kernel  [unknown] 
   0.04%         interpreter  dload  24 dload  
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 2, compile id 921 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  OtherRegionsTable::occupied 
   0.02%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 920 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 860 
   0.02%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.01%              kernel  [unknown] 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   1.11%  <...other 371 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 860 
   1.20%              kernel  [unknown] 
   0.10%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 2, compile id 921 
   0.06%                      <unknown> 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.04%         interpreter  dload  24 dload  
   0.03%        libc-2.31.so  [unknown] 
   0.03%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 920 
   0.02%        libc-2.31.so  __strncat_ssse3 
   0.02%           libjvm.so  OtherRegionsTable::occupied 
   0.02%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%         interpreter  return entry points  
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  AbsSeq::dsd 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%         interpreter  lstore  55 lstore  
   0.01%         interpreter  dmul  107 dmul  
   0.01%           libjvm.so  G1Analytics::predict_card_scan_time_ms 
   0.34%  <...other 121 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.11%         c2, level 4
   1.20%              kernel
   0.28%           libjvm.so
   0.16%         interpreter
   0.12%        libc-2.31.so
   0.06%                    
   0.04%         c1, level 3
   0.01%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.00%           libnio.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.vectorized
# Parameters: (iterations = 2000, size = 512)

# Run progress: 87.50% complete, ETA 00:01:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 24.520 ms/op
# Warmup Iteration   2: 17.522 ms/op
# Warmup Iteration   3: 17.522 ms/op
# Warmup Iteration   4: 17.523 ms/op
# Warmup Iteration   5: 17.522 ms/op
Iteration   1: 17.522 ms/op
Iteration   2: 17.522 ms/op
Iteration   3: 17.522 ms/op
Iteration   4: 17.522 ms/op
Iteration   5: 17.522 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.vectorized":
  17.522 ±(99.9%) 0.001 ms/op [Average]
  (min, avg, max) = (17.522, 17.522, 17.522), stdev = 0.001
  CI (99.9%): [17.521, 17.524] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.vectorized:·asm":
PrintAssembly processed: 181924 total address lines.
Perf output processed (skipped 56.572 seconds):
 Column 1: cycles (50872 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 883 

                     0x00007f1764fa2ee4:   jmp    0x00007f1764fa31df
                     0x00007f1764fa2ee9:   mov    0x14(%rsi),%r11d
                     0x00007f1764fa2eed:   mov    %r11,%rax
                     0x00007f1764fa2ef0:   shl    $0x3,%rax
                     0x00007f1764fa2ef4:   vzeroupper 
                     0x00007f1764fa2ef7:   add    $0xe0,%rsp
                     0x00007f1764fa2efe:   pop    %rbp
                     0x00007f1764fa2eff:   cmp    0x340(%r15),%rsp             ;   {poll_return}
                     0x00007f1764fa2f06:   ja     0x00007f1764fa33cc
                     0x00007f1764fa2f0c:   ret    
   0.07%    ↗↗↗↗     0x00007f1764fa2f0d:   mov    0xc0(%rsp),%rsi
   0.03%    ││││     0x00007f1764fa2f15:   vmovsd 0xc8(%rsp),%xmm3
   0.02%  ↗ ││││     0x00007f1764fa2f1e:   mov    %rsi,0xc0(%rsp)
   0.02%  │ ││││     0x00007f1764fa2f26:   mov    0x348(%r15),%rdx
   0.02%  │ ││││     0x00007f1764fa2f2d:   vcmpeqpd %ymm12,%ymm14,%ymm0
          │ ││││     0x00007f1764fa2f33:   vmovdqu (%rsp),%ymm1
   0.02%  │ ││││     0x00007f1764fa2f38:   vblendvps %ymm0,%ymm1,%ymm5,%ymm0
   0.07%  │ ││││     0x00007f1764fa2f3e:   movslq %ebx,%rsi
          │ ││││     0x00007f1764fa2f41:   add    %rax,%rsi                    ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                               ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
          │ ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
          │ ││││     0x00007f1764fa2f44:   vmovdqu %ymm0,0x10(%rbp,%rsi,8)     ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                               ; - jdk.incubator.vector.VectorIntrinsics::roundDown@14 (line 86)
          │ ││││                                                               ; - jdk.incubator.vector.AbstractSpecies::loopBound@5 (line 203)
          │ ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@14 (line 101)
   0.02%  │ ││││     0x00007f1764fa2f4a:   add    $0x4,%ebx                    ; ImmutableOopMap {r9=NarrowOop rcx=NarrowOop rbp=Oop [192]=Oop }
          │ ││││                                                               ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ ││││                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@337 (line 107)
   0.01%  │ ││││     0x00007f1764fa2f4d:   test   %eax,(%rdx)                  ;   {poll}
   0.01%  │ ││││     0x00007f1764fa2f4f:   cmp    %r10d,%ebx
          │ ││││     0x00007f1764fa2f52:   jge    0x00007f1764fa31a5
          │ ││││     0x00007f1764fa2f58:   vcvtsi2sd %ebx,%xmm0,%xmm0          ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                               ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
          │ ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   0.05%  │ ││││     0x00007f1764fa2f5c:   vbroadcastsd %xmm0,%ymm0            ;*invokevirtual broadcastBits {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                               ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3449)
          │ ││││                                                               ; - jdk.incubator.vector.DoubleVector::broadcast@7 (line 471)
          │ ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@58 (line 109)
   0.10%  │ ││││     0x00007f1764fa2f61:   mov    0xc0(%rsp),%rsi
          │ ││││     0x00007f1764fa2f69:   test   %r11d,%r11d
          │ ││││     0x00007f1764fa2f6c:   jle    0x00007f1764fa3345
          │ ││││     0x00007f1764fa2f72:   vaddpd 0x10(%r12,%r9,8),%ymm0,%ymm0 ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                               ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
          │ ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   0.12%  │ ││││     0x00007f1764fa2f79:   vmovdqu 0x10(%r12,%rcx,8),%ymm8     ;*invokestatic broadcastCoerced {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                               ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcastBits@18 (line 3440)
          │ ││││                                                               ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3449)
          │ ││││                                                               ; - jdk.incubator.vector.DoubleVector::broadcast@7 (line 471)
          │ ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@27 (line 103)
          │ ││││     0x00007f1764fa2f80:   vmovdqu 0xa0(%rsp),%ymm1
          │ ││││     0x00007f1764fa2f89:   vsubpd %ymm1,%ymm0,%ymm0
   0.16%  │ ││││     0x00007f1764fa2f8d:   vaddpd %ymm8,%ymm5,%ymm7
          │ ││││     0x00007f1764fa2f92:   vmovdqu 0x80(%rsp),%ymm1            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                               ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
          │ ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
          │ ││││     0x00007f1764fa2f9b:   vmulpd %ymm1,%ymm0,%ymm13           ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                               ; - jdk.incubator.vector.VectorIntrinsics::roundDown@11 (line 86)
          │ ││││                                                               ; - jdk.incubator.vector.AbstractSpecies::loopBound@5 (line 203)
          │ ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@14 (line 101)
   0.17%  │ ││││     0x00007f1764fa2f9f:   vmovdqu 0x40(%rsp),%ymm0            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                               ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
          │ ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
          │ ││││     0x00007f1764fa2fa5:   vaddpd %ymm13,%ymm0,%ymm1           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                               ; - jdk.incubator.vector.VectorIntrinsics::roundDown@5 (line 84)
          │ ││││                                                               ; - jdk.incubator.vector.AbstractSpecies::loopBound@5 (line 203)
          │ ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@14 (line 101)
   0.13%  │ ││││     0x00007f1764fa2faa:   vmulpd %ymm1,%ymm1,%ymm2            ;*invokevirtual getClass {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                               ; - jdk.incubator.vector.AbstractVector::sameSpecies@1 (line 133)
          │ ││││                                                               ; - jdk.incubator.vector.AbstractVector::check@2 (line 124)
          │ ││││                                                               ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@7 (line 615)
          │ ││││                                                               ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
          │ ││││                                                               ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││                                                               ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
          │ ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
   0.14%  │ ││││     0x00007f1764fa2fae:   vaddpd %ymm11,%ymm2,%ymm0           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                               ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
          │ ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   0.15%  │ ││││     0x00007f1764fa2fb3:   vcmplepd %ymm4,%ymm0,%ymm0          ;*synchronization entry
          │ ││││                                                               ; - jdk.incubator.vector.AbstractVector::sameSpecies@-1 (line 133)
          │ ││││                                                               ; - jdk.incubator.vector.AbstractVector::check@2 (line 124)
          │ ││││                                                               ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@7 (line 615)
          │ ││││                                                               ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
          │ ││││                                                               ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││                                                               ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
          │ ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
   0.12%  │ ││││     0x00007f1764fa2fb8:   vblendvps %ymm0,%ymm7,%ymm5,%ymm14
   0.16%  │ ││││     0x00007f1764fa2fbe:   xchg   %ax,%ax
          │ ││││     0x00007f1764fa2fc0:   vptest %ymm6,%ymm0
   0.03%  ╰ ││││     0x00007f1764fa2fc5:   je     0x00007f1764fa2f1e
   0.04%    ││││     0x00007f1764fa2fcb:   cmp    $0x1,%edi                    ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                               ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
            ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
           ╭││││     0x00007f1764fa2fce:   jle    0x00007f1764fa312a
   0.00%   │││││     0x00007f1764fa2fd4:   vmovsd %xmm3,0xc8(%rsp)
           │││││     0x00007f1764fa2fdd:   mov    %rsi,0xc0(%rsp)
           │││││     0x00007f1764fa2fe5:   vmovdqu %ymm11,%ymm15
   0.03%   │││││     0x00007f1764fa2fea:   vmovdqu %ymm10,%ymm3
           │││││     0x00007f1764fa2fef:   mov    $0x1,%esi                    ;*invokevirtual find {reexecute=0 rethrow=0 return_oop=0}
           │││││                                                               ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@108 (line 633)
           │││││                                                               ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
           │││││                                                               ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           │││││                                                               ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
           │││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
           │││││ ↗   0x00007f1764fa2ff4:   mov    %edi,%edx
           │││││ │   0x00007f1764fa2ff6:   sub    %esi,%edx
   0.02%   │││││ │   0x00007f1764fa2ff8:   cmp    %esi,%edi
           │││││ │   0x00007f1764fa2ffa:   cmovl  %r14d,%edx
           │││││ │   0x00007f1764fa2ffe:   cmp    $0xfa0,%edx
           │││││ │   0x00007f1764fa3004:   cmova  %r8d,%edx
   0.03%   │││││ │   0x00007f1764fa3008:   add    %esi,%edx                    ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
           │││││ │                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
           │││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
           │││││ │   0x00007f1764fa300a:   nopw   0x0(%rax,%rax,1)             ;*invokevirtual opCode {reexecute=0 rethrow=0 return_oop=0}
           │││││ │                                                             ; - jdk.incubator.vector.VectorOperators::opCode@6 (line 405)
           │││││ │                                                             ; - jdk.incubator.vector.DoubleVector::opCode@7 (line 63)
           │││││ │                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@77 (line 629)
           │││││ │                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
           │││││ │                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           │││││ │                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
           │││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
           │││││↗│   0x00007f1764fa3010:   vsubpd %ymm15,%ymm2,%ymm0
   0.03%   │││││││   0x00007f1764fa3015:   vaddpd %ymm1,%ymm1,%ymm2            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
           │││││││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
           │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   1.83%   │││││││   0x00007f1764fa3019:   vaddpd %ymm13,%ymm0,%ymm1           ;*invokestatic opCode {reexecute=0 rethrow=0 return_oop=0}
           │││││││                                                             ; - jdk.incubator.vector.DoubleVector::opCode@7 (line 63)
           │││││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@77 (line 629)
           │││││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
           │││││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           │││││││                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
           │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
   0.03%   │││││││   0x00007f1764fa301e:   vmulpd %ymm3,%ymm2,%ymm0            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
           │││││││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
           │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
           │││││││   0x00007f1764fa3022:   vmulpd %ymm1,%ymm1,%ymm2            ;*invokestatic opKind {reexecute=0 rethrow=0 return_oop=0}
           │││││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@15 (line 616)
           │││││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
           │││││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           │││││││                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
           │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
   0.03%   │││││││   0x00007f1764fa3026:   vaddpd %ymm9,%ymm0,%ymm3            ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
           │││││││                                                             ; - jdk.incubator.vector.DoubleVector::opCode@0 (line 63)
           │││││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@77 (line 629)
           │││││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
           │││││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           │││││││                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
           │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
   1.83%   │││││││   0x00007f1764fa302b:   vaddpd %ymm8,%ymm14,%ymm7           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
           │││││││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
           │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   0.04%   │││││││   0x00007f1764fa3030:   vmulpd %ymm3,%ymm3,%ymm15           ;*synchronization entry
           │││││││                                                             ; - jdk.incubator.vector.DoubleVector::opCode@-1 (line 63)
           │││││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@77 (line 629)
           │││││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
           │││││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           │││││││                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
           │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
           │││││││   0x00007f1764fa3034:   vaddpd %ymm15,%ymm2,%ymm0
   0.97%   │││││││   0x00007f1764fa3039:   vcmplepd %ymm4,%ymm0,%ymm0
   7.17%   │││││││   0x00007f1764fa303e:   vblendvps %ymm0,%ymm7,%ymm14,%ymm14
   5.42%   │││││││   0x00007f1764fa3044:   vptest %ymm6,%ymm0
   2.88%   │╰│││││   0x00007f1764fa3049:   je     0x00007f1764fa2f0d
   3.66%   │ │││││   0x00007f1764fa304f:   vaddpd %ymm8,%ymm14,%ymm7
   0.74%   │ │││││   0x00007f1764fa3054:   vaddpd %ymm1,%ymm1,%ymm0
           │ │││││   0x00007f1764fa3058:   vsubpd %ymm15,%ymm2,%ymm1
           │ │││││   0x00007f1764fa305d:   vmulpd %ymm3,%ymm0,%ymm0            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
           │ │││││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
           │ │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   1.05%   │ │││││   0x00007f1764fa3061:   vaddpd %ymm13,%ymm1,%ymm1           ;*invokestatic opCode {reexecute=0 rethrow=0 return_oop=0}
           │ │││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@77 (line 629)
           │ │││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
           │ │││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           │ │││││                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
           │ │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
   0.75%   │ │││││   0x00007f1764fa3066:   vaddpd %ymm9,%ymm0,%ymm2            ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │ │││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@18 (line 616)
           │ │││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
           │ │││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           │ │││││                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
           │ │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
           │ │││││   0x00007f1764fa306b:   vmulpd %ymm1,%ymm1,%ymm3            ;*invokestatic opCode {reexecute=0 rethrow=0 return_oop=0}
           │ │││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@77 (line 629)
           │ │││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
           │ │││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           │ │││││                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
           │ │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
           │ │││││   0x00007f1764fa306f:   vmulpd %ymm2,%ymm2,%ymm15           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │ │││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@18 (line 616)
           │ │││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
           │ │││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           │ │││││                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
           │ │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
   1.35%   │ │││││   0x00007f1764fa3073:   vaddpd %ymm15,%ymm3,%ymm0
   1.49%   │ │││││   0x00007f1764fa3078:   vcmplepd %ymm4,%ymm0,%ymm0
   7.01%   │ │││││   0x00007f1764fa307d:   vblendvps %ymm0,%ymm7,%ymm14,%ymm14
   5.81%   │ │││││   0x00007f1764fa3083:   vptest %ymm6,%ymm0
   2.64%   │ ╰││││   0x00007f1764fa3088:   je     0x00007f1764fa2f0d
   3.51%   │  ││││   0x00007f1764fa308e:   vaddpd %ymm8,%ymm14,%ymm7
   0.85%   │  ││││   0x00007f1764fa3093:   vaddpd %ymm1,%ymm1,%ymm0
           │  ││││   0x00007f1764fa3097:   vsubpd %ymm15,%ymm3,%ymm1
           │  ││││   0x00007f1764fa309c:   vmulpd %ymm2,%ymm0,%ymm0            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
           │  ││││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
           │  ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   1.01%   │  ││││   0x00007f1764fa30a0:   vaddpd %ymm13,%ymm1,%ymm1
   0.78%   │  ││││   0x00007f1764fa30a5:   vaddpd %ymm9,%ymm0,%ymm2
   0.00%   │  ││││   0x00007f1764fa30aa:   vmulpd %ymm1,%ymm1,%ymm3            ;*invokestatic opKind {reexecute=0 rethrow=0 return_oop=0}
           │  ││││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@15 (line 616)
           │  ││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
           │  ││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           │  ││││                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
           │  ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
           │  ││││   0x00007f1764fa30ae:   vmulpd %ymm2,%ymm2,%ymm15           ;*invokespecial lanewiseTemplate {reexecute=0 rethrow=0 return_oop=0}
           │  ││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
           │  ││││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           │  ││││                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
           │  ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@65 (line 109)
   1.09%   │  ││││   0x00007f1764fa30b2:   vaddpd %ymm15,%ymm3,%ymm0           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
           │  ││││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
           │  ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   1.53%   │  ││││   0x00007f1764fa30b7:   vcmplepd %ymm4,%ymm0,%ymm0          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │  ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@19 (line 101)
   6.60%   │  ││││   0x00007f1764fa30bc:   vblendvps %ymm0,%ymm7,%ymm14,%ymm14
   5.55%   │  ││││   0x00007f1764fa30c2:   vptest %ymm6,%ymm0
   2.76%   │  ╰│││   0x00007f1764fa30c7:   je     0x00007f1764fa2f0d
   3.52%   │   │││   0x00007f1764fa30cd:   vaddpd %ymm8,%ymm14,%ymm7
   0.88%   │   │││   0x00007f1764fa30d2:   vaddpd %ymm1,%ymm1,%ymm0
           │   │││   0x00007f1764fa30d6:   vsubpd %ymm15,%ymm3,%ymm1
           │   │││   0x00007f1764fa30db:   vmulpd %ymm2,%ymm0,%ymm0            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
           │   │││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
           │   │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   0.92%   │   │││   0x00007f1764fa30df:   vaddpd %ymm13,%ymm1,%ymm1
   0.81%   │   │││   0x00007f1764fa30e4:   vaddpd %ymm9,%ymm0,%ymm3
           │   │││   0x00007f1764fa30e9:   vmulpd %ymm1,%ymm1,%ymm2
           │   │││   0x00007f1764fa30ed:   vmulpd %ymm3,%ymm3,%ymm15           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │   │││                                                             ; - jdk.incubator.vector.VectorIntrinsics::roundDown@5 (line 84)
           │   │││                                                             ; - jdk.incubator.vector.AbstractSpecies::loopBound@5 (line 203)
           │   │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@14 (line 101)
   1.19%   │   │││   0x00007f1764fa30f1:   vaddpd %ymm15,%ymm2,%ymm0           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
           │   │││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
           │   │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   1.62%   │   │││   0x00007f1764fa30f6:   vcmplepd %ymm4,%ymm0,%ymm0          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │   │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@19 (line 101)
   6.63%   │   │││   0x00007f1764fa30fb:   vblendvps %ymm0,%ymm7,%ymm14,%ymm14
   6.76%   │   │││   0x00007f1764fa3101:   vptest %ymm6,%ymm0
   1.83%   │   ╰││   0x00007f1764fa3106:   je     0x00007f1764fa2f0d           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
           │    ││                                                             ; - jdk.incubator.vector.DoubleVector::intoArray@42 (line 2875)
           │    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@321 (line 140)
   3.37%   │    ││   0x00007f1764fa310c:   add    $0x4,%esi
   0.03%   │    ││   0x00007f1764fa310f:   cmp    %edx,%esi
           │    ╰│   0x00007f1764fa3111:   jl     0x00007f1764fa3010           ;*invokestatic roundDown {reexecute=0 rethrow=0 return_oop=0}
           │     │                                                             ; - jdk.incubator.vector.AbstractSpecies::loopBound@5 (line 203)
           │     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@14 (line 101)
           │     │   0x00007f1764fa3117:   mov    0x348(%r15),%rdx             ; ImmutableOopMap {r9=NarrowOop rcx=NarrowOop rbp=Oop [192]=Oop }
           │     │                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
           │     │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@278 (line 136)
           │     │   0x00007f1764fa311e:   test   %eax,(%rdx)                  ;   {poll}
   0.00%   │     │   0x00007f1764fa3120:   cmp    %edi,%esi
           │     ╰   0x00007f1764fa3122:   jl     0x00007f1764fa2ff4
           │      ╭  0x00007f1764fa3128:   jmp    0x00007f1764fa314a
           ↘      │  0x00007f1764fa312a:   vmovsd %xmm3,0xc8(%rsp)
                  │  0x00007f1764fa3133:   mov    %rsi,0xc0(%rsp)
                  │  0x00007f1764fa313b:   vmovdqu %ymm10,%ymm3
                  │  0x00007f1764fa3140:   vmovdqu %ymm11,%ymm15
                  │  0x00007f1764fa3145:   mov    $0x1,%esi
                  ↘  0x00007f1764fa314a:   cmp    %r11d,%esi
                     0x00007f1764fa314d:   jge    0x00007f1764fa3196
                     0x00007f1764fa314f:   nop                                 ;*invokespecial lanewiseTemplate {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  97.73%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.73%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 883 
   0.46%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 2, compile id 931 
   0.15%              kernel  [unknown] 
   0.15%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 883 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 930 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  fileStream::write 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%         interpreter  dload  24 dload  
   0.01%              kernel  [unknown] 
   0.01%         interpreter  fast_iaccess_0  221 fast_iaccess_0  
   0.94%  <...other 337 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.88%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 883 
   0.98%              kernel  [unknown] 
   0.47%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 2, compile id 931 
   0.06%                      <unknown> 
   0.05%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 930 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%           libjvm.so  fileStream::write 
   0.02%         interpreter  invokevirtual  182 invokevirtual  
   0.02%      hsdis-amd64.so  print_insn 
   0.01%         interpreter  dload  24 dload  
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%         interpreter  fast_iaccess_0  221 fast_iaccess_0  
   0.01%           libjvm.so  AbsSeq::dsd 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%        libc-2.31.so  getifaddrs_internal 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%           libjvm.so  OtherRegionsTable::occupied 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%         interpreter  getstatic  178 getstatic  
   0.34%  <...other 130 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.35%         c2, level 4
   0.98%              kernel
   0.27%           libjvm.so
   0.15%         interpreter
   0.08%        libc-2.31.so
   0.06%                    
   0.05%         c1, level 3
   0.03%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%  libpthread-2.31.so
   0.00%              [vdso]
   0.00%          libjava.so
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:14:46

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

Benchmark                                     (iterations)  (size)  Mode  Cnt    Score    Error  Units
MandelbrotVectorApiBenchmark.baseline                 1000     256  avgt    5   33.167 ±  0.005  ms/op
MandelbrotVectorApiBenchmark.baseline:·asm            1000     256  avgt           NaN             ---
MandelbrotVectorApiBenchmark.baseline                 1000     512  avgt    5  131.137 ±  0.015  ms/op
MandelbrotVectorApiBenchmark.baseline:·asm            1000     512  avgt           NaN             ---
MandelbrotVectorApiBenchmark.baseline                 2000     256  avgt    5   64.705 ±  0.007  ms/op
MandelbrotVectorApiBenchmark.baseline:·asm            2000     256  avgt           NaN             ---
MandelbrotVectorApiBenchmark.baseline                 2000     512  avgt    5  258.260 ±  0.012  ms/op
MandelbrotVectorApiBenchmark.baseline:·asm            2000     512  avgt           NaN             ---
MandelbrotVectorApiBenchmark.vectorized               1000     256  avgt    5    2.414 ±  0.001  ms/op
MandelbrotVectorApiBenchmark.vectorized:·asm          1000     256  avgt           NaN             ---
MandelbrotVectorApiBenchmark.vectorized               1000     512  avgt    5    9.072 ±  0.001  ms/op
MandelbrotVectorApiBenchmark.vectorized:·asm          1000     512  avgt           NaN             ---
MandelbrotVectorApiBenchmark.vectorized               2000     256  avgt    5    4.682 ±  0.001  ms/op
MandelbrotVectorApiBenchmark.vectorized:·asm          2000     256  avgt           NaN             ---
MandelbrotVectorApiBenchmark.vectorized               2000     512  avgt    5   17.522 ±  0.001  ms/op
MandelbrotVectorApiBenchmark.vectorized:·asm          2000     512  avgt           NaN             ---
