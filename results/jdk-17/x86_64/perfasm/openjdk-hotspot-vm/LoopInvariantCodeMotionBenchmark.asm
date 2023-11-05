# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
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
# Warmup Iteration   1: 4489.767 us/op
# Warmup Iteration   2: 4463.336 us/op
# Warmup Iteration   3: 4461.049 us/op
# Warmup Iteration   4: 4460.883 us/op
# Warmup Iteration   5: 4461.030 us/op
Iteration   1: 4460.983 us/op
Iteration   2: 4460.919 us/op
Iteration   3: 4461.005 us/op
Iteration   4: 4460.893 us/op
Iteration   5: 4460.940 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.initial_loop":
  4460.948 ±(99.9%) 0.177 us/op [Average]
  (min, avg, max) = (4460.893, 4460.948, 4461.005), stdev = 0.046
  CI (99.9%): [4460.771, 4461.125] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.initial_loop:·asm":
PrintAssembly processed: 118295 total address lines.
Perf output processed (skipped 55.709 seconds):
 Column 1: cycles (50685 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::libmTan 

              0x00007ff78c9aef76:   vaddsd %xmm1,%xmm0,%xmm0
              0x00007ff78c9aef7a:   jmp    0x00007ff78c9af51a
              0x00007ff78c9aef7f:   vmovq  0x168f1379(%rip),%xmm3        # 0x00007ff7a32a0300
              0x00007ff78c9aef87:   vmulsd %xmm0,%xmm3,%xmm3
              0x00007ff78c9aef8b:   vaddsd %xmm3,%xmm0,%xmm0
              0x00007ff78c9aef8f:   vmulsd 0x168f1361(%rip),%xmm0,%xmm0        # 0x00007ff7a32a02f8
              0x00007ff78c9aef97:   jmp    0x00007ff78c9af51a
              0x00007ff78c9aef9c:   vmovdqu %xmm0,%xmm1
              0x00007ff78c9aefa0:   vmulsd %xmm1,%xmm1,%xmm1
              0x00007ff78c9aefa4:   jmp    0x00007ff78c9af51a
   0.27%      0x00007ff78c9aefa9:   vpextrw $0x3,%xmm0,%eax
              0x00007ff78c9aefae:   and    $0x7ff0,%eax
              0x00007ff78c9aefb4:   cmp    $0x7ff0,%eax
              0x00007ff78c9aefba:   je     0x00007ff78c9af507
   0.22%      0x00007ff78c9aefc0:   vpextrw $0x3,%xmm0,%ecx
              0x00007ff78c9aefc5:   and    $0x7ff0,%ecx
              0x00007ff78c9aefcb:   sub    $0x3f60,%ecx
   0.29%      0x00007ff78c9aefd1:   shr    $0x7,%ecx
   0.00%      0x00007ff78c9aefd4:   and    $0xfffc,%ecx
   0.00%      0x00007ff78c9aefda:   movabs $0x7ff7a32a0330,%r11
              0x00007ff78c9aefe4:   add    %r11,%rcx
   0.33%      0x00007ff78c9aefe7:   vmovq  %xmm0,%rax
              0x00007ff78c9aefec:   mov    0x14(%rcx),%r10d
   0.59%      0x00007ff78c9aeff0:   mov    0x18(%rcx),%r8d
              0x00007ff78c9aeff4:   mov    %eax,%edx
   0.11%      0x00007ff78c9aeff6:   shr    $0x15,%rax
              0x00007ff78c9aeffa:   or     $0x80000000,%eax
   0.16%      0x00007ff78c9af000:   shr    $0xb,%eax
              0x00007ff78c9af003:   mov    %r10d,%r9d
   0.16%      0x00007ff78c9af006:   imul   %rdx,%r10
   0.27%      0x00007ff78c9af00a:   imul   %rax,%r9
   0.18%      0x00007ff78c9af00e:   imul   %rax,%r8
   0.11%      0x00007ff78c9af012:   mov    0x10(%rcx),%esi
   0.12%      0x00007ff78c9af015:   mov    0xc(%rcx),%edi
              0x00007ff78c9af018:   mov    %r10d,%r11d
   0.03%      0x00007ff78c9af01b:   shr    $0x20,%r10
   0.12%      0x00007ff78c9af01f:   add    %r10,%r9
   0.16%      0x00007ff78c9af022:   add    %r8,%r11
              0x00007ff78c9af025:   mov    %r11d,%r8d
   0.02%      0x00007ff78c9af028:   shr    $0x20,%r11
   0.16%      0x00007ff78c9af02c:   add    %r11,%r9
   0.21%      0x00007ff78c9af02f:   mov    %esi,%r10d
              0x00007ff78c9af032:   imul   %rdx,%rsi
   0.02%      0x00007ff78c9af036:   imul   %rax,%r10
   0.04%      0x00007ff78c9af03a:   mov    %edi,%r11d
   0.18%      0x00007ff78c9af03d:   imul   %rdx,%rdi
              0x00007ff78c9af041:   mov    %esi,%ebx
   0.03%      0x00007ff78c9af043:   shr    $0x20,%rsi
   0.03%      0x00007ff78c9af047:   add    %rbx,%r9
   0.24%      0x00007ff78c9af04a:   mov    %r9d,%ebx
              0x00007ff78c9af04d:   shr    $0x20,%r9
   0.11%      0x00007ff78c9af051:   add    %rsi,%r10
   0.03%      0x00007ff78c9af054:   add    %r9,%r10
   0.28%      0x00007ff78c9af057:   shl    $0x20,%rbx
              0x00007ff78c9af05b:   or     %rbx,%r8
   0.09%      0x00007ff78c9af05e:   imul   %rax,%r11
   0.01%      0x00007ff78c9af062:   mov    0x8(%rcx),%r9d
   0.16%      0x00007ff78c9af066:   mov    0x4(%rcx),%esi
   0.00%      0x00007ff78c9af069:   mov    %edi,%ebx
   0.11%      0x00007ff78c9af06b:   shr    $0x20,%rdi
   0.00%      0x00007ff78c9af06f:   add    %rbx,%r10
   0.15%      0x00007ff78c9af072:   mov    %r10d,%ebx
              0x00007ff78c9af075:   shr    $0x20,%r10
   0.09%      0x00007ff78c9af079:   add    %rdi,%r11
   0.01%      0x00007ff78c9af07c:   add    %r10,%r11
   0.26%      0x00007ff78c9af07f:   mov    %r9,%rdi
              0x00007ff78c9af082:   imul   %rdx,%r9
              0x00007ff78c9af086:   imul   %rax,%rdi
   0.01%      0x00007ff78c9af08a:   mov    %r9d,%r10d
   0.25%      0x00007ff78c9af08d:   shr    $0x20,%r9
              0x00007ff78c9af091:   add    %r10,%r11
              0x00007ff78c9af094:   mov    %r11d,%r10d
   0.01%      0x00007ff78c9af097:   shr    $0x20,%r11
   0.25%      0x00007ff78c9af09b:   add    %r9,%rdi
              0x00007ff78c9af09e:   add    %r11,%rdi
   0.13%      0x00007ff78c9af0a1:   mov    %rsi,%r9
   0.01%      0x00007ff78c9af0a4:   imul   %rdx,%rsi
   0.14%      0x00007ff78c9af0a8:   imul   %rax,%r9
              0x00007ff78c9af0ac:   shl    $0x20,%r10
   0.12%      0x00007ff78c9af0b0:   or     %rbx,%r10
   0.15%      0x00007ff78c9af0b3:   mov    (%rcx),%eax
   0.13%      0x00007ff78c9af0b5:   mov    %esi,%r11d
              0x00007ff78c9af0b8:   shr    $0x20,%rsi
   0.01%      0x00007ff78c9af0bc:   add    %r11,%rdi
   0.11%      0x00007ff78c9af0bf:   mov    %edi,%r11d
   0.13%      0x00007ff78c9af0c2:   shr    $0x20,%rdi
              0x00007ff78c9af0c6:   add    %rsi,%r9
   0.00%      0x00007ff78c9af0c9:   add    %rdi,%r9
   0.15%      0x00007ff78c9af0cc:   imul   %rax,%rdx
   0.13%      0x00007ff78c9af0d0:   vpextrw $0x3,%xmm0,%ebx
   0.01%      0x00007ff78c9af0d5:   movabs $0x7ff7a32a0330,%rdi
   0.13%      0x00007ff78c9af0df:   sub    %rdi,%rcx
   0.17%      0x00007ff78c9af0e2:   add    %ecx,%ecx
              0x00007ff78c9af0e4:   add    %ecx,%ecx
              0x00007ff78c9af0e6:   add    %ecx,%ecx
   0.12%      0x00007ff78c9af0e8:   add    $0x13,%ecx
   0.15%      0x00007ff78c9af0eb:   mov    $0x8000,%esi
              0x00007ff78c9af0f0:   and    %ebx,%esi
   0.01%      0x00007ff78c9af0f2:   shr    $0x4,%ebx
   0.10%      0x00007ff78c9af0f5:   and    $0x7ff,%ebx
   0.14%      0x00007ff78c9af0fb:   sub    $0x3ff,%ebx
              0x00007ff78c9af101:   sub    %ebx,%ecx
              0x00007ff78c9af103:   add    %rdx,%r9
   0.15%      0x00007ff78c9af106:   mov    %ecx,%edx
   0.13%      0x00007ff78c9af108:   add    $0x20,%edx
              0x00007ff78c9af10b:   cmp    $0x0,%ecx
              0x00007ff78c9af10e:   jl     0x00007ff78c9af457
   0.00%      0x00007ff78c9af114:   neg    %ecx
   0.15%      0x00007ff78c9af116:   add    $0x1d,%ecx
   0.13%      0x00007ff78c9af119:   shl    %cl,%r9d
   0.12%      0x00007ff78c9af11c:   mov    %r9d,%edi
   0.14%      0x00007ff78c9af11f:   and    $0x3fffffff,%r9d
              0x00007ff78c9af126:   test   $0x20000000,%r9d
              0x00007ff78c9af12d:   jne    0x00007ff78c9af484
   0.01%      0x00007ff78c9af133:   shr    %cl,%r9d
   0.13%      0x00007ff78c9af136:   mov    $0x0,%ebx
              0x00007ff78c9af13b:   shl    $0x20,%r9
   0.10%      0x00007ff78c9af13f:   or     %r11,%r9
   0.10%      0x00007ff78c9af142:   cmp    $0x0,%r9
          ╭   0x00007ff78c9af146:   je     0x00007ff78c9af403
   0.09%  │↗  0x00007ff78c9af14c:   bsr    %r9,%r11
   0.12%  ││  0x00007ff78c9af150:   mov    $0x1d,%ecx
   0.04%  ││  0x00007ff78c9af155:   sub    %r11d,%ecx
          ││  0x00007ff78c9af158:   jle    0x00007ff78c9af434
   0.03%  ││  0x00007ff78c9af15e:   shl    %cl,%r9
   0.02%  ││  0x00007ff78c9af161:   mov    %r10,%rax
   0.01%  ││  0x00007ff78c9af164:   shl    %cl,%r10
   0.02%  ││  0x00007ff78c9af167:   add    %ecx,%edx
   0.00%  ││  0x00007ff78c9af169:   neg    %ecx
   0.00%  ││  0x00007ff78c9af16b:   add    $0x40,%ecx
          ││  0x00007ff78c9af16e:   shr    %cl,%rax
   0.02%  ││  0x00007ff78c9af171:   shr    %cl,%r8
   0.00%  ││  0x00007ff78c9af174:   or     %rax,%r9
   0.01%  ││  0x00007ff78c9af177:   or     %r8,%r10
   0.21%  ││  0x00007ff78c9af17a:   vcvtsi2sd %r9,%xmm0,%xmm0
   0.47%  ││  0x00007ff78c9af17f:   shr    %r10
   0.04%  ││  0x00007ff78c9af182:   vcvtsi2sd %r10,%xmm3,%xmm3
   0.70%  ││  0x00007ff78c9af187:   vxorpd %xmm4,%xmm4,%xmm4
   0.01%  ││  0x00007ff78c9af18b:   shl    $0x4,%edx
   0.01%  ││  0x00007ff78c9af18e:   neg    %edx
   0.04%  ││  0x00007ff78c9af190:   add    $0x3ff0,%edx
   0.20%  ││  0x00007ff78c9af196:   or     %esi,%edx
   0.02%  ││  0x00007ff78c9af198:   xor    %ebx,%edx
   0.01%  ││  0x00007ff78c9af19a:   vpinsrw $0x3,%edx,%xmm4,%xmm4
   0.25%  ││  0x00007ff78c9af19f:   vmovq  0x168f1171(%rip),%xmm2        # 0x00007ff7a32a0318
   0.02%  ││  0x00007ff78c9af1a7:   vmovq  0x168f1171(%rip),%xmm7        # 0x00007ff7a32a0320
   0.02%  ││  0x00007ff78c9af1af:   vxorpd %xmm5,%xmm5,%xmm5
   0.03%  ││  0x00007ff78c9af1b3:   sub    $0x3f0,%edx
   0.21%  ││  0x00007ff78c9af1b9:   vpinsrw $0x3,%edx,%xmm5,%xmm5
   0.16%  ││  0x00007ff78c9af1be:   vmulsd %xmm4,%xmm0,%xmm0
   0.39%  ││  0x00007ff78c9af1c2:   shl    $0x10,%esi
   0.07%  ││  0x00007ff78c9af1c5:   sar    $0x1f,%esi
   0.00%  ││  0x00007ff78c9af1c8:   vmulsd %xmm5,%xmm3,%xmm3
   0.37%  ││  0x00007ff78c9af1cc:   vmovdqu %xmm0,%xmm1
   0.04%  ││  0x00007ff78c9af1d0:   vmulsd %xmm2,%xmm0,%xmm0
   0.45%  ││  0x00007ff78c9af1d4:   shr    $0x1e,%edi
          ││  0x00007ff78c9af1d7:   vaddsd %xmm3,%xmm1,%xmm1
   0.66%  ││  0x00007ff78c9af1db:   vmulsd %xmm2,%xmm3,%xmm3
   0.21%  ││  0x00007ff78c9af1df:   add    %esi,%edi
          ││  0x00007ff78c9af1e1:   xor    %esi,%edi
          ││  0x00007ff78c9af1e3:   vmulsd %xmm1,%xmm7,%xmm7
   0.81%  ││  0x00007ff78c9af1e7:   mov    %edi,%eax
   0.00%  ││  0x00007ff78c9af1e9:   vaddsd %xmm3,%xmm7,%xmm7
   1.07%  ││  0x00007ff78c9af1ed:   vmovdqu %xmm0,%xmm2
          ││  0x00007ff78c9af1f1:   vaddsd %xmm7,%xmm0,%xmm0
   1.08%  ││  0x00007ff78c9af1f5:   vsubsd %xmm0,%xmm2,%xmm2
   1.14%  ││  0x00007ff78c9af1f9:   vaddsd %xmm2,%xmm7,%xmm7
   1.09%  ││  0x00007ff78c9af1fd:   vmovdqu 0x168f286b(%rip),%xmm1        # 0x00007ff7a32a1a70
          ││  0x00007ff78c9af205:   vmovddup %xmm0,%xmm0
          ││  0x00007ff78c9af209:   vmovdqu 0x168f286f(%rip),%xmm4        # 0x00007ff7a32a1a80
          ││  0x00007ff78c9af211:   vandpd %xmm0,%xmm4,%xmm4
   0.24%  ││  0x00007ff78c9af215:   vmulpd %xmm0,%xmm1,%xmm1
          ││  0x00007ff78c9af219:   vmovddup %xmm7,%xmm7
          ││  0x00007ff78c9af21d:   vmovdqu 0x168f287b(%rip),%xmm5        # 0x00007ff7a32a1aa0
          ││  0x00007ff78c9af225:   vmovdqu 0x168f2863(%rip),%xmm6        # 0x00007ff7a32a1a90
   0.24%  ││  0x00007ff78c9af22d:   vpor   %xmm4,%xmm5,%xmm5
          ││  0x00007ff78c9af231:   vaddpd %xmm5,%xmm1,%xmm1
   0.04%  ││  0x00007ff78c9af235:   vmovdqu %xmm1,%xmm5
          ││  0x00007ff78c9af239:   vunpckhpd %xmm5,%xmm5,%xmm5
   0.29%  ││  0x00007ff78c9af23d:   vcvttsd2si %xmm5,%edx
   1.57%  ││  0x00007ff78c9af241:   vcvttpd2dq %xmm1,%xmm1
          ││  0x00007ff78c9af246:   vcvtdq2pd %xmm1,%xmm1
   0.81%  ││  0x00007ff78c9af24a:   vmulpd %xmm6,%xmm1,%xmm1
   1.13%  ││  0x00007ff78c9af24e:   vmovdqu 0x168f280a(%rip),%xmm3        # 0x00007ff7a32a1a60
          ││  0x00007ff78c9af256:   vmovq  0x168f10b2(%rip),%xmm5        # 0x00007ff7a32a0310
          ││  0x00007ff78c9af25e:   shl    $0x4,%eax
          ││  0x00007ff78c9af261:   add    $0x72900,%edx
   0.27%  ││  0x00007ff78c9af267:   vmovdqu 0x168f27e1(%rip),%xmm4        # 0x00007ff7a32a1a50
          ││  0x00007ff78c9af26f:   vmulpd %xmm1,%xmm3,%xmm3
   0.85%  ││  0x00007ff78c9af273:   add    %eax,%edx
          ││  0x00007ff78c9af275:   and    $0x1f,%edx
          ││  0x00007ff78c9af278:   vmulsd %xmm1,%xmm5,%xmm5
   0.18%  ││  0x00007ff78c9af27c:   mov    %edx,%ecx
   0.14%  ││  0x00007ff78c9af27e:   vmulpd %xmm1,%xmm4,%xmm4
   0.07%  ││  0x00007ff78c9af282:   shl    %ecx
          ││  0x00007ff78c9af284:   vsubpd %xmm3,%xmm0,%xmm0
   0.64%  ││  0x00007ff78c9af288:   vmulpd 0x168f27b0(%rip),%xmm1,%xmm1        # 0x00007ff7a32a1a40
          ││  0x00007ff78c9af290:   add    %ecx,%edx
          ││  0x00007ff78c9af292:   shl    $0x2,%ecx
          ││  0x00007ff78c9af295:   add    %ecx,%edx
   0.25%  ││  0x00007ff78c9af297:   vaddsd %xmm0,%xmm5,%xmm5
   0.84%  ││  0x00007ff78c9af29b:   vmovdqu %xmm0,%xmm2
          ││  0x00007ff78c9af29f:   vsubpd %xmm4,%xmm0,%xmm0
   0.18%  ││  0x00007ff78c9af2a3:   vmovq  0x168f105d(%rip),%xmm6        # 0x00007ff7a32a0308
          ││  0x00007ff78c9af2ab:   shl    $0x4,%edx
   0.12%  ││  0x00007ff78c9af2ae:   movabs $0x7ff7a32a0440,%rax
          ││  0x00007ff78c9af2b8:   vandpd 0x168f1170(%rip),%xmm5,%xmm5        # 0x00007ff7a32a0430
   0.48%  ││  0x00007ff78c9af2c0:   vmovdqu %xmm0,%xmm3
          ││  0x00007ff78c9af2c4:   add    %rdx,%rax
   0.07%  ││  0x00007ff78c9af2c7:   vsubpd %xmm0,%xmm2,%xmm2
   0.77%  ││  0x00007ff78c9af2cb:   vunpckhpd %xmm0,%xmm0,%xmm0
   0.04%  ││  0x00007ff78c9af2cf:   vdivsd %xmm5,%xmm6,%xmm6
   2.65%  ││  0x00007ff78c9af2d3:   vsubpd %xmm4,%xmm2,%xmm2
          ││  0x00007ff78c9af2d7:   vsubsd %xmm5,%xmm3,%xmm3
          ││  0x00007ff78c9af2db:   vsubpd %xmm1,%xmm2,%xmm2
          ││  0x00007ff78c9af2df:   vmovdqu 0x30(%rax),%xmm1
   0.22%  ││  0x00007ff78c9af2e4:   vaddpd %xmm7,%xmm2,%xmm2
   0.04%  ││  0x00007ff78c9af2e8:   vmovdqu 0x10(%rax),%xmm7
          ││  0x00007ff78c9af2ed:   vmulpd %xmm0,%xmm7,%xmm7
          ││  0x00007ff78c9af2f1:   vmovdqu 0x60(%rax),%xmm4
   0.23%  ││  0x00007ff78c9af2f6:   vmulpd %xmm0,%xmm1,%xmm1
   0.04%  ││  0x00007ff78c9af2fa:   vmulpd %xmm0,%xmm4,%xmm4
          ││  0x00007ff78c9af2fe:   vaddsd %xmm3,%xmm2,%xmm2
   0.74%  ││  0x00007ff78c9af302:   vmovdqu %xmm0,%xmm3
   0.00%  ││  0x00007ff78c9af306:   vmulpd %xmm0,%xmm0,%xmm0
          ││  0x00007ff78c9af30a:   vaddpd (%rax),%xmm7,%xmm7
          ││  0x00007ff78c9af30e:   vaddpd 0x20(%rax),%xmm1,%xmm1
   0.22%  ││  0x00007ff78c9af313:   vmulpd %xmm0,%xmm1,%xmm1
   0.01%  ││  0x00007ff78c9af317:   vaddpd 0x50(%rax),%xmm4,%xmm4
          ││  0x00007ff78c9af31c:   vaddpd %xmm1,%xmm7,%xmm7
   0.01%  ││  0x00007ff78c9af320:   vmovdqu 0x70(%rax),%xmm1
   0.26%  ││  0x00007ff78c9af325:   vmulpd %xmm0,%xmm1,%xmm1
   0.01%  ││  0x00007ff78c9af329:   vmulpd %xmm0,%xmm0,%xmm0
          ││  0x00007ff78c9af32d:   vaddpd %xmm1,%xmm4,%xmm4
          ││  0x00007ff78c9af331:   vmovdqu 0x40(%rax),%xmm1
   0.24%  ││  0x00007ff78c9af336:   vmulpd %xmm0,%xmm1,%xmm1
   0.01%  ││  0x00007ff78c9af33a:   vaddpd %xmm1,%xmm7,%xmm7
   0.17%  ││  0x00007ff78c9af33e:   vmovdqu %xmm3,%xmm1
          ││  0x00007ff78c9af342:   vmulpd %xmm0,%xmm3,%xmm3
   0.19%  ││  0x00007ff78c9af346:   vmulsd %xmm0,%xmm0,%xmm0
   0.01%  ││  0x00007ff78c9af34a:   vmulpd 0x90(%rax),%xmm1,%xmm1
   0.10%  ││  0x00007ff78c9af352:   vmulpd %xmm3,%xmm4,%xmm4
   0.00%  ││  0x00007ff78c9af356:   vmovdqu %xmm1,%xmm3
   0.19%  ││  0x00007ff78c9af35a:   vaddpd %xmm4,%xmm7,%xmm7
   0.49%  ││  0x00007ff78c9af35e:   vmovdqu %xmm1,%xmm4
          ││  0x00007ff78c9af362:   vmulsd %xmm7,%xmm0,%xmm0
   1.05%  ││  0x00007ff78c9af366:   vunpckhpd %xmm7,%xmm7,%xmm7
          ││  0x00007ff78c9af36a:   vaddsd %xmm7,%xmm0,%xmm0
   1.09%  ││  0x00007ff78c9af36e:   vunpckhpd %xmm1,%xmm1,%xmm1
          ││  0x00007ff78c9af372:   vaddsd %xmm1,%xmm3,%xmm3
          ││  0x00007ff78c9af376:   vsubsd %xmm3,%xmm4,%xmm4
          ││  0x00007ff78c9af37a:   vaddsd %xmm4,%xmm1,%xmm1
   0.30%  ││  0x00007ff78c9af37e:   vmovdqu %xmm2,%xmm4
          ││  0x00007ff78c9af382:   vmovq  0x90(%rax),%xmm7
          ││  0x00007ff78c9af38a:   vunpckhpd %xmm2,%xmm2,%xmm2
          ││  0x00007ff78c9af38e:   vaddsd 0x98(%rax),%xmm7,%xmm7
   0.26%  ││  0x00007ff78c9af396:   vmulsd %xmm2,%xmm7,%xmm7
          ││  0x00007ff78c9af39a:   vaddsd 0x88(%rax),%xmm7,%xmm7
          ││  0x00007ff78c9af3a2:   vaddsd %xmm1,%xmm7,%xmm7
          ││  0x00007ff78c9af3a6:   vaddsd %xmm7,%xmm0,%xmm0
   0.57%  ││  0x00007ff78c9af3aa:   vmovq  0x168f0f56(%rip),%xmm7        # 0x00007ff7a32a0308
          ││  0x00007ff78c9af3b2:   vmulsd %xmm6,%xmm4,%xmm4
          ││  0x00007ff78c9af3b6:   vmovq  0xa8(%rax),%xmm2
          ││  0x00007ff78c9af3be:   vandpd %xmm6,%xmm2,%xmm2
   0.34%  ││  0x00007ff78c9af3c2:   vmulsd %xmm2,%xmm5,%xmm5
          ││  0x00007ff78c9af3c6:   vmulsd 0xa0(%rax),%xmm6,%xmm6
          ││  0x00007ff78c9af3ce:   vsubsd %xmm5,%xmm7,%xmm7
          ││  0x00007ff78c9af3d2:   vsubsd 0x80(%rax),%xmm2,%xmm2
   0.25%  ││  0x00007ff78c9af3da:   vsubsd %xmm4,%xmm7,%xmm7
          ││  0x00007ff78c9af3de:   vmulsd %xmm6,%xmm7,%xmm7
          ││  0x00007ff78c9af3e2:   vmovdqu %xmm3,%xmm4
          ││  0x00007ff78c9af3e6:   vsubsd %xmm2,%xmm3,%xmm3
   0.30%  ││  0x00007ff78c9af3ea:   vaddsd %xmm3,%xmm2,%xmm2
          ││  0x00007ff78c9af3ee:   vsubsd %xmm2,%xmm4,%xmm4
          ││  0x00007ff78c9af3f2:   vaddsd %xmm4,%xmm0,%xmm0
   0.28%  ││  0x00007ff78c9af3f6:   vsubsd %xmm7,%xmm0,%xmm0
   0.95%  ││  0x00007ff78c9af3fa:   vaddsd %xmm3,%xmm0,%xmm0
   0.97%  ││  0x00007ff78c9af3fe:   jmp    0x00007ff78c9af51a
          ↘│  0x00007ff78c9af403:   add    $0x40,%edx
           │  0x00007ff78c9af406:   mov    %r10,%r9
           │  0x00007ff78c9af409:   mov    %r8,%r10
           │  0x00007ff78c9af40c:   mov    $0x0,%r8d
           │  0x00007ff78c9af412:   cmp    $0x0,%r9
           ╰  0x00007ff78c9af416:   jne    0x00007ff78c9af14c
              0x00007ff78c9af41c:   add    $0x40,%edx
              0x00007ff78c9af41f:   mov    %r10,%r9
              0x00007ff78c9af422:   mov    %r8,%r10
              0x00007ff78c9af425:   cmp    $0x0,%r9
....................................................................................................
  40.65%  <total for region 1>

....[Hottest Region 2]..............................................................................
runtime stub, StubRoutines::libmTan 

           --------------------------------------------------------------------------------
           - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           StubRoutines::libmTan [0x00007ff78c9aecd2, 0x00007ff78c9af521] (2127 bytes)
           --------------------------------------------------------------------------------
   0.13%     0x00007ff78c9aecd2:   push   %rbp
   0.13%     0x00007ff78c9aecd3:   mov    %rsp,%rbp
   0.43%     0x00007ff78c9aecd6:   push   %rbx
   0.28%     0x00007ff78c9aecd7:   sub    $0x10,%rsp
   0.40%     0x00007ff78c9aecdb:   vmovsd %xmm0,0x8(%rsp)
             0x00007ff78c9aece1:   vpextrw $0x3,%xmm0,%eax
   0.26%     0x00007ff78c9aece6:   and    $0x7fff,%eax
   0.44%     0x00007ff78c9aecec:   sub    $0x3fba,%eax
   0.23%     0x00007ff78c9aecf2:   cmp    $0x10e,%eax
          ╭  0x00007ff78c9aecf8:   ja     0x00007ff78c9aeeff
   0.15%  │  0x00007ff78c9aecfe:   vmovdqu 0x168f2d9a(%rip),%xmm5        # 0x00007ff7a32a1aa0
          │  0x00007ff78c9aed06:   vmovdqu 0x168f2d82(%rip),%xmm6        # 0x00007ff7a32a1a90
   0.27%  │  0x00007ff78c9aed0e:   vunpcklpd %xmm0,%xmm0,%xmm0
          │  0x00007ff78c9aed12:   vmovdqu 0x168f2d66(%rip),%xmm4        # 0x00007ff7a32a1a80
   0.14%  │  0x00007ff78c9aed1a:   vandpd %xmm0,%xmm4,%xmm4
          │  0x00007ff78c9aed1e:   vmovdqu 0x168f2d4a(%rip),%xmm1        # 0x00007ff7a32a1a70
   0.26%  │  0x00007ff78c9aed26:   vmulpd %xmm0,%xmm1,%xmm1
          │  0x00007ff78c9aed2a:   vpor   %xmm4,%xmm5,%xmm5
   0.16%  │  0x00007ff78c9aed2e:   vaddpd %xmm5,%xmm1,%xmm1
   0.01%  │  0x00007ff78c9aed32:   vmovdqu %xmm1,%xmm7
   0.30%  │  0x00007ff78c9aed36:   vunpckhpd %xmm7,%xmm7,%xmm7
          │  0x00007ff78c9aed3a:   vcvttsd2si %xmm7,%edx
   0.17%  │  0x00007ff78c9aed3e:   vcvttpd2dq %xmm1,%xmm1
   0.29%  │  0x00007ff78c9aed43:   vcvtdq2pd %xmm1,%xmm1
   0.16%  │  0x00007ff78c9aed47:   vmulpd %xmm6,%xmm1,%xmm1
   0.29%  │  0x00007ff78c9aed4b:   vmovdqu 0x168f2d0d(%rip),%xmm3        # 0x00007ff7a32a1a60
          │  0x00007ff78c9aed53:   vmovq  0x168f15b5(%rip),%xmm5        # 0x00007ff7a32a0310
   0.14%  │  0x00007ff78c9aed5b:   add    $0x72900,%rdx
          │  0x00007ff78c9aed62:   vmovdqu 0x168f2ce6(%rip),%xmm4        # 0x00007ff7a32a1a50
   0.27%  │  0x00007ff78c9aed6a:   vmulpd %xmm1,%xmm3,%xmm3
   0.01%  │  0x00007ff78c9aed6e:   and    $0x1f,%rdx
   0.14%  │  0x00007ff78c9aed72:   vmulsd %xmm1,%xmm5,%xmm5
   0.04%  │  0x00007ff78c9aed76:   mov    %rdx,%rcx
   0.24%  │  0x00007ff78c9aed79:   vmulpd %xmm1,%xmm4,%xmm4
   0.01%  │  0x00007ff78c9aed7d:   shl    %rcx
   0.13%  │  0x00007ff78c9aed80:   vsubpd %xmm3,%xmm0,%xmm0
   0.07%  │  0x00007ff78c9aed84:   vmulpd 0x168f2cb4(%rip),%xmm1,%xmm1        # 0x00007ff7a32a1a40
   0.23%  │  0x00007ff78c9aed8c:   add    %rcx,%rdx
          │  0x00007ff78c9aed8f:   shl    $0x2,%rcx
   0.17%  │  0x00007ff78c9aed93:   add    %rcx,%rdx
   0.05%  │  0x00007ff78c9aed96:   vaddsd %xmm0,%xmm5,%xmm5
   0.72%  │  0x00007ff78c9aed9a:   vmovdqu %xmm0,%xmm2
          │  0x00007ff78c9aed9e:   vsubpd %xmm4,%xmm0,%xmm0
   0.24%  │  0x00007ff78c9aeda2:   vmovq  0x168f155e(%rip),%xmm6        # 0x00007ff7a32a0308
          │  0x00007ff78c9aedaa:   shl    $0x4,%rdx
   0.17%  │  0x00007ff78c9aedae:   movabs $0x7ff7a32a0440,%rax
          │  0x00007ff78c9aedb8:   vandpd 0x168f1670(%rip),%xmm5,%xmm5        # 0x00007ff7a32a0430
   0.57%  │  0x00007ff78c9aedc0:   vmovdqu %xmm0,%xmm3
          │  0x00007ff78c9aedc4:   add    %rdx,%rax
   0.08%  │  0x00007ff78c9aedc7:   vsubpd %xmm0,%xmm2,%xmm2
   0.76%  │  0x00007ff78c9aedcb:   vunpckhpd %xmm0,%xmm0,%xmm0
   0.16%  │  0x00007ff78c9aedcf:   vdivsd %xmm5,%xmm6,%xmm6
   4.22%  │  0x00007ff78c9aedd3:   vsubpd %xmm4,%xmm2,%xmm2
          │  0x00007ff78c9aedd7:   vmovdqu 0x10(%rax),%xmm7
          │  0x00007ff78c9aeddc:   vsubsd %xmm5,%xmm3,%xmm3
          │  0x00007ff78c9aede0:   vmulpd %xmm0,%xmm7,%xmm7
   0.42%  │  0x00007ff78c9aede4:   vsubpd %xmm1,%xmm2,%xmm2
          │  0x00007ff78c9aede8:   vmovdqu 0x30(%rax),%xmm1
          │  0x00007ff78c9aeded:   vmulpd %xmm0,%xmm1,%xmm1
          │  0x00007ff78c9aedf1:   vmovdqu 0x60(%rax),%xmm4
   0.43%  │  0x00007ff78c9aedf6:   vmulpd %xmm0,%xmm4,%xmm4
          │  0x00007ff78c9aedfa:   vaddsd %xmm3,%xmm2,%xmm2
          │  0x00007ff78c9aedfe:   vmovdqu %xmm0,%xmm3
          │  0x00007ff78c9aee02:   vmulpd %xmm0,%xmm0,%xmm0
   0.39%  │  0x00007ff78c9aee06:   vaddpd (%rax),%xmm7,%xmm7
          │  0x00007ff78c9aee0a:   vaddpd 0x20(%rax),%xmm1,%xmm1
          │  0x00007ff78c9aee0f:   vmulpd %xmm0,%xmm1,%xmm1
          │  0x00007ff78c9aee13:   vaddpd 0x50(%rax),%xmm4,%xmm4
   0.45%  │  0x00007ff78c9aee18:   vaddpd %xmm1,%xmm7,%xmm7
   0.04%  │  0x00007ff78c9aee1c:   vmovdqu 0x70(%rax),%xmm1
          │  0x00007ff78c9aee21:   vmulpd %xmm0,%xmm1,%xmm1
          │  0x00007ff78c9aee25:   vmulpd %xmm0,%xmm0,%xmm0
   0.38%  │  0x00007ff78c9aee29:   vaddpd %xmm1,%xmm4,%xmm4
   0.05%  │  0x00007ff78c9aee2d:   vmovdqu 0x40(%rax),%xmm1
          │  0x00007ff78c9aee32:   vmulpd %xmm0,%xmm1,%xmm1
          │  0x00007ff78c9aee36:   vaddpd %xmm1,%xmm7,%xmm7
   0.67%  │  0x00007ff78c9aee3a:   vmovdqu %xmm3,%xmm1
          │  0x00007ff78c9aee3e:   vmulpd %xmm0,%xmm3,%xmm3
          │  0x00007ff78c9aee42:   vmulsd %xmm0,%xmm0,%xmm0
          │  0x00007ff78c9aee46:   vmulpd 0x90(%rax),%xmm1,%xmm1
   0.65%  │  0x00007ff78c9aee4e:   vmulpd %xmm3,%xmm4,%xmm4
          │  0x00007ff78c9aee52:   vmovdqu %xmm1,%xmm3
          │  0x00007ff78c9aee56:   vaddpd %xmm4,%xmm7,%xmm7
   1.01%  │  0x00007ff78c9aee5a:   vmovdqu %xmm1,%xmm4
   0.05%  │  0x00007ff78c9aee5e:   vmulsd %xmm7,%xmm0,%xmm0
   1.49%  │  0x00007ff78c9aee62:   vunpckhpd %xmm7,%xmm7,%xmm7
          │  0x00007ff78c9aee66:   vaddsd %xmm7,%xmm0,%xmm0
   1.65%  │  0x00007ff78c9aee6a:   vunpckhpd %xmm1,%xmm1,%xmm1
          │  0x00007ff78c9aee6e:   vaddsd %xmm1,%xmm3,%xmm3
          │  0x00007ff78c9aee72:   vsubsd %xmm3,%xmm4,%xmm4
          │  0x00007ff78c9aee76:   vaddsd %xmm4,%xmm1,%xmm1
   0.47%  │  0x00007ff78c9aee7a:   vmovdqu %xmm2,%xmm4
          │  0x00007ff78c9aee7e:   vmovq  0x90(%rax),%xmm7
          │  0x00007ff78c9aee86:   vunpckhpd %xmm2,%xmm2,%xmm2
          │  0x00007ff78c9aee8a:   vaddsd 0x98(%rax),%xmm7,%xmm7
   0.47%  │  0x00007ff78c9aee92:   vmulsd %xmm2,%xmm7,%xmm7
          │  0x00007ff78c9aee96:   vaddsd 0x88(%rax),%xmm7,%xmm7
          │  0x00007ff78c9aee9e:   vaddsd %xmm1,%xmm7,%xmm7
          │  0x00007ff78c9aeea2:   vaddsd %xmm7,%xmm0,%xmm0
   0.94%  │  0x00007ff78c9aeea6:   vmovq  0x168f145a(%rip),%xmm7        # 0x00007ff7a32a0308
          │  0x00007ff78c9aeeae:   vmulsd %xmm6,%xmm4,%xmm4
          │  0x00007ff78c9aeeb2:   vmovq  0xa8(%rax),%xmm2
          │  0x00007ff78c9aeeba:   vandpd %xmm6,%xmm2,%xmm2
   0.43%  │  0x00007ff78c9aeebe:   vmulsd %xmm2,%xmm5,%xmm5
          │  0x00007ff78c9aeec2:   vmulsd 0xa0(%rax),%xmm6,%xmm6
          │  0x00007ff78c9aeeca:   vsubsd %xmm5,%xmm7,%xmm7
          │  0x00007ff78c9aeece:   vsubsd 0x80(%rax),%xmm2,%xmm2
   0.45%  │  0x00007ff78c9aeed6:   vsubsd %xmm4,%xmm7,%xmm7
          │  0x00007ff78c9aeeda:   vmulsd %xmm6,%xmm7,%xmm7
   0.00%  │  0x00007ff78c9aeede:   vmovdqu %xmm3,%xmm4
          │  0x00007ff78c9aeee2:   vsubsd %xmm2,%xmm3,%xmm3
   0.46%  │  0x00007ff78c9aeee6:   vaddsd %xmm3,%xmm2,%xmm2
          │  0x00007ff78c9aeeea:   vsubsd %xmm2,%xmm4,%xmm4
          │  0x00007ff78c9aeeee:   vaddsd %xmm4,%xmm0,%xmm0
   0.48%  │  0x00007ff78c9aeef2:   vsubsd %xmm7,%xmm0,%xmm0
   1.74%  │  0x00007ff78c9aeef6:   vaddsd %xmm3,%xmm0,%xmm0
   1.80%  │  0x00007ff78c9aeefa:   jmp    0x00007ff78c9af51a
   0.13%  ↘  0x00007ff78c9aeeff:   jg     0x00007ff78c9aefa9
             0x00007ff78c9aef05:   vpextrw $0x3,%xmm0,%eax
             0x00007ff78c9aef0a:   mov    %eax,%edx
             0x00007ff78c9aef0c:   and    $0x7ff0,%eax
             0x00007ff78c9aef12:   je     0x00007ff78c9aef9c
             0x00007ff78c9aef18:   and    $0x7fff,%edx
             0x00007ff78c9aef1e:   cmp    $0x3e20,%edx
             0x00007ff78c9aef24:   jb     0x00007ff78c9aef7f
             0x00007ff78c9aef2a:   vmovdqu %xmm0,%xmm2
             0x00007ff78c9aef2e:   vmovdqu %xmm0,%xmm3
             0x00007ff78c9aef32:   vmovq  0x168f14e6(%rip),%xmm1        # 0x00007ff7a32a0420
....................................................................................................
  27.99%  <total for region 2>

....[Hottest Region 3]..............................................................................
libjava.so, jatan 

 <no assembly is recorded, native region>
....................................................................................................
  10.29%  <total for region 3>

....[Hottest Regions]...............................................................................
  40.65%        runtime stub  StubRoutines::libmTan 
  27.99%        runtime stub  StubRoutines::libmTan 
  10.29%          libjava.so  jatan 
   6.09%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop, version 4, compile id 479 
   3.44%    Unknown, level 0  java.lang.StrictMath::atan, version 1, compile id 474 
   2.61%          libjava.so  jfabs 
   1.96%          libjava.so  jatan 
   1.69%        runtime stub  StubRoutines::libmTan 
   0.71%        runtime stub  StubRoutines::libmTan 
   0.68%    Unknown, level 0  java.lang.StrictMath::atan, version 1, compile id 474 
   0.66%        runtime stub  StubRoutines::libmTan 
   0.45%          libjava.so  jatan 
   0.38%    Unknown, level 0  java.lang.StrictMath::atan, version 1, compile id 474 
   0.33%              kernel  [unknown] 
   0.17%    Unknown, level 0  java.lang.StrictMath::atan, version 1, compile id 474 
   0.15%              kernel  [unknown] 
   0.14%          libjava.so  jatan 
   0.13%          libjava.so  jatan 
   0.12%    Unknown, level 0  java.lang.StrictMath::atan, version 1, compile id 474 
   0.10%              kernel  [unknown] 
   1.24%  <...other 339 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  71.71%        runtime stub  StubRoutines::libmTan 
  12.97%          libjava.so  jatan 
   6.09%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop, version 4, compile id 479 
   4.79%    Unknown, level 0  java.lang.StrictMath::atan, version 1, compile id 474 
   2.61%          libjava.so  jfabs 
   1.43%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%        libc-2.31.so  [unknown] 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%           libjvm.so  os::PlatformMonitor::wait 
   0.01%           libjvm.so  defaultStream::write 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  re_search_stub 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.20%  <...other 78 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  71.71%        runtime stub
  15.58%          libjava.so
   6.09%         c2, level 4
   4.79%    Unknown, level 0
   1.43%              kernel
   0.18%           libjvm.so
   0.08%        libc-2.31.so
   0.04%  libpthread-2.31.so
   0.04%                    
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
   0.01%          ld-2.31.so
   0.00%      perf-20370.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking
# Parameters: (iterations = 16384)

# Run progress: 50.00% complete, ETA 00:01:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1216.740 us/op
# Warmup Iteration   2: 1210.950 us/op
# Warmup Iteration   3: 1211.019 us/op
# Warmup Iteration   4: 1210.918 us/op
# Warmup Iteration   5: 1210.912 us/op
Iteration   1: 1211.789 us/op
Iteration   2: 1210.874 us/op
Iteration   3: 1210.701 us/op
Iteration   4: 1210.592 us/op
Iteration   5: 1210.578 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking":
  1210.907 ±(99.9%) 1.953 us/op [Average]
  (min, avg, max) = (1210.578, 1210.907, 1211.789), stdev = 0.507
  CI (99.9%): [1208.954, 1212.860] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking:·asm":
PrintAssembly processed: 115466 total address lines.
Perf output processed (skipped 55.600 seconds):
 Column 1: cycles (50609 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::libmTan 

              0x00007f7a3c9aef16:   vaddsd %xmm1,%xmm0,%xmm0
              0x00007f7a3c9aef1a:   jmp    0x00007f7a3c9af4ba
              0x00007f7a3c9aef1f:   vmovq  0x1819e3d9(%rip),%xmm3        # 0x00007f7a54b4d300
              0x00007f7a3c9aef27:   vmulsd %xmm0,%xmm3,%xmm3
              0x00007f7a3c9aef2b:   vaddsd %xmm3,%xmm0,%xmm0
              0x00007f7a3c9aef2f:   vmulsd 0x1819e3c1(%rip),%xmm0,%xmm0        # 0x00007f7a54b4d2f8
              0x00007f7a3c9aef37:   jmp    0x00007f7a3c9af4ba
              0x00007f7a3c9aef3c:   vmovdqu %xmm0,%xmm1
              0x00007f7a3c9aef40:   vmulsd %xmm1,%xmm1,%xmm1
              0x00007f7a3c9aef44:   jmp    0x00007f7a3c9af4ba
   0.51%      0x00007f7a3c9aef49:   vpextrw $0x3,%xmm0,%eax
   0.00%      0x00007f7a3c9aef4e:   and    $0x7ff0,%eax
              0x00007f7a3c9aef54:   cmp    $0x7ff0,%eax
              0x00007f7a3c9aef5a:   je     0x00007f7a3c9af4a7
   0.59%      0x00007f7a3c9aef60:   vpextrw $0x3,%xmm0,%ecx
              0x00007f7a3c9aef65:   and    $0x7ff0,%ecx
              0x00007f7a3c9aef6b:   sub    $0x3f60,%ecx
   0.44%      0x00007f7a3c9aef71:   shr    $0x7,%ecx
   0.01%      0x00007f7a3c9aef74:   and    $0xfffc,%ecx
   0.01%      0x00007f7a3c9aef7a:   movabs $0x7f7a54b4d330,%r11
              0x00007f7a3c9aef84:   add    %r11,%rcx
   0.53%      0x00007f7a3c9aef87:   vmovq  %xmm0,%rax
   0.00%      0x00007f7a3c9aef8c:   mov    0x14(%rcx),%r10d
   1.42%      0x00007f7a3c9aef90:   mov    0x18(%rcx),%r8d
              0x00007f7a3c9aef94:   mov    %eax,%edx
   0.19%      0x00007f7a3c9aef96:   shr    $0x15,%rax
              0x00007f7a3c9aef9a:   or     $0x80000000,%eax
   0.31%      0x00007f7a3c9aefa0:   shr    $0xb,%eax
              0x00007f7a3c9aefa3:   mov    %r10d,%r9d
   0.17%      0x00007f7a3c9aefa6:   imul   %rdx,%r10
   0.65%      0x00007f7a3c9aefaa:   imul   %rax,%r9
   0.34%      0x00007f7a3c9aefae:   imul   %rax,%r8
   0.26%      0x00007f7a3c9aefb2:   mov    0x10(%rcx),%esi
   0.19%      0x00007f7a3c9aefb5:   mov    0xc(%rcx),%edi
              0x00007f7a3c9aefb8:   mov    %r10d,%r11d
   0.03%      0x00007f7a3c9aefbb:   shr    $0x20,%r10
   0.28%      0x00007f7a3c9aefbf:   add    %r10,%r9
   0.21%      0x00007f7a3c9aefc2:   add    %r8,%r11
              0x00007f7a3c9aefc5:   mov    %r11d,%r8d
   0.05%      0x00007f7a3c9aefc8:   shr    $0x20,%r11
   0.34%      0x00007f7a3c9aefcc:   add    %r11,%r9
   0.40%      0x00007f7a3c9aefcf:   mov    %esi,%r10d
              0x00007f7a3c9aefd2:   imul   %rdx,%rsi
   0.03%      0x00007f7a3c9aefd6:   imul   %rax,%r10
   0.02%      0x00007f7a3c9aefda:   mov    %edi,%r11d
   0.48%      0x00007f7a3c9aefdd:   imul   %rdx,%rdi
              0x00007f7a3c9aefe1:   mov    %esi,%ebx
   0.05%      0x00007f7a3c9aefe3:   shr    $0x20,%rsi
   0.10%      0x00007f7a3c9aefe7:   add    %rbx,%r9
   0.39%      0x00007f7a3c9aefea:   mov    %r9d,%ebx
              0x00007f7a3c9aefed:   shr    $0x20,%r9
   0.24%      0x00007f7a3c9aeff1:   add    %rsi,%r10
   0.02%      0x00007f7a3c9aeff4:   add    %r9,%r10
   0.50%      0x00007f7a3c9aeff7:   shl    $0x20,%rbx
              0x00007f7a3c9aeffb:   or     %rbx,%r8
   0.28%      0x00007f7a3c9aeffe:   imul   %rax,%r11
   0.01%      0x00007f7a3c9af002:   mov    0x8(%rcx),%r9d
   0.21%      0x00007f7a3c9af006:   mov    0x4(%rcx),%esi
              0x00007f7a3c9af009:   mov    %edi,%ebx
   0.24%      0x00007f7a3c9af00b:   shr    $0x20,%rdi
   0.00%      0x00007f7a3c9af00f:   add    %rbx,%r10
   0.17%      0x00007f7a3c9af012:   mov    %r10d,%ebx
              0x00007f7a3c9af015:   shr    $0x20,%r10
   0.23%      0x00007f7a3c9af019:   add    %rdi,%r11
   0.01%      0x00007f7a3c9af01c:   add    %r10,%r11
   0.52%      0x00007f7a3c9af01f:   mov    %r9,%rdi
              0x00007f7a3c9af022:   imul   %rdx,%r9
              0x00007f7a3c9af026:   imul   %rax,%rdi
   0.01%      0x00007f7a3c9af02a:   mov    %r9d,%r10d
   0.52%      0x00007f7a3c9af02d:   shr    $0x20,%r9
              0x00007f7a3c9af031:   add    %r10,%r11
              0x00007f7a3c9af034:   mov    %r11d,%r10d
   0.01%      0x00007f7a3c9af037:   shr    $0x20,%r11
   0.50%      0x00007f7a3c9af03b:   add    %r9,%rdi
              0x00007f7a3c9af03e:   add    %r11,%rdi
   0.27%      0x00007f7a3c9af041:   mov    %rsi,%r9
   0.01%      0x00007f7a3c9af044:   imul   %rdx,%rsi
   0.13%      0x00007f7a3c9af048:   imul   %rax,%r9
              0x00007f7a3c9af04c:   shl    $0x20,%r10
   0.30%      0x00007f7a3c9af050:   or     %rbx,%r10
   0.26%      0x00007f7a3c9af053:   mov    (%rcx),%eax
   0.20%      0x00007f7a3c9af055:   mov    %esi,%r11d
              0x00007f7a3c9af058:   shr    $0x20,%rsi
   0.07%      0x00007f7a3c9af05c:   add    %r11,%rdi
   0.24%      0x00007f7a3c9af05f:   mov    %edi,%r11d
   0.22%      0x00007f7a3c9af062:   shr    $0x20,%rdi
              0x00007f7a3c9af066:   add    %rsi,%r9
   0.08%      0x00007f7a3c9af069:   add    %rdi,%r9
   0.23%      0x00007f7a3c9af06c:   imul   %rax,%rdx
   0.16%      0x00007f7a3c9af070:   vpextrw $0x3,%xmm0,%ebx
   0.08%      0x00007f7a3c9af075:   movabs $0x7f7a54b4d330,%rdi
   0.24%      0x00007f7a3c9af07f:   sub    %rdi,%rcx
   0.18%      0x00007f7a3c9af082:   add    %ecx,%ecx
              0x00007f7a3c9af084:   add    %ecx,%ecx
   0.06%      0x00007f7a3c9af086:   add    %ecx,%ecx
   0.23%      0x00007f7a3c9af088:   add    $0x13,%ecx
   0.19%      0x00007f7a3c9af08b:   mov    $0x8000,%esi
              0x00007f7a3c9af090:   and    %ebx,%esi
   0.07%      0x00007f7a3c9af092:   shr    $0x4,%ebx
   0.27%      0x00007f7a3c9af095:   and    $0x7ff,%ebx
   0.16%      0x00007f7a3c9af09b:   sub    $0x3ff,%ebx
              0x00007f7a3c9af0a1:   sub    %ebx,%ecx
   0.05%      0x00007f7a3c9af0a3:   add    %rdx,%r9
   0.29%      0x00007f7a3c9af0a6:   mov    %ecx,%edx
   0.19%      0x00007f7a3c9af0a8:   add    $0x20,%edx
              0x00007f7a3c9af0ab:   cmp    $0x0,%ecx
              0x00007f7a3c9af0ae:   jl     0x00007f7a3c9af3f7
   0.06%      0x00007f7a3c9af0b4:   neg    %ecx
   0.23%      0x00007f7a3c9af0b6:   add    $0x1d,%ecx
   0.20%      0x00007f7a3c9af0b9:   shl    %cl,%r9d
   0.30%      0x00007f7a3c9af0bc:   mov    %r9d,%edi
   0.21%      0x00007f7a3c9af0bf:   and    $0x3fffffff,%r9d
   0.00%      0x00007f7a3c9af0c6:   test   $0x20000000,%r9d
              0x00007f7a3c9af0cd:   jne    0x00007f7a3c9af424
   0.10%      0x00007f7a3c9af0d3:   shr    %cl,%r9d
   0.30%      0x00007f7a3c9af0d6:   mov    $0x0,%ebx
   0.03%      0x00007f7a3c9af0db:   shl    $0x20,%r9
   0.18%      0x00007f7a3c9af0df:   or     %r11,%r9
   0.18%      0x00007f7a3c9af0e2:   cmp    $0x0,%r9
          ╭   0x00007f7a3c9af0e6:   je     0x00007f7a3c9af3a3
   0.14%  │↗  0x00007f7a3c9af0ec:   bsr    %r9,%r11
   0.22%  ││  0x00007f7a3c9af0f0:   mov    $0x1d,%ecx
   0.09%  ││  0x00007f7a3c9af0f5:   sub    %r11d,%ecx
          ││  0x00007f7a3c9af0f8:   jle    0x00007f7a3c9af3d4
   0.07%  ││  0x00007f7a3c9af0fe:   shl    %cl,%r9
   0.11%  ││  0x00007f7a3c9af101:   mov    %r10,%rax
   0.00%  ││  0x00007f7a3c9af104:   shl    %cl,%r10
   0.04%  ││  0x00007f7a3c9af107:   add    %ecx,%edx
          ││  0x00007f7a3c9af109:   neg    %ecx
          ││  0x00007f7a3c9af10b:   add    $0x40,%ecx
          ││  0x00007f7a3c9af10e:   shr    %cl,%rax
   0.04%  ││  0x00007f7a3c9af111:   shr    %cl,%r8
   0.02%  ││  0x00007f7a3c9af114:   or     %rax,%r9
          ││  0x00007f7a3c9af117:   or     %r8,%r10
   0.31%  ││  0x00007f7a3c9af11a:   vcvtsi2sd %r9,%xmm0,%xmm0
   1.05%  ││  0x00007f7a3c9af11f:   shr    %r10
   0.04%  ││  0x00007f7a3c9af122:   vcvtsi2sd %r10,%xmm3,%xmm3
   1.23%  ││  0x00007f7a3c9af127:   vxorpd %xmm4,%xmm4,%xmm4
   0.05%  ││  0x00007f7a3c9af12b:   shl    $0x4,%edx
   0.05%  ││  0x00007f7a3c9af12e:   neg    %edx
   0.03%  ││  0x00007f7a3c9af130:   add    $0x3ff0,%edx
   0.42%  ││  0x00007f7a3c9af136:   or     %esi,%edx
   0.07%  ││  0x00007f7a3c9af138:   xor    %ebx,%edx
   0.01%  ││  0x00007f7a3c9af13a:   vpinsrw $0x3,%edx,%xmm4,%xmm4
   0.43%  ││  0x00007f7a3c9af13f:   vmovq  0x1819e1d1(%rip),%xmm2        # 0x00007f7a54b4d318
   0.02%  ││  0x00007f7a3c9af147:   vmovq  0x1819e1d1(%rip),%xmm7        # 0x00007f7a54b4d320
   0.03%  ││  0x00007f7a3c9af14f:   vxorpd %xmm5,%xmm5,%xmm5
   0.03%  ││  0x00007f7a3c9af153:   sub    $0x3f0,%edx
   0.40%  ││  0x00007f7a3c9af159:   vpinsrw $0x3,%edx,%xmm5,%xmm5
   0.34%  ││  0x00007f7a3c9af15e:   vmulsd %xmm4,%xmm0,%xmm0
   0.67%  ││  0x00007f7a3c9af162:   shl    $0x10,%esi
   0.12%  ││  0x00007f7a3c9af165:   sar    $0x1f,%esi
   0.00%  ││  0x00007f7a3c9af168:   vmulsd %xmm5,%xmm3,%xmm3
   0.61%  ││  0x00007f7a3c9af16c:   vmovdqu %xmm0,%xmm1
   0.13%  ││  0x00007f7a3c9af170:   vmulsd %xmm2,%xmm0,%xmm0
   0.86%  ││  0x00007f7a3c9af174:   shr    $0x1e,%edi
          ││  0x00007f7a3c9af177:   vaddsd %xmm3,%xmm1,%xmm1
   1.03%  ││  0x00007f7a3c9af17b:   vmulsd %xmm2,%xmm3,%xmm3
   0.41%  ││  0x00007f7a3c9af17f:   add    %esi,%edi
   0.00%  ││  0x00007f7a3c9af181:   xor    %esi,%edi
          ││  0x00007f7a3c9af183:   vmulsd %xmm1,%xmm7,%xmm7
   1.51%  ││  0x00007f7a3c9af187:   mov    %edi,%eax
   0.01%  ││  0x00007f7a3c9af189:   vaddsd %xmm3,%xmm7,%xmm7
   2.09%  ││  0x00007f7a3c9af18d:   vmovdqu %xmm0,%xmm2
          ││  0x00007f7a3c9af191:   vaddsd %xmm7,%xmm0,%xmm0
   2.04%  ││  0x00007f7a3c9af195:   vsubsd %xmm0,%xmm2,%xmm2
   2.07%  ││  0x00007f7a3c9af199:   vaddsd %xmm2,%xmm7,%xmm7
   2.00%  ││  0x00007f7a3c9af19d:   vmovdqu 0x1819f8cb(%rip),%xmm1        # 0x00007f7a54b4ea70
          ││  0x00007f7a3c9af1a5:   vmovddup %xmm0,%xmm0
          ││  0x00007f7a3c9af1a9:   vmovdqu 0x1819f8cf(%rip),%xmm4        # 0x00007f7a54b4ea80
          ││  0x00007f7a3c9af1b1:   vandpd %xmm0,%xmm4,%xmm4
   0.52%  ││  0x00007f7a3c9af1b5:   vmulpd %xmm0,%xmm1,%xmm1
   0.00%  ││  0x00007f7a3c9af1b9:   vmovddup %xmm7,%xmm7
          ││  0x00007f7a3c9af1bd:   vmovdqu 0x1819f8db(%rip),%xmm5        # 0x00007f7a54b4eaa0
          ││  0x00007f7a3c9af1c5:   vmovdqu 0x1819f8c3(%rip),%xmm6        # 0x00007f7a54b4ea90
   0.49%  ││  0x00007f7a3c9af1cd:   vpor   %xmm4,%xmm5,%xmm5
          ││  0x00007f7a3c9af1d1:   vaddpd %xmm5,%xmm1,%xmm1
   0.07%  ││  0x00007f7a3c9af1d5:   vmovdqu %xmm1,%xmm5
          ││  0x00007f7a3c9af1d9:   vunpckhpd %xmm5,%xmm5,%xmm5
   0.48%  ││  0x00007f7a3c9af1dd:   vcvttsd2si %xmm5,%edx
   2.95%  ││  0x00007f7a3c9af1e1:   vcvttpd2dq %xmm1,%xmm1
          ││  0x00007f7a3c9af1e6:   vcvtdq2pd %xmm1,%xmm1
   1.56%  ││  0x00007f7a3c9af1ea:   vmulpd %xmm6,%xmm1,%xmm1
   1.96%  ││  0x00007f7a3c9af1ee:   vmovdqu 0x1819f86a(%rip),%xmm3        # 0x00007f7a54b4ea60
          ││  0x00007f7a3c9af1f6:   vmovq  0x1819e112(%rip),%xmm5        # 0x00007f7a54b4d310
          ││  0x00007f7a3c9af1fe:   shl    $0x4,%eax
          ││  0x00007f7a3c9af201:   add    $0x72900,%edx
   0.49%  ││  0x00007f7a3c9af207:   vmovdqu 0x1819f841(%rip),%xmm4        # 0x00007f7a54b4ea50
          ││  0x00007f7a3c9af20f:   vmulpd %xmm1,%xmm3,%xmm3
   1.62%  ││  0x00007f7a3c9af213:   add    %eax,%edx
          ││  0x00007f7a3c9af215:   and    $0x1f,%edx
          ││  0x00007f7a3c9af218:   vmulsd %xmm1,%xmm5,%xmm5
   0.42%  ││  0x00007f7a3c9af21c:   mov    %edx,%ecx
   0.24%  ││  0x00007f7a3c9af21e:   vmulpd %xmm1,%xmm4,%xmm4
   0.16%  ││  0x00007f7a3c9af222:   shl    %ecx
          ││  0x00007f7a3c9af224:   vsubpd %xmm3,%xmm0,%xmm0
   1.19%  ││  0x00007f7a3c9af228:   vmulpd 0x1819f810(%rip),%xmm1,%xmm1        # 0x00007f7a54b4ea40
          ││  0x00007f7a3c9af230:   add    %ecx,%edx
          ││  0x00007f7a3c9af232:   shl    $0x2,%ecx
          ││  0x00007f7a3c9af235:   add    %ecx,%edx
   0.50%  ││  0x00007f7a3c9af237:   vaddsd %xmm0,%xmm5,%xmm5
   1.56%  ││  0x00007f7a3c9af23b:   vmovdqu %xmm0,%xmm2
          ││  0x00007f7a3c9af23f:   vsubpd %xmm4,%xmm0,%xmm0
   0.24%  ││  0x00007f7a3c9af243:   vmovq  0x1819e0bd(%rip),%xmm6        # 0x00007f7a54b4d308
          ││  0x00007f7a3c9af24b:   shl    $0x4,%edx
   0.22%  ││  0x00007f7a3c9af24e:   movabs $0x7f7a54b4d440,%rax
          ││  0x00007f7a3c9af258:   vandpd 0x1819e1d0(%rip),%xmm5,%xmm5        # 0x00007f7a54b4d430
   0.68%  ││  0x00007f7a3c9af260:   vmovdqu %xmm0,%xmm3
          ││  0x00007f7a3c9af264:   add    %rdx,%rax
   0.17%  ││  0x00007f7a3c9af267:   vsubpd %xmm0,%xmm2,%xmm2
   1.40%  ││  0x00007f7a3c9af26b:   vunpckhpd %xmm0,%xmm0,%xmm0
   0.05%  ││  0x00007f7a3c9af26f:   vdivsd %xmm5,%xmm6,%xmm6
   4.99%  ││  0x00007f7a3c9af273:   vsubpd %xmm4,%xmm2,%xmm2
          ││  0x00007f7a3c9af277:   vsubsd %xmm5,%xmm3,%xmm3
          ││  0x00007f7a3c9af27b:   vsubpd %xmm1,%xmm2,%xmm2
          ││  0x00007f7a3c9af27f:   vmovdqu 0x30(%rax),%xmm1
   0.52%  ││  0x00007f7a3c9af284:   vaddpd %xmm7,%xmm2,%xmm2
   0.08%  ││  0x00007f7a3c9af288:   vmovdqu 0x10(%rax),%xmm7
          ││  0x00007f7a3c9af28d:   vmulpd %xmm0,%xmm7,%xmm7
          ││  0x00007f7a3c9af291:   vmovdqu 0x60(%rax),%xmm4
   0.43%  ││  0x00007f7a3c9af296:   vmulpd %xmm0,%xmm1,%xmm1
   0.07%  ││  0x00007f7a3c9af29a:   vmulpd %xmm0,%xmm4,%xmm4
          ││  0x00007f7a3c9af29e:   vaddsd %xmm3,%xmm2,%xmm2
   1.28%  ││  0x00007f7a3c9af2a2:   vmovdqu %xmm0,%xmm3
   0.01%  ││  0x00007f7a3c9af2a6:   vmulpd %xmm0,%xmm0,%xmm0
          ││  0x00007f7a3c9af2aa:   vaddpd (%rax),%xmm7,%xmm7
          ││  0x00007f7a3c9af2ae:   vaddpd 0x20(%rax),%xmm1,%xmm1
   0.47%  ││  0x00007f7a3c9af2b3:   vmulpd %xmm0,%xmm1,%xmm1
   0.03%  ││  0x00007f7a3c9af2b7:   vaddpd 0x50(%rax),%xmm4,%xmm4
          ││  0x00007f7a3c9af2bc:   vaddpd %xmm1,%xmm7,%xmm7
   0.00%  ││  0x00007f7a3c9af2c0:   vmovdqu 0x70(%rax),%xmm1
   0.44%  ││  0x00007f7a3c9af2c5:   vmulpd %xmm0,%xmm1,%xmm1
   0.01%  ││  0x00007f7a3c9af2c9:   vmulpd %xmm0,%xmm0,%xmm0
          ││  0x00007f7a3c9af2cd:   vaddpd %xmm1,%xmm4,%xmm4
   0.01%  ││  0x00007f7a3c9af2d1:   vmovdqu 0x40(%rax),%xmm1
   0.49%  ││  0x00007f7a3c9af2d6:   vmulpd %xmm0,%xmm1,%xmm1
   0.03%  ││  0x00007f7a3c9af2da:   vaddpd %xmm1,%xmm7,%xmm7
   0.32%  ││  0x00007f7a3c9af2de:   vmovdqu %xmm3,%xmm1
          ││  0x00007f7a3c9af2e2:   vmulpd %xmm0,%xmm3,%xmm3
   0.34%  ││  0x00007f7a3c9af2e6:   vmulsd %xmm0,%xmm0,%xmm0
   0.01%  ││  0x00007f7a3c9af2ea:   vmulpd 0x90(%rax),%xmm1,%xmm1
   0.19%  ││  0x00007f7a3c9af2f2:   vmulpd %xmm3,%xmm4,%xmm4
   0.01%  ││  0x00007f7a3c9af2f6:   vmovdqu %xmm1,%xmm3
   0.31%  ││  0x00007f7a3c9af2fa:   vaddpd %xmm4,%xmm7,%xmm7
   0.96%  ││  0x00007f7a3c9af2fe:   vmovdqu %xmm1,%xmm4
          ││  0x00007f7a3c9af302:   vmulsd %xmm7,%xmm0,%xmm0
   1.91%  ││  0x00007f7a3c9af306:   vunpckhpd %xmm7,%xmm7,%xmm7
          ││  0x00007f7a3c9af30a:   vaddsd %xmm7,%xmm0,%xmm0
   2.04%  ││  0x00007f7a3c9af30e:   vunpckhpd %xmm1,%xmm1,%xmm1
          ││  0x00007f7a3c9af312:   vaddsd %xmm1,%xmm3,%xmm3
          ││  0x00007f7a3c9af316:   vsubsd %xmm3,%xmm4,%xmm4
          ││  0x00007f7a3c9af31a:   vaddsd %xmm4,%xmm1,%xmm1
   0.50%  ││  0x00007f7a3c9af31e:   vmovdqu %xmm2,%xmm4
          ││  0x00007f7a3c9af322:   vmovq  0x90(%rax),%xmm7
          ││  0x00007f7a3c9af32a:   vunpckhpd %xmm2,%xmm2,%xmm2
          ││  0x00007f7a3c9af32e:   vaddsd 0x98(%rax),%xmm7,%xmm7
   0.47%  ││  0x00007f7a3c9af336:   vmulsd %xmm2,%xmm7,%xmm7
          ││  0x00007f7a3c9af33a:   vaddsd 0x88(%rax),%xmm7,%xmm7
          ││  0x00007f7a3c9af342:   vaddsd %xmm1,%xmm7,%xmm7
          ││  0x00007f7a3c9af346:   vaddsd %xmm7,%xmm0,%xmm0
   1.04%  ││  0x00007f7a3c9af34a:   vmovq  0x1819dfb6(%rip),%xmm7        # 0x00007f7a54b4d308
          ││  0x00007f7a3c9af352:   vmulsd %xmm6,%xmm4,%xmm4
          ││  0x00007f7a3c9af356:   vmovq  0xa8(%rax),%xmm2
          ││  0x00007f7a3c9af35e:   vandpd %xmm6,%xmm2,%xmm2
   0.48%  ││  0x00007f7a3c9af362:   vmulsd %xmm2,%xmm5,%xmm5
          ││  0x00007f7a3c9af366:   vmulsd 0xa0(%rax),%xmm6,%xmm6
          ││  0x00007f7a3c9af36e:   vsubsd %xmm5,%xmm7,%xmm7
          ││  0x00007f7a3c9af372:   vsubsd 0x80(%rax),%xmm2,%xmm2
   0.48%  ││  0x00007f7a3c9af37a:   vsubsd %xmm4,%xmm7,%xmm7
          ││  0x00007f7a3c9af37e:   vmulsd %xmm6,%xmm7,%xmm7
          ││  0x00007f7a3c9af382:   vmovdqu %xmm3,%xmm4
          ││  0x00007f7a3c9af386:   vsubsd %xmm2,%xmm3,%xmm3
   0.47%  ││  0x00007f7a3c9af38a:   vaddsd %xmm3,%xmm2,%xmm2
          ││  0x00007f7a3c9af38e:   vsubsd %xmm2,%xmm4,%xmm4
   0.00%  ││  0x00007f7a3c9af392:   vaddsd %xmm4,%xmm0,%xmm0
   0.50%  ││  0x00007f7a3c9af396:   vsubsd %xmm7,%xmm0,%xmm0
   1.91%  ││  0x00007f7a3c9af39a:   vaddsd %xmm3,%xmm0,%xmm0
   2.01%  ││  0x00007f7a3c9af39e:   jmp    0x00007f7a3c9af4ba
          ↘│  0x00007f7a3c9af3a3:   add    $0x40,%edx
           │  0x00007f7a3c9af3a6:   mov    %r10,%r9
           │  0x00007f7a3c9af3a9:   mov    %r8,%r10
           │  0x00007f7a3c9af3ac:   mov    $0x0,%r8d
           │  0x00007f7a3c9af3b2:   cmp    $0x0,%r9
           ╰  0x00007f7a3c9af3b6:   jne    0x00007f7a3c9af0ec
              0x00007f7a3c9af3bc:   add    $0x40,%edx
              0x00007f7a3c9af3bf:   mov    %r10,%r9
              0x00007f7a3c9af3c2:   mov    %r8,%r10
              0x00007f7a3c9af3c5:   cmp    $0x0,%r9
....................................................................................................
  75.98%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking, version 3, compile id 467 

             0x00007f7a3cf64520:   cmovl  %r11d,%r14d
             0x00007f7a3cf64524:   cmp    $0x1f40,%r14d
             0x00007f7a3cf6452b:   mov    $0x1f40,%r11d
             0x00007f7a3cf64531:   cmova  %r11d,%r14d
             0x00007f7a3cf64535:   add    %r13d,%r14d
             0x00007f7a3cf64538:   mov    %ebx,0x38(%rsp)
             0x00007f7a3cf6453c:   nopl   0x0(%rax)                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@32 (line 100)
          ↗  0x00007f7a3cf64540:   mov    %r13d,%r10d
          │  0x00007f7a3cf64543:   add    $0x6,%r10d
   0.08%  │  0x00007f7a3cf64547:   mov    %r13d,%r11d
          │  0x00007f7a3cf6454a:   add    $0x5,%r11d
          │  0x00007f7a3cf6454e:   vcvtsi2sd %r10d,%xmm0,%xmm0
   0.11%  │  0x00007f7a3cf64553:   vmulsd (%rsp),%xmm0,%xmm0
   0.26%  │  0x00007f7a3cf64558:   vmovsd %xmm0,0x20(%rsp)
   0.05%  │  0x00007f7a3cf6455e:   vcvtsi2sd %r11d,%xmm0,%xmm0
   0.21%  │  0x00007f7a3cf64563:   vmulsd (%rsp),%xmm0,%xmm0
   0.24%  │  0x00007f7a3cf64568:   vmovsd %xmm0,0x28(%rsp)
   0.08%  │  0x00007f7a3cf6456e:   mov    %r13d,%r10d
          │  0x00007f7a3cf64571:   dec    %r10d
          │  0x00007f7a3cf64574:   vcvtsi2sd %r13d,%xmm0,%xmm0
   0.22%  │  0x00007f7a3cf64579:   vmulsd (%rsp),%xmm0,%xmm0
   0.26%  │  0x00007f7a3cf6457e:   vmovq  %xmm0,%rbx
   0.11%  │  0x00007f7a3cf64583:   vcvtsi2sd %r10d,%xmm0,%xmm0
   0.12%  │  0x00007f7a3cf64588:   vmulsd (%rsp),%xmm0,%xmm0           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@39 (line 100)
   0.25%  │  0x00007f7a3cf6458d:   movabs $0x7f7a3c9aec72,%r10
          │  0x00007f7a3cf64597:   call   *%r10
          │  0x00007f7a3cf6459a:   vmovsd %xmm0,0x30(%rsp)
   0.07%  │  0x00007f7a3cf645a0:   vmovq  %rbx,%xmm0
          │  0x00007f7a3cf645a5:   movabs $0x7f7a3c9aec72,%r10
          │  0x00007f7a3cf645af:   call   *%r10                        ;*invokestatic tan {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@40 (line 100)
          │  0x00007f7a3cf645b2:   vmovsd 0x30(%rsp),%xmm1
   0.07%  │  0x00007f7a3cf645b8:   vmulsd 0x8(%rsp),%xmm1,%xmm1
          │  0x00007f7a3cf645be:   vmulsd 0x8(%rsp),%xmm0,%xmm2
   0.14%  │  0x00007f7a3cf645c4:   vmovsd 0x10(%rsp),%xmm3
          │  0x00007f7a3cf645ca:   vsubsd %xmm1,%xmm3,%xmm1
          │  0x00007f7a3cf645ce:   vsubsd %xmm2,%xmm3,%xmm2
   0.24%  │  0x00007f7a3cf645d2:   vaddsd 0x8(%rsp),%xmm0,%xmm0
          │  0x00007f7a3cf645d8:   vmovsd 0x30(%rsp),%xmm3
          │  0x00007f7a3cf645de:   vaddsd 0x8(%rsp),%xmm3,%xmm3
          │  0x00007f7a3cf645e4:   vdivsd %xmm2,%xmm0,%xmm0
   0.87%  │  0x00007f7a3cf645e8:   vdivsd %xmm1,%xmm3,%xmm1
          │  0x00007f7a3cf645ec:   vaddsd 0x18(%rsp),%xmm1,%xmm1
          │  0x00007f7a3cf645f2:   vaddsd %xmm1,%xmm0,%xmm0
   0.28%  │  0x00007f7a3cf645f6:   vmovsd %xmm0,0x18(%rsp)
   0.06%  │  0x00007f7a3cf645fc:   mov    %r13d,%r10d
          │  0x00007f7a3cf645ff:   inc    %r10d
          │  0x00007f7a3cf64602:   mov    %r13d,%ebx
          │  0x00007f7a3cf64605:   add    $0x2,%ebx
   0.07%  │  0x00007f7a3cf64608:   vcvtsi2sd %r10d,%xmm0,%xmm0
   0.10%  │  0x00007f7a3cf6460d:   vmulsd (%rsp),%xmm0,%xmm0           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@39 (line 100)
   0.19%  │  0x00007f7a3cf64612:   movabs $0x7f7a3c9aec72,%r10
          │  0x00007f7a3cf6461c:   call   *%r10                        ;*invokestatic tan {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@40 (line 100)
          │  0x00007f7a3cf6461f:   vaddsd 0x8(%rsp),%xmm0,%xmm1
   0.18%  │  0x00007f7a3cf64625:   vmulsd 0x8(%rsp),%xmm0,%xmm0
   0.02%  │  0x00007f7a3cf6462b:   vmovsd 0x10(%rsp),%xmm2
          │  0x00007f7a3cf64631:   vsubsd %xmm0,%xmm2,%xmm0
   0.23%  │  0x00007f7a3cf64635:   vdivsd %xmm0,%xmm1,%xmm0
   0.92%  │  0x00007f7a3cf64639:   vaddsd 0x18(%rsp),%xmm0,%xmm0
   0.24%  │  0x00007f7a3cf6463f:   vmovsd %xmm0,0x18(%rsp)
   0.07%  │  0x00007f7a3cf64645:   vcvtsi2sd %ebx,%xmm0,%xmm0
   0.23%  │  0x00007f7a3cf64649:   vmulsd (%rsp),%xmm0,%xmm0           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@39 (line 100)
   0.28%  │  0x00007f7a3cf6464e:   movabs $0x7f7a3c9aec72,%r10
          │  0x00007f7a3cf64658:   call   *%r10                        ;*invokestatic tan {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@40 (line 100)
          │  0x00007f7a3cf6465b:   vaddsd 0x8(%rsp),%xmm0,%xmm1
   0.21%  │  0x00007f7a3cf64661:   vmulsd 0x8(%rsp),%xmm0,%xmm0
   0.02%  │  0x00007f7a3cf64667:   vmovsd 0x10(%rsp),%xmm2
          │  0x00007f7a3cf6466d:   vsubsd %xmm0,%xmm2,%xmm0
   0.25%  │  0x00007f7a3cf64671:   vdivsd %xmm0,%xmm1,%xmm0
   0.91%  │  0x00007f7a3cf64675:   vaddsd 0x18(%rsp),%xmm0,%xmm0
   0.25%  │  0x00007f7a3cf6467b:   vmovsd %xmm0,0x18(%rsp)
   0.06%  │  0x00007f7a3cf64681:   mov    %r13d,%r11d
          │  0x00007f7a3cf64684:   add    $0x3,%r11d
          │  0x00007f7a3cf64688:   mov    %r13d,%ebx
          │  0x00007f7a3cf6468b:   add    $0x4,%ebx
   0.05%  │  0x00007f7a3cf6468e:   vcvtsi2sd %r11d,%xmm0,%xmm0
   0.12%  │  0x00007f7a3cf64693:   vmulsd (%rsp),%xmm0,%xmm0           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@39 (line 100)
   0.25%  │  0x00007f7a3cf64698:   nopl   0x0(%rax,%rax,1)
          │  0x00007f7a3cf646a0:   movabs $0x7f7a3c9aec72,%r10
          │  0x00007f7a3cf646aa:   call   *%r10                        ;*invokestatic tan {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@40 (line 100)
          │  0x00007f7a3cf646ad:   vaddsd 0x8(%rsp),%xmm0,%xmm1
   0.20%  │  0x00007f7a3cf646b3:   vmulsd 0x8(%rsp),%xmm0,%xmm0
   0.01%  │  0x00007f7a3cf646b9:   vmovsd 0x10(%rsp),%xmm2
          │  0x00007f7a3cf646bf:   vsubsd %xmm0,%xmm2,%xmm0
   0.24%  │  0x00007f7a3cf646c3:   vdivsd %xmm0,%xmm1,%xmm0
   0.93%  │  0x00007f7a3cf646c7:   vaddsd 0x18(%rsp),%xmm0,%xmm0
   0.26%  │  0x00007f7a3cf646cd:   vmovsd %xmm0,0x18(%rsp)
   0.08%  │  0x00007f7a3cf646d3:   vcvtsi2sd %ebx,%xmm0,%xmm0
   0.19%  │  0x00007f7a3cf646d7:   vmulsd (%rsp),%xmm0,%xmm0           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@39 (line 100)
   0.27%  │  0x00007f7a3cf646dc:   nopl   0x0(%rax)
          │  0x00007f7a3cf646e0:   movabs $0x7f7a3c9aec72,%r10
          │  0x00007f7a3cf646ea:   call   *%r10
          │  0x00007f7a3cf646ed:   vmovq  %xmm0,%rbx
   0.08%  │  0x00007f7a3cf646f2:   vmovsd 0x28(%rsp),%xmm0
          │  0x00007f7a3cf646f8:   nopl   0x0(%rax,%rax,1)
          │  0x00007f7a3cf64700:   movabs $0x7f7a3c9aec72,%r10
   0.07%  │  0x00007f7a3cf6470a:   call   *%r10
          │  0x00007f7a3cf6470d:   vmovsd %xmm0,0x28(%rsp)
   0.08%  │  0x00007f7a3cf64713:   vmovsd 0x20(%rsp),%xmm0
          │  0x00007f7a3cf64719:   nopl   0x0(%rax)
          │  0x00007f7a3cf64720:   movabs $0x7f7a3c9aec72,%r10
   0.06%  │  0x00007f7a3cf6472a:   call   *%r10                        ;*invokestatic tan {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@40 (line 100)
          │  0x00007f7a3cf6472d:   vmovq  %rbx,%xmm1
   0.08%  │  0x00007f7a3cf64732:   vmulsd 0x8(%rsp),%xmm1,%xmm1
          │  0x00007f7a3cf64738:   vmulsd 0x8(%rsp),%xmm0,%xmm2
   0.12%  │  0x00007f7a3cf6473e:   vmovsd 0x10(%rsp),%xmm3
          │  0x00007f7a3cf64744:   vsubsd %xmm1,%xmm3,%xmm3
          │  0x00007f7a3cf64748:   vmovsd 0x10(%rsp),%xmm1
          │  0x00007f7a3cf6474e:   vsubsd %xmm2,%xmm1,%xmm1
   0.28%  │  0x00007f7a3cf64752:   vaddsd 0x8(%rsp),%xmm0,%xmm0
          │  0x00007f7a3cf64758:   vmovsd 0x28(%rsp),%xmm2
          │  0x00007f7a3cf6475e:   vaddsd 0x8(%rsp),%xmm2,%xmm4
          │  0x00007f7a3cf64764:   vdivsd %xmm1,%xmm0,%xmm2
   0.98%  │  0x00007f7a3cf64768:   vmovsd 0x28(%rsp),%xmm0
          │  0x00007f7a3cf6476e:   vmulsd 0x8(%rsp),%xmm0,%xmm0
          │  0x00007f7a3cf64774:   vmovq  %rbx,%xmm1
          │  0x00007f7a3cf64779:   vaddsd 0x8(%rsp),%xmm1,%xmm1
   0.06%  │  0x00007f7a3cf6477f:   vmovsd 0x10(%rsp),%xmm5
          │  0x00007f7a3cf64785:   vsubsd %xmm0,%xmm5,%xmm0
          │  0x00007f7a3cf64789:   vdivsd %xmm3,%xmm1,%xmm1
          │  0x00007f7a3cf6478d:   vdivsd %xmm0,%xmm4,%xmm0
   0.08%  │  0x00007f7a3cf64791:   vaddsd 0x18(%rsp),%xmm1,%xmm1
          │  0x00007f7a3cf64797:   vaddsd %xmm1,%xmm0,%xmm0
          │  0x00007f7a3cf6479b:   vaddsd %xmm0,%xmm2,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@64 (line 103)
   0.11%  │  0x00007f7a3cf6479f:   vmovsd %xmm0,0x18(%rsp)
   0.06%  │  0x00007f7a3cf647a5:   add    $0x8,%r13d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@67 (line 98)
          │  0x00007f7a3cf647a9:   cmp    %r14d,%r13d
          ╰  0x00007f7a3cf647ac:   jl     0x00007f7a3cf64540           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@29 (line 98)
             0x00007f7a3cf647b2:   mov    0x348(%r15),%r10             ; ImmutableOopMap {}
                                                                       ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@70 (line 98)
             0x00007f7a3cf647b9:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@70 (line 98)
                                                                       ;   {poll}
....................................................................................................
  12.58%  <total for region 2>

....[Hottest Regions]...............................................................................
  75.98%        runtime stub  StubRoutines::libmTan 
  12.58%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking, version 3, compile id 467 
   4.35%        runtime stub  StubRoutines::libmTan 
   3.37%        runtime stub  StubRoutines::libmTan 
   1.30%        runtime stub  StubRoutines::libmTan 
   0.50%        runtime stub  StubRoutines::libmTan 
   0.35%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.07%  <...other 351 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  85.49%        runtime stub  StubRoutines::libmTan 
  12.58%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking, version 3, compile id 467 
   1.55%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  [unknown] 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  os::elapsedTime 
   0.01%           libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%        libc-2.31.so  _int_memalign 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  fileStream::flush 
   0.00%        libc-2.31.so  __strchr_sse2 
   0.00%           libjvm.so  StatSamplerTask::task 
   0.00%        libc-2.31.so  _nl_parse_alt_digit 
   0.00%        libc-2.31.so  _int_malloc 
   0.00%           libjvm.so  defaultStream::hold 
   0.19%  <...other 87 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  85.49%        runtime stub
  12.58%         c2, level 4
   1.55%              kernel
   0.19%           libjvm.so
   0.08%        libc-2.31.so
   0.04%                    
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.00%          libjava.so
   0.00%          ld-2.31.so
   0.00%        libjimage.so
   0.00%              [vdso]
   0.00%      perf-20431.map
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:03:37

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

Benchmark                                                               (iterations)  Mode  Cnt     Score   Error  Units
LoopInvariantCodeMotionBenchmark.initial_loop                                  16384  avgt    5  4460.948 ± 0.177  us/op
LoopInvariantCodeMotionBenchmark.initial_loop:·asm                             16384  avgt            NaN            ---
LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking              16384  avgt    5  1210.907 ± 1.953  us/op
LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking:·asm         16384  avgt            NaN            ---
