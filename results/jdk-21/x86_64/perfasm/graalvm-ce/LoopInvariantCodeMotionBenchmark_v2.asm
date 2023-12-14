# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.initial_loop
# Parameters: (iterations = 16384)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 4999.716 us/op
# Warmup Iteration   2: 4804.228 us/op
# Warmup Iteration   3: 4806.391 us/op
# Warmup Iteration   4: 4814.508 us/op
# Warmup Iteration   5: 4872.317 us/op
Iteration   1: 4898.553 us/op
Iteration   2: 4776.699 us/op
Iteration   3: 4778.426 us/op
Iteration   4: 4799.948 us/op
Iteration   5: 4849.923 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.initial_loop":
  4820.710 ±(99.9%) 202.562 us/op [Average]
  (min, avg, max) = (4776.699, 4820.710, 4898.553), stdev = 52.605
  CI (99.9%): [4618.148, 5023.272] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.initial_loop:asm":
PrintAssembly processed: 217629 total address lines.
Perf output processed (skipped 80.921 seconds):
 Column 1: cycles (51206 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

                                 --------------------------------------------------------------------------------
                                 [/Disassembly]
                                 </print_nmethod>
                                 <task_queued compile_id='1037' compile_kind='osr' method='com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark initial_loop ()D' bytes='93' count='8' backedge_count='118057' iicount='8' osr_bci='21' stamp='29,555' comment='tiered' hot_count='118057'/>
                                 - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                 Decoding RuntimeStub - Stub&lt;AMD64MathStub.tan&gt; 0x00007f12dad17790
                                 --------------------------------------------------------------------------------
   0.54%                           0x00007f12dad190c0:   sub    $0x18,%rsp
                                   0x00007f12dad190c4:   push   %rbx
   0.30%                           0x00007f12dad190c5:   sub    $0x10,%rsp
   0.26%                           0x00007f12dad190c9:   vmovsd %xmm0,0x8(%rsp)
   0.00%                           0x00007f12dad190cf:   vpextrw $0x3,%xmm0,%eax
   0.53%                           0x00007f12dad190d4:   and    $0x7fff,%eax
   0.28%                           0x00007f12dad190da:   sub    $0x3fba,%eax
   0.24%                           0x00007f12dad190e0:   cmp    $0x10e,%eax
          ╭                        0x00007f12dad190e6:   ja     0x00007f12dad192e9
   0.28%  │                        0x00007f12dad190ec:   vmovdqu -0x17b4(%rip),%xmm5        # 0x00007f12dad17940
          │                        0x00007f12dad190f4:   vmovdqu -0x17ac(%rip),%xmm6        # 0x00007f12dad17950
          │                        0x00007f12dad190fc:   vunpcklpd %xmm0,%xmm0,%xmm0
          │                        0x00007f12dad19100:   vmovdqu -0x17a8(%rip),%xmm4        # 0x00007f12dad17960
   0.36%  │                        0x00007f12dad19108:   vandpd %xmm0,%xmm4,%xmm4
          │                        0x00007f12dad1910c:   vmovdqu -0x17a4(%rip),%xmm1        # 0x00007f12dad17970
          │                        0x00007f12dad19114:   vmulpd %xmm0,%xmm1,%xmm1
          │                        0x00007f12dad19118:   vpor   %xmm4,%xmm5,%xmm5
   0.34%  │                        0x00007f12dad1911c:   vaddpd %xmm5,%xmm1,%xmm1
   0.97%  │                        0x00007f12dad19120:   vmovdqu %xmm1,%xmm7
          │                        0x00007f12dad19124:   vunpckhpd %xmm7,%xmm7,%xmm7
   0.24%  │                        0x00007f12dad19128:   vcvttsd2si %xmm7,%edx
   1.67%  │                        0x00007f12dad1912c:   vcvttpd2dq %xmm1,%xmm1
   0.01%  │                        0x00007f12dad19130:   vcvtdq2pd %xmm1,%xmm1
   0.93%  │                        0x00007f12dad19134:   vmulpd %xmm6,%xmm1,%xmm1
   1.13%  │                        0x00007f12dad19138:   vmovdqu -0x17c0(%rip),%xmm3        # 0x00007f12dad17980
   0.00%  │                        0x00007f12dad19140:   vmovq  -0x1838(%rip),%xmm5        # 0x00007f12dad17910
   0.06%  │                        0x00007f12dad19148:   add    $0x72900,%rdx
          │                        0x00007f12dad1914f:   vmovdqu -0x17c7(%rip),%xmm4        # 0x00007f12dad17990
   0.27%  │                        0x00007f12dad19157:   vmulpd %xmm1,%xmm3,%xmm3
   0.79%  │                        0x00007f12dad1915b:   and    $0x1f,%rdx
   0.05%  │                        0x00007f12dad1915f:   vmulsd %xmm1,%xmm5,%xmm5
   0.33%  │                        0x00007f12dad19163:   mov    %rdx,%rcx
          │                        0x00007f12dad19166:   vmulpd %xmm1,%xmm4,%xmm4
   0.15%  │                        0x00007f12dad1916a:   shl    %rcx
   0.05%  │                        0x00007f12dad1916d:   vsubpd %xmm3,%xmm0,%xmm0
   0.62%  │                        0x00007f12dad19171:   vmulpd -0x17d9(%rip),%xmm1,%xmm1        # 0x00007f12dad179a0
          │                        0x00007f12dad19179:   add    %rcx,%rdx
          │                        0x00007f12dad1917c:   shl    $0x2,%rcx
   0.06%  │                        0x00007f12dad19180:   add    %rcx,%rdx
   0.28%  │                        0x00007f12dad19183:   vaddsd %xmm0,%xmm5,%xmm5
   0.89%  │                        0x00007f12dad19187:   vmovdqu %xmm0,%xmm2
          │                        0x00007f12dad1918b:   vsubpd %xmm4,%xmm0,%xmm0
   0.19%  │                        0x00007f12dad1918f:   vmovq  -0x187f(%rip),%xmm6        # 0x00007f12dad17918
          │                        0x00007f12dad19197:   shl    $0x4,%rdx
   0.12%  │                        0x00007f12dad1919b:   lea    -0x17f2(%rip),%rax        # 0x00007f12dad179b0
          │                        0x00007f12dad191a2:   vandpd -0x1fa(%rip),%xmm5,%xmm5        # 0x00007f12dad18fb0
   0.20%  │                        0x00007f12dad191aa:   vmovdqu %xmm0,%xmm3
          │                        0x00007f12dad191ae:   add    %rdx,%rax
   0.12%  │                        0x00007f12dad191b1:   vsubpd %xmm0,%xmm2,%xmm2
   1.23%  │                        0x00007f12dad191b5:   vunpckhpd %xmm0,%xmm0,%xmm0
   0.03%  │                        0x00007f12dad191b9:   vdivsd %xmm5,%xmm6,%xmm6
   3.07%  │                        0x00007f12dad191bd:   vsubpd %xmm4,%xmm2,%xmm2
   0.01%  │                        0x00007f12dad191c1:   vmovdqu 0x10(%rax),%xmm7
          │                        0x00007f12dad191c6:   vsubsd %xmm5,%xmm3,%xmm3
          │                        0x00007f12dad191ca:   vmulpd %xmm0,%xmm7,%xmm7
   0.34%  │                        0x00007f12dad191ce:   vsubpd %xmm1,%xmm2,%xmm2
          │                        0x00007f12dad191d2:   vmovdqu 0x30(%rax),%xmm1
          │                        0x00007f12dad191d7:   vmulpd %xmm0,%xmm1,%xmm1
   0.00%  │                        0x00007f12dad191db:   vmovdqu 0x60(%rax),%xmm4
   0.36%  │                        0x00007f12dad191e0:   vmulpd %xmm0,%xmm4,%xmm4
   0.00%  │                        0x00007f12dad191e4:   vaddsd %xmm3,%xmm2,%xmm2
          │                        0x00007f12dad191e8:   vmovdqu %xmm0,%xmm3
          │                        0x00007f12dad191ec:   vmulpd %xmm0,%xmm0,%xmm0
   0.36%  │                        0x00007f12dad191f0:   vaddpd (%rax),%xmm7,%xmm7
   0.00%  │                        0x00007f12dad191f4:   vaddpd 0x20(%rax),%xmm1,%xmm1
   0.00%  │                        0x00007f12dad191f9:   vmulpd %xmm0,%xmm1,%xmm1
          │                        0x00007f12dad191fd:   vaddpd 0x50(%rax),%xmm4,%xmm4
   0.33%  │                        0x00007f12dad19202:   vaddpd %xmm1,%xmm7,%xmm7
   0.06%  │                        0x00007f12dad19206:   vmovdqu 0x70(%rax),%xmm1
          │                        0x00007f12dad1920b:   vmulpd %xmm0,%xmm1,%xmm1
          │                        0x00007f12dad1920f:   vmulpd %xmm0,%xmm0,%xmm0
   0.28%  │                        0x00007f12dad19213:   vaddpd %xmm1,%xmm4,%xmm4
   0.05%  │                        0x00007f12dad19217:   vmovdqu 0x40(%rax),%xmm1
          │                        0x00007f12dad1921c:   vmulpd %xmm0,%xmm1,%xmm1
   0.00%  │                        0x00007f12dad19220:   vaddpd %xmm1,%xmm7,%xmm7
   0.62%  │                        0x00007f12dad19224:   vmovdqu %xmm3,%xmm1
   0.00%  │                        0x00007f12dad19228:   vmulpd %xmm0,%xmm3,%xmm3
          │                        0x00007f12dad1922c:   vmulsd %xmm0,%xmm0,%xmm0
          │                        0x00007f12dad19230:   vmulpd 0x90(%rax),%xmm1,%xmm1
   0.53%  │                        0x00007f12dad19238:   vmulpd %xmm3,%xmm4,%xmm4
   0.00%  │                        0x00007f12dad1923c:   vmovdqu %xmm1,%xmm3
   0.00%  │                        0x00007f12dad19240:   vaddpd %xmm4,%xmm7,%xmm7
   1.06%  │                        0x00007f12dad19244:   vmovdqu %xmm1,%xmm4
          │                        0x00007f12dad19248:   vmulsd %xmm7,%xmm0,%xmm0
   1.17%  │                        0x00007f12dad1924c:   vunpckhpd %xmm7,%xmm7,%xmm7
          │                        0x00007f12dad19250:   vaddsd %xmm7,%xmm0,%xmm0
   1.30%  │                        0x00007f12dad19254:   vunpckhpd %xmm1,%xmm1,%xmm1
   0.00%  │                        0x00007f12dad19258:   vaddsd %xmm1,%xmm3,%xmm3
          │                        0x00007f12dad1925c:   vsubsd %xmm3,%xmm4,%xmm4
          │                        0x00007f12dad19260:   vaddsd %xmm4,%xmm1,%xmm1
   0.35%  │                        0x00007f12dad19264:   vmovdqu %xmm2,%xmm4
   0.00%  │                        0x00007f12dad19268:   vmovq  0x90(%rax),%xmm7
          │                        0x00007f12dad19270:   vunpckhpd %xmm2,%xmm2,%xmm2
          │                        0x00007f12dad19274:   vaddsd 0x98(%rax),%xmm7,%xmm7
   0.34%  │                        0x00007f12dad1927c:   vmulsd %xmm2,%xmm7,%xmm7
          │                        0x00007f12dad19280:   vaddsd 0x88(%rax),%xmm7,%xmm7
   0.00%  │                        0x00007f12dad19288:   vaddsd %xmm1,%xmm7,%xmm7
          │                        0x00007f12dad1928c:   vaddsd %xmm7,%xmm0,%xmm0
   0.65%  │                        0x00007f12dad19290:   vmovq  -0x1980(%rip),%xmm7        # 0x00007f12dad17918
          │                        0x00007f12dad19298:   vmulsd %xmm6,%xmm4,%xmm4
          │                        0x00007f12dad1929c:   vmovq  0xa8(%rax),%xmm2
          │                        0x00007f12dad192a4:   vandpd %xmm6,%xmm2,%xmm2
   0.38%  │                        0x00007f12dad192a8:   vmulsd %xmm2,%xmm5,%xmm5
          │                        0x00007f12dad192ac:   vmulsd 0xa0(%rax),%xmm6,%xmm6
          │                        0x00007f12dad192b4:   vsubsd %xmm5,%xmm7,%xmm7
          │                        0x00007f12dad192b8:   vsubsd 0x80(%rax),%xmm2,%xmm2
   0.34%  │                        0x00007f12dad192c0:   vsubsd %xmm4,%xmm7,%xmm7
          │                        0x00007f12dad192c4:   vmulsd %xmm6,%xmm7,%xmm7
          │                        0x00007f12dad192c8:   vmovdqu %xmm3,%xmm4
          │                        0x00007f12dad192cc:   vsubsd %xmm2,%xmm3,%xmm3
   0.33%  │                        0x00007f12dad192d0:   vaddsd %xmm3,%xmm2,%xmm2
          │                        0x00007f12dad192d4:   vsubsd %xmm2,%xmm4,%xmm4
          │                        0x00007f12dad192d8:   vaddsd %xmm4,%xmm0,%xmm0
   0.34%  │                        0x00007f12dad192dc:   vsubsd %xmm7,%xmm0,%xmm0
   1.42%  │                        0x00007f12dad192e0:   vaddsd %xmm3,%xmm0,%xmm0
   1.31%  │╭                       0x00007f12dad192e4:   jmp    0x00007f12dad19919
   0.21%  ↘│╭                      0x00007f12dad192e9:   jg     0x00007f12dad1939d
           ││                      0x00007f12dad192ef:   vpextrw $0x3,%xmm0,%eax
           ││                      0x00007f12dad192f4:   mov    %eax,%edx
           ││                      0x00007f12dad192f6:   data16 nopw 0x0(%rax,%rax,1)
           ││                      0x00007f12dad19300:   and    $0x7ff0,%eax
           ││╭                     0x00007f12dad19306:   je     0x00007f12dad19390
           │││                     0x00007f12dad1930c:   and    $0x7fff,%edx
           │││                     0x00007f12dad19312:   cmp    $0x3e20,%edx
           │││╭                    0x00007f12dad19318:   jb     0x00007f12dad19373
           ││││                    0x00007f12dad1931e:   vmovdqu %xmm0,%xmm2
           ││││                    0x00007f12dad19322:   vmovdqu %xmm0,%xmm3
           ││││                    0x00007f12dad19326:   vmovq  -0x36e(%rip),%xmm1        # 0x00007f12dad18fc0
           ││││                    0x00007f12dad1932e:   vmulsd %xmm0,%xmm2,%xmm2
           ││││                    0x00007f12dad19332:   vmulsd %xmm2,%xmm3,%xmm3
           ││││                    0x00007f12dad19336:   vmulsd %xmm2,%xmm1,%xmm1
           ││││                    0x00007f12dad1933a:   vaddsd -0x372(%rip),%xmm1,%xmm1        # 0x00007f12dad18fd0
           ││││                    0x00007f12dad19342:   vmulsd %xmm2,%xmm1,%xmm1
           ││││                    0x00007f12dad19346:   vaddsd -0x36e(%rip),%xmm1,%xmm1        # 0x00007f12dad18fe0
   0.00%   ││││                    0x00007f12dad1934e:   vmulsd %xmm2,%xmm1,%xmm1
           ││││                    0x00007f12dad19352:   vaddsd -0x36a(%rip),%xmm1,%xmm1        # 0x00007f12dad18ff0
           ││││                    0x00007f12dad1935a:   vmulsd %xmm2,%xmm1,%xmm1
           ││││                    0x00007f12dad1935e:   vaddsd -0x366(%rip),%xmm1,%xmm1        # 0x00007f12dad19000
           ││││                    0x00007f12dad19366:   vmulsd %xmm3,%xmm1,%xmm1
           ││││                    0x00007f12dad1936a:   vaddsd %xmm1,%xmm0,%xmm0
           ││││╭                   0x00007f12dad1936e:   jmp    0x00007f12dad19919
           │││↘│                   0x00007f12dad19373:   vmovq  -0x1a5b(%rip),%xmm3        # 0x00007f12dad17920
           │││ │                   0x00007f12dad1937b:   vmulsd %xmm0,%xmm3,%xmm3
           │││ │                   0x00007f12dad1937f:   vaddsd %xmm3,%xmm0,%xmm0
           │││ │                   0x00007f12dad19383:   vmulsd -0x1a8b(%rip),%xmm0,%xmm0        # 0x00007f12dad17900
           │││ │╭                  0x00007f12dad1938b:   jmp    0x00007f12dad19919
           ││↘ ││                  0x00007f12dad19390:   vmovdqu %xmm0,%xmm1
           ││  ││                  0x00007f12dad19394:   vmulsd %xmm1,%xmm1,%xmm1
           ││  ││╭                 0x00007f12dad19398:   jmp    0x00007f12dad19919
   0.21%   │↘  │││                 0x00007f12dad1939d:   vpextrw $0x3,%xmm0,%eax
           │   │││                 0x00007f12dad193a2:   and    $0x7ff0,%eax
           │   │││                 0x00007f12dad193a8:   cmp    $0x7ff0,%eax
           │   │││╭                0x00007f12dad193ae:   je     0x00007f12dad19906
   0.21%   │   ││││                0x00007f12dad193b4:   vpextrw $0x3,%xmm0,%ecx
           │   ││││                0x00007f12dad193b9:   and    $0x7ff0,%ecx
           │   ││││                0x00007f12dad193bf:   sub    $0x3f60,%ecx
   0.25%   │   ││││                0x00007f12dad193c5:   shr    $0x7,%ecx
           │   ││││                0x00007f12dad193c8:   and    $0xfffc,%ecx
           │   ││││                0x00007f12dad193ce:   lea    -0x3c5(%rip),%r11        # 0x00007f12dad19010
           │   ││││                0x00007f12dad193d5:   add    %r11,%rcx
   0.20%   │   ││││                0x00007f12dad193d8:   vmovq  %xmm0,%rax
           │   ││││                0x00007f12dad193dd:   mov    0x14(%rcx),%r10d
           │   ││││                0x00007f12dad193e1:   mov    0x18(%rcx),%r8d
           │   ││││                0x00007f12dad193e5:   mov    %eax,%edx
   0.19%   │   ││││                0x00007f12dad193e7:   shr    $0x15,%rax
           │   ││││                0x00007f12dad193eb:   or     $0x80000000,%eax
           │   ││││                0x00007f12dad193f1:   shr    $0xb,%eax
           │   ││││                0x00007f12dad193f4:   mov    %r10d,%r9d
   0.23%   │   ││││                0x00007f12dad193f7:   imul   %rdx,%r10
           │   ││││                0x00007f12dad193fb:   imul   %rax,%r9
           │   ││││                0x00007f12dad193ff:   imul   %rax,%r8
           │   ││││                0x00007f12dad19403:   mov    0x10(%rcx),%esi
   0.24%   │   ││││                0x00007f12dad19406:   mov    0xc(%rcx),%edi
           │   ││││                0x00007f12dad19409:   mov    %r10d,%r11d
           │   ││││                0x00007f12dad1940c:   shr    $0x20,%r10
           │   ││││                0x00007f12dad19410:   add    %r10,%r9
   0.21%   │   ││││                0x00007f12dad19413:   add    %r8,%r11
           │   ││││                0x00007f12dad19416:   mov    %r11d,%r8d
           │   ││││                0x00007f12dad19419:   shr    $0x20,%r11
           │   ││││                0x00007f12dad1941d:   add    %r11,%r9
   0.25%   │   ││││                0x00007f12dad19420:   mov    %esi,%r10d
           │   ││││                0x00007f12dad19423:   imul   %rdx,%rsi
           │   ││││                0x00007f12dad19427:   imul   %rax,%r10
           │   ││││                0x00007f12dad1942b:   mov    %edi,%r11d
   0.24%   │   ││││                0x00007f12dad1942e:   imul   %rdx,%rdi
           │   ││││                0x00007f12dad19432:   mov    %esi,%ebx
           │   ││││                0x00007f12dad19434:   shr    $0x20,%rsi
           │   ││││                0x00007f12dad19438:   add    %rbx,%r9
   0.19%   │   ││││                0x00007f12dad1943b:   mov    %r9d,%ebx
           │   ││││                0x00007f12dad1943e:   shr    $0x20,%r9
           │   ││││                0x00007f12dad19442:   add    %rsi,%r10
           │   ││││                0x00007f12dad19445:   add    %r9,%r10
   0.21%   │   ││││                0x00007f12dad19448:   shl    $0x20,%rbx
           │   ││││                0x00007f12dad1944c:   or     %rbx,%r8
           │   ││││                0x00007f12dad1944f:   imul   %rax,%r11
           │   ││││                0x00007f12dad19453:   mov    0x8(%rcx),%r9d
   0.27%   │   ││││                0x00007f12dad19457:   mov    0x4(%rcx),%esi
   0.00%   │   ││││                0x00007f12dad1945a:   mov    %edi,%ebx
   0.00%   │   ││││                0x00007f12dad1945c:   shr    $0x20,%rdi
           │   ││││                0x00007f12dad19460:   add    %rbx,%r10
   0.23%   │   ││││                0x00007f12dad19463:   mov    %r10d,%ebx
           │   ││││                0x00007f12dad19466:   shr    $0x20,%r10
           │   ││││                0x00007f12dad1946a:   add    %rdi,%r11
           │   ││││                0x00007f12dad1946d:   add    %r10,%r11
   0.26%   │   ││││                0x00007f12dad19470:   mov    %r9,%rdi
           │   ││││                0x00007f12dad19473:   imul   %rdx,%r9
   0.00%   │   ││││                0x00007f12dad19477:   imul   %rax,%rdi
           │   ││││                0x00007f12dad1947b:   mov    %r9d,%r10d
   0.18%   │   ││││                0x00007f12dad1947e:   shr    $0x20,%r9
           │   ││││                0x00007f12dad19482:   add    %r10,%r11
   0.00%   │   ││││                0x00007f12dad19485:   mov    %r11d,%r10d
           │   ││││                0x00007f12dad19488:   shr    $0x20,%r11
   0.23%   │   ││││                0x00007f12dad1948c:   add    %r9,%rdi
           │   ││││                0x00007f12dad1948f:   add    %r11,%rdi
           │   ││││                0x00007f12dad19492:   mov    %rsi,%r9
           │   ││││                0x00007f12dad19495:   imul   %rdx,%rsi
   0.21%   │   ││││                0x00007f12dad19499:   imul   %rax,%r9
           │   ││││                0x00007f12dad1949d:   shl    $0x20,%r10
           │   ││││                0x00007f12dad194a1:   or     %rbx,%r10
           │   ││││                0x00007f12dad194a4:   mov    (%rcx),%eax
   0.22%   │   ││││                0x00007f12dad194a6:   mov    %esi,%r11d
           │   ││││                0x00007f12dad194a9:   shr    $0x20,%rsi
   0.00%   │   ││││                0x00007f12dad194ad:   add    %r11,%rdi
           │   ││││                0x00007f12dad194b0:   mov    %edi,%r11d
   0.23%   │   ││││                0x00007f12dad194b3:   shr    $0x20,%rdi
           │   ││││                0x00007f12dad194b7:   add    %rsi,%r9
           │   ││││                0x00007f12dad194ba:   add    %rdi,%r9
           │   ││││                0x00007f12dad194bd:   imul   %rax,%rdx
   0.20%   │   ││││                0x00007f12dad194c1:   vpextrw $0x3,%xmm0,%ebx
           │   ││││                0x00007f12dad194c6:   lea    -0x4bd(%rip),%rdi        # 0x00007f12dad19010
           │   ││││                0x00007f12dad194cd:   sub    %rdi,%rcx
   0.21%   │   ││││                0x00007f12dad194d0:   add    %ecx,%ecx
           │   ││││                0x00007f12dad194d2:   add    %ecx,%ecx
   0.00%   │   ││││                0x00007f12dad194d4:   add    %ecx,%ecx
           │   ││││                0x00007f12dad194d6:   add    $0x13,%ecx
   0.27%   │   ││││                0x00007f12dad194d9:   mov    $0x8000,%esi
           │   ││││                0x00007f12dad194de:   and    %ebx,%esi
           │   ││││                0x00007f12dad194e0:   shr    $0x4,%ebx
           │   ││││                0x00007f12dad194e3:   and    $0x7ff,%ebx
   0.23%   │   ││││                0x00007f12dad194e9:   sub    $0x3ff,%ebx
           │   ││││                0x00007f12dad194ef:   sub    %ebx,%ecx
           │   ││││                0x00007f12dad194f1:   add    %rdx,%r9
           │   ││││                0x00007f12dad194f4:   mov    %ecx,%edx
   0.23%   │   ││││                0x00007f12dad194f6:   add    $0x20,%edx
           │   ││││                0x00007f12dad194f9:   nopl   0x0(%rax)
   0.00%   │   ││││                0x00007f12dad19500:   cmp    $0x0,%ecx
           │   ││││╭               0x00007f12dad19503:   jl     0x00007f12dad19852
           │   │││││               0x00007f12dad19509:   neg    %ecx
   0.22%   │   │││││               0x00007f12dad1950b:   add    $0x1d,%ecx
           │   │││││               0x00007f12dad1950e:   shl    %cl,%r9d
   0.18%   │   │││││               0x00007f12dad19511:   mov    %r9d,%edi
           │   │││││               0x00007f12dad19514:   and    $0x3fffffff,%r9d
   0.00%   │   │││││               0x00007f12dad1951b:   nopl   0x0(%rax,%rax,1)
           │   │││││               0x00007f12dad19520:   test   $0x20000000,%r9d
           │   │││││╭              0x00007f12dad19527:   jne    0x00007f12dad1987f
   0.12%   │   ││││││              0x00007f12dad1952d:   shr    %cl,%r9d
   0.00%   │   ││││││              0x00007f12dad19530:   mov    $0x0,%ebx
   0.11%   │   ││││││              0x00007f12dad19535:   shl    $0x20,%r9
           │   ││││││              0x00007f12dad19539:   or     %r11,%r9
   0.00%   │   ││││││         ↗↗↗  0x00007f12dad1953c:   nopl   0x0(%rax)
           │   ││││││         │││  0x00007f12dad19540:   cmp    $0x0,%r9
           │   ││││││╭        │││  0x00007f12dad19544:   je     0x00007f12dad197fd
   0.26%   │   │││││││  ↗↗    │││  0x00007f12dad1954a:   bsr    %r9,%r11
   0.00%   │   │││││││  ││    │││  0x00007f12dad1954e:   mov    $0x1d,%ecx
           │   │││││││  ││    │││  0x00007f12dad19553:   sub    %r11d,%ecx
           │   │││││││╭ ││    │││  0x00007f12dad19556:   jle    0x00007f12dad1982f
           │   ││││││││ ││    │││  0x00007f12dad1955c:   shl    %cl,%r9
           │   ││││││││ ││    │││  0x00007f12dad1955f:   mov    %r10,%rax
           │   ││││││││ ││    │││  0x00007f12dad19562:   shl    %cl,%r10
           │   ││││││││ ││    │││  0x00007f12dad19565:   add    %ecx,%edx
           │   ││││││││ ││    │││  0x00007f12dad19567:   neg    %ecx
   0.00%   │   ││││││││ ││    │││  0x00007f12dad19569:   add    $0x40,%ecx
           │   ││││││││ ││    │││  0x00007f12dad1956c:   shr    %cl,%rax
           │   ││││││││ ││    │││  0x00007f12dad1956f:   shr    %cl,%r8
           │   ││││││││ ││    │││  0x00007f12dad19572:   or     %rax,%r9
   0.00%   │   ││││││││ ││    │││  0x00007f12dad19575:   or     %r8,%r10
   0.24%   │   ││││││││ ││↗↗↗ │││  0x00007f12dad19578:   vcvtsi2sd %r9,%xmm0,%xmm0
   0.05%   │   ││││││││ │││││ │││  0x00007f12dad1957d:   shr    %r10
   0.00%   │   ││││││││ │││││ │││  0x00007f12dad19580:   vcvtsi2sd %r10,%xmm3,%xmm3
   0.34%   │   ││││││││ │││││ │││  0x00007f12dad19585:   vxorpd %xmm4,%xmm4,%xmm4
           │   ││││││││ │││││ │││  0x00007f12dad19589:   shl    $0x4,%edx
   0.00%   │   ││││││││ │││││ │││  0x00007f12dad1958c:   neg    %edx
   0.16%   │   ││││││││ │││││ │││  0x00007f12dad1958e:   add    $0x3ff0,%edx
   0.04%   │   ││││││││ │││││ │││  0x00007f12dad19594:   or     %esi,%edx
           │   ││││││││ │││││ │││  0x00007f12dad19596:   xor    %ebx,%edx
           │   ││││││││ │││││ │││  0x00007f12dad19598:   vpinsrw $0x3,%edx,%xmm4,%xmm4
   0.22%   │   ││││││││ │││││ │││  0x00007f12dad1959d:   vmovq  -0x1c7d(%rip),%xmm2        # 0x00007f12dad17928
   0.01%   │   ││││││││ │││││ │││  0x00007f12dad195a5:   vmovq  -0x1c7d(%rip),%xmm7        # 0x00007f12dad17930
   0.00%   │   ││││││││ │││││ │││  0x00007f12dad195ad:   vxorpd %xmm5,%xmm5,%xmm5
   0.18%   │   ││││││││ │││││ │││  0x00007f12dad195b1:   sub    $0x3f0,%edx
   0.03%   │   ││││││││ │││││ │││  0x00007f12dad195b7:   vpinsrw $0x3,%edx,%xmm5,%xmm5
   0.02%   │   ││││││││ │││││ │││  0x00007f12dad195bc:   vmulsd %xmm4,%xmm0,%xmm0
   0.22%   │   ││││││││ │││││ │││  0x00007f12dad195c0:   shl    $0x10,%esi
   0.03%   │   ││││││││ │││││ │││  0x00007f12dad195c3:   sar    $0x1f,%esi
   0.00%   │   ││││││││ │││││ │││  0x00007f12dad195c6:   vmulsd %xmm5,%xmm3,%xmm3
   0.08%   │   ││││││││ │││││ │││  0x00007f12dad195ca:   vmovdqu %xmm0,%xmm1
   0.16%   │   ││││││││ │││││ │││  0x00007f12dad195ce:   vmulsd %xmm2,%xmm0,%xmm0
   0.13%   │   ││││││││ │││││ │││  0x00007f12dad195d2:   shr    $0x1e,%edi
           │   ││││││││ │││││ │││  0x00007f12dad195d5:   vaddsd %xmm3,%xmm1,%xmm1
   0.30%   │   ││││││││ │││││ │││  0x00007f12dad195d9:   vmulsd %xmm2,%xmm3,%xmm3
   0.16%   │   ││││││││ │││││ │││  0x00007f12dad195dd:   add    %esi,%edi
           │   ││││││││ │││││ │││  0x00007f12dad195df:   xor    %esi,%edi
           │   ││││││││ │││││ │││  0x00007f12dad195e1:   vmulsd %xmm1,%xmm7,%xmm7
   0.61%   │   ││││││││ │││││ │││  0x00007f12dad195e5:   mov    %edi,%eax
   0.04%   │   ││││││││ │││││ │││  0x00007f12dad195e7:   vaddsd %xmm3,%xmm7,%xmm7
   0.84%   │   ││││││││ │││││ │││  0x00007f12dad195eb:   vmovdqu %xmm0,%xmm2
           │   ││││││││ │││││ │││  0x00007f12dad195ef:   vaddsd %xmm7,%xmm0,%xmm0
   1.01%   │   ││││││││ │││││ │││  0x00007f12dad195f3:   vsubsd %xmm0,%xmm2,%xmm2
   0.89%   │   ││││││││ │││││ │││  0x00007f12dad195f7:   vaddsd %xmm2,%xmm7,%xmm7
   0.95%   │   ││││││││ │││││ │││  0x00007f12dad195fb:   vmovdqu -0x1c93(%rip),%xmm1        # 0x00007f12dad17970
           │   ││││││││ │││││ │││  0x00007f12dad19603:   vmovddup %xmm0,%xmm0
           │   ││││││││ │││││ │││  0x00007f12dad19607:   vmovdqu -0x1caf(%rip),%xmm4        # 0x00007f12dad17960
           │   ││││││││ │││││ │││  0x00007f12dad1960f:   vandpd %xmm0,%xmm4,%xmm4
   0.21%   │   ││││││││ │││││ │││  0x00007f12dad19613:   vmulpd %xmm0,%xmm1,%xmm1
           │   ││││││││ │││││ │││  0x00007f12dad19617:   vmovddup %xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007f12dad1961b:   vmovdqu -0x1ce3(%rip),%xmm5        # 0x00007f12dad17940
           │   ││││││││ │││││ │││  0x00007f12dad19623:   vmovdqu -0x1cdb(%rip),%xmm6        # 0x00007f12dad17950
   0.22%   │   ││││││││ │││││ │││  0x00007f12dad1962b:   vpor   %xmm4,%xmm5,%xmm5
   0.00%   │   ││││││││ │││││ │││  0x00007f12dad1962f:   vaddpd %xmm5,%xmm1,%xmm1
   0.01%   │   ││││││││ │││││ │││  0x00007f12dad19633:   vmovdqu %xmm1,%xmm5
           │   ││││││││ │││││ │││  0x00007f12dad19637:   vunpckhpd %xmm5,%xmm5,%xmm5
   0.18%   │   ││││││││ │││││ │││  0x00007f12dad1963b:   vcvttsd2si %xmm5,%edx
   1.35%   │   ││││││││ │││││ │││  0x00007f12dad1963f:   vcvttpd2dq %xmm1,%xmm1
   0.00%   │   ││││││││ │││││ │││  0x00007f12dad19643:   vcvtdq2pd %xmm1,%xmm1
   0.68%   │   ││││││││ │││││ │││  0x00007f12dad19647:   vmulpd %xmm6,%xmm1,%xmm1
   0.92%   │   ││││││││ │││││ │││  0x00007f12dad1964b:   vmovdqu -0x1cd3(%rip),%xmm3        # 0x00007f12dad17980
           │   ││││││││ │││││ │││  0x00007f12dad19653:   vmovq  -0x1d4b(%rip),%xmm5        # 0x00007f12dad17910
   0.00%   │   ││││││││ │││││ │││  0x00007f12dad1965b:   shl    $0x4,%eax
           │   ││││││││ │││││ │││  0x00007f12dad1965e:   add    $0x72900,%edx
   0.22%   │   ││││││││ │││││ │││  0x00007f12dad19664:   vmovdqu -0x1cdc(%rip),%xmm4        # 0x00007f12dad17990
           │   ││││││││ │││││ │││  0x00007f12dad1966c:   vmulpd %xmm1,%xmm3,%xmm3
   0.66%   │   ││││││││ │││││ │││  0x00007f12dad19670:   add    %eax,%edx
           │   ││││││││ │││││ │││  0x00007f12dad19672:   and    $0x1f,%edx
           │   ││││││││ │││││ │││  0x00007f12dad19675:   vmulsd %xmm1,%xmm5,%xmm5
   0.08%   │   ││││││││ │││││ │││  0x00007f12dad19679:   mov    %edx,%ecx
   0.17%   │   ││││││││ │││││ │││  0x00007f12dad1967b:   vmulpd %xmm1,%xmm4,%xmm4
   0.05%   │   ││││││││ │││││ │││  0x00007f12dad1967f:   shl    %ecx
           │   ││││││││ │││││ │││  0x00007f12dad19681:   vsubpd %xmm3,%xmm0,%xmm0
   0.61%   │   ││││││││ │││││ │││  0x00007f12dad19685:   vmulpd -0x1ced(%rip),%xmm1,%xmm1        # 0x00007f12dad179a0
   0.00%   │   ││││││││ │││││ │││  0x00007f12dad1968d:   add    %ecx,%edx
           │   ││││││││ │││││ │││  0x00007f12dad1968f:   shl    $0x2,%ecx
           │   ││││││││ │││││ │││  0x00007f12dad19692:   add    %ecx,%edx
   0.23%   │   ││││││││ │││││ │││  0x00007f12dad19694:   vaddsd %xmm0,%xmm5,%xmm5
   0.67%   │   ││││││││ │││││ │││  0x00007f12dad19698:   vmovdqu %xmm0,%xmm2
           │   ││││││││ │││││ │││  0x00007f12dad1969c:   vsubpd %xmm4,%xmm0,%xmm0
   0.20%   │   ││││││││ │││││ │││  0x00007f12dad196a0:   vmovq  -0x1d90(%rip),%xmm6        # 0x00007f12dad17918
           │   ││││││││ │││││ │││  0x00007f12dad196a8:   shl    $0x4,%edx
   0.03%   │   ││││││││ │││││ │││  0x00007f12dad196ab:   lea    -0x1d02(%rip),%rax        # 0x00007f12dad179b0
           │   ││││││││ │││││ │││  0x00007f12dad196b2:   vandpd -0x70a(%rip),%xmm5,%xmm5        # 0x00007f12dad18fb0
   0.67%   │   ││││││││ │││││ │││  0x00007f12dad196ba:   vmovdqu %xmm0,%xmm3
           │   ││││││││ │││││ │││  0x00007f12dad196be:   add    %rdx,%rax
   0.01%   │   ││││││││ │││││ │││  0x00007f12dad196c1:   vsubpd %xmm0,%xmm2,%xmm2
   0.37%   │   ││││││││ │││││ │││  0x00007f12dad196c5:   vunpckhpd %xmm0,%xmm0,%xmm0
   0.06%   │   ││││││││ │││││ │││  0x00007f12dad196c9:   vdivsd %xmm5,%xmm6,%xmm6
   2.32%   │   ││││││││ │││││ │││  0x00007f12dad196cd:   vsubpd %xmm4,%xmm2,%xmm2
   0.00%   │   ││││││││ │││││ │││  0x00007f12dad196d1:   vsubsd %xmm5,%xmm3,%xmm3
           │   ││││││││ │││││ │││  0x00007f12dad196d5:   vsubpd %xmm1,%xmm2,%xmm2
           │   ││││││││ │││││ │││  0x00007f12dad196d9:   vmovdqu 0x30(%rax),%xmm1
   0.24%   │   ││││││││ │││││ │││  0x00007f12dad196de:   vaddpd %xmm7,%xmm2,%xmm2
   0.04%   │   ││││││││ │││││ │││  0x00007f12dad196e2:   vmovdqu 0x10(%rax),%xmm7
           │   ││││││││ │││││ │││  0x00007f12dad196e7:   vmulpd %xmm0,%xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007f12dad196eb:   vmovdqu 0x60(%rax),%xmm4
   0.18%   │   ││││││││ │││││ │││  0x00007f12dad196f0:   vmulpd %xmm0,%xmm1,%xmm1
   0.04%   │   ││││││││ │││││ │││  0x00007f12dad196f4:   vmulpd %xmm0,%xmm4,%xmm4
           │   ││││││││ │││││ │││  0x00007f12dad196f8:   vaddsd %xmm3,%xmm2,%xmm2
   0.62%   │   ││││││││ │││││ │││  0x00007f12dad196fc:   vmovdqu %xmm0,%xmm3
           │   ││││││││ │││││ │││  0x00007f12dad19700:   vmulpd %xmm0,%xmm0,%xmm0
           │   ││││││││ │││││ │││  0x00007f12dad19704:   vaddpd (%rax),%xmm7,%xmm7
   0.00%   │   ││││││││ │││││ │││  0x00007f12dad19708:   vaddpd 0x20(%rax),%xmm1,%xmm1
   0.23%   │   ││││││││ │││││ │││  0x00007f12dad1970d:   vmulpd %xmm0,%xmm1,%xmm1
           │   ││││││││ │││││ │││  0x00007f12dad19711:   vaddpd 0x50(%rax),%xmm4,%xmm4
           │   ││││││││ │││││ │││  0x00007f12dad19716:   vaddpd %xmm1,%xmm7,%xmm7
   0.01%   │   ││││││││ │││││ │││  0x00007f12dad1971a:   vmovdqu 0x70(%rax),%xmm1
   0.20%   │   ││││││││ │││││ │││  0x00007f12dad1971f:   vmulpd %xmm0,%xmm1,%xmm1
           │   ││││││││ │││││ │││  0x00007f12dad19723:   vmulpd %xmm0,%xmm0,%xmm0
           │   ││││││││ │││││ │││  0x00007f12dad19727:   vaddpd %xmm1,%xmm4,%xmm4
   0.00%   │   ││││││││ │││││ │││  0x00007f12dad1972b:   vmovdqu 0x40(%rax),%xmm1
   0.20%   │   ││││││││ │││││ │││  0x00007f12dad19730:   vmulpd %xmm0,%xmm1,%xmm1
   0.00%   │   ││││││││ │││││ │││  0x00007f12dad19734:   vaddpd %xmm1,%xmm7,%xmm7
   0.08%   │   ││││││││ │││││ │││  0x00007f12dad19738:   vmovdqu %xmm3,%xmm1
           │   ││││││││ │││││ │││  0x00007f12dad1973c:   vmulpd %xmm0,%xmm3,%xmm3
   0.18%   │   ││││││││ │││││ │││  0x00007f12dad19740:   vmulsd %xmm0,%xmm0,%xmm0
           │   ││││││││ │││││ │││  0x00007f12dad19744:   vmulpd 0x90(%rax),%xmm1,%xmm1
   0.06%   │   ││││││││ │││││ │││  0x00007f12dad1974c:   vmulpd %xmm3,%xmm4,%xmm4
   0.01%   │   ││││││││ │││││ │││  0x00007f12dad19750:   vmovdqu %xmm1,%xmm3
   0.19%   │   ││││││││ │││││ │││  0x00007f12dad19754:   vaddpd %xmm4,%xmm7,%xmm7
   0.55%   │   ││││││││ │││││ │││  0x00007f12dad19758:   vmovdqu %xmm1,%xmm4
           │   ││││││││ │││││ │││  0x00007f12dad1975c:   vmulsd %xmm7,%xmm0,%xmm0
   0.81%   │   ││││││││ │││││ │││  0x00007f12dad19760:   vunpckhpd %xmm7,%xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007f12dad19764:   vaddsd %xmm7,%xmm0,%xmm0
   0.99%   │   ││││││││ │││││ │││  0x00007f12dad19768:   vunpckhpd %xmm1,%xmm1,%xmm1
   0.00%   │   ││││││││ │││││ │││  0x00007f12dad1976c:   vaddsd %xmm1,%xmm3,%xmm3
           │   ││││││││ │││││ │││  0x00007f12dad19770:   vsubsd %xmm3,%xmm4,%xmm4
           │   ││││││││ │││││ │││  0x00007f12dad19774:   vaddsd %xmm4,%xmm1,%xmm1
   0.20%   │   ││││││││ │││││ │││  0x00007f12dad19778:   vmovdqu %xmm2,%xmm4
           │   ││││││││ │││││ │││  0x00007f12dad1977c:   vmovq  0x90(%rax),%xmm7
           │   ││││││││ │││││ │││  0x00007f12dad19784:   vunpckhpd %xmm2,%xmm2,%xmm2
           │   ││││││││ │││││ │││  0x00007f12dad19788:   vaddsd 0x98(%rax),%xmm7,%xmm7
   0.23%   │   ││││││││ │││││ │││  0x00007f12dad19790:   vmulsd %xmm2,%xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007f12dad19794:   vaddsd 0x88(%rax),%xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007f12dad1979c:   vaddsd %xmm1,%xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007f12dad197a0:   vaddsd %xmm7,%xmm0,%xmm0
   0.54%   │   ││││││││ │││││ │││  0x00007f12dad197a4:   vmovq  -0x1e94(%rip),%xmm7        # 0x00007f12dad17918
           │   ││││││││ │││││ │││  0x00007f12dad197ac:   vmulsd %xmm6,%xmm4,%xmm4
           │   ││││││││ │││││ │││  0x00007f12dad197b0:   vmovq  0xa8(%rax),%xmm2
           │   ││││││││ │││││ │││  0x00007f12dad197b8:   vandpd %xmm6,%xmm2,%xmm2
   0.23%   │   ││││││││ │││││ │││  0x00007f12dad197bc:   vmulsd %xmm2,%xmm5,%xmm5
           │   ││││││││ │││││ │││  0x00007f12dad197c0:   vmulsd 0xa0(%rax),%xmm6,%xmm6
           │   ││││││││ │││││ │││  0x00007f12dad197c8:   vsubsd %xmm5,%xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007f12dad197cc:   vsubsd 0x80(%rax),%xmm2,%xmm2
   0.23%   │   ││││││││ │││││ │││  0x00007f12dad197d4:   vsubsd %xmm4,%xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007f12dad197d8:   vmulsd %xmm6,%xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007f12dad197dc:   vmovdqu %xmm3,%xmm4
           │   ││││││││ │││││ │││  0x00007f12dad197e0:   vsubsd %xmm2,%xmm3,%xmm3
   0.20%   │   ││││││││ │││││ │││  0x00007f12dad197e4:   vaddsd %xmm3,%xmm2,%xmm2
           │   ││││││││ │││││ │││  0x00007f12dad197e8:   vsubsd %xmm2,%xmm4,%xmm4
           │   ││││││││ │││││ │││  0x00007f12dad197ec:   vaddsd %xmm4,%xmm0,%xmm0
   0.23%   │   ││││││││ │││││ │││  0x00007f12dad197f0:   vsubsd %xmm7,%xmm0,%xmm0
   0.78%   │   ││││││││ │││││ │││  0x00007f12dad197f4:   vaddsd %xmm3,%xmm0,%xmm0
   0.92%   │   ││││││││╭│││││ │││  0x00007f12dad197f8:   jmp    0x00007f12dad19919
           │   ││││││↘│││││││ │││  0x00007f12dad197fd:   add    $0x40,%edx
           │   ││││││ │││││││ │││  0x00007f12dad19800:   mov    %r10,%r9
           │   ││││││ │││││││ │││  0x00007f12dad19803:   mov    %r8,%r10
           │   ││││││ │││││││ │││  0x00007f12dad19806:   mov    $0x0,%r8d
           │   ││││││ │││││││ │││  0x00007f12dad1980c:   cmp    $0x0,%r9
           │   ││││││ ││╰││││ │││  0x00007f12dad19810:   jne    0x00007f12dad1954a
           │   ││││││ ││ ││││ │││  0x00007f12dad19816:   add    $0x40,%edx
           │   ││││││ ││ ││││ │││  0x00007f12dad19819:   mov    %r10,%r9
           │   ││││││ ││ ││││ │││  0x00007f12dad1981c:   mov    %r8,%r10
           │   ││││││ ││ ││││ │││  0x00007f12dad1981f:   nop
           │   ││││││ ││ ││││ │││  0x00007f12dad19820:   cmp    $0x0,%r9
           │   ││││││ ││ ╰│││ │││  0x00007f12dad19824:   jne    0x00007f12dad1954a
           │   ││││││ ││  ╰││ │││  0x00007f12dad1982a:   jmp    0x00007f12dad19578
           │   ││││││ ↘│   ╰│ │││  0x00007f12dad1982f:   je     0x00007f12dad19578
   0.21%   │   ││││││  │    │ │││  0x00007f12dad19835:   neg    %ecx
   0.01%   │   ││││││  │    │ │││  0x00007f12dad19837:   shr    %cl,%r10
   0.21%   │   ││││││  │    │ │││  0x00007f12dad1983a:   mov    %r9,%rax
           │   ││││││  │    │ │││  0x00007f12dad1983d:   shr    %cl,%r9
   0.24%   │   ││││││  │    │ │││  0x00007f12dad19840:   sub    %ecx,%edx
           │   ││││││  │    │ │││  0x00007f12dad19842:   neg    %ecx
           │   ││││││  │    │ │││  0x00007f12dad19844:   add    $0x40,%ecx
           │   ││││││  │    │ │││  0x00007f12dad19847:   shl    %cl,%rax
   0.24%   │   ││││││  │    │ │││  0x00007f12dad1984a:   or     %rax,%r10
   0.00%   │   ││││││  │    ╰ │││  0x00007f12dad1984d:   jmp    0x00007f12dad19578
           │   ││││↘│  │      │││  0x00007f12dad19852:   not    %ecx
           │   ││││ │  │      │││  0x00007f12dad19854:   shl    $0x20,%r9
           │   ││││ │  │      │││  0x00007f12dad19858:   or     %r11,%r9
           │   ││││ │  │      │││  0x00007f12dad1985b:   shl    %cl,%r9
           │   ││││ │  │      │││  0x00007f12dad1985e:   mov    %r9,%rdi
           │   ││││ │  │      │││  0x00007f12dad19861:   test   $0x80000000,%r9d
           │   ││││ │  │     ╭│││  0x00007f12dad19868:   jne    0x00007f12dad198c5
           │   ││││ │  │     ││││  0x00007f12dad1986e:   shr    %cl,%r9d
           │   ││││ │  │     ││││  0x00007f12dad19871:   mov    $0x0,%ebx
           │   ││││ │  │     ││││  0x00007f12dad19876:   shr    $0x2,%rdi
           │   ││││ │  │     │╰││  0x00007f12dad1987a:   jmp    0x00007f12dad1953c
   0.11%   │   ││││ ↘  │     │ ││  0x00007f12dad1987f:   shr    %cl,%r9d
   0.00%   │   ││││    │     │ ││  0x00007f12dad19882:   mov    $0x40000000,%ebx
   0.12%   │   ││││    │     │ ││  0x00007f12dad19887:   shr    %cl,%ebx
           │   ││││    │     │ ││  0x00007f12dad19889:   shl    $0x20,%r9
   0.09%   │   ││││    │     │ ││  0x00007f12dad1988d:   or     %r11,%r9
           │   ││││    │     │ ││  0x00007f12dad19890:   shl    $0x20,%rbx
           │   ││││    │     │ ││  0x00007f12dad19894:   add    $0x40000000,%edi
           │   ││││    │     │ ││  0x00007f12dad1989a:   mov    $0x0,%ecx
   0.11%   │   ││││    │     │ ││  0x00007f12dad1989f:   mov    $0x0,%r11d
           │   ││││    │     │ ││  0x00007f12dad198a5:   sub    %r8,%rcx
           │   ││││    │     │ ││  0x00007f12dad198a8:   sbb    %r10,%r11
           │   ││││    │     │ ││  0x00007f12dad198ab:   sbb    %r9,%rbx
   0.11%   │   ││││    │     │ ││  0x00007f12dad198ae:   mov    %rcx,%r8
           │   ││││    │     │ ││  0x00007f12dad198b1:   mov    %r11,%r10
           │   ││││    │     │ ││  0x00007f12dad198b4:   mov    %rbx,%r9
           │   ││││    │     │ ││  0x00007f12dad198b7:   mov    $0x8000,%ebx
   0.13%   │   ││││    │     │ ││  0x00007f12dad198bc:   nopl   0x0(%rax)
           │   ││││    │     │ ╰│  0x00007f12dad198c0:   jmp    0x00007f12dad1953c
           │   ││││    │     ↘  │  0x00007f12dad198c5:   shr    %cl,%r9d
           │   ││││    │        │  0x00007f12dad198c8:   movabs $0x100000000,%rbx
           │   ││││    │        │  0x00007f12dad198d2:   shr    %cl,%rbx
           │   ││││    │        │  0x00007f12dad198d5:   mov    $0x0,%ecx
           │   ││││    │        │  0x00007f12dad198da:   mov    $0x0,%r11d
           │   ││││    │        │  0x00007f12dad198e0:   sub    %r8,%rcx
           │   ││││    │        │  0x00007f12dad198e3:   sbb    %r10,%r11
           │   ││││    │        │  0x00007f12dad198e6:   sbb    %r9,%rbx
           │   ││││    │        │  0x00007f12dad198e9:   mov    %rcx,%r8
           │   ││││    │        │  0x00007f12dad198ec:   mov    %r11,%r10
           │   ││││    │        │  0x00007f12dad198ef:   mov    %rbx,%r9
           │   ││││    │        │  0x00007f12dad198f2:   mov    $0x8000,%ebx
           │   ││││    │        │  0x00007f12dad198f7:   shr    $0x2,%rdi
           │   ││││    │        │  0x00007f12dad198fb:   add    $0x40000000,%edi
           │   ││││    │        ╰  0x00007f12dad19901:   jmp    0x00007f12dad1953c
           │   │││↘    │           0x00007f12dad19906:   vmovq  0x8(%rsp),%xmm0
           │   │││     │           0x00007f12dad1990c:   vmulsd -0x200c(%rip),%xmm0,%xmm0        # 0x00007f12dad17908
           │   │││     │           0x00007f12dad19914:   vmovq  %xmm0,(%rsp)
   0.00%   ↘   ↘↘↘     ↘           0x00007f12dad19919:   add    $0x10,%rsp
                                   0x00007f12dad1991d:   pop    %rbx
                                   0x00007f12dad1991e:   add    $0x18,%rsp
   0.56%                           0x00007f12dad19922:   ret    
                                   0x00007f12dad19923:   hlt    
                                   0x00007f12dad19924:   hlt    
                                   0x00007f12dad19925:   hlt    
                                   0x00007f12dad19926:   hlt    
                                   0x00007f12dad19927:   hlt    
                                 --------------------------------------------------------------------------------
                                 - - - [OOP MAPS]- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                 ImmutableOopMapSet contains 0 OopMaps
                                 - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                 <nmethod compile_id='1037' compile_kind='osr' compiler='jvmci' level='4' entry='0x00007f12db199420' size='8488' address='0x00007f12db199210' relocation_offset='344' consts_offset='464' insts_offset='528' stub_offset='3373' scopes_data_offset='3440' scopes_pcs_offset='4480' dependencies_offset='8416' oops_offset='3376' metadata_offset='3384' method='com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark initial_loop ()D' bytes='93' count='14' backedge_count='224540' iicount='14' stamp='29,634'/>
....................................................................................................
  62.17%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop, version 3, compile id 1038 

                                      0x00007f12db19b660:   cmp    $0x44100000,%r11d
                                      0x00007f12db19b667:   jae    0x00007f12db19bd6b           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                                                ; - java.lang.FdLibm$Atan::compute@17 (line 1269)
                                                                                                ; - java.lang.StrictMath::atan@1 (line 227)
                                                                                                ; - java.lang.Math::atan@1 (line 279)
                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
                                      0x00007f12db19b66d:   mov    %r13d,0x7c(%rsp)
                                      0x00007f12db19b672:   vmovsd -0x112(%rip),%xmm12        # 0x00007f12db19b568
                                                                                                ;   {section_word}
                                      0x00007f12db19b67a:   vmovsd %xmm12,0x70(%rsp)
   0.00%                              0x00007f12db19b680:   vmovsd -0x118(%rip),%xmm13        # 0x00007f12db19b570
                                                                                                ;   {section_word}
                                      0x00007f12db19b688:   vmovsd %xmm13,0x68(%rsp)
                                      0x00007f12db19b68e:   vmovsd -0x11e(%rip),%xmm14        # 0x00007f12db19b578
                                                                                                ;   {section_word}
                                      0x00007f12db19b696:   data16 nopw 0x0(%rax,%rax,1)
                                      0x00007f12db19b6a0:   cmp    $0x3fdc0000,%r11d
          ╭                           0x00007f12db19b6a7:   jb     0x00007f12db19bc12           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                     ; - java.lang.FdLibm$Atan::compute@79 (line 1279)
          │                                                                                     ; - java.lang.StrictMath::atan@1 (line 227)
          │                                                                                     ; - java.lang.Math::atan@1 (line 279)
          │                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │                           0x00007f12db19b6ad:   vmovapd %xmm8,%xmm2
          │                           0x00007f12db19b6b2:   vandpd -0x12a(%rip),%xmm2,%xmm2        # 0x00007f12db19b590
          │                                                                                     ;   {section_word}
          │                           0x00007f12db19b6ba:   nopw   0x0(%rax,%rax,1)
          │                           0x00007f12db19b6c0:   cmp    $0x3ff30000,%r11d
          │╭                          0x00007f12db19b6c7:   jb     0x00007f12db19bb65           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                    ; - java.lang.FdLibm$Atan::compute@116 (line 1288)
          ││                                                                                    ; - java.lang.StrictMath::atan@1 (line 227)
          ││                                                                                    ; - java.lang.Math::atan@1 (line 279)
          ││                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          ││                          0x00007f12db19b6cd:   cmp    $0x40038000,%r11d
          ││╭                         0x00007f12db19b6d4:   jb     0x00007f12db19bb10           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                                   ; - java.lang.FdLibm$Atan::compute@164 (line 1297)
          │││                                                                                   ; - java.lang.StrictMath::atan@1 (line 227)
          │││                                                                                   ; - java.lang.Math::atan@1 (line 279)
          │││                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││                         0x00007f12db19b6da:   vdivsd %xmm2,%xmm14,%xmm2           ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                                   ; - java.lang.FdLibm$Atan::compute@194 (line 1302)
          │││                                                                                   ; - java.lang.StrictMath::atan@1 (line 227)
          │││                                                                                   ; - java.lang.Math::atan@1 (line 279)
          │││                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││                         0x00007f12db19b6de:   mov    $0x3,%r11d
          │││                         0x00007f12db19b6e4:   vmovsd %xmm0,0x60(%rsp)
          │││                         0x00007f12db19b6ea:   vmovsd %xmm11,0x50(%rsp)
          │││                         0x00007f12db19b6f0:   vmovsd %xmm1,0x58(%rsp)
          │││                         0x00007f12db19b6f6:   vmovsd %xmm10,0x48(%rsp)
          │││                  ↗ ↗ ↗  0x00007f12db19b6fc:   movabs $0x7fed43908,%r8             ;   {oop([D{0x00000007fed43908})}
          │││                  │ │ │  0x00007f12db19b706:   vmovsd 0x60(%r8),%xmm15             ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │││                  │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@246 (line 1310)
          │││                  │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                  │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││                  │ │ │  0x00007f12db19b70c:   vmovsd 0x50(%r8),%xmm3              ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │││                  │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@239 (line 1310)
          │││                  │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                  │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││                  │ │ │  0x00007f12db19b712:   vmovsd 0x40(%r8),%xmm4              ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │││                  │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@232 (line 1310)
          │││                  │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                  │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││                  │ │ │  0x00007f12db19b718:   vmovsd 0x30(%r8),%xmm5              ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │││                  │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@225 (line 1310)
          │││                  │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                  │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││                  │ │ │  0x00007f12db19b71e:   vmovsd 0x20(%r8),%xmm6              ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │││                  │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@219 (line 1310)
          │││                  │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                  │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││                  │ │ │  0x00007f12db19b724:   vmovsd 0x10(%r8),%xmm7              ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │││                  │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@213 (line 1310)
          │││                  │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                  │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││                  │ │ │  0x00007f12db19b72a:   vmovsd 0x58(%r8),%xmm12             ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │││                  │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@291 (line 1311)
          │││                  │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                  │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││                  │ │ │  0x00007f12db19b730:   vmovsd %xmm12,0x40(%rsp)
          │││                  │ │ │  0x00007f12db19b736:   vmovsd 0x48(%r8),%xmm13             ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │││                  │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@284 (line 1311)
          │││                  │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                  │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││                  │ │ │  0x00007f12db19b73c:   vmovsd %xmm13,0x38(%rsp)
          │││                  │ │ │  0x00007f12db19b742:   vmovsd 0x38(%r8),%xmm14             ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │││                  │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@277 (line 1311)
          │││                  │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                  │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││                  │ │ │  0x00007f12db19b748:   vmovsd %xmm14,0x30(%rsp)
          │││                  │ │ │  0x00007f12db19b74e:   vmovsd 0x28(%r8),%xmm11             ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │││                  │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@271 (line 1311)
          │││                  │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                  │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││                  │ │ │  0x00007f12db19b754:   vmovsd %xmm11,0x28(%rsp)
          │││                  │ │ │  0x00007f12db19b75a:   vmovsd 0x18(%r8),%xmm10             ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │││                  │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@265 (line 1311)
          │││                  │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                  │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││                  │ │ │  0x00007f12db19b760:   vmovsd %xmm10,0x20(%rsp)
          │││                  │ │ │  0x00007f12db19b766:   vmulsd %xmm2,%xmm2,%xmm0            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││                  │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@198 (line 1307)
          │││                  │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                  │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││                  │ │ │  0x00007f12db19b76a:   vmulsd %xmm0,%xmm0,%xmm1            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││                  │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@205 (line 1308)
          │││                  │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                  │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││                  │ │ │  0x00007f12db19b76e:   vmulsd %xmm15,%xmm1,%xmm9           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││                  │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@247 (line 1310)
          │││                  │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                  │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││                  │ │ │  0x00007f12db19b773:   vaddsd %xmm3,%xmm9,%xmm9            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││                  │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@248 (line 1310)
          │││                  │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                  │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││                  │ │ │  0x00007f12db19b777:   vmulsd %xmm1,%xmm9,%xmm9            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││                  │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@249 (line 1310)
          │││                  │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                  │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││                  │ │ │  0x00007f12db19b77b:   vaddsd %xmm4,%xmm9,%xmm9            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││                  │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@250 (line 1310)
          │││                  │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                  │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││                  │ │ │  0x00007f12db19b77f:   vmulsd %xmm1,%xmm9,%xmm9            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││                  │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@251 (line 1310)
          │││                  │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                  │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││                  │ │ │  0x00007f12db19b783:   vaddsd %xmm5,%xmm9,%xmm9            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││                  │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@252 (line 1310)
          │││                  │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                  │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││                  │ │ │  0x00007f12db19b787:   vmulsd %xmm1,%xmm9,%xmm9            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││                  │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@253 (line 1310)
          │││                  │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                  │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││                  │ │ │  0x00007f12db19b78b:   vaddsd %xmm6,%xmm9,%xmm9            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││                  │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@254 (line 1310)
          │││                  │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                  │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││                  │ │ │  0x00007f12db19b78f:   vmulsd %xmm1,%xmm9,%xmm9            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││                  │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@255 (line 1310)
          │││                  │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                  │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││                  │ │ │  0x00007f12db19b793:   vaddsd %xmm7,%xmm9,%xmm9            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││                  │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@256 (line 1310)
          │││                  │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                  │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││                  │ │ │  0x00007f12db19b797:   vmulsd %xmm0,%xmm9,%xmm0            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││                  │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@257 (line 1310)
          │││                  │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                  │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││                  │ │ │  0x00007f12db19b79b:   vmulsd %xmm1,%xmm12,%xmm9           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││                  │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@292 (line 1311)
          │││                  │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                  │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││                  │ │ │  0x00007f12db19b79f:   vaddsd %xmm13,%xmm9,%xmm9           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││                  │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@293 (line 1311)
          │││                  │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                  │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││                  │ │ │  0x00007f12db19b7a4:   vmulsd %xmm1,%xmm9,%xmm9            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││                  │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@294 (line 1311)
          │││                  │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                  │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││                  │ │ │  0x00007f12db19b7a8:   vaddsd %xmm14,%xmm9,%xmm9           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││                  │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@295 (line 1311)
          │││                  │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                  │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││                  │ │ │  0x00007f12db19b7ad:   vmulsd %xmm1,%xmm9,%xmm9            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││                  │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@296 (line 1311)
          │││                  │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                  │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││                  │ │ │  0x00007f12db19b7b1:   vaddsd %xmm11,%xmm9,%xmm9           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││                  │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@297 (line 1311)
          │││                  │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                  │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││                  │ │ │  0x00007f12db19b7b6:   vmulsd %xmm1,%xmm9,%xmm9            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││                  │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@298 (line 1311)
          │││                  │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                  │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││                  │ │ │  0x00007f12db19b7ba:   vaddsd %xmm10,%xmm9,%xmm9           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││                  │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@299 (line 1311)
          │││                  │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                  │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││                  │ │ │  0x00007f12db19b7bf:   vmulsd %xmm1,%xmm9,%xmm1            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││                  │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@300 (line 1311)
          │││                  │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                  │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││                  │ │ │  0x00007f12db19b7c3:   vaddsd %xmm1,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││                  │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@314 (line 1313)
          │││                  │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                  │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││                  │ │ │  0x00007f12db19b7c7:   vmulsd %xmm2,%xmm0,%xmm0
          │││                  │ │ │  0x00007f12db19b7cb:   movabs $0x7fed438d8,%rbp            ;   {oop([D{0x00000007fed438d8})}
          │││                  │ │ │  0x00007f12db19b7d5:   movabs $0x7fed438a8,%r14            ;   {oop([D{0x00000007fed438a8})}
          │││                  │ │ │  0x00007f12db19b7df:   nop
          │││                  │ │ │  0x00007f12db19b7e0:   cmp    $0xffffffff,%r11d
          │││╭                 │ │ │  0x00007f12db19b7e4:   je     0x00007f12db19bbc6           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││││                 │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@305 (line 1312)
          ││││                 │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          ││││                 │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          ││││                 │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          ││││                 │ │ │  0x00007f12db19b7ea:   cmp    $0x4,%r11d
          ││││                 │ │ │  0x00007f12db19b7ee:   jae    0x00007f12db19bc95
          ││││                 │ │ │  0x00007f12db19b7f4:   vmovsd 0x10(%r14,%r11,8),%xmm1      ;*daload {reexecute=0 rethrow=0 return_oop=0}
          ││││                 │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@323 (line 1315)
          ││││                 │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          ││││                 │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          ││││                 │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          ││││                 │ │ │  0x00007f12db19b7fb:   vsubsd 0x10(%rbp,%r11,8),%xmm0,%xmm0;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││││                 │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@337 (line 1315)
          ││││                 │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          ││││                 │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          ││││                 │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          ││││                 │ │ │  0x00007f12db19b802:   vsubsd %xmm2,%xmm0,%xmm0            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││││                 │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@339 (line 1315)
          ││││                 │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          ││││                 │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          ││││                 │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          ││││                 │ │ │  0x00007f12db19b806:   vsubsd %xmm0,%xmm1,%xmm0            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││││                 │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@340 (line 1315)
          ││││                 │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          ││││                 │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          ││││                 │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          ││││                 │ │ │  0x00007f12db19b80a:   test   %r10d,%r10d
          ││││╭                │ │ │  0x00007f12db19b80d:   jge    0x00007f12db19bafb
          │││││                │ │ │  0x00007f12db19b813:   vmovsd -0x29b(%rip),%xmm1        # 0x00007f12db19b580
          │││││                │ │ │                                                            ;   {section_word}
          │││││                │ │ │  0x00007f12db19b81b:   vxorpd %xmm1,%xmm0,%xmm0            ;*dneg {reexecute=0 rethrow=0 return_oop=0}
          │││││                │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@350 (line 1316)
          │││││                │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││                │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││                │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││││                │ │ │  0x00007f12db19b81f:   vmovsd %xmm7,0x18(%rsp)
          │││││                │ │ │  0x00007f12db19b825:   vmovsd %xmm6,0x10(%rsp)
          │││││                │ │ │  0x00007f12db19b82b:   vmovapd %xmm3,%xmm9                 ;*dreturn {reexecute=0 rethrow=0 return_oop=0}
          │││││                │ │ │                                                            ; - java.lang.FdLibm$Atan::compute@356 (line 1316)
          │││││                │ │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││                │ │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││                │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││││               ↗│ │↗│  0x00007f12db19b82f:   vmovapd %xmm5,%xmm11
          │││││               ││ │││  0x00007f12db19b833:   vmovapd %xmm4,%xmm10
          │││││               ││ │││  0x00007f12db19b837:   call   0x00007f12dad190c0           ;   {runtime_call Stub&lt;AMD64MathStub.tan&gt;}
          │││││               ││ │││  0x00007f12db19b83c:   nop
          │││││               ││ │││  0x00007f12db19b83d:   vmovsd %xmm0,0x8(%rsp)
          │││││               ││ │││  0x00007f12db19b843:   mov    $0x2,%r10d
          │││││               ││ │││  0x00007f12db19b849:   vmovsd -0x2d9(%rip),%xmm3        # 0x00007f12db19b578
          │││││               ││ │││                                                            ;   {section_word}
          │││││               ││ │││  0x00007f12db19b851:   vmovsd 0x50(%rsp),%xmm2
          │││││               ││ │││  0x00007f12db19b857:   vmovsd 0x48(%rsp),%xmm1
          │││││               ││ │││  0x00007f12db19b85d:   vmovapd %xmm8,%xmm12
          │││││               ││ │││  0x00007f12db19b862:   vmovsd 0x80(%rsp),%xmm8
          │││││╭              ││ │││  0x00007f12db19b86b:   jmp    0x00007f12db19ba06           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││││││              ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@21 (line 77)
          ││││││              ││ │││  0x00007f12db19b870:   data16 data16 nopw 0x0(%rax,%rax,1)
          ││││││              ││ │││  0x00007f12db19b87b:   data16 data16 xchg %ax,%ax
          ││││││              ││ │││  0x00007f12db19b87f:   nop                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││││││              ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@25 (line 77)
          ││││││     ↗        ││ │││  0x00007f12db19b880:   mov    %r10d,%r11d
          ││││││     │        ││ │││  0x00007f12db19b883:   dec    %r11d                        ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││││││     │        ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@31 (line 78)
          ││││││     │        ││ │││  0x00007f12db19b886:   vcvtsi2sd %r11d,%xmm13,%xmm13       ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          ││││││     │        ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@32 (line 78)
   0.27%  ││││││     │        ││ │││  0x00007f12db19b88b:   vmulsd %xmm8,%xmm13,%xmm13          ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││││││     │        ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@35 (line 78)
   0.00%  ││││││     │        ││ │││  0x00007f12db19b890:   vmovapd %xmm13,%xmm0                ;* unwind (locked if synchronized)
          ││││││     │        ││ │││                                                            ; - java.lang.Math::tan@-3
          ││││││     │        ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@36 (line 78)
          ││││││     │        ││ │││  0x00007f12db19b895:   mov    %r10d,%r13d
   0.25%  ││││││     │        ││ │││  0x00007f12db19b898:   vmovapd %xmm3,%xmm14
   0.00%  ││││││     │        ││ │││  0x00007f12db19b89c:   vmovapd %xmm1,%xmm13
          ││││││     │        ││ │││  0x00007f12db19b8a0:   vmovapd %xmm2,%xmm8
          ││││││     │        ││ │││  0x00007f12db19b8a4:   call   0x00007f12dad190c0           ;   {runtime_call Stub&lt;AMD64MathStub.tan&gt;}
   0.00%  ││││││     │        ││ │││  0x00007f12db19b8a9:   nop
          ││││││     │        ││ │││  0x00007f12db19b8aa:   vaddsd %xmm13,%xmm0,%xmm1           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││     │        ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@44 (line 78)
   1.09%  ││││││     │        ││ │││  0x00007f12db19b8af:   vmulsd %xmm0,%xmm13,%xmm0           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││││││     │        ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@63 (line 79)
   0.09%  ││││││     │        ││ │││  0x00007f12db19b8b3:   vsubsd %xmm0,%xmm8,%xmm0            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││││││     │        ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@64 (line 79)
   1.40%  ││││││     │        ││ │││  0x00007f12db19b8b7:   vdivsd %xmm0,%xmm1,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          ││││││     │        ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@70 (line 80)
   3.90%  ││││││     │        ││ │││  0x00007f12db19b8bb:   vaddsd %xmm2,%xmm12,%xmm2           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││     │        ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@71 (line 80)
   1.19%  ││││││     │        ││ │││  0x00007f12db19b8bf:   vmovq  %xmm2,%r10                   ;* unwind (locked if synchronized)
          ││││││     │        ││ │││                                                            ; - java.lang.Double::doubleToRawLongBits@-3
          ││││││     │        ││ │││                                                            ; - java.lang.FdLibm::__HI@1 (line 104)
          ││││││     │        ││ │││                                                            ; - java.lang.FdLibm$Atan::compute@1 (line 1267)
          ││││││     │        ││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          ││││││     │        ││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          ││││││     │        ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.40%  ││││││     │        ││ │││  0x00007f12db19b8c4:   sar    $0x20,%r10                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          ││││││     │        ││ │││                                                            ; - java.lang.FdLibm::__HI@8 (line 105)
          ││││││     │        ││ │││                                                            ; - java.lang.FdLibm$Atan::compute@1 (line 1267)
          ││││││     │        ││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          ││││││     │        ││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          ││││││     │        ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.33%  ││││││     │        ││ │││  0x00007f12db19b8c8:   mov    %r10d,%r10d                  ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          ││││││     │        ││ │││                                                            ; - java.lang.FdLibm::__HI@9 (line 105)
          ││││││     │        ││ │││                                                            ; - java.lang.FdLibm$Atan::compute@1 (line 1267)
          ││││││     │        ││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          ││││││     │        ││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          ││││││     │        ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.23%  ││││││     │        ││ │││  0x00007f12db19b8cb:   mov    %r10d,%r11d
   0.00%  ││││││     │        ││ │││  0x00007f12db19b8ce:   and    $0x7fffffff,%r11d            ;*iand {reexecute=0 rethrow=0 return_oop=0}
          ││││││     │        ││ │││                                                            ; - java.lang.FdLibm$Atan::compute@10 (line 1268)
          ││││││     │        ││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          ││││││     │        ││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          ││││││     │        ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.40%  ││││││     │        ││ │││  0x00007f12db19b8d5:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.02%  ││││││     │        ││ │││  0x00007f12db19b8e0:   cmp    $0x44100000,%r11d
          ││││││     │        ││ │││  0x00007f12db19b8e7:   jae    0x00007f12db19bd5f           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          ││││││     │        ││ │││                                                            ; - java.lang.FdLibm$Atan::compute@17 (line 1269)
          ││││││     │        ││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          ││││││     │        ││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          ││││││     │        ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.20%  ││││││     │        ││ │││  0x00007f12db19b8ed:   cmp    $0x3fdc0000,%r11d
          ││││││╭    │        ││ │││  0x00007f12db19b8f4:   jb     0x00007f12db19ba96           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││││││    │        ││ │││                                                            ; - java.lang.FdLibm$Atan::compute@79 (line 1279)
          │││││││    │        ││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││││    │        ││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││││    │        ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.40%  │││││││    │        ││ │││  0x00007f12db19b8fa:   vmovapd %xmm2,%xmm3
   0.01%  │││││││    │        ││ │││  0x00007f12db19b8fe:   vandpd -0x376(%rip),%xmm3,%xmm3        # 0x00007f12db19b590
          │││││││    │        ││ │││                                                            ;   {section_word}
          │││││││    │        ││ │││  0x00007f12db19b906:   cmp    $0x3ff30000,%r11d
          │││││││╭   │        ││ │││  0x00007f12db19b90d:   jb     0x00007f12db19ba4f           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││││││││   │        ││ │││                                                            ; - java.lang.FdLibm$Atan::compute@116 (line 1288)
          ││││││││   │        ││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          ││││││││   │        ││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          ││││││││   │        ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.13%  ││││││││   │        ││ │││  0x00007f12db19b913:   cmp    $0x40038000,%r11d
          ││││││││╭  │        ││ │││  0x00007f12db19b91a:   jb     0x00007f12db19ba22           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││││││││  │        ││ │││                                                            ; - java.lang.FdLibm$Atan::compute@164 (line 1297)
          │││││││││  │        ││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││││││  │        ││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││││││  │        ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.29%  │││││││││  │        ││ │││  0x00007f12db19b920:   vdivsd %xmm3,%xmm14,%xmm3           ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │││││││││  │        ││ │││                                                            ; - java.lang.FdLibm$Atan::compute@194 (line 1302)
          │││││││││  │        ││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││││││  │        ││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││││││  │        ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.86%  │││││││││  │        ││ │││  0x00007f12db19b924:   mov    $0x3,%r11d                   ;*dload_0 {reexecute=0 rethrow=0 return_oop=0}
          │││││││││  │        ││ │││                                                            ; - java.lang.FdLibm$Atan::compute@196 (line 1307)
          │││││││││  │        ││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││││││  │        ││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││││││  │        ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││││││││  │  ↗ ↗ ↗↗││ │││  0x00007f12db19b92a:   vmulsd %xmm3,%xmm3,%xmm4            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@198 (line 1307)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││││││  │  │ │ ││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.03%  │││││││││  │  │ │ ││││ │││  0x00007f12db19b92e:   vmulsd %xmm4,%xmm4,%xmm5            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@205 (line 1308)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││││││  │  │ │ ││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.17%  │││││││││  │  │ │ ││││ │││  0x00007f12db19b932:   vmulsd %xmm15,%xmm5,%xmm6           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@247 (line 1310)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││││││  │  │ │ ││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.15%  │││││││││  │  │ │ ││││ │││  0x00007f12db19b937:   vaddsd %xmm9,%xmm6,%xmm6            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@248 (line 1310)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││││││  │  │ │ ││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.13%  │││││││││  │  │ │ ││││ │││  0x00007f12db19b93c:   vmulsd %xmm5,%xmm6,%xmm6            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@249 (line 1310)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││││││  │  │ │ ││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.13%  │││││││││  │  │ │ ││││ │││  0x00007f12db19b940:   vaddsd %xmm10,%xmm6,%xmm6           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@250 (line 1310)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││││││  │  │ │ ││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.06%  │││││││││  │  │ │ ││││ │││  0x00007f12db19b945:   vmulsd %xmm5,%xmm6,%xmm6            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@251 (line 1310)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││││││  │  │ │ ││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.02%  │││││││││  │  │ │ ││││ │││  0x00007f12db19b949:   vaddsd %xmm11,%xmm6,%xmm6           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@252 (line 1310)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││││││  │  │ │ ││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.14%  │││││││││  │  │ │ ││││ │││  0x00007f12db19b94e:   vmulsd %xmm5,%xmm6,%xmm6            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@253 (line 1310)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││││││  │  │ │ ││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.10%  │││││││││  │  │ │ ││││ │││  0x00007f12db19b952:   vaddsd 0x10(%rsp),%xmm6,%xmm6       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@254 (line 1310)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││││││  │  │ │ ││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.14%  │││││││││  │  │ │ ││││ │││  0x00007f12db19b958:   vmulsd %xmm5,%xmm6,%xmm6            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@255 (line 1310)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││││││  │  │ │ ││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.14%  │││││││││  │  │ │ ││││ │││  0x00007f12db19b95c:   vaddsd 0x18(%rsp),%xmm6,%xmm6       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@256 (line 1310)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││││││  │  │ │ ││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.04%  │││││││││  │  │ │ ││││ │││  0x00007f12db19b962:   vmulsd %xmm4,%xmm6,%xmm4            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@257 (line 1310)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││││││  │  │ │ ││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.06%  │││││││││  │  │ │ ││││ │││  0x00007f12db19b966:   vmulsd 0x40(%rsp),%xmm5,%xmm6       ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@292 (line 1311)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││││││  │  │ │ ││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││││││││  │  │ │ ││││ │││  0x00007f12db19b96c:   vaddsd 0x38(%rsp),%xmm6,%xmm6       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@293 (line 1311)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││││││  │  │ │ ││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││││││││  │  │ │ ││││ │││  0x00007f12db19b972:   vmulsd %xmm5,%xmm6,%xmm6            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@294 (line 1311)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││││││  │  │ │ ││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││││││││  │  │ │ ││││ │││  0x00007f12db19b976:   vaddsd 0x30(%rsp),%xmm6,%xmm6       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@295 (line 1311)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││││││  │  │ │ ││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.29%  │││││││││  │  │ │ ││││ │││  0x00007f12db19b97c:   vmulsd %xmm5,%xmm6,%xmm6            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@296 (line 1311)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││││││  │  │ │ ││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││││││││  │  │ │ ││││ │││  0x00007f12db19b980:   vaddsd 0x28(%rsp),%xmm6,%xmm6       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@297 (line 1311)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││││││  │  │ │ ││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││││││││  │  │ │ ││││ │││  0x00007f12db19b986:   vmulsd %xmm5,%xmm6,%xmm6            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@298 (line 1311)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││││││  │  │ │ ││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││││││││  │  │ │ ││││ │││  0x00007f12db19b98a:   vaddsd 0x20(%rsp),%xmm6,%xmm6       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@299 (line 1311)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││││││  │  │ │ ││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.27%  │││││││││  │  │ │ ││││ │││  0x00007f12db19b990:   vmulsd %xmm5,%xmm6,%xmm5            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@300 (line 1311)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││││││  │  │ │ ││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││││││││  │  │ │ ││││ │││  0x00007f12db19b994:   vaddsd %xmm5,%xmm4,%xmm4            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@314 (line 1313)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││││││  │  │ │ ││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.58%  │││││││││  │  │ │ ││││ │││  0x00007f12db19b998:   vmulsd %xmm3,%xmm4,%xmm4            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@315 (line 1313)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││││││  │  │ │ ││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││││││  │  │ │ ││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.13%  │││││││││  │  │ │ ││││ │││  0x00007f12db19b99c:   nopl   0x0(%rax)
   0.00%  │││││││││  │  │ │ ││││ │││  0x00007f12db19b9a0:   cmp    $0xffffffff,%r11d
          │││││││││╭ │  │ │ ││││ │││  0x00007f12db19b9a4:   je     0x00007f12db19ba89           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││ │  │ │ ││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@305 (line 1312)
          ││││││││││ │  │ │ ││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          ││││││││││ │  │ │ ││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          ││││││││││ │  │ │ ││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          ││││││││││ │  │ │ ││││ │││  0x00007f12db19b9aa:   cmp    $0x4,%r11d
          ││││││││││ │  │ │ ││││ │││  0x00007f12db19b9ae:   jae    0x00007f12db19bd33
          ││││││││││ │  │ │ ││││ │││  0x00007f12db19b9b4:   vmovsd 0x10(%r14,%r11,8),%xmm0      ;*daload {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││ │  │ │ ││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@323 (line 1315)
          ││││││││││ │  │ │ ││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          ││││││││││ │  │ │ ││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          ││││││││││ │  │ │ ││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.36%  ││││││││││ │  │ │ ││││ │││  0x00007f12db19b9bb:   vsubsd 0x10(%rbp,%r11,8),%xmm4,%xmm1;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││ │  │ │ ││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@337 (line 1315)
          ││││││││││ │  │ │ ││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          ││││││││││ │  │ │ ││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          ││││││││││ │  │ │ ││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.76%  ││││││││││ │  │ │ ││││ │││  0x00007f12db19b9c2:   vsubsd %xmm3,%xmm1,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││ │  │ │ ││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@339 (line 1315)
          ││││││││││ │  │ │ ││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          ││││││││││ │  │ │ ││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          ││││││││││ │  │ │ ││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.06%  ││││││││││ │  │ │ ││││ │││  0x00007f12db19b9c6:   vsubsd %xmm1,%xmm0,%xmm0            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││ │  │ │ ││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@340 (line 1315)
          ││││││││││ │  │ │ ││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          ││││││││││ │  │ │ ││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          ││││││││││ │  │ │ ││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.10%  ││││││││││ │  │ │ ││││ │││  0x00007f12db19b9ca:   test   %r10d,%r10d
          ││││││││││╭│  │ │ ││││ │││  0x00007f12db19b9cd:   jl     0x00007f12db19ba14           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││  │ │ ││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@345 (line 1316)
          ││││││││││││  │ │ ││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          ││││││││││││  │ │ ││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          ││││││││││││  │ │ ││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          ││││││││││││ ↗│ │↗││││ │││  0x00007f12db19b9d3:   vmovapd %xmm2,%xmm12
          ││││││││││││ ││ ││││││ │││  0x00007f12db19b9d7:   call   0x00007f12dad190c0           ;   {runtime_call Stub&lt;AMD64MathStub.tan&gt;}
          ││││││││││││ ││ ││││││ │││  0x00007f12db19b9dc:   nop
          ││││││││││││ ││ ││││││ │││  0x00007f12db19b9dd:   mov    %r13d,%r10d
   0.22%  ││││││││││││ ││ ││││││ │││  0x00007f12db19b9e0:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││ ││ ││││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@84 (line 77)
          ││││││││││││ ││ ││││││ │││  0x00007f12db19b9e3:   vmovsd %xmm0,0x8(%rsp)
          ││││││││││││ ││ ││││││ │││  0x00007f12db19b9e9:   vmovapd %xmm14,%xmm3
   0.31%  ││││││││││││ ││ ││││││ │││  0x00007f12db19b9ee:   vmovapd %xmm8,%xmm2
   0.00%  ││││││││││││ ││ ││││││ │││  0x00007f12db19b9f3:   vmovapd %xmm13,%xmm1
          ││││││││││││ ││ ││││││ │││  0x00007f12db19b9f8:   vmovsd 0x80(%rsp),%xmm8
          ││││││││││││ ││ ││││││ │││  0x00007f12db19ba01:   mov    0x7c(%rsp),%r13d             ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││ ││ ││││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@21 (line 77)
   0.29%  │││││↘││││││ ││ ││││││ │││  0x00007f12db19ba06:   cmp    %r10d,%r13d
          │││││ │││││╰ ││ ││││││ │││  0x00007f12db19ba09:   jg     0x00007f12db19b880
          │││││ │││││ ╭││ ││││││ │││  0x00007f12db19ba0f:   jmp    0x00007f12db19bad5
          │││││ ││││↘ │││ ││││││ │││  0x00007f12db19ba14:   vmovsd -0x49c(%rip),%xmm1        # 0x00007f12db19b580
          │││││ ││││  │││ ││││││ │││                                                            ;   {section_word}
          │││││ ││││  │││ ││││││ │││  0x00007f12db19ba1c:   vxorpd %xmm1,%xmm0,%xmm0            ;*dneg {reexecute=0 rethrow=0 return_oop=0}
          │││││ ││││  │││ ││││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@350 (line 1316)
          │││││ ││││  │││ ││││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││ ││││  │││ ││││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││ ││││  │││ ││││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.13%  │││││ ││││  │╰│ ││││││ │││  0x00007f12db19ba20:   jmp    0x00007f12db19b9d3           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││││ ││││  │ │ ││││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@164 (line 1297)
          │││││ ││││  │ │ ││││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││ ││││  │ │ ││││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││ ││││  │ │ ││││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││││ ││↘│  │ │ ││││││ │││  0x00007f12db19ba22:   vmovapd %xmm2,%xmm12
          │││││ ││ │  │ │ ││││││ │││  0x00007f12db19ba26:   vsubsd 0x68(%rsp),%xmm3,%xmm2       ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │││││ ││ │  │ │ ││││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@174 (line 1299)
          │││││ ││ │  │ │ ││││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││ ││ │  │ │ ││││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││ ││ │  │ │ ││││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││││ ││ │  │ │ ││││││ │││  0x00007f12db19ba2c:   vmulsd 0x68(%rsp),%xmm3,%xmm3       ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││││ ││ │  │ │ ││││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@180 (line 1299)
          │││││ ││ │  │ │ ││││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││ ││ │  │ │ ││││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││ ││ │  │ │ ││││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││││ ││ │  │ │ ││││││ │││  0x00007f12db19ba32:   vaddsd %xmm8,%xmm3,%xmm3            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││││ ││ │  │ │ ││││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@181 (line 1299)
          │││││ ││ │  │ │ ││││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││ ││ │  │ │ ││││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││ ││ │  │ │ ││││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││││ ││ │  │ │ ││││││ │││  0x00007f12db19ba37:   vdivsd %xmm3,%xmm2,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │││││ ││ │  │ │ ││││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@182 (line 1299)
          │││││ ││ │  │ │ ││││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││ ││ │  │ │ ││││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││ ││ │  │ │ ││││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.00%  │││││ ││ │  │ │ ││││││ │││  0x00007f12db19ba3b:   mov    $0x2,%r11d
          │││││ ││ │  │ │ ││││││ │││  0x00007f12db19ba41:   vmovapd %xmm2,%xmm3
          │││││ ││ │  │ │ ││││││ │││  0x00007f12db19ba45:   vmovapd %xmm12,%xmm2
          │││││ ││ │  │ ╰ ││││││ │││  0x00007f12db19ba4a:   jmp    0x00007f12db19b92a           ;*dload_0 {reexecute=0 rethrow=0 return_oop=0}
          │││││ ││ │  │   ││││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@196 (line 1307)
          │││││ ││ │  │   ││││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││ ││ │  │   ││││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││ ││ │  │   ││││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││││ │↘ │  │   ││││││ │││  0x00007f12db19ba4f:   vmovapd %xmm2,%xmm12
          │││││ │  │  │   ││││││ │││  0x00007f12db19ba53:   cmp    $0x3fe60000,%r11d
          │││││ │  │  │  ╭││││││ │││  0x00007f12db19ba5a:   jae    0x00007f12db19babc           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││││ │  │  │  │││││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@123 (line 1289)
          │││││ │  │  │  │││││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││ │  │  │  │││││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││ │  │  │  │││││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││││ │  │  │  │││││││ │││  0x00007f12db19ba60:   vmulsd 0x70(%rsp),%xmm3,%xmm2       ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││││ │  │  │  │││││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@133 (line 1291)
          │││││ │  │  │  │││││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││ │  │  │  │││││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││ │  │  │  │││││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││││ │  │  │  │││││││ │││  0x00007f12db19ba66:   vsubsd %xmm8,%xmm2,%xmm2            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │││││ │  │  │  │││││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@135 (line 1291)
          │││││ │  │  │  │││││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││ │  │  │  │││││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││ │  │  │  │││││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││││ │  │  │  │││││││ │││  0x00007f12db19ba6b:   vaddsd 0x70(%rsp),%xmm3,%xmm3       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││││ │  │  │  │││││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@140 (line 1291)
          │││││ │  │  │  │││││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││ │  │  │  │││││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││ │  │  │  │││││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││││ │  │  │  │││││││ │││  0x00007f12db19ba71:   vdivsd %xmm3,%xmm2,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │││││ │  │  │  │││││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@141 (line 1291)
          │││││ │  │  │  │││││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││ │  │  │  │││││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││ │  │  │  │││││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.00%  │││││ │  │  │  │││││││ │││  0x00007f12db19ba75:   mov    $0x0,%r11d
          │││││ │  │  │  │││││││ │││  0x00007f12db19ba7b:   vmovapd %xmm2,%xmm3
          │││││ │  │  │  │││││││ │││  0x00007f12db19ba7f:   vmovapd %xmm12,%xmm2
          │││││ │  │  │  │╰│││││ │││  0x00007f12db19ba84:   jmp    0x00007f12db19b92a           ;*dload_0 {reexecute=0 rethrow=0 return_oop=0}
          │││││ │  │  │  │ │││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@196 (line 1307)
          │││││ │  │  │  │ │││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││ │  │  │  │ │││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││ │  │  │  │ │││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││││ │  ↘  │  │ │││││ │││  0x00007f12db19ba89:   vmovapd %xmm2,%xmm12
          │││││ │     │  │ │││││ │││  0x00007f12db19ba8d:   vsubsd %xmm4,%xmm3,%xmm0            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │││││ │     │  │ │││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@316 (line 1313)
          │││││ │     │  │ │││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││ │     │  │ │││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││ │     │  │ │││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││││ │     │  │ ╰││││ │││  0x00007f12db19ba91:   jmp    0x00007f12db19b9d3           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││││ │     │  │  ││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@79 (line 1279)
          │││││ │     │  │  ││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││ │     │  │  ││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││ │     │  │  ││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││││ ↘     │  │  ││││ │││  0x00007f12db19ba96:   data16 nopw 0x0(%rax,%rax,1)
          │││││       │  │  ││││ │││  0x00007f12db19baa0:   cmp    $0x3e200000,%r11d
          │││││       │  │  ││││ │││  0x00007f12db19baa7:   jb     0x00007f12db19bcd2           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││││       │  │  ││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@86 (line 1280)
          │││││       │  │  ││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││       │  │  ││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││       │  │  ││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││││       │  │  ││││ │││  0x00007f12db19baad:   mov    $0xffffffff,%r11d
          │││││       │  │  ││││ │││  0x00007f12db19bab3:   vmovapd %xmm2,%xmm3
          │││││       │  │  ╰│││ │││  0x00007f12db19bab7:   jmp    0x00007f12db19b92a           ;*dload_0 {reexecute=0 rethrow=0 return_oop=0}
          │││││       │  │   │││ │││                                                            ; - java.lang.FdLibm$Atan::compute@196 (line 1307)
          │││││       │  │   │││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││       │  │   │││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││       │  │   │││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││││       │  ↘   │││ │││  0x00007f12db19babc:   vsubsd %xmm8,%xmm3,%xmm4            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │││││       │      │││ │││                                                            ; - java.lang.FdLibm$Atan::compute@151 (line 1294)
          │││││       │      │││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││       │      │││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││       │      │││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││││       │      │││ │││  0x00007f12db19bac1:   vaddsd %xmm8,%xmm3,%xmm3            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││││       │      │││ │││                                                            ; - java.lang.FdLibm$Atan::compute@154 (line 1294)
          │││││       │      │││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││       │      │││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││       │      │││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││││       │      │││ │││  0x00007f12db19bac6:   vdivsd %xmm3,%xmm4,%xmm3            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │││││       │      │││ │││                                                            ; - java.lang.FdLibm$Atan::compute@155 (line 1294)
          │││││       │      │││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││       │      │││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││       │      │││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││││       │      │││ │││  0x00007f12db19baca:   mov    $0x1,%r11d
          │││││       │      ╰││ │││  0x00007f12db19bad0:   jmp    0x00007f12db19b92a           ;*dload_0 {reexecute=0 rethrow=0 return_oop=0}
          │││││       │       ││ │││                                                            ; - java.lang.FdLibm$Atan::compute@196 (line 1307)
          │││││       │       ││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││││       │       ││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││││       │       ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││││       ↘       ││ │││  0x00007f12db19bad5:   vmovsd 0x8(%rsp),%xmm0              ;*dload {reexecute=0 rethrow=0 return_oop=0}
          │││││               ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@90 (line 84)
          │││││               ││ │││  0x00007f12db19badb:   mov    0x90(%rsp),%rbp
          │││││               ││ │││  0x00007f12db19bae3:   add    $0x98,%rsp
          │││││               ││ │││  0x00007f12db19baea:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││││               ││ │││  0x00007f12db19baf1:   ja     0x00007f12db19bd87
          │││││               ││ │││  0x00007f12db19baf7:   vzeroupper 
          │││││               ││ │││  0x00007f12db19bafa:   ret    
          ││││↘               ││ │││  0x00007f12db19bafb:   vmovsd %xmm7,0x18(%rsp)
          ││││                ││ │││  0x00007f12db19bb01:   vmovsd %xmm6,0x10(%rsp)
          ││││                ││ │││  0x00007f12db19bb07:   vmovapd %xmm3,%xmm9
          ││││                ╰│ │││  0x00007f12db19bb0b:   jmp    0x00007f12db19b82f           ;*dreturn {reexecute=0 rethrow=0 return_oop=0}
          ││││                 │ │││                                                            ; - java.lang.FdLibm$Atan::compute@356 (line 1316)
          ││││                 │ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          ││││                 │ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          ││││                 │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          ││↘│                 │ │││  0x00007f12db19bb10:   vmovsd %xmm0,0x60(%rsp)
          ││ │                 │ │││  0x00007f12db19bb16:   vmovsd %xmm1,0x58(%rsp)
          ││ │                 │ │││  0x00007f12db19bb1c:   vmovapd %xmm10,%xmm13
          ││ │                 │ │││  0x00007f12db19bb21:   vmovapd %xmm9,%xmm4
          ││ │                 │ │││  0x00007f12db19bb26:   vmovapd %xmm8,%xmm1
          ││ │                 │ │││  0x00007f12db19bb2b:   vmovapd %xmm11,%xmm8
          ││ │                 │ │││  0x00007f12db19bb30:   vsubsd 0x68(%rsp),%xmm2,%xmm0       ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││ │                 │ │││                                                            ; - java.lang.FdLibm$Atan::compute@174 (line 1299)
          ││ │                 │ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          ││ │                 │ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          ││ │                 │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          ││ │                 │ │││  0x00007f12db19bb36:   vmulsd 0x68(%rsp),%xmm2,%xmm2       ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││ │                 │ │││                                                            ; - java.lang.FdLibm$Atan::compute@180 (line 1299)
          ││ │                 │ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          ││ │                 │ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          ││ │                 │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          ││ │                 │ │││  0x00007f12db19bb3c:   vaddsd %xmm8,%xmm2,%xmm2            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                 │ │││                                                            ; - java.lang.FdLibm$Atan::compute@181 (line 1299)
          ││ │                 │ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          ││ │                 │ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          ││ │                 │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          ││ │                 │ │││  0x00007f12db19bb41:   vdivsd %xmm2,%xmm0,%xmm0            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          ││ │                 │ │││                                                            ; - java.lang.FdLibm$Atan::compute@182 (line 1299)
          ││ │                 │ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          ││ │                 │ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          ││ │                 │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          ││ │                 │ │││  0x00007f12db19bb45:   mov    $0x2,%r11d
          ││ │                 │ │││  0x00007f12db19bb4b:   vmovapd %xmm0,%xmm2
          ││ │                 │ │││  0x00007f12db19bb4f:   vmovsd %xmm8,0x50(%rsp)
          ││ │                 │ │││  0x00007f12db19bb55:   vmovsd %xmm13,0x48(%rsp)
          ││ │                 │ │││  0x00007f12db19bb5b:   vmovapd %xmm1,%xmm8
          ││ │                 │ │││  0x00007f12db19bb5f:   nop
          ││ │                 ╰ │││  0x00007f12db19bb60:   jmp    0x00007f12db19b6fc           ;*dload_0 {reexecute=0 rethrow=0 return_oop=0}
          ││ │                   │││                                                            ; - java.lang.FdLibm$Atan::compute@196 (line 1307)
          ││ │                   │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          ││ │                   │││                                                            ; - java.lang.Math::atan@1 (line 279)
          ││ │                   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │↘ │                   │││  0x00007f12db19bb65:   vmovsd %xmm0,0x60(%rsp)
          │  │                   │││  0x00007f12db19bb6b:   vmovsd %xmm1,0x58(%rsp)
          │  │                   │││  0x00007f12db19bb71:   vmovapd %xmm10,%xmm13
          │  │                   │││  0x00007f12db19bb76:   vmovapd %xmm9,%xmm4
          │  │                   │││  0x00007f12db19bb7b:   vmovapd %xmm8,%xmm1
          │  │                   │││  0x00007f12db19bb80:   vmovapd %xmm11,%xmm8
          │  │                   │││  0x00007f12db19bb85:   cmp    $0x3fe60000,%r11d
          │  │                  ╭│││  0x00007f12db19bb8c:   jae    0x00007f12db19bc5e           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │  │                  ││││                                                            ; - java.lang.FdLibm$Atan::compute@123 (line 1289)
          │  │                  ││││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │  │                  ││││                                                            ; - java.lang.Math::atan@1 (line 279)
          │  │                  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │  │                  ││││  0x00007f12db19bb92:   vmulsd 0x70(%rsp),%xmm2,%xmm0       ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │  │                  ││││                                                            ; - java.lang.FdLibm$Atan::compute@133 (line 1291)
          │  │                  ││││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │  │                  ││││                                                            ; - java.lang.Math::atan@1 (line 279)
          │  │                  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │  │                  ││││  0x00007f12db19bb98:   vsubsd %xmm8,%xmm0,%xmm0            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │  │                  ││││                                                            ; - java.lang.FdLibm$Atan::compute@135 (line 1291)
          │  │                  ││││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │  │                  ││││                                                            ; - java.lang.Math::atan@1 (line 279)
          │  │                  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │  │                  ││││  0x00007f12db19bb9d:   vaddsd 0x70(%rsp),%xmm2,%xmm2       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │  │                  ││││                                                            ; - java.lang.FdLibm$Atan::compute@140 (line 1291)
          │  │                  ││││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │  │                  ││││                                                            ; - java.lang.Math::atan@1 (line 279)
          │  │                  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │  │                  ││││  0x00007f12db19bba3:   vdivsd %xmm2,%xmm0,%xmm0            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │  │                  ││││                                                            ; - java.lang.FdLibm$Atan::compute@141 (line 1291)
          │  │                  ││││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │  │                  ││││                                                            ; - java.lang.Math::atan@1 (line 279)
          │  │                  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │  │                  ││││  0x00007f12db19bba7:   mov    $0x0,%r11d
          │  │                  ││││  0x00007f12db19bbad:   vmovapd %xmm0,%xmm2
          │  │                  ││││  0x00007f12db19bbb1:   vmovsd %xmm8,0x50(%rsp)
          │  │                  ││││  0x00007f12db19bbb7:   vmovsd %xmm13,0x48(%rsp)
          │  │                  ││││  0x00007f12db19bbbd:   vmovapd %xmm1,%xmm8
          │  │                  │╰││  0x00007f12db19bbc1:   jmp    0x00007f12db19b6fc           ;*dload_0 {reexecute=0 rethrow=0 return_oop=0}
          │  │                  │ ││                                                            ; - java.lang.FdLibm$Atan::compute@196 (line 1307)
          │  │                  │ ││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │  │                  │ ││                                                            ; - java.lang.Math::atan@1 (line 279)
          │  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │  ↘                  │ ││  0x00007f12db19bbc6:   vmovsd %xmm7,0x18(%rsp)
          │                     │ ││  0x00007f12db19bbcc:   vmovsd %xmm6,0x10(%rsp)
          │                     │ ││  0x00007f12db19bbd2:   vmovapd %xmm5,%xmm11
          │                     │ ││  0x00007f12db19bbd6:   vmovapd %xmm4,%xmm10
          │                     │ ││  0x00007f12db19bbda:   vmovapd %xmm3,%xmm9
          │                     │ ││  0x00007f12db19bbde:   vmovsd -0x66e(%rip),%xmm14        # 0x00007f12db19b578
          │                     │ ││                                                            ;   {section_word}
          │                     │ ││  0x00007f12db19bbe6:   vmovapd %xmm8,%xmm1
          │                     │ ││  0x00007f12db19bbeb:   vmovsd 0x50(%rsp),%xmm8
          │                     │ ││  0x00007f12db19bbf1:   vmovsd 0x48(%rsp),%xmm13
          │                     │ ││  0x00007f12db19bbf7:   vmovsd 0x80(%rsp),%xmm4
          │                     │ ││  0x00007f12db19bc00:   vsubsd %xmm0,%xmm2,%xmm0            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │                     │ ││                                                            ; - java.lang.FdLibm$Atan::compute@316 (line 1313)
          │                     │ ││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │                     │ ││                                                            ; - java.lang.Math::atan@1 (line 279)
          │                     │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │                     │ ││  0x00007f12db19bc04:   vmovapd %xmm10,%xmm4
          │                     │ ││  0x00007f12db19bc09:   vmovapd %xmm1,%xmm8
          │                     │ ╰│  0x00007f12db19bc0d:   jmp    0x00007f12db19b82f           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                     │  │                                                            ; - java.lang.FdLibm$Atan::compute@79 (line 1279)
          │                     │  │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │                     │  │                                                            ; - java.lang.Math::atan@1 (line 279)
          │                     │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          ↘                     │  │  0x00007f12db19bc12:   vmovsd %xmm0,0x60(%rsp)
                                │  │  0x00007f12db19bc18:   vmovsd %xmm1,0x58(%rsp)
                                │  │  0x00007f12db19bc1e:   vmovapd %xmm10,%xmm13
                                │  │  0x00007f12db19bc23:   vmovapd %xmm9,%xmm4
                                │  │  0x00007f12db19bc28:   vmovapd %xmm8,%xmm1
                                │  │  0x00007f12db19bc2d:   vmovapd %xmm11,%xmm8
                                │  │  0x00007f12db19bc32:   cmp    $0x3e200000,%r11d
                                │  │  0x00007f12db19bc39:   jb     0x00007f12db19bd0d           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                │  │                                                            ; - java.lang.FdLibm$Atan::compute@86 (line 1280)
                                │  │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
                                │  │                                                            ; - java.lang.Math::atan@1 (line 279)
                                │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
                                │  │  0x00007f12db19bc3f:   mov    $0xffffffff,%r11d
                                │  │  0x00007f12db19bc45:   vmovapd %xmm1,%xmm2
                                │  │  0x00007f12db19bc49:   vmovsd %xmm8,0x50(%rsp)
                                │  │  0x00007f12db19bc4f:   vmovsd %xmm13,0x48(%rsp)
                                │  │  0x00007f12db19bc55:   vmovapd %xmm1,%xmm8
                                │  ╰  0x00007f12db19bc59:   jmp    0x00007f12db19b6fc           ;*dload_0 {reexecute=0 rethrow=0 return_oop=0}
                                │                                                               ; - java.lang.FdLibm$Atan::compute@196 (line 1307)
                                │                                                               ; - java.lang.StrictMath::atan@1 (line 227)
                                │                                                               ; - java.lang.Math::atan@1 (line 279)
                                │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
                                ↘     0x00007f12db19bc5e:   vsubsd %xmm8,%xmm2,%xmm0            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                                                ; - java.lang.FdLibm$Atan::compute@151 (line 1294)
                                                                                                ; - java.lang.StrictMath::atan@1 (line 227)
                                                                                                ; - java.lang.Math::atan@1 (line 279)
                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
                                      0x00007f12db19bc63:   vaddsd %xmm8,%xmm2,%xmm2            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                                ; - java.lang.FdLibm$Atan::compute@154 (line 1294)
                                                                                                ; - java.lang.StrictMath::atan@1 (line 227)
                                                                                                ; - java.lang.Math::atan@1 (line 279)
                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
                                      0x00007f12db19bc68:   vdivsd %xmm2,%xmm0,%xmm0            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
                                                                                                ; - java.lang.FdLibm$Atan::compute@155 (line 1294)
                                                                                                ; - java.lang.StrictMath::atan@1 (line 227)
                                                                                                ; - java.lang.Math::atan@1 (line 279)
                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.00%                              0x00007f12db19bc6c:   mov    $0x1,%r11d
                                      0x00007f12db19bc72:   vmovapd %xmm0,%xmm2
                                      0x00007f12db19bc76:   vmovsd %xmm8,0x50(%rsp)
                                      0x00007f12db19bc7c:   vmovsd %xmm13,0x48(%rsp)
                                      0x00007f12db19bc82:   vmovapd %xmm1,%xmm8
                                      0x00007f12db19bc86:   jmp    0x00007f12db19b6fc           ;*dload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                                                ; - java.lang.FdLibm$Atan::compute@196 (line 1307)
....................................................................................................
  33.28%  <total for region 2>

....[Hottest Regions]...............................................................................
  62.17%                        <unknown> 
  33.28%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop, version 3, compile id 1038 
   0.97%                kernel  [unknown] 
   0.57%                kernel  [unknown] 
   0.30%                kernel  [unknown] 
   0.20%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   1.37%  <...other 267 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  62.17%                        <unknown> 
  33.28%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop, version 3, compile id 1038 
   4.05%                kernel  [unknown] 
   0.03%             libc.so.6  __vfprintf_internal 
   0.03%             libjvm.so  fileStream::write 
   0.03%             libjvm.so  ElfSymbolTable::lookup 
   0.02%             libjvm.so  defaultStream::hold 
   0.02%             libc.so.6  _IO_fwrite 
   0.02%             libc.so.6  __GI___libc_write 
   0.01%             libc.so.6  __strchrnul_avx2 
   0.01%        hsdis-amd64.so  print_insn 
   0.01%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%             libjvm.so  RelocIterator::initialize 
   0.01%             libjvm.so  xmlStream::write_text 
   0.01%             libc.so.6  _IO_default_xsputn 
   0.01%             libc.so.6  syscall 
   0.01%             libc.so.6  __GI___pthread_disable_asynccancel 
   0.01%             libjvm.so  InstanceKlass::find_method_index 
   0.23%  <...other 101 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  62.17%                      
  33.28%        jvmci, level 4
   4.05%                kernel
   0.22%             libjvm.so
   0.16%             libc.so.6
   0.04%   libjvmcicompiler.so
   0.04%           interpreter
   0.02%        hsdis-amd64.so
   0.01%  ld-linux-x86-64.so.2
   0.00%           c1, level 3
   0.00%                [vdso]
   0.00%         perf-5415.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking
# Parameters: (iterations = 16384)

# Run progress: 50.00% complete, ETA 00:02:18
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2915.930 us/op
# Warmup Iteration   2: 2872.899 us/op
# Warmup Iteration   3: 2888.330 us/op
# Warmup Iteration   4: 2893.272 us/op
# Warmup Iteration   5: 2872.873 us/op
Iteration   1: 2919.012 us/op
Iteration   2: 2886.270 us/op
Iteration   3: 2907.872 us/op
Iteration   4: 2912.043 us/op
Iteration   5: 2897.913 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking":
  2904.622 ±(99.9%) 49.256 us/op [Average]
  (min, avg, max) = (2886.270, 2904.622, 2919.012), stdev = 12.792
  CI (99.9%): [2855.366, 2953.878] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking:asm":
PrintAssembly processed: 218731 total address lines.
Perf output processed (skipped 78.963 seconds):
 Column 1: cycles (51221 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

                                 --------------------------------------------------------------------------------
                                 [/Disassembly]
                                 </print_nmethod>
                                 <task_queued compile_id='1038' compile_kind='osr' method='com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark manual_loop_hoisting_and_sinking ()D' bytes='86' count='11' backedge_count='175487' iicount='11' osr_bci='25' stamp='27,862' comment='tiered' hot_count='175487'/>
                                 - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                 Decoding RuntimeStub - Stub&lt;AMD64MathStub.tan&gt; 0x00007f27aad17090
                                 --------------------------------------------------------------------------------
                                   0x00007f27aad189c0:   sub    $0x18,%rsp
   0.12%                           0x00007f27aad189c4:   push   %rbx
   0.33%                           0x00007f27aad189c5:   sub    $0x10,%rsp
   0.00%                           0x00007f27aad189c9:   vmovsd %xmm0,0x8(%rsp)
   0.14%                           0x00007f27aad189cf:   vpextrw $0x3,%xmm0,%eax
   1.03%                           0x00007f27aad189d4:   and    $0x7fff,%eax
   0.41%                           0x00007f27aad189da:   sub    $0x3fba,%eax
   0.27%                           0x00007f27aad189e0:   cmp    $0x10e,%eax
          ╭                        0x00007f27aad189e6:   ja     0x00007f27aad18be9
   0.02%  │                        0x00007f27aad189ec:   vmovdqu -0x17b4(%rip),%xmm5        # 0x00007f27aad17240
          │                        0x00007f27aad189f4:   vmovdqu -0x17ac(%rip),%xmm6        # 0x00007f27aad17250
          │                        0x00007f27aad189fc:   vunpcklpd %xmm0,%xmm0,%xmm0
          │                        0x00007f27aad18a00:   vmovdqu -0x17a8(%rip),%xmm4        # 0x00007f27aad17260
   0.02%  │                        0x00007f27aad18a08:   vandpd %xmm0,%xmm4,%xmm4
          │                        0x00007f27aad18a0c:   vmovdqu -0x17a4(%rip),%xmm1        # 0x00007f27aad17270
          │                        0x00007f27aad18a14:   vmulpd %xmm0,%xmm1,%xmm1
          │                        0x00007f27aad18a18:   vpor   %xmm4,%xmm5,%xmm5
   0.02%  │                        0x00007f27aad18a1c:   vaddpd %xmm5,%xmm1,%xmm1
   0.06%  │                        0x00007f27aad18a20:   vmovdqu %xmm1,%xmm7
          │                        0x00007f27aad18a24:   vunpckhpd %xmm7,%xmm7,%xmm7
   0.01%  │                        0x00007f27aad18a28:   vcvttsd2si %xmm7,%edx
   0.13%  │                        0x00007f27aad18a2c:   vcvttpd2dq %xmm1,%xmm1
          │                        0x00007f27aad18a30:   vcvtdq2pd %xmm1,%xmm1
   0.07%  │                        0x00007f27aad18a34:   vmulpd %xmm6,%xmm1,%xmm1
   0.09%  │                        0x00007f27aad18a38:   vmovdqu -0x17c0(%rip),%xmm3        # 0x00007f27aad17280
          │                        0x00007f27aad18a40:   vmovq  -0x1838(%rip),%xmm5        # 0x00007f27aad17210
          │                        0x00007f27aad18a48:   add    $0x72900,%rdx
          │                        0x00007f27aad18a4f:   vmovdqu -0x17c7(%rip),%xmm4        # 0x00007f27aad17290
   0.01%  │                        0x00007f27aad18a57:   vmulpd %xmm1,%xmm3,%xmm3
   0.07%  │                        0x00007f27aad18a5b:   and    $0x1f,%rdx
          │                        0x00007f27aad18a5f:   vmulsd %xmm1,%xmm5,%xmm5
   0.03%  │                        0x00007f27aad18a63:   mov    %rdx,%rcx
          │                        0x00007f27aad18a66:   vmulpd %xmm1,%xmm4,%xmm4
   0.02%  │                        0x00007f27aad18a6a:   shl    %rcx
          │                        0x00007f27aad18a6d:   vsubpd %xmm3,%xmm0,%xmm0
   0.06%  │                        0x00007f27aad18a71:   vmulpd -0x17d9(%rip),%xmm1,%xmm1        # 0x00007f27aad172a0
          │                        0x00007f27aad18a79:   add    %rcx,%rdx
          │                        0x00007f27aad18a7c:   shl    $0x2,%rcx
          │                        0x00007f27aad18a80:   add    %rcx,%rdx
   0.01%  │                        0x00007f27aad18a83:   vaddsd %xmm0,%xmm5,%xmm5
   0.09%  │                        0x00007f27aad18a87:   vmovdqu %xmm0,%xmm2
          │                        0x00007f27aad18a8b:   vsubpd %xmm4,%xmm0,%xmm0
   0.02%  │                        0x00007f27aad18a8f:   vmovq  -0x187f(%rip),%xmm6        # 0x00007f27aad17218
          │                        0x00007f27aad18a97:   shl    $0x4,%rdx
   0.01%  │                        0x00007f27aad18a9b:   lea    -0x17f2(%rip),%rax        # 0x00007f27aad172b0
          │                        0x00007f27aad18aa2:   vandpd -0x1fa(%rip),%xmm5,%xmm5        # 0x00007f27aad188b0
   0.02%  │                        0x00007f27aad18aaa:   vmovdqu %xmm0,%xmm3
          │                        0x00007f27aad18aae:   add    %rdx,%rax
   0.01%  │                        0x00007f27aad18ab1:   vsubpd %xmm0,%xmm2,%xmm2
   0.08%  │                        0x00007f27aad18ab5:   vunpckhpd %xmm0,%xmm0,%xmm0
          │                        0x00007f27aad18ab9:   vdivsd %xmm5,%xmm6,%xmm6
   0.21%  │                        0x00007f27aad18abd:   vsubpd %xmm4,%xmm2,%xmm2
          │                        0x00007f27aad18ac1:   vmovdqu 0x10(%rax),%xmm7
          │                        0x00007f27aad18ac6:   vsubsd %xmm5,%xmm3,%xmm3
          │                        0x00007f27aad18aca:   vmulpd %xmm0,%xmm7,%xmm7
   0.02%  │                        0x00007f27aad18ace:   vsubpd %xmm1,%xmm2,%xmm2
          │                        0x00007f27aad18ad2:   vmovdqu 0x30(%rax),%xmm1
          │                        0x00007f27aad18ad7:   vmulpd %xmm0,%xmm1,%xmm1
          │                        0x00007f27aad18adb:   vmovdqu 0x60(%rax),%xmm4
   0.03%  │                        0x00007f27aad18ae0:   vmulpd %xmm0,%xmm4,%xmm4
          │                        0x00007f27aad18ae4:   vaddsd %xmm3,%xmm2,%xmm2
          │                        0x00007f27aad18ae8:   vmovdqu %xmm0,%xmm3
          │                        0x00007f27aad18aec:   vmulpd %xmm0,%xmm0,%xmm0
   0.01%  │                        0x00007f27aad18af0:   vaddpd (%rax),%xmm7,%xmm7
          │                        0x00007f27aad18af4:   vaddpd 0x20(%rax),%xmm1,%xmm1
          │                        0x00007f27aad18af9:   vmulpd %xmm0,%xmm1,%xmm1
          │                        0x00007f27aad18afd:   vaddpd 0x50(%rax),%xmm4,%xmm4
   0.02%  │                        0x00007f27aad18b02:   vaddpd %xmm1,%xmm7,%xmm7
   0.01%  │                        0x00007f27aad18b06:   vmovdqu 0x70(%rax),%xmm1
          │                        0x00007f27aad18b0b:   vmulpd %xmm0,%xmm1,%xmm1
          │                        0x00007f27aad18b0f:   vmulpd %xmm0,%xmm0,%xmm0
   0.01%  │                        0x00007f27aad18b13:   vaddpd %xmm1,%xmm4,%xmm4
   0.00%  │                        0x00007f27aad18b17:   vmovdqu 0x40(%rax),%xmm1
          │                        0x00007f27aad18b1c:   vmulpd %xmm0,%xmm1,%xmm1
          │                        0x00007f27aad18b20:   vaddpd %xmm1,%xmm7,%xmm7
   0.06%  │                        0x00007f27aad18b24:   vmovdqu %xmm3,%xmm1
          │                        0x00007f27aad18b28:   vmulpd %xmm0,%xmm3,%xmm3
          │                        0x00007f27aad18b2c:   vmulsd %xmm0,%xmm0,%xmm0
          │                        0x00007f27aad18b30:   vmulpd 0x90(%rax),%xmm1,%xmm1
   0.02%  │                        0x00007f27aad18b38:   vmulpd %xmm3,%xmm4,%xmm4
   0.00%  │                        0x00007f27aad18b3c:   vmovdqu %xmm1,%xmm3
          │                        0x00007f27aad18b40:   vaddpd %xmm4,%xmm7,%xmm7
   0.09%  │                        0x00007f27aad18b44:   vmovdqu %xmm1,%xmm4
          │                        0x00007f27aad18b48:   vmulsd %xmm7,%xmm0,%xmm0
   0.09%  │                        0x00007f27aad18b4c:   vunpckhpd %xmm7,%xmm7,%xmm7
          │                        0x00007f27aad18b50:   vaddsd %xmm7,%xmm0,%xmm0
   0.08%  │                        0x00007f27aad18b54:   vunpckhpd %xmm1,%xmm1,%xmm1
          │                        0x00007f27aad18b58:   vaddsd %xmm1,%xmm3,%xmm3
          │                        0x00007f27aad18b5c:   vsubsd %xmm3,%xmm4,%xmm4
          │                        0x00007f27aad18b60:   vaddsd %xmm4,%xmm1,%xmm1
   0.02%  │                        0x00007f27aad18b64:   vmovdqu %xmm2,%xmm4
          │                        0x00007f27aad18b68:   vmovq  0x90(%rax),%xmm7
          │                        0x00007f27aad18b70:   vunpckhpd %xmm2,%xmm2,%xmm2
          │                        0x00007f27aad18b74:   vaddsd 0x98(%rax),%xmm7,%xmm7
   0.02%  │                        0x00007f27aad18b7c:   vmulsd %xmm2,%xmm7,%xmm7
          │                        0x00007f27aad18b80:   vaddsd 0x88(%rax),%xmm7,%xmm7
          │                        0x00007f27aad18b88:   vaddsd %xmm1,%xmm7,%xmm7
          │                        0x00007f27aad18b8c:   vaddsd %xmm7,%xmm0,%xmm0
   0.05%  │                        0x00007f27aad18b90:   vmovq  -0x1980(%rip),%xmm7        # 0x00007f27aad17218
          │                        0x00007f27aad18b98:   vmulsd %xmm6,%xmm4,%xmm4
          │                        0x00007f27aad18b9c:   vmovq  0xa8(%rax),%xmm2
          │                        0x00007f27aad18ba4:   vandpd %xmm6,%xmm2,%xmm2
   0.02%  │                        0x00007f27aad18ba8:   vmulsd %xmm2,%xmm5,%xmm5
          │                        0x00007f27aad18bac:   vmulsd 0xa0(%rax),%xmm6,%xmm6
          │                        0x00007f27aad18bb4:   vsubsd %xmm5,%xmm7,%xmm7
          │                        0x00007f27aad18bb8:   vsubsd 0x80(%rax),%xmm2,%xmm2
   0.03%  │                        0x00007f27aad18bc0:   vsubsd %xmm4,%xmm7,%xmm7
          │                        0x00007f27aad18bc4:   vmulsd %xmm6,%xmm7,%xmm7
          │                        0x00007f27aad18bc8:   vmovdqu %xmm3,%xmm4
          │                        0x00007f27aad18bcc:   vsubsd %xmm2,%xmm3,%xmm3
   0.02%  │                        0x00007f27aad18bd0:   vaddsd %xmm3,%xmm2,%xmm2
          │                        0x00007f27aad18bd4:   vsubsd %xmm2,%xmm4,%xmm4
          │                        0x00007f27aad18bd8:   vaddsd %xmm4,%xmm0,%xmm0
   0.03%  │                        0x00007f27aad18bdc:   vsubsd %xmm7,%xmm0,%xmm0
   0.10%  │                        0x00007f27aad18be0:   vaddsd %xmm3,%xmm0,%xmm0
   0.10%  │╭                       0x00007f27aad18be4:   jmp    0x00007f27aad19219
   0.43%  ↘│╭                      0x00007f27aad18be9:   jg     0x00007f27aad18c9d
           ││                      0x00007f27aad18bef:   vpextrw $0x3,%xmm0,%eax
           ││                      0x00007f27aad18bf4:   mov    %eax,%edx
           ││                      0x00007f27aad18bf6:   data16 nopw 0x0(%rax,%rax,1)
           ││                      0x00007f27aad18c00:   and    $0x7ff0,%eax
           ││╭                     0x00007f27aad18c06:   je     0x00007f27aad18c90
           │││                     0x00007f27aad18c0c:   and    $0x7fff,%edx
           │││                     0x00007f27aad18c12:   cmp    $0x3e20,%edx
           │││╭                    0x00007f27aad18c18:   jb     0x00007f27aad18c73
           ││││                    0x00007f27aad18c1e:   vmovdqu %xmm0,%xmm2
           ││││                    0x00007f27aad18c22:   vmovdqu %xmm0,%xmm3
           ││││                    0x00007f27aad18c26:   vmovq  -0x36e(%rip),%xmm1        # 0x00007f27aad188c0
           ││││                    0x00007f27aad18c2e:   vmulsd %xmm0,%xmm2,%xmm2
           ││││                    0x00007f27aad18c32:   vmulsd %xmm2,%xmm3,%xmm3
           ││││                    0x00007f27aad18c36:   vmulsd %xmm2,%xmm1,%xmm1
           ││││                    0x00007f27aad18c3a:   vaddsd -0x372(%rip),%xmm1,%xmm1        # 0x00007f27aad188d0
           ││││                    0x00007f27aad18c42:   vmulsd %xmm2,%xmm1,%xmm1
           ││││                    0x00007f27aad18c46:   vaddsd -0x36e(%rip),%xmm1,%xmm1        # 0x00007f27aad188e0
           ││││                    0x00007f27aad18c4e:   vmulsd %xmm2,%xmm1,%xmm1
           ││││                    0x00007f27aad18c52:   vaddsd -0x36a(%rip),%xmm1,%xmm1        # 0x00007f27aad188f0
           ││││                    0x00007f27aad18c5a:   vmulsd %xmm2,%xmm1,%xmm1
           ││││                    0x00007f27aad18c5e:   vaddsd -0x366(%rip),%xmm1,%xmm1        # 0x00007f27aad18900
           ││││                    0x00007f27aad18c66:   vmulsd %xmm3,%xmm1,%xmm1
           ││││                    0x00007f27aad18c6a:   vaddsd %xmm1,%xmm0,%xmm0
           ││││╭                   0x00007f27aad18c6e:   jmp    0x00007f27aad19219
           │││↘│                   0x00007f27aad18c73:   vmovq  -0x1a5b(%rip),%xmm3        # 0x00007f27aad17220
           │││ │                   0x00007f27aad18c7b:   vmulsd %xmm0,%xmm3,%xmm3
           │││ │                   0x00007f27aad18c7f:   vaddsd %xmm3,%xmm0,%xmm0
           │││ │                   0x00007f27aad18c83:   vmulsd -0x1a8b(%rip),%xmm0,%xmm0        # 0x00007f27aad17200
           │││ │╭                  0x00007f27aad18c8b:   jmp    0x00007f27aad19219
           ││↘ ││                  0x00007f27aad18c90:   vmovdqu %xmm0,%xmm1
           ││  ││                  0x00007f27aad18c94:   vmulsd %xmm1,%xmm1,%xmm1
           ││  ││╭                 0x00007f27aad18c98:   jmp    0x00007f27aad19219
   0.49%   │↘  │││                 0x00007f27aad18c9d:   vpextrw $0x3,%xmm0,%eax
           │   │││                 0x00007f27aad18ca2:   and    $0x7ff0,%eax
   0.03%   │   │││                 0x00007f27aad18ca8:   cmp    $0x7ff0,%eax
           │   │││╭                0x00007f27aad18cae:   je     0x00007f27aad19206
   0.49%   │   ││││                0x00007f27aad18cb4:   vpextrw $0x3,%xmm0,%ecx
           │   ││││                0x00007f27aad18cb9:   and    $0x7ff0,%ecx
   0.22%   │   ││││                0x00007f27aad18cbf:   sub    $0x3f60,%ecx
   0.38%   │   ││││                0x00007f27aad18cc5:   shr    $0x7,%ecx
   0.72%   │   ││││                0x00007f27aad18cc8:   and    $0xfffc,%ecx
   0.21%   │   ││││                0x00007f27aad18cce:   lea    -0x3c5(%rip),%r11        # 0x00007f27aad18910
   0.01%   │   ││││                0x00007f27aad18cd5:   add    %r11,%rcx
   0.60%   │   ││││                0x00007f27aad18cd8:   vmovq  %xmm0,%rax
   0.08%   │   ││││                0x00007f27aad18cdd:   mov    0x14(%rcx),%r10d
   1.89%   │   ││││                0x00007f27aad18ce1:   mov    0x18(%rcx),%r8d
   0.00%   │   ││││                0x00007f27aad18ce5:   mov    %eax,%edx
           │   ││││                0x00007f27aad18ce7:   shr    $0x15,%rax
           │   ││││                0x00007f27aad18ceb:   or     $0x80000000,%eax
   0.45%   │   ││││                0x00007f27aad18cf1:   shr    $0xb,%eax
           │   ││││                0x00007f27aad18cf4:   mov    %r10d,%r9d
           │   ││││                0x00007f27aad18cf7:   imul   %rdx,%r10
   1.04%   │   ││││                0x00007f27aad18cfb:   imul   %rax,%r9
   0.41%   │   ││││                0x00007f27aad18cff:   imul   %rax,%r8
   0.31%   │   ││││                0x00007f27aad18d03:   mov    0x10(%rcx),%esi
           │   ││││                0x00007f27aad18d06:   mov    0xc(%rcx),%edi
   0.05%   │   ││││                0x00007f27aad18d09:   mov    %r10d,%r11d
   0.08%   │   ││││                0x00007f27aad18d0c:   shr    $0x20,%r10
   0.33%   │   ││││                0x00007f27aad18d10:   add    %r10,%r9
   0.04%   │   ││││                0x00007f27aad18d13:   add    %r8,%r11
   0.01%   │   ││││                0x00007f27aad18d16:   mov    %r11d,%r8d
   0.09%   │   ││││                0x00007f27aad18d19:   shr    $0x20,%r11
   0.38%   │   ││││                0x00007f27aad18d1d:   add    %r11,%r9
   0.27%   │   ││││                0x00007f27aad18d20:   mov    %esi,%r10d
   0.00%   │   ││││                0x00007f27aad18d23:   imul   %rdx,%rsi
   0.07%   │   ││││                0x00007f27aad18d27:   imul   %rax,%r10
   0.04%   │   ││││                0x00007f27aad18d2b:   mov    %edi,%r11d
   0.33%   │   ││││                0x00007f27aad18d2e:   imul   %rdx,%rdi
   0.01%   │   ││││                0x00007f27aad18d32:   mov    %esi,%ebx
   0.07%   │   ││││                0x00007f27aad18d34:   shr    $0x20,%rsi
   0.04%   │   ││││                0x00007f27aad18d38:   add    %rbx,%r9
   0.37%   │   ││││                0x00007f27aad18d3b:   mov    %r9d,%ebx
   0.01%   │   ││││                0x00007f27aad18d3e:   shr    $0x20,%r9
   0.31%   │   ││││                0x00007f27aad18d42:   add    %rsi,%r10
   0.12%   │   ││││                0x00007f27aad18d45:   add    %r9,%r10
   0.38%   │   ││││                0x00007f27aad18d48:   shl    $0x20,%rbx
   0.00%   │   ││││                0x00007f27aad18d4c:   or     %rbx,%r8
   0.40%   │   ││││                0x00007f27aad18d4f:   imul   %rax,%r11
   0.02%   │   ││││                0x00007f27aad18d53:   mov    0x8(%rcx),%r9d
   0.07%   │   ││││                0x00007f27aad18d57:   mov    0x4(%rcx),%esi
   0.00%   │   ││││                0x00007f27aad18d5a:   mov    %edi,%ebx
   0.32%   │   ││││                0x00007f27aad18d5c:   shr    $0x20,%rdi
   0.03%   │   ││││                0x00007f27aad18d60:   add    %rbx,%r10
   0.14%   │   ││││                0x00007f27aad18d63:   mov    %r10d,%ebx
           │   ││││                0x00007f27aad18d66:   shr    $0x20,%r10
   0.35%   │   ││││                0x00007f27aad18d6a:   add    %rdi,%r11
   0.12%   │   ││││                0x00007f27aad18d6d:   add    %r10,%r11
   0.37%   │   ││││                0x00007f27aad18d70:   mov    %r9,%rdi
   0.00%   │   ││││                0x00007f27aad18d73:   imul   %rdx,%r9
   0.05%   │   ││││                0x00007f27aad18d77:   imul   %rax,%rdi
   0.01%   │   ││││                0x00007f27aad18d7b:   mov    %r9d,%r10d
   0.36%   │   ││││                0x00007f27aad18d7e:   shr    $0x20,%r9
   0.00%   │   ││││                0x00007f27aad18d82:   add    %r10,%r11
   0.08%   │   ││││                0x00007f27aad18d85:   mov    %r11d,%r10d
   0.04%   │   ││││                0x00007f27aad18d88:   shr    $0x20,%r11
   0.34%   │   ││││                0x00007f27aad18d8c:   add    %r9,%rdi
   0.00%   │   ││││                0x00007f27aad18d8f:   add    %r11,%rdi
   0.43%   │   ││││                0x00007f27aad18d92:   mov    %rsi,%r9
   0.02%   │   ││││                0x00007f27aad18d95:   imul   %rdx,%rsi
           │   ││││                0x00007f27aad18d99:   imul   %rax,%r9
   0.00%   │   ││││                0x00007f27aad18d9d:   shl    $0x20,%r10
   0.45%   │   ││││                0x00007f27aad18da1:   or     %rbx,%r10
   0.30%   │   ││││                0x00007f27aad18da4:   mov    (%rcx),%eax
           │   ││││                0x00007f27aad18da6:   mov    %esi,%r11d
           │   ││││                0x00007f27aad18da9:   shr    $0x20,%rsi
   0.23%   │   ││││                0x00007f27aad18dad:   add    %r11,%rdi
   0.27%   │   ││││                0x00007f27aad18db0:   mov    %edi,%r11d
           │   ││││                0x00007f27aad18db3:   shr    $0x20,%rdi
   0.19%   │   ││││                0x00007f27aad18db7:   add    %rsi,%r9
   0.14%   │   ││││                0x00007f27aad18dba:   add    %rdi,%r9
   0.33%   │   ││││                0x00007f27aad18dbd:   imul   %rax,%rdx
           │   ││││                0x00007f27aad18dc1:   vpextrw $0x3,%xmm0,%ebx
   0.14%   │   ││││                0x00007f27aad18dc6:   lea    -0x4bd(%rip),%rdi        # 0x00007f27aad18910
   0.36%   │   ││││                0x00007f27aad18dcd:   sub    %rdi,%rcx
           │   ││││                0x00007f27aad18dd0:   add    %ecx,%ecx
   0.00%   │   ││││                0x00007f27aad18dd2:   add    %ecx,%ecx
   0.10%   │   ││││                0x00007f27aad18dd4:   add    %ecx,%ecx
   0.35%   │   ││││                0x00007f27aad18dd6:   add    $0x13,%ecx
           │   ││││                0x00007f27aad18dd9:   mov    $0x8000,%esi
           │   ││││                0x00007f27aad18dde:   and    %ebx,%esi
   0.13%   │   ││││                0x00007f27aad18de0:   shr    $0x4,%ebx
   0.30%   │   ││││                0x00007f27aad18de3:   and    $0x7ff,%ebx
           │   ││││                0x00007f27aad18de9:   sub    $0x3ff,%ebx
           │   ││││                0x00007f27aad18def:   sub    %ebx,%ecx
   0.11%   │   ││││                0x00007f27aad18df1:   add    %rdx,%r9
   0.37%   │   ││││                0x00007f27aad18df4:   mov    %ecx,%edx
   0.00%   │   ││││                0x00007f27aad18df6:   add    $0x20,%edx
           │   ││││                0x00007f27aad18df9:   nopl   0x0(%rax)
   0.10%   │   ││││                0x00007f27aad18e00:   cmp    $0x0,%ecx
           │   ││││╭               0x00007f27aad18e03:   jl     0x00007f27aad19152
   0.36%   │   │││││               0x00007f27aad18e09:   neg    %ecx
           │   │││││               0x00007f27aad18e0b:   add    $0x1d,%ecx
   0.00%   │   │││││               0x00007f27aad18e0e:   shl    %cl,%r9d
   0.44%   │   │││││               0x00007f27aad18e11:   mov    %r9d,%edi
   0.00%   │   │││││               0x00007f27aad18e14:   and    $0x3fffffff,%r9d
   0.08%   │   │││││               0x00007f27aad18e1b:   nopl   0x0(%rax,%rax,1)
   0.31%   │   │││││               0x00007f27aad18e20:   test   $0x20000000,%r9d
           │   │││││╭              0x00007f27aad18e27:   jne    0x00007f27aad1917f
   0.08%   │   ││││││              0x00007f27aad18e2d:   shr    %cl,%r9d
   0.34%   │   ││││││              0x00007f27aad18e30:   mov    $0x0,%ebx
           │   ││││││              0x00007f27aad18e35:   shl    $0x20,%r9
           │   ││││││              0x00007f27aad18e39:   or     %r11,%r9
   0.10%   │   ││││││         ↗↗↗  0x00007f27aad18e3c:   nopl   0x0(%rax)
   0.32%   │   ││││││         │││  0x00007f27aad18e40:   cmp    $0x0,%r9
           │   ││││││╭        │││  0x00007f27aad18e44:   je     0x00007f27aad190fd
   0.06%   │   │││││││  ↗↗    │││  0x00007f27aad18e4a:   bsr    %r9,%r11
   0.31%   │   │││││││  ││    │││  0x00007f27aad18e4e:   mov    $0x1d,%ecx
   0.08%   │   │││││││  ││    │││  0x00007f27aad18e53:   sub    %r11d,%ecx
           │   │││││││╭ ││    │││  0x00007f27aad18e56:   jle    0x00007f27aad1912f
   0.10%   │   ││││││││ ││    │││  0x00007f27aad18e5c:   shl    %cl,%r9
   0.08%   │   ││││││││ ││    │││  0x00007f27aad18e5f:   mov    %r10,%rax
           │   ││││││││ ││    │││  0x00007f27aad18e62:   shl    %cl,%r10
   0.01%   │   ││││││││ ││    │││  0x00007f27aad18e65:   add    %ecx,%edx
           │   ││││││││ ││    │││  0x00007f27aad18e67:   neg    %ecx
           │   ││││││││ ││    │││  0x00007f27aad18e69:   add    $0x40,%ecx
           │   ││││││││ ││    │││  0x00007f27aad18e6c:   shr    %cl,%rax
   0.01%   │   ││││││││ ││    │││  0x00007f27aad18e6f:   shr    %cl,%r8
   0.02%   │   ││││││││ ││    │││  0x00007f27aad18e72:   or     %rax,%r9
           │   ││││││││ ││    │││  0x00007f27aad18e75:   or     %r8,%r10
   0.33%   │   ││││││││ ││↗↗↗ │││  0x00007f27aad18e78:   vcvtsi2sd %r9,%xmm0,%xmm0
   1.35%   │   ││││││││ │││││ │││  0x00007f27aad18e7d:   shr    %r10
   0.03%   │   ││││││││ │││││ │││  0x00007f27aad18e80:   vcvtsi2sd %r10,%xmm3,%xmm3
   1.12%   │   ││││││││ │││││ │││  0x00007f27aad18e85:   vxorpd %xmm4,%xmm4,%xmm4
   0.04%   │   ││││││││ │││││ │││  0x00007f27aad18e89:   shl    $0x4,%edx
   0.00%   │   ││││││││ │││││ │││  0x00007f27aad18e8c:   neg    %edx
           │   ││││││││ │││││ │││  0x00007f27aad18e8e:   add    $0x3ff0,%edx
   0.39%   │   ││││││││ │││││ │││  0x00007f27aad18e94:   or     %esi,%edx
   0.05%   │   ││││││││ │││││ │││  0x00007f27aad18e96:   xor    %ebx,%edx
   0.00%   │   ││││││││ │││││ │││  0x00007f27aad18e98:   vpinsrw $0x3,%edx,%xmm4,%xmm4
   0.42%   │   ││││││││ │││││ │││  0x00007f27aad18e9d:   vmovq  -0x1c7d(%rip),%xmm2        # 0x00007f27aad17228
   0.04%   │   ││││││││ │││││ │││  0x00007f27aad18ea5:   vmovq  -0x1c7d(%rip),%xmm7        # 0x00007f27aad17230
           │   ││││││││ │││││ │││  0x00007f27aad18ead:   vxorpd %xmm5,%xmm5,%xmm5
           │   ││││││││ │││││ │││  0x00007f27aad18eb1:   sub    $0x3f0,%edx
   0.42%   │   ││││││││ │││││ │││  0x00007f27aad18eb7:   vpinsrw $0x3,%edx,%xmm5,%xmm5
   0.26%   │   ││││││││ │││││ │││  0x00007f27aad18ebc:   vmulsd %xmm4,%xmm0,%xmm0
   0.52%   │   ││││││││ │││││ │││  0x00007f27aad18ec0:   shl    $0x10,%esi
   0.14%   │   ││││││││ │││││ │││  0x00007f27aad18ec3:   sar    $0x1f,%esi
   0.02%   │   ││││││││ │││││ │││  0x00007f27aad18ec6:   vmulsd %xmm5,%xmm3,%xmm3
   0.71%   │   ││││││││ │││││ │││  0x00007f27aad18eca:   vmovdqu %xmm0,%xmm1
   0.08%   │   ││││││││ │││││ │││  0x00007f27aad18ece:   vmulsd %xmm2,%xmm0,%xmm0
   0.69%   │   ││││││││ │││││ │││  0x00007f27aad18ed2:   shr    $0x1e,%edi
   0.00%   │   ││││││││ │││││ │││  0x00007f27aad18ed5:   vaddsd %xmm3,%xmm1,%xmm1
   0.97%   │   ││││││││ │││││ │││  0x00007f27aad18ed9:   vmulsd %xmm2,%xmm3,%xmm3
   0.45%   │   ││││││││ │││││ │││  0x00007f27aad18edd:   add    %esi,%edi
   0.00%   │   ││││││││ │││││ │││  0x00007f27aad18edf:   xor    %esi,%edi
           │   ││││││││ │││││ │││  0x00007f27aad18ee1:   vmulsd %xmm1,%xmm7,%xmm7
   1.30%   │   ││││││││ │││││ │││  0x00007f27aad18ee5:   mov    %edi,%eax
   0.01%   │   ││││││││ │││││ │││  0x00007f27aad18ee7:   vaddsd %xmm3,%xmm7,%xmm7
   1.72%   │   ││││││││ │││││ │││  0x00007f27aad18eeb:   vmovdqu %xmm0,%xmm2
   0.01%   │   ││││││││ │││││ │││  0x00007f27aad18eef:   vaddsd %xmm7,%xmm0,%xmm0
   1.83%   │   ││││││││ │││││ │││  0x00007f27aad18ef3:   vsubsd %xmm0,%xmm2,%xmm2
   1.78%   │   ││││││││ │││││ │││  0x00007f27aad18ef7:   vaddsd %xmm2,%xmm7,%xmm7
   1.82%   │   ││││││││ │││││ │││  0x00007f27aad18efb:   vmovdqu -0x1c93(%rip),%xmm1        # 0x00007f27aad17270
   0.00%   │   ││││││││ │││││ │││  0x00007f27aad18f03:   vmovddup %xmm0,%xmm0
           │   ││││││││ │││││ │││  0x00007f27aad18f07:   vmovdqu -0x1caf(%rip),%xmm4        # 0x00007f27aad17260
           │   ││││││││ │││││ │││  0x00007f27aad18f0f:   vandpd %xmm0,%xmm4,%xmm4
   0.47%   │   ││││││││ │││││ │││  0x00007f27aad18f13:   vmulpd %xmm0,%xmm1,%xmm1
           │   ││││││││ │││││ │││  0x00007f27aad18f17:   vmovddup %xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007f27aad18f1b:   vmovdqu -0x1ce3(%rip),%xmm5        # 0x00007f27aad17240
           │   ││││││││ │││││ │││  0x00007f27aad18f23:   vmovdqu -0x1cdb(%rip),%xmm6        # 0x00007f27aad17250
   0.44%   │   ││││││││ │││││ │││  0x00007f27aad18f2b:   vpor   %xmm4,%xmm5,%xmm5
           │   ││││││││ │││││ │││  0x00007f27aad18f2f:   vaddpd %xmm5,%xmm1,%xmm1
   0.17%   │   ││││││││ │││││ │││  0x00007f27aad18f33:   vmovdqu %xmm1,%xmm5
           │   ││││││││ │││││ │││  0x00007f27aad18f37:   vunpckhpd %xmm5,%xmm5,%xmm5
   0.51%   │   ││││││││ │││││ │││  0x00007f27aad18f3b:   vcvttsd2si %xmm5,%edx
   2.54%   │   ││││││││ │││││ │││  0x00007f27aad18f3f:   vcvttpd2dq %xmm1,%xmm1
   0.01%   │   ││││││││ │││││ │││  0x00007f27aad18f43:   vcvtdq2pd %xmm1,%xmm1
   1.28%   │   ││││││││ │││││ │││  0x00007f27aad18f47:   vmulpd %xmm6,%xmm1,%xmm1
   1.77%   │   ││││││││ │││││ │││  0x00007f27aad18f4b:   vmovdqu -0x1cd3(%rip),%xmm3        # 0x00007f27aad17280
           │   ││││││││ │││││ │││  0x00007f27aad18f53:   vmovq  -0x1d4b(%rip),%xmm5        # 0x00007f27aad17210
           │   ││││││││ │││││ │││  0x00007f27aad18f5b:   shl    $0x4,%eax
           │   ││││││││ │││││ │││  0x00007f27aad18f5e:   add    $0x72900,%edx
   0.47%   │   ││││││││ │││││ │││  0x00007f27aad18f64:   vmovdqu -0x1cdc(%rip),%xmm4        # 0x00007f27aad17290
           │   ││││││││ │││││ │││  0x00007f27aad18f6c:   vmulpd %xmm1,%xmm3,%xmm3
   1.46%   │   ││││││││ │││││ │││  0x00007f27aad18f70:   add    %eax,%edx
           │   ││││││││ │││││ │││  0x00007f27aad18f72:   and    $0x1f,%edx
           │   ││││││││ │││││ │││  0x00007f27aad18f75:   vmulsd %xmm1,%xmm5,%xmm5
   0.20%   │   ││││││││ │││││ │││  0x00007f27aad18f79:   mov    %edx,%ecx
   0.31%   │   ││││││││ │││││ │││  0x00007f27aad18f7b:   vmulpd %xmm1,%xmm4,%xmm4
   0.06%   │   ││││││││ │││││ │││  0x00007f27aad18f7f:   shl    %ecx
           │   ││││││││ │││││ │││  0x00007f27aad18f81:   vsubpd %xmm3,%xmm0,%xmm0
   1.07%   │   ││││││││ │││││ │││  0x00007f27aad18f85:   vmulpd -0x1ced(%rip),%xmm1,%xmm1        # 0x00007f27aad172a0
   0.01%   │   ││││││││ │││││ │││  0x00007f27aad18f8d:   add    %ecx,%edx
           │   ││││││││ │││││ │││  0x00007f27aad18f8f:   shl    $0x2,%ecx
           │   ││││││││ │││││ │││  0x00007f27aad18f92:   add    %ecx,%edx
   0.42%   │   ││││││││ │││││ │││  0x00007f27aad18f94:   vaddsd %xmm0,%xmm5,%xmm5
   1.38%   │   ││││││││ │││││ │││  0x00007f27aad18f98:   vmovdqu %xmm0,%xmm2
   0.01%   │   ││││││││ │││││ │││  0x00007f27aad18f9c:   vsubpd %xmm4,%xmm0,%xmm0
   0.32%   │   ││││││││ │││││ │││  0x00007f27aad18fa0:   vmovq  -0x1d90(%rip),%xmm6        # 0x00007f27aad17218
           │   ││││││││ │││││ │││  0x00007f27aad18fa8:   shl    $0x4,%edx
   0.15%   │   ││││││││ │││││ │││  0x00007f27aad18fab:   lea    -0x1d02(%rip),%rax        # 0x00007f27aad172b0
   0.00%   │   ││││││││ │││││ │││  0x00007f27aad18fb2:   vandpd -0x70a(%rip),%xmm5,%xmm5        # 0x00007f27aad188b0
   0.46%   │   ││││││││ │││││ │││  0x00007f27aad18fba:   vmovdqu %xmm0,%xmm3
   0.00%   │   ││││││││ │││││ │││  0x00007f27aad18fbe:   add    %rdx,%rax
   0.12%   │   ││││││││ │││││ │││  0x00007f27aad18fc1:   vsubpd %xmm0,%xmm2,%xmm2
   1.48%   │   ││││││││ │││││ │││  0x00007f27aad18fc5:   vunpckhpd %xmm0,%xmm0,%xmm0
   0.04%   │   ││││││││ │││││ │││  0x00007f27aad18fc9:   vdivsd %xmm5,%xmm6,%xmm6
   4.30%   │   ││││││││ │││││ │││  0x00007f27aad18fcd:   vsubpd %xmm4,%xmm2,%xmm2
   0.00%   │   ││││││││ │││││ │││  0x00007f27aad18fd1:   vsubsd %xmm5,%xmm3,%xmm3
           │   ││││││││ │││││ │││  0x00007f27aad18fd5:   vsubpd %xmm1,%xmm2,%xmm2
           │   ││││││││ │││││ │││  0x00007f27aad18fd9:   vmovdqu 0x30(%rax),%xmm1
   0.42%   │   ││││││││ │││││ │││  0x00007f27aad18fde:   vaddpd %xmm7,%xmm2,%xmm2
   0.18%   │   ││││││││ │││││ │││  0x00007f27aad18fe2:   vmovdqu 0x10(%rax),%xmm7
           │   ││││││││ │││││ │││  0x00007f27aad18fe7:   vmulpd %xmm0,%xmm7,%xmm7
   0.00%   │   ││││││││ │││││ │││  0x00007f27aad18feb:   vmovdqu 0x60(%rax),%xmm4
   0.26%   │   ││││││││ │││││ │││  0x00007f27aad18ff0:   vmulpd %xmm0,%xmm1,%xmm1
   0.14%   │   ││││││││ │││││ │││  0x00007f27aad18ff4:   vmulpd %xmm0,%xmm4,%xmm4
           │   ││││││││ │││││ │││  0x00007f27aad18ff8:   vaddsd %xmm3,%xmm2,%xmm2
   1.21%   │   ││││││││ │││││ │││  0x00007f27aad18ffc:   vmovdqu %xmm0,%xmm3
   0.00%   │   ││││││││ │││││ │││  0x00007f27aad19000:   vmulpd %xmm0,%xmm0,%xmm0
           │   ││││││││ │││││ │││  0x00007f27aad19004:   vaddpd (%rax),%xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007f27aad19008:   vaddpd 0x20(%rax),%xmm1,%xmm1
   0.46%   │   ││││││││ │││││ │││  0x00007f27aad1900d:   vmulpd %xmm0,%xmm1,%xmm1
   0.00%   │   ││││││││ │││││ │││  0x00007f27aad19011:   vaddpd 0x50(%rax),%xmm4,%xmm4
           │   ││││││││ │││││ │││  0x00007f27aad19016:   vaddpd %xmm1,%xmm7,%xmm7
   0.01%   │   ││││││││ │││││ │││  0x00007f27aad1901a:   vmovdqu 0x70(%rax),%xmm1
   0.44%   │   ││││││││ │││││ │││  0x00007f27aad1901f:   vmulpd %xmm0,%xmm1,%xmm1
   0.00%   │   ││││││││ │││││ │││  0x00007f27aad19023:   vmulpd %xmm0,%xmm0,%xmm0
           │   ││││││││ │││││ │││  0x00007f27aad19027:   vaddpd %xmm1,%xmm4,%xmm4
   0.01%   │   ││││││││ │││││ │││  0x00007f27aad1902b:   vmovdqu 0x40(%rax),%xmm1
   0.45%   │   ││││││││ │││││ │││  0x00007f27aad19030:   vmulpd %xmm0,%xmm1,%xmm1
           │   ││││││││ │││││ │││  0x00007f27aad19034:   vaddpd %xmm1,%xmm7,%xmm7
   0.15%   │   ││││││││ │││││ │││  0x00007f27aad19038:   vmovdqu %xmm3,%xmm1
           │   ││││││││ │││││ │││  0x00007f27aad1903c:   vmulpd %xmm0,%xmm3,%xmm3
   0.38%   │   ││││││││ │││││ │││  0x00007f27aad19040:   vmulsd %xmm0,%xmm0,%xmm0
   0.00%   │   ││││││││ │││││ │││  0x00007f27aad19044:   vmulpd 0x90(%rax),%xmm1,%xmm1
   0.12%   │   ││││││││ │││││ │││  0x00007f27aad1904c:   vmulpd %xmm3,%xmm4,%xmm4
   0.01%   │   ││││││││ │││││ │││  0x00007f27aad19050:   vmovdqu %xmm1,%xmm3
   0.39%   │   ││││││││ │││││ │││  0x00007f27aad19054:   vaddpd %xmm4,%xmm7,%xmm7
   0.94%   │   ││││││││ │││││ │││  0x00007f27aad19058:   vmovdqu %xmm1,%xmm4
   0.00%   │   ││││││││ │││││ │││  0x00007f27aad1905c:   vmulsd %xmm7,%xmm0,%xmm0
   1.64%   │   ││││││││ │││││ │││  0x00007f27aad19060:   vunpckhpd %xmm7,%xmm7,%xmm7
   0.00%   │   ││││││││ │││││ │││  0x00007f27aad19064:   vaddsd %xmm7,%xmm0,%xmm0
   1.77%   │   ││││││││ │││││ │││  0x00007f27aad19068:   vunpckhpd %xmm1,%xmm1,%xmm1
           │   ││││││││ │││││ │││  0x00007f27aad1906c:   vaddsd %xmm1,%xmm3,%xmm3
   0.00%   │   ││││││││ │││││ │││  0x00007f27aad19070:   vsubsd %xmm3,%xmm4,%xmm4
           │   ││││││││ │││││ │││  0x00007f27aad19074:   vaddsd %xmm4,%xmm1,%xmm1
   0.42%   │   ││││││││ │││││ │││  0x00007f27aad19078:   vmovdqu %xmm2,%xmm4
           │   ││││││││ │││││ │││  0x00007f27aad1907c:   vmovq  0x90(%rax),%xmm7
           │   ││││││││ │││││ │││  0x00007f27aad19084:   vunpckhpd %xmm2,%xmm2,%xmm2
           │   ││││││││ │││││ │││  0x00007f27aad19088:   vaddsd 0x98(%rax),%xmm7,%xmm7
   0.46%   │   ││││││││ │││││ │││  0x00007f27aad19090:   vmulsd %xmm2,%xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007f27aad19094:   vaddsd 0x88(%rax),%xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007f27aad1909c:   vaddsd %xmm1,%xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007f27aad190a0:   vaddsd %xmm7,%xmm0,%xmm0
   0.92%   │   ││││││││ │││││ │││  0x00007f27aad190a4:   vmovq  -0x1e94(%rip),%xmm7        # 0x00007f27aad17218
   0.00%   │   ││││││││ │││││ │││  0x00007f27aad190ac:   vmulsd %xmm6,%xmm4,%xmm4
           │   ││││││││ │││││ │││  0x00007f27aad190b0:   vmovq  0xa8(%rax),%xmm2
   0.00%   │   ││││││││ │││││ │││  0x00007f27aad190b8:   vandpd %xmm6,%xmm2,%xmm2
   0.46%   │   ││││││││ │││││ │││  0x00007f27aad190bc:   vmulsd %xmm2,%xmm5,%xmm5
           │   ││││││││ │││││ │││  0x00007f27aad190c0:   vmulsd 0xa0(%rax),%xmm6,%xmm6
           │   ││││││││ │││││ │││  0x00007f27aad190c8:   vsubsd %xmm5,%xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007f27aad190cc:   vsubsd 0x80(%rax),%xmm2,%xmm2
   0.45%   │   ││││││││ │││││ │││  0x00007f27aad190d4:   vsubsd %xmm4,%xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007f27aad190d8:   vmulsd %xmm6,%xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007f27aad190dc:   vmovdqu %xmm3,%xmm4
           │   ││││││││ │││││ │││  0x00007f27aad190e0:   vsubsd %xmm2,%xmm3,%xmm3
   0.45%   │   ││││││││ │││││ │││  0x00007f27aad190e4:   vaddsd %xmm3,%xmm2,%xmm2
           │   ││││││││ │││││ │││  0x00007f27aad190e8:   vsubsd %xmm2,%xmm4,%xmm4
   0.00%   │   ││││││││ │││││ │││  0x00007f27aad190ec:   vaddsd %xmm4,%xmm0,%xmm0
   0.42%   │   ││││││││ │││││ │││  0x00007f27aad190f0:   vsubsd %xmm7,%xmm0,%xmm0
   1.78%   │   ││││││││ │││││ │││  0x00007f27aad190f4:   vaddsd %xmm3,%xmm0,%xmm0
   1.82%   │   ││││││││╭│││││ │││  0x00007f27aad190f8:   jmp    0x00007f27aad19219
           │   ││││││↘│││││││ │││  0x00007f27aad190fd:   add    $0x40,%edx
           │   ││││││ │││││││ │││  0x00007f27aad19100:   mov    %r10,%r9
           │   ││││││ │││││││ │││  0x00007f27aad19103:   mov    %r8,%r10
           │   ││││││ │││││││ │││  0x00007f27aad19106:   mov    $0x0,%r8d
           │   ││││││ │││││││ │││  0x00007f27aad1910c:   cmp    $0x0,%r9
           │   ││││││ ││╰││││ │││  0x00007f27aad19110:   jne    0x00007f27aad18e4a
           │   ││││││ ││ ││││ │││  0x00007f27aad19116:   add    $0x40,%edx
           │   ││││││ ││ ││││ │││  0x00007f27aad19119:   mov    %r10,%r9
           │   ││││││ ││ ││││ │││  0x00007f27aad1911c:   mov    %r8,%r10
           │   ││││││ ││ ││││ │││  0x00007f27aad1911f:   nop
           │   ││││││ ││ ││││ │││  0x00007f27aad19120:   cmp    $0x0,%r9
           │   ││││││ ││ ╰│││ │││  0x00007f27aad19124:   jne    0x00007f27aad18e4a
           │   ││││││ ││  ╰││ │││  0x00007f27aad1912a:   jmp    0x00007f27aad18e78
   0.62%   │   ││││││ ↘│   ╰│ │││  0x00007f27aad1912f:   je     0x00007f27aad18e78
   0.37%   │   ││││││  │    │ │││  0x00007f27aad19135:   neg    %ecx
   0.09%   │   ││││││  │    │ │││  0x00007f27aad19137:   shr    %cl,%r10
   0.98%   │   ││││││  │    │ │││  0x00007f27aad1913a:   mov    %r9,%rax
   0.05%   │   ││││││  │    │ │││  0x00007f27aad1913d:   shr    %cl,%r9
   0.47%   │   ││││││  │    │ │││  0x00007f27aad19140:   sub    %ecx,%edx
   0.03%   │   ││││││  │    │ │││  0x00007f27aad19142:   neg    %ecx
           │   ││││││  │    │ │││  0x00007f27aad19144:   add    $0x40,%ecx
   0.16%   │   ││││││  │    │ │││  0x00007f27aad19147:   shl    %cl,%rax
   0.50%   │   ││││││  │    │ │││  0x00007f27aad1914a:   or     %rax,%r10
   0.20%   │   ││││││  │    ╰ │││  0x00007f27aad1914d:   jmp    0x00007f27aad18e78
           │   ││││↘│  │      │││  0x00007f27aad19152:   not    %ecx
           │   ││││ │  │      │││  0x00007f27aad19154:   shl    $0x20,%r9
           │   ││││ │  │      │││  0x00007f27aad19158:   or     %r11,%r9
           │   ││││ │  │      │││  0x00007f27aad1915b:   shl    %cl,%r9
           │   ││││ │  │      │││  0x00007f27aad1915e:   mov    %r9,%rdi
           │   ││││ │  │      │││  0x00007f27aad19161:   test   $0x80000000,%r9d
           │   ││││ │  │     ╭│││  0x00007f27aad19168:   jne    0x00007f27aad191c5
           │   ││││ │  │     ││││  0x00007f27aad1916e:   shr    %cl,%r9d
           │   ││││ │  │     ││││  0x00007f27aad19171:   mov    $0x0,%ebx
           │   ││││ │  │     ││││  0x00007f27aad19176:   shr    $0x2,%rdi
           │   ││││ │  │     │╰││  0x00007f27aad1917a:   jmp    0x00007f27aad18e3c
   0.16%   │   ││││ ↘  │     │ ││  0x00007f27aad1917f:   shr    %cl,%r9d
   0.35%   │   ││││    │     │ ││  0x00007f27aad19182:   mov    $0x40000000,%ebx
           │   ││││    │     │ ││  0x00007f27aad19187:   shr    %cl,%ebx
   0.20%   │   ││││    │     │ ││  0x00007f27aad19189:   shl    $0x20,%r9
   0.01%   │   ││││    │     │ ││  0x00007f27aad1918d:   or     %r11,%r9
   0.02%   │   ││││    │     │ ││  0x00007f27aad19190:   shl    $0x20,%rbx
   0.04%   │   ││││    │     │ ││  0x00007f27aad19194:   add    $0x40000000,%edi
   0.17%   │   ││││    │     │ ││  0x00007f27aad1919a:   mov    $0x0,%ecx
           │   ││││    │     │ ││  0x00007f27aad1919f:   mov    $0x0,%r11d
   0.02%   │   ││││    │     │ ││  0x00007f27aad191a5:   sub    %r8,%rcx
   0.04%   │   ││││    │     │ ││  0x00007f27aad191a8:   sbb    %r10,%r11
   0.18%   │   ││││    │     │ ││  0x00007f27aad191ab:   sbb    %r9,%rbx
   0.02%   │   ││││    │     │ ││  0x00007f27aad191ae:   mov    %rcx,%r8
   0.02%   │   ││││    │     │ ││  0x00007f27aad191b1:   mov    %r11,%r10
   0.05%   │   ││││    │     │ ││  0x00007f27aad191b4:   mov    %rbx,%r9
   0.15%   │   ││││    │     │ ││  0x00007f27aad191b7:   mov    $0x8000,%ebx
   0.02%   │   ││││    │     │ ││  0x00007f27aad191bc:   nopl   0x0(%rax)
   0.02%   │   ││││    │     │ ╰│  0x00007f27aad191c0:   jmp    0x00007f27aad18e3c
           │   ││││    │     ↘  │  0x00007f27aad191c5:   shr    %cl,%r9d
           │   ││││    │        │  0x00007f27aad191c8:   movabs $0x100000000,%rbx
           │   ││││    │        │  0x00007f27aad191d2:   shr    %cl,%rbx
           │   ││││    │        │  0x00007f27aad191d5:   mov    $0x0,%ecx
           │   ││││    │        │  0x00007f27aad191da:   mov    $0x0,%r11d
           │   ││││    │        │  0x00007f27aad191e0:   sub    %r8,%rcx
           │   ││││    │        │  0x00007f27aad191e3:   sbb    %r10,%r11
           │   ││││    │        │  0x00007f27aad191e6:   sbb    %r9,%rbx
           │   ││││    │        │  0x00007f27aad191e9:   mov    %rcx,%r8
           │   ││││    │        │  0x00007f27aad191ec:   mov    %r11,%r10
           │   ││││    │        │  0x00007f27aad191ef:   mov    %rbx,%r9
           │   ││││    │        │  0x00007f27aad191f2:   mov    $0x8000,%ebx
           │   ││││    │        │  0x00007f27aad191f7:   shr    $0x2,%rdi
           │   ││││    │        │  0x00007f27aad191fb:   add    $0x40000000,%edi
           │   ││││    │        ╰  0x00007f27aad19201:   jmp    0x00007f27aad18e3c
           │   │││↘    │           0x00007f27aad19206:   vmovq  0x8(%rsp),%xmm0
           │   │││     │           0x00007f27aad1920c:   vmulsd -0x200c(%rip),%xmm0,%xmm0        # 0x00007f27aad17208
           │   │││     │           0x00007f27aad19214:   vmovq  %xmm0,(%rsp)
   0.00%   ↘   ↘↘↘     ↘           0x00007f27aad19219:   add    $0x10,%rsp
                                   0x00007f27aad1921d:   pop    %rbx
                                   0x00007f27aad1921e:   add    $0x18,%rsp
   0.45%                           0x00007f27aad19222:   ret    
                                   0x00007f27aad19223:   hlt    
                                   0x00007f27aad19224:   hlt    
                                   0x00007f27aad19225:   hlt    
                                   0x00007f27aad19226:   hlt    
                                   0x00007f27aad19227:   hlt    
                                 --------------------------------------------------------------------------------
                                 - - - [OOP MAPS]- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                 ImmutableOopMapSet contains 0 OopMaps
                                 - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                 <nmethod compile_id='1038' compile_kind='osr' compiler='jvmci' level='4' entry='0x00007f27ab192300' size='4192' address='0x00007f27ab192110' relocation_offset='344' consts_offset='432' insts_offset='496' stub_offset='1622' scopes_data_offset='1688' scopes_pcs_offset='2384' dependencies_offset='4160' oops_offset='1624' metadata_offset='1632' method='com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark manual_loop_hoisting_and_sinking ()D' bytes='86' count='28' backedge_count='444177' iicount='28' stamp='27,930'/>
....................................................................................................
  82.17%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking, version 3, compile id 1039 

                0x00007f27ab193394:   cmp    %r10,%rax
                0x00007f27ab193397:   jne    0x00007f27aaaf9080           ;   {runtime_call ic_miss_stub}
                0x00007f27ab19339d:   data16 xchg %ax,%ax
              [Verified Entry Point]
                0x00007f27ab1933a0:   mov    %eax,-0x14000(%rsp)
                0x00007f27ab1933a7:   sub    $0x18,%rsp
                0x00007f27ab1933ab:   nop
                0x00007f27ab1933ac:   cmpl   $0x1,0x20(%r15)
                0x00007f27ab1933b4:   jne    0x00007f27ab193763
                0x00007f27ab1933ba:   mov    %rbp,0x10(%rsp)
   0.00%        0x00007f27ab1933bf:   mov    0xc(%rsi),%ebp
                0x00007f27ab1933c2:   vmovsd -0x8a(%rip),%xmm8        # 0x00007f27ab193340
                                                                          ;   {section_word}
                0x00007f27ab1933ca:   vxorpd %xmm9,%xmm9,%xmm9            ;*dconst_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@0 (line 90)
                0x00007f27ab1933cf:   cmp    $0x2,%ebp
          ╭     0x00007f27ab1933d2:   jl     0x00007f27ab193453           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@29 (line 96)
          │     0x00007f27ab1933d8:   vmovsd 0x10(%rsi),%xmm10            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@4 (line 91)
          │     0x00007f27ab1933dd:   vmovapd %xmm10,%xmm0
          │     0x00007f27ab1933e2:   call   0x00007f27aad189c0           ;   {runtime_call Stub&lt;AMD64MathStub.tan&gt;}
          │     0x00007f27ab1933e7:   nop
          │     0x00007f27ab1933e8:   vmovapd %xmm0,%xmm11                ;* unwind (locked if synchronized)
          │                                                               ; - java.lang.Math::tan@-3
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@17 (line 95)
          │     0x00007f27ab1933ec:   vmulsd %xmm9,%xmm10,%xmm0
          │     0x00007f27ab1933f1:   call   0x00007f27aad189c0           ;   {runtime_call Stub&lt;AMD64MathStub.tan&gt;}
          │     0x00007f27ab1933f6:   nop
          │     0x00007f27ab1933f7:   vaddsd %xmm0,%xmm11,%xmm1           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@49 (line 99)
          │     0x00007f27ab1933fb:   vmulsd %xmm0,%xmm11,%xmm0           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@56 (line 100)
          │     0x00007f27ab1933ff:   vsubsd %xmm0,%xmm8,%xmm0            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@57 (line 100)
          │     0x00007f27ab193403:   vdivsd %xmm0,%xmm1,%xmm0            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@63 (line 101)
          │     0x00007f27ab193407:   vaddsd %xmm9,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@64 (line 101)
          │     0x00007f27ab19340c:   vmovapd %xmm0,%xmm9
          │     0x00007f27ab193410:   mov    $0x2,%r13d
          │╭    0x00007f27ab193416:   jmp    0x00007f27ab19344e           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@25 (line 96)
          ││    0x00007f27ab19341b:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@29 (line 96)
          ││↗   0x00007f27ab193420:   mov    %r13d,%r10d
          │││   0x00007f27ab193423:   dec    %r10d                        ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@35 (line 98)
   0.51%  │││   0x00007f27ab193426:   vcvtsi2sd %r10d,%xmm0,%xmm0         ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@36 (line 98)
   0.00%  │││   0x00007f27ab19342b:   vmulsd %xmm10,%xmm0,%xmm0
   1.51%  │││   0x00007f27ab193430:   call   0x00007f27aad189c0           ;   {runtime_call Stub&lt;AMD64MathStub.tan&gt;}
   0.01%  │││   0x00007f27ab193435:   nop
          │││   0x00007f27ab193436:   vaddsd %xmm11,%xmm0,%xmm1           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@49 (line 99)
   1.40%  │││   0x00007f27ab19343b:   vmulsd %xmm0,%xmm11,%xmm0           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@56 (line 100)
   0.04%  │││   0x00007f27ab19343f:   vsubsd %xmm0,%xmm8,%xmm0            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@57 (line 100)
   1.85%  │││   0x00007f27ab193443:   vdivsd %xmm0,%xmm1,%xmm0            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@63 (line 101)
   6.43%  │││   0x00007f27ab193447:   vaddsd %xmm0,%xmm9,%xmm9            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@64 (line 101)
   1.84%  │││   0x00007f27ab19344b:   inc    %r13d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@67 (line 96)
   0.00%  │↘│   0x00007f27ab19344e:   cmp    %r13d,%ebp
          │ ╰   0x00007f27ab193451:   jg     0x00007f27ab193420           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@29 (line 96)
          ↘     0x00007f27ab193453:   vmovq  %xmm9,%r10                   ;* unwind (locked if synchronized)
                                                                          ; - java.lang.Double::doubleToRawLongBits@-3
                                                                          ; - java.lang.FdLibm::__LO@1 (line 86)
                                                                          ; - java.lang.FdLibm$Atan::compute@35 (line 1271)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab193458:   mov    %r10,%r11
                0x00007f27ab19345b:   sar    $0x20,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm::__HI@8 (line 105)
                                                                          ; - java.lang.FdLibm$Atan::compute@1 (line 1267)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab19345f:   mov    %r11d,%r11d                  ;*l2i {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm::__HI@9 (line 105)
                                                                          ; - java.lang.FdLibm$Atan::compute@1 (line 1267)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab193462:   mov    %r11d,%r8d
                0x00007f27ab193465:   and    $0x7fffffff,%r8d             ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@10 (line 1268)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab19346c:   cmp    $0x44100000,%r8d
             ╭  0x00007f27ab193473:   jb     0x00007f27ab1934b1           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.lang.FdLibm$Atan::compute@17 (line 1269)
             │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
             │                                                            ; - java.lang.Math::atan@1 (line 279)
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
             │  0x00007f27ab193479:   vaddsd %xmm9,%xmm9,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.lang.FdLibm$Atan::compute@43 (line 1272)
             │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
             │                                                            ; - java.lang.Math::atan@1 (line 279)
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
             │  0x00007f27ab19347e:   xchg   %ax,%ax
             │  0x00007f27ab193480:   cmp    $0x7ff00001,%r8d
             │  0x00007f27ab193487:   jb     0x00007f27ab193605
             │  0x00007f27ab19348d:   call   0x00007f27aad189c0           ;   {runtime_call Stub&lt;AMD64MathStub.tan&gt;}
             │  0x00007f27ab193492:   nop
             │  0x00007f27ab193493:   mov    0x10(%rsp),%rbp
             │  0x00007f27ab193498:   add    $0x18,%rsp
             │  0x00007f27ab19349c:   nopl   0x0(%rax)
             │  0x00007f27ab1934a0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
             │  0x00007f27ab1934a7:   ja     0x00007f27ab193773
             │  0x00007f27ab1934ad:   vzeroupper 
             │  0x00007f27ab1934b0:   ret                                 ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.lang.FdLibm$Atan::compute@17 (line 1269)
             │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
             │                                                            ; - java.lang.Math::atan@1 (line 279)
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
   0.00%     ↘  0x00007f27ab1934b1:   cmp    $0x3fdc0000,%r8d
                0x00007f27ab1934b8:   jb     0x00007f27ab193645           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@79 (line 1279)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab1934be:   vmovapd %xmm9,%xmm0
                0x00007f27ab1934c3:   vandpd -0x15b(%rip),%xmm0,%xmm0        # 0x00007f27ab193370
                                                                          ;   {section_word}
                0x00007f27ab1934cb:   cmp    $0x3ff30000,%r8d
                0x00007f27ab1934d2:   jb     0x00007f27ab19366e           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@116 (line 1288)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab1934d8:   nopl   0x0(%rax,%rax,1)
                0x00007f27ab1934e0:   cmp    $0x40038000,%r8d
                0x00007f27ab1934e7:   jb     0x00007f27ab1936f8
                0x00007f27ab1934ed:   vmovsd -0x1ad(%rip),%xmm1        # 0x00007f27ab193348
                                                                          ;   {section_word}
                0x00007f27ab1934f5:   vdivsd %xmm0,%xmm1,%xmm0            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@194 (line 1302)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab1934f9:   mov    $0x3,%r10d
                0x00007f27ab1934ff:   movabs $0x7fed43908,%r8             ;   {oop([D{0x00000007fed43908})}
                0x00007f27ab193509:   vmovsd 0x60(%r8),%xmm1              ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@246 (line 1310)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab19350f:   vmovsd 0x50(%r8),%xmm2              ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@239 (line 1310)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab193515:   vmovsd 0x40(%r8),%xmm3              ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@232 (line 1310)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab19351b:   vmovsd 0x30(%r8),%xmm4              ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@225 (line 1310)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab193521:   vmovsd 0x20(%r8),%xmm5              ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@219 (line 1310)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab193527:   vmovsd 0x10(%r8),%xmm6              ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@213 (line 1310)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab19352d:   vmovsd 0x58(%r8),%xmm7              ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@291 (line 1311)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab193533:   vmovsd 0x48(%r8),%xmm8              ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@284 (line 1311)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab193539:   vmovsd 0x38(%r8),%xmm10             ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@277 (line 1311)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab19353f:   vmovsd 0x28(%r8),%xmm11             ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@271 (line 1311)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab193545:   vmulsd %xmm0,%xmm0,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@198 (line 1307)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab193549:   vmulsd %xmm12,%xmm12,%xmm13         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@205 (line 1308)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab19354e:   vmulsd %xmm1,%xmm13,%xmm1           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@247 (line 1310)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab193552:   vaddsd %xmm2,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@248 (line 1310)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab193556:   vmulsd %xmm13,%xmm1,%xmm1           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@249 (line 1310)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab19355b:   vaddsd %xmm3,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@250 (line 1310)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab19355f:   vmulsd %xmm13,%xmm1,%xmm1           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@251 (line 1310)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab193564:   vaddsd %xmm4,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@252 (line 1310)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab193568:   vmulsd %xmm13,%xmm1,%xmm1           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@253 (line 1310)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab19356d:   vaddsd %xmm5,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@254 (line 1310)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab193571:   vmulsd %xmm13,%xmm1,%xmm1           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@255 (line 1310)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab193576:   vaddsd %xmm6,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@256 (line 1310)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab19357a:   vmulsd %xmm12,%xmm1,%xmm1           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@257 (line 1310)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab19357f:   vmulsd %xmm13,%xmm7,%xmm2           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@292 (line 1311)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab193584:   vaddsd %xmm8,%xmm2,%xmm2            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@293 (line 1311)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab193589:   vmulsd %xmm13,%xmm2,%xmm2           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@294 (line 1311)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab19358e:   vaddsd %xmm10,%xmm2,%xmm2           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@295 (line 1311)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab193593:   vmulsd %xmm13,%xmm2,%xmm2           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@296 (line 1311)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab193598:   vaddsd %xmm11,%xmm2,%xmm2           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@297 (line 1311)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab19359d:   vmulsd %xmm13,%xmm2,%xmm2           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@298 (line 1311)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab1935a2:   vaddsd 0x18(%r8),%xmm2,%xmm2        ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@299 (line 1311)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab1935a8:   vmulsd %xmm13,%xmm2,%xmm2           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@300 (line 1311)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab1935ad:   vaddsd %xmm2,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@314 (line 1313)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab1935b1:   vmulsd %xmm0,%xmm1,%xmm1            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@315 (line 1313)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab1935b5:   cmp    $0xffffffff,%r10d
                0x00007f27ab1935b9:   je     0x00007f27ab193665           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@305 (line 1312)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab1935bf:   nop
                0x00007f27ab1935c0:   cmp    $0x4,%r10d
                0x00007f27ab1935c4:   jae    0x00007f27ab193740
                0x00007f27ab1935ca:   movabs $0x7fed438d8,%r8             ;   {oop([D{0x00000007fed438d8})}
                0x00007f27ab1935d4:   movabs $0x7fed438a8,%r9             ;   {oop([D{0x00000007fed438a8})}
                0x00007f27ab1935de:   vmovsd 0x10(%r9,%r10,8),%xmm2       ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@323 (line 1315)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
   0.00%        0x00007f27ab1935e5:   vsubsd 0x10(%r8,%r10,8),%xmm1,%xmm1 ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@337 (line 1315)
                                                                          ; - java.lang.StrictMath::atan@1 (line 227)
                                                                          ; - java.lang.Math::atan@1 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 105)
                0x00007f27ab1935ec:   vsubsd %xmm0,%xmm1,%xmm0            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.FdLibm$Atan::compute@339 (line 1315)
....................................................................................................
  13.59%  <total for region 2>

....[Hottest Regions]...............................................................................
  82.17%                        <unknown> 
  13.59%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking, version 3, compile id 1039 
   0.62%                kernel  [unknown] 
   0.32%                kernel  [unknown] 
   0.27%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%             libjvm.so  stringStream::~stringStream 
   0.04%                kernel  [unknown] 
   1.79%  <...other 369 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  82.34%                        <unknown> 
  13.59%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking, version 3, compile id 1039 
   3.48%                kernel  [unknown] 
   0.04%             libjvm.so  stringStream::~stringStream 
   0.04%             libjvm.so  defaultStream::hold 
   0.03%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.03%             libc.so.6  __vfprintf_internal 
   0.02%             libc.so.6  __GI___libc_write 
   0.02%             libjvm.so  xmlStream::write_text 
   0.02%             libjvm.so  ElfSymbolTable::lookup 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libc.so.6  _IO_fwrite 
   0.02%             libc.so.6  syscall 
   0.02%             libc.so.6  _IO_setb 
   0.02%             libc.so.6  __strchr_avx2 
   0.01%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.01%             libjvm.so  RelocIterator::initialize 
   0.01%             libc.so.6  __vsnprintf_internal 
   0.01%             libc.so.6  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%             libjvm.so  readConfiguration0 
   0.27%  <...other 103 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  82.34%                      
  13.59%        jvmci, level 4
   3.48%                kernel
   0.30%             libjvm.so
   0.22%             libc.so.6
   0.04%        hsdis-amd64.so
   0.03%           interpreter
   0.01%                [vdso]
   0.01%  ld-linux-x86-64.so.2
   0.00%           c1, level 3
   0.00%         perf-5504.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:04:33

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

Benchmark                                                              (iterations)  Mode  Cnt     Score     Error  Units
LoopInvariantCodeMotionBenchmark.initial_loop                                 16384  avgt    5  4820.710 ± 202.562  us/op
LoopInvariantCodeMotionBenchmark.initial_loop:asm                             16384  avgt            NaN              ---
LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking             16384  avgt    5  2904.622 ±  49.256  us/op
LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking:asm         16384  avgt            NaN              ---
