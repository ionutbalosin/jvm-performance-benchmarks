# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /usr/lib/jvm/openjdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
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
# Warmup Iteration   1: 9219.589 us/op
# Warmup Iteration   2: 9276.153 us/op
# Warmup Iteration   3: 13941.733 us/op
# Warmup Iteration   4: 14255.678 us/op
# Warmup Iteration   5: 14119.748 us/op
Iteration   1: 15334.162 us/op
Iteration   2: 14325.983 us/op
Iteration   3: 14622.479 us/op
Iteration   4: 13705.081 us/op
Iteration   5: 12465.006 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.initial_loop":
  14090.542 ±(99.9%) 4163.297 us/op [Average]
  (min, avg, max) = (12465.006, 14090.542, 15334.162), stdev = 1081.195
  CI (99.9%): [9927.245, 18253.839] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.initial_loop:asm":
PrintAssembly processed: 127767 total address lines.
Perf output processed (skipped 67.739 seconds):
 Column 1: cycles (50888 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::libmTan 

                                 --------------------------------------------------------------------------------
                                 - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                 - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                 StubRoutines::libmTan [0x00007f69dbf3911c, 0x00007f69dbf39964] (2120 bytes)
                                 --------------------------------------------------------------------------------
   0.02%                           0x00007f69dbf3911c:   push   %rbp
   0.17%                           0x00007f69dbf3911d:   mov    %rsp,%rbp
   0.57%                           0x00007f69dbf39120:   push   %rbx
   0.13%                           0x00007f69dbf39121:   sub    $0x10,%rsp
   0.48%                           0x00007f69dbf39125:   vmovsd %xmm0,0x8(%rsp)
   0.03%                           0x00007f69dbf3912b:   vpextrw $0x3,%xmm0,%eax
   0.11%                           0x00007f69dbf39130:   and    $0x7fff,%eax
   0.55%                           0x00007f69dbf39135:   sub    $0x3fba,%eax
   0.06%                           0x00007f69dbf3913a:   cmp    $0x10e,%eax
          ╭                        0x00007f69dbf3913f:   ja     0x00007f69dbf39346
   0.14%  │                        0x00007f69dbf39145:   vmovdqu 0x17db89b3(%rip),%xmm5        # 0x00007f69f3cf1b00
   0.01%  │                        0x00007f69dbf3914d:   vmovdqu 0x17dbea3b(%rip),%xmm6        # 0x00007f69f3cf7b90
   0.29%  │                        0x00007f69dbf39155:   vunpcklpd %xmm0,%xmm0,%xmm0
   0.00%  │                        0x00007f69dbf39159:   vmovdqu 0x17dbea1f(%rip),%xmm4        # 0x00007f69f3cf7b80
   0.12%  │                        0x00007f69dbf39161:   vandpd %xmm0,%xmm4,%xmm4
   0.00%  │                        0x00007f69dbf39165:   vmovdqu 0x17dbea03(%rip),%xmm1        # 0x00007f69f3cf7b70
   0.27%  │                        0x00007f69dbf3916d:   vmulpd %xmm0,%xmm1,%xmm1
   0.01%  │                        0x00007f69dbf39171:   vpor   %xmm4,%xmm5,%xmm5
   0.16%  │                        0x00007f69dbf39175:   vaddpd %xmm5,%xmm1,%xmm1
   0.59%  │                        0x00007f69dbf39179:   vmovdqu %xmm1,%xmm7
   0.26%  │                        0x00007f69dbf3917d:   vunpckhpd %xmm7,%xmm7,%xmm7
   0.14%  │                        0x00007f69dbf39181:   vcvttsd2si %xmm7,%edx
   0.75%  │                        0x00007f69dbf39185:   vcvttpd2dq %xmm1,%xmm1
   0.29%  │                        0x00007f69dbf3918a:   vcvtdq2pd %xmm1,%xmm1
   0.40%  │                        0x00007f69dbf3918e:   vmulpd %xmm6,%xmm1,%xmm1
   0.95%  │                        0x00007f69dbf39192:   vmovdqu 0x17dbe9c6(%rip),%xmm3        # 0x00007f69f3cf7b60
   0.01%  │                        0x00007f69dbf3919a:   vmovq  0x17dbd31e(%rip),%xmm5        # 0x00007f69f3cf64c0
   0.00%  │                        0x00007f69dbf391a2:   add    $0x72900,%rdx
          │                        0x00007f69dbf391a9:   vmovdqu 0x17dbe99f(%rip),%xmm4        # 0x00007f69f3cf7b50
   0.43%  │                        0x00007f69dbf391b1:   vmulpd %xmm1,%xmm3,%xmm3
   0.59%  │                        0x00007f69dbf391b5:   and    $0x1f,%rdx
   0.00%  │                        0x00007f69dbf391b9:   vmulsd %xmm1,%xmm5,%xmm5
   0.21%  │                        0x00007f69dbf391bd:   mov    %rdx,%rcx
   0.19%  │                        0x00007f69dbf391c0:   vmulpd %xmm1,%xmm4,%xmm4
   0.21%  │                        0x00007f69dbf391c4:   shl    %rcx
   0.00%  │                        0x00007f69dbf391c7:   vsubpd %xmm3,%xmm0,%xmm0
   0.62%  │                        0x00007f69dbf391cb:   vmulpd 0x17dbe96d(%rip),%xmm1,%xmm1        # 0x00007f69f3cf7b40
   0.15%  │                        0x00007f69dbf391d3:   add    %rcx,%rdx
          │                        0x00007f69dbf391d6:   shl    $0x2,%rcx
          │                        0x00007f69dbf391da:   add    %rcx,%rdx
   0.22%  │                        0x00007f69dbf391dd:   vaddsd %xmm0,%xmm5,%xmm5
   0.96%  │                        0x00007f69dbf391e1:   vmovdqu %xmm0,%xmm2
   0.01%  │                        0x00007f69dbf391e5:   vsubpd %xmm4,%xmm0,%xmm0
   0.19%  │                        0x00007f69dbf391e9:   vmovq  0x17db891f(%rip),%xmm6        # 0x00007f69f3cf1b10
          │                        0x00007f69dbf391f1:   shl    $0x4,%rdx
   0.25%  │                        0x00007f69dbf391f5:   movabs $0x7f69f3cf6540,%rax
   0.01%  │                        0x00007f69dbf391ff:   vandpd 0x17dbd329(%rip),%xmm5,%xmm5        # 0x00007f69f3cf6530
   0.51%  │                        0x00007f69dbf39207:   vmovdqu %xmm0,%xmm3
   0.00%  │                        0x00007f69dbf3920b:   add    %rdx,%rax
   0.20%  │                        0x00007f69dbf3920e:   vsubpd %xmm0,%xmm2,%xmm2
   1.06%  │                        0x00007f69dbf39212:   vunpckhpd %xmm0,%xmm0,%xmm0
   0.07%  │                        0x00007f69dbf39216:   vdivsd %xmm5,%xmm6,%xmm6
   3.64%  │                        0x00007f69dbf3921a:   vsubpd %xmm4,%xmm2,%xmm2
   0.03%  │                        0x00007f69dbf3921e:   vmovdqu 0x10(%rax),%xmm7
   0.01%  │                        0x00007f69dbf39223:   vsubsd %xmm5,%xmm3,%xmm3
          │                        0x00007f69dbf39227:   vmulpd %xmm0,%xmm7,%xmm7
   0.39%  │                        0x00007f69dbf3922b:   vsubpd %xmm1,%xmm2,%xmm2
   0.01%  │                        0x00007f69dbf3922f:   vmovdqu 0x30(%rax),%xmm1
          │                        0x00007f69dbf39234:   vmulpd %xmm0,%xmm1,%xmm1
   0.00%  │                        0x00007f69dbf39238:   vmovdqu 0x60(%rax),%xmm4
   0.38%  │                        0x00007f69dbf3923d:   vmulpd %xmm0,%xmm4,%xmm4
   0.01%  │                        0x00007f69dbf39241:   vaddsd %xmm3,%xmm2,%xmm2
   0.01%  │                        0x00007f69dbf39245:   vmovdqu %xmm0,%xmm3
          │                        0x00007f69dbf39249:   vmulpd %xmm0,%xmm0,%xmm0
   0.44%  │                        0x00007f69dbf3924d:   vaddpd (%rax),%xmm7,%xmm7
   0.02%  │                        0x00007f69dbf39251:   vaddpd 0x20(%rax),%xmm1,%xmm1
   0.00%  │                        0x00007f69dbf39256:   vmulpd %xmm0,%xmm1,%xmm1
   0.01%  │                        0x00007f69dbf3925a:   vaddpd 0x50(%rax),%xmm4,%xmm4
   0.37%  │                        0x00007f69dbf3925f:   vaddpd %xmm1,%xmm7,%xmm7
   0.15%  │                        0x00007f69dbf39263:   vmovdqu 0x70(%rax),%xmm1
   0.00%  │                        0x00007f69dbf39268:   vmulpd %xmm0,%xmm1,%xmm1
          │                        0x00007f69dbf3926c:   vmulpd %xmm0,%xmm0,%xmm0
   0.35%  │                        0x00007f69dbf39270:   vaddpd %xmm1,%xmm4,%xmm4
   0.10%  │                        0x00007f69dbf39274:   vmovdqu 0x40(%rax),%xmm1
   0.00%  │                        0x00007f69dbf39279:   vmulpd %xmm0,%xmm1,%xmm1
          │                        0x00007f69dbf3927d:   vaddpd %xmm1,%xmm7,%xmm7
   0.80%  │                        0x00007f69dbf39281:   vmovdqu %xmm3,%xmm1
   0.01%  │                        0x00007f69dbf39285:   vmulpd %xmm0,%xmm3,%xmm3
          │                        0x00007f69dbf39289:   vmulsd %xmm0,%xmm0,%xmm0
          │                        0x00007f69dbf3928d:   vmulpd 0x90(%rax),%xmm1,%xmm1
   0.70%  │                        0x00007f69dbf39295:   vmulpd %xmm3,%xmm4,%xmm4
   0.00%  │                        0x00007f69dbf39299:   vmovdqu %xmm1,%xmm3
          │                        0x00007f69dbf3929d:   vaddpd %xmm4,%xmm7,%xmm7
   1.32%  │                        0x00007f69dbf392a1:   vmovdqu %xmm1,%xmm4
   0.03%  │                        0x00007f69dbf392a5:   vmulsd %xmm7,%xmm0,%xmm0
   1.38%  │                        0x00007f69dbf392a9:   vunpckhpd %xmm7,%xmm7,%xmm7
   0.01%  │                        0x00007f69dbf392ad:   vaddsd %xmm7,%xmm0,%xmm0
   1.70%  │                        0x00007f69dbf392b1:   vunpckhpd %xmm1,%xmm1,%xmm1
   0.01%  │                        0x00007f69dbf392b5:   vaddsd %xmm1,%xmm3,%xmm3
          │                        0x00007f69dbf392b9:   vsubsd %xmm3,%xmm4,%xmm4
   0.00%  │                        0x00007f69dbf392bd:   vaddsd %xmm4,%xmm1,%xmm1
   0.42%  │                        0x00007f69dbf392c1:   vmovdqu %xmm2,%xmm4
   0.01%  │                        0x00007f69dbf392c5:   vmovq  0x90(%rax),%xmm7
          │                        0x00007f69dbf392cd:   vunpckhpd %xmm2,%xmm2,%xmm2
          │                        0x00007f69dbf392d1:   vaddsd 0x98(%rax),%xmm7,%xmm7
   0.45%  │                        0x00007f69dbf392d9:   vmulsd %xmm2,%xmm7,%xmm7
   0.02%  │                        0x00007f69dbf392dd:   vaddsd 0x88(%rax),%xmm7,%xmm7
   0.01%  │                        0x00007f69dbf392e5:   vaddsd %xmm1,%xmm7,%xmm7
   0.02%  │                        0x00007f69dbf392e9:   vaddsd %xmm7,%xmm0,%xmm0
   0.83%  │                        0x00007f69dbf392ed:   vmovq  0x17db881b(%rip),%xmm7        # 0x00007f69f3cf1b10
   0.01%  │                        0x00007f69dbf392f5:   vmulsd %xmm6,%xmm4,%xmm4
          │                        0x00007f69dbf392f9:   vmovq  0xa8(%rax),%xmm2
   0.00%  │                        0x00007f69dbf39301:   vandpd %xmm6,%xmm2,%xmm2
   0.43%  │                        0x00007f69dbf39305:   vmulsd %xmm2,%xmm5,%xmm5
   0.00%  │                        0x00007f69dbf39309:   vmulsd 0xa0(%rax),%xmm6,%xmm6
   0.00%  │                        0x00007f69dbf39311:   vsubsd %xmm5,%xmm7,%xmm7
   0.01%  │                        0x00007f69dbf39315:   vsubsd 0x80(%rax),%xmm2,%xmm2
   0.44%  │                        0x00007f69dbf3931d:   vsubsd %xmm4,%xmm7,%xmm7
   0.00%  │                        0x00007f69dbf39321:   vmulsd %xmm6,%xmm7,%xmm7
   0.01%  │                        0x00007f69dbf39325:   vmovdqu %xmm3,%xmm4
          │                        0x00007f69dbf39329:   vsubsd %xmm2,%xmm3,%xmm3
   0.44%  │                        0x00007f69dbf3932d:   vaddsd %xmm3,%xmm2,%xmm2
   0.01%  │                        0x00007f69dbf39331:   vsubsd %xmm2,%xmm4,%xmm4
   0.03%  │                        0x00007f69dbf39335:   vaddsd %xmm4,%xmm0,%xmm0
   0.54%  │                        0x00007f69dbf39339:   vsubsd %xmm7,%xmm0,%xmm0
   1.66%  │                        0x00007f69dbf3933d:   vaddsd %xmm3,%xmm0,%xmm0
   1.75%  │╭                       0x00007f69dbf39341:   jmp    0x00007f69dbf3995d
   0.15%  ↘│╭                      0x00007f69dbf39346:   jg     0x00007f69dbf393ef
           ││                      0x00007f69dbf3934c:   vpextrw $0x3,%xmm0,%eax
           ││                      0x00007f69dbf39351:   mov    %eax,%edx
           ││                      0x00007f69dbf39353:   and    $0x7ff0,%eax
           ││╭                     0x00007f69dbf39358:   je     0x00007f69dbf393e2
           │││                     0x00007f69dbf3935e:   and    $0x7fff,%edx
           │││                     0x00007f69dbf39364:   cmp    $0x3e20,%edx
           │││╭                    0x00007f69dbf3936a:   jb     0x00007f69dbf393c5
           ││││                    0x00007f69dbf39370:   vmovdqu %xmm0,%xmm2
           ││││                    0x00007f69dbf39374:   vmovdqu %xmm0,%xmm3
           ││││                    0x00007f69dbf39378:   vmovq  0x17dbd1a0(%rip),%xmm1        # 0x00007f69f3cf6520
           ││││                    0x00007f69dbf39380:   vmulsd %xmm0,%xmm2,%xmm2
           ││││                    0x00007f69dbf39384:   vmulsd %xmm2,%xmm3,%xmm3
           ││││                    0x00007f69dbf39388:   vmulsd %xmm2,%xmm1,%xmm1
           ││││                    0x00007f69dbf3938c:   vaddsd 0x17dbd17c(%rip),%xmm1,%xmm1        # 0x00007f69f3cf6510
           ││││                    0x00007f69dbf39394:   vmulsd %xmm2,%xmm1,%xmm1
           ││││                    0x00007f69dbf39398:   vaddsd 0x17dbd160(%rip),%xmm1,%xmm1        # 0x00007f69f3cf6500
           ││││                    0x00007f69dbf393a0:   vmulsd %xmm2,%xmm1,%xmm1
           ││││                    0x00007f69dbf393a4:   vaddsd 0x17dbd144(%rip),%xmm1,%xmm1        # 0x00007f69f3cf64f0
           ││││                    0x00007f69dbf393ac:   vmulsd %xmm2,%xmm1,%xmm1
           ││││                    0x00007f69dbf393b0:   vaddsd 0x17dbd128(%rip),%xmm1,%xmm1        # 0x00007f69f3cf64e0
           ││││                    0x00007f69dbf393b8:   vmulsd %xmm3,%xmm1,%xmm1
           ││││                    0x00007f69dbf393bc:   vaddsd %xmm1,%xmm0,%xmm0
           ││││╭                   0x00007f69dbf393c0:   jmp    0x00007f69dbf3995d
           │││↘│                   0x00007f69dbf393c5:   vmovq  0x17db871b(%rip),%xmm3        # 0x00007f69f3cf1ae8
           │││ │                   0x00007f69dbf393cd:   vmulsd %xmm0,%xmm3,%xmm3
           │││ │                   0x00007f69dbf393d1:   vaddsd %xmm3,%xmm0,%xmm0
           │││ │                   0x00007f69dbf393d5:   vmulsd 0x17db8703(%rip),%xmm0,%xmm0        # 0x00007f69f3cf1ae0
           │││ │╭                  0x00007f69dbf393dd:   jmp    0x00007f69dbf3995d
           ││↘ ││                  0x00007f69dbf393e2:   vmovdqu %xmm0,%xmm1
           ││  ││                  0x00007f69dbf393e6:   vmulsd %xmm1,%xmm1,%xmm1
           ││  ││╭                 0x00007f69dbf393ea:   jmp    0x00007f69dbf3995d
   0.29%   │↘  │││                 0x00007f69dbf393ef:   vpextrw $0x3,%xmm0,%eax
   0.01%   │   │││                 0x00007f69dbf393f4:   and    $0x7ff0,%eax
   0.00%   │   │││                 0x00007f69dbf393f9:   cmp    $0x7ff0,%eax
   0.00%   │   │││╭                0x00007f69dbf393fe:   je     0x00007f69dbf3994a
   0.32%   │   ││││                0x00007f69dbf39404:   vpextrw $0x3,%xmm0,%ecx
   0.00%   │   ││││                0x00007f69dbf39409:   and    $0x7ff0,%ecx
   0.07%   │   ││││                0x00007f69dbf3940f:   sub    $0x3f60,%ecx
   0.26%   │   ││││                0x00007f69dbf39415:   shr    $0x7,%ecx
   0.13%   │   ││││                0x00007f69dbf39418:   and    $0xfffc,%ecx
   0.04%   │   ││││                0x00007f69dbf3941e:   movabs $0x7f69f3cf1990,%r11
   0.01%   │   ││││                0x00007f69dbf39428:   add    %r11,%rcx
   0.32%   │   ││││                0x00007f69dbf3942b:   vmovq  %xmm0,%rax
   0.02%   │   ││││                0x00007f69dbf39430:   mov    0x14(%rcx),%r10d
   0.48%   │   ││││                0x00007f69dbf39434:   mov    0x18(%rcx),%r8d
   0.01%   │   ││││                0x00007f69dbf39438:   mov    %eax,%edx
   0.11%   │   ││││                0x00007f69dbf3943a:   shr    $0x15,%rax
   0.00%   │   ││││                0x00007f69dbf3943e:   or     $0x80000000,%eax
   0.12%   │   ││││                0x00007f69dbf39443:   shr    $0xb,%eax
   0.01%   │   ││││                0x00007f69dbf39446:   mov    %r10d,%r9d
   0.10%   │   ││││                0x00007f69dbf39449:   imul   %rdx,%r10
   0.25%   │   ││││                0x00007f69dbf3944d:   imul   %rax,%r9
   0.13%   │   ││││                0x00007f69dbf39451:   imul   %rax,%r8
   0.12%   │   ││││                0x00007f69dbf39455:   mov    0x10(%rcx),%esi
   0.13%   │   ││││                0x00007f69dbf39458:   mov    0xc(%rcx),%edi
   0.01%   │   ││││                0x00007f69dbf3945b:   mov    %r10d,%r11d
   0.02%   │   ││││                0x00007f69dbf3945e:   shr    $0x20,%r10
   0.11%   │   ││││                0x00007f69dbf39462:   add    %r10,%r9
   0.38%   │   ││││                0x00007f69dbf39465:   add    %r8,%r11
   0.21%   │   ││││                0x00007f69dbf39468:   mov    %r11d,%r8d
   0.01%   │   ││││                0x00007f69dbf3946b:   shr    $0x20,%r11
   0.09%   │   ││││                0x00007f69dbf3946f:   add    %r11,%r9
   0.33%   │   ││││                0x00007f69dbf39472:   mov    %esi,%r10d
   0.03%   │   ││││                0x00007f69dbf39475:   imul   %rdx,%rsi
   0.01%   │   ││││                0x00007f69dbf39479:   imul   %rax,%r10
           │   ││││                0x00007f69dbf3947d:   mov    %edi,%r11d
   0.25%   │   ││││                0x00007f69dbf39480:   imul   %rdx,%rdi
   0.01%   │   ││││                0x00007f69dbf39484:   mov    %esi,%ebx
   0.00%   │   ││││                0x00007f69dbf39486:   shr    $0x20,%rsi
   0.01%   │   ││││                0x00007f69dbf3948a:   add    %rbx,%r9
   0.28%   │   ││││                0x00007f69dbf3948d:   mov    %r9d,%ebx
   0.02%   │   ││││                0x00007f69dbf39490:   shr    $0x20,%r9
   0.04%   │   ││││                0x00007f69dbf39494:   add    %rsi,%r10
   0.01%   │   ││││                0x00007f69dbf39497:   add    %r9,%r10
   0.33%   │   ││││                0x00007f69dbf3949a:   shl    $0x20,%rbx
   0.03%   │   ││││                0x00007f69dbf3949e:   or     %rbx,%r8
   0.09%   │   ││││                0x00007f69dbf394a1:   imul   %rax,%r11
           │   ││││                0x00007f69dbf394a5:   mov    0x8(%rcx),%r9d
   0.14%   │   ││││                0x00007f69dbf394a9:   mov    0x4(%rcx),%esi
   0.01%   │   ││││                0x00007f69dbf394ac:   mov    %edi,%ebx
   0.10%   │   ││││                0x00007f69dbf394ae:   shr    $0x20,%rdi
   0.01%   │   ││││                0x00007f69dbf394b2:   add    %rbx,%r10
   0.16%   │   ││││                0x00007f69dbf394b5:   mov    %r10d,%ebx
   0.02%   │   ││││                0x00007f69dbf394b8:   shr    $0x20,%r10
   0.10%   │   ││││                0x00007f69dbf394bc:   add    %rdi,%r11
   0.01%   │   ││││                0x00007f69dbf394bf:   add    %r10,%r11
   0.23%   │   ││││                0x00007f69dbf394c2:   mov    %r9,%rdi
   0.02%   │   ││││                0x00007f69dbf394c5:   imul   %rdx,%r9
   0.05%   │   ││││                0x00007f69dbf394c9:   imul   %rax,%rdi
   0.00%   │   ││││                0x00007f69dbf394cd:   mov    %r9d,%r10d
   0.21%   │   ││││                0x00007f69dbf394d0:   shr    $0x20,%r9
   0.01%   │   ││││                0x00007f69dbf394d4:   add    %r10,%r11
   0.06%   │   ││││                0x00007f69dbf394d7:   mov    %r11d,%r10d
   0.00%   │   ││││                0x00007f69dbf394da:   shr    $0x20,%r11
   0.21%   │   ││││                0x00007f69dbf394de:   add    %r9,%rdi
   0.02%   │   ││││                0x00007f69dbf394e1:   add    %r11,%rdi
   0.13%   │   ││││                0x00007f69dbf394e4:   mov    %rsi,%r9
   0.00%   │   ││││                0x00007f69dbf394e7:   imul   %rdx,%rsi
   0.13%   │   ││││                0x00007f69dbf394eb:   imul   %rax,%r9
   0.01%   │   ││││                0x00007f69dbf394ef:   shl    $0x20,%r10
   0.11%   │   ││││                0x00007f69dbf394f3:   or     %rbx,%r10
   0.05%   │   ││││                0x00007f69dbf394f6:   mov    (%rcx),%eax
   0.12%   │   ││││                0x00007f69dbf394f8:   mov    %esi,%r11d
   0.01%   │   ││││                0x00007f69dbf394fb:   shr    $0x20,%rsi
   0.12%   │   ││││                0x00007f69dbf394ff:   add    %r11,%rdi
   0.04%   │   ││││                0x00007f69dbf39502:   mov    %edi,%r11d
   0.11%   │   ││││                0x00007f69dbf39505:   shr    $0x20,%rdi
   0.06%   │   ││││                0x00007f69dbf39509:   add    %rsi,%r9
   0.07%   │   ││││                0x00007f69dbf3950c:   add    %rdi,%r9
   0.09%   │   ││││                0x00007f69dbf3950f:   imul   %rax,%rdx
   0.10%   │   ││││                0x00007f69dbf39513:   vpextrw $0x3,%xmm0,%ebx
   0.08%   │   ││││                0x00007f69dbf39518:   movabs $0x7f69f3cf1990,%rdi
   0.08%   │   ││││                0x00007f69dbf39522:   sub    %rdi,%rcx
   0.09%   │   ││││                0x00007f69dbf39525:   add    %ecx,%ecx
   0.01%   │   ││││                0x00007f69dbf39527:   add    %ecx,%ecx
   0.11%   │   ││││                0x00007f69dbf39529:   add    %ecx,%ecx
   0.11%   │   ││││                0x00007f69dbf3952b:   add    $0x13,%ecx
   0.12%   │   ││││                0x00007f69dbf3952e:   mov    $0x8000,%esi
   0.01%   │   ││││                0x00007f69dbf39533:   and    %ebx,%esi
   0.08%   │   ││││                0x00007f69dbf39535:   shr    $0x4,%ebx
   0.09%   │   ││││                0x00007f69dbf39538:   and    $0x7ff,%ebx
   0.13%   │   ││││                0x00007f69dbf3953e:   sub    $0x3ff,%ebx
   0.03%   │   ││││                0x00007f69dbf39544:   sub    %ebx,%ecx
   0.13%   │   ││││                0x00007f69dbf39546:   add    %rdx,%r9
   0.08%   │   ││││                0x00007f69dbf39549:   mov    %ecx,%edx
   0.10%   │   ││││                0x00007f69dbf3954b:   add    $0x20,%edx
   0.02%   │   ││││                0x00007f69dbf3954e:   cmp    $0x0,%ecx
           │   ││││╭               0x00007f69dbf39551:   jl     0x00007f69dbf3989a
   0.15%   │   │││││               0x00007f69dbf39557:   neg    %ecx
   0.13%   │   │││││               0x00007f69dbf39559:   add    $0x1d,%ecx
   0.15%   │   │││││               0x00007f69dbf3955c:   shl    %cl,%r9d
   0.28%   │   │││││               0x00007f69dbf3955f:   mov    %r9d,%edi
   0.09%   │   │││││               0x00007f69dbf39562:   and    $0x3fffffff,%r9d
   0.01%   │   │││││               0x00007f69dbf39569:   test   $0x20000000,%r9d
           │   │││││╭              0x00007f69dbf39570:   jne    0x00007f69dbf398c7
   0.20%   │   ││││││              0x00007f69dbf39576:   shr    %cl,%r9d
   0.28%   │   ││││││              0x00007f69dbf39579:   mov    $0x0,%ebx
   0.04%   │   ││││││              0x00007f69dbf3957e:   shl    $0x20,%r9
   0.05%   │   ││││││              0x00007f69dbf39582:   or     %r11,%r9
   0.10%   │   ││││││         ↗↗↗  0x00007f69dbf39585:   cmp    $0x0,%r9
   0.00%   │   ││││││╭        │││  0x00007f69dbf39589:   je     0x00007f69dbf39846
   0.23%   │   │││││││  ↗↗    │││  0x00007f69dbf3958f:   bsr    %r9,%r11
   0.32%   │   │││││││  ││    │││  0x00007f69dbf39593:   mov    $0x1d,%ecx
   0.06%   │   │││││││  ││    │││  0x00007f69dbf39598:   sub    %r11d,%ecx
           │   │││││││╭ ││    │││  0x00007f69dbf3959b:   jle    0x00007f69dbf39877
   0.07%   │   ││││││││ ││    │││  0x00007f69dbf395a1:   shl    %cl,%r9
   0.05%   │   ││││││││ ││    │││  0x00007f69dbf395a4:   mov    %r10,%rax
   0.01%   │   ││││││││ ││    │││  0x00007f69dbf395a7:   shl    %cl,%r10
   0.02%   │   ││││││││ ││    │││  0x00007f69dbf395aa:   add    %ecx,%edx
           │   ││││││││ ││    │││  0x00007f69dbf395ac:   neg    %ecx
           │   ││││││││ ││    │││  0x00007f69dbf395ae:   add    $0x40,%ecx
   0.00%   │   ││││││││ ││    │││  0x00007f69dbf395b1:   shr    %cl,%rax
   0.01%   │   ││││││││ ││    │││  0x00007f69dbf395b4:   shr    %cl,%r8
   0.02%   │   ││││││││ ││    │││  0x00007f69dbf395b7:   or     %rax,%r9
   0.00%   │   ││││││││ ││    │││  0x00007f69dbf395ba:   or     %r8,%r10
   0.18%   │   ││││││││ ││↗↗↗ │││  0x00007f69dbf395bd:   vcvtsi2sd %r9,%xmm0,%xmm0
   0.92%   │   ││││││││ │││││ │││  0x00007f69dbf395c2:   shr    %r10
   0.04%   │   ││││││││ │││││ │││  0x00007f69dbf395c5:   vcvtsi2sd %r10,%xmm3,%xmm3
   0.48%   │   ││││││││ │││││ │││  0x00007f69dbf395ca:   vxorpd %xmm4,%xmm4,%xmm4
   0.08%   │   ││││││││ │││││ │││  0x00007f69dbf395ce:   shl    $0x4,%edx
   0.02%   │   ││││││││ │││││ │││  0x00007f69dbf395d1:   neg    %edx
   0.02%   │   ││││││││ │││││ │││  0x00007f69dbf395d3:   add    $0x3ff0,%edx
   0.15%   │   ││││││││ │││││ │││  0x00007f69dbf395d9:   or     %esi,%edx
   0.12%   │   ││││││││ │││││ │││  0x00007f69dbf395db:   xor    %ebx,%edx
   0.03%   │   ││││││││ │││││ │││  0x00007f69dbf395dd:   vpinsrw $0x3,%edx,%xmm4,%xmm4
   0.20%   │   ││││││││ │││││ │││  0x00007f69dbf395e2:   vmovq  0x17dbcede(%rip),%xmm2        # 0x00007f69f3cf64c8
   0.12%   │   ││││││││ │││││ │││  0x00007f69dbf395ea:   vmovq  0x17dbcede(%rip),%xmm7        # 0x00007f69f3cf64d0
   0.03%   │   ││││││││ │││││ │││  0x00007f69dbf395f2:   vxorpd %xmm5,%xmm5,%xmm5
   0.02%   │   ││││││││ │││││ │││  0x00007f69dbf395f6:   sub    $0x3f0,%edx
   0.14%   │   ││││││││ │││││ │││  0x00007f69dbf395fc:   vpinsrw $0x3,%edx,%xmm5,%xmm5
   0.23%   │   ││││││││ │││││ │││  0x00007f69dbf39601:   vmulsd %xmm4,%xmm0,%xmm0
   0.60%   │   ││││││││ │││││ │││  0x00007f69dbf39605:   shl    $0x10,%esi
   0.04%   │   ││││││││ │││││ │││  0x00007f69dbf39608:   sar    $0x1f,%esi
   0.06%   │   ││││││││ │││││ │││  0x00007f69dbf3960b:   vmulsd %xmm5,%xmm3,%xmm3
   0.17%   │   ││││││││ │││││ │││  0x00007f69dbf3960f:   vmovdqu %xmm0,%xmm1
   0.39%   │   ││││││││ │││││ │││  0x00007f69dbf39613:   vmulsd %xmm2,%xmm0,%xmm0
   0.22%   │   ││││││││ │││││ │││  0x00007f69dbf39617:   shr    $0x1e,%edi
   0.01%   │   ││││││││ │││││ │││  0x00007f69dbf3961a:   vaddsd %xmm3,%xmm1,%xmm1
   0.23%   │   ││││││││ │││││ │││  0x00007f69dbf3961e:   vmulsd %xmm2,%xmm3,%xmm3
   0.40%   │   ││││││││ │││││ │││  0x00007f69dbf39622:   add    %esi,%edi
   0.03%   │   ││││││││ │││││ │││  0x00007f69dbf39624:   xor    %esi,%edi
           │   ││││││││ │││││ │││  0x00007f69dbf39626:   vmulsd %xmm1,%xmm7,%xmm7
   0.53%   │   ││││││││ │││││ │││  0x00007f69dbf3962a:   mov    %edi,%eax
   0.35%   │   ││││││││ │││││ │││  0x00007f69dbf3962c:   vaddsd %xmm3,%xmm7,%xmm7
   0.87%   │   ││││││││ │││││ │││  0x00007f69dbf39630:   vmovdqu %xmm0,%xmm2
   0.01%   │   ││││││││ │││││ │││  0x00007f69dbf39634:   vaddsd %xmm7,%xmm0,%xmm0
   0.80%   │   ││││││││ │││││ │││  0x00007f69dbf39638:   vsubsd %xmm0,%xmm2,%xmm2
   1.02%   │   ││││││││ │││││ │││  0x00007f69dbf3963c:   vaddsd %xmm2,%xmm7,%xmm7
   1.04%   │   ││││││││ │││││ │││  0x00007f69dbf39640:   vmovdqu 0x17dbe528(%rip),%xmm1        # 0x00007f69f3cf7b70
   0.01%   │   ││││││││ │││││ │││  0x00007f69dbf39648:   vmovddup %xmm0,%xmm0
           │   ││││││││ │││││ │││  0x00007f69dbf3964c:   vmovdqu 0x17dbe52c(%rip),%xmm4        # 0x00007f69f3cf7b80
           │   ││││││││ │││││ │││  0x00007f69dbf39654:   vandpd %xmm0,%xmm4,%xmm4
   0.23%   │   ││││││││ │││││ │││  0x00007f69dbf39658:   vmulpd %xmm0,%xmm1,%xmm1
           │   ││││││││ │││││ │││  0x00007f69dbf3965c:   vmovddup %xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007f69dbf39660:   vmovdqu 0x17db8498(%rip),%xmm5        # 0x00007f69f3cf1b00
   0.00%   │   ││││││││ │││││ │││  0x00007f69dbf39668:   vmovdqu 0x17dbe520(%rip),%xmm6        # 0x00007f69f3cf7b90
   0.24%   │   ││││││││ │││││ │││  0x00007f69dbf39670:   vpor   %xmm4,%xmm5,%xmm5
   0.00%   │   ││││││││ │││││ │││  0x00007f69dbf39674:   vaddpd %xmm5,%xmm1,%xmm1
   0.06%   │   ││││││││ │││││ │││  0x00007f69dbf39678:   vmovdqu %xmm1,%xmm5
           │   ││││││││ │││││ │││  0x00007f69dbf3967c:   vunpckhpd %xmm5,%xmm5,%xmm5
   0.32%   │   ││││││││ │││││ │││  0x00007f69dbf39680:   vcvttsd2si %xmm5,%edx
   1.51%   │   ││││││││ │││││ │││  0x00007f69dbf39684:   vcvttpd2dq %xmm1,%xmm1
   0.01%   │   ││││││││ │││││ │││  0x00007f69dbf39689:   vcvtdq2pd %xmm1,%xmm1
   0.72%   │   ││││││││ │││││ │││  0x00007f69dbf3968d:   vmulpd %xmm6,%xmm1,%xmm1
   1.07%   │   ││││││││ │││││ │││  0x00007f69dbf39691:   vmovdqu 0x17dbe4c7(%rip),%xmm3        # 0x00007f69f3cf7b60
   0.01%   │   ││││││││ │││││ │││  0x00007f69dbf39699:   vmovq  0x17dbce1f(%rip),%xmm5        # 0x00007f69f3cf64c0
   0.00%   │   ││││││││ │││││ │││  0x00007f69dbf396a1:   shl    $0x4,%eax
           │   ││││││││ │││││ │││  0x00007f69dbf396a4:   add    $0x72900,%edx
   0.28%   │   ││││││││ │││││ │││  0x00007f69dbf396aa:   vmovdqu 0x17dbe49e(%rip),%xmm4        # 0x00007f69f3cf7b50
           │   ││││││││ │││││ │││  0x00007f69dbf396b2:   vmulpd %xmm1,%xmm3,%xmm3
   0.86%   │   ││││││││ │││││ │││  0x00007f69dbf396b6:   add    %eax,%edx
   0.01%   │   ││││││││ │││││ │││  0x00007f69dbf396b8:   and    $0x1f,%edx
   0.00%   │   ││││││││ │││││ │││  0x00007f69dbf396bb:   vmulsd %xmm1,%xmm5,%xmm5
   0.07%   │   ││││││││ │││││ │││  0x00007f69dbf396bf:   mov    %edx,%ecx
   0.37%   │   ││││││││ │││││ │││  0x00007f69dbf396c1:   vmulpd %xmm1,%xmm4,%xmm4
   0.03%   │   ││││││││ │││││ │││  0x00007f69dbf396c5:   shl    %ecx
   0.00%   │   ││││││││ │││││ │││  0x00007f69dbf396c7:   vsubpd %xmm3,%xmm0,%xmm0
   0.48%   │   ││││││││ │││││ │││  0x00007f69dbf396cb:   vmulpd 0x17dbe46d(%rip),%xmm1,%xmm1        # 0x00007f69f3cf7b40
   0.03%   │   ││││││││ │││││ │││  0x00007f69dbf396d3:   add    %ecx,%edx
           │   ││││││││ │││││ │││  0x00007f69dbf396d5:   shl    $0x2,%ecx
           │   ││││││││ │││││ │││  0x00007f69dbf396d8:   add    %ecx,%edx
   0.22%   │   ││││││││ │││││ │││  0x00007f69dbf396da:   vaddsd %xmm0,%xmm5,%xmm5
   0.84%   │   ││││││││ │││││ │││  0x00007f69dbf396de:   vmovdqu %xmm0,%xmm2
   0.01%   │   ││││││││ │││││ │││  0x00007f69dbf396e2:   vsubpd %xmm4,%xmm0,%xmm0
   0.18%   │   ││││││││ │││││ │││  0x00007f69dbf396e6:   vmovq  0x17db8422(%rip),%xmm6        # 0x00007f69f3cf1b10
   0.00%   │   ││││││││ │││││ │││  0x00007f69dbf396ee:   shl    $0x4,%edx
   0.09%   │   ││││││││ │││││ │││  0x00007f69dbf396f1:   movabs $0x7f69f3cf6540,%rax
   0.00%   │   ││││││││ │││││ │││  0x00007f69dbf396fb:   vandpd 0x17dbce2d(%rip),%xmm5,%xmm5        # 0x00007f69f3cf6530
   0.43%   │   ││││││││ │││││ │││  0x00007f69dbf39703:   vmovdqu %xmm0,%xmm3
   0.01%   │   ││││││││ │││││ │││  0x00007f69dbf39707:   add    %rdx,%rax
   0.06%   │   ││││││││ │││││ │││  0x00007f69dbf3970a:   vsubpd %xmm0,%xmm2,%xmm2
   0.86%   │   ││││││││ │││││ │││  0x00007f69dbf3970e:   vunpckhpd %xmm0,%xmm0,%xmm0
   0.05%   │   ││││││││ │││││ │││  0x00007f69dbf39712:   vdivsd %xmm5,%xmm6,%xmm6
   2.46%   │   ││││││││ │││││ │││  0x00007f69dbf39716:   vsubpd %xmm4,%xmm2,%xmm2
   0.01%   │   ││││││││ │││││ │││  0x00007f69dbf3971a:   vsubsd %xmm5,%xmm3,%xmm3
           │   ││││││││ │││││ │││  0x00007f69dbf3971e:   vsubpd %xmm1,%xmm2,%xmm2
           │   ││││││││ │││││ │││  0x00007f69dbf39722:   vmovdqu 0x30(%rax),%xmm1
   0.39%   │   ││││││││ │││││ │││  0x00007f69dbf39727:   vaddpd %xmm7,%xmm2,%xmm2
   0.07%   │   ││││││││ │││││ │││  0x00007f69dbf3972b:   vmovdqu 0x10(%rax),%xmm7
   0.07%   │   ││││││││ │││││ │││  0x00007f69dbf39730:   vmulpd %xmm0,%xmm7,%xmm7
   0.02%   │   ││││││││ │││││ │││  0x00007f69dbf39734:   vmovdqu 0x60(%rax),%xmm4
   0.28%   │   ││││││││ │││││ │││  0x00007f69dbf39739:   vmulpd %xmm0,%xmm1,%xmm1
   0.08%   │   ││││││││ │││││ │││  0x00007f69dbf3973d:   vmulpd %xmm0,%xmm4,%xmm4
   0.02%   │   ││││││││ │││││ │││  0x00007f69dbf39741:   vaddsd %xmm3,%xmm2,%xmm2
   0.64%   │   ││││││││ │││││ │││  0x00007f69dbf39745:   vmovdqu %xmm0,%xmm3
   0.01%   │   ││││││││ │││││ │││  0x00007f69dbf39749:   vmulpd %xmm0,%xmm0,%xmm0
           │   ││││││││ │││││ │││  0x00007f69dbf3974d:   vaddpd (%rax),%xmm7,%xmm7
   0.06%   │   ││││││││ │││││ │││  0x00007f69dbf39751:   vaddpd 0x20(%rax),%xmm1,%xmm1
   0.24%   │   ││││││││ │││││ │││  0x00007f69dbf39756:   vmulpd %xmm0,%xmm1,%xmm1
   0.03%   │   ││││││││ │││││ │││  0x00007f69dbf3975a:   vaddpd 0x50(%rax),%xmm4,%xmm4
   0.02%   │   ││││││││ │││││ │││  0x00007f69dbf3975f:   vaddpd %xmm1,%xmm7,%xmm7
   0.06%   │   ││││││││ │││││ │││  0x00007f69dbf39763:   vmovdqu 0x70(%rax),%xmm1
   0.22%   │   ││││││││ │││││ │││  0x00007f69dbf39768:   vmulpd %xmm0,%xmm1,%xmm1
   0.01%   │   ││││││││ │││││ │││  0x00007f69dbf3976c:   vmulpd %xmm0,%xmm0,%xmm0
           │   ││││││││ │││││ │││  0x00007f69dbf39770:   vaddpd %xmm1,%xmm4,%xmm4
   0.05%   │   ││││││││ │││││ │││  0x00007f69dbf39774:   vmovdqu 0x40(%rax),%xmm1
   0.21%   │   ││││││││ │││││ │││  0x00007f69dbf39779:   vmulpd %xmm0,%xmm1,%xmm1
   0.01%   │   ││││││││ │││││ │││  0x00007f69dbf3977d:   vaddpd %xmm1,%xmm7,%xmm7
   0.17%   │   ││││││││ │││││ │││  0x00007f69dbf39781:   vmovdqu %xmm3,%xmm1
   0.00%   │   ││││││││ │││││ │││  0x00007f69dbf39785:   vmulpd %xmm0,%xmm3,%xmm3
   0.16%   │   ││││││││ │││││ │││  0x00007f69dbf39789:   vmulsd %xmm0,%xmm0,%xmm0
   0.01%   │   ││││││││ │││││ │││  0x00007f69dbf3978d:   vmulpd 0x90(%rax),%xmm1,%xmm1
   0.14%   │   ││││││││ │││││ │││  0x00007f69dbf39795:   vmulpd %xmm3,%xmm4,%xmm4
   0.01%   │   ││││││││ │││││ │││  0x00007f69dbf39799:   vmovdqu %xmm1,%xmm3
   0.19%   │   ││││││││ │││││ │││  0x00007f69dbf3979d:   vaddpd %xmm4,%xmm7,%xmm7
   0.66%   │   ││││││││ │││││ │││  0x00007f69dbf397a1:   vmovdqu %xmm1,%xmm4
   0.01%   │   ││││││││ │││││ │││  0x00007f69dbf397a5:   vmulsd %xmm7,%xmm0,%xmm0
   0.91%   │   ││││││││ │││││ │││  0x00007f69dbf397a9:   vunpckhpd %xmm7,%xmm7,%xmm7
   0.01%   │   ││││││││ │││││ │││  0x00007f69dbf397ad:   vaddsd %xmm7,%xmm0,%xmm0
   1.06%   │   ││││││││ │││││ │││  0x00007f69dbf397b1:   vunpckhpd %xmm1,%xmm1,%xmm1
   0.01%   │   ││││││││ │││││ │││  0x00007f69dbf397b5:   vaddsd %xmm1,%xmm3,%xmm3
   0.00%   │   ││││││││ │││││ │││  0x00007f69dbf397b9:   vsubsd %xmm3,%xmm4,%xmm4
           │   ││││││││ │││││ │││  0x00007f69dbf397bd:   vaddsd %xmm4,%xmm1,%xmm1
   0.28%   │   ││││││││ │││││ │││  0x00007f69dbf397c1:   vmovdqu %xmm2,%xmm4
           │   ││││││││ │││││ │││  0x00007f69dbf397c5:   vmovq  0x90(%rax),%xmm7
           │   ││││││││ │││││ │││  0x00007f69dbf397cd:   vunpckhpd %xmm2,%xmm2,%xmm2
           │   ││││││││ │││││ │││  0x00007f69dbf397d1:   vaddsd 0x98(%rax),%xmm7,%xmm7
   0.28%   │   ││││││││ │││││ │││  0x00007f69dbf397d9:   vmulsd %xmm2,%xmm7,%xmm7
   0.00%   │   ││││││││ │││││ │││  0x00007f69dbf397dd:   vaddsd 0x88(%rax),%xmm7,%xmm7
   0.00%   │   ││││││││ │││││ │││  0x00007f69dbf397e5:   vaddsd %xmm1,%xmm7,%xmm7
   0.01%   │   ││││││││ │││││ │││  0x00007f69dbf397e9:   vaddsd %xmm7,%xmm0,%xmm0
   0.55%   │   ││││││││ │││││ │││  0x00007f69dbf397ed:   vmovq  0x17db831b(%rip),%xmm7        # 0x00007f69f3cf1b10
   0.00%   │   ││││││││ │││││ │││  0x00007f69dbf397f5:   vmulsd %xmm6,%xmm4,%xmm4
           │   ││││││││ │││││ │││  0x00007f69dbf397f9:   vmovq  0xa8(%rax),%xmm2
   0.00%   │   ││││││││ │││││ │││  0x00007f69dbf39801:   vandpd %xmm6,%xmm2,%xmm2
   0.26%   │   ││││││││ │││││ │││  0x00007f69dbf39805:   vmulsd %xmm2,%xmm5,%xmm5
   0.01%   │   ││││││││ │││││ │││  0x00007f69dbf39809:   vmulsd 0xa0(%rax),%xmm6,%xmm6
           │   ││││││││ │││││ │││  0x00007f69dbf39811:   vsubsd %xmm5,%xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007f69dbf39815:   vsubsd 0x80(%rax),%xmm2,%xmm2
   0.31%   │   ││││││││ │││││ │││  0x00007f69dbf3981d:   vsubsd %xmm4,%xmm7,%xmm7
   0.00%   │   ││││││││ │││││ │││  0x00007f69dbf39821:   vmulsd %xmm6,%xmm7,%xmm7
   0.01%   │   ││││││││ │││││ │││  0x00007f69dbf39825:   vmovdqu %xmm3,%xmm4
           │   ││││││││ │││││ │││  0x00007f69dbf39829:   vsubsd %xmm2,%xmm3,%xmm3
   0.27%   │   ││││││││ │││││ │││  0x00007f69dbf3982d:   vaddsd %xmm3,%xmm2,%xmm2
           │   ││││││││ │││││ │││  0x00007f69dbf39831:   vsubsd %xmm2,%xmm4,%xmm4
   0.01%   │   ││││││││ │││││ │││  0x00007f69dbf39835:   vaddsd %xmm4,%xmm0,%xmm0
   0.25%   │   ││││││││ │││││ │││  0x00007f69dbf39839:   vsubsd %xmm7,%xmm0,%xmm0
   1.07%   │   ││││││││ │││││ │││  0x00007f69dbf3983d:   vaddsd %xmm3,%xmm0,%xmm0
   1.06%   │   ││││││││╭│││││ │││  0x00007f69dbf39841:   jmp    0x00007f69dbf3995d
           │   ││││││↘│││││││ │││  0x00007f69dbf39846:   add    $0x40,%edx
           │   ││││││ │││││││ │││  0x00007f69dbf39849:   mov    %r10,%r9
           │   ││││││ │││││││ │││  0x00007f69dbf3984c:   mov    %r8,%r10
           │   ││││││ │││││││ │││  0x00007f69dbf3984f:   mov    $0x0,%r8d
           │   ││││││ │││││││ │││  0x00007f69dbf39855:   cmp    $0x0,%r9
           │   ││││││ ││╰││││ │││  0x00007f69dbf39859:   jne    0x00007f69dbf3958f
           │   ││││││ ││ ││││ │││  0x00007f69dbf3985f:   add    $0x40,%edx
           │   ││││││ ││ ││││ │││  0x00007f69dbf39862:   mov    %r10,%r9
           │   ││││││ ││ ││││ │││  0x00007f69dbf39865:   mov    %r8,%r10
           │   ││││││ ││ ││││ │││  0x00007f69dbf39868:   cmp    $0x0,%r9
           │   ││││││ ││ ╰│││ │││  0x00007f69dbf3986c:   jne    0x00007f69dbf3958f
           │   ││││││ ││  ╰││ │││  0x00007f69dbf39872:   jmp    0x00007f69dbf395bd
   0.12%   │   ││││││ ↘│   ╰│ │││  0x00007f69dbf39877:   je     0x00007f69dbf395bd
   0.20%   │   ││││││  │    │ │││  0x00007f69dbf3987d:   neg    %ecx
   0.15%   │   ││││││  │    │ │││  0x00007f69dbf3987f:   shr    %cl,%r10
   0.54%   │   ││││││  │    │ │││  0x00007f69dbf39882:   mov    %r9,%rax
   0.14%   │   ││││││  │    │ │││  0x00007f69dbf39885:   shr    %cl,%r9
   0.26%   │   ││││││  │    │ │││  0x00007f69dbf39888:   sub    %ecx,%edx
   0.04%   │   ││││││  │    │ │││  0x00007f69dbf3988a:   neg    %ecx
           │   ││││││  │    │ │││  0x00007f69dbf3988c:   add    $0x40,%ecx
   0.06%   │   ││││││  │    │ │││  0x00007f69dbf3988f:   shl    %cl,%rax
   0.42%   │   ││││││  │    │ │││  0x00007f69dbf39892:   or     %rax,%r10
   0.08%   │   ││││││  │    ╰ │││  0x00007f69dbf39895:   jmp    0x00007f69dbf395bd
           │   ││││↘│  │      │││  0x00007f69dbf3989a:   not    %ecx
           │   ││││ │  │      │││  0x00007f69dbf3989c:   shl    $0x20,%r9
           │   ││││ │  │      │││  0x00007f69dbf398a0:   or     %r11,%r9
           │   ││││ │  │      │││  0x00007f69dbf398a3:   shl    %cl,%r9
           │   ││││ │  │      │││  0x00007f69dbf398a6:   mov    %r9,%rdi
           │   ││││ │  │      │││  0x00007f69dbf398a9:   test   $0x80000000,%r9d
           │   ││││ │  │     ╭│││  0x00007f69dbf398b0:   jne    0x00007f69dbf39909
           │   ││││ │  │     ││││  0x00007f69dbf398b6:   shr    %cl,%r9d
           │   ││││ │  │     ││││  0x00007f69dbf398b9:   mov    $0x0,%ebx
           │   ││││ │  │     ││││  0x00007f69dbf398be:   shr    $0x2,%rdi
           │   ││││ │  │     │╰││  0x00007f69dbf398c2:   jmp    0x00007f69dbf39585
   0.17%   │   ││││ ↘  │     │ ││  0x00007f69dbf398c7:   shr    %cl,%r9d
   0.25%   │   ││││    │     │ ││  0x00007f69dbf398ca:   mov    $0x40000000,%ebx
   0.06%   │   ││││    │     │ ││  0x00007f69dbf398cf:   shr    %cl,%ebx
   0.16%   │   ││││    │     │ ││  0x00007f69dbf398d1:   shl    $0x20,%r9
   0.04%   │   ││││    │     │ ││  0x00007f69dbf398d5:   or     %r11,%r9
   0.03%   │   ││││    │     │ ││  0x00007f69dbf398d8:   shl    $0x20,%rbx
   0.03%   │   ││││    │     │ ││  0x00007f69dbf398dc:   add    $0x40000000,%edi
   0.04%   │   ││││    │     │ ││  0x00007f69dbf398e2:   mov    $0x0,%ecx
   0.03%   │   ││││    │     │ ││  0x00007f69dbf398e7:   mov    $0x0,%r11d
   0.03%   │   ││││    │     │ ││  0x00007f69dbf398ed:   sub    %r8,%rcx
   0.04%   │   ││││    │     │ ││  0x00007f69dbf398f0:   sbb    %r10,%r11
   0.03%   │   ││││    │     │ ││  0x00007f69dbf398f3:   sbb    %r9,%rbx
   0.05%   │   ││││    │     │ ││  0x00007f69dbf398f6:   mov    %rcx,%r8
   0.02%   │   ││││    │     │ ││  0x00007f69dbf398f9:   mov    %r11,%r10
   0.04%   │   ││││    │     │ ││  0x00007f69dbf398fc:   mov    %rbx,%r9
   0.04%   │   ││││    │     │ ││  0x00007f69dbf398ff:   mov    $0x8000,%ebx
   0.09%   │   ││││    │     │ ╰│  0x00007f69dbf39904:   jmp    0x00007f69dbf39585
           │   ││││    │     ↘  │  0x00007f69dbf39909:   shr    %cl,%r9d
           │   ││││    │        │  0x00007f69dbf3990c:   movabs $0x100000000,%rbx
           │   ││││    │        │  0x00007f69dbf39916:   shr    %cl,%rbx
           │   ││││    │        │  0x00007f69dbf39919:   mov    $0x0,%ecx
           │   ││││    │        │  0x00007f69dbf3991e:   mov    $0x0,%r11d
           │   ││││    │        │  0x00007f69dbf39924:   sub    %r8,%rcx
           │   ││││    │        │  0x00007f69dbf39927:   sbb    %r10,%r11
           │   ││││    │        │  0x00007f69dbf3992a:   sbb    %r9,%rbx
           │   ││││    │        │  0x00007f69dbf3992d:   mov    %rcx,%r8
           │   ││││    │        │  0x00007f69dbf39930:   mov    %r11,%r10
           │   ││││    │        │  0x00007f69dbf39933:   mov    %rbx,%r9
           │   ││││    │        │  0x00007f69dbf39936:   mov    $0x8000,%ebx
           │   ││││    │        │  0x00007f69dbf3993b:   shr    $0x2,%rdi
           │   ││││    │        │  0x00007f69dbf3993f:   add    $0x40000000,%edi
           │   ││││    │        ╰  0x00007f69dbf39945:   jmp    0x00007f69dbf39585
           │   │││↘    │           0x00007f69dbf3994a:   vmovq  0x8(%rsp),%xmm0
           │   │││     │           0x00007f69dbf39950:   vmulsd 0x17db8100(%rip),%xmm0,%xmm0        # 0x00007f69f3cf1a58
           │   │││     │           0x00007f69dbf39958:   vmovq  %xmm0,(%rsp)
   0.02%   ↘   ↘↘↘     ↘           0x00007f69dbf3995d:   add    $0x10,%rsp
   0.00%                           0x00007f69dbf39961:   pop    %rbx
   0.00%                           0x00007f69dbf39962:   leave  
   0.79%                           0x00007f69dbf39963:   ret    
                                 --------------------------------------------------------------------------------
                                 - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                 - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                 StubRoutines::libmExp [0x00007f69dbf39964, 0x00007f69dbf39c84] (800 bytes)
                                 --------------------------------------------------------------------------------
....................................................................................................
  78.01%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.lang.FdLibm$Atan::compute, version 2, compile id 652 

              0x00007f69dc4f69d0:   0xf4f4f4f4      0xf4f4f4f4f4f4f4f4      
              0x00007f69dc4f69d4:   0xf4f4f4f4                              
              0x00007f69dc4f69d8:   0xf4f4f4f4      0xf4f4f4f4f4f4f4f4      
              0x00007f69dc4f69dc:   0xf4f4f4f4                              
            --------------------------------------------------------------------------------
            [Verified Entry Point]
              # {method} {0x00007f6950263a98} &apos;compute&apos; &apos;(D)D&apos; in &apos;java/lang/FdLibm$Atan&apos;
              # parm0:    xmm0:xmm0   = double
              #           [sp+0x30]  (sp of caller)
              0x00007f69dc4f69e0:   mov    %eax,-0x14000(%rsp)          ;   {no_reloc}
   0.11%      0x00007f69dc4f69e7:   push   %rbp
              0x00007f69dc4f69e8:   sub    $0x20,%rsp
   0.13%      0x00007f69dc4f69ec:   cmpl   $0x0,0x20(%r15)
   0.00%      0x00007f69dc4f69f4:   jne    0x00007f69dc4f6bb6           ;*synchronization entry
                                                                        ; - java.lang.FdLibm$Atan::compute@-1 (line 1267)
              0x00007f69dc4f69fa:   vmovq  %xmm0,%r10
              0x00007f69dc4f69ff:   sar    $0x20,%r10
   0.17%      0x00007f69dc4f6a03:   mov    %r10d,%r11d                  ;*l2i {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.FdLibm::__HI@9 (line 105)
                                                                        ; - java.lang.FdLibm$Atan::compute@1 (line 1267)
              0x00007f69dc4f6a06:   mov    %r11d,%r8d
              0x00007f69dc4f6a09:   and    $0x7fffffff,%r8d             ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.FdLibm$Atan::compute@10 (line 1268)
              0x00007f69dc4f6a10:   lea    -0x3fdc0000(%r8),%r9d
   0.19%      0x00007f69dc4f6a17:   nopw   0x0(%rax,%rax,1)
              0x00007f69dc4f6a20:   cmp    $0x4340000,%r9d
          ╭   0x00007f69dc4f6a27:   jae    0x00007f69dc4f6b29           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.lang.FdLibm$Atan::compute@79 (line 1279)
   0.18%  │   0x00007f69dc4f6a2d:   cmp    $0x3ff30000,%r8d
          │   0x00007f69dc4f6a34:   jl     0x00007f69dc4f6b4c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.lang.FdLibm$Atan::compute@116 (line 1288)
   0.03%  │   0x00007f69dc4f6a3a:   nopw   0x0(%rax,%rax,1)
   0.01%  │   0x00007f69dc4f6a40:   cmp    $0x40038000,%r8d
          │   0x00007f69dc4f6a47:   jl     0x00007f69dc4f6b78           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.lang.FdLibm$Atan::compute@164 (line 1297)
   0.05%  │   0x00007f69dc4f6a4d:   movabs $0x7ff143c60,%r10            ;   {oop([D{0x00000007ff143c60})}
   0.06%  │   0x00007f69dc4f6a57:   movabs $0x7ff143c30,%r8             ;   {oop([D{0x00000007ff143c30})}
   0.04%  │   0x00007f69dc4f6a61:   vmovsd 0x28(%r8),%xmm3
   0.02%  │   0x00007f69dc4f6a67:   movabs $0x7ff143c90,%r8             ;   {oop([D{0x00000007ff143c90})}
   0.03%  │   0x00007f69dc4f6a71:   vmovsd -0xb9(%rip),%xmm1        # 0x00007f69dc4f69c0
          │                                                             ;   {section_word}
   0.03%  │   0x00007f69dc4f6a79:   vandpd -0x5beba1(%rip),%xmm0,%xmm0        # Stub::double_sign_mask
          │                                                             ;*invokestatic abs {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.lang.FdLibm$Atan::compute@108 (line 1287)
          │                                                             ;   {external_word}
   0.02%  │   0x00007f69dc4f6a81:   vdivsd %xmm0,%xmm1,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.lang.FdLibm$Atan::compute@194 (line 1302)
   0.91%  │   0x00007f69dc4f6a85:   vmulsd %xmm2,%xmm2,%xmm4            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.lang.FdLibm$Atan::compute@198 (line 1307)
   0.59%  │   0x00007f69dc4f6a89:   vmulsd %xmm4,%xmm4,%xmm5            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.lang.FdLibm$Atan::compute@205 (line 1308)
   0.58%  │   0x00007f69dc4f6a8d:   vmulsd 0x60(%r8),%xmm5,%xmm0
   0.59%  │   0x00007f69dc4f6a93:   vmulsd 0x58(%r8),%xmm5,%xmm1
   0.04%  │   0x00007f69dc4f6a99:   vaddsd 0x50(%r8),%xmm0,%xmm0
   0.47%  │   0x00007f69dc4f6a9f:   vaddsd 0x48(%r8),%xmm1,%xmm1
   0.05%  │   0x00007f69dc4f6aa5:   vmulsd %xmm5,%xmm0,%xmm0
   0.44%  │   0x00007f69dc4f6aa9:   vaddsd 0x40(%r8),%xmm0,%xmm0
   0.54%  │   0x00007f69dc4f6aaf:   vmulsd %xmm5,%xmm1,%xmm1
   0.00%  │   0x00007f69dc4f6ab3:   vaddsd 0x38(%r8),%xmm1,%xmm1
   0.08%  │   0x00007f69dc4f6ab9:   vmulsd %xmm5,%xmm0,%xmm0
   0.47%  │   0x00007f69dc4f6abd:   vaddsd 0x30(%r8),%xmm0,%xmm0
   0.60%  │   0x00007f69dc4f6ac3:   vmulsd %xmm5,%xmm1,%xmm1
   0.00%  │   0x00007f69dc4f6ac7:   vaddsd 0x28(%r8),%xmm1,%xmm1
   0.11%  │   0x00007f69dc4f6acd:   vmulsd %xmm5,%xmm0,%xmm0
   0.41%  │   0x00007f69dc4f6ad1:   vaddsd 0x20(%r8),%xmm0,%xmm0
   0.52%  │   0x00007f69dc4f6ad7:   vmulsd %xmm5,%xmm1,%xmm1
   0.01%  │   0x00007f69dc4f6adb:   vaddsd 0x18(%r8),%xmm1,%xmm1
   0.13%  │   0x00007f69dc4f6ae1:   vmulsd %xmm5,%xmm0,%xmm0
   0.41%  │   0x00007f69dc4f6ae5:   vaddsd 0x10(%r8),%xmm0,%xmm0
   0.52%  │   0x00007f69dc4f6aeb:   vmulsd %xmm5,%xmm1,%xmm1
   0.01%  │   0x00007f69dc4f6aef:   vmulsd %xmm4,%xmm0,%xmm0
   0.54%  │   0x00007f69dc4f6af3:   vaddsd %xmm1,%xmm0,%xmm0
   0.54%  │   0x00007f69dc4f6af7:   vmulsd %xmm2,%xmm0,%xmm0
   0.55%  │   0x00007f69dc4f6afb:   vsubsd 0x28(%r10),%xmm0,%xmm0
   0.55%  │   0x00007f69dc4f6b01:   vsubsd %xmm2,%xmm0,%xmm0
   0.55%  │   0x00007f69dc4f6b05:   vsubsd %xmm0,%xmm3,%xmm0            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.lang.FdLibm$Atan::compute@340 (line 1315)
   0.57%  │   0x00007f69dc4f6b09:   test   %r11d,%r11d
          │╭  0x00007f69dc4f6b0c:   jge    0x00007f69dc4f6b16           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.lang.FdLibm$Atan::compute@345 (line 1316)
   0.00%  ││  0x00007f69dc4f6b0e:   vxorpd -0x5bec16(%rip),%xmm0,%xmm0        # Stub::double_sign_flip
          ││                                                            ;*dreturn {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.lang.FdLibm$Atan::compute@356 (line 1316)
          ││                                                            ;   {external_word}
   0.03%  │↘  0x00007f69dc4f6b16:   add    $0x20,%rsp
          │   0x00007f69dc4f6b1a:   pop    %rbp
          │   0x00007f69dc4f6b1b:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │   0x00007f69dc4f6b22:   ja     0x00007f69dc4f6ba0
   0.12%  │   0x00007f69dc4f6b28:   ret    
          ↘   0x00007f69dc4f6b29:   mov    $0xffffff3d,%esi
              0x00007f69dc4f6b2e:   vmovq  %xmm0,%rbp
              0x00007f69dc4f6b33:   mov    %r11d,0x4(%rsp)
              0x00007f69dc4f6b38:   mov    %r8d,0x8(%rsp)
              0x00007f69dc4f6b3d:   xchg   %ax,%ax
              0x00007f69dc4f6b3f:   call   0x00007f69dbf8af00           ; ImmutableOopMap {}
                                                                        ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.lang.FdLibm$Atan::compute@17 (line 1269)
                                                                        ;   {runtime_call UncommonTrapBlob}
              0x00007f69dc4f6b44:   nopl   0x334(%rax,%rax,1)           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  12.03%  <total for region 2>

....[Hottest Regions]...............................................................................
  78.01%          runtime stub  StubRoutines::libmTan 
  12.03%           c2, level 4  java.lang.FdLibm$Atan::compute, version 2, compile id 652 
   5.74%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop, version 3, compile id 656 
   0.56%                kernel  [unknown] 
   0.40%                kernel  [unknown] 
   0.26%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.10%             libjvm.so  ElfSymbolTable::lookup 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   2.01%  <...other 294 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  78.01%          runtime stub  StubRoutines::libmTan 
  12.03%           c2, level 4  java.lang.FdLibm$Atan::compute, version 2, compile id 652 
   5.74%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop, version 3, compile id 656 
   3.53%                kernel  [unknown] 
   0.10%             libjvm.so  ElfSymbolTable::lookup 
   0.03%             libjvm.so  fileStream::write 
   0.03%             libc.so.6  __strchr_avx2 
   0.03%             libjvm.so  xmlTextStream::flush 
   0.03%             libc.so.6  __vfprintf_internal 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%           interpreter  invokevirtual  182 invokevirtual  
   0.02%             libc.so.6  _IO_fwrite 
   0.02%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%             libc.so.6  _IO_setb 
   0.01%             libc.so.6  clock_gettime@@GLIBC_2.17 
   0.01%             libjvm.so  defaultStream::hold 
   0.01%             libc.so.6  __vsnprintf_internal 
   0.01%           interpreter  return entry points  
   0.01%           interpreter  iconst_0  3 iconst_0  
   0.32%  <...other 101 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  78.01%          runtime stub
  17.77%           c2, level 4
   3.53%                kernel
   0.34%             libjvm.so
   0.19%             libc.so.6
   0.09%           interpreter
   0.03%        hsdis-amd64.so
   0.02%  ld-linux-x86-64.so.2
   0.01%                [vdso]
   0.01%         perf-5012.map
   0.00%                      
   0.00%           c1, level 3
   0.00%        libz.so.1.2.11
   0.00%      Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /usr/lib/jvm/openjdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking
# Parameters: (iterations = 16384)

# Run progress: 50.00% complete, ETA 00:02:05
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2717.308 us/op
# Warmup Iteration   2: 3632.990 us/op
# Warmup Iteration   3: 3577.162 us/op
# Warmup Iteration   4: 2990.983 us/op
# Warmup Iteration   5: 2931.882 us/op
Iteration   1: 2818.403 us/op
Iteration   2: 2608.565 us/op
Iteration   3: 2574.351 us/op
Iteration   4: 2557.797 us/op
Iteration   5: 2609.901 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking":
  2633.804 ±(99.9%) 406.589 us/op [Average]
  (min, avg, max) = (2557.797, 2633.804, 2818.403), stdev = 105.590
  CI (99.9%): [2227.215, 3040.392] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking:asm":
PrintAssembly processed: 125085 total address lines.
Perf output processed (skipped 67.054 seconds):
 Column 1: cycles (50615 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::libmTan 

                                 --------------------------------------------------------------------------------
                                 - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                 - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                 StubRoutines::libmTan [0x00007fba93f3911c, 0x00007fba93f39964] (2120 bytes)
                                 --------------------------------------------------------------------------------
                                   0x00007fba93f3911c:   push   %rbp
   0.40%                           0x00007fba93f3911d:   mov    %rsp,%rbp
   0.12%                           0x00007fba93f39120:   push   %rbx
   0.00%                           0x00007fba93f39121:   sub    $0x10,%rsp
   0.54%                           0x00007fba93f39125:   vmovsd %xmm0,0x8(%rsp)
                                   0x00007fba93f3912b:   vpextrw $0x3,%xmm0,%eax
   0.39%                           0x00007fba93f39130:   and    $0x7fff,%eax
   0.60%                           0x00007fba93f39135:   sub    $0x3fba,%eax
   0.19%                           0x00007fba93f3913a:   cmp    $0x10e,%eax
          ╭                        0x00007fba93f3913f:   ja     0x00007fba93f39346
   0.03%  │                        0x00007fba93f39145:   vmovdqu 0x17bb89b3(%rip),%xmm5        # 0x00007fbaabaf1b00
   0.01%  │                        0x00007fba93f3914d:   vmovdqu 0x17bbea3b(%rip),%xmm6        # 0x00007fbaabaf7b90
   0.00%  │                        0x00007fba93f39155:   vunpcklpd %xmm0,%xmm0,%xmm0
          │                        0x00007fba93f39159:   vmovdqu 0x17bbea1f(%rip),%xmm4        # 0x00007fbaabaf7b80
   0.02%  │                        0x00007fba93f39161:   vandpd %xmm0,%xmm4,%xmm4
   0.00%  │                        0x00007fba93f39165:   vmovdqu 0x17bbea03(%rip),%xmm1        # 0x00007fbaabaf7b70
   0.01%  │                        0x00007fba93f3916d:   vmulpd %xmm0,%xmm1,%xmm1
          │                        0x00007fba93f39171:   vpor   %xmm4,%xmm5,%xmm5
   0.02%  │                        0x00007fba93f39175:   vaddpd %xmm5,%xmm1,%xmm1
   0.08%  │                        0x00007fba93f39179:   vmovdqu %xmm1,%xmm7
   0.01%  │                        0x00007fba93f3917d:   vunpckhpd %xmm7,%xmm7,%xmm7
   0.02%  │                        0x00007fba93f39181:   vcvttsd2si %xmm7,%edx
   0.11%  │                        0x00007fba93f39185:   vcvttpd2dq %xmm1,%xmm1
   0.01%  │                        0x00007fba93f3918a:   vcvtdq2pd %xmm1,%xmm1
   0.08%  │                        0x00007fba93f3918e:   vmulpd %xmm6,%xmm1,%xmm1
   0.09%  │                        0x00007fba93f39192:   vmovdqu 0x17bbe9c6(%rip),%xmm3        # 0x00007fbaabaf7b60
   0.00%  │                        0x00007fba93f3919a:   vmovq  0x17bbd31e(%rip),%xmm5        # 0x00007fbaabaf64c0
          │                        0x00007fba93f391a2:   add    $0x72900,%rdx
   0.01%  │                        0x00007fba93f391a9:   vmovdqu 0x17bbe99f(%rip),%xmm4        # 0x00007fbaabaf7b50
   0.04%  │                        0x00007fba93f391b1:   vmulpd %xmm1,%xmm3,%xmm3
   0.10%  │                        0x00007fba93f391b5:   and    $0x1f,%rdx
          │                        0x00007fba93f391b9:   vmulsd %xmm1,%xmm5,%xmm5
   0.03%  │                        0x00007fba93f391bd:   mov    %rdx,%rcx
   0.00%  │                        0x00007fba93f391c0:   vmulpd %xmm1,%xmm4,%xmm4
   0.02%  │                        0x00007fba93f391c4:   shl    %rcx
          │                        0x00007fba93f391c7:   vsubpd %xmm3,%xmm0,%xmm0
   0.04%  │                        0x00007fba93f391cb:   vmulpd 0x17bbe96d(%rip),%xmm1,%xmm1        # 0x00007fbaabaf7b40
   0.01%  │                        0x00007fba93f391d3:   add    %rcx,%rdx
          │                        0x00007fba93f391d6:   shl    $0x2,%rcx
          │                        0x00007fba93f391da:   add    %rcx,%rdx
   0.03%  │                        0x00007fba93f391dd:   vaddsd %xmm0,%xmm5,%xmm5
   0.11%  │                        0x00007fba93f391e1:   vmovdqu %xmm0,%xmm2
          │                        0x00007fba93f391e5:   vsubpd %xmm4,%xmm0,%xmm0
   0.03%  │                        0x00007fba93f391e9:   vmovq  0x17bb891f(%rip),%xmm6        # 0x00007fbaabaf1b10
   0.00%  │                        0x00007fba93f391f1:   shl    $0x4,%rdx
   0.03%  │                        0x00007fba93f391f5:   movabs $0x7fbaabaf6540,%rax
          │                        0x00007fba93f391ff:   vandpd 0x17bbd329(%rip),%xmm5,%xmm5        # 0x00007fbaabaf6530
   0.01%  │                        0x00007fba93f39207:   vmovdqu %xmm0,%xmm3
   0.00%  │                        0x00007fba93f3920b:   add    %rdx,%rax
   0.02%  │                        0x00007fba93f3920e:   vsubpd %xmm0,%xmm2,%xmm2
   0.08%  │                        0x00007fba93f39212:   vunpckhpd %xmm0,%xmm0,%xmm0
   0.00%  │                        0x00007fba93f39216:   vdivsd %xmm5,%xmm6,%xmm6
   0.31%  │                        0x00007fba93f3921a:   vsubpd %xmm4,%xmm2,%xmm2
          │                        0x00007fba93f3921e:   vmovdqu 0x10(%rax),%xmm7
          │                        0x00007fba93f39223:   vsubsd %xmm5,%xmm3,%xmm3
          │                        0x00007fba93f39227:   vmulpd %xmm0,%xmm7,%xmm7
   0.04%  │                        0x00007fba93f3922b:   vsubpd %xmm1,%xmm2,%xmm2
          │                        0x00007fba93f3922f:   vmovdqu 0x30(%rax),%xmm1
          │                        0x00007fba93f39234:   vmulpd %xmm0,%xmm1,%xmm1
          │                        0x00007fba93f39238:   vmovdqu 0x60(%rax),%xmm4
   0.04%  │                        0x00007fba93f3923d:   vmulpd %xmm0,%xmm4,%xmm4
   0.00%  │                        0x00007fba93f39241:   vaddsd %xmm3,%xmm2,%xmm2
          │                        0x00007fba93f39245:   vmovdqu %xmm0,%xmm3
          │                        0x00007fba93f39249:   vmulpd %xmm0,%xmm0,%xmm0
   0.05%  │                        0x00007fba93f3924d:   vaddpd (%rax),%xmm7,%xmm7
          │                        0x00007fba93f39251:   vaddpd 0x20(%rax),%xmm1,%xmm1
   0.00%  │                        0x00007fba93f39256:   vmulpd %xmm0,%xmm1,%xmm1
          │                        0x00007fba93f3925a:   vaddpd 0x50(%rax),%xmm4,%xmm4
   0.04%  │                        0x00007fba93f3925f:   vaddpd %xmm1,%xmm7,%xmm7
   0.01%  │                        0x00007fba93f39263:   vmovdqu 0x70(%rax),%xmm1
          │                        0x00007fba93f39268:   vmulpd %xmm0,%xmm1,%xmm1
          │                        0x00007fba93f3926c:   vmulpd %xmm0,%xmm0,%xmm0
   0.02%  │                        0x00007fba93f39270:   vaddpd %xmm1,%xmm4,%xmm4
   0.02%  │                        0x00007fba93f39274:   vmovdqu 0x40(%rax),%xmm1
          │                        0x00007fba93f39279:   vmulpd %xmm0,%xmm1,%xmm1
          │                        0x00007fba93f3927d:   vaddpd %xmm1,%xmm7,%xmm7
   0.08%  │                        0x00007fba93f39281:   vmovdqu %xmm3,%xmm1
          │                        0x00007fba93f39285:   vmulpd %xmm0,%xmm3,%xmm3
          │                        0x00007fba93f39289:   vmulsd %xmm0,%xmm0,%xmm0
          │                        0x00007fba93f3928d:   vmulpd 0x90(%rax),%xmm1,%xmm1
   0.06%  │                        0x00007fba93f39295:   vmulpd %xmm3,%xmm4,%xmm4
          │                        0x00007fba93f39299:   vmovdqu %xmm1,%xmm3
          │                        0x00007fba93f3929d:   vaddpd %xmm4,%xmm7,%xmm7
   0.11%  │                        0x00007fba93f392a1:   vmovdqu %xmm1,%xmm4
          │                        0x00007fba93f392a5:   vmulsd %xmm7,%xmm0,%xmm0
   0.14%  │                        0x00007fba93f392a9:   vunpckhpd %xmm7,%xmm7,%xmm7
          │                        0x00007fba93f392ad:   vaddsd %xmm7,%xmm0,%xmm0
   0.15%  │                        0x00007fba93f392b1:   vunpckhpd %xmm1,%xmm1,%xmm1
          │                        0x00007fba93f392b5:   vaddsd %xmm1,%xmm3,%xmm3
          │                        0x00007fba93f392b9:   vsubsd %xmm3,%xmm4,%xmm4
          │                        0x00007fba93f392bd:   vaddsd %xmm4,%xmm1,%xmm1
   0.06%  │                        0x00007fba93f392c1:   vmovdqu %xmm2,%xmm4
          │                        0x00007fba93f392c5:   vmovq  0x90(%rax),%xmm7
          │                        0x00007fba93f392cd:   vunpckhpd %xmm2,%xmm2,%xmm2
          │                        0x00007fba93f392d1:   vaddsd 0x98(%rax),%xmm7,%xmm7
   0.02%  │                        0x00007fba93f392d9:   vmulsd %xmm2,%xmm7,%xmm7
          │                        0x00007fba93f392dd:   vaddsd 0x88(%rax),%xmm7,%xmm7
          │                        0x00007fba93f392e5:   vaddsd %xmm1,%xmm7,%xmm7
          │                        0x00007fba93f392e9:   vaddsd %xmm7,%xmm0,%xmm0
   0.09%  │                        0x00007fba93f392ed:   vmovq  0x17bb881b(%rip),%xmm7        # 0x00007fbaabaf1b10
          │                        0x00007fba93f392f5:   vmulsd %xmm6,%xmm4,%xmm4
          │                        0x00007fba93f392f9:   vmovq  0xa8(%rax),%xmm2
          │                        0x00007fba93f39301:   vandpd %xmm6,%xmm2,%xmm2
   0.02%  │                        0x00007fba93f39305:   vmulsd %xmm2,%xmm5,%xmm5
          │                        0x00007fba93f39309:   vmulsd 0xa0(%rax),%xmm6,%xmm6
          │                        0x00007fba93f39311:   vsubsd %xmm5,%xmm7,%xmm7
          │                        0x00007fba93f39315:   vsubsd 0x80(%rax),%xmm2,%xmm2
   0.04%  │                        0x00007fba93f3931d:   vsubsd %xmm4,%xmm7,%xmm7
          │                        0x00007fba93f39321:   vmulsd %xmm6,%xmm7,%xmm7
          │                        0x00007fba93f39325:   vmovdqu %xmm3,%xmm4
          │                        0x00007fba93f39329:   vsubsd %xmm2,%xmm3,%xmm3
   0.03%  │                        0x00007fba93f3932d:   vaddsd %xmm3,%xmm2,%xmm2
          │                        0x00007fba93f39331:   vsubsd %xmm2,%xmm4,%xmm4
          │                        0x00007fba93f39335:   vaddsd %xmm4,%xmm0,%xmm0
   0.04%  │                        0x00007fba93f39339:   vsubsd %xmm7,%xmm0,%xmm0
   0.18%  │                        0x00007fba93f3933d:   vaddsd %xmm3,%xmm0,%xmm0
   0.16%  │╭                       0x00007fba93f39341:   jmp    0x00007fba93f3995d
   0.24%  ↘│╭                      0x00007fba93f39346:   jg     0x00007fba93f393ef
           ││                      0x00007fba93f3934c:   vpextrw $0x3,%xmm0,%eax
           ││                      0x00007fba93f39351:   mov    %eax,%edx
           ││                      0x00007fba93f39353:   and    $0x7ff0,%eax
           ││╭                     0x00007fba93f39358:   je     0x00007fba93f393e2
           │││                     0x00007fba93f3935e:   and    $0x7fff,%edx
           │││                     0x00007fba93f39364:   cmp    $0x3e20,%edx
           │││╭                    0x00007fba93f3936a:   jb     0x00007fba93f393c5
           ││││                    0x00007fba93f39370:   vmovdqu %xmm0,%xmm2
           ││││                    0x00007fba93f39374:   vmovdqu %xmm0,%xmm3
           ││││                    0x00007fba93f39378:   vmovq  0x17bbd1a0(%rip),%xmm1        # 0x00007fbaabaf6520
           ││││                    0x00007fba93f39380:   vmulsd %xmm0,%xmm2,%xmm2
           ││││                    0x00007fba93f39384:   vmulsd %xmm2,%xmm3,%xmm3
           ││││                    0x00007fba93f39388:   vmulsd %xmm2,%xmm1,%xmm1
           ││││                    0x00007fba93f3938c:   vaddsd 0x17bbd17c(%rip),%xmm1,%xmm1        # 0x00007fbaabaf6510
           ││││                    0x00007fba93f39394:   vmulsd %xmm2,%xmm1,%xmm1
           ││││                    0x00007fba93f39398:   vaddsd 0x17bbd160(%rip),%xmm1,%xmm1        # 0x00007fbaabaf6500
           ││││                    0x00007fba93f393a0:   vmulsd %xmm2,%xmm1,%xmm1
           ││││                    0x00007fba93f393a4:   vaddsd 0x17bbd144(%rip),%xmm1,%xmm1        # 0x00007fbaabaf64f0
           ││││                    0x00007fba93f393ac:   vmulsd %xmm2,%xmm1,%xmm1
           ││││                    0x00007fba93f393b0:   vaddsd 0x17bbd128(%rip),%xmm1,%xmm1        # 0x00007fbaabaf64e0
           ││││                    0x00007fba93f393b8:   vmulsd %xmm3,%xmm1,%xmm1
           ││││                    0x00007fba93f393bc:   vaddsd %xmm1,%xmm0,%xmm0
           ││││╭                   0x00007fba93f393c0:   jmp    0x00007fba93f3995d
           │││↘│                   0x00007fba93f393c5:   vmovq  0x17bb871b(%rip),%xmm3        # 0x00007fbaabaf1ae8
           │││ │                   0x00007fba93f393cd:   vmulsd %xmm0,%xmm3,%xmm3
           │││ │                   0x00007fba93f393d1:   vaddsd %xmm3,%xmm0,%xmm0
           │││ │                   0x00007fba93f393d5:   vmulsd 0x17bb8703(%rip),%xmm0,%xmm0        # 0x00007fbaabaf1ae0
           │││ │╭                  0x00007fba93f393dd:   jmp    0x00007fba93f3995d
           ││↘ ││                  0x00007fba93f393e2:   vmovdqu %xmm0,%xmm1
           ││  ││                  0x00007fba93f393e6:   vmulsd %xmm1,%xmm1,%xmm1
           ││  ││╭                 0x00007fba93f393ea:   jmp    0x00007fba93f3995d
   0.54%   │↘  │││                 0x00007fba93f393ef:   vpextrw $0x3,%xmm0,%eax
           │   │││                 0x00007fba93f393f4:   and    $0x7ff0,%eax
   0.00%   │   │││                 0x00007fba93f393f9:   cmp    $0x7ff0,%eax
           │   │││╭                0x00007fba93f393fe:   je     0x00007fba93f3994a
   0.50%   │   ││││                0x00007fba93f39404:   vpextrw $0x3,%xmm0,%ecx
           │   ││││                0x00007fba93f39409:   and    $0x7ff0,%ecx
   0.05%   │   ││││                0x00007fba93f3940f:   sub    $0x3f60,%ecx
   0.53%   │   ││││                0x00007fba93f39415:   shr    $0x7,%ecx
   0.39%   │   ││││                0x00007fba93f39418:   and    $0xfffc,%ecx
   0.21%   │   ││││                0x00007fba93f3941e:   movabs $0x7fbaabaf1990,%r11
   0.00%   │   ││││                0x00007fba93f39428:   add    %r11,%rcx
   0.64%   │   ││││                0x00007fba93f3942b:   vmovq  %xmm0,%rax
   0.04%   │   ││││                0x00007fba93f39430:   mov    0x14(%rcx),%r10d
   1.31%   │   ││││                0x00007fba93f39434:   mov    0x18(%rcx),%r8d
   0.01%   │   ││││                0x00007fba93f39438:   mov    %eax,%edx
   0.19%   │   ││││                0x00007fba93f3943a:   shr    $0x15,%rax
           │   ││││                0x00007fba93f3943e:   or     $0x80000000,%eax
   0.28%   │   ││││                0x00007fba93f39443:   shr    $0xb,%eax
           │   ││││                0x00007fba93f39446:   mov    %r10d,%r9d
   0.19%   │   ││││                0x00007fba93f39449:   imul   %rdx,%r10
   0.73%   │   ││││                0x00007fba93f3944d:   imul   %rax,%r9
   0.27%   │   ││││                0x00007fba93f39451:   imul   %rax,%r8
   0.19%   │   ││││                0x00007fba93f39455:   mov    0x10(%rcx),%esi
   0.18%   │   ││││                0x00007fba93f39458:   mov    0xc(%rcx),%edi
   0.06%   │   ││││                0x00007fba93f3945b:   mov    %r10d,%r11d
   0.05%   │   ││││                0x00007fba93f3945e:   shr    $0x20,%r10
   0.19%   │   ││││                0x00007fba93f39462:   add    %r10,%r9
   0.21%   │   ││││                0x00007fba93f39465:   add    %r8,%r11
   0.01%   │   ││││                0x00007fba93f39468:   mov    %r11d,%r8d
   0.07%   │   ││││                0x00007fba93f3946b:   shr    $0x20,%r11
   0.22%   │   ││││                0x00007fba93f3946f:   add    %r11,%r9
   0.55%   │   ││││                0x00007fba93f39472:   mov    %esi,%r10d
           │   ││││                0x00007fba93f39475:   imul   %rdx,%rsi
   0.04%   │   ││││                0x00007fba93f39479:   imul   %rax,%r10
   0.00%   │   ││││                0x00007fba93f3947d:   mov    %edi,%r11d
   0.43%   │   ││││                0x00007fba93f39480:   imul   %rdx,%rdi
           │   ││││                0x00007fba93f39484:   mov    %esi,%ebx
   0.05%   │   ││││                0x00007fba93f39486:   shr    $0x20,%rsi
           │   ││││                0x00007fba93f3948a:   add    %rbx,%r9
   0.43%   │   ││││                0x00007fba93f3948d:   mov    %r9d,%ebx
   0.01%   │   ││││                0x00007fba93f39490:   shr    $0x20,%r9
   0.22%   │   ││││                0x00007fba93f39494:   add    %rsi,%r10
   0.01%   │   ││││                0x00007fba93f39497:   add    %r9,%r10
   0.51%   │   ││││                0x00007fba93f3949a:   shl    $0x20,%rbx
   0.00%   │   ││││                0x00007fba93f3949e:   or     %rbx,%r8
   0.22%   │   ││││                0x00007fba93f394a1:   imul   %rax,%r11
           │   ││││                0x00007fba93f394a5:   mov    0x8(%rcx),%r9d
   0.29%   │   ││││                0x00007fba93f394a9:   mov    0x4(%rcx),%esi
   0.00%   │   ││││                0x00007fba93f394ac:   mov    %edi,%ebx
   0.20%   │   ││││                0x00007fba93f394ae:   shr    $0x20,%rdi
           │   ││││                0x00007fba93f394b2:   add    %rbx,%r10
   0.35%   │   ││││                0x00007fba93f394b5:   mov    %r10d,%ebx
           │   ││││                0x00007fba93f394b8:   shr    $0x20,%r10
   0.25%   │   ││││                0x00007fba93f394bc:   add    %rdi,%r11
   0.07%   │   ││││                0x00007fba93f394bf:   add    %r10,%r11
   0.41%   │   ││││                0x00007fba93f394c2:   mov    %r9,%rdi
   0.00%   │   ││││                0x00007fba93f394c5:   imul   %rdx,%r9
   0.08%   │   ││││                0x00007fba93f394c9:   imul   %rax,%rdi
           │   ││││                0x00007fba93f394cd:   mov    %r9d,%r10d
   0.44%   │   ││││                0x00007fba93f394d0:   shr    $0x20,%r9
   0.01%   │   ││││                0x00007fba93f394d4:   add    %r10,%r11
   0.07%   │   ││││                0x00007fba93f394d7:   mov    %r11d,%r10d
           │   ││││                0x00007fba93f394da:   shr    $0x20,%r11
   0.41%   │   ││││                0x00007fba93f394de:   add    %r9,%rdi
   0.00%   │   ││││                0x00007fba93f394e1:   add    %r11,%rdi
   0.28%   │   ││││                0x00007fba93f394e4:   mov    %rsi,%r9
           │   ││││                0x00007fba93f394e7:   imul   %rdx,%rsi
   0.19%   │   ││││                0x00007fba93f394eb:   imul   %rax,%r9
           │   ││││                0x00007fba93f394ef:   shl    $0x20,%r10
   0.30%   │   ││││                0x00007fba93f394f3:   or     %rbx,%r10
   0.16%   │   ││││                0x00007fba93f394f6:   mov    (%rcx),%eax
   0.21%   │   ││││                0x00007fba93f394f8:   mov    %esi,%r11d
   0.00%   │   ││││                0x00007fba93f394fb:   shr    $0x20,%rsi
   0.16%   │   ││││                0x00007fba93f394ff:   add    %r11,%rdi
   0.15%   │   ││││                0x00007fba93f39502:   mov    %edi,%r11d
   0.18%   │   ││││                0x00007fba93f39505:   shr    $0x20,%rdi
   0.09%   │   ││││                0x00007fba93f39509:   add    %rsi,%r9
   0.11%   │   ││││                0x00007fba93f3950c:   add    %rdi,%r9
   0.21%   │   ││││                0x00007fba93f3950f:   imul   %rax,%rdx
   0.18%   │   ││││                0x00007fba93f39513:   vpextrw $0x3,%xmm0,%ebx
   0.13%   │   ││││                0x00007fba93f39518:   movabs $0x7fbaabaf1990,%rdi
   0.21%   │   ││││                0x00007fba93f39522:   sub    %rdi,%rcx
   0.19%   │   ││││                0x00007fba93f39525:   add    %ecx,%ecx
   0.00%   │   ││││                0x00007fba93f39527:   add    %ecx,%ecx
   0.09%   │   ││││                0x00007fba93f39529:   add    %ecx,%ecx
   0.19%   │   ││││                0x00007fba93f3952b:   add    $0x13,%ecx
   0.19%   │   ││││                0x00007fba93f3952e:   mov    $0x8000,%esi
           │   ││││                0x00007fba93f39533:   and    %ebx,%esi
   0.09%   │   ││││                0x00007fba93f39535:   shr    $0x4,%ebx
   0.17%   │   ││││                0x00007fba93f39538:   and    $0x7ff,%ebx
   0.20%   │   ││││                0x00007fba93f3953e:   sub    $0x3ff,%ebx
           │   ││││                0x00007fba93f39544:   sub    %ebx,%ecx
   0.09%   │   ││││                0x00007fba93f39546:   add    %rdx,%r9
   0.18%   │   ││││                0x00007fba93f39549:   mov    %ecx,%edx
   0.18%   │   ││││                0x00007fba93f3954b:   add    $0x20,%edx
           │   ││││                0x00007fba93f3954e:   cmp    $0x0,%ecx
           │   ││││╭               0x00007fba93f39551:   jl     0x00007fba93f3989a
   0.10%   │   │││││               0x00007fba93f39557:   neg    %ecx
   0.23%   │   │││││               0x00007fba93f39559:   add    $0x1d,%ecx
   0.18%   │   │││││               0x00007fba93f3955c:   shl    %cl,%r9d
   0.32%   │   │││││               0x00007fba93f3955f:   mov    %r9d,%edi
   0.21%   │   │││││               0x00007fba93f39562:   and    $0x3fffffff,%r9d
           │   │││││               0x00007fba93f39569:   test   $0x20000000,%r9d
           │   │││││╭              0x00007fba93f39570:   jne    0x00007fba93f398c7
   0.07%   │   ││││││              0x00007fba93f39576:   shr    %cl,%r9d
   0.21%   │   ││││││              0x00007fba93f39579:   mov    $0x0,%ebx
   0.06%   │   ││││││              0x00007fba93f3957e:   shl    $0x20,%r9
   0.13%   │   ││││││              0x00007fba93f39582:   or     %r11,%r9
   0.15%   │   ││││││         ↗↗↗  0x00007fba93f39585:   cmp    $0x0,%r9
           │   ││││││╭        │││  0x00007fba93f39589:   je     0x00007fba93f39846
   0.14%   │   │││││││  ↗↗    │││  0x00007fba93f3958f:   bsr    %r9,%r11
   0.33%   │   │││││││  ││    │││  0x00007fba93f39593:   mov    $0x1d,%ecx
   0.06%   │   │││││││  ││    │││  0x00007fba93f39598:   sub    %r11d,%ecx
           │   │││││││╭ ││    │││  0x00007fba93f3959b:   jle    0x00007fba93f39877
   0.01%   │   ││││││││ ││    │││  0x00007fba93f395a1:   shl    %cl,%r9
   0.02%   │   ││││││││ ││    │││  0x00007fba93f395a4:   mov    %r10,%rax
   0.00%   │   ││││││││ ││    │││  0x00007fba93f395a7:   shl    %cl,%r10
   0.01%   │   ││││││││ ││    │││  0x00007fba93f395aa:   add    %ecx,%edx
   0.01%   │   ││││││││ ││    │││  0x00007fba93f395ac:   neg    %ecx
           │   ││││││││ ││    │││  0x00007fba93f395ae:   add    $0x40,%ecx
           │   ││││││││ ││    │││  0x00007fba93f395b1:   shr    %cl,%rax
   0.02%   │   ││││││││ ││    │││  0x00007fba93f395b4:   shr    %cl,%r8
   0.02%   │   ││││││││ ││    │││  0x00007fba93f395b7:   or     %rax,%r9
           │   ││││││││ ││    │││  0x00007fba93f395ba:   or     %r8,%r10
   0.26%   │   ││││││││ ││↗↗↗ │││  0x00007fba93f395bd:   vcvtsi2sd %r9,%xmm0,%xmm0
   1.07%   │   ││││││││ │││││ │││  0x00007fba93f395c2:   shr    %r10
   0.08%   │   ││││││││ │││││ │││  0x00007fba93f395c5:   vcvtsi2sd %r10,%xmm3,%xmm3
   0.88%   │   ││││││││ │││││ │││  0x00007fba93f395ca:   vxorpd %xmm4,%xmm4,%xmm4
   0.03%   │   ││││││││ │││││ │││  0x00007fba93f395ce:   shl    $0x4,%edx
   0.10%   │   ││││││││ │││││ │││  0x00007fba93f395d1:   neg    %edx
   0.09%   │   ││││││││ │││││ │││  0x00007fba93f395d3:   add    $0x3ff0,%edx
   0.27%   │   ││││││││ │││││ │││  0x00007fba93f395d9:   or     %esi,%edx
   0.02%   │   ││││││││ │││││ │││  0x00007fba93f395db:   xor    %ebx,%edx
   0.07%   │   ││││││││ │││││ │││  0x00007fba93f395dd:   vpinsrw $0x3,%edx,%xmm4,%xmm4
   0.37%   │   ││││││││ │││││ │││  0x00007fba93f395e2:   vmovq  0x17bbcede(%rip),%xmm2        # 0x00007fbaabaf64c8
   0.02%   │   ││││││││ │││││ │││  0x00007fba93f395ea:   vmovq  0x17bbcede(%rip),%xmm7        # 0x00007fbaabaf64d0
   0.10%   │   ││││││││ │││││ │││  0x00007fba93f395f2:   vxorpd %xmm5,%xmm5,%xmm5
   0.08%   │   ││││││││ │││││ │││  0x00007fba93f395f6:   sub    $0x3f0,%edx
   0.29%   │   ││││││││ │││││ │││  0x00007fba93f395fc:   vpinsrw $0x3,%edx,%xmm5,%xmm5
   0.19%   │   ││││││││ │││││ │││  0x00007fba93f39601:   vmulsd %xmm4,%xmm0,%xmm0
   0.31%   │   ││││││││ │││││ │││  0x00007fba93f39605:   shl    $0x10,%esi
   0.19%   │   ││││││││ │││││ │││  0x00007fba93f39608:   sar    $0x1f,%esi
   0.02%   │   ││││││││ │││││ │││  0x00007fba93f3960b:   vmulsd %xmm5,%xmm3,%xmm3
   0.41%   │   ││││││││ │││││ │││  0x00007fba93f3960f:   vmovdqu %xmm0,%xmm1
   0.13%   │   ││││││││ │││││ │││  0x00007fba93f39613:   vmulsd %xmm2,%xmm0,%xmm0
   0.57%   │   ││││││││ │││││ │││  0x00007fba93f39617:   shr    $0x1e,%edi
           │   ││││││││ │││││ │││  0x00007fba93f3961a:   vaddsd %xmm3,%xmm1,%xmm1
   0.79%   │   ││││││││ │││││ │││  0x00007fba93f3961e:   vmulsd %xmm2,%xmm3,%xmm3
   0.43%   │   ││││││││ │││││ │││  0x00007fba93f39622:   add    %esi,%edi
           │   ││││││││ │││││ │││  0x00007fba93f39624:   xor    %esi,%edi
   0.00%   │   ││││││││ │││││ │││  0x00007fba93f39626:   vmulsd %xmm1,%xmm7,%xmm7
   1.12%   │   ││││││││ │││││ │││  0x00007fba93f3962a:   mov    %edi,%eax
   0.08%   │   ││││││││ │││││ │││  0x00007fba93f3962c:   vaddsd %xmm3,%xmm7,%xmm7
   1.52%   │   ││││││││ │││││ │││  0x00007fba93f39630:   vmovdqu %xmm0,%xmm2
           │   ││││││││ │││││ │││  0x00007fba93f39634:   vaddsd %xmm7,%xmm0,%xmm0
   1.85%   │   ││││││││ │││││ │││  0x00007fba93f39638:   vsubsd %xmm0,%xmm2,%xmm2
   1.95%   │   ││││││││ │││││ │││  0x00007fba93f3963c:   vaddsd %xmm2,%xmm7,%xmm7
   1.94%   │   ││││││││ │││││ │││  0x00007fba93f39640:   vmovdqu 0x17bbe528(%rip),%xmm1        # 0x00007fbaabaf7b70
   0.00%   │   ││││││││ │││││ │││  0x00007fba93f39648:   vmovddup %xmm0,%xmm0
           │   ││││││││ │││││ │││  0x00007fba93f3964c:   vmovdqu 0x17bbe52c(%rip),%xmm4        # 0x00007fbaabaf7b80
           │   ││││││││ │││││ │││  0x00007fba93f39654:   vandpd %xmm0,%xmm4,%xmm4
   0.49%   │   ││││││││ │││││ │││  0x00007fba93f39658:   vmulpd %xmm0,%xmm1,%xmm1
           │   ││││││││ │││││ │││  0x00007fba93f3965c:   vmovddup %xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007fba93f39660:   vmovdqu 0x17bb8498(%rip),%xmm5        # 0x00007fbaabaf1b00
   0.00%   │   ││││││││ │││││ │││  0x00007fba93f39668:   vmovdqu 0x17bbe520(%rip),%xmm6        # 0x00007fbaabaf7b90
   0.50%   │   ││││││││ │││││ │││  0x00007fba93f39670:   vpor   %xmm4,%xmm5,%xmm5
   0.00%   │   ││││││││ │││││ │││  0x00007fba93f39674:   vaddpd %xmm5,%xmm1,%xmm1
   0.08%   │   ││││││││ │││││ │││  0x00007fba93f39678:   vmovdqu %xmm1,%xmm5
           │   ││││││││ │││││ │││  0x00007fba93f3967c:   vunpckhpd %xmm5,%xmm5,%xmm5
   0.58%   │   ││││││││ │││││ │││  0x00007fba93f39680:   vcvttsd2si %xmm5,%edx
   2.87%   │   ││││││││ │││││ │││  0x00007fba93f39684:   vcvttpd2dq %xmm1,%xmm1
   0.00%   │   ││││││││ │││││ │││  0x00007fba93f39689:   vcvtdq2pd %xmm1,%xmm1
   1.41%   │   ││││││││ │││││ │││  0x00007fba93f3968d:   vmulpd %xmm6,%xmm1,%xmm1
   1.92%   │   ││││││││ │││││ │││  0x00007fba93f39691:   vmovdqu 0x17bbe4c7(%rip),%xmm3        # 0x00007fbaabaf7b60
           │   ││││││││ │││││ │││  0x00007fba93f39699:   vmovq  0x17bbce1f(%rip),%xmm5        # 0x00007fbaabaf64c0
           │   ││││││││ │││││ │││  0x00007fba93f396a1:   shl    $0x4,%eax
           │   ││││││││ │││││ │││  0x00007fba93f396a4:   add    $0x72900,%edx
   0.52%   │   ││││││││ │││││ │││  0x00007fba93f396aa:   vmovdqu 0x17bbe49e(%rip),%xmm4        # 0x00007fbaabaf7b50
           │   ││││││││ │││││ │││  0x00007fba93f396b2:   vmulpd %xmm1,%xmm3,%xmm3
   1.57%   │   ││││││││ │││││ │││  0x00007fba93f396b6:   add    %eax,%edx
   0.00%   │   ││││││││ │││││ │││  0x00007fba93f396b8:   and    $0x1f,%edx
           │   ││││││││ │││││ │││  0x00007fba93f396bb:   vmulsd %xmm1,%xmm5,%xmm5
   0.25%   │   ││││││││ │││││ │││  0x00007fba93f396bf:   mov    %edx,%ecx
   0.32%   │   ││││││││ │││││ │││  0x00007fba93f396c1:   vmulpd %xmm1,%xmm4,%xmm4
   0.12%   │   ││││││││ │││││ │││  0x00007fba93f396c5:   shl    %ecx
           │   ││││││││ │││││ │││  0x00007fba93f396c7:   vsubpd %xmm3,%xmm0,%xmm0
   1.23%   │   ││││││││ │││││ │││  0x00007fba93f396cb:   vmulpd 0x17bbe46d(%rip),%xmm1,%xmm1        # 0x00007fbaabaf7b40
           │   ││││││││ │││││ │││  0x00007fba93f396d3:   add    %ecx,%edx
           │   ││││││││ │││││ │││  0x00007fba93f396d5:   shl    $0x2,%ecx
           │   ││││││││ │││││ │││  0x00007fba93f396d8:   add    %ecx,%edx
   0.52%   │   ││││││││ │││││ │││  0x00007fba93f396da:   vaddsd %xmm0,%xmm5,%xmm5
   1.50%   │   ││││││││ │││││ │││  0x00007fba93f396de:   vmovdqu %xmm0,%xmm2
   0.00%   │   ││││││││ │││││ │││  0x00007fba93f396e2:   vsubpd %xmm4,%xmm0,%xmm0
   0.41%   │   ││││││││ │││││ │││  0x00007fba93f396e6:   vmovq  0x17bb8422(%rip),%xmm6        # 0x00007fbaabaf1b10
           │   ││││││││ │││││ │││  0x00007fba93f396ee:   shl    $0x4,%edx
   0.13%   │   ││││││││ │││││ │││  0x00007fba93f396f1:   movabs $0x7fbaabaf6540,%rax
   0.00%   │   ││││││││ │││││ │││  0x00007fba93f396fb:   vandpd 0x17bbce2d(%rip),%xmm5,%xmm5        # 0x00007fbaabaf6530
   1.27%   │   ││││││││ │││││ │││  0x00007fba93f39703:   vmovdqu %xmm0,%xmm3
           │   ││││││││ │││││ │││  0x00007fba93f39707:   add    %rdx,%rax
   0.04%   │   ││││││││ │││││ │││  0x00007fba93f3970a:   vsubpd %xmm0,%xmm2,%xmm2
   1.04%   │   ││││││││ │││││ │││  0x00007fba93f3970e:   vunpckhpd %xmm0,%xmm0,%xmm0
   0.12%   │   ││││││││ │││││ │││  0x00007fba93f39712:   vdivsd %xmm5,%xmm6,%xmm6
   5.06%   │   ││││││││ │││││ │││  0x00007fba93f39716:   vsubpd %xmm4,%xmm2,%xmm2
   0.00%   │   ││││││││ │││││ │││  0x00007fba93f3971a:   vsubsd %xmm5,%xmm3,%xmm3
           │   ││││││││ │││││ │││  0x00007fba93f3971e:   vsubpd %xmm1,%xmm2,%xmm2
           │   ││││││││ │││││ │││  0x00007fba93f39722:   vmovdqu 0x30(%rax),%xmm1
   0.50%   │   ││││││││ │││││ │││  0x00007fba93f39727:   vaddpd %xmm7,%xmm2,%xmm2
   0.08%   │   ││││││││ │││││ │││  0x00007fba93f3972b:   vmovdqu 0x10(%rax),%xmm7
           │   ││││││││ │││││ │││  0x00007fba93f39730:   vmulpd %xmm0,%xmm7,%xmm7
   0.00%   │   ││││││││ │││││ │││  0x00007fba93f39734:   vmovdqu 0x60(%rax),%xmm4
   0.43%   │   ││││││││ │││││ │││  0x00007fba93f39739:   vmulpd %xmm0,%xmm1,%xmm1
   0.07%   │   ││││││││ │││││ │││  0x00007fba93f3973d:   vmulpd %xmm0,%xmm4,%xmm4
           │   ││││││││ │││││ │││  0x00007fba93f39741:   vaddsd %xmm3,%xmm2,%xmm2
   1.20%   │   ││││││││ │││││ │││  0x00007fba93f39745:   vmovdqu %xmm0,%xmm3
   0.01%   │   ││││││││ │││││ │││  0x00007fba93f39749:   vmulpd %xmm0,%xmm0,%xmm0
           │   ││││││││ │││││ │││  0x00007fba93f3974d:   vaddpd (%rax),%xmm7,%xmm7
   0.00%   │   ││││││││ │││││ │││  0x00007fba93f39751:   vaddpd 0x20(%rax),%xmm1,%xmm1
   0.50%   │   ││││││││ │││││ │││  0x00007fba93f39756:   vmulpd %xmm0,%xmm1,%xmm1
   0.00%   │   ││││││││ │││││ │││  0x00007fba93f3975a:   vaddpd 0x50(%rax),%xmm4,%xmm4
   0.00%   │   ││││││││ │││││ │││  0x00007fba93f3975f:   vaddpd %xmm1,%xmm7,%xmm7
   0.01%   │   ││││││││ │││││ │││  0x00007fba93f39763:   vmovdqu 0x70(%rax),%xmm1
   0.49%   │   ││││││││ │││││ │││  0x00007fba93f39768:   vmulpd %xmm0,%xmm1,%xmm1
   0.00%   │   ││││││││ │││││ │││  0x00007fba93f3976c:   vmulpd %xmm0,%xmm0,%xmm0
           │   ││││││││ │││││ │││  0x00007fba93f39770:   vaddpd %xmm1,%xmm4,%xmm4
   0.02%   │   ││││││││ │││││ │││  0x00007fba93f39774:   vmovdqu 0x40(%rax),%xmm1
   0.50%   │   ││││││││ │││││ │││  0x00007fba93f39779:   vmulpd %xmm0,%xmm1,%xmm1
   0.00%   │   ││││││││ │││││ │││  0x00007fba93f3977d:   vaddpd %xmm1,%xmm7,%xmm7
   0.23%   │   ││││││││ │││││ │││  0x00007fba93f39781:   vmovdqu %xmm3,%xmm1
           │   ││││││││ │││││ │││  0x00007fba93f39785:   vmulpd %xmm0,%xmm3,%xmm3
   0.40%   │   ││││││││ │││││ │││  0x00007fba93f39789:   vmulsd %xmm0,%xmm0,%xmm0
           │   ││││││││ │││││ │││  0x00007fba93f3978d:   vmulpd 0x90(%rax),%xmm1,%xmm1
   0.19%   │   ││││││││ │││││ │││  0x00007fba93f39795:   vmulpd %xmm3,%xmm4,%xmm4
   0.00%   │   ││││││││ │││││ │││  0x00007fba93f39799:   vmovdqu %xmm1,%xmm3
   0.32%   │   ││││││││ │││││ │││  0x00007fba93f3979d:   vaddpd %xmm4,%xmm7,%xmm7
   1.31%   │   ││││││││ │││││ │││  0x00007fba93f397a1:   vmovdqu %xmm1,%xmm4
           │   ││││││││ │││││ │││  0x00007fba93f397a5:   vmulsd %xmm7,%xmm0,%xmm0
   1.65%   │   ││││││││ │││││ │││  0x00007fba93f397a9:   vunpckhpd %xmm7,%xmm7,%xmm7
   0.00%   │   ││││││││ │││││ │││  0x00007fba93f397ad:   vaddsd %xmm7,%xmm0,%xmm0
   1.99%   │   ││││││││ │││││ │││  0x00007fba93f397b1:   vunpckhpd %xmm1,%xmm1,%xmm1
           │   ││││││││ │││││ │││  0x00007fba93f397b5:   vaddsd %xmm1,%xmm3,%xmm3
           │   ││││││││ │││││ │││  0x00007fba93f397b9:   vsubsd %xmm3,%xmm4,%xmm4
           │   ││││││││ │││││ │││  0x00007fba93f397bd:   vaddsd %xmm4,%xmm1,%xmm1
   0.48%   │   ││││││││ │││││ │││  0x00007fba93f397c1:   vmovdqu %xmm2,%xmm4
           │   ││││││││ │││││ │││  0x00007fba93f397c5:   vmovq  0x90(%rax),%xmm7
           │   ││││││││ │││││ │││  0x00007fba93f397cd:   vunpckhpd %xmm2,%xmm2,%xmm2
           │   ││││││││ │││││ │││  0x00007fba93f397d1:   vaddsd 0x98(%rax),%xmm7,%xmm7
   0.48%   │   ││││││││ │││││ │││  0x00007fba93f397d9:   vmulsd %xmm2,%xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007fba93f397dd:   vaddsd 0x88(%rax),%xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007fba93f397e5:   vaddsd %xmm1,%xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007fba93f397e9:   vaddsd %xmm7,%xmm0,%xmm0
   1.01%   │   ││││││││ │││││ │││  0x00007fba93f397ed:   vmovq  0x17bb831b(%rip),%xmm7        # 0x00007fbaabaf1b10
   0.00%   │   ││││││││ │││││ │││  0x00007fba93f397f5:   vmulsd %xmm6,%xmm4,%xmm4
           │   ││││││││ │││││ │││  0x00007fba93f397f9:   vmovq  0xa8(%rax),%xmm2
           │   ││││││││ │││││ │││  0x00007fba93f39801:   vandpd %xmm6,%xmm2,%xmm2
   0.53%   │   ││││││││ │││││ │││  0x00007fba93f39805:   vmulsd %xmm2,%xmm5,%xmm5
           │   ││││││││ │││││ │││  0x00007fba93f39809:   vmulsd 0xa0(%rax),%xmm6,%xmm6
           │   ││││││││ │││││ │││  0x00007fba93f39811:   vsubsd %xmm5,%xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007fba93f39815:   vsubsd 0x80(%rax),%xmm2,%xmm2
   0.46%   │   ││││││││ │││││ │││  0x00007fba93f3981d:   vsubsd %xmm4,%xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007fba93f39821:   vmulsd %xmm6,%xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007fba93f39825:   vmovdqu %xmm3,%xmm4
           │   ││││││││ │││││ │││  0x00007fba93f39829:   vsubsd %xmm2,%xmm3,%xmm3
   0.48%   │   ││││││││ │││││ │││  0x00007fba93f3982d:   vaddsd %xmm3,%xmm2,%xmm2
           │   ││││││││ │││││ │││  0x00007fba93f39831:   vsubsd %xmm2,%xmm4,%xmm4
           │   ││││││││ │││││ │││  0x00007fba93f39835:   vaddsd %xmm4,%xmm0,%xmm0
   0.46%   │   ││││││││ │││││ │││  0x00007fba93f39839:   vsubsd %xmm7,%xmm0,%xmm0
   1.96%   │   ││││││││ │││││ │││  0x00007fba93f3983d:   vaddsd %xmm3,%xmm0,%xmm0
   1.86%   │   ││││││││╭│││││ │││  0x00007fba93f39841:   jmp    0x00007fba93f3995d
           │   ││││││↘│││││││ │││  0x00007fba93f39846:   add    $0x40,%edx
           │   ││││││ │││││││ │││  0x00007fba93f39849:   mov    %r10,%r9
           │   ││││││ │││││││ │││  0x00007fba93f3984c:   mov    %r8,%r10
           │   ││││││ │││││││ │││  0x00007fba93f3984f:   mov    $0x0,%r8d
           │   ││││││ │││││││ │││  0x00007fba93f39855:   cmp    $0x0,%r9
           │   ││││││ ││╰││││ │││  0x00007fba93f39859:   jne    0x00007fba93f3958f
           │   ││││││ ││ ││││ │││  0x00007fba93f3985f:   add    $0x40,%edx
           │   ││││││ ││ ││││ │││  0x00007fba93f39862:   mov    %r10,%r9
           │   ││││││ ││ ││││ │││  0x00007fba93f39865:   mov    %r8,%r10
           │   ││││││ ││ ││││ │││  0x00007fba93f39868:   cmp    $0x0,%r9
           │   ││││││ ││ ╰│││ │││  0x00007fba93f3986c:   jne    0x00007fba93f3958f
           │   ││││││ ││  ╰││ │││  0x00007fba93f39872:   jmp    0x00007fba93f395bd
   0.44%   │   ││││││ ↘│   ╰│ │││  0x00007fba93f39877:   je     0x00007fba93f395bd
   0.35%   │   ││││││  │    │ │││  0x00007fba93f3987d:   neg    %ecx
   0.12%   │   ││││││  │    │ │││  0x00007fba93f3987f:   shr    %cl,%r10
   0.85%   │   ││││││  │    │ │││  0x00007fba93f39882:   mov    %r9,%rax
   0.08%   │   ││││││  │    │ │││  0x00007fba93f39885:   shr    %cl,%r9
   0.52%   │   ││││││  │    │ │││  0x00007fba93f39888:   sub    %ecx,%edx
   0.05%   │   ││││││  │    │ │││  0x00007fba93f3988a:   neg    %ecx
           │   ││││││  │    │ │││  0x00007fba93f3988c:   add    $0x40,%ecx
   0.14%   │   ││││││  │    │ │││  0x00007fba93f3988f:   shl    %cl,%rax
   0.44%   │   ││││││  │    │ │││  0x00007fba93f39892:   or     %rax,%r10
   0.17%   │   ││││││  │    ╰ │││  0x00007fba93f39895:   jmp    0x00007fba93f395bd
           │   ││││↘│  │      │││  0x00007fba93f3989a:   not    %ecx
           │   ││││ │  │      │││  0x00007fba93f3989c:   shl    $0x20,%r9
           │   ││││ │  │      │││  0x00007fba93f398a0:   or     %r11,%r9
           │   ││││ │  │      │││  0x00007fba93f398a3:   shl    %cl,%r9
           │   ││││ │  │      │││  0x00007fba93f398a6:   mov    %r9,%rdi
           │   ││││ │  │      │││  0x00007fba93f398a9:   test   $0x80000000,%r9d
           │   ││││ │  │     ╭│││  0x00007fba93f398b0:   jne    0x00007fba93f39909
           │   ││││ │  │     ││││  0x00007fba93f398b6:   shr    %cl,%r9d
           │   ││││ │  │     ││││  0x00007fba93f398b9:   mov    $0x0,%ebx
           │   ││││ │  │     ││││  0x00007fba93f398be:   shr    $0x2,%rdi
           │   ││││ │  │     │╰││  0x00007fba93f398c2:   jmp    0x00007fba93f39585
   0.04%   │   ││││ ↘  │     │ ││  0x00007fba93f398c7:   shr    %cl,%r9d
   0.23%   │   ││││    │     │ ││  0x00007fba93f398ca:   mov    $0x40000000,%ebx
   0.06%   │   ││││    │     │ ││  0x00007fba93f398cf:   shr    %cl,%ebx
   0.24%   │   ││││    │     │ ││  0x00007fba93f398d1:   shl    $0x20,%r9
   0.04%   │   ││││    │     │ ││  0x00007fba93f398d5:   or     %r11,%r9
   0.07%   │   ││││    │     │ ││  0x00007fba93f398d8:   shl    $0x20,%rbx
   0.09%   │   ││││    │     │ ││  0x00007fba93f398dc:   add    $0x40000000,%edi
   0.06%   │   ││││    │     │ ││  0x00007fba93f398e2:   mov    $0x0,%ecx
   0.07%   │   ││││    │     │ ││  0x00007fba93f398e7:   mov    $0x0,%r11d
   0.05%   │   ││││    │     │ ││  0x00007fba93f398ed:   sub    %r8,%rcx
   0.08%   │   ││││    │     │ ││  0x00007fba93f398f0:   sbb    %r10,%r11
   0.05%   │   ││││    │     │ ││  0x00007fba93f398f3:   sbb    %r9,%rbx
   0.05%   │   ││││    │     │ ││  0x00007fba93f398f6:   mov    %rcx,%r8
   0.05%   │   ││││    │     │ ││  0x00007fba93f398f9:   mov    %r11,%r10
   0.10%   │   ││││    │     │ ││  0x00007fba93f398fc:   mov    %rbx,%r9
   0.06%   │   ││││    │     │ ││  0x00007fba93f398ff:   mov    $0x8000,%ebx
   0.03%   │   ││││    │     │ ╰│  0x00007fba93f39904:   jmp    0x00007fba93f39585
           │   ││││    │     ↘  │  0x00007fba93f39909:   shr    %cl,%r9d
           │   ││││    │        │  0x00007fba93f3990c:   movabs $0x100000000,%rbx
           │   ││││    │        │  0x00007fba93f39916:   shr    %cl,%rbx
           │   ││││    │        │  0x00007fba93f39919:   mov    $0x0,%ecx
           │   ││││    │        │  0x00007fba93f3991e:   mov    $0x0,%r11d
           │   ││││    │        │  0x00007fba93f39924:   sub    %r8,%rcx
           │   ││││    │        │  0x00007fba93f39927:   sbb    %r10,%r11
           │   ││││    │        │  0x00007fba93f3992a:   sbb    %r9,%rbx
           │   ││││    │        │  0x00007fba93f3992d:   mov    %rcx,%r8
           │   ││││    │        │  0x00007fba93f39930:   mov    %r11,%r10
           │   ││││    │        │  0x00007fba93f39933:   mov    %rbx,%r9
           │   ││││    │        │  0x00007fba93f39936:   mov    $0x8000,%ebx
           │   ││││    │        │  0x00007fba93f3993b:   shr    $0x2,%rdi
           │   ││││    │        │  0x00007fba93f3993f:   add    $0x40000000,%edi
           │   ││││    │        ╰  0x00007fba93f39945:   jmp    0x00007fba93f39585
           │   │││↘    │           0x00007fba93f3994a:   vmovq  0x8(%rsp),%xmm0
           │   │││     │           0x00007fba93f39950:   vmulsd 0x17bb8100(%rip),%xmm0,%xmm0        # 0x00007fbaabaf1a58
           │   │││     │           0x00007fba93f39958:   vmovq  %xmm0,(%rsp)
   0.00%   ↘   ↘↘↘     ↘           0x00007fba93f3995d:   add    $0x10,%rsp
                                   0x00007fba93f39961:   pop    %rbx
   0.00%                           0x00007fba93f39962:   leave  
   0.53%                           0x00007fba93f39963:   ret    
                                 --------------------------------------------------------------------------------
                                 - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                 - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                 StubRoutines::libmExp [0x00007fba93f39964, 0x00007fba93f39c84] (800 bytes)
                                 --------------------------------------------------------------------------------
....................................................................................................
  83.68%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking, version 3, compile id 666 

               0x00007fba944f907c:   cmovl  %r11d,%r14d
               0x00007fba944f9080:   cmp    $0x1f40,%r14d
               0x00007fba944f9087:   mov    $0x1f40,%r11d
               0x00007fba944f908d:   cmova  %r11d,%r14d
               0x00007fba944f9091:   add    %ebx,%r14d
               0x00007fba944f9094:   mov    %ebp,0x30(%rsp)
               0x00007fba944f9098:   nopl   0x0(%rax,%rax,1)             ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@32 (line 98)
          ↗    0x00007fba944f90a0:   lea    0x6(%rbx),%r10d
          │    0x00007fba944f90a4:   lea    0x5(%rbx),%r11d
   0.07%  │    0x00007fba944f90a8:   vcvtsi2sd %r10d,%xmm0,%xmm0
   0.12%  │    0x00007fba944f90ad:   vmulsd (%rsp),%xmm0,%xmm0
   0.31%  │    0x00007fba944f90b2:   vmovsd %xmm0,0x18(%rsp)
   0.07%  │    0x00007fba944f90b8:   vcvtsi2sd %r11d,%xmm0,%xmm0
   0.19%  │    0x00007fba944f90bd:   vmulsd (%rsp),%xmm0,%xmm0
   0.27%  │    0x00007fba944f90c2:   vmovsd %xmm0,0x20(%rsp)
   0.07%  │    0x00007fba944f90c8:   mov    %ebx,%r10d
          │    0x00007fba944f90cb:   dec    %r10d
          │    0x00007fba944f90ce:   vcvtsi2sd %ebx,%xmm0,%xmm0
   0.21%  │    0x00007fba944f90d2:   vmulsd (%rsp),%xmm0,%xmm0
   0.26%  │    0x00007fba944f90d7:   vmovq  %xmm0,%rbp
   0.13%  │    0x00007fba944f90dc:   vcvtsi2sd %r10d,%xmm0,%xmm0
   0.12%  │    0x00007fba944f90e1:   vmulsd (%rsp),%xmm0,%xmm0           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@39 (line 98)
   0.31%  │    0x00007fba944f90e6:   movabs $0x7fba93f3911c,%r10
          │    0x00007fba944f90f0:   call   *%r10
          │    0x00007fba944f90f3:   nopl   0x0(%rax,%rax,1)             ;   {other}
   0.07%  │    0x00007fba944f90fb:   vmovsd %xmm0,0x28(%rsp)
          │    0x00007fba944f9101:   vmovq  %rbp,%xmm0
          │    0x00007fba944f9106:   movabs $0x7fba93f3911c,%r10
   0.06%  │    0x00007fba944f9110:   call   *%r10
          │    0x00007fba944f9113:   nopl   0x0(%rax,%rax,1)             ;*invokestatic tan {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@40 (line 98)
          │                                                              ;   {other}
   0.08%  │    0x00007fba944f911b:   vmovsd 0x28(%rsp),%xmm1
          │    0x00007fba944f9121:   vmulsd 0x8(%rsp),%xmm1,%xmm1
          │    0x00007fba944f9127:   vmulsd 0x8(%rsp),%xmm0,%xmm2
   0.14%  │    0x00007fba944f912d:   vmovsd -0x1d5(%rip),%xmm3        # 0x00007fba944f8f60
          │                                                              ;   {section_word}
          │    0x00007fba944f9135:   vsubsd %xmm1,%xmm3,%xmm1
          │    0x00007fba944f9139:   vsubsd %xmm2,%xmm3,%xmm2
   0.25%  │    0x00007fba944f913d:   vaddsd 0x8(%rsp),%xmm0,%xmm0
          │    0x00007fba944f9143:   vmovsd 0x28(%rsp),%xmm3
          │    0x00007fba944f9149:   vaddsd 0x8(%rsp),%xmm3,%xmm3
          │    0x00007fba944f914f:   vdivsd %xmm2,%xmm0,%xmm0
   0.96%  │    0x00007fba944f9153:   vdivsd %xmm1,%xmm3,%xmm1
          │    0x00007fba944f9157:   vaddsd 0x10(%rsp),%xmm1,%xmm1
          │    0x00007fba944f915d:   vaddsd %xmm1,%xmm0,%xmm0
   0.31%  │    0x00007fba944f9161:   vmovsd %xmm0,0x10(%rsp)
   0.07%  │    0x00007fba944f9167:   mov    %ebx,%r10d
          │    0x00007fba944f916a:   inc    %r10d
          │    0x00007fba944f916d:   lea    0x2(%rbx),%ebp
          │    0x00007fba944f9170:   vcvtsi2sd %r10d,%xmm0,%xmm0
   0.25%  │    0x00007fba944f9175:   vmulsd (%rsp),%xmm0,%xmm0           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@39 (line 98)
   0.28%  │    0x00007fba944f917a:   movabs $0x7fba93f3911c,%r10
          │    0x00007fba944f9184:   call   *%r10
          │    0x00007fba944f9187:   nopl   0x0(%rax,%rax,1)             ;*invokestatic tan {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@40 (line 98)
          │                                                              ;   {other}
   0.05%  │    0x00007fba944f918f:   vaddsd 0x8(%rsp),%xmm0,%xmm1
   0.13%  │    0x00007fba944f9195:   vmulsd 0x8(%rsp),%xmm0,%xmm0
   0.01%  │    0x00007fba944f919b:   vmovsd -0x243(%rip),%xmm2        # 0x00007fba944f8f60
          │                                                              ;   {section_word}
          │    0x00007fba944f91a3:   vsubsd %xmm0,%xmm2,%xmm0
   0.22%  │    0x00007fba944f91a7:   vdivsd %xmm0,%xmm1,%xmm0
   0.91%  │    0x00007fba944f91ab:   vaddsd 0x10(%rsp),%xmm0,%xmm0
   0.29%  │    0x00007fba944f91b1:   vmovsd %xmm0,0x10(%rsp)
   0.06%  │    0x00007fba944f91b7:   vcvtsi2sd %ebp,%xmm0,%xmm0
   0.24%  │    0x00007fba944f91bb:   vmulsd (%rsp),%xmm0,%xmm0           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@39 (line 98)
   0.27%  │    0x00007fba944f91c0:   movabs $0x7fba93f3911c,%r10
   0.00%  │    0x00007fba944f91ca:   call   *%r10
          │    0x00007fba944f91cd:   nopl   0x0(%rax,%rax,1)             ;*invokestatic tan {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@40 (line 98)
          │                                                              ;   {other}
   0.07%  │    0x00007fba944f91d5:   vaddsd 0x8(%rsp),%xmm0,%xmm1
   0.14%  │    0x00007fba944f91db:   vmulsd 0x8(%rsp),%xmm0,%xmm0
   0.02%  │    0x00007fba944f91e1:   vmovsd -0x289(%rip),%xmm2        # 0x00007fba944f8f60
          │                                                              ;   {section_word}
          │    0x00007fba944f91e9:   vsubsd %xmm0,%xmm2,%xmm0
   0.22%  │    0x00007fba944f91ed:   vdivsd %xmm0,%xmm1,%xmm0
   0.92%  │    0x00007fba944f91f1:   vaddsd 0x10(%rsp),%xmm0,%xmm0
   0.30%  │    0x00007fba944f91f7:   vmovsd %xmm0,0x10(%rsp)
   0.08%  │    0x00007fba944f91fd:   lea    0x3(%rbx),%r11d
          │    0x00007fba944f9201:   lea    0x4(%rbx),%ebp
          │    0x00007fba944f9204:   vcvtsi2sd %r11d,%xmm0,%xmm0
   0.23%  │    0x00007fba944f9209:   vmulsd (%rsp),%xmm0,%xmm0           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@39 (line 98)
   0.25%  │    0x00007fba944f920e:   movabs $0x7fba93f3911c,%r10
          │    0x00007fba944f9218:   call   *%r10
          │    0x00007fba944f921b:   nopl   0x0(%rax,%rax,1)             ;*invokestatic tan {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@40 (line 98)
          │                                                              ;   {other}
   0.06%  │    0x00007fba944f9223:   vaddsd 0x8(%rsp),%xmm0,%xmm1
   0.14%  │    0x00007fba944f9229:   vmulsd 0x8(%rsp),%xmm0,%xmm0
   0.01%  │    0x00007fba944f922f:   vmovsd -0x2d7(%rip),%xmm2        # 0x00007fba944f8f60
          │                                                              ;   {section_word}
          │    0x00007fba944f9237:   vsubsd %xmm0,%xmm2,%xmm0
   0.27%  │    0x00007fba944f923b:   vdivsd %xmm0,%xmm1,%xmm0
   0.93%  │    0x00007fba944f923f:   vaddsd 0x10(%rsp),%xmm0,%xmm0
   0.31%  │    0x00007fba944f9245:   vmovsd %xmm0,0x10(%rsp)
   0.07%  │    0x00007fba944f924b:   vcvtsi2sd %ebp,%xmm0,%xmm0
   0.20%  │    0x00007fba944f924f:   vmulsd (%rsp),%xmm0,%xmm0           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@39 (line 98)
   0.30%  │    0x00007fba944f9254:   movabs $0x7fba93f3911c,%r10
   0.00%  │    0x00007fba944f925e:   call   *%r10
          │    0x00007fba944f9261:   nopl   0x0(%rax,%rax,1)             ;   {other}
   0.06%  │    0x00007fba944f9269:   vmovq  %xmm0,%rbp
          │    0x00007fba944f926e:   vmovsd 0x20(%rsp),%xmm0
          │    0x00007fba944f9274:   movabs $0x7fba93f3911c,%r10
   0.08%  │    0x00007fba944f927e:   call   *%r10
          │    0x00007fba944f9281:   nopl   0x0(%rax,%rax,1)             ;   {other}
   0.05%  │    0x00007fba944f9289:   vmovsd %xmm0,0x20(%rsp)
          │    0x00007fba944f928f:   vmovsd 0x18(%rsp),%xmm0
          │    0x00007fba944f9295:   movabs $0x7fba93f3911c,%r10
   0.10%  │    0x00007fba944f929f:   call   *%r10
          │    0x00007fba944f92a2:   nopl   0x0(%rax,%rax,1)             ;*invokestatic tan {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@40 (line 98)
          │                                                              ;   {other}
   0.05%  │    0x00007fba944f92aa:   vmovq  %rbp,%xmm1
          │    0x00007fba944f92af:   vmulsd 0x8(%rsp),%xmm1,%xmm1
          │    0x00007fba944f92b5:   vmulsd 0x8(%rsp),%xmm0,%xmm2
   0.18%  │    0x00007fba944f92bb:   vmovsd -0x363(%rip),%xmm3        # 0x00007fba944f8f60
          │                                                              ;   {section_word}
          │    0x00007fba944f92c3:   vsubsd %xmm1,%xmm3,%xmm3
          │    0x00007fba944f92c7:   vmovsd -0x36f(%rip),%xmm1        # 0x00007fba944f8f60
          │                                                              ;   {section_word}
          │    0x00007fba944f92cf:   vsubsd %xmm2,%xmm1,%xmm1
   0.27%  │    0x00007fba944f92d3:   vaddsd 0x8(%rsp),%xmm0,%xmm0
          │    0x00007fba944f92d9:   vmovsd 0x20(%rsp),%xmm2
   0.00%  │    0x00007fba944f92df:   vaddsd 0x8(%rsp),%xmm2,%xmm2
          │    0x00007fba944f92e5:   vdivsd %xmm1,%xmm0,%xmm4
   0.90%  │    0x00007fba944f92e9:   vmovsd 0x20(%rsp),%xmm0
   0.00%  │    0x00007fba944f92ef:   vmulsd 0x8(%rsp),%xmm0,%xmm0
          │    0x00007fba944f92f5:   vmovq  %rbp,%xmm1
          │    0x00007fba944f92fa:   vaddsd 0x8(%rsp),%xmm1,%xmm1
   0.09%  │    0x00007fba944f9300:   vmovsd -0x3a8(%rip),%xmm5        # 0x00007fba944f8f60
          │                                                              ;   {section_word}
          │    0x00007fba944f9308:   vsubsd %xmm0,%xmm5,%xmm0
          │    0x00007fba944f930c:   vdivsd %xmm3,%xmm1,%xmm1
          │    0x00007fba944f9310:   vdivsd %xmm0,%xmm2,%xmm0
   0.06%  │    0x00007fba944f9314:   vaddsd 0x10(%rsp),%xmm1,%xmm1
          │    0x00007fba944f931a:   vaddsd %xmm1,%xmm0,%xmm0
          │    0x00007fba944f931e:   vaddsd %xmm0,%xmm4,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@64 (line 101)
   0.16%  │    0x00007fba944f9322:   vmovsd %xmm0,0x10(%rsp)
   0.07%  │    0x00007fba944f9328:   add    $0x8,%ebx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@67 (line 96)
          │    0x00007fba944f932b:   cmp    %r14d,%ebx
          ╰    0x00007fba944f932e:   jl     0x00007fba944f90a0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@29 (line 96)
               0x00007fba944f9334:   mov    0x458(%r15),%r10             ; ImmutableOopMap {}
                                                                         ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@70 (line 96)
               0x00007fba944f933b:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@70 (line 96)
                                                                         ;   {poll}
               0x00007fba944f933e:   xchg   %ax,%ax
               0x00007fba944f9340:   cmp    %r13d,%ebx
               0x00007fba944f9343:   jl     0x00007fba944f906c
               0x00007fba944f9349:   mov    0x30(%rsp),%ebp
               0x00007fba944f934d:   cmp    %ebp,%ebx
           ╭   0x00007fba944f934f:   jge    0x00007fba944f93af
           │   0x00007fba944f9355:   data16 xchg %ax,%ax                 ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@32 (line 98)
           │↗  0x00007fba944f9358:   mov    %ebx,%r11d
           ││  0x00007fba944f935b:   dec    %r11d
   0.00%   ││  0x00007fba944f935e:   vcvtsi2sd %r11d,%xmm0,%xmm0
           ││  0x00007fba944f9363:   vmulsd (%rsp),%xmm0,%xmm0           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@39 (line 98)
   0.00%   ││  0x00007fba944f9368:   movabs $0x7fba93f3911c,%r10
           ││  0x00007fba944f9372:   call   *%r10
           ││  0x00007fba944f9375:   nopl   0x0(%rax,%rax,1)             ;*invokestatic tan {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@40 (line 98)
           ││                                                            ;   {other}
           ││  0x00007fba944f937d:   vaddsd 0x8(%rsp),%xmm0,%xmm1
           ││  0x00007fba944f9383:   vmulsd 0x8(%rsp),%xmm0,%xmm0
           ││  0x00007fba944f9389:   vmovsd -0x431(%rip),%xmm2        # 0x00007fba944f8f60
           ││                                                            ;   {section_word}
           ││  0x00007fba944f9391:   vsubsd %xmm0,%xmm2,%xmm0
           ││  0x00007fba944f9395:   vdivsd %xmm0,%xmm1,%xmm0
   0.00%   ││  0x00007fba944f9399:   vmovsd 0x10(%rsp),%xmm1
           ││  0x00007fba944f939f:   vaddsd %xmm0,%xmm1,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@64 (line 101)
           ││  0x00007fba944f93a3:   vmovsd %xmm0,0x10(%rsp)
           ││  0x00007fba944f93a9:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@67 (line 96)
           ││  0x00007fba944f93ab:   cmp    %ebp,%ebx
           │╰  0x00007fba944f93ad:   jl     0x00007fba944f9358
           ↘   0x00007fba944f93af:   vmovsd 0x10(%rsp),%xmm0             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@29 (line 96)
               0x00007fba944f93b5:   xchg   %ax,%ax
....................................................................................................
  13.42%  <total for region 2>

....[Hottest Regions]...............................................................................
  83.68%          runtime stub  StubRoutines::libmTan 
  13.42%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking, version 3, compile id 666 
   0.53%                kernel  [unknown] 
   0.40%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%             libjvm.so  ElfSymbolTable::lookup 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.03%                kernel  [unknown] 
   0.03%                kernel  [unknown] 
   0.03%                kernel  [unknown] 
   0.03%                kernel  [unknown] 
   0.03%                kernel  [unknown] 
   0.03%                kernel  [unknown] 
   0.02%                kernel  [unknown] 
   0.02%                kernel  [unknown] 
   1.17%  <...other 243 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  83.68%          runtime stub  StubRoutines::libmTan 
  13.42%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking, version 3, compile id 666 
   2.39%                kernel  [unknown] 
   0.08%             libjvm.so  ElfSymbolTable::lookup 
   0.02%             libc.so.6  __vfprintf_internal 
   0.02%             libjvm.so  defaultStream::has_log_file 
   0.02%        hsdis-amd64.so  print_insn 
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%             libc.so.6  _IO_fwrite 
   0.01%           interpreter  invokevirtual  182 invokevirtual  
   0.01%             libc.so.6  __GI___libc_write 
   0.01%             libjvm.so  RelocIterator::initialize 
   0.01%             libc.so.6  __strchr_avx2 
   0.01%             libjvm.so  outputStream::print 
   0.01%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.01%             libc.so.6  syscall 
   0.01%             libjvm.so  clock_gettime@plt 
   0.01%             libjvm.so  fileStream::write 
   0.01%             libc.so.6  _IO_fflush 
   0.23%  <...other 85 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  83.68%          runtime stub
  13.42%           c2, level 4
   2.39%                kernel
   0.25%             libjvm.so
   0.15%             libc.so.6
   0.04%           interpreter
   0.03%        hsdis-amd64.so
   0.01%  ld-linux-x86-64.so.2
   0.00%                      
   0.00%         perf-5137.map
   0.00%           c1, level 3
   0.00%      Unknown, level 0
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:04:08

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

Benchmark                                                              (iterations)  Mode  Cnt      Score      Error  Units
LoopInvariantCodeMotionBenchmark.initial_loop                                 16384  avgt    5  14090.542 ± 4163.297  us/op
LoopInvariantCodeMotionBenchmark.initial_loop:asm                             16384  avgt             NaN               ---
LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking             16384  avgt    5   2633.804 ±  406.589  us/op
LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking:asm         16384  avgt             NaN               ---
