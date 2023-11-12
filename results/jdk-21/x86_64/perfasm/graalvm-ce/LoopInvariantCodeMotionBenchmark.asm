# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
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
# Warmup Iteration   1: 2270.075 us/op
# Warmup Iteration   2: 2228.439 us/op
# Warmup Iteration   3: 2228.348 us/op
# Warmup Iteration   4: 2228.266 us/op
# Warmup Iteration   5: 2228.404 us/op
Iteration   1: 2228.421 us/op
Iteration   2: 2228.321 us/op
Iteration   3: 2228.246 us/op
Iteration   4: 2228.379 us/op
Iteration   5: 2228.225 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.initial_loop":
  2228.318 ±(99.9%) 0.323 us/op [Average]
  (min, avg, max) = (2228.225, 2228.318, 2228.421), stdev = 0.084
  CI (99.9%): [2227.995, 2228.641] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.initial_loop:asm":
PrintAssembly processed: 220579 total address lines.
Perf output processed (skipped 60.412 seconds):
 Column 1: cycles (50797 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

              0x00007fb222dc276a:   vaddsd %xmm1,%xmm0,%xmm0
              0x00007fb222dc276e:   jmp    0x00007fb222dc2d19
              0x00007fb222dc2773:   vmovq  -0x1a5b(%rip),%xmm3        # 0x00007fb222dc0d20
              0x00007fb222dc277b:   vmulsd %xmm0,%xmm3,%xmm3
              0x00007fb222dc277f:   vaddsd %xmm3,%xmm0,%xmm0
              0x00007fb222dc2783:   vmulsd -0x1a8b(%rip),%xmm0,%xmm0        # 0x00007fb222dc0d00
              0x00007fb222dc278b:   jmp    0x00007fb222dc2d19
              0x00007fb222dc2790:   vmovdqu %xmm0,%xmm1
              0x00007fb222dc2794:   vmulsd %xmm1,%xmm1,%xmm1
              0x00007fb222dc2798:   jmp    0x00007fb222dc2d19
   0.26%      0x00007fb222dc279d:   vpextrw $0x3,%xmm0,%eax
              0x00007fb222dc27a2:   and    $0x7ff0,%eax
              0x00007fb222dc27a8:   cmp    $0x7ff0,%eax
              0x00007fb222dc27ae:   je     0x00007fb222dc2d06
   0.22%      0x00007fb222dc27b4:   vpextrw $0x3,%xmm0,%ecx
              0x00007fb222dc27b9:   and    $0x7ff0,%ecx
              0x00007fb222dc27bf:   sub    $0x3f60,%ecx
   0.23%      0x00007fb222dc27c5:   shr    $0x7,%ecx
              0x00007fb222dc27c8:   and    $0xfffc,%ecx
              0x00007fb222dc27ce:   lea    -0x3c5(%rip),%r11        # 0x00007fb222dc2410
              0x00007fb222dc27d5:   add    %r11,%rcx
   0.23%      0x00007fb222dc27d8:   vmovq  %xmm0,%rax
              0x00007fb222dc27dd:   mov    0x14(%rcx),%r10d
              0x00007fb222dc27e1:   mov    0x18(%rcx),%r8d
              0x00007fb222dc27e5:   mov    %eax,%edx
   0.28%      0x00007fb222dc27e7:   shr    $0x15,%rax
              0x00007fb222dc27eb:   or     $0x80000000,%eax
              0x00007fb222dc27f1:   shr    $0xb,%eax
              0x00007fb222dc27f4:   mov    %r10d,%r9d
   0.21%      0x00007fb222dc27f7:   imul   %rdx,%r10
              0x00007fb222dc27fb:   imul   %rax,%r9
              0x00007fb222dc27ff:   imul   %rax,%r8
              0x00007fb222dc2803:   mov    0x10(%rcx),%esi
   0.29%      0x00007fb222dc2806:   mov    0xc(%rcx),%edi
              0x00007fb222dc2809:   mov    %r10d,%r11d
              0x00007fb222dc280c:   shr    $0x20,%r10
              0x00007fb222dc2810:   add    %r10,%r9
   0.26%      0x00007fb222dc2813:   add    %r8,%r11
              0x00007fb222dc2816:   mov    %r11d,%r8d
              0x00007fb222dc2819:   shr    $0x20,%r11
              0x00007fb222dc281d:   add    %r11,%r9
   0.24%      0x00007fb222dc2820:   mov    %esi,%r10d
              0x00007fb222dc2823:   imul   %rdx,%rsi
              0x00007fb222dc2827:   imul   %rax,%r10
              0x00007fb222dc282b:   mov    %edi,%r11d
   0.27%      0x00007fb222dc282e:   imul   %rdx,%rdi
              0x00007fb222dc2832:   mov    %esi,%ebx
              0x00007fb222dc2834:   shr    $0x20,%rsi
              0x00007fb222dc2838:   add    %rbx,%r9
   0.29%      0x00007fb222dc283b:   mov    %r9d,%ebx
              0x00007fb222dc283e:   shr    $0x20,%r9
              0x00007fb222dc2842:   add    %rsi,%r10
              0x00007fb222dc2845:   add    %r9,%r10
   0.26%      0x00007fb222dc2848:   shl    $0x20,%rbx
              0x00007fb222dc284c:   or     %rbx,%r8
              0x00007fb222dc284f:   imul   %rax,%r11
              0x00007fb222dc2853:   mov    0x8(%rcx),%r9d
   0.26%      0x00007fb222dc2857:   mov    0x4(%rcx),%esi
              0x00007fb222dc285a:   mov    %edi,%ebx
              0x00007fb222dc285c:   shr    $0x20,%rdi
              0x00007fb222dc2860:   add    %rbx,%r10
   0.27%      0x00007fb222dc2863:   mov    %r10d,%ebx
              0x00007fb222dc2866:   shr    $0x20,%r10
              0x00007fb222dc286a:   add    %rdi,%r11
              0x00007fb222dc286d:   add    %r10,%r11
   0.26%      0x00007fb222dc2870:   mov    %r9,%rdi
              0x00007fb222dc2873:   imul   %rdx,%r9
              0x00007fb222dc2877:   imul   %rax,%rdi
              0x00007fb222dc287b:   mov    %r9d,%r10d
   0.26%      0x00007fb222dc287e:   shr    $0x20,%r9
              0x00007fb222dc2882:   add    %r10,%r11
              0x00007fb222dc2885:   mov    %r11d,%r10d
              0x00007fb222dc2888:   shr    $0x20,%r11
   0.26%      0x00007fb222dc288c:   add    %r9,%rdi
              0x00007fb222dc288f:   add    %r11,%rdi
              0x00007fb222dc2892:   mov    %rsi,%r9
              0x00007fb222dc2895:   imul   %rdx,%rsi
   0.26%      0x00007fb222dc2899:   imul   %rax,%r9
              0x00007fb222dc289d:   shl    $0x20,%r10
              0x00007fb222dc28a1:   or     %rbx,%r10
              0x00007fb222dc28a4:   mov    (%rcx),%eax
   0.25%      0x00007fb222dc28a6:   mov    %esi,%r11d
              0x00007fb222dc28a9:   shr    $0x20,%rsi
              0x00007fb222dc28ad:   add    %r11,%rdi
              0x00007fb222dc28b0:   mov    %edi,%r11d
   0.27%      0x00007fb222dc28b3:   shr    $0x20,%rdi
              0x00007fb222dc28b7:   add    %rsi,%r9
              0x00007fb222dc28ba:   add    %rdi,%r9
              0x00007fb222dc28bd:   imul   %rax,%rdx
   0.24%      0x00007fb222dc28c1:   vpextrw $0x3,%xmm0,%ebx
              0x00007fb222dc28c6:   lea    -0x4bd(%rip),%rdi        # 0x00007fb222dc2410
              0x00007fb222dc28cd:   sub    %rdi,%rcx
   0.23%      0x00007fb222dc28d0:   add    %ecx,%ecx
              0x00007fb222dc28d2:   add    %ecx,%ecx
              0x00007fb222dc28d4:   add    %ecx,%ecx
              0x00007fb222dc28d6:   add    $0x13,%ecx
   0.27%      0x00007fb222dc28d9:   mov    $0x8000,%esi
              0x00007fb222dc28de:   and    %ebx,%esi
              0x00007fb222dc28e0:   shr    $0x4,%ebx
              0x00007fb222dc28e3:   and    $0x7ff,%ebx
   0.24%      0x00007fb222dc28e9:   sub    $0x3ff,%ebx
              0x00007fb222dc28ef:   sub    %ebx,%ecx
              0x00007fb222dc28f1:   add    %rdx,%r9
              0x00007fb222dc28f4:   mov    %ecx,%edx
   0.28%      0x00007fb222dc28f6:   add    $0x20,%edx
              0x00007fb222dc28f9:   nopl   0x0(%rax)
              0x00007fb222dc2900:   cmp    $0x0,%ecx
              0x00007fb222dc2903:   jl     0x00007fb222dc2c52
              0x00007fb222dc2909:   neg    %ecx
   0.31%      0x00007fb222dc290b:   add    $0x1d,%ecx
              0x00007fb222dc290e:   shl    %cl,%r9d
   0.30%      0x00007fb222dc2911:   mov    %r9d,%edi
              0x00007fb222dc2914:   and    $0x3fffffff,%r9d
              0x00007fb222dc291b:   nopl   0x0(%rax,%rax,1)
              0x00007fb222dc2920:   test   $0x20000000,%r9d
              0x00007fb222dc2927:   jne    0x00007fb222dc2c7f
   0.15%      0x00007fb222dc292d:   shr    %cl,%r9d
   0.03%      0x00007fb222dc2930:   mov    $0x0,%ebx
   0.12%      0x00007fb222dc2935:   shl    $0x20,%r9
              0x00007fb222dc2939:   or     %r11,%r9
   0.01%      0x00007fb222dc293c:   nopl   0x0(%rax)
   0.00%      0x00007fb222dc2940:   cmp    $0x0,%r9
          ╭   0x00007fb222dc2944:   je     0x00007fb222dc2bfd
   0.27%  │↗  0x00007fb222dc294a:   bsr    %r9,%r11
   0.02%  ││  0x00007fb222dc294e:   mov    $0x1d,%ecx
   0.01%  ││  0x00007fb222dc2953:   sub    %r11d,%ecx
          ││  0x00007fb222dc2956:   jle    0x00007fb222dc2c2f
   0.01%  ││  0x00007fb222dc295c:   shl    %cl,%r9
   0.02%  ││  0x00007fb222dc295f:   mov    %r10,%rax
          ││  0x00007fb222dc2962:   shl    %cl,%r10
   0.01%  ││  0x00007fb222dc2965:   add    %ecx,%edx
          ││  0x00007fb222dc2967:   neg    %ecx
   0.01%  ││  0x00007fb222dc2969:   add    $0x40,%ecx
          ││  0x00007fb222dc296c:   shr    %cl,%rax
   0.01%  ││  0x00007fb222dc296f:   shr    %cl,%r8
   0.01%  ││  0x00007fb222dc2972:   or     %rax,%r9
   0.01%  ││  0x00007fb222dc2975:   or     %r8,%r10
   0.25%  ││  0x00007fb222dc2978:   vcvtsi2sd %r9,%xmm0,%xmm0
   0.12%  ││  0x00007fb222dc297d:   shr    %r10
   0.01%  ││  0x00007fb222dc2980:   vcvtsi2sd %r10,%xmm3,%xmm3
   0.30%  ││  0x00007fb222dc2985:   vxorpd %xmm4,%xmm4,%xmm4
   0.02%  ││  0x00007fb222dc2989:   shl    $0x4,%edx
          ││  0x00007fb222dc298c:   neg    %edx
   0.20%  ││  0x00007fb222dc298e:   add    $0x3ff0,%edx
   0.04%  ││  0x00007fb222dc2994:   or     %esi,%edx
   0.01%  ││  0x00007fb222dc2996:   xor    %ebx,%edx
          ││  0x00007fb222dc2998:   vpinsrw $0x3,%edx,%xmm4,%xmm4
   0.20%  ││  0x00007fb222dc299d:   vmovq  -0x1c7d(%rip),%xmm2        # 0x00007fb222dc0d28
   0.00%  ││  0x00007fb222dc29a5:   vmovq  -0x1c7d(%rip),%xmm7        # 0x00007fb222dc0d30
          ││  0x00007fb222dc29ad:   vxorpd %xmm5,%xmm5,%xmm5
   0.22%  ││  0x00007fb222dc29b1:   sub    $0x3f0,%edx
   0.02%  ││  0x00007fb222dc29b7:   vpinsrw $0x3,%edx,%xmm5,%xmm5
   0.02%  ││  0x00007fb222dc29bc:   vmulsd %xmm4,%xmm0,%xmm0
   0.28%  ││  0x00007fb222dc29c0:   shl    $0x10,%esi
   0.01%  ││  0x00007fb222dc29c3:   sar    $0x1f,%esi
   0.01%  ││  0x00007fb222dc29c6:   vmulsd %xmm5,%xmm3,%xmm3
   0.04%  ││  0x00007fb222dc29ca:   vmovdqu %xmm0,%xmm1
   0.27%  ││  0x00007fb222dc29ce:   vmulsd %xmm2,%xmm0,%xmm0
   0.08%  ││  0x00007fb222dc29d2:   shr    $0x1e,%edi
   0.00%  ││  0x00007fb222dc29d5:   vaddsd %xmm3,%xmm1,%xmm1
   0.14%  ││  0x00007fb222dc29d9:   vmulsd %xmm2,%xmm3,%xmm3
   0.21%  ││  0x00007fb222dc29dd:   add    %esi,%edi
          ││  0x00007fb222dc29df:   xor    %esi,%edi
          ││  0x00007fb222dc29e1:   vmulsd %xmm1,%xmm7,%xmm7
   0.35%  ││  0x00007fb222dc29e5:   mov    %edi,%eax
   0.15%  ││  0x00007fb222dc29e7:   vaddsd %xmm3,%xmm7,%xmm7
   0.67%  ││  0x00007fb222dc29eb:   vmovdqu %xmm0,%xmm2
          ││  0x00007fb222dc29ef:   vaddsd %xmm7,%xmm0,%xmm0
   0.95%  ││  0x00007fb222dc29f3:   vsubsd %xmm0,%xmm2,%xmm2
   1.05%  ││  0x00007fb222dc29f7:   vaddsd %xmm2,%xmm7,%xmm7
   1.12%  ││  0x00007fb222dc29fb:   vmovdqu -0x1c93(%rip),%xmm1        # 0x00007fb222dc0d70
          ││  0x00007fb222dc2a03:   vmovddup %xmm0,%xmm0
          ││  0x00007fb222dc2a07:   vmovdqu -0x1caf(%rip),%xmm4        # 0x00007fb222dc0d60
          ││  0x00007fb222dc2a0f:   vandpd %xmm0,%xmm4,%xmm4
   0.23%  ││  0x00007fb222dc2a13:   vmulpd %xmm0,%xmm1,%xmm1
          ││  0x00007fb222dc2a17:   vmovddup %xmm7,%xmm7
          ││  0x00007fb222dc2a1b:   vmovdqu -0x1ce3(%rip),%xmm5        # 0x00007fb222dc0d40
          ││  0x00007fb222dc2a23:   vmovdqu -0x1cdb(%rip),%xmm6        # 0x00007fb222dc0d50
   0.28%  ││  0x00007fb222dc2a2b:   vpor   %xmm4,%xmm5,%xmm5
          ││  0x00007fb222dc2a2f:   vaddpd %xmm5,%xmm1,%xmm1
   0.10%  ││  0x00007fb222dc2a33:   vmovdqu %xmm1,%xmm5
          ││  0x00007fb222dc2a37:   vunpckhpd %xmm5,%xmm5,%xmm5
   0.24%  ││  0x00007fb222dc2a3b:   vcvttsd2si %xmm5,%edx
   1.47%  ││  0x00007fb222dc2a3f:   vcvttpd2dq %xmm1,%xmm1
          ││  0x00007fb222dc2a43:   vcvtdq2pd %xmm1,%xmm1
   0.80%  ││  0x00007fb222dc2a47:   vmulpd %xmm6,%xmm1,%xmm1
   1.04%  ││  0x00007fb222dc2a4b:   vmovdqu -0x1cd3(%rip),%xmm3        # 0x00007fb222dc0d80
          ││  0x00007fb222dc2a53:   vmovq  -0x1d4b(%rip),%xmm5        # 0x00007fb222dc0d10
          ││  0x00007fb222dc2a5b:   shl    $0x4,%eax
          ││  0x00007fb222dc2a5e:   add    $0x72900,%edx
   0.28%  ││  0x00007fb222dc2a64:   vmovdqu -0x1cdc(%rip),%xmm4        # 0x00007fb222dc0d90
          ││  0x00007fb222dc2a6c:   vmulpd %xmm1,%xmm3,%xmm3
   0.81%  ││  0x00007fb222dc2a70:   add    %eax,%edx
          ││  0x00007fb222dc2a72:   and    $0x1f,%edx
          ││  0x00007fb222dc2a75:   vmulsd %xmm1,%xmm5,%xmm5
   0.20%  ││  0x00007fb222dc2a79:   mov    %edx,%ecx
   0.11%  ││  0x00007fb222dc2a7b:   vmulpd %xmm1,%xmm4,%xmm4
   0.10%  ││  0x00007fb222dc2a7f:   shl    %ecx
          ││  0x00007fb222dc2a81:   vsubpd %xmm3,%xmm0,%xmm0
   0.65%  ││  0x00007fb222dc2a85:   vmulpd -0x1ced(%rip),%xmm1,%xmm1        # 0x00007fb222dc0da0
          ││  0x00007fb222dc2a8d:   add    %ecx,%edx
          ││  0x00007fb222dc2a8f:   shl    $0x2,%ecx
          ││  0x00007fb222dc2a92:   add    %ecx,%edx
   0.23%  ││  0x00007fb222dc2a94:   vaddsd %xmm0,%xmm5,%xmm5
   0.76%  ││  0x00007fb222dc2a98:   vmovdqu %xmm0,%xmm2
          ││  0x00007fb222dc2a9c:   vsubpd %xmm4,%xmm0,%xmm0
   0.12%  ││  0x00007fb222dc2aa0:   vmovq  -0x1d90(%rip),%xmm6        # 0x00007fb222dc0d18
          ││  0x00007fb222dc2aa8:   shl    $0x4,%edx
   0.08%  ││  0x00007fb222dc2aab:   lea    -0x1d02(%rip),%rax        # 0x00007fb222dc0db0
          ││  0x00007fb222dc2ab2:   vandpd -0x70a(%rip),%xmm5,%xmm5        # 0x00007fb222dc23b0
   0.17%  ││  0x00007fb222dc2aba:   vmovdqu %xmm0,%xmm3
          ││  0x00007fb222dc2abe:   add    %rdx,%rax
   0.10%  ││  0x00007fb222dc2ac1:   vsubpd %xmm0,%xmm2,%xmm2
   1.03%  ││  0x00007fb222dc2ac5:   vunpckhpd %xmm0,%xmm0,%xmm0
   0.02%  ││  0x00007fb222dc2ac9:   vdivsd %xmm5,%xmm6,%xmm6
   2.50%  ││  0x00007fb222dc2acd:   vsubpd %xmm4,%xmm2,%xmm2
          ││  0x00007fb222dc2ad1:   vsubsd %xmm5,%xmm3,%xmm3
          ││  0x00007fb222dc2ad5:   vsubpd %xmm1,%xmm2,%xmm2
          ││  0x00007fb222dc2ad9:   vmovdqu 0x30(%rax),%xmm1
   0.28%  ││  0x00007fb222dc2ade:   vaddpd %xmm7,%xmm2,%xmm2
   0.06%  ││  0x00007fb222dc2ae2:   vmovdqu 0x10(%rax),%xmm7
          ││  0x00007fb222dc2ae7:   vmulpd %xmm0,%xmm7,%xmm7
          ││  0x00007fb222dc2aeb:   vmovdqu 0x60(%rax),%xmm4
   0.20%  ││  0x00007fb222dc2af0:   vmulpd %xmm0,%xmm1,%xmm1
   0.08%  ││  0x00007fb222dc2af4:   vmulpd %xmm0,%xmm4,%xmm4
          ││  0x00007fb222dc2af8:   vaddsd %xmm3,%xmm2,%xmm2
   0.74%  ││  0x00007fb222dc2afc:   vmovdqu %xmm0,%xmm3
          ││  0x00007fb222dc2b00:   vmulpd %xmm0,%xmm0,%xmm0
          ││  0x00007fb222dc2b04:   vaddpd (%rax),%xmm7,%xmm7
          ││  0x00007fb222dc2b08:   vaddpd 0x20(%rax),%xmm1,%xmm1
   0.27%  ││  0x00007fb222dc2b0d:   vmulpd %xmm0,%xmm1,%xmm1
          ││  0x00007fb222dc2b11:   vaddpd 0x50(%rax),%xmm4,%xmm4
          ││  0x00007fb222dc2b16:   vaddpd %xmm1,%xmm7,%xmm7
          ││  0x00007fb222dc2b1a:   vmovdqu 0x70(%rax),%xmm1
   0.27%  ││  0x00007fb222dc2b1f:   vmulpd %xmm0,%xmm1,%xmm1
          ││  0x00007fb222dc2b23:   vmulpd %xmm0,%xmm0,%xmm0
          ││  0x00007fb222dc2b27:   vaddpd %xmm1,%xmm4,%xmm4
   0.00%  ││  0x00007fb222dc2b2b:   vmovdqu 0x40(%rax),%xmm1
   0.25%  ││  0x00007fb222dc2b30:   vmulpd %xmm0,%xmm1,%xmm1
          ││  0x00007fb222dc2b34:   vaddpd %xmm1,%xmm7,%xmm7
   0.21%  ││  0x00007fb222dc2b38:   vmovdqu %xmm3,%xmm1
          ││  0x00007fb222dc2b3c:   vmulpd %xmm0,%xmm3,%xmm3
   0.17%  ││  0x00007fb222dc2b40:   vmulsd %xmm0,%xmm0,%xmm0
          ││  0x00007fb222dc2b44:   vmulpd 0x90(%rax),%xmm1,%xmm1
   0.14%  ││  0x00007fb222dc2b4c:   vmulpd %xmm3,%xmm4,%xmm4
   0.00%  ││  0x00007fb222dc2b50:   vmovdqu %xmm1,%xmm3
   0.16%  ││  0x00007fb222dc2b54:   vaddpd %xmm4,%xmm7,%xmm7
   0.75%  ││  0x00007fb222dc2b58:   vmovdqu %xmm1,%xmm4
          ││  0x00007fb222dc2b5c:   vmulsd %xmm7,%xmm0,%xmm0
   0.84%  ││  0x00007fb222dc2b60:   vunpckhpd %xmm7,%xmm7,%xmm7
          ││  0x00007fb222dc2b64:   vaddsd %xmm7,%xmm0,%xmm0
   1.06%  ││  0x00007fb222dc2b68:   vunpckhpd %xmm1,%xmm1,%xmm1
          ││  0x00007fb222dc2b6c:   vaddsd %xmm1,%xmm3,%xmm3
          ││  0x00007fb222dc2b70:   vsubsd %xmm3,%xmm4,%xmm4
          ││  0x00007fb222dc2b74:   vaddsd %xmm4,%xmm1,%xmm1
   0.27%  ││  0x00007fb222dc2b78:   vmovdqu %xmm2,%xmm4
          ││  0x00007fb222dc2b7c:   vmovq  0x90(%rax),%xmm7
          ││  0x00007fb222dc2b84:   vunpckhpd %xmm2,%xmm2,%xmm2
          ││  0x00007fb222dc2b88:   vaddsd 0x98(%rax),%xmm7,%xmm7
   0.26%  ││  0x00007fb222dc2b90:   vmulsd %xmm2,%xmm7,%xmm7
          ││  0x00007fb222dc2b94:   vaddsd 0x88(%rax),%xmm7,%xmm7
          ││  0x00007fb222dc2b9c:   vaddsd %xmm1,%xmm7,%xmm7
          ││  0x00007fb222dc2ba0:   vaddsd %xmm7,%xmm0,%xmm0
   0.49%  ││  0x00007fb222dc2ba4:   vmovq  -0x1e94(%rip),%xmm7        # 0x00007fb222dc0d18
          ││  0x00007fb222dc2bac:   vmulsd %xmm6,%xmm4,%xmm4
          ││  0x00007fb222dc2bb0:   vmovq  0xa8(%rax),%xmm2
          ││  0x00007fb222dc2bb8:   vandpd %xmm6,%xmm2,%xmm2
   0.25%  ││  0x00007fb222dc2bbc:   vmulsd %xmm2,%xmm5,%xmm5
          ││  0x00007fb222dc2bc0:   vmulsd 0xa0(%rax),%xmm6,%xmm6
          ││  0x00007fb222dc2bc8:   vsubsd %xmm5,%xmm7,%xmm7
          ││  0x00007fb222dc2bcc:   vsubsd 0x80(%rax),%xmm2,%xmm2
   0.22%  ││  0x00007fb222dc2bd4:   vsubsd %xmm4,%xmm7,%xmm7
          ││  0x00007fb222dc2bd8:   vmulsd %xmm6,%xmm7,%xmm7
          ││  0x00007fb222dc2bdc:   vmovdqu %xmm3,%xmm4
          ││  0x00007fb222dc2be0:   vsubsd %xmm2,%xmm3,%xmm3
   0.26%  ││  0x00007fb222dc2be4:   vaddsd %xmm3,%xmm2,%xmm2
          ││  0x00007fb222dc2be8:   vsubsd %xmm2,%xmm4,%xmm4
          ││  0x00007fb222dc2bec:   vaddsd %xmm4,%xmm0,%xmm0
   0.25%  ││  0x00007fb222dc2bf0:   vsubsd %xmm7,%xmm0,%xmm0
   1.09%  ││  0x00007fb222dc2bf4:   vaddsd %xmm3,%xmm0,%xmm0
   0.98%  ││  0x00007fb222dc2bf8:   jmp    0x00007fb222dc2d19
          ↘│  0x00007fb222dc2bfd:   add    $0x40,%edx
           │  0x00007fb222dc2c00:   mov    %r10,%r9
           │  0x00007fb222dc2c03:   mov    %r8,%r10
           │  0x00007fb222dc2c06:   mov    $0x0,%r8d
           │  0x00007fb222dc2c0c:   cmp    $0x0,%r9
           ╰  0x00007fb222dc2c10:   jne    0x00007fb222dc294a
              0x00007fb222dc2c16:   add    $0x40,%edx
              0x00007fb222dc2c19:   mov    %r10,%r9
              0x00007fb222dc2c1c:   mov    %r8,%r10
              0x00007fb222dc2c1f:   nop
....................................................................................................
  35.25%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop, version 3, compile id 977 

               0x00007fb22324761e:   vmovsd 0x50(%rsp),%xmm12
          ╭    0x00007fb223247624:   jmp    0x00007fb2232477bb           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@21 (line 77)
          │    0x00007fb223247629:   data16 data16 nopw 0x0(%rax,%rax,1)
          │    0x00007fb223247634:   data16 data16 xchg %ax,%ax
          │    0x00007fb223247638:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@25 (line 77)
          │ ↗  0x00007fb223247640:   mov    %r10d,%r11d
          │ │  0x00007fb223247643:   dec    %r11d                        ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@31 (line 78)
   0.28%  │ │  0x00007fb223247646:   vcvtsi2sd %r11d,%xmm13,%xmm13       ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@32 (line 78)
          │ │  0x00007fb22324764b:   vmulsd %xmm1,%xmm13,%xmm13          ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@35 (line 78)
          │ │  0x00007fb22324764f:   vmovapd %xmm13,%xmm0                ;* unwind (locked if synchronized)
          │ │                                                            ; - java.lang.Math::tan@-3
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@36 (line 78)
   0.27%  │ │  0x00007fb223247654:   mov    %r10d,%r13d
          │ │  0x00007fb223247657:   vmovapd %xmm4,%xmm11
          │ │  0x00007fb22324765b:   vmovapd %xmm3,%xmm14
          │ │  0x00007fb22324765f:   vmovapd %xmm2,%xmm13
   0.26%  │ │  0x00007fb223247663:   call   0x00007fb222dc24c0           ;   {runtime_call Stub&lt;AMD64MathStub.tan&gt;}
          │ │  0x00007fb223247668:   nop
          │ │  0x00007fb223247669:   vaddsd %xmm13,%xmm0,%xmm1           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@44 (line 78)
   1.22%  │ │  0x00007fb22324766e:   vmulsd %xmm0,%xmm13,%xmm0           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@63 (line 79)
   0.02%  │ │  0x00007fb223247672:   vsubsd %xmm0,%xmm14,%xmm0           ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@64 (line 79)
   1.40%  │ │  0x00007fb223247676:   vdivsd %xmm0,%xmm1,%xmm0            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@70 (line 80)
   3.84%  │ │  0x00007fb22324767a:   vaddsd %xmm0,%xmm12,%xmm1           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@71 (line 80)
   1.29%  │ │  0x00007fb22324767e:   vmovq  %xmm1,%r10                   ;* unwind (locked if synchronized)
          │ │                                                            ; - java.lang.Double::doubleToRawLongBits@-3
          │ │                                                            ; - java.lang.FdLibm::__HI@1 (line 104)
          │ │                                                            ; - java.lang.FdLibm$Atan::compute@1 (line 1267)
          │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.41%  │ │  0x00007fb223247683:   sar    $0x20,%r10                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - java.lang.FdLibm::__HI@8 (line 105)
          │ │                                                            ; - java.lang.FdLibm$Atan::compute@1 (line 1267)
          │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.31%  │ │  0x00007fb223247687:   mov    %r10d,%r10d                  ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - java.lang.FdLibm::__HI@9 (line 105)
          │ │                                                            ; - java.lang.FdLibm$Atan::compute@1 (line 1267)
          │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.24%  │ │  0x00007fb22324768a:   mov    %r10d,%r11d
          │ │  0x00007fb22324768d:   and    $0x7fffffff,%r11d            ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - java.lang.FdLibm$Atan::compute@10 (line 1268)
          │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.38%  │ │  0x00007fb223247694:   nopl   0x0(%rax,%rax,1)
   0.01%  │ │  0x00007fb22324769c:   data16 data16 xchg %ax,%ax
          │ │  0x00007fb2232476a0:   cmp    $0x44100000,%r11d
          │ │  0x00007fb2232476a7:   jae    0x00007fb22324795f           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - java.lang.FdLibm$Atan::compute@17 (line 1269)
          │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.37%  │ │  0x00007fb2232476ad:   cmp    $0x3fdc0000,%r11d
          │ │  0x00007fb2232476b4:   jb     0x00007fb223247968           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - java.lang.FdLibm$Atan::compute@79 (line 1279)
          │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.11%  │ │  0x00007fb2232476ba:   nopw   0x0(%rax,%rax,1)
          │ │  0x00007fb2232476c0:   test   %r10d,%r10d
          │ │  0x00007fb2232476c3:   jl     0x00007fb223247971           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - java.lang.FdLibm$Atan::compute@345 (line 1316)
          │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.24%  │ │  0x00007fb2232476c9:   vmovapd %xmm1,%xmm0
   0.02%  │ │  0x00007fb2232476cd:   vandpd -0x375(%rip),%xmm0,%xmm0        # 0x00007fb223247360
          │ │                                                            ;   {section_word}
          │ │  0x00007fb2232476d5:   data16 data16 nopw 0x0(%rax,%rax,1)
          │ │  0x00007fb2232476e0:   cmp    $0x3ff30000,%r11d
          │ │  0x00007fb2232476e7:   jb     0x00007fb2232477f7           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - java.lang.FdLibm$Atan::compute@116 (line 1288)
          │ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.23%  │ │  0x00007fb2232476ed:   cmp    $0x40038000,%r11d
          │╭│  0x00007fb2232476f4:   jb     0x00007fb2232477ce           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.lang.FdLibm$Atan::compute@164 (line 1297)
          │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.24%  │││  0x00007fb2232476fa:   vdivsd %xmm0,%xmm11,%xmm0           ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.lang.FdLibm$Atan::compute@194 (line 1302)
          │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.61%  │││  0x00007fb2232476fe:   mov    $0x3,%r10d                   ;*dload_0 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.lang.FdLibm$Atan::compute@196 (line 1307)
          │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││  0x00007fb223247704:   vmovsd 0x10(%rbp,%r10,8),%xmm2      ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.lang.FdLibm$Atan::compute@323 (line 1315)
          │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││  0x00007fb22324770b:   vmulsd %xmm0,%xmm0,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.lang.FdLibm$Atan::compute@198 (line 1307)
          │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.11%  │││  0x00007fb22324770f:   vmulsd %xmm3,%xmm3,%xmm4            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.lang.FdLibm$Atan::compute@205 (line 1308)
          │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.11%  │││  0x00007fb223247713:   vmulsd %xmm15,%xmm4,%xmm5           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.lang.FdLibm$Atan::compute@247 (line 1310)
          │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.05%  │││  0x00007fb223247718:   vaddsd %xmm8,%xmm5,%xmm5            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.lang.FdLibm$Atan::compute@248 (line 1310)
          │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.07%  │││  0x00007fb22324771d:   vmulsd %xmm4,%xmm5,%xmm5            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.lang.FdLibm$Atan::compute@249 (line 1310)
          │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.07%  │││  0x00007fb223247721:   vaddsd %xmm9,%xmm5,%xmm5            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.lang.FdLibm$Atan::compute@250 (line 1310)
          │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.14%  │││  0x00007fb223247726:   vmulsd %xmm4,%xmm5,%xmm5            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.lang.FdLibm$Atan::compute@251 (line 1310)
          │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.14%  │││  0x00007fb22324772a:   vaddsd %xmm10,%xmm5,%xmm5           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.lang.FdLibm$Atan::compute@252 (line 1310)
          │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.10%  │││  0x00007fb22324772f:   vmulsd %xmm4,%xmm5,%xmm5            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.lang.FdLibm$Atan::compute@253 (line 1310)
          │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.09%  │││  0x00007fb223247733:   vaddsd 0x8(%rsp),%xmm5,%xmm5        ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.lang.FdLibm$Atan::compute@254 (line 1310)
          │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.15%  │││  0x00007fb223247739:   vmulsd %xmm4,%xmm5,%xmm5            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.lang.FdLibm$Atan::compute@255 (line 1310)
          │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.10%  │││  0x00007fb22324773d:   vaddsd 0x10(%rsp),%xmm5,%xmm5       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.lang.FdLibm$Atan::compute@256 (line 1310)
          │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.09%  │││  0x00007fb223247743:   vmulsd %xmm3,%xmm5,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.lang.FdLibm$Atan::compute@257 (line 1310)
          │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.12%  │││  0x00007fb223247747:   vmulsd 0x18(%rsp),%xmm4,%xmm5       ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.lang.FdLibm$Atan::compute@292 (line 1311)
          │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││  0x00007fb22324774d:   vaddsd 0x38(%rsp),%xmm5,%xmm5       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.lang.FdLibm$Atan::compute@293 (line 1311)
          │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││  0x00007fb223247753:   vmulsd %xmm4,%xmm5,%xmm5            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.lang.FdLibm$Atan::compute@294 (line 1311)
          │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││  0x00007fb223247757:   vaddsd 0x30(%rsp),%xmm5,%xmm5       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.lang.FdLibm$Atan::compute@295 (line 1311)
          │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.30%  │││  0x00007fb22324775d:   vmulsd %xmm4,%xmm5,%xmm5            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.lang.FdLibm$Atan::compute@296 (line 1311)
          │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││  0x00007fb223247761:   vaddsd 0x28(%rsp),%xmm5,%xmm5       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.lang.FdLibm$Atan::compute@297 (line 1311)
          │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││  0x00007fb223247767:   vmulsd %xmm4,%xmm5,%xmm5            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.lang.FdLibm$Atan::compute@298 (line 1311)
          │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││  0x00007fb22324776b:   vaddsd 0x20(%rsp),%xmm5,%xmm5       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.lang.FdLibm$Atan::compute@299 (line 1311)
          │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.30%  │││  0x00007fb223247771:   vmulsd %xmm4,%xmm5,%xmm4            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.lang.FdLibm$Atan::compute@300 (line 1311)
          │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││  0x00007fb223247775:   vaddsd %xmm4,%xmm3,%xmm3            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.lang.FdLibm$Atan::compute@329 (line 1315)
          │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.59%  │││  0x00007fb223247779:   vmulsd %xmm0,%xmm3,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.lang.FdLibm$Atan::compute@330 (line 1315)
          │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.12%  │││  0x00007fb22324777d:   vsubsd 0x10(%r14,%r10,8),%xmm3,%xmm3;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.lang.FdLibm$Atan::compute@337 (line 1315)
          │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.06%  │││  0x00007fb223247784:   vsubsd %xmm0,%xmm3,%xmm0            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.lang.FdLibm$Atan::compute@339 (line 1315)
          │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.10%  │││  0x00007fb223247788:   vsubsd %xmm0,%xmm2,%xmm0            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.lang.FdLibm$Atan::compute@340 (line 1315)
          │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.13%  │││  0x00007fb22324778c:   vmovapd %xmm1,%xmm12
          │││  0x00007fb223247790:   call   0x00007fb222dc24c0           ;   {runtime_call Stub&lt;AMD64MathStub.tan&gt;}
          │││  0x00007fb223247795:   nop
          │││  0x00007fb223247796:   mov    %r13d,%r10d
   0.29%  │││  0x00007fb223247799:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@84 (line 77)
          │││  0x00007fb22324779c:   vmovsd %xmm0,(%rsp)
          │││  0x00007fb2232477a1:   vmovapd %xmm11,%xmm4
   0.26%  │││  0x00007fb2232477a6:   vmovapd %xmm14,%xmm3
          │││  0x00007fb2232477ab:   vmovapd %xmm13,%xmm2
          │││  0x00007fb2232477b0:   vmovsd 0x70(%rsp),%xmm1
          │││  0x00007fb2232477b6:   mov    0x6c(%rsp),%r13d             ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@21 (line 77)
   0.30%  ↘││  0x00007fb2232477bb:   nopl   0x0(%rax,%rax,1)
           ││  0x00007fb2232477c0:   cmp    %r10d,%r13d
           │╰  0x00007fb2232477c3:   jg     0x00007fb223247640
           │   0x00007fb2232477c9:   jmp    0x00007fb22324782d           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@25 (line 77)
           ↘   0x00007fb2232477ce:   vmovapd %xmm1,%xmm12
               0x00007fb2232477d2:   vsubsd 0x58(%rsp),%xmm0,%xmm1       ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.FdLibm$Atan::compute@174 (line 1299)
                                                                         ; - java.lang.StrictMath::atan@1 (line 227)
                                                                         ; - java.lang.Math::atan@1 (line 279)
....................................................................................................
  33.53%  <total for region 2>

....[Hottest Region 3]..............................................................................
, <unknown> 

           --------------------------------------------------------------------------------
           [/Disassembly]
           </print_nmethod>
           <task_queued compile_id='976' compile_kind='osr' method='com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark initial_loop ()D' bytes='93' count='7' backedge_count='109641' iicount='7' osr_bci='21' stamp='10.022' comment='tiered' hot_count='109641'/>
           - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           Decoding RuntimeStub - Stub&lt;AMD64MathStub.tan&gt; 0x00007fb222dc0b90
           --------------------------------------------------------------------------------
             0x00007fb222dc24c0:   sub    $0x18,%rsp
   0.47%     0x00007fb222dc24c4:   push   %rbx
             0x00007fb222dc24c5:   sub    $0x10,%rsp
   0.27%     0x00007fb222dc24c9:   vmovsd %xmm0,0x8(%rsp)
   0.30%     0x00007fb222dc24cf:   vpextrw $0x3,%xmm0,%eax
   0.27%     0x00007fb222dc24d4:   and    $0x7fff,%eax
   0.27%     0x00007fb222dc24da:   sub    $0x3fba,%eax
   0.54%     0x00007fb222dc24e0:   cmp    $0x10e,%eax
          ╭  0x00007fb222dc24e6:   ja     0x00007fb222dc26e9
   0.28%  │  0x00007fb222dc24ec:   vmovdqu -0x17b4(%rip),%xmm5        # 0x00007fb222dc0d40
          │  0x00007fb222dc24f4:   vmovdqu -0x17ac(%rip),%xmm6        # 0x00007fb222dc0d50
          │  0x00007fb222dc24fc:   vunpcklpd %xmm0,%xmm0,%xmm0
   0.02%  │  0x00007fb222dc2500:   vmovdqu -0x17a8(%rip),%xmm4        # 0x00007fb222dc0d60
   0.33%  │  0x00007fb222dc2508:   vandpd %xmm0,%xmm4,%xmm4
          │  0x00007fb222dc250c:   vmovdqu -0x17a4(%rip),%xmm1        # 0x00007fb222dc0d70
          │  0x00007fb222dc2514:   vmulpd %xmm0,%xmm1,%xmm1
   0.02%  │  0x00007fb222dc2518:   vpor   %xmm4,%xmm5,%xmm5
   0.25%  │  0x00007fb222dc251c:   vaddpd %xmm5,%xmm1,%xmm1
   0.87%  │  0x00007fb222dc2520:   vmovdqu %xmm1,%xmm7
          │  0x00007fb222dc2524:   vunpckhpd %xmm7,%xmm7,%xmm7
   0.26%  │  0x00007fb222dc2528:   vcvttsd2si %xmm7,%edx
   1.75%  │  0x00007fb222dc252c:   vcvttpd2dq %xmm1,%xmm1
   0.01%  │  0x00007fb222dc2530:   vcvtdq2pd %xmm1,%xmm1
   0.82%  │  0x00007fb222dc2534:   vmulpd %xmm6,%xmm1,%xmm1
   1.18%  │  0x00007fb222dc2538:   vmovdqu -0x17c0(%rip),%xmm3        # 0x00007fb222dc0d80
   0.02%  │  0x00007fb222dc2540:   vmovq  -0x1838(%rip),%xmm5        # 0x00007fb222dc0d10
          │  0x00007fb222dc2548:   add    $0x72900,%rdx
          │  0x00007fb222dc254f:   vmovdqu -0x17c7(%rip),%xmm4        # 0x00007fb222dc0d90
   0.28%  │  0x00007fb222dc2557:   vmulpd %xmm1,%xmm3,%xmm3
   0.83%  │  0x00007fb222dc255b:   and    $0x1f,%rdx
          │  0x00007fb222dc255f:   vmulsd %xmm1,%xmm5,%xmm5
   0.31%  │  0x00007fb222dc2563:   mov    %rdx,%rcx
          │  0x00007fb222dc2566:   vmulpd %xmm1,%xmm4,%xmm4
   0.24%  │  0x00007fb222dc256a:   shl    %rcx
          │  0x00007fb222dc256d:   vsubpd %xmm3,%xmm0,%xmm0
   0.65%  │  0x00007fb222dc2571:   vmulpd -0x17d9(%rip),%xmm1,%xmm1        # 0x00007fb222dc0da0
          │  0x00007fb222dc2579:   add    %rcx,%rdx
   0.02%  │  0x00007fb222dc257c:   shl    $0x2,%rcx
          │  0x00007fb222dc2580:   add    %rcx,%rdx
   0.29%  │  0x00007fb222dc2583:   vaddsd %xmm0,%xmm5,%xmm5
   1.16%  │  0x00007fb222dc2587:   vmovdqu %xmm0,%xmm2
   0.02%  │  0x00007fb222dc258b:   vsubpd %xmm4,%xmm0,%xmm0
   0.15%  │  0x00007fb222dc258f:   vmovq  -0x187f(%rip),%xmm6        # 0x00007fb222dc0d18
          │  0x00007fb222dc2597:   shl    $0x4,%rdx
   0.11%  │  0x00007fb222dc259b:   lea    -0x17f2(%rip),%rax        # 0x00007fb222dc0db0
   0.02%  │  0x00007fb222dc25a2:   vandpd -0x1fa(%rip),%xmm5,%xmm5        # 0x00007fb222dc23b0
   0.16%  │  0x00007fb222dc25aa:   vmovdqu %xmm0,%xmm3
          │  0x00007fb222dc25ae:   add    %rdx,%rax
   0.13%  │  0x00007fb222dc25b1:   vsubpd %xmm0,%xmm2,%xmm2
   1.19%  │  0x00007fb222dc25b5:   vunpckhpd %xmm0,%xmm0,%xmm0
          │  0x00007fb222dc25b9:   vdivsd %xmm5,%xmm6,%xmm6
   2.85%  │  0x00007fb222dc25bd:   vsubpd %xmm4,%xmm2,%xmm2
          │  0x00007fb222dc25c1:   vmovdqu 0x10(%rax),%xmm7
          │  0x00007fb222dc25c6:   vsubsd %xmm5,%xmm3,%xmm3
          │  0x00007fb222dc25ca:   vmulpd %xmm0,%xmm7,%xmm7
   0.25%  │  0x00007fb222dc25ce:   vsubpd %xmm1,%xmm2,%xmm2
          │  0x00007fb222dc25d2:   vmovdqu 0x30(%rax),%xmm1
          │  0x00007fb222dc25d7:   vmulpd %xmm0,%xmm1,%xmm1
          │  0x00007fb222dc25db:   vmovdqu 0x60(%rax),%xmm4
   0.25%  │  0x00007fb222dc25e0:   vmulpd %xmm0,%xmm4,%xmm4
          │  0x00007fb222dc25e4:   vaddsd %xmm3,%xmm2,%xmm2
          │  0x00007fb222dc25e8:   vmovdqu %xmm0,%xmm3
          │  0x00007fb222dc25ec:   vmulpd %xmm0,%xmm0,%xmm0
   0.29%  │  0x00007fb222dc25f0:   vaddpd (%rax),%xmm7,%xmm7
          │  0x00007fb222dc25f4:   vaddpd 0x20(%rax),%xmm1,%xmm1
   0.00%  │  0x00007fb222dc25f9:   vmulpd %xmm0,%xmm1,%xmm1
          │  0x00007fb222dc25fd:   vaddpd 0x50(%rax),%xmm4,%xmm4
   0.31%  │  0x00007fb222dc2602:   vaddpd %xmm1,%xmm7,%xmm7
   0.02%  │  0x00007fb222dc2606:   vmovdqu 0x70(%rax),%xmm1
          │  0x00007fb222dc260b:   vmulpd %xmm0,%xmm1,%xmm1
          │  0x00007fb222dc260f:   vmulpd %xmm0,%xmm0,%xmm0
   0.27%  │  0x00007fb222dc2613:   vaddpd %xmm1,%xmm4,%xmm4
   0.02%  │  0x00007fb222dc2617:   vmovdqu 0x40(%rax),%xmm1
          │  0x00007fb222dc261c:   vmulpd %xmm0,%xmm1,%xmm1
          │  0x00007fb222dc2620:   vaddpd %xmm1,%xmm7,%xmm7
   0.50%  │  0x00007fb222dc2624:   vmovdqu %xmm3,%xmm1
          │  0x00007fb222dc2628:   vmulpd %xmm0,%xmm3,%xmm3
   0.00%  │  0x00007fb222dc262c:   vmulsd %xmm0,%xmm0,%xmm0
          │  0x00007fb222dc2630:   vmulpd 0x90(%rax),%xmm1,%xmm1
   0.51%  │  0x00007fb222dc2638:   vmulpd %xmm3,%xmm4,%xmm4
   0.00%  │  0x00007fb222dc263c:   vmovdqu %xmm1,%xmm3
          │  0x00007fb222dc2640:   vaddpd %xmm4,%xmm7,%xmm7
   1.00%  │  0x00007fb222dc2644:   vmovdqu %xmm1,%xmm4
          │  0x00007fb222dc2648:   vmulsd %xmm7,%xmm0,%xmm0
   1.00%  │  0x00007fb222dc264c:   vunpckhpd %xmm7,%xmm7,%xmm7
          │  0x00007fb222dc2650:   vaddsd %xmm7,%xmm0,%xmm0
   1.18%  │  0x00007fb222dc2654:   vunpckhpd %xmm1,%xmm1,%xmm1
          │  0x00007fb222dc2658:   vaddsd %xmm1,%xmm3,%xmm3
          │  0x00007fb222dc265c:   vsubsd %xmm3,%xmm4,%xmm4
          │  0x00007fb222dc2660:   vaddsd %xmm4,%xmm1,%xmm1
   0.32%  │  0x00007fb222dc2664:   vmovdqu %xmm2,%xmm4
          │  0x00007fb222dc2668:   vmovq  0x90(%rax),%xmm7
          │  0x00007fb222dc2670:   vunpckhpd %xmm2,%xmm2,%xmm2
          │  0x00007fb222dc2674:   vaddsd 0x98(%rax),%xmm7,%xmm7
   0.26%  │  0x00007fb222dc267c:   vmulsd %xmm2,%xmm7,%xmm7
          │  0x00007fb222dc2680:   vaddsd 0x88(%rax),%xmm7,%xmm7
          │  0x00007fb222dc2688:   vaddsd %xmm1,%xmm7,%xmm7
          │  0x00007fb222dc268c:   vaddsd %xmm7,%xmm0,%xmm0
   0.60%  │  0x00007fb222dc2690:   vmovq  -0x1980(%rip),%xmm7        # 0x00007fb222dc0d18
          │  0x00007fb222dc2698:   vmulsd %xmm6,%xmm4,%xmm4
          │  0x00007fb222dc269c:   vmovq  0xa8(%rax),%xmm2
          │  0x00007fb222dc26a4:   vandpd %xmm6,%xmm2,%xmm2
   0.30%  │  0x00007fb222dc26a8:   vmulsd %xmm2,%xmm5,%xmm5
          │  0x00007fb222dc26ac:   vmulsd 0xa0(%rax),%xmm6,%xmm6
          │  0x00007fb222dc26b4:   vsubsd %xmm5,%xmm7,%xmm7
          │  0x00007fb222dc26b8:   vsubsd 0x80(%rax),%xmm2,%xmm2
   0.29%  │  0x00007fb222dc26c0:   vsubsd %xmm4,%xmm7,%xmm7
          │  0x00007fb222dc26c4:   vmulsd %xmm6,%xmm7,%xmm7
          │  0x00007fb222dc26c8:   vmovdqu %xmm3,%xmm4
          │  0x00007fb222dc26cc:   vsubsd %xmm2,%xmm3,%xmm3
   0.30%  │  0x00007fb222dc26d0:   vaddsd %xmm3,%xmm2,%xmm2
          │  0x00007fb222dc26d4:   vsubsd %xmm2,%xmm4,%xmm4
          │  0x00007fb222dc26d8:   vaddsd %xmm4,%xmm0,%xmm0
   0.31%  │  0x00007fb222dc26dc:   vsubsd %xmm7,%xmm0,%xmm0
   1.15%  │  0x00007fb222dc26e0:   vaddsd %xmm3,%xmm0,%xmm0
   1.22%  │  0x00007fb222dc26e4:   jmp    0x00007fb222dc2d19
          ↘  0x00007fb222dc26e9:   jg     0x00007fb222dc279d
             0x00007fb222dc26ef:   vpextrw $0x3,%xmm0,%eax
             0x00007fb222dc26f4:   mov    %eax,%edx
             0x00007fb222dc26f6:   data16 nopw 0x0(%rax,%rax,1)
             0x00007fb222dc2700:   and    $0x7ff0,%eax
             0x00007fb222dc2706:   je     0x00007fb222dc2790
             0x00007fb222dc270c:   and    $0x7fff,%edx
             0x00007fb222dc2712:   cmp    $0x3e20,%edx
             0x00007fb222dc2718:   jb     0x00007fb222dc2773
             0x00007fb222dc271e:   vmovdqu %xmm0,%xmm2
....................................................................................................
  26.70%  <total for region 3>

....[Hottest Regions]...............................................................................
  35.25%                      <unknown> 
  33.53%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop, version 3, compile id 977 
  26.70%                      <unknown> 
   1.05%                      <unknown> 
   0.81%                      <unknown> 
   0.52%                      <unknown> 
   0.42%              kernel  [unknown] 
   0.31%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%                      <unknown> 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.91%  <...other 309 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  64.47%                      <unknown> 
  33.53%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop, version 3, compile id 977 
   1.68%              kernel  [unknown] 
   0.02%           libjvm.so  xmlStream::write_text 
   0.02%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%      hsdis-amd64.so  putop 
   0.01%           libjvm.so  MethodMatcher::matches 
   0.01%        libc-2.31.so  __strncmp_avx2 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%    perf-2113009.map  [unknown] 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  outputStream::print 
   0.01%           libjvm.so  stringStream::write 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.15%  <...other 65 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  64.47%                    
  33.53%      jvmci, level 4
   1.68%              kernel
   0.16%           libjvm.so
   0.08%        libc-2.31.so
   0.03%         interpreter
   0.02%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%    perf-2113009.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking
# Parameters: (iterations = 16384)

# Run progress: 50.00% complete, ETA 00:01:54
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1251.701 us/op
# Warmup Iteration   2: 1245.989 us/op
# Warmup Iteration   3: 1245.583 us/op
# Warmup Iteration   4: 1246.064 us/op
# Warmup Iteration   5: 1245.423 us/op
Iteration   1: 1245.759 us/op
Iteration   2: 1246.280 us/op
Iteration   3: 1245.513 us/op
Iteration   4: 1245.460 us/op
Iteration   5: 1245.670 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking":
  1245.736 ±(99.9%) 1.257 us/op [Average]
  (min, avg, max) = (1245.460, 1245.736, 1246.280), stdev = 0.326
  CI (99.9%): [1244.479, 1246.994] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking:asm":
PrintAssembly processed: 214346 total address lines.
Perf output processed (skipped 60.283 seconds):
 Column 1: cycles (51038 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

              0x00007f2b4adc28ea:   vaddsd %xmm1,%xmm0,%xmm0
              0x00007f2b4adc28ee:   jmp    0x00007f2b4adc2e99
              0x00007f2b4adc28f3:   vmovq  -0x1a5b(%rip),%xmm3        # 0x00007f2b4adc0ea0
              0x00007f2b4adc28fb:   vmulsd %xmm0,%xmm3,%xmm3
              0x00007f2b4adc28ff:   vaddsd %xmm3,%xmm0,%xmm0
              0x00007f2b4adc2903:   vmulsd -0x1a8b(%rip),%xmm0,%xmm0        # 0x00007f2b4adc0e80
              0x00007f2b4adc290b:   jmp    0x00007f2b4adc2e99
              0x00007f2b4adc2910:   vmovdqu %xmm0,%xmm1
              0x00007f2b4adc2914:   vmulsd %xmm1,%xmm1,%xmm1
              0x00007f2b4adc2918:   jmp    0x00007f2b4adc2e99
   0.48%      0x00007f2b4adc291d:   vpextrw $0x3,%xmm0,%eax
              0x00007f2b4adc2922:   and    $0x7ff0,%eax
   0.02%      0x00007f2b4adc2928:   cmp    $0x7ff0,%eax
              0x00007f2b4adc292e:   je     0x00007f2b4adc2e86
   0.57%      0x00007f2b4adc2934:   vpextrw $0x3,%xmm0,%ecx
              0x00007f2b4adc2939:   and    $0x7ff0,%ecx
   0.27%      0x00007f2b4adc293f:   sub    $0x3f60,%ecx
   0.34%      0x00007f2b4adc2945:   shr    $0x7,%ecx
   0.68%      0x00007f2b4adc2948:   and    $0xfffc,%ecx
   0.17%      0x00007f2b4adc294e:   lea    -0x3c5(%rip),%r11        # 0x00007f2b4adc2590
   0.03%      0x00007f2b4adc2955:   add    %r11,%rcx
   0.56%      0x00007f2b4adc2958:   vmovq  %xmm0,%rax
   0.09%      0x00007f2b4adc295d:   mov    0x14(%rcx),%r10d
   1.81%      0x00007f2b4adc2961:   mov    0x18(%rcx),%r8d
              0x00007f2b4adc2965:   mov    %eax,%edx
              0x00007f2b4adc2967:   shr    $0x15,%rax
              0x00007f2b4adc296b:   or     $0x80000000,%eax
   0.41%      0x00007f2b4adc2971:   shr    $0xb,%eax
              0x00007f2b4adc2974:   mov    %r10d,%r9d
              0x00007f2b4adc2977:   imul   %rdx,%r10
   0.97%      0x00007f2b4adc297b:   imul   %rax,%r9
   0.41%      0x00007f2b4adc297f:   imul   %rax,%r8
   0.27%      0x00007f2b4adc2983:   mov    0x10(%rcx),%esi
              0x00007f2b4adc2986:   mov    0xc(%rcx),%edi
   0.04%      0x00007f2b4adc2989:   mov    %r10d,%r11d
   0.05%      0x00007f2b4adc298c:   shr    $0x20,%r10
   0.34%      0x00007f2b4adc2990:   add    %r10,%r9
   0.04%      0x00007f2b4adc2993:   add    %r8,%r11
   0.01%      0x00007f2b4adc2996:   mov    %r11d,%r8d
   0.07%      0x00007f2b4adc2999:   shr    $0x20,%r11
   0.34%      0x00007f2b4adc299d:   add    %r11,%r9
   0.35%      0x00007f2b4adc29a0:   mov    %esi,%r10d
   0.00%      0x00007f2b4adc29a3:   imul   %rdx,%rsi
   0.06%      0x00007f2b4adc29a7:   imul   %rax,%r10
   0.02%      0x00007f2b4adc29ab:   mov    %edi,%r11d
   0.36%      0x00007f2b4adc29ae:   imul   %rdx,%rdi
   0.00%      0x00007f2b4adc29b2:   mov    %esi,%ebx
   0.07%      0x00007f2b4adc29b4:   shr    $0x20,%rsi
   0.01%      0x00007f2b4adc29b8:   add    %rbx,%r9
   0.45%      0x00007f2b4adc29bb:   mov    %r9d,%ebx
   0.01%      0x00007f2b4adc29be:   shr    $0x20,%r9
   0.27%      0x00007f2b4adc29c2:   add    %rsi,%r10
   0.04%      0x00007f2b4adc29c5:   add    %r9,%r10
   0.41%      0x00007f2b4adc29c8:   shl    $0x20,%rbx
   0.01%      0x00007f2b4adc29cc:   or     %rbx,%r8
   0.29%      0x00007f2b4adc29cf:   imul   %rax,%r11
   0.01%      0x00007f2b4adc29d3:   mov    0x8(%rcx),%r9d
   0.16%      0x00007f2b4adc29d7:   mov    0x4(%rcx),%esi
   0.01%      0x00007f2b4adc29da:   mov    %edi,%ebx
   0.26%      0x00007f2b4adc29dc:   shr    $0x20,%rdi
   0.02%      0x00007f2b4adc29e0:   add    %rbx,%r10
   0.15%      0x00007f2b4adc29e3:   mov    %r10d,%ebx
   0.01%      0x00007f2b4adc29e6:   shr    $0x20,%r10
   0.30%      0x00007f2b4adc29ea:   add    %rdi,%r11
   0.06%      0x00007f2b4adc29ed:   add    %r10,%r11
   0.40%      0x00007f2b4adc29f0:   mov    %r9,%rdi
   0.00%      0x00007f2b4adc29f3:   imul   %rdx,%r9
   0.05%      0x00007f2b4adc29f7:   imul   %rax,%rdi
   0.01%      0x00007f2b4adc29fb:   mov    %r9d,%r10d
   0.41%      0x00007f2b4adc29fe:   shr    $0x20,%r9
              0x00007f2b4adc2a02:   add    %r10,%r11
   0.04%      0x00007f2b4adc2a05:   mov    %r11d,%r10d
   0.04%      0x00007f2b4adc2a08:   shr    $0x20,%r11
   0.39%      0x00007f2b4adc2a0c:   add    %r9,%rdi
              0x00007f2b4adc2a0f:   add    %r11,%rdi
   0.42%      0x00007f2b4adc2a12:   mov    %rsi,%r9
   0.01%      0x00007f2b4adc2a15:   imul   %rdx,%rsi
              0x00007f2b4adc2a19:   imul   %rax,%r9
              0x00007f2b4adc2a1d:   shl    $0x20,%r10
   0.39%      0x00007f2b4adc2a21:   or     %rbx,%r10
   0.13%      0x00007f2b4adc2a24:   mov    (%rcx),%eax
              0x00007f2b4adc2a26:   mov    %esi,%r11d
   0.00%      0x00007f2b4adc2a29:   shr    $0x20,%rsi
   0.24%      0x00007f2b4adc2a2d:   add    %r11,%rdi
   0.12%      0x00007f2b4adc2a30:   mov    %edi,%r11d
              0x00007f2b4adc2a33:   shr    $0x20,%rdi
   0.12%      0x00007f2b4adc2a37:   add    %rsi,%r9
   0.20%      0x00007f2b4adc2a3a:   add    %rdi,%r9
   0.28%      0x00007f2b4adc2a3d:   imul   %rax,%rdx
              0x00007f2b4adc2a41:   vpextrw $0x3,%xmm0,%ebx
   0.19%      0x00007f2b4adc2a46:   lea    -0x4bd(%rip),%rdi        # 0x00007f2b4adc2590
   0.25%      0x00007f2b4adc2a4d:   sub    %rdi,%rcx
              0x00007f2b4adc2a50:   add    %ecx,%ecx
   0.00%      0x00007f2b4adc2a52:   add    %ecx,%ecx
   0.22%      0x00007f2b4adc2a54:   add    %ecx,%ecx
   0.23%      0x00007f2b4adc2a56:   add    $0x13,%ecx
              0x00007f2b4adc2a59:   mov    $0x8000,%esi
   0.00%      0x00007f2b4adc2a5e:   and    %ebx,%esi
   0.22%      0x00007f2b4adc2a60:   shr    $0x4,%ebx
   0.22%      0x00007f2b4adc2a63:   and    $0x7ff,%ebx
              0x00007f2b4adc2a69:   sub    $0x3ff,%ebx
   0.00%      0x00007f2b4adc2a6f:   sub    %ebx,%ecx
   0.19%      0x00007f2b4adc2a71:   add    %rdx,%r9
   0.25%      0x00007f2b4adc2a74:   mov    %ecx,%edx
              0x00007f2b4adc2a76:   add    $0x20,%edx
              0x00007f2b4adc2a79:   nopl   0x0(%rax)
   0.18%      0x00007f2b4adc2a80:   cmp    $0x0,%ecx
              0x00007f2b4adc2a83:   jl     0x00007f2b4adc2dd2
   0.25%      0x00007f2b4adc2a89:   neg    %ecx
              0x00007f2b4adc2a8b:   add    $0x1d,%ecx
   0.00%      0x00007f2b4adc2a8e:   shl    %cl,%r9d
   0.45%      0x00007f2b4adc2a91:   mov    %r9d,%edi
   0.00%      0x00007f2b4adc2a94:   and    $0x3fffffff,%r9d
   0.19%      0x00007f2b4adc2a9b:   nopl   0x0(%rax,%rax,1)
   0.23%      0x00007f2b4adc2aa0:   test   $0x20000000,%r9d
              0x00007f2b4adc2aa7:   jne    0x00007f2b4adc2dff
   0.04%      0x00007f2b4adc2aad:   shr    %cl,%r9d
   0.24%      0x00007f2b4adc2ab0:   mov    $0x0,%ebx
              0x00007f2b4adc2ab5:   shl    $0x20,%r9
   0.01%      0x00007f2b4adc2ab9:   or     %r11,%r9
   0.17%      0x00007f2b4adc2abc:   nopl   0x0(%rax)
   0.22%      0x00007f2b4adc2ac0:   cmp    $0x0,%r9
          ╭   0x00007f2b4adc2ac4:   je     0x00007f2b4adc2d7d
   0.02%  │↗  0x00007f2b4adc2aca:   bsr    %r9,%r11
   0.31%  ││  0x00007f2b4adc2ace:   mov    $0x1d,%ecx
   0.16%  ││  0x00007f2b4adc2ad3:   sub    %r11d,%ecx
          ││  0x00007f2b4adc2ad6:   jle    0x00007f2b4adc2daf
   0.03%  ││  0x00007f2b4adc2adc:   shl    %cl,%r9
   0.03%  ││  0x00007f2b4adc2adf:   mov    %r10,%rax
          ││  0x00007f2b4adc2ae2:   shl    %cl,%r10
   0.01%  ││  0x00007f2b4adc2ae5:   add    %ecx,%edx
          ││  0x00007f2b4adc2ae7:   neg    %ecx
          ││  0x00007f2b4adc2ae9:   add    $0x40,%ecx
          ││  0x00007f2b4adc2aec:   shr    %cl,%rax
   0.01%  ││  0x00007f2b4adc2aef:   shr    %cl,%r8
   0.01%  ││  0x00007f2b4adc2af2:   or     %rax,%r9
          ││  0x00007f2b4adc2af5:   or     %r8,%r10
   0.28%  ││  0x00007f2b4adc2af8:   vcvtsi2sd %r9,%xmm0,%xmm0
   0.99%  ││  0x00007f2b4adc2afd:   shr    %r10
   0.02%  ││  0x00007f2b4adc2b00:   vcvtsi2sd %r10,%xmm3,%xmm3
   1.18%  ││  0x00007f2b4adc2b05:   vxorpd %xmm4,%xmm4,%xmm4
   0.03%  ││  0x00007f2b4adc2b09:   shl    $0x4,%edx
   0.00%  ││  0x00007f2b4adc2b0c:   neg    %edx
          ││  0x00007f2b4adc2b0e:   add    $0x3ff0,%edx
   0.40%  ││  0x00007f2b4adc2b14:   or     %esi,%edx
   0.03%  ││  0x00007f2b4adc2b16:   xor    %ebx,%edx
          ││  0x00007f2b4adc2b18:   vpinsrw $0x3,%edx,%xmm4,%xmm4
   0.53%  ││  0x00007f2b4adc2b1d:   vmovq  -0x1c7d(%rip),%xmm2        # 0x00007f2b4adc0ea8
   0.03%  ││  0x00007f2b4adc2b25:   vmovq  -0x1c7d(%rip),%xmm7        # 0x00007f2b4adc0eb0
   0.00%  ││  0x00007f2b4adc2b2d:   vxorpd %xmm5,%xmm5,%xmm5
          ││  0x00007f2b4adc2b31:   sub    $0x3f0,%edx
   0.37%  ││  0x00007f2b4adc2b37:   vpinsrw $0x3,%edx,%xmm5,%xmm5
   0.30%  ││  0x00007f2b4adc2b3c:   vmulsd %xmm4,%xmm0,%xmm0
   0.51%  ││  0x00007f2b4adc2b40:   shl    $0x10,%esi
   0.16%  ││  0x00007f2b4adc2b43:   sar    $0x1f,%esi
   0.01%  ││  0x00007f2b4adc2b46:   vmulsd %xmm5,%xmm3,%xmm3
   0.63%  ││  0x00007f2b4adc2b4a:   vmovdqu %xmm0,%xmm1
   0.03%  ││  0x00007f2b4adc2b4e:   vmulsd %xmm2,%xmm0,%xmm0
   0.74%  ││  0x00007f2b4adc2b52:   shr    $0x1e,%edi
   0.01%  ││  0x00007f2b4adc2b55:   vaddsd %xmm3,%xmm1,%xmm1
   0.93%  ││  0x00007f2b4adc2b59:   vmulsd %xmm2,%xmm3,%xmm3
   0.41%  ││  0x00007f2b4adc2b5d:   add    %esi,%edi
   0.00%  ││  0x00007f2b4adc2b5f:   xor    %esi,%edi
          ││  0x00007f2b4adc2b61:   vmulsd %xmm1,%xmm7,%xmm7
   1.35%  ││  0x00007f2b4adc2b65:   mov    %edi,%eax
   0.00%  ││  0x00007f2b4adc2b67:   vaddsd %xmm3,%xmm7,%xmm7
   1.81%  ││  0x00007f2b4adc2b6b:   vmovdqu %xmm0,%xmm2
          ││  0x00007f2b4adc2b6f:   vaddsd %xmm7,%xmm0,%xmm0
   1.73%  ││  0x00007f2b4adc2b73:   vsubsd %xmm0,%xmm2,%xmm2
   1.77%  ││  0x00007f2b4adc2b77:   vaddsd %xmm2,%xmm7,%xmm7
   1.71%  ││  0x00007f2b4adc2b7b:   vmovdqu -0x1c93(%rip),%xmm1        # 0x00007f2b4adc0ef0
          ││  0x00007f2b4adc2b83:   vmovddup %xmm0,%xmm0
          ││  0x00007f2b4adc2b87:   vmovdqu -0x1caf(%rip),%xmm4        # 0x00007f2b4adc0ee0
          ││  0x00007f2b4adc2b8f:   vandpd %xmm0,%xmm4,%xmm4
   0.46%  ││  0x00007f2b4adc2b93:   vmulpd %xmm0,%xmm1,%xmm1
          ││  0x00007f2b4adc2b97:   vmovddup %xmm7,%xmm7
          ││  0x00007f2b4adc2b9b:   vmovdqu -0x1ce3(%rip),%xmm5        # 0x00007f2b4adc0ec0
          ││  0x00007f2b4adc2ba3:   vmovdqu -0x1cdb(%rip),%xmm6        # 0x00007f2b4adc0ed0
   0.45%  ││  0x00007f2b4adc2bab:   vpor   %xmm4,%xmm5,%xmm5
          ││  0x00007f2b4adc2baf:   vaddpd %xmm5,%xmm1,%xmm1
   0.17%  ││  0x00007f2b4adc2bb3:   vmovdqu %xmm1,%xmm5
          ││  0x00007f2b4adc2bb7:   vunpckhpd %xmm5,%xmm5,%xmm5
   0.54%  ││  0x00007f2b4adc2bbb:   vcvttsd2si %xmm5,%edx
   2.44%  ││  0x00007f2b4adc2bbf:   vcvttpd2dq %xmm1,%xmm1
          ││  0x00007f2b4adc2bc3:   vcvtdq2pd %xmm1,%xmm1
   1.23%  ││  0x00007f2b4adc2bc7:   vmulpd %xmm6,%xmm1,%xmm1
   1.59%  ││  0x00007f2b4adc2bcb:   vmovdqu -0x1cd3(%rip),%xmm3        # 0x00007f2b4adc0f00
          ││  0x00007f2b4adc2bd3:   vmovq  -0x1d4b(%rip),%xmm5        # 0x00007f2b4adc0e90
          ││  0x00007f2b4adc2bdb:   shl    $0x4,%eax
          ││  0x00007f2b4adc2bde:   add    $0x72900,%edx
   0.41%  ││  0x00007f2b4adc2be4:   vmovdqu -0x1cdc(%rip),%xmm4        # 0x00007f2b4adc0f10
          ││  0x00007f2b4adc2bec:   vmulpd %xmm1,%xmm3,%xmm3
   1.33%  ││  0x00007f2b4adc2bf0:   add    %eax,%edx
          ││  0x00007f2b4adc2bf2:   and    $0x1f,%edx
          ││  0x00007f2b4adc2bf5:   vmulsd %xmm1,%xmm5,%xmm5
   0.25%  ││  0x00007f2b4adc2bf9:   mov    %edx,%ecx
   0.25%  ││  0x00007f2b4adc2bfb:   vmulpd %xmm1,%xmm4,%xmm4
   0.13%  ││  0x00007f2b4adc2bff:   shl    %ecx
          ││  0x00007f2b4adc2c01:   vsubpd %xmm3,%xmm0,%xmm0
   1.17%  ││  0x00007f2b4adc2c05:   vmulpd -0x1ced(%rip),%xmm1,%xmm1        # 0x00007f2b4adc0f20
          ││  0x00007f2b4adc2c0d:   add    %ecx,%edx
          ││  0x00007f2b4adc2c0f:   shl    $0x2,%ecx
          ││  0x00007f2b4adc2c12:   add    %ecx,%edx
   0.43%  ││  0x00007f2b4adc2c14:   vaddsd %xmm0,%xmm5,%xmm5
   1.32%  ││  0x00007f2b4adc2c18:   vmovdqu %xmm0,%xmm2
          ││  0x00007f2b4adc2c1c:   vsubpd %xmm4,%xmm0,%xmm0
   0.27%  ││  0x00007f2b4adc2c20:   vmovq  -0x1d90(%rip),%xmm6        # 0x00007f2b4adc0e98
          ││  0x00007f2b4adc2c28:   shl    $0x4,%edx
   0.17%  ││  0x00007f2b4adc2c2b:   lea    -0x1d02(%rip),%rax        # 0x00007f2b4adc0f30
          ││  0x00007f2b4adc2c32:   vandpd -0x70a(%rip),%xmm5,%xmm5        # 0x00007f2b4adc2530
   0.58%  ││  0x00007f2b4adc2c3a:   vmovdqu %xmm0,%xmm3
          ││  0x00007f2b4adc2c3e:   add    %rdx,%rax
   0.14%  ││  0x00007f2b4adc2c41:   vsubpd %xmm0,%xmm2,%xmm2
   1.19%  ││  0x00007f2b4adc2c45:   vunpckhpd %xmm0,%xmm0,%xmm0
   0.07%  ││  0x00007f2b4adc2c49:   vdivsd %xmm5,%xmm6,%xmm6
   4.32%  ││  0x00007f2b4adc2c4d:   vsubpd %xmm4,%xmm2,%xmm2
          ││  0x00007f2b4adc2c51:   vsubsd %xmm5,%xmm3,%xmm3
          ││  0x00007f2b4adc2c55:   vsubpd %xmm1,%xmm2,%xmm2
          ││  0x00007f2b4adc2c59:   vmovdqu 0x30(%rax),%xmm1
   0.48%  ││  0x00007f2b4adc2c5e:   vaddpd %xmm7,%xmm2,%xmm2
   0.11%  ││  0x00007f2b4adc2c62:   vmovdqu 0x10(%rax),%xmm7
          ││  0x00007f2b4adc2c67:   vmulpd %xmm0,%xmm7,%xmm7
          ││  0x00007f2b4adc2c6b:   vmovdqu 0x60(%rax),%xmm4
   0.29%  ││  0x00007f2b4adc2c70:   vmulpd %xmm0,%xmm1,%xmm1
   0.12%  ││  0x00007f2b4adc2c74:   vmulpd %xmm0,%xmm4,%xmm4
          ││  0x00007f2b4adc2c78:   vaddsd %xmm3,%xmm2,%xmm2
   1.18%  ││  0x00007f2b4adc2c7c:   vmovdqu %xmm0,%xmm3
   0.00%  ││  0x00007f2b4adc2c80:   vmulpd %xmm0,%xmm0,%xmm0
          ││  0x00007f2b4adc2c84:   vaddpd (%rax),%xmm7,%xmm7
          ││  0x00007f2b4adc2c88:   vaddpd 0x20(%rax),%xmm1,%xmm1
   0.39%  ││  0x00007f2b4adc2c8d:   vmulpd %xmm0,%xmm1,%xmm1
          ││  0x00007f2b4adc2c91:   vaddpd 0x50(%rax),%xmm4,%xmm4
          ││  0x00007f2b4adc2c96:   vaddpd %xmm1,%xmm7,%xmm7
   0.01%  ││  0x00007f2b4adc2c9a:   vmovdqu 0x70(%rax),%xmm1
   0.43%  ││  0x00007f2b4adc2c9f:   vmulpd %xmm0,%xmm1,%xmm1
   0.00%  ││  0x00007f2b4adc2ca3:   vmulpd %xmm0,%xmm0,%xmm0
          ││  0x00007f2b4adc2ca7:   vaddpd %xmm1,%xmm4,%xmm4
   0.01%  ││  0x00007f2b4adc2cab:   vmovdqu 0x40(%rax),%xmm1
   0.44%  ││  0x00007f2b4adc2cb0:   vmulpd %xmm0,%xmm1,%xmm1
   0.00%  ││  0x00007f2b4adc2cb4:   vaddpd %xmm1,%xmm7,%xmm7
   0.26%  ││  0x00007f2b4adc2cb8:   vmovdqu %xmm3,%xmm1
          ││  0x00007f2b4adc2cbc:   vmulpd %xmm0,%xmm3,%xmm3
   0.32%  ││  0x00007f2b4adc2cc0:   vmulsd %xmm0,%xmm0,%xmm0
          ││  0x00007f2b4adc2cc4:   vmulpd 0x90(%rax),%xmm1,%xmm1
   0.13%  ││  0x00007f2b4adc2ccc:   vmulpd %xmm3,%xmm4,%xmm4
   0.00%  ││  0x00007f2b4adc2cd0:   vmovdqu %xmm1,%xmm3
   0.31%  ││  0x00007f2b4adc2cd4:   vaddpd %xmm4,%xmm7,%xmm7
   0.92%  ││  0x00007f2b4adc2cd8:   vmovdqu %xmm1,%xmm4
          ││  0x00007f2b4adc2cdc:   vmulsd %xmm7,%xmm0,%xmm0
   1.61%  ││  0x00007f2b4adc2ce0:   vunpckhpd %xmm7,%xmm7,%xmm7
          ││  0x00007f2b4adc2ce4:   vaddsd %xmm7,%xmm0,%xmm0
   1.63%  ││  0x00007f2b4adc2ce8:   vunpckhpd %xmm1,%xmm1,%xmm1
          ││  0x00007f2b4adc2cec:   vaddsd %xmm1,%xmm3,%xmm3
          ││  0x00007f2b4adc2cf0:   vsubsd %xmm3,%xmm4,%xmm4
          ││  0x00007f2b4adc2cf4:   vaddsd %xmm4,%xmm1,%xmm1
   0.41%  ││  0x00007f2b4adc2cf8:   vmovdqu %xmm2,%xmm4
          ││  0x00007f2b4adc2cfc:   vmovq  0x90(%rax),%xmm7
          ││  0x00007f2b4adc2d04:   vunpckhpd %xmm2,%xmm2,%xmm2
          ││  0x00007f2b4adc2d08:   vaddsd 0x98(%rax),%xmm7,%xmm7
   0.43%  ││  0x00007f2b4adc2d10:   vmulsd %xmm2,%xmm7,%xmm7
          ││  0x00007f2b4adc2d14:   vaddsd 0x88(%rax),%xmm7,%xmm7
          ││  0x00007f2b4adc2d1c:   vaddsd %xmm1,%xmm7,%xmm7
          ││  0x00007f2b4adc2d20:   vaddsd %xmm7,%xmm0,%xmm0
   0.90%  ││  0x00007f2b4adc2d24:   vmovq  -0x1e94(%rip),%xmm7        # 0x00007f2b4adc0e98
          ││  0x00007f2b4adc2d2c:   vmulsd %xmm6,%xmm4,%xmm4
          ││  0x00007f2b4adc2d30:   vmovq  0xa8(%rax),%xmm2
          ││  0x00007f2b4adc2d38:   vandpd %xmm6,%xmm2,%xmm2
   0.47%  ││  0x00007f2b4adc2d3c:   vmulsd %xmm2,%xmm5,%xmm5
          ││  0x00007f2b4adc2d40:   vmulsd 0xa0(%rax),%xmm6,%xmm6
          ││  0x00007f2b4adc2d48:   vsubsd %xmm5,%xmm7,%xmm7
          ││  0x00007f2b4adc2d4c:   vsubsd 0x80(%rax),%xmm2,%xmm2
   0.41%  ││  0x00007f2b4adc2d54:   vsubsd %xmm4,%xmm7,%xmm7
          ││  0x00007f2b4adc2d58:   vmulsd %xmm6,%xmm7,%xmm7
          ││  0x00007f2b4adc2d5c:   vmovdqu %xmm3,%xmm4
          ││  0x00007f2b4adc2d60:   vsubsd %xmm2,%xmm3,%xmm3
   0.45%  ││  0x00007f2b4adc2d64:   vaddsd %xmm3,%xmm2,%xmm2
          ││  0x00007f2b4adc2d68:   vsubsd %xmm2,%xmm4,%xmm4
          ││  0x00007f2b4adc2d6c:   vaddsd %xmm4,%xmm0,%xmm0
   0.45%  ││  0x00007f2b4adc2d70:   vsubsd %xmm7,%xmm0,%xmm0
   1.74%  ││  0x00007f2b4adc2d74:   vaddsd %xmm3,%xmm0,%xmm0
   1.70%  ││  0x00007f2b4adc2d78:   jmp    0x00007f2b4adc2e99
          ↘│  0x00007f2b4adc2d7d:   add    $0x40,%edx
           │  0x00007f2b4adc2d80:   mov    %r10,%r9
           │  0x00007f2b4adc2d83:   mov    %r8,%r10
           │  0x00007f2b4adc2d86:   mov    $0x0,%r8d
           │  0x00007f2b4adc2d8c:   cmp    $0x0,%r9
           ╰  0x00007f2b4adc2d90:   jne    0x00007f2b4adc2aca
              0x00007f2b4adc2d96:   add    $0x40,%edx
              0x00007f2b4adc2d99:   mov    %r10,%r9
              0x00007f2b4adc2d9c:   mov    %r8,%r10
              0x00007f2b4adc2d9f:   nop
....................................................................................................
  69.34%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking, version 3, compile id 937 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@64 (line 101)
              0x00007f2b4b23cf8c:   vmovapd %xmm0,%xmm9
              0x00007f2b4b23cf90:   mov    $0x2,%r13d
          ╭   0x00007f2b4b23cf96:   jmp    0x00007f2b4b23cfce           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@25 (line 96)
          │   0x00007f2b4b23cf9b:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@29 (line 96)
          │↗  0x00007f2b4b23cfa0:   mov    %r13d,%r10d
          ││  0x00007f2b4b23cfa3:   dec    %r10d                        ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@35 (line 98)
   0.56%  ││  0x00007f2b4b23cfa6:   vcvtsi2sd %r10d,%xmm0,%xmm0         ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@36 (line 98)
   0.00%  ││  0x00007f2b4b23cfab:   vmulsd %xmm10,%xmm0,%xmm0
   1.50%  ││  0x00007f2b4b23cfb0:   call   0x00007f2b4adc2640           ;   {runtime_call Stub&lt;AMD64MathStub.tan&gt;}
          ││  0x00007f2b4b23cfb5:   nop
          ││  0x00007f2b4b23cfb6:   vaddsd %xmm11,%xmm0,%xmm1           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@49 (line 99)
   1.45%  ││  0x00007f2b4b23cfbb:   vmulsd %xmm0,%xmm11,%xmm0           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@56 (line 100)
   0.04%  ││  0x00007f2b4b23cfbf:   vsubsd %xmm0,%xmm8,%xmm0            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@57 (line 100)
   1.98%  ││  0x00007f2b4b23cfc3:   vdivsd %xmm0,%xmm1,%xmm0            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@63 (line 101)
   7.01%  ││  0x00007f2b4b23cfc7:   vaddsd %xmm0,%xmm9,%xmm9            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@64 (line 101)
   2.04%  ││  0x00007f2b4b23cfcb:   inc    %r13d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@67 (line 96)
          ↘│  0x00007f2b4b23cfce:   cmp    %r13d,%ebp
           ╰  0x00007f2b4b23cfd1:   jg     0x00007f2b4b23cfa0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@29 (line 96)
              0x00007f2b4b23cfd3:   vmovq  %xmm9,%r10                   ;* unwind (locked if synchronized)
                                                                        ; - java.lang.Double::doubleToRawLongBits@-3
                                                                        ; - java.lang.FdLibm::__LO@1 (line 86)
                                                                        ; - java.lang.FdLibm$Atan::compute@35 (line 1271)
                                                                        ; - java.lang.StrictMath::atan@1 (line 227)
....................................................................................................
  14.58%  <total for region 2>

....[Hottest Regions]...............................................................................
  69.34%                       <unknown> 
  14.58%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking, version 3, compile id 937 
   8.47%                       <unknown> 
   3.33%                       <unknown> 
   1.30%               kernel  [unknown] 
   1.15%                       <unknown> 
   0.51%                       <unknown> 
   0.10%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.82%  <...other 271 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  82.84%                       <unknown> 
  14.59%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking, version 3, compile id 937 
   2.27%               kernel  [unknown] 
   0.03%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%            libjvm.so  outputStream::print 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  defaultStream::hold 
   0.01%         libc-2.31.so  syscall 
   0.01%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%   libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%         libc-2.31.so  __stpcpy_avx2 
   0.15%  <...other 65 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  82.84%                     
  14.59%       jvmci, level 4
   2.27%               kernel
   0.13%            libjvm.so
   0.10%         libc-2.31.so
   0.02%  libjvmcicompiler.so
   0.02%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.00%     perf-2113082.map
   0.00%          c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:03:47

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

Benchmark                                                              (iterations)  Mode  Cnt     Score   Error  Units
LoopInvariantCodeMotionBenchmark.initial_loop                                 16384  avgt    5  2228.318 ± 0.323  us/op
LoopInvariantCodeMotionBenchmark.initial_loop:asm                             16384  avgt            NaN            ---
LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking             16384  avgt    5  1245.736 ± 1.257  us/op
LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking:asm         16384  avgt            NaN            ---
