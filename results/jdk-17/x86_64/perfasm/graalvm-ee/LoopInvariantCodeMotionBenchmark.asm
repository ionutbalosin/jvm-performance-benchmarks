# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
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
# Warmup Iteration   1: 1839.602 us/op
# Warmup Iteration   2: 1823.587 us/op
# Warmup Iteration   3: 1823.461 us/op
# Warmup Iteration   4: 1823.338 us/op
# Warmup Iteration   5: 1823.897 us/op
Iteration   1: 1823.559 us/op
Iteration   2: 1823.249 us/op
Iteration   3: 1822.984 us/op
Iteration   4: 1823.467 us/op
Iteration   5: 1823.137 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.initial_loop":
  1823.279 ±(99.9%) 0.907 us/op [Average]
  (min, avg, max) = (1822.984, 1823.279, 1823.559), stdev = 0.236
  CI (99.9%): [1822.372, 1824.186] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.initial_loop:·asm":
PrintAssembly processed: 191020 total address lines.
Perf output processed (skipped 58.606 seconds):
 Column 1: cycles (51053 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

              0x00007f3aef17f5ca:   vaddsd %xmm1,%xmm0,%xmm0
              0x00007f3aef17f5ce:   jmp    0x00007f3aef17fb79
              0x00007f3aef17f5d3:   vmovq  -0x1a5b(%rip),%xmm3        # 0x00007f3aef17db80
              0x00007f3aef17f5db:   vmulsd %xmm0,%xmm3,%xmm3
              0x00007f3aef17f5df:   vaddsd %xmm3,%xmm0,%xmm0
              0x00007f3aef17f5e3:   vmulsd -0x1a8b(%rip),%xmm0,%xmm0        # 0x00007f3aef17db60
              0x00007f3aef17f5eb:   jmp    0x00007f3aef17fb79
              0x00007f3aef17f5f0:   vmovdqu %xmm0,%xmm1
              0x00007f3aef17f5f4:   vmulsd %xmm1,%xmm1,%xmm1
              0x00007f3aef17f5f8:   jmp    0x00007f3aef17fb79
   0.34%      0x00007f3aef17f5fd:   vpextrw $0x3,%xmm0,%eax
              0x00007f3aef17f602:   and    $0x7ff0,%eax
              0x00007f3aef17f608:   cmp    $0x7ff0,%eax
              0x00007f3aef17f60e:   je     0x00007f3aef17fb66
   0.30%      0x00007f3aef17f614:   vpextrw $0x3,%xmm0,%ecx
              0x00007f3aef17f619:   and    $0x7ff0,%ecx
              0x00007f3aef17f61f:   sub    $0x3f60,%ecx
   0.30%      0x00007f3aef17f625:   shr    $0x7,%ecx
              0x00007f3aef17f628:   and    $0xfffc,%ecx
              0x00007f3aef17f62e:   lea    -0x3c5(%rip),%r11        # 0x00007f3aef17f270
              0x00007f3aef17f635:   add    %r11,%rcx
   0.28%      0x00007f3aef17f638:   vmovq  %xmm0,%rax
              0x00007f3aef17f63d:   mov    0x14(%rcx),%r10d
              0x00007f3aef17f641:   mov    0x18(%rcx),%r8d
              0x00007f3aef17f645:   mov    %eax,%edx
   0.36%      0x00007f3aef17f647:   shr    $0x15,%rax
              0x00007f3aef17f64b:   or     $0x80000000,%eax
              0x00007f3aef17f651:   shr    $0xb,%eax
              0x00007f3aef17f654:   mov    %r10d,%r9d
   0.34%      0x00007f3aef17f657:   imul   %rdx,%r10
              0x00007f3aef17f65b:   imul   %rax,%r9
              0x00007f3aef17f65f:   imul   %rax,%r8
              0x00007f3aef17f663:   mov    0x10(%rcx),%esi
   0.29%      0x00007f3aef17f666:   mov    0xc(%rcx),%edi
              0x00007f3aef17f669:   mov    %r10d,%r11d
              0x00007f3aef17f66c:   shr    $0x20,%r10
              0x00007f3aef17f670:   add    %r10,%r9
   0.34%      0x00007f3aef17f673:   add    %r8,%r11
              0x00007f3aef17f676:   mov    %r11d,%r8d
              0x00007f3aef17f679:   shr    $0x20,%r11
              0x00007f3aef17f67d:   add    %r11,%r9
   0.35%      0x00007f3aef17f680:   mov    %esi,%r10d
              0x00007f3aef17f683:   imul   %rdx,%rsi
              0x00007f3aef17f687:   imul   %rax,%r10
              0x00007f3aef17f68b:   mov    %edi,%r11d
   0.30%      0x00007f3aef17f68e:   imul   %rdx,%rdi
              0x00007f3aef17f692:   mov    %esi,%ebx
              0x00007f3aef17f694:   shr    $0x20,%rsi
              0x00007f3aef17f698:   add    %rbx,%r9
   0.32%      0x00007f3aef17f69b:   mov    %r9d,%ebx
              0x00007f3aef17f69e:   shr    $0x20,%r9
              0x00007f3aef17f6a2:   add    %rsi,%r10
              0x00007f3aef17f6a5:   add    %r9,%r10
   0.30%      0x00007f3aef17f6a8:   shl    $0x20,%rbx
              0x00007f3aef17f6ac:   or     %rbx,%r8
              0x00007f3aef17f6af:   imul   %rax,%r11
              0x00007f3aef17f6b3:   mov    0x8(%rcx),%r9d
   0.33%      0x00007f3aef17f6b7:   mov    0x4(%rcx),%esi
              0x00007f3aef17f6ba:   mov    %edi,%ebx
              0x00007f3aef17f6bc:   shr    $0x20,%rdi
              0x00007f3aef17f6c0:   add    %rbx,%r10
   0.34%      0x00007f3aef17f6c3:   mov    %r10d,%ebx
              0x00007f3aef17f6c6:   shr    $0x20,%r10
              0x00007f3aef17f6ca:   add    %rdi,%r11
              0x00007f3aef17f6cd:   add    %r10,%r11
   0.28%      0x00007f3aef17f6d0:   mov    %r9,%rdi
              0x00007f3aef17f6d3:   imul   %rdx,%r9
              0x00007f3aef17f6d7:   imul   %rax,%rdi
              0x00007f3aef17f6db:   mov    %r9d,%r10d
   0.34%      0x00007f3aef17f6de:   shr    $0x20,%r9
              0x00007f3aef17f6e2:   add    %r10,%r11
              0x00007f3aef17f6e5:   mov    %r11d,%r10d
              0x00007f3aef17f6e8:   shr    $0x20,%r11
   0.33%      0x00007f3aef17f6ec:   add    %r9,%rdi
              0x00007f3aef17f6ef:   add    %r11,%rdi
              0x00007f3aef17f6f2:   mov    %rsi,%r9
              0x00007f3aef17f6f5:   imul   %rdx,%rsi
   0.34%      0x00007f3aef17f6f9:   imul   %rax,%r9
              0x00007f3aef17f6fd:   shl    $0x20,%r10
              0x00007f3aef17f701:   or     %rbx,%r10
              0x00007f3aef17f704:   mov    (%rcx),%eax
   0.33%      0x00007f3aef17f706:   mov    %esi,%r11d
              0x00007f3aef17f709:   shr    $0x20,%rsi
              0x00007f3aef17f70d:   add    %r11,%rdi
              0x00007f3aef17f710:   mov    %edi,%r11d
   0.30%      0x00007f3aef17f713:   shr    $0x20,%rdi
              0x00007f3aef17f717:   add    %rsi,%r9
              0x00007f3aef17f71a:   add    %rdi,%r9
              0x00007f3aef17f71d:   imul   %rax,%rdx
   0.31%      0x00007f3aef17f721:   vpextrw $0x3,%xmm0,%ebx
              0x00007f3aef17f726:   lea    -0x4bd(%rip),%rdi        # 0x00007f3aef17f270
              0x00007f3aef17f72d:   sub    %rdi,%rcx
   0.32%      0x00007f3aef17f730:   add    %ecx,%ecx
              0x00007f3aef17f732:   add    %ecx,%ecx
              0x00007f3aef17f734:   add    %ecx,%ecx
              0x00007f3aef17f736:   add    $0x13,%ecx
   0.33%      0x00007f3aef17f739:   mov    $0x8000,%esi
              0x00007f3aef17f73e:   and    %ebx,%esi
              0x00007f3aef17f740:   shr    $0x4,%ebx
              0x00007f3aef17f743:   and    $0x7ff,%ebx
   0.31%      0x00007f3aef17f749:   sub    $0x3ff,%ebx
              0x00007f3aef17f74f:   sub    %ebx,%ecx
              0x00007f3aef17f751:   add    %rdx,%r9
              0x00007f3aef17f754:   mov    %ecx,%edx
   0.30%      0x00007f3aef17f756:   add    $0x20,%edx
              0x00007f3aef17f759:   nopl   0x0(%rax)
              0x00007f3aef17f760:   cmp    $0x0,%ecx
              0x00007f3aef17f763:   jl     0x00007f3aef17fab2
              0x00007f3aef17f769:   neg    %ecx
   0.33%      0x00007f3aef17f76b:   add    $0x1d,%ecx
              0x00007f3aef17f76e:   shl    %cl,%r9d
   0.31%      0x00007f3aef17f771:   mov    %r9d,%edi
              0x00007f3aef17f774:   and    $0x3fffffff,%r9d
              0x00007f3aef17f77b:   nopl   0x0(%rax,%rax,1)
              0x00007f3aef17f780:   test   $0x20000000,%r9d
              0x00007f3aef17f787:   jne    0x00007f3aef17fadf
   0.17%      0x00007f3aef17f78d:   shr    %cl,%r9d
   0.00%      0x00007f3aef17f790:   mov    $0x0,%ebx
   0.15%      0x00007f3aef17f795:   shl    $0x20,%r9
              0x00007f3aef17f799:   or     %r11,%r9
   0.00%      0x00007f3aef17f79c:   nopl   0x0(%rax)
              0x00007f3aef17f7a0:   cmp    $0x0,%r9
          ╭   0x00007f3aef17f7a4:   je     0x00007f3aef17fa5d
   0.30%  │↗  0x00007f3aef17f7aa:   bsr    %r9,%r11
   0.00%  ││  0x00007f3aef17f7ae:   mov    $0x1d,%ecx
          ││  0x00007f3aef17f7b3:   sub    %r11d,%ecx
          ││  0x00007f3aef17f7b6:   jle    0x00007f3aef17fa8f
          ││  0x00007f3aef17f7bc:   shl    %cl,%r9
   0.02%  ││  0x00007f3aef17f7bf:   mov    %r10,%rax
          ││  0x00007f3aef17f7c2:   shl    %cl,%r10
   0.00%  ││  0x00007f3aef17f7c5:   add    %ecx,%edx
          ││  0x00007f3aef17f7c7:   neg    %ecx
   0.01%  ││  0x00007f3aef17f7c9:   add    $0x40,%ecx
          ││  0x00007f3aef17f7cc:   shr    %cl,%rax
   0.01%  ││  0x00007f3aef17f7cf:   shr    %cl,%r8
          ││  0x00007f3aef17f7d2:   or     %rax,%r9
   0.01%  ││  0x00007f3aef17f7d5:   or     %r8,%r10
   0.34%  ││  0x00007f3aef17f7d8:   vcvtsi2sd %r9,%xmm0,%xmm0
   0.02%  ││  0x00007f3aef17f7dd:   shr    %r10
   0.00%  ││  0x00007f3aef17f7e0:   vcvtsi2sd %r10,%xmm3,%xmm3
   0.37%  ││  0x00007f3aef17f7e5:   vxorpd %xmm4,%xmm4,%xmm4
   0.00%  ││  0x00007f3aef17f7e9:   shl    $0x4,%edx
   0.00%  ││  0x00007f3aef17f7ec:   neg    %edx
   0.31%  ││  0x00007f3aef17f7ee:   add    $0x3ff0,%edx
          ││  0x00007f3aef17f7f4:   or     %esi,%edx
   0.01%  ││  0x00007f3aef17f7f6:   xor    %ebx,%edx
   0.01%  ││  0x00007f3aef17f7f8:   vpinsrw $0x3,%edx,%xmm4,%xmm4
   0.34%  ││  0x00007f3aef17f7fd:   vmovq  -0x1c7d(%rip),%xmm2        # 0x00007f3aef17db88
          ││  0x00007f3aef17f805:   vmovq  -0x1c7d(%rip),%xmm7        # 0x00007f3aef17db90
   0.01%  ││  0x00007f3aef17f80d:   vxorpd %xmm5,%xmm5,%xmm5
   0.31%  ││  0x00007f3aef17f811:   sub    $0x3f0,%edx
   0.00%  ││  0x00007f3aef17f817:   vpinsrw $0x3,%edx,%xmm5,%xmm5
   0.02%  ││  0x00007f3aef17f81c:   vmulsd %xmm4,%xmm0,%xmm0
   0.33%  ││  0x00007f3aef17f820:   shl    $0x10,%esi
          ││  0x00007f3aef17f823:   sar    $0x1f,%esi
   0.00%  ││  0x00007f3aef17f826:   vmulsd %xmm5,%xmm3,%xmm3
   0.02%  ││  0x00007f3aef17f82a:   vmovdqu %xmm0,%xmm1
   0.35%  ││  0x00007f3aef17f82e:   vmulsd %xmm2,%xmm0,%xmm0
   0.02%  ││  0x00007f3aef17f832:   shr    $0x1e,%edi
          ││  0x00007f3aef17f835:   vaddsd %xmm3,%xmm1,%xmm1
   0.04%  ││  0x00007f3aef17f839:   vmulsd %xmm2,%xmm3,%xmm3
   0.34%  ││  0x00007f3aef17f83d:   add    %esi,%edi
   0.00%  ││  0x00007f3aef17f83f:   xor    %esi,%edi
          ││  0x00007f3aef17f841:   vmulsd %xmm1,%xmm7,%xmm7
   0.06%  ││  0x00007f3aef17f845:   mov    %edi,%eax
   0.32%  ││  0x00007f3aef17f847:   vaddsd %xmm3,%xmm7,%xmm7
   0.10%  ││  0x00007f3aef17f84b:   vmovdqu %xmm0,%xmm2
          ││  0x00007f3aef17f84f:   vaddsd %xmm7,%xmm0,%xmm0
   0.16%  ││  0x00007f3aef17f853:   vsubsd %xmm0,%xmm2,%xmm2
   0.39%  ││  0x00007f3aef17f857:   vaddsd %xmm2,%xmm7,%xmm7
   0.16%  ││  0x00007f3aef17f85b:   vmovdqu -0x1c93(%rip),%xmm1        # 0x00007f3aef17dbd0
          ││  0x00007f3aef17f863:   vmovddup %xmm0,%xmm0
   0.01%  ││  0x00007f3aef17f867:   vmovdqu -0x1caf(%rip),%xmm4        # 0x00007f3aef17dbc0
   0.31%  ││  0x00007f3aef17f86f:   vandpd %xmm0,%xmm4,%xmm4
   0.03%  ││  0x00007f3aef17f873:   vmulpd %xmm0,%xmm1,%xmm1
          ││  0x00007f3aef17f877:   vmovddup %xmm7,%xmm7
   0.01%  ││  0x00007f3aef17f87b:   vmovdqu -0x1ce3(%rip),%xmm5        # 0x00007f3aef17dba0
   0.31%  ││  0x00007f3aef17f883:   vmovdqu -0x1cdb(%rip),%xmm6        # 0x00007f3aef17dbb0
   0.07%  ││  0x00007f3aef17f88b:   vpor   %xmm4,%xmm5,%xmm5
          ││  0x00007f3aef17f88f:   vaddpd %xmm5,%xmm1,%xmm1
   0.01%  ││  0x00007f3aef17f893:   vmovdqu %xmm1,%xmm5
   0.28%  ││  0x00007f3aef17f897:   vunpckhpd %xmm5,%xmm5,%xmm5
   0.04%  ││  0x00007f3aef17f89b:   vcvttsd2si %xmm5,%edx
   0.25%  ││  0x00007f3aef17f89f:   vcvttpd2dq %xmm1,%xmm1
   0.27%  ││  0x00007f3aef17f8a3:   vcvtdq2pd %xmm1,%xmm1
   0.11%  ││  0x00007f3aef17f8a7:   vmulpd %xmm6,%xmm1,%xmm1
   0.43%  ││  0x00007f3aef17f8ab:   vmovdqu -0x1cd3(%rip),%xmm3        # 0x00007f3aef17dbe0
          ││  0x00007f3aef17f8b3:   vmovq  -0x1d4b(%rip),%xmm5        # 0x00007f3aef17db70
          ││  0x00007f3aef17f8bb:   shl    $0x4,%eax
          ││  0x00007f3aef17f8be:   add    $0x72900,%edx
   0.30%  ││  0x00007f3aef17f8c4:   vmovdqu -0x1cdc(%rip),%xmm4        # 0x00007f3aef17dbf0
          ││  0x00007f3aef17f8cc:   vmulpd %xmm1,%xmm3,%xmm3
   0.14%  ││  0x00007f3aef17f8d0:   add    %eax,%edx
   0.00%  ││  0x00007f3aef17f8d2:   and    $0x1f,%edx
   0.32%  ││  0x00007f3aef17f8d5:   vmulsd %xmm1,%xmm5,%xmm5
   0.02%  ││  0x00007f3aef17f8d9:   mov    %edx,%ecx
   0.05%  ││  0x00007f3aef17f8db:   vmulpd %xmm1,%xmm4,%xmm4
   0.03%  ││  0x00007f3aef17f8df:   shl    %ecx
   0.25%  ││  0x00007f3aef17f8e1:   vsubpd %xmm3,%xmm0,%xmm0
   0.09%  ││  0x00007f3aef17f8e5:   vmulpd -0x1ced(%rip),%xmm1,%xmm1        # 0x00007f3aef17dc00
          ││  0x00007f3aef17f8ed:   add    %ecx,%edx
   0.01%  ││  0x00007f3aef17f8ef:   shl    $0x2,%ecx
   0.26%  ││  0x00007f3aef17f8f2:   add    %ecx,%edx
   0.05%  ││  0x00007f3aef17f8f4:   vaddsd %xmm0,%xmm5,%xmm5
   0.16%  ││  0x00007f3aef17f8f8:   vmovdqu %xmm0,%xmm2
   0.00%  ││  0x00007f3aef17f8fc:   vsubpd %xmm4,%xmm0,%xmm0
   0.31%  ││  0x00007f3aef17f900:   vmovq  -0x1d90(%rip),%xmm6        # 0x00007f3aef17db78
          ││  0x00007f3aef17f908:   shl    $0x4,%edx
   0.02%  ││  0x00007f3aef17f90b:   lea    -0x1d02(%rip),%rax        # 0x00007f3aef17dc10
   0.00%  ││  0x00007f3aef17f912:   vandpd -0x70a(%rip),%xmm5,%xmm5        # 0x00007f3aef17f210
   0.41%  ││  0x00007f3aef17f91a:   vmovdqu %xmm0,%xmm3
          ││  0x00007f3aef17f91e:   add    %rdx,%rax
   0.02%  ││  0x00007f3aef17f921:   vsubpd %xmm0,%xmm2,%xmm2
   0.32%  ││  0x00007f3aef17f925:   vunpckhpd %xmm0,%xmm0,%xmm0
   0.19%  ││  0x00007f3aef17f929:   vdivsd %xmm5,%xmm6,%xmm6
   1.71%  ││  0x00007f3aef17f92d:   vsubpd %xmm4,%xmm2,%xmm2
          ││  0x00007f3aef17f931:   vsubsd %xmm5,%xmm3,%xmm3
          ││  0x00007f3aef17f935:   vsubpd %xmm1,%xmm2,%xmm2
   0.11%  ││  0x00007f3aef17f939:   vmovdqu 0x30(%rax),%xmm1
   0.20%  ││  0x00007f3aef17f93e:   vaddpd %xmm7,%xmm2,%xmm2
   0.07%  ││  0x00007f3aef17f942:   vmovdqu 0x10(%rax),%xmm7
   0.00%  ││  0x00007f3aef17f947:   vmulpd %xmm0,%xmm7,%xmm7
   0.11%  ││  0x00007f3aef17f94b:   vmovdqu 0x60(%rax),%xmm4
   0.15%  ││  0x00007f3aef17f950:   vmulpd %xmm0,%xmm1,%xmm1
   0.05%  ││  0x00007f3aef17f954:   vmulpd %xmm0,%xmm4,%xmm4
   0.00%  ││  0x00007f3aef17f958:   vaddsd %xmm3,%xmm2,%xmm2
   0.69%  ││  0x00007f3aef17f95c:   vmovdqu %xmm0,%xmm3
   0.03%  ││  0x00007f3aef17f960:   vmulpd %xmm0,%xmm0,%xmm0
          ││  0x00007f3aef17f964:   vaddpd (%rax),%xmm7,%xmm7
          ││  0x00007f3aef17f968:   vaddpd 0x20(%rax),%xmm1,%xmm1
   0.33%  ││  0x00007f3aef17f96d:   vmulpd %xmm0,%xmm1,%xmm1
   0.02%  ││  0x00007f3aef17f971:   vaddpd 0x50(%rax),%xmm4,%xmm4
          ││  0x00007f3aef17f976:   vaddpd %xmm1,%xmm7,%xmm7
   0.00%  ││  0x00007f3aef17f97a:   vmovdqu 0x70(%rax),%xmm1
   0.29%  ││  0x00007f3aef17f97f:   vmulpd %xmm0,%xmm1,%xmm1
   0.02%  ││  0x00007f3aef17f983:   vmulpd %xmm0,%xmm0,%xmm0
          ││  0x00007f3aef17f987:   vaddpd %xmm1,%xmm4,%xmm4
   0.00%  ││  0x00007f3aef17f98b:   vmovdqu 0x40(%rax),%xmm1
   0.32%  ││  0x00007f3aef17f990:   vmulpd %xmm0,%xmm1,%xmm1
   0.02%  ││  0x00007f3aef17f994:   vaddpd %xmm1,%xmm7,%xmm7
   0.04%  ││  0x00007f3aef17f998:   vmovdqu %xmm3,%xmm1
          ││  0x00007f3aef17f99c:   vmulpd %xmm0,%xmm3,%xmm3
   0.27%  ││  0x00007f3aef17f9a0:   vmulsd %xmm0,%xmm0,%xmm0
   0.03%  ││  0x00007f3aef17f9a4:   vmulpd 0x90(%rax),%xmm1,%xmm1
   0.06%  ││  0x00007f3aef17f9ac:   vmulpd %xmm3,%xmm4,%xmm4
   0.01%  ││  0x00007f3aef17f9b0:   vmovdqu %xmm1,%xmm3
   0.30%  ││  0x00007f3aef17f9b4:   vaddpd %xmm4,%xmm7,%xmm7
   0.48%  ││  0x00007f3aef17f9b8:   vmovdqu %xmm1,%xmm4
          ││  0x00007f3aef17f9bc:   vmulsd %xmm7,%xmm0,%xmm0
   1.05%  ││  0x00007f3aef17f9c0:   vunpckhpd %xmm7,%xmm7,%xmm7
   0.01%  ││  0x00007f3aef17f9c4:   vaddsd %xmm7,%xmm0,%xmm0
   1.28%  ││  0x00007f3aef17f9c8:   vunpckhpd %xmm1,%xmm1,%xmm1
          ││  0x00007f3aef17f9cc:   vaddsd %xmm1,%xmm3,%xmm3
          ││  0x00007f3aef17f9d0:   vsubsd %xmm3,%xmm4,%xmm4
   0.01%  ││  0x00007f3aef17f9d4:   vaddsd %xmm4,%xmm1,%xmm1
   0.32%  ││  0x00007f3aef17f9d8:   vmovdqu %xmm2,%xmm4
          ││  0x00007f3aef17f9dc:   vmovq  0x90(%rax),%xmm7
          ││  0x00007f3aef17f9e4:   vunpckhpd %xmm2,%xmm2,%xmm2
   0.00%  ││  0x00007f3aef17f9e8:   vaddsd 0x98(%rax),%xmm7,%xmm7
   0.32%  ││  0x00007f3aef17f9f0:   vmulsd %xmm2,%xmm7,%xmm7
          ││  0x00007f3aef17f9f4:   vaddsd 0x88(%rax),%xmm7,%xmm7
          ││  0x00007f3aef17f9fc:   vaddsd %xmm1,%xmm7,%xmm7
          ││  0x00007f3aef17fa00:   vaddsd %xmm7,%xmm0,%xmm0
   0.73%  ││  0x00007f3aef17fa04:   vmovq  -0x1e94(%rip),%xmm7        # 0x00007f3aef17db78
          ││  0x00007f3aef17fa0c:   vmulsd %xmm6,%xmm4,%xmm4
          ││  0x00007f3aef17fa10:   vmovq  0xa8(%rax),%xmm2
   0.00%  ││  0x00007f3aef17fa18:   vandpd %xmm6,%xmm2,%xmm2
   0.32%  ││  0x00007f3aef17fa1c:   vmulsd %xmm2,%xmm5,%xmm5
          ││  0x00007f3aef17fa20:   vmulsd 0xa0(%rax),%xmm6,%xmm6
          ││  0x00007f3aef17fa28:   vsubsd %xmm5,%xmm7,%xmm7
          ││  0x00007f3aef17fa2c:   vsubsd 0x80(%rax),%xmm2,%xmm2
   0.28%  ││  0x00007f3aef17fa34:   vsubsd %xmm4,%xmm7,%xmm7
          ││  0x00007f3aef17fa38:   vmulsd %xmm6,%xmm7,%xmm7
          ││  0x00007f3aef17fa3c:   vmovdqu %xmm3,%xmm4
   0.00%  ││  0x00007f3aef17fa40:   vsubsd %xmm2,%xmm3,%xmm3
   0.34%  ││  0x00007f3aef17fa44:   vaddsd %xmm3,%xmm2,%xmm2
          ││  0x00007f3aef17fa48:   vsubsd %xmm2,%xmm4,%xmm4
          ││  0x00007f3aef17fa4c:   vaddsd %xmm4,%xmm0,%xmm0
   0.38%  ││  0x00007f3aef17fa50:   vsubsd %xmm7,%xmm0,%xmm0
   1.22%  ││  0x00007f3aef17fa54:   vaddsd %xmm3,%xmm0,%xmm0
   1.33%  ││  0x00007f3aef17fa58:   jmp    0x00007f3aef17fb79
          ↘│  0x00007f3aef17fa5d:   add    $0x40,%edx
           │  0x00007f3aef17fa60:   mov    %r10,%r9
           │  0x00007f3aef17fa63:   mov    %r8,%r10
           │  0x00007f3aef17fa66:   mov    $0x0,%r8d
           │  0x00007f3aef17fa6c:   cmp    $0x0,%r9
           ╰  0x00007f3aef17fa70:   jne    0x00007f3aef17f7aa
              0x00007f3aef17fa76:   add    $0x40,%edx
              0x00007f3aef17fa79:   mov    %r10,%r9
              0x00007f3aef17fa7c:   mov    %r8,%r10
              0x00007f3aef17fa7f:   nop
....................................................................................................
  31.38%  <total for region 1>

....[Hottest Region 2]..............................................................................
libjava.so, jatan 

 <no assembly is recorded, native region>
....................................................................................................
  24.96%  <total for region 2>

....[Hottest Regions]...............................................................................
  31.38%                       <unknown> 
  24.96%           libjava.so  jatan 
   9.98%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop, version 4, compile id 732 
   8.34%     Unknown, level 0  java.lang.StrictMath::atan, version 1, compile id 727 
   6.57%           libjava.so  jfabs 
   4.79%           libjava.so  jatan 
   3.92%                       <unknown> 
   1.65%     Unknown, level 0  java.lang.StrictMath::atan, version 1, compile id 727 
   1.24%               kernel  [unknown] 
   1.20%                       <unknown> 
   1.05%     Unknown, level 0  java.lang.StrictMath::atan, version 1, compile id 727 
   1.03%           libjava.so  jatan 
   0.96%                       <unknown> 
   0.39%           libjava.so  jatan 
   0.38%           libjava.so  jatan 
   0.36%     Unknown, level 0  java.lang.StrictMath::atan, version 1, compile id 727 
   0.33%     Unknown, level 0  java.lang.StrictMath::atan, version 1, compile id 727 
   0.14%           libjava.so  Java_java_lang_StrictMath_atan 
   0.11%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   1.17%  <...other 287 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  37.50%                       <unknown> 
  31.58%           libjava.so  jatan 
  11.73%     Unknown, level 0  java.lang.StrictMath::atan, version 1, compile id 727 
   9.98%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop, version 4, compile id 732 
   6.57%           libjava.so  jfabs 
   2.18%               kernel  [unknown] 
   0.14%           libjava.so  Java_java_lang_StrictMath_atan 
   0.03%         libc-2.31.so  [unknown] 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  StatSamplerTask::task 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%            libjvm.so  fileStream::flush 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%          interpreter  method entry point (kind = zerolocals)  
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.17%  <...other 72 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  38.29%           libjava.so
  37.50%                     
  11.73%     Unknown, level 0
   9.98%       jvmci, level 4
   2.18%               kernel
   0.16%            libjvm.so
   0.09%         libc-2.31.so
   0.02%   libpthread-2.31.so
   0.02%          interpreter
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.00%               [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking
# Parameters: (iterations = 16384)

# Run progress: 50.00% complete, ETA 00:01:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 902.028 us/op
# Warmup Iteration   2: 898.013 us/op
# Warmup Iteration   3: 897.756 us/op
# Warmup Iteration   4: 897.684 us/op
# Warmup Iteration   5: 897.635 us/op
Iteration   1: 897.761 us/op
Iteration   2: 898.013 us/op
Iteration   3: 897.901 us/op
Iteration   4: 897.925 us/op
Iteration   5: 897.946 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking":
  897.909 ±(99.9%) 0.357 us/op [Average]
  (min, avg, max) = (897.761, 897.909, 898.013), stdev = 0.093
  CI (99.9%): [897.552, 898.267] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking:·asm":
PrintAssembly processed: 193128 total address lines.
Perf output processed (skipped 58.686 seconds):
 Column 1: cycles (51124 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

              0x00007fb71317f44a:   vaddsd %xmm1,%xmm0,%xmm0
              0x00007fb71317f44e:   jmp    0x00007fb71317f9f9
              0x00007fb71317f453:   vmovq  -0x1a5b(%rip),%xmm3        # 0x00007fb71317da00
              0x00007fb71317f45b:   vmulsd %xmm0,%xmm3,%xmm3
              0x00007fb71317f45f:   vaddsd %xmm3,%xmm0,%xmm0
              0x00007fb71317f463:   vmulsd -0x1a8b(%rip),%xmm0,%xmm0        # 0x00007fb71317d9e0
              0x00007fb71317f46b:   jmp    0x00007fb71317f9f9
              0x00007fb71317f470:   vmovdqu %xmm0,%xmm1
              0x00007fb71317f474:   vmulsd %xmm1,%xmm1,%xmm1
              0x00007fb71317f478:   jmp    0x00007fb71317f9f9
   0.61%      0x00007fb71317f47d:   vpextrw $0x3,%xmm0,%eax
              0x00007fb71317f482:   and    $0x7ff0,%eax
              0x00007fb71317f488:   cmp    $0x7ff0,%eax
              0x00007fb71317f48e:   je     0x00007fb71317f9e6
   0.62%      0x00007fb71317f494:   vpextrw $0x3,%xmm0,%ecx
              0x00007fb71317f499:   and    $0x7ff0,%ecx
              0x00007fb71317f49f:   sub    $0x3f60,%ecx
   0.65%      0x00007fb71317f4a5:   shr    $0x7,%ecx
              0x00007fb71317f4a8:   and    $0xfffc,%ecx
              0x00007fb71317f4ae:   lea    -0x3c5(%rip),%r11        # 0x00007fb71317f0f0
              0x00007fb71317f4b5:   add    %r11,%rcx
   0.64%      0x00007fb71317f4b8:   vmovq  %xmm0,%rax
              0x00007fb71317f4bd:   mov    0x14(%rcx),%r10d
              0x00007fb71317f4c1:   mov    0x18(%rcx),%r8d
              0x00007fb71317f4c5:   mov    %eax,%edx
   0.59%      0x00007fb71317f4c7:   shr    $0x15,%rax
              0x00007fb71317f4cb:   or     $0x80000000,%eax
              0x00007fb71317f4d1:   shr    $0xb,%eax
              0x00007fb71317f4d4:   mov    %r10d,%r9d
   0.58%      0x00007fb71317f4d7:   imul   %rdx,%r10
              0x00007fb71317f4db:   imul   %rax,%r9
              0x00007fb71317f4df:   imul   %rax,%r8
   0.00%      0x00007fb71317f4e3:   mov    0x10(%rcx),%esi
   0.64%      0x00007fb71317f4e6:   mov    0xc(%rcx),%edi
              0x00007fb71317f4e9:   mov    %r10d,%r11d
              0x00007fb71317f4ec:   shr    $0x20,%r10
              0x00007fb71317f4f0:   add    %r10,%r9
   0.60%      0x00007fb71317f4f3:   add    %r8,%r11
              0x00007fb71317f4f6:   mov    %r11d,%r8d
              0x00007fb71317f4f9:   shr    $0x20,%r11
              0x00007fb71317f4fd:   add    %r11,%r9
   0.67%      0x00007fb71317f500:   mov    %esi,%r10d
              0x00007fb71317f503:   imul   %rdx,%rsi
              0x00007fb71317f507:   imul   %rax,%r10
              0x00007fb71317f50b:   mov    %edi,%r11d
   0.63%      0x00007fb71317f50e:   imul   %rdx,%rdi
              0x00007fb71317f512:   mov    %esi,%ebx
              0x00007fb71317f514:   shr    $0x20,%rsi
              0x00007fb71317f518:   add    %rbx,%r9
   0.58%      0x00007fb71317f51b:   mov    %r9d,%ebx
              0x00007fb71317f51e:   shr    $0x20,%r9
              0x00007fb71317f522:   add    %rsi,%r10
              0x00007fb71317f525:   add    %r9,%r10
   0.67%      0x00007fb71317f528:   shl    $0x20,%rbx
              0x00007fb71317f52c:   or     %rbx,%r8
              0x00007fb71317f52f:   imul   %rax,%r11
              0x00007fb71317f533:   mov    0x8(%rcx),%r9d
   0.60%      0x00007fb71317f537:   mov    0x4(%rcx),%esi
              0x00007fb71317f53a:   mov    %edi,%ebx
              0x00007fb71317f53c:   shr    $0x20,%rdi
              0x00007fb71317f540:   add    %rbx,%r10
   0.68%      0x00007fb71317f543:   mov    %r10d,%ebx
              0x00007fb71317f546:   shr    $0x20,%r10
              0x00007fb71317f54a:   add    %rdi,%r11
              0x00007fb71317f54d:   add    %r10,%r11
   0.59%      0x00007fb71317f550:   mov    %r9,%rdi
              0x00007fb71317f553:   imul   %rdx,%r9
              0x00007fb71317f557:   imul   %rax,%rdi
              0x00007fb71317f55b:   mov    %r9d,%r10d
   0.62%      0x00007fb71317f55e:   shr    $0x20,%r9
              0x00007fb71317f562:   add    %r10,%r11
              0x00007fb71317f565:   mov    %r11d,%r10d
              0x00007fb71317f568:   shr    $0x20,%r11
   0.61%      0x00007fb71317f56c:   add    %r9,%rdi
              0x00007fb71317f56f:   add    %r11,%rdi
              0x00007fb71317f572:   mov    %rsi,%r9
              0x00007fb71317f575:   imul   %rdx,%rsi
   0.60%      0x00007fb71317f579:   imul   %rax,%r9
              0x00007fb71317f57d:   shl    $0x20,%r10
              0x00007fb71317f581:   or     %rbx,%r10
   0.00%      0x00007fb71317f584:   mov    (%rcx),%eax
   0.65%      0x00007fb71317f586:   mov    %esi,%r11d
              0x00007fb71317f589:   shr    $0x20,%rsi
              0x00007fb71317f58d:   add    %r11,%rdi
              0x00007fb71317f590:   mov    %edi,%r11d
   0.66%      0x00007fb71317f593:   shr    $0x20,%rdi
              0x00007fb71317f597:   add    %rsi,%r9
              0x00007fb71317f59a:   add    %rdi,%r9
              0x00007fb71317f59d:   imul   %rax,%rdx
   0.56%      0x00007fb71317f5a1:   vpextrw $0x3,%xmm0,%ebx
              0x00007fb71317f5a6:   lea    -0x4bd(%rip),%rdi        # 0x00007fb71317f0f0
   0.00%      0x00007fb71317f5ad:   sub    %rdi,%rcx
   0.71%      0x00007fb71317f5b0:   add    %ecx,%ecx
              0x00007fb71317f5b2:   add    %ecx,%ecx
              0x00007fb71317f5b4:   add    %ecx,%ecx
              0x00007fb71317f5b6:   add    $0x13,%ecx
   0.62%      0x00007fb71317f5b9:   mov    $0x8000,%esi
              0x00007fb71317f5be:   and    %ebx,%esi
              0x00007fb71317f5c0:   shr    $0x4,%ebx
              0x00007fb71317f5c3:   and    $0x7ff,%ebx
   0.59%      0x00007fb71317f5c9:   sub    $0x3ff,%ebx
              0x00007fb71317f5cf:   sub    %ebx,%ecx
              0x00007fb71317f5d1:   add    %rdx,%r9
              0x00007fb71317f5d4:   mov    %ecx,%edx
   0.63%      0x00007fb71317f5d6:   add    $0x20,%edx
              0x00007fb71317f5d9:   nopl   0x0(%rax)
              0x00007fb71317f5e0:   cmp    $0x0,%ecx
              0x00007fb71317f5e3:   jl     0x00007fb71317f932
              0x00007fb71317f5e9:   neg    %ecx
   0.59%      0x00007fb71317f5eb:   add    $0x1d,%ecx
              0x00007fb71317f5ee:   shl    %cl,%r9d
   0.59%      0x00007fb71317f5f1:   mov    %r9d,%edi
              0x00007fb71317f5f4:   and    $0x3fffffff,%r9d
              0x00007fb71317f5fb:   nopl   0x0(%rax,%rax,1)
              0x00007fb71317f600:   test   $0x20000000,%r9d
              0x00007fb71317f607:   jne    0x00007fb71317f95f
   0.28%      0x00007fb71317f60d:   shr    %cl,%r9d
   0.02%      0x00007fb71317f610:   mov    $0x0,%ebx
   0.27%      0x00007fb71317f615:   shl    $0x20,%r9
              0x00007fb71317f619:   or     %r11,%r9
   0.01%      0x00007fb71317f61c:   nopl   0x0(%rax)
   0.00%      0x00007fb71317f620:   cmp    $0x0,%r9
          ╭   0x00007fb71317f624:   je     0x00007fb71317f8dd
   0.55%  │↗  0x00007fb71317f62a:   bsr    %r9,%r11
   0.03%  ││  0x00007fb71317f62e:   mov    $0x1d,%ecx
   0.00%  ││  0x00007fb71317f633:   sub    %r11d,%ecx
          ││  0x00007fb71317f636:   jle    0x00007fb71317f90f
   0.01%  ││  0x00007fb71317f63c:   shl    %cl,%r9
   0.03%  ││  0x00007fb71317f63f:   mov    %r10,%rax
          ││  0x00007fb71317f642:   shl    %cl,%r10
   0.01%  ││  0x00007fb71317f645:   add    %ecx,%edx
          ││  0x00007fb71317f647:   neg    %ecx
   0.00%  ││  0x00007fb71317f649:   add    $0x40,%ecx
          ││  0x00007fb71317f64c:   shr    %cl,%rax
   0.01%  ││  0x00007fb71317f64f:   shr    %cl,%r8
   0.00%  ││  0x00007fb71317f652:   or     %rax,%r9
   0.01%  ││  0x00007fb71317f655:   or     %r8,%r10
   0.65%  ││  0x00007fb71317f658:   vcvtsi2sd %r9,%xmm0,%xmm0
   0.14%  ││  0x00007fb71317f65d:   shr    %r10
   0.00%  ││  0x00007fb71317f660:   vcvtsi2sd %r10,%xmm3,%xmm3
   0.67%  ││  0x00007fb71317f665:   vxorpd %xmm4,%xmm4,%xmm4
   0.02%  ││  0x00007fb71317f669:   shl    $0x4,%edx
          ││  0x00007fb71317f66c:   neg    %edx
   0.53%  ││  0x00007fb71317f66e:   add    $0x3ff0,%edx
   0.04%  ││  0x00007fb71317f674:   or     %esi,%edx
   0.02%  ││  0x00007fb71317f676:   xor    %ebx,%edx
          ││  0x00007fb71317f678:   vpinsrw $0x3,%edx,%xmm4,%xmm4
   0.59%  ││  0x00007fb71317f67d:   vmovq  -0x1c7d(%rip),%xmm2        # 0x00007fb71317da08
   0.01%  ││  0x00007fb71317f685:   vmovq  -0x1c7d(%rip),%xmm7        # 0x00007fb71317da10
          ││  0x00007fb71317f68d:   vxorpd %xmm5,%xmm5,%xmm5
   0.57%  ││  0x00007fb71317f691:   sub    $0x3f0,%edx
   0.04%  ││  0x00007fb71317f697:   vpinsrw $0x3,%edx,%xmm5,%xmm5
   0.02%  ││  0x00007fb71317f69c:   vmulsd %xmm4,%xmm0,%xmm0
   0.55%  ││  0x00007fb71317f6a0:   shl    $0x10,%esi
   0.04%  ││  0x00007fb71317f6a3:   sar    $0x1f,%esi
   0.01%  ││  0x00007fb71317f6a6:   vmulsd %xmm5,%xmm3,%xmm3
   0.02%  ││  0x00007fb71317f6aa:   vmovdqu %xmm0,%xmm1
   0.61%  ││  0x00007fb71317f6ae:   vmulsd %xmm2,%xmm0,%xmm0
   0.08%  ││  0x00007fb71317f6b2:   shr    $0x1e,%edi
   0.00%  ││  0x00007fb71317f6b5:   vaddsd %xmm3,%xmm1,%xmm1
   0.10%  ││  0x00007fb71317f6b9:   vmulsd %xmm2,%xmm3,%xmm3
   0.61%  ││  0x00007fb71317f6bd:   add    %esi,%edi
   0.01%  ││  0x00007fb71317f6bf:   xor    %esi,%edi
          ││  0x00007fb71317f6c1:   vmulsd %xmm1,%xmm7,%xmm7
   0.40%  ││  0x00007fb71317f6c5:   mov    %edi,%eax
   0.47%  ││  0x00007fb71317f6c7:   vaddsd %xmm3,%xmm7,%xmm7
   0.79%  ││  0x00007fb71317f6cb:   vmovdqu %xmm0,%xmm2
          ││  0x00007fb71317f6cf:   vaddsd %xmm7,%xmm0,%xmm0
   1.13%  ││  0x00007fb71317f6d3:   vsubsd %xmm0,%xmm2,%xmm2
   1.57%  ││  0x00007fb71317f6d7:   vaddsd %xmm2,%xmm7,%xmm7
   1.39%  ││  0x00007fb71317f6db:   vmovdqu -0x1c93(%rip),%xmm1        # 0x00007fb71317da50
          ││  0x00007fb71317f6e3:   vmovddup %xmm0,%xmm0
          ││  0x00007fb71317f6e7:   vmovdqu -0x1caf(%rip),%xmm4        # 0x00007fb71317da40
   0.25%  ││  0x00007fb71317f6ef:   vandpd %xmm0,%xmm4,%xmm4
   0.44%  ││  0x00007fb71317f6f3:   vmulpd %xmm0,%xmm1,%xmm1
          ││  0x00007fb71317f6f7:   vmovddup %xmm7,%xmm7
          ││  0x00007fb71317f6fb:   vmovdqu -0x1ce3(%rip),%xmm5        # 0x00007fb71317da20
   0.23%  ││  0x00007fb71317f703:   vmovdqu -0x1cdb(%rip),%xmm6        # 0x00007fb71317da30
   0.40%  ││  0x00007fb71317f70b:   vpor   %xmm4,%xmm5,%xmm5
          ││  0x00007fb71317f70f:   vaddpd %xmm5,%xmm1,%xmm1
   0.01%  ││  0x00007fb71317f713:   vmovdqu %xmm1,%xmm5
   0.27%  ││  0x00007fb71317f717:   vunpckhpd %xmm5,%xmm5,%xmm5
   0.39%  ││  0x00007fb71317f71b:   vcvttsd2si %xmm5,%edx
   2.63%  ││  0x00007fb71317f71f:   vcvttpd2dq %xmm1,%xmm1
   0.12%  ││  0x00007fb71317f723:   vcvtdq2pd %xmm1,%xmm1
   1.53%  ││  0x00007fb71317f727:   vmulpd %xmm6,%xmm1,%xmm1
   2.33%  ││  0x00007fb71317f72b:   vmovdqu -0x1cd3(%rip),%xmm3        # 0x00007fb71317da60
          ││  0x00007fb71317f733:   vmovq  -0x1d4b(%rip),%xmm5        # 0x00007fb71317d9f0
          ││  0x00007fb71317f73b:   shl    $0x4,%eax
          ││  0x00007fb71317f73e:   add    $0x72900,%edx
   0.63%  ││  0x00007fb71317f744:   vmovdqu -0x1cdc(%rip),%xmm4        # 0x00007fb71317da70
          ││  0x00007fb71317f74c:   vmulpd %xmm1,%xmm3,%xmm3
   1.87%  ││  0x00007fb71317f750:   add    %eax,%edx
          ││  0x00007fb71317f752:   and    $0x1f,%edx
   0.00%  ││  0x00007fb71317f755:   vmulsd %xmm1,%xmm5,%xmm5
   0.42%  ││  0x00007fb71317f759:   mov    %edx,%ecx
   0.43%  ││  0x00007fb71317f75b:   vmulpd %xmm1,%xmm4,%xmm4
   0.20%  ││  0x00007fb71317f75f:   shl    %ecx
   0.00%  ││  0x00007fb71317f761:   vsubpd %xmm3,%xmm0,%xmm0
   1.45%  ││  0x00007fb71317f765:   vmulpd -0x1ced(%rip),%xmm1,%xmm1        # 0x00007fb71317da80
          ││  0x00007fb71317f76d:   add    %ecx,%edx
          ││  0x00007fb71317f76f:   shl    $0x2,%ecx
   0.00%  ││  0x00007fb71317f772:   add    %ecx,%edx
   0.60%  ││  0x00007fb71317f774:   vaddsd %xmm0,%xmm5,%xmm5
   1.99%  ││  0x00007fb71317f778:   vmovdqu %xmm0,%xmm2
          ││  0x00007fb71317f77c:   vsubpd %xmm4,%xmm0,%xmm0
   0.40%  ││  0x00007fb71317f780:   vmovq  -0x1d90(%rip),%xmm6        # 0x00007fb71317d9f8
          ││  0x00007fb71317f788:   shl    $0x4,%edx
   0.16%  ││  0x00007fb71317f78b:   lea    -0x1d02(%rip),%rax        # 0x00007fb71317da90
          ││  0x00007fb71317f792:   vandpd -0x70a(%rip),%xmm5,%xmm5        # 0x00007fb71317f090
   1.68%  ││  0x00007fb71317f79a:   vmovdqu %xmm0,%xmm3
          ││  0x00007fb71317f79e:   add    %rdx,%rax
   0.06%  ││  0x00007fb71317f7a1:   vsubpd %xmm0,%xmm2,%xmm2
   1.24%  ││  0x00007fb71317f7a5:   vunpckhpd %xmm0,%xmm0,%xmm0
   0.15%  ││  0x00007fb71317f7a9:   vdivsd %xmm5,%xmm6,%xmm6
   6.11%  ││  0x00007fb71317f7ad:   vsubpd %xmm4,%xmm2,%xmm2
          ││  0x00007fb71317f7b1:   vsubsd %xmm5,%xmm3,%xmm3
          ││  0x00007fb71317f7b5:   vsubpd %xmm1,%xmm2,%xmm2
          ││  0x00007fb71317f7b9:   vmovdqu 0x30(%rax),%xmm1
   0.60%  ││  0x00007fb71317f7be:   vaddpd %xmm7,%xmm2,%xmm2
   0.11%  ││  0x00007fb71317f7c2:   vmovdqu 0x10(%rax),%xmm7
          ││  0x00007fb71317f7c7:   vmulpd %xmm0,%xmm7,%xmm7
          ││  0x00007fb71317f7cb:   vmovdqu 0x60(%rax),%xmm4
   0.57%  ││  0x00007fb71317f7d0:   vmulpd %xmm0,%xmm1,%xmm1
   0.08%  ││  0x00007fb71317f7d4:   vmulpd %xmm0,%xmm4,%xmm4
          ││  0x00007fb71317f7d8:   vaddsd %xmm3,%xmm2,%xmm2
   1.47%  ││  0x00007fb71317f7dc:   vmovdqu %xmm0,%xmm3
   0.03%  ││  0x00007fb71317f7e0:   vmulpd %xmm0,%xmm0,%xmm0
          ││  0x00007fb71317f7e4:   vaddpd (%rax),%xmm7,%xmm7
          ││  0x00007fb71317f7e8:   vaddpd 0x20(%rax),%xmm1,%xmm1
   0.58%  ││  0x00007fb71317f7ed:   vmulpd %xmm0,%xmm1,%xmm1
   0.04%  ││  0x00007fb71317f7f1:   vaddpd 0x50(%rax),%xmm4,%xmm4
          ││  0x00007fb71317f7f6:   vaddpd %xmm1,%xmm7,%xmm7
   0.00%  ││  0x00007fb71317f7fa:   vmovdqu 0x70(%rax),%xmm1
   0.53%  ││  0x00007fb71317f7ff:   vmulpd %xmm0,%xmm1,%xmm1
   0.04%  ││  0x00007fb71317f803:   vmulpd %xmm0,%xmm0,%xmm0
          ││  0x00007fb71317f807:   vaddpd %xmm1,%xmm4,%xmm4
   0.00%  ││  0x00007fb71317f80b:   vmovdqu 0x40(%rax),%xmm1
   0.55%  ││  0x00007fb71317f810:   vmulpd %xmm0,%xmm1,%xmm1
   0.03%  ││  0x00007fb71317f814:   vaddpd %xmm1,%xmm7,%xmm7
   0.22%  ││  0x00007fb71317f818:   vmovdqu %xmm3,%xmm1
          ││  0x00007fb71317f81c:   vmulpd %xmm0,%xmm3,%xmm3
   0.47%  ││  0x00007fb71317f820:   vmulsd %xmm0,%xmm0,%xmm0
   0.04%  ││  0x00007fb71317f824:   vmulpd 0x90(%rax),%xmm1,%xmm1
   0.23%  ││  0x00007fb71317f82c:   vmulpd %xmm3,%xmm4,%xmm4
   0.01%  ││  0x00007fb71317f830:   vmovdqu %xmm1,%xmm3
   0.47%  ││  0x00007fb71317f834:   vaddpd %xmm4,%xmm7,%xmm7
   1.43%  ││  0x00007fb71317f838:   vmovdqu %xmm1,%xmm4
          ││  0x00007fb71317f83c:   vmulsd %xmm7,%xmm0,%xmm0
   1.99%  ││  0x00007fb71317f840:   vunpckhpd %xmm7,%xmm7,%xmm7
          ││  0x00007fb71317f844:   vaddsd %xmm7,%xmm0,%xmm0
   2.35%  ││  0x00007fb71317f848:   vunpckhpd %xmm1,%xmm1,%xmm1
          ││  0x00007fb71317f84c:   vaddsd %xmm1,%xmm3,%xmm3
          ││  0x00007fb71317f850:   vsubsd %xmm3,%xmm4,%xmm4
          ││  0x00007fb71317f854:   vaddsd %xmm4,%xmm1,%xmm1
   0.59%  ││  0x00007fb71317f858:   vmovdqu %xmm2,%xmm4
          ││  0x00007fb71317f85c:   vmovq  0x90(%rax),%xmm7
          ││  0x00007fb71317f864:   vunpckhpd %xmm2,%xmm2,%xmm2
          ││  0x00007fb71317f868:   vaddsd 0x98(%rax),%xmm7,%xmm7
   0.68%  ││  0x00007fb71317f870:   vmulsd %xmm2,%xmm7,%xmm7
          ││  0x00007fb71317f874:   vaddsd 0x88(%rax),%xmm7,%xmm7
          ││  0x00007fb71317f87c:   vaddsd %xmm1,%xmm7,%xmm7
          ││  0x00007fb71317f880:   vaddsd %xmm7,%xmm0,%xmm0
   1.35%  ││  0x00007fb71317f884:   vmovq  -0x1e94(%rip),%xmm7        # 0x00007fb71317d9f8
          ││  0x00007fb71317f88c:   vmulsd %xmm6,%xmm4,%xmm4
          ││  0x00007fb71317f890:   vmovq  0xa8(%rax),%xmm2
          ││  0x00007fb71317f898:   vandpd %xmm6,%xmm2,%xmm2
   0.64%  ││  0x00007fb71317f89c:   vmulsd %xmm2,%xmm5,%xmm5
          ││  0x00007fb71317f8a0:   vmulsd 0xa0(%rax),%xmm6,%xmm6
          ││  0x00007fb71317f8a8:   vsubsd %xmm5,%xmm7,%xmm7
          ││  0x00007fb71317f8ac:   vsubsd 0x80(%rax),%xmm2,%xmm2
   0.62%  ││  0x00007fb71317f8b4:   vsubsd %xmm4,%xmm7,%xmm7
          ││  0x00007fb71317f8b8:   vmulsd %xmm6,%xmm7,%xmm7
          ││  0x00007fb71317f8bc:   vmovdqu %xmm3,%xmm4
          ││  0x00007fb71317f8c0:   vsubsd %xmm2,%xmm3,%xmm3
   0.63%  ││  0x00007fb71317f8c4:   vaddsd %xmm3,%xmm2,%xmm2
          ││  0x00007fb71317f8c8:   vsubsd %xmm2,%xmm4,%xmm4
   0.00%  ││  0x00007fb71317f8cc:   vaddsd %xmm4,%xmm0,%xmm0
   0.64%  ││  0x00007fb71317f8d0:   vsubsd %xmm7,%xmm0,%xmm0
   2.50%  ││  0x00007fb71317f8d4:   vaddsd %xmm3,%xmm0,%xmm0
   2.43%  ││  0x00007fb71317f8d8:   jmp    0x00007fb71317f9f9
          ↘│  0x00007fb71317f8dd:   add    $0x40,%edx
           │  0x00007fb71317f8e0:   mov    %r10,%r9
           │  0x00007fb71317f8e3:   mov    %r8,%r10
           │  0x00007fb71317f8e6:   mov    $0x0,%r8d
           │  0x00007fb71317f8ec:   cmp    $0x0,%r9
           ╰  0x00007fb71317f8f0:   jne    0x00007fb71317f62a
              0x00007fb71317f8f6:   add    $0x40,%edx
              0x00007fb71317f8f9:   mov    %r10,%r9
              0x00007fb71317f8fc:   mov    %r8,%r10
              0x00007fb71317f8ff:   nop
....................................................................................................
  77.02%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking, version 3, compile id 726 

             0x00007fb71ab19511:   cmp    %r14d,%r13d
             0x00007fb71ab19514:   jle    0x00007fb71ab195d6
             0x00007fb71ab1951a:   nopw   0x0(%rax,%rax,1)
             0x00007fb71ab19520:   cmp    $0x7fffffff,%r13d
             0x00007fb71ab19527:   je     0x00007fb71ab19609           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@25 (line 98)
             0x00007fb71ab1952d:   data16 xchg %ax,%ax
          ↗  0x00007fb71ab19530:   mov    %r14d,%r10d
          │  0x00007fb71ab19533:   dec    %r10d                        ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@35 (line 100)
   0.38%  │  0x00007fb71ab19536:   vxorpd %xmm0,%xmm0,%xmm0
          │  0x00007fb71ab1953a:   vcvtsi2sd %r10d,%xmm0,%xmm0         ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@36 (line 100)
          │  0x00007fb71ab1953f:   vmulsd %xmm8,%xmm0,%xmm0
   0.31%  │  0x00007fb71ab19544:   call   0x00007fb71317f1a0           ;   {runtime_call Stub&lt;AMD64MathStub.tan&gt;}
   0.37%  │  0x00007fb71ab19549:   nop
          │  0x00007fb71ab1954a:   vmovupd %xmm0,%xmm12                ;* unwind (locked if synchronized)
          │                                                            ; - java.lang.Math::tan@-3
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@40 (line 100)
          │  0x00007fb71ab1954e:   vxorpd %xmm0,%xmm0,%xmm0
   0.00%  │  0x00007fb71ab19552:   vcvtsi2sd %r14d,%xmm0,%xmm0         ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@36 (line 100)
   0.32%  │  0x00007fb71ab19557:   vmulsd %xmm8,%xmm0,%xmm0            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@39 (line 100)
          │  0x00007fb71ab1955c:   nopl   0x0(%rax)
          │  0x00007fb71ab19560:   call   0x00007fb71317f1a0           ;   {runtime_call Stub&lt;AMD64MathStub.tan&gt;}
   0.35%  │  0x00007fb71ab19565:   nop
          │  0x00007fb71ab19566:   vaddsd %xmm9,%xmm12,%xmm1           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@49 (line 101)
          │  0x00007fb71ab1956b:   vmulsd %xmm12,%xmm9,%xmm2           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@56 (line 102)
          │  0x00007fb71ab19570:   vsubsd %xmm2,%xmm10,%xmm2           ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@57 (line 102)
   0.29%  │  0x00007fb71ab19574:   vdivsd %xmm2,%xmm1,%xmm1            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@63 (line 103)
          │  0x00007fb71ab19578:   vaddsd %xmm1,%xmm11,%xmm1           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@64 (line 103)
          │  0x00007fb71ab1957c:   vaddsd %xmm9,%xmm0,%xmm2            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@49 (line 101)
   1.81%  │  0x00007fb71ab19581:   vmulsd %xmm0,%xmm9,%xmm0            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@56 (line 102)
   0.06%  │  0x00007fb71ab19585:   vsubsd %xmm0,%xmm10,%xmm0           ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@57 (line 102)
   0.36%  │  0x00007fb71ab19589:   vdivsd %xmm0,%xmm2,%xmm0            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@63 (line 103)
   4.76%  │  0x00007fb71ab1958d:   vaddsd %xmm0,%xmm1,%xmm11           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@64 (line 103)
   1.33%  │  0x00007fb71ab19591:   lea    0x2(%r14),%r14d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@67 (line 98)
          │  0x00007fb71ab19595:   cmp    %r14d,%r13d
          ╰  0x00007fb71ab19598:   jg     0x00007fb71ab19530
             0x00007fb71ab1959a:   jmp    0x00007fb71ab195d6
             0x00007fb71ab1959f:   nop                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@29 (line 98)
             0x00007fb71ab195a0:   mov    %r14d,%r10d
             0x00007fb71ab195a3:   dec    %r10d                        ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@35 (line 100)
....................................................................................................
  10.35%  <total for region 2>

....[Hottest Regions]...............................................................................
  77.02%                       <unknown> 
  10.35%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking, version 3, compile id 726 
   5.43%                       <unknown> 
   2.38%                       <unknown> 
   1.93%                       <unknown> 
   1.13%               kernel  [unknown] 
   0.14%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   1.15%  <...other 388 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  86.82%                       <unknown> 
  10.35%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking, version 3, compile id 726 
   2.43%               kernel  [unknown] 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%         libc-2.31.so  [unknown] 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  defaultStream::write 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%         libc-2.31.so  ptmalloc_init.part.0 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.01%            libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%            libjvm.so  defaultStream::hold 
   0.01%            libjvm.so  stringStream::write 
   0.01%           libjava.so  jatan 
   0.22%  <...other 95 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  86.82%                     
  10.35%       jvmci, level 4
   2.43%               kernel
   0.19%            libjvm.so
   0.10%         libc-2.31.so
   0.03%  libjvmcicompiler.so
   0.02%   libpthread-2.31.so
   0.02%          interpreter
   0.02%           ld-2.31.so
   0.01%               [vdso]
   0.01%       hsdis-amd64.so
   0.01%           libjava.so
   0.00%          c1, level 3
   0.00%       perf-40001.map
   0.00%     Unknown, level 0
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:03:45

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
LoopInvariantCodeMotionBenchmark.initial_loop                                  16384  avgt    5  1823.279 ± 0.907  us/op
LoopInvariantCodeMotionBenchmark.initial_loop:·asm                             16384  avgt            NaN            ---
LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking              16384  avgt    5   897.909 ± 0.357  us/op
LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking:·asm         16384  avgt            NaN            ---
