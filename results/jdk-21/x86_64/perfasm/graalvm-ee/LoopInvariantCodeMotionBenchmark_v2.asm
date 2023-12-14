# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
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
# Warmup Iteration   1: 4591.755 us/op
# Warmup Iteration   2: 4342.492 us/op
# Warmup Iteration   3: 4317.500 us/op
# Warmup Iteration   4: 4331.283 us/op
# Warmup Iteration   5: 4312.121 us/op
Iteration   1: 4305.367 us/op
Iteration   2: 4312.526 us/op
Iteration   3: 4313.897 us/op
Iteration   4: 4314.322 us/op
Iteration   5: 4338.306 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.initial_loop":
  4316.884 ±(99.9%) 48.173 us/op [Average]
  (min, avg, max) = (4305.367, 4316.884, 4338.306), stdev = 12.510
  CI (99.9%): [4268.710, 4365.057] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.initial_loop:asm":
PrintAssembly processed: 224090 total address lines.
Perf output processed (skipped 78.947 seconds):
 Column 1: cycles (51126 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

                                 --------------------------------------------------------------------------------
                                 [/Disassembly]
                                 </print_nmethod>
                                 <task_queued compile_id='1063' compile_kind='osr' method='com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark initial_loop ()D' bytes='93' count='8' backedge_count='117989' iicount='8' osr_bci='21' stamp='28,159' comment='tiered' hot_count='117989'/>
                                 - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                 Decoding RuntimeStub - Stub&lt;AMD64MathStub.tan&gt; 0x00007f572e918490
                                 --------------------------------------------------------------------------------
   0.24%                           0x00007f572e919dc0:   sub    $0x18,%rsp
   0.29%                           0x00007f572e919dc4:   push   %rbx
   0.30%                           0x00007f572e919dc5:   sub    $0x10,%rsp
   0.04%                           0x00007f572e919dc9:   vmovsd %xmm0,0x8(%rsp)
   0.32%                           0x00007f572e919dcf:   vpextrw $0x3,%xmm0,%eax
   0.33%                           0x00007f572e919dd4:   and    $0x7fff,%eax
   0.33%                           0x00007f572e919dda:   sub    $0x3fba,%eax
   0.58%                           0x00007f572e919de0:   cmp    $0x10e,%eax
          ╭                        0x00007f572e919de6:   ja     0x00007f572e919fe9
   0.31%  │                        0x00007f572e919dec:   vmovdqu -0x17b4(%rip),%xmm5        # 0x00007f572e918640
          │                        0x00007f572e919df4:   vmovdqu -0x17ac(%rip),%xmm6        # 0x00007f572e918650
          │                        0x00007f572e919dfc:   vunpcklpd %xmm0,%xmm0,%xmm0
   0.18%  │                        0x00007f572e919e00:   vmovdqu -0x17a8(%rip),%xmm4        # 0x00007f572e918660
   0.36%  │                        0x00007f572e919e08:   vandpd %xmm0,%xmm4,%xmm4
   0.00%  │                        0x00007f572e919e0c:   vmovdqu -0x17a4(%rip),%xmm1        # 0x00007f572e918670
          │                        0x00007f572e919e14:   vmulpd %xmm0,%xmm1,%xmm1
   0.15%  │                        0x00007f572e919e18:   vpor   %xmm4,%xmm5,%xmm5
   0.33%  │                        0x00007f572e919e1c:   vaddpd %xmm5,%xmm1,%xmm1
   1.08%  │                        0x00007f572e919e20:   vmovdqu %xmm1,%xmm7
   0.00%  │                        0x00007f572e919e24:   vunpckhpd %xmm7,%xmm7,%xmm7
   0.44%  │                        0x00007f572e919e28:   vcvttsd2si %xmm7,%edx
   1.78%  │                        0x00007f572e919e2c:   vcvttpd2dq %xmm1,%xmm1
   0.21%  │                        0x00007f572e919e30:   vcvtdq2pd %xmm1,%xmm1
   0.98%  │                        0x00007f572e919e34:   vmulpd %xmm6,%xmm1,%xmm1
   1.26%  │                        0x00007f572e919e38:   vmovdqu -0x17c0(%rip),%xmm3        # 0x00007f572e918680
   0.18%  │                        0x00007f572e919e40:   vmovq  -0x1838(%rip),%xmm5        # 0x00007f572e918610
          │                        0x00007f572e919e48:   add    $0x72900,%rdx
          │                        0x00007f572e919e4f:   vmovdqu -0x17c7(%rip),%xmm4        # 0x00007f572e918690
   0.31%  │                        0x00007f572e919e57:   vmulpd %xmm1,%xmm3,%xmm3
   1.22%  │                        0x00007f572e919e5b:   and    $0x1f,%rdx
   0.00%  │                        0x00007f572e919e5f:   vmulsd %xmm1,%xmm5,%xmm5
   0.30%  │                        0x00007f572e919e63:   mov    %rdx,%rcx
          │                        0x00007f572e919e66:   vmulpd %xmm1,%xmm4,%xmm4
   0.39%  │                        0x00007f572e919e6a:   shl    %rcx
          │                        0x00007f572e919e6d:   vsubpd %xmm3,%xmm0,%xmm0
   0.72%  │                        0x00007f572e919e71:   vmulpd -0x17d9(%rip),%xmm1,%xmm1        # 0x00007f572e9186a0
          │                        0x00007f572e919e79:   add    %rcx,%rdx
   0.15%  │                        0x00007f572e919e7c:   shl    $0x2,%rcx
          │                        0x00007f572e919e80:   add    %rcx,%rdx
   0.26%  │                        0x00007f572e919e83:   vaddsd %xmm0,%xmm5,%xmm5
   1.02%  │                        0x00007f572e919e87:   vmovdqu %xmm0,%xmm2
   0.17%  │                        0x00007f572e919e8b:   vsubpd %xmm4,%xmm0,%xmm0
   0.15%  │                        0x00007f572e919e8f:   vmovq  -0x187f(%rip),%xmm6        # 0x00007f572e918618
          │                        0x00007f572e919e97:   shl    $0x4,%rdx
   0.16%  │                        0x00007f572e919e9b:   lea    -0x17f2(%rip),%rax        # 0x00007f572e9186b0
   0.19%  │                        0x00007f572e919ea2:   vandpd -0x1fa(%rip),%xmm5,%xmm5        # 0x00007f572e919cb0
   0.15%  │                        0x00007f572e919eaa:   vmovdqu %xmm0,%xmm3
          │                        0x00007f572e919eae:   add    %rdx,%rax
   0.17%  │                        0x00007f572e919eb1:   vsubpd %xmm0,%xmm2,%xmm2
   1.85%  │                        0x00007f572e919eb5:   vunpckhpd %xmm0,%xmm0,%xmm0
   0.00%  │                        0x00007f572e919eb9:   vdivsd %xmm5,%xmm6,%xmm6
   3.79%  │                        0x00007f572e919ebd:   vsubpd %xmm4,%xmm2,%xmm2
          │                        0x00007f572e919ec1:   vmovdqu 0x10(%rax),%xmm7
   0.01%  │                        0x00007f572e919ec6:   vsubsd %xmm5,%xmm3,%xmm3
          │                        0x00007f572e919eca:   vmulpd %xmm0,%xmm7,%xmm7
   0.48%  │                        0x00007f572e919ece:   vsubpd %xmm1,%xmm2,%xmm2
          │                        0x00007f572e919ed2:   vmovdqu 0x30(%rax),%xmm1
   0.01%  │                        0x00007f572e919ed7:   vmulpd %xmm0,%xmm1,%xmm1
          │                        0x00007f572e919edb:   vmovdqu 0x60(%rax),%xmm4
   0.46%  │                        0x00007f572e919ee0:   vmulpd %xmm0,%xmm4,%xmm4
          │                        0x00007f572e919ee4:   vaddsd %xmm3,%xmm2,%xmm2
   0.01%  │                        0x00007f572e919ee8:   vmovdqu %xmm0,%xmm3
          │                        0x00007f572e919eec:   vmulpd %xmm0,%xmm0,%xmm0
   0.49%  │                        0x00007f572e919ef0:   vaddpd (%rax),%xmm7,%xmm7
   0.00%  │                        0x00007f572e919ef4:   vaddpd 0x20(%rax),%xmm1,%xmm1
   0.01%  │                        0x00007f572e919ef9:   vmulpd %xmm0,%xmm1,%xmm1
          │                        0x00007f572e919efd:   vaddpd 0x50(%rax),%xmm4,%xmm4
   0.50%  │                        0x00007f572e919f02:   vaddpd %xmm1,%xmm7,%xmm7
   0.15%  │                        0x00007f572e919f06:   vmovdqu 0x70(%rax),%xmm1
   0.01%  │                        0x00007f572e919f0b:   vmulpd %xmm0,%xmm1,%xmm1
          │                        0x00007f572e919f0f:   vmulpd %xmm0,%xmm0,%xmm0
   0.29%  │                        0x00007f572e919f13:   vaddpd %xmm1,%xmm4,%xmm4
   0.12%  │                        0x00007f572e919f17:   vmovdqu 0x40(%rax),%xmm1
   0.01%  │                        0x00007f572e919f1c:   vmulpd %xmm0,%xmm1,%xmm1
   0.01%  │                        0x00007f572e919f20:   vaddpd %xmm1,%xmm7,%xmm7
   1.03%  │                        0x00007f572e919f24:   vmovdqu %xmm3,%xmm1
   0.00%  │                        0x00007f572e919f28:   vmulpd %xmm0,%xmm3,%xmm3
   0.00%  │                        0x00007f572e919f2c:   vmulsd %xmm0,%xmm0,%xmm0
          │                        0x00007f572e919f30:   vmulpd 0x90(%rax),%xmm1,%xmm1
   0.75%  │                        0x00007f572e919f38:   vmulpd %xmm3,%xmm4,%xmm4
   0.01%  │                        0x00007f572e919f3c:   vmovdqu %xmm1,%xmm3
   0.00%  │                        0x00007f572e919f40:   vaddpd %xmm4,%xmm7,%xmm7
   1.55%  │                        0x00007f572e919f44:   vmovdqu %xmm1,%xmm4
   0.00%  │                        0x00007f572e919f48:   vmulsd %xmm7,%xmm0,%xmm0
   1.63%  │                        0x00007f572e919f4c:   vunpckhpd %xmm7,%xmm7,%xmm7
          │                        0x00007f572e919f50:   vaddsd %xmm7,%xmm0,%xmm0
   1.94%  │                        0x00007f572e919f54:   vunpckhpd %xmm1,%xmm1,%xmm1
          │                        0x00007f572e919f58:   vaddsd %xmm1,%xmm3,%xmm3
          │                        0x00007f572e919f5c:   vsubsd %xmm3,%xmm4,%xmm4
          │                        0x00007f572e919f60:   vaddsd %xmm4,%xmm1,%xmm1
   0.50%  │                        0x00007f572e919f64:   vmovdqu %xmm2,%xmm4
          │                        0x00007f572e919f68:   vmovq  0x90(%rax),%xmm7
          │                        0x00007f572e919f70:   vunpckhpd %xmm2,%xmm2,%xmm2
          │                        0x00007f572e919f74:   vaddsd 0x98(%rax),%xmm7,%xmm7
   0.47%  │                        0x00007f572e919f7c:   vmulsd %xmm2,%xmm7,%xmm7
          │                        0x00007f572e919f80:   vaddsd 0x88(%rax),%xmm7,%xmm7
          │                        0x00007f572e919f88:   vaddsd %xmm1,%xmm7,%xmm7
          │                        0x00007f572e919f8c:   vaddsd %xmm7,%xmm0,%xmm0
   1.05%  │                        0x00007f572e919f90:   vmovq  -0x1980(%rip),%xmm7        # 0x00007f572e918618
          │                        0x00007f572e919f98:   vmulsd %xmm6,%xmm4,%xmm4
          │                        0x00007f572e919f9c:   vmovq  0xa8(%rax),%xmm2
          │                        0x00007f572e919fa4:   vandpd %xmm6,%xmm2,%xmm2
   0.44%  │                        0x00007f572e919fa8:   vmulsd %xmm2,%xmm5,%xmm5
   0.00%  │                        0x00007f572e919fac:   vmulsd 0xa0(%rax),%xmm6,%xmm6
          │                        0x00007f572e919fb4:   vsubsd %xmm5,%xmm7,%xmm7
          │                        0x00007f572e919fb8:   vsubsd 0x80(%rax),%xmm2,%xmm2
   0.48%  │                        0x00007f572e919fc0:   vsubsd %xmm4,%xmm7,%xmm7
          │                        0x00007f572e919fc4:   vmulsd %xmm6,%xmm7,%xmm7
          │                        0x00007f572e919fc8:   vmovdqu %xmm3,%xmm4
          │                        0x00007f572e919fcc:   vsubsd %xmm2,%xmm3,%xmm3
   0.48%  │                        0x00007f572e919fd0:   vaddsd %xmm3,%xmm2,%xmm2
   0.00%  │                        0x00007f572e919fd4:   vsubsd %xmm2,%xmm4,%xmm4
          │                        0x00007f572e919fd8:   vaddsd %xmm4,%xmm0,%xmm0
   0.50%  │                        0x00007f572e919fdc:   vsubsd %xmm7,%xmm0,%xmm0
   1.93%  │                        0x00007f572e919fe0:   vaddsd %xmm3,%xmm0,%xmm0
   1.86%  │╭                       0x00007f572e919fe4:   jmp    0x00007f572e91a619
          ↘│╭                      0x00007f572e919fe9:   jg     0x00007f572e91a09d
           ││                      0x00007f572e919fef:   vpextrw $0x3,%xmm0,%eax
           ││                      0x00007f572e919ff4:   mov    %eax,%edx
           ││                      0x00007f572e919ff6:   data16 nopw 0x0(%rax,%rax,1)
           ││                      0x00007f572e91a000:   and    $0x7ff0,%eax
           ││╭                     0x00007f572e91a006:   je     0x00007f572e91a090
           │││                     0x00007f572e91a00c:   and    $0x7fff,%edx
           │││                     0x00007f572e91a012:   cmp    $0x3e20,%edx
           │││╭                    0x00007f572e91a018:   jb     0x00007f572e91a073
           ││││                    0x00007f572e91a01e:   vmovdqu %xmm0,%xmm2
           ││││                    0x00007f572e91a022:   vmovdqu %xmm0,%xmm3
           ││││                    0x00007f572e91a026:   vmovq  -0x36e(%rip),%xmm1        # 0x00007f572e919cc0
           ││││                    0x00007f572e91a02e:   vmulsd %xmm0,%xmm2,%xmm2
           ││││                    0x00007f572e91a032:   vmulsd %xmm2,%xmm3,%xmm3
           ││││                    0x00007f572e91a036:   vmulsd %xmm2,%xmm1,%xmm1
           ││││                    0x00007f572e91a03a:   vaddsd -0x372(%rip),%xmm1,%xmm1        # 0x00007f572e919cd0
           ││││                    0x00007f572e91a042:   vmulsd %xmm2,%xmm1,%xmm1
           ││││                    0x00007f572e91a046:   vaddsd -0x36e(%rip),%xmm1,%xmm1        # 0x00007f572e919ce0
           ││││                    0x00007f572e91a04e:   vmulsd %xmm2,%xmm1,%xmm1
           ││││                    0x00007f572e91a052:   vaddsd -0x36a(%rip),%xmm1,%xmm1        # 0x00007f572e919cf0
           ││││                    0x00007f572e91a05a:   vmulsd %xmm2,%xmm1,%xmm1
           ││││                    0x00007f572e91a05e:   vaddsd -0x366(%rip),%xmm1,%xmm1        # 0x00007f572e919d00
           ││││                    0x00007f572e91a066:   vmulsd %xmm3,%xmm1,%xmm1
           ││││                    0x00007f572e91a06a:   vaddsd %xmm1,%xmm0,%xmm0
           ││││╭                   0x00007f572e91a06e:   jmp    0x00007f572e91a619
           │││↘│                   0x00007f572e91a073:   vmovq  -0x1a5b(%rip),%xmm3        # 0x00007f572e918620
           │││ │                   0x00007f572e91a07b:   vmulsd %xmm0,%xmm3,%xmm3
           │││ │                   0x00007f572e91a07f:   vaddsd %xmm3,%xmm0,%xmm0
           │││ │                   0x00007f572e91a083:   vmulsd -0x1a8b(%rip),%xmm0,%xmm0        # 0x00007f572e918600
           │││ │╭                  0x00007f572e91a08b:   jmp    0x00007f572e91a619
           ││↘ ││                  0x00007f572e91a090:   vmovdqu %xmm0,%xmm1
           ││  ││                  0x00007f572e91a094:   vmulsd %xmm1,%xmm1,%xmm1
           ││  ││╭                 0x00007f572e91a098:   jmp    0x00007f572e91a619
   0.15%   │↘  │││                 0x00007f572e91a09d:   vpextrw $0x3,%xmm0,%eax
           │   │││                 0x00007f572e91a0a2:   and    $0x7ff0,%eax
           │   │││                 0x00007f572e91a0a8:   cmp    $0x7ff0,%eax
           │   │││╭                0x00007f572e91a0ae:   je     0x00007f572e91a606
   0.13%   │   ││││                0x00007f572e91a0b4:   vpextrw $0x3,%xmm0,%ecx
           │   ││││                0x00007f572e91a0b9:   and    $0x7ff0,%ecx
           │   ││││                0x00007f572e91a0bf:   sub    $0x3f60,%ecx
   0.13%   │   ││││                0x00007f572e91a0c5:   shr    $0x7,%ecx
           │   ││││                0x00007f572e91a0c8:   and    $0xfffc,%ecx
           │   ││││                0x00007f572e91a0ce:   lea    -0x3c5(%rip),%r11        # 0x00007f572e919d10
           │   ││││                0x00007f572e91a0d5:   add    %r11,%rcx
   0.12%   │   ││││                0x00007f572e91a0d8:   vmovq  %xmm0,%rax
           │   ││││                0x00007f572e91a0dd:   mov    0x14(%rcx),%r10d
           │   ││││                0x00007f572e91a0e1:   mov    0x18(%rcx),%r8d
           │   ││││                0x00007f572e91a0e5:   mov    %eax,%edx
   0.15%   │   ││││                0x00007f572e91a0e7:   shr    $0x15,%rax
   0.00%   │   ││││                0x00007f572e91a0eb:   or     $0x80000000,%eax
           │   ││││                0x00007f572e91a0f1:   shr    $0xb,%eax
           │   ││││                0x00007f572e91a0f4:   mov    %r10d,%r9d
   0.16%   │   ││││                0x00007f572e91a0f7:   imul   %rdx,%r10
           │   ││││                0x00007f572e91a0fb:   imul   %rax,%r9
           │   ││││                0x00007f572e91a0ff:   imul   %rax,%r8
           │   ││││                0x00007f572e91a103:   mov    0x10(%rcx),%esi
   0.15%   │   ││││                0x00007f572e91a106:   mov    0xc(%rcx),%edi
           │   ││││                0x00007f572e91a109:   mov    %r10d,%r11d
           │   ││││                0x00007f572e91a10c:   shr    $0x20,%r10
           │   ││││                0x00007f572e91a110:   add    %r10,%r9
   0.12%   │   ││││                0x00007f572e91a113:   add    %r8,%r11
           │   ││││                0x00007f572e91a116:   mov    %r11d,%r8d
           │   ││││                0x00007f572e91a119:   shr    $0x20,%r11
           │   ││││                0x00007f572e91a11d:   add    %r11,%r9
   0.12%   │   ││││                0x00007f572e91a120:   mov    %esi,%r10d
           │   ││││                0x00007f572e91a123:   imul   %rdx,%rsi
           │   ││││                0x00007f572e91a127:   imul   %rax,%r10
           │   ││││                0x00007f572e91a12b:   mov    %edi,%r11d
   0.11%   │   ││││                0x00007f572e91a12e:   imul   %rdx,%rdi
           │   ││││                0x00007f572e91a132:   mov    %esi,%ebx
           │   ││││                0x00007f572e91a134:   shr    $0x20,%rsi
           │   ││││                0x00007f572e91a138:   add    %rbx,%r9
   0.12%   │   ││││                0x00007f572e91a13b:   mov    %r9d,%ebx
           │   ││││                0x00007f572e91a13e:   shr    $0x20,%r9
           │   ││││                0x00007f572e91a142:   add    %rsi,%r10
           │   ││││                0x00007f572e91a145:   add    %r9,%r10
   0.10%   │   ││││                0x00007f572e91a148:   shl    $0x20,%rbx
           │   ││││                0x00007f572e91a14c:   or     %rbx,%r8
           │   ││││                0x00007f572e91a14f:   imul   %rax,%r11
           │   ││││                0x00007f572e91a153:   mov    0x8(%rcx),%r9d
   0.12%   │   ││││                0x00007f572e91a157:   mov    0x4(%rcx),%esi
           │   ││││                0x00007f572e91a15a:   mov    %edi,%ebx
           │   ││││                0x00007f572e91a15c:   shr    $0x20,%rdi
           │   ││││                0x00007f572e91a160:   add    %rbx,%r10
   0.13%   │   ││││                0x00007f572e91a163:   mov    %r10d,%ebx
           │   ││││                0x00007f572e91a166:   shr    $0x20,%r10
           │   ││││                0x00007f572e91a16a:   add    %rdi,%r11
           │   ││││                0x00007f572e91a16d:   add    %r10,%r11
   0.15%   │   ││││                0x00007f572e91a170:   mov    %r9,%rdi
           │   ││││                0x00007f572e91a173:   imul   %rdx,%r9
   0.00%   │   ││││                0x00007f572e91a177:   imul   %rax,%rdi
           │   ││││                0x00007f572e91a17b:   mov    %r9d,%r10d
   0.13%   │   ││││                0x00007f572e91a17e:   shr    $0x20,%r9
           │   ││││                0x00007f572e91a182:   add    %r10,%r11
           │   ││││                0x00007f572e91a185:   mov    %r11d,%r10d
           │   ││││                0x00007f572e91a188:   shr    $0x20,%r11
   0.12%   │   ││││                0x00007f572e91a18c:   add    %r9,%rdi
           │   ││││                0x00007f572e91a18f:   add    %r11,%rdi
           │   ││││                0x00007f572e91a192:   mov    %rsi,%r9
           │   ││││                0x00007f572e91a195:   imul   %rdx,%rsi
   0.15%   │   ││││                0x00007f572e91a199:   imul   %rax,%r9
           │   ││││                0x00007f572e91a19d:   shl    $0x20,%r10
           │   ││││                0x00007f572e91a1a1:   or     %rbx,%r10
           │   ││││                0x00007f572e91a1a4:   mov    (%rcx),%eax
   0.12%   │   ││││                0x00007f572e91a1a6:   mov    %esi,%r11d
           │   ││││                0x00007f572e91a1a9:   shr    $0x20,%rsi
           │   ││││                0x00007f572e91a1ad:   add    %r11,%rdi
           │   ││││                0x00007f572e91a1b0:   mov    %edi,%r11d
   0.13%   │   ││││                0x00007f572e91a1b3:   shr    $0x20,%rdi
           │   ││││                0x00007f572e91a1b7:   add    %rsi,%r9
           │   ││││                0x00007f572e91a1ba:   add    %rdi,%r9
           │   ││││                0x00007f572e91a1bd:   imul   %rax,%rdx
   0.12%   │   ││││                0x00007f572e91a1c1:   vpextrw $0x3,%xmm0,%ebx
           │   ││││                0x00007f572e91a1c6:   lea    -0x4bd(%rip),%rdi        # 0x00007f572e919d10
           │   ││││                0x00007f572e91a1cd:   sub    %rdi,%rcx
   0.12%   │   ││││                0x00007f572e91a1d0:   add    %ecx,%ecx
           │   ││││                0x00007f572e91a1d2:   add    %ecx,%ecx
           │   ││││                0x00007f572e91a1d4:   add    %ecx,%ecx
           │   ││││                0x00007f572e91a1d6:   add    $0x13,%ecx
   0.13%   │   ││││                0x00007f572e91a1d9:   mov    $0x8000,%esi
           │   ││││                0x00007f572e91a1de:   and    %ebx,%esi
           │   ││││                0x00007f572e91a1e0:   shr    $0x4,%ebx
           │   ││││                0x00007f572e91a1e3:   and    $0x7ff,%ebx
   0.13%   │   ││││                0x00007f572e91a1e9:   sub    $0x3ff,%ebx
           │   ││││                0x00007f572e91a1ef:   sub    %ebx,%ecx
           │   ││││                0x00007f572e91a1f1:   add    %rdx,%r9
           │   ││││                0x00007f572e91a1f4:   mov    %ecx,%edx
   0.11%   │   ││││                0x00007f572e91a1f6:   add    $0x20,%edx
           │   ││││                0x00007f572e91a1f9:   nopl   0x0(%rax)
           │   ││││                0x00007f572e91a200:   cmp    $0x0,%ecx
           │   ││││╭               0x00007f572e91a203:   jl     0x00007f572e91a552
           │   │││││               0x00007f572e91a209:   neg    %ecx
   0.12%   │   │││││               0x00007f572e91a20b:   add    $0x1d,%ecx
           │   │││││               0x00007f572e91a20e:   shl    %cl,%r9d
   0.12%   │   │││││               0x00007f572e91a211:   mov    %r9d,%edi
           │   │││││               0x00007f572e91a214:   and    $0x3fffffff,%r9d
           │   │││││               0x00007f572e91a21b:   nopl   0x0(%rax,%rax,1)
           │   │││││               0x00007f572e91a220:   test   $0x20000000,%r9d
           │   │││││╭              0x00007f572e91a227:   jne    0x00007f572e91a57f
   0.05%   │   ││││││              0x00007f572e91a22d:   shr    %cl,%r9d
           │   ││││││              0x00007f572e91a230:   mov    $0x0,%ebx
   0.05%   │   ││││││              0x00007f572e91a235:   shl    $0x20,%r9
           │   ││││││              0x00007f572e91a239:   or     %r11,%r9
   0.00%   │   ││││││         ↗↗↗  0x00007f572e91a23c:   nopl   0x0(%rax)
           │   ││││││         │││  0x00007f572e91a240:   cmp    $0x0,%r9
           │   ││││││╭        │││  0x00007f572e91a244:   je     0x00007f572e91a4fd
   0.14%   │   │││││││  ↗↗    │││  0x00007f572e91a24a:   bsr    %r9,%r11
   0.00%   │   │││││││  ││    │││  0x00007f572e91a24e:   mov    $0x1d,%ecx
           │   │││││││  ││    │││  0x00007f572e91a253:   sub    %r11d,%ecx
           │   │││││││╭ ││    │││  0x00007f572e91a256:   jle    0x00007f572e91a52f
   0.00%   │   ││││││││ ││    │││  0x00007f572e91a25c:   shl    %cl,%r9
   0.00%   │   ││││││││ ││    │││  0x00007f572e91a25f:   mov    %r10,%rax
           │   ││││││││ ││    │││  0x00007f572e91a262:   shl    %cl,%r10
           │   ││││││││ ││    │││  0x00007f572e91a265:   add    %ecx,%edx
           │   ││││││││ ││    │││  0x00007f572e91a267:   neg    %ecx
           │   ││││││││ ││    │││  0x00007f572e91a269:   add    $0x40,%ecx
           │   ││││││││ ││    │││  0x00007f572e91a26c:   shr    %cl,%rax
           │   ││││││││ ││    │││  0x00007f572e91a26f:   shr    %cl,%r8
           │   ││││││││ ││    │││  0x00007f572e91a272:   or     %rax,%r9
           │   ││││││││ ││    │││  0x00007f572e91a275:   or     %r8,%r10
   0.13%   │   ││││││││ ││↗↗↗ │││  0x00007f572e91a278:   vcvtsi2sd %r9,%xmm0,%xmm0
   0.04%   │   ││││││││ │││││ │││  0x00007f572e91a27d:   shr    %r10
   0.01%   │   ││││││││ │││││ │││  0x00007f572e91a280:   vcvtsi2sd %r10,%xmm3,%xmm3
   0.13%   │   ││││││││ │││││ │││  0x00007f572e91a285:   vxorpd %xmm4,%xmm4,%xmm4
           │   ││││││││ │││││ │││  0x00007f572e91a289:   shl    $0x4,%edx
           │   ││││││││ │││││ │││  0x00007f572e91a28c:   neg    %edx
   0.16%   │   ││││││││ │││││ │││  0x00007f572e91a28e:   add    $0x3ff0,%edx
           │   ││││││││ │││││ │││  0x00007f572e91a294:   or     %esi,%edx
   0.00%   │   ││││││││ │││││ │││  0x00007f572e91a296:   xor    %ebx,%edx
           │   ││││││││ │││││ │││  0x00007f572e91a298:   vpinsrw $0x3,%edx,%xmm4,%xmm4
   0.16%   │   ││││││││ │││││ │││  0x00007f572e91a29d:   vmovq  -0x1c7d(%rip),%xmm2        # 0x00007f572e918628
           │   ││││││││ │││││ │││  0x00007f572e91a2a5:   vmovq  -0x1c7d(%rip),%xmm7        # 0x00007f572e918630
           │   ││││││││ │││││ │││  0x00007f572e91a2ad:   vxorpd %xmm5,%xmm5,%xmm5
   0.13%   │   ││││││││ │││││ │││  0x00007f572e91a2b1:   sub    $0x3f0,%edx
   0.01%   │   ││││││││ │││││ │││  0x00007f572e91a2b7:   vpinsrw $0x3,%edx,%xmm5,%xmm5
   0.01%   │   ││││││││ │││││ │││  0x00007f572e91a2bc:   vmulsd %xmm4,%xmm0,%xmm0
   0.15%   │   ││││││││ │││││ │││  0x00007f572e91a2c0:   shl    $0x10,%esi
   0.01%   │   ││││││││ │││││ │││  0x00007f572e91a2c3:   sar    $0x1f,%esi
           │   ││││││││ │││││ │││  0x00007f572e91a2c6:   vmulsd %xmm5,%xmm3,%xmm3
   0.02%   │   ││││││││ │││││ │││  0x00007f572e91a2ca:   vmovdqu %xmm0,%xmm1
   0.15%   │   ││││││││ │││││ │││  0x00007f572e91a2ce:   vmulsd %xmm2,%xmm0,%xmm0
   0.04%   │   ││││││││ │││││ │││  0x00007f572e91a2d2:   shr    $0x1e,%edi
           │   ││││││││ │││││ │││  0x00007f572e91a2d5:   vaddsd %xmm3,%xmm1,%xmm1
   0.05%   │   ││││││││ │││││ │││  0x00007f572e91a2d9:   vmulsd %xmm2,%xmm3,%xmm3
   0.11%   │   ││││││││ │││││ │││  0x00007f572e91a2dd:   add    %esi,%edi
           │   ││││││││ │││││ │││  0x00007f572e91a2df:   xor    %esi,%edi
           │   ││││││││ │││││ │││  0x00007f572e91a2e1:   vmulsd %xmm1,%xmm7,%xmm7
   0.17%   │   ││││││││ │││││ │││  0x00007f572e91a2e5:   mov    %edi,%eax
   0.08%   │   ││││││││ │││││ │││  0x00007f572e91a2e7:   vaddsd %xmm3,%xmm7,%xmm7
   0.32%   │   ││││││││ │││││ │││  0x00007f572e91a2eb:   vmovdqu %xmm0,%xmm2
           │   ││││││││ │││││ │││  0x00007f572e91a2ef:   vaddsd %xmm7,%xmm0,%xmm0
   0.51%   │   ││││││││ │││││ │││  0x00007f572e91a2f3:   vsubsd %xmm0,%xmm2,%xmm2
   0.53%   │   ││││││││ │││││ │││  0x00007f572e91a2f7:   vaddsd %xmm2,%xmm7,%xmm7
   0.46%   │   ││││││││ │││││ │││  0x00007f572e91a2fb:   vmovdqu -0x1c93(%rip),%xmm1        # 0x00007f572e918670
           │   ││││││││ │││││ │││  0x00007f572e91a303:   vmovddup %xmm0,%xmm0
           │   ││││││││ │││││ │││  0x00007f572e91a307:   vmovdqu -0x1caf(%rip),%xmm4        # 0x00007f572e918660
           │   ││││││││ │││││ │││  0x00007f572e91a30f:   vandpd %xmm0,%xmm4,%xmm4
   0.10%   │   ││││││││ │││││ │││  0x00007f572e91a313:   vmulpd %xmm0,%xmm1,%xmm1
           │   ││││││││ │││││ │││  0x00007f572e91a317:   vmovddup %xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007f572e91a31b:   vmovdqu -0x1ce3(%rip),%xmm5        # 0x00007f572e918640
           │   ││││││││ │││││ │││  0x00007f572e91a323:   vmovdqu -0x1cdb(%rip),%xmm6        # 0x00007f572e918650
   0.14%   │   ││││││││ │││││ │││  0x00007f572e91a32b:   vpor   %xmm4,%xmm5,%xmm5
   0.00%   │   ││││││││ │││││ │││  0x00007f572e91a32f:   vaddpd %xmm5,%xmm1,%xmm1
   0.04%   │   ││││││││ │││││ │││  0x00007f572e91a333:   vmovdqu %xmm1,%xmm5
           │   ││││││││ │││││ │││  0x00007f572e91a337:   vunpckhpd %xmm5,%xmm5,%xmm5
   0.16%   │   ││││││││ │││││ │││  0x00007f572e91a33b:   vcvttsd2si %xmm5,%edx
   0.83%   │   ││││││││ │││││ │││  0x00007f572e91a33f:   vcvttpd2dq %xmm1,%xmm1
   0.00%   │   ││││││││ │││││ │││  0x00007f572e91a343:   vcvtdq2pd %xmm1,%xmm1
   0.40%   │   ││││││││ │││││ │││  0x00007f572e91a347:   vmulpd %xmm6,%xmm1,%xmm1
   0.53%   │   ││││││││ │││││ │││  0x00007f572e91a34b:   vmovdqu -0x1cd3(%rip),%xmm3        # 0x00007f572e918680
           │   ││││││││ │││││ │││  0x00007f572e91a353:   vmovq  -0x1d4b(%rip),%xmm5        # 0x00007f572e918610
           │   ││││││││ │││││ │││  0x00007f572e91a35b:   shl    $0x4,%eax
           │   ││││││││ │││││ │││  0x00007f572e91a35e:   add    $0x72900,%edx
   0.15%   │   ││││││││ │││││ │││  0x00007f572e91a364:   vmovdqu -0x1cdc(%rip),%xmm4        # 0x00007f572e918690
           │   ││││││││ │││││ │││  0x00007f572e91a36c:   vmulpd %xmm1,%xmm3,%xmm3
   0.44%   │   ││││││││ │││││ │││  0x00007f572e91a370:   add    %eax,%edx
           │   ││││││││ │││││ │││  0x00007f572e91a372:   and    $0x1f,%edx
           │   ││││││││ │││││ │││  0x00007f572e91a375:   vmulsd %xmm1,%xmm5,%xmm5
   0.08%   │   ││││││││ │││││ │││  0x00007f572e91a379:   mov    %edx,%ecx
   0.08%   │   ││││││││ │││││ │││  0x00007f572e91a37b:   vmulpd %xmm1,%xmm4,%xmm4
   0.03%   │   ││││││││ │││││ │││  0x00007f572e91a37f:   shl    %ecx
           │   ││││││││ │││││ │││  0x00007f572e91a381:   vsubpd %xmm3,%xmm0,%xmm0
   0.35%   │   ││││││││ │││││ │││  0x00007f572e91a385:   vmulpd -0x1ced(%rip),%xmm1,%xmm1        # 0x00007f572e9186a0
           │   ││││││││ │││││ │││  0x00007f572e91a38d:   add    %ecx,%edx
           │   ││││││││ │││││ │││  0x00007f572e91a38f:   shl    $0x2,%ecx
           │   ││││││││ │││││ │││  0x00007f572e91a392:   add    %ecx,%edx
   0.13%   │   ││││││││ │││││ │││  0x00007f572e91a394:   vaddsd %xmm0,%xmm5,%xmm5
   0.46%   │   ││││││││ │││││ │││  0x00007f572e91a398:   vmovdqu %xmm0,%xmm2
           │   ││││││││ │││││ │││  0x00007f572e91a39c:   vsubpd %xmm4,%xmm0,%xmm0
   0.12%   │   ││││││││ │││││ │││  0x00007f572e91a3a0:   vmovq  -0x1d90(%rip),%xmm6        # 0x00007f572e918618
           │   ││││││││ │││││ │││  0x00007f572e91a3a8:   shl    $0x4,%edx
   0.04%   │   ││││││││ │││││ │││  0x00007f572e91a3ab:   lea    -0x1d02(%rip),%rax        # 0x00007f572e9186b0
           │   ││││││││ │││││ │││  0x00007f572e91a3b2:   vandpd -0x70a(%rip),%xmm5,%xmm5        # 0x00007f572e919cb0
   0.16%   │   ││││││││ │││││ │││  0x00007f572e91a3ba:   vmovdqu %xmm0,%xmm3
           │   ││││││││ │││││ │││  0x00007f572e91a3be:   add    %rdx,%rax
   0.04%   │   ││││││││ │││││ │││  0x00007f572e91a3c1:   vsubpd %xmm0,%xmm2,%xmm2
   0.40%   │   ││││││││ │││││ │││  0x00007f572e91a3c5:   vunpckhpd %xmm0,%xmm0,%xmm0
   0.04%   │   ││││││││ │││││ │││  0x00007f572e91a3c9:   vdivsd %xmm5,%xmm6,%xmm6
   1.38%   │   ││││││││ │││││ │││  0x00007f572e91a3cd:   vsubpd %xmm4,%xmm2,%xmm2
           │   ││││││││ │││││ │││  0x00007f572e91a3d1:   vsubsd %xmm5,%xmm3,%xmm3
           │   ││││││││ │││││ │││  0x00007f572e91a3d5:   vsubpd %xmm1,%xmm2,%xmm2
           │   ││││││││ │││││ │││  0x00007f572e91a3d9:   vmovdqu 0x30(%rax),%xmm1
   0.14%   │   ││││││││ │││││ │││  0x00007f572e91a3de:   vaddpd %xmm7,%xmm2,%xmm2
   0.03%   │   ││││││││ │││││ │││  0x00007f572e91a3e2:   vmovdqu 0x10(%rax),%xmm7
           │   ││││││││ │││││ │││  0x00007f572e91a3e7:   vmulpd %xmm0,%xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007f572e91a3eb:   vmovdqu 0x60(%rax),%xmm4
   0.10%   │   ││││││││ │││││ │││  0x00007f572e91a3f0:   vmulpd %xmm0,%xmm1,%xmm1
   0.04%   │   ││││││││ │││││ │││  0x00007f572e91a3f4:   vmulpd %xmm0,%xmm4,%xmm4
           │   ││││││││ │││││ │││  0x00007f572e91a3f8:   vaddsd %xmm3,%xmm2,%xmm2
   0.38%   │   ││││││││ │││││ │││  0x00007f572e91a3fc:   vmovdqu %xmm0,%xmm3
   0.00%   │   ││││││││ │││││ │││  0x00007f572e91a400:   vmulpd %xmm0,%xmm0,%xmm0
           │   ││││││││ │││││ │││  0x00007f572e91a404:   vaddpd (%rax),%xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007f572e91a408:   vaddpd 0x20(%rax),%xmm1,%xmm1
   0.13%   │   ││││││││ │││││ │││  0x00007f572e91a40d:   vmulpd %xmm0,%xmm1,%xmm1
   0.00%   │   ││││││││ │││││ │││  0x00007f572e91a411:   vaddpd 0x50(%rax),%xmm4,%xmm4
           │   ││││││││ │││││ │││  0x00007f572e91a416:   vaddpd %xmm1,%xmm7,%xmm7
   0.00%   │   ││││││││ │││││ │││  0x00007f572e91a41a:   vmovdqu 0x70(%rax),%xmm1
   0.11%   │   ││││││││ │││││ │││  0x00007f572e91a41f:   vmulpd %xmm0,%xmm1,%xmm1
           │   ││││││││ │││││ │││  0x00007f572e91a423:   vmulpd %xmm0,%xmm0,%xmm0
           │   ││││││││ │││││ │││  0x00007f572e91a427:   vaddpd %xmm1,%xmm4,%xmm4
   0.01%   │   ││││││││ │││││ │││  0x00007f572e91a42b:   vmovdqu 0x40(%rax),%xmm1
   0.10%   │   ││││││││ │││││ │││  0x00007f572e91a430:   vmulpd %xmm0,%xmm1,%xmm1
           │   ││││││││ │││││ │││  0x00007f572e91a434:   vaddpd %xmm1,%xmm7,%xmm7
   0.06%   │   ││││││││ │││││ │││  0x00007f572e91a438:   vmovdqu %xmm3,%xmm1
           │   ││││││││ │││││ │││  0x00007f572e91a43c:   vmulpd %xmm0,%xmm3,%xmm3
   0.09%   │   ││││││││ │││││ │││  0x00007f572e91a440:   vmulsd %xmm0,%xmm0,%xmm0
           │   ││││││││ │││││ │││  0x00007f572e91a444:   vmulpd 0x90(%rax),%xmm1,%xmm1
   0.06%   │   ││││││││ │││││ │││  0x00007f572e91a44c:   vmulpd %xmm3,%xmm4,%xmm4
           │   ││││││││ │││││ │││  0x00007f572e91a450:   vmovdqu %xmm1,%xmm3
   0.09%   │   ││││││││ │││││ │││  0x00007f572e91a454:   vaddpd %xmm4,%xmm7,%xmm7
   0.30%   │   ││││││││ │││││ │││  0x00007f572e91a458:   vmovdqu %xmm1,%xmm4
           │   ││││││││ │││││ │││  0x00007f572e91a45c:   vmulsd %xmm7,%xmm0,%xmm0
   0.46%   │   ││││││││ │││││ │││  0x00007f572e91a460:   vunpckhpd %xmm7,%xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007f572e91a464:   vaddsd %xmm7,%xmm0,%xmm0
   0.48%   │   ││││││││ │││││ │││  0x00007f572e91a468:   vunpckhpd %xmm1,%xmm1,%xmm1
   0.00%   │   ││││││││ │││││ │││  0x00007f572e91a46c:   vaddsd %xmm1,%xmm3,%xmm3
           │   ││││││││ │││││ │││  0x00007f572e91a470:   vsubsd %xmm3,%xmm4,%xmm4
           │   ││││││││ │││││ │││  0x00007f572e91a474:   vaddsd %xmm4,%xmm1,%xmm1
   0.13%   │   ││││││││ │││││ │││  0x00007f572e91a478:   vmovdqu %xmm2,%xmm4
           │   ││││││││ │││││ │││  0x00007f572e91a47c:   vmovq  0x90(%rax),%xmm7
           │   ││││││││ │││││ │││  0x00007f572e91a484:   vunpckhpd %xmm2,%xmm2,%xmm2
           │   ││││││││ │││││ │││  0x00007f572e91a488:   vaddsd 0x98(%rax),%xmm7,%xmm7
   0.11%   │   ││││││││ │││││ │││  0x00007f572e91a490:   vmulsd %xmm2,%xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007f572e91a494:   vaddsd 0x88(%rax),%xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007f572e91a49c:   vaddsd %xmm1,%xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007f572e91a4a0:   vaddsd %xmm7,%xmm0,%xmm0
   0.29%   │   ││││││││ │││││ │││  0x00007f572e91a4a4:   vmovq  -0x1e94(%rip),%xmm7        # 0x00007f572e918618
           │   ││││││││ │││││ │││  0x00007f572e91a4ac:   vmulsd %xmm6,%xmm4,%xmm4
           │   ││││││││ │││││ │││  0x00007f572e91a4b0:   vmovq  0xa8(%rax),%xmm2
           │   ││││││││ │││││ │││  0x00007f572e91a4b8:   vandpd %xmm6,%xmm2,%xmm2
   0.16%   │   ││││││││ │││││ │││  0x00007f572e91a4bc:   vmulsd %xmm2,%xmm5,%xmm5
           │   ││││││││ │││││ │││  0x00007f572e91a4c0:   vmulsd 0xa0(%rax),%xmm6,%xmm6
           │   ││││││││ │││││ │││  0x00007f572e91a4c8:   vsubsd %xmm5,%xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007f572e91a4cc:   vsubsd 0x80(%rax),%xmm2,%xmm2
   0.13%   │   ││││││││ │││││ │││  0x00007f572e91a4d4:   vsubsd %xmm4,%xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007f572e91a4d8:   vmulsd %xmm6,%xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007f572e91a4dc:   vmovdqu %xmm3,%xmm4
           │   ││││││││ │││││ │││  0x00007f572e91a4e0:   vsubsd %xmm2,%xmm3,%xmm3
   0.14%   │   ││││││││ │││││ │││  0x00007f572e91a4e4:   vaddsd %xmm3,%xmm2,%xmm2
   0.00%   │   ││││││││ │││││ │││  0x00007f572e91a4e8:   vsubsd %xmm2,%xmm4,%xmm4
           │   ││││││││ │││││ │││  0x00007f572e91a4ec:   vaddsd %xmm4,%xmm0,%xmm0
   0.15%   │   ││││││││ │││││ │││  0x00007f572e91a4f0:   vsubsd %xmm7,%xmm0,%xmm0
   0.44%   │   ││││││││ │││││ │││  0x00007f572e91a4f4:   vaddsd %xmm3,%xmm0,%xmm0
   0.60%   │   ││││││││╭│││││ │││  0x00007f572e91a4f8:   jmp    0x00007f572e91a619
           │   ││││││↘│││││││ │││  0x00007f572e91a4fd:   add    $0x40,%edx
           │   ││││││ │││││││ │││  0x00007f572e91a500:   mov    %r10,%r9
           │   ││││││ │││││││ │││  0x00007f572e91a503:   mov    %r8,%r10
           │   ││││││ │││││││ │││  0x00007f572e91a506:   mov    $0x0,%r8d
           │   ││││││ │││││││ │││  0x00007f572e91a50c:   cmp    $0x0,%r9
           │   ││││││ ││╰││││ │││  0x00007f572e91a510:   jne    0x00007f572e91a24a
           │   ││││││ ││ ││││ │││  0x00007f572e91a516:   add    $0x40,%edx
           │   ││││││ ││ ││││ │││  0x00007f572e91a519:   mov    %r10,%r9
           │   ││││││ ││ ││││ │││  0x00007f572e91a51c:   mov    %r8,%r10
           │   ││││││ ││ ││││ │││  0x00007f572e91a51f:   nop
           │   ││││││ ││ ││││ │││  0x00007f572e91a520:   cmp    $0x0,%r9
           │   ││││││ ││ ╰│││ │││  0x00007f572e91a524:   jne    0x00007f572e91a24a
           │   ││││││ ││  ╰││ │││  0x00007f572e91a52a:   jmp    0x00007f572e91a278
           │   ││││││ ↘│   ╰│ │││  0x00007f572e91a52f:   je     0x00007f572e91a278
   0.14%   │   ││││││  │    │ │││  0x00007f572e91a535:   neg    %ecx
   0.00%   │   ││││││  │    │ │││  0x00007f572e91a537:   shr    %cl,%r10
   0.13%   │   ││││││  │    │ │││  0x00007f572e91a53a:   mov    %r9,%rax
   0.00%   │   ││││││  │    │ │││  0x00007f572e91a53d:   shr    %cl,%r9
   0.13%   │   ││││││  │    │ │││  0x00007f572e91a540:   sub    %ecx,%edx
   0.00%   │   ││││││  │    │ │││  0x00007f572e91a542:   neg    %ecx
           │   ││││││  │    │ │││  0x00007f572e91a544:   add    $0x40,%ecx
           │   ││││││  │    │ │││  0x00007f572e91a547:   shl    %cl,%rax
   0.15%   │   ││││││  │    │ │││  0x00007f572e91a54a:   or     %rax,%r10
   0.00%   │   ││││││  │    ╰ │││  0x00007f572e91a54d:   jmp    0x00007f572e91a278
           │   ││││↘│  │      │││  0x00007f572e91a552:   not    %ecx
           │   ││││ │  │      │││  0x00007f572e91a554:   shl    $0x20,%r9
           │   ││││ │  │      │││  0x00007f572e91a558:   or     %r11,%r9
           │   ││││ │  │      │││  0x00007f572e91a55b:   shl    %cl,%r9
           │   ││││ │  │      │││  0x00007f572e91a55e:   mov    %r9,%rdi
           │   ││││ │  │      │││  0x00007f572e91a561:   test   $0x80000000,%r9d
           │   ││││ │  │     ╭│││  0x00007f572e91a568:   jne    0x00007f572e91a5c5
           │   ││││ │  │     ││││  0x00007f572e91a56e:   shr    %cl,%r9d
           │   ││││ │  │     ││││  0x00007f572e91a571:   mov    $0x0,%ebx
           │   ││││ │  │     ││││  0x00007f572e91a576:   shr    $0x2,%rdi
           │   ││││ │  │     │╰││  0x00007f572e91a57a:   jmp    0x00007f572e91a23c
   0.07%   │   ││││ ↘  │     │ ││  0x00007f572e91a57f:   shr    %cl,%r9d
   0.00%   │   ││││    │     │ ││  0x00007f572e91a582:   mov    $0x40000000,%ebx
   0.05%   │   ││││    │     │ ││  0x00007f572e91a587:   shr    %cl,%ebx
   0.00%   │   ││││    │     │ ││  0x00007f572e91a589:   shl    $0x20,%r9
   0.08%   │   ││││    │     │ ││  0x00007f572e91a58d:   or     %r11,%r9
           │   ││││    │     │ ││  0x00007f572e91a590:   shl    $0x20,%rbx
           │   ││││    │     │ ││  0x00007f572e91a594:   add    $0x40000000,%edi
           │   ││││    │     │ ││  0x00007f572e91a59a:   mov    $0x0,%ecx
   0.06%   │   ││││    │     │ ││  0x00007f572e91a59f:   mov    $0x0,%r11d
   0.00%   │   ││││    │     │ ││  0x00007f572e91a5a5:   sub    %r8,%rcx
           │   ││││    │     │ ││  0x00007f572e91a5a8:   sbb    %r10,%r11
           │   ││││    │     │ ││  0x00007f572e91a5ab:   sbb    %r9,%rbx
   0.07%   │   ││││    │     │ ││  0x00007f572e91a5ae:   mov    %rcx,%r8
           │   ││││    │     │ ││  0x00007f572e91a5b1:   mov    %r11,%r10
           │   ││││    │     │ ││  0x00007f572e91a5b4:   mov    %rbx,%r9
   0.00%   │   ││││    │     │ ││  0x00007f572e91a5b7:   mov    $0x8000,%ebx
   0.07%   │   ││││    │     │ ││  0x00007f572e91a5bc:   nopl   0x0(%rax)
           │   ││││    │     │ ╰│  0x00007f572e91a5c0:   jmp    0x00007f572e91a23c
           │   ││││    │     ↘  │  0x00007f572e91a5c5:   shr    %cl,%r9d
           │   ││││    │        │  0x00007f572e91a5c8:   movabs $0x100000000,%rbx
           │   ││││    │        │  0x00007f572e91a5d2:   shr    %cl,%rbx
           │   ││││    │        │  0x00007f572e91a5d5:   mov    $0x0,%ecx
           │   ││││    │        │  0x00007f572e91a5da:   mov    $0x0,%r11d
           │   ││││    │        │  0x00007f572e91a5e0:   sub    %r8,%rcx
           │   ││││    │        │  0x00007f572e91a5e3:   sbb    %r10,%r11
           │   ││││    │        │  0x00007f572e91a5e6:   sbb    %r9,%rbx
           │   ││││    │        │  0x00007f572e91a5e9:   mov    %rcx,%r8
           │   ││││    │        │  0x00007f572e91a5ec:   mov    %r11,%r10
           │   ││││    │        │  0x00007f572e91a5ef:   mov    %rbx,%r9
           │   ││││    │        │  0x00007f572e91a5f2:   mov    $0x8000,%ebx
           │   ││││    │        │  0x00007f572e91a5f7:   shr    $0x2,%rdi
           │   ││││    │        │  0x00007f572e91a5fb:   add    $0x40000000,%edi
           │   ││││    │        ╰  0x00007f572e91a601:   jmp    0x00007f572e91a23c
           │   │││↘    │           0x00007f572e91a606:   vmovq  0x8(%rsp),%xmm0
           │   │││     │           0x00007f572e91a60c:   vmulsd -0x200c(%rip),%xmm0,%xmm0        # 0x00007f572e918608
           │   │││     │           0x00007f572e91a614:   vmovq  %xmm0,(%rsp)
   0.01%   ↘   ↘↘↘     ↘           0x00007f572e91a619:   add    $0x10,%rsp
                                   0x00007f572e91a61d:   pop    %rbx
                                   0x00007f572e91a61e:   add    $0x18,%rsp
   0.57%                           0x00007f572e91a622:   ret    
                                   0x00007f572e91a623:   hlt    
                                   0x00007f572e91a624:   hlt    
                                   0x00007f572e91a625:   hlt    
                                   0x00007f572e91a626:   hlt    
                                   0x00007f572e91a627:   hlt    
                                 --------------------------------------------------------------------------------
                                 - - - [OOP MAPS]- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                 ImmutableOopMapSet contains 0 OopMaps
                                 - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                 <nmethod compile_id='1063' compile_kind='osr' compiler='jvmci' level='4' entry='0x00007f572eda2320' size='7656' address='0x00007f572eda2110' relocation_offset='344' consts_offset='464' insts_offset='528' stub_offset='3068' scopes_data_offset='3144' scopes_pcs_offset='3792' dependencies_offset='7584' oops_offset='3072' metadata_offset='3080' method='com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark initial_loop ()D' bytes='93' count='15' backedge_count='231216' iicount='15' stamp='28,229'/>
....................................................................................................
  57.33%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop, version 4, compile id 1064 

                    0x00007f572eda43b3:   vmovsd %xmm0,(%rsp)
                    0x00007f572eda43b8:   mov    $0x2,%r10d
                    0x00007f572eda43be:   vmovsd -0x2ce(%rip),%xmm3        # 0x00007f572eda40f8
                                                                              ;   {section_word}
                    0x00007f572eda43c6:   vmovsd 0x68(%rsp),%xmm2
                    0x00007f572eda43cc:   vmovsd 0x8(%rsp),%xmm1
                    0x00007f572eda43d2:   vmovsd 0x70(%rsp),%xmm13
                    0x00007f572eda43d8:   vmovsd 0x10(%rsp),%xmm12
                    0x00007f572eda43de:   xchg   %ax,%ax                      ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@21 (line 77)
   0.29%      ↗↗ ↗  0x00007f572eda43e0:   cmp    %r10d,%r13d
              ││ │  0x00007f572eda43e3:   jle    0x00007f572eda4785           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@25 (line 77)
   0.00%      ││ │  0x00007f572eda43e9:   mov    %r10d,%r11d
              ││ │  0x00007f572eda43ec:   dec    %r11d                        ;*isub {reexecute=0 rethrow=0 return_oop=0}
              ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@31 (line 78)
              ││ │  0x00007f572eda43ef:   vxorpd %xmm14,%xmm14,%xmm14
   0.29%      ││ │  0x00007f572eda43f4:   vcvtsi2sd %r11d,%xmm14,%xmm14       ;*i2d {reexecute=0 rethrow=0 return_oop=0}
              ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@32 (line 78)
   0.00%      ││ │  0x00007f572eda43f9:   vmulsd %xmm13,%xmm14,%xmm14         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
              ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@35 (line 78)
              ││ │  0x00007f572eda43fe:   vmovupd %xmm14,%xmm0                ;* unwind (locked if synchronized)
              ││ │                                                            ; - java.lang.Math::tan@-3
              ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@36 (line 78)
   0.32%      ││ │  0x00007f572eda4403:   vmovupd %xmm3,%xmm10
              ││ │  0x00007f572eda4407:   mov    %r10d,%r13d
              ││ │  0x00007f572eda440a:   vmovupd %xmm1,%xmm14
              ││ │  0x00007f572eda440e:   vmovupd %xmm2,%xmm13
   0.33%      ││ │  0x00007f572eda4412:   call   0x00007f572e919dc0           ;   {runtime_call Stub&lt;AMD64MathStub.tan&gt;}
              ││ │  0x00007f572eda4417:   nop
              ││ │  0x00007f572eda4418:   vaddsd %xmm14,%xmm0,%xmm1           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
              ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@44 (line 78)
   1.28%      ││ │  0x00007f572eda441d:   vmulsd %xmm0,%xmm14,%xmm0           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
              ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@63 (line 79)
   0.09%      ││ │  0x00007f572eda4421:   vsubsd %xmm0,%xmm13,%xmm0           ;*dsub {reexecute=0 rethrow=0 return_oop=0}
              ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@64 (line 79)
   1.63%      ││ │  0x00007f572eda4425:   vdivsd %xmm0,%xmm1,%xmm0            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
              ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@70 (line 80)
   4.33%      ││ │  0x00007f572eda4429:   vaddsd %xmm0,%xmm12,%xmm1           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
              ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@71 (line 80)
   1.39%      ││ │  0x00007f572eda442d:   vmovq  %xmm1,%r10                   ;* unwind (locked if synchronized)
              ││ │                                                            ; - java.lang.Double::doubleToRawLongBits@-3
              ││ │                                                            ; - java.lang.FdLibm::__HI@1 (line 104)
              ││ │                                                            ; - java.lang.FdLibm$Atan::compute@1 (line 1267)
              ││ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
              ││ │                                                            ; - java.lang.Math::atan@1 (line 279)
              ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.43%      ││ │  0x00007f572eda4432:   sar    $0x20,%r10                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
              ││ │                                                            ; - java.lang.FdLibm::__HI@8 (line 105)
              ││ │                                                            ; - java.lang.FdLibm$Atan::compute@1 (line 1267)
              ││ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
              ││ │                                                            ; - java.lang.Math::atan@1 (line 279)
              ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.46%      ││ │  0x00007f572eda4436:   mov    %r10d,%r10d                  ;*l2i {reexecute=0 rethrow=0 return_oop=0}
              ││ │                                                            ; - java.lang.FdLibm::__HI@9 (line 105)
              ││ │                                                            ; - java.lang.FdLibm$Atan::compute@1 (line 1267)
              ││ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
              ││ │                                                            ; - java.lang.Math::atan@1 (line 279)
              ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.40%      ││ │  0x00007f572eda4439:   mov    %r10d,%r11d
              ││ │  0x00007f572eda443c:   and    $0x7fffffff,%r11d            ;*iand {reexecute=0 rethrow=0 return_oop=0}
              ││ │                                                            ; - java.lang.FdLibm$Atan::compute@10 (line 1268)
              ││ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
              ││ │                                                            ; - java.lang.Math::atan@1 (line 279)
              ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.17%      ││ │  0x00007f572eda4443:   cmp    $0x44100000,%r11d
              ││ │  0x00007f572eda444a:   jae    0x00007f572eda4a67           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
              ││ │                                                            ; - java.lang.FdLibm$Atan::compute@17 (line 1269)
              ││ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
              ││ │                                                            ; - java.lang.Math::atan@1 (line 279)
              ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.26%      ││ │  0x00007f572eda4450:   mov    %r13d,%r8d
   0.04%      ││ │  0x00007f572eda4453:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@84 (line 77)
              ││ │  0x00007f572eda4456:   data16 nopw 0x0(%rax,%rax,1)
              ││ │  0x00007f572eda4460:   cmp    $0x3fdc0000,%r11d
          ╭   ││ │  0x00007f572eda4467:   jb     0x00007f572eda4679
   0.26%  │   ││ │  0x00007f572eda446d:   vmovsd -0x375(%rip),%xmm0        # 0x00007f572eda4100
          │   ││ │                                                            ;   {section_word}
   0.03%  │   ││ │  0x00007f572eda4475:   vandpd %xmm0,%xmm1,%xmm0            ;* unwind (locked if synchronized)
          │   ││ │                                                            ; - java.lang.Math::abs@-3
          │   ││ │                                                            ; - java.lang.FdLibm$Atan::compute@108 (line 1287)
          │   ││ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │   ││ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │   ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │   ││ │  0x00007f572eda4479:   nopl   0x0(%rax)
          │   ││ │  0x00007f572eda4480:   cmp    $0x3ff30000,%r11d
          │╭  ││ │  0x00007f572eda4487:   jb     0x00007f572eda45ad           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ │                                                            ; - java.lang.FdLibm$Atan::compute@116 (line 1288)
          ││  ││ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          ││  ││ │                                                            ; - java.lang.Math::atan@1 (line 279)
          ││  ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.37%  ││  ││ │  0x00007f572eda448d:   cmp    $0x40038000,%r11d
          ││╭ ││ │  0x00007f572eda4494:   jb     0x00007f572eda4737           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ │                                                            ; - java.lang.FdLibm$Atan::compute@164 (line 1297)
          │││ ││ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││ ││ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││ ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.37%  │││ ││ │  0x00007f572eda449a:   vdivsd %xmm0,%xmm10,%xmm0           ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ │                                                            ; - java.lang.FdLibm$Atan::compute@194 (line 1302)
          │││ ││ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││ ││ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││ ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   2.16%  │││ ││ │  0x00007f572eda449e:   vmulsd %xmm0,%xmm0,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ │                                                            ; - java.lang.FdLibm$Atan::compute@198 (line 1307)
          │││ ││ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││ ││ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││ ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.28%  │││ ││ │  0x00007f572eda44a2:   vmulsd %xmm2,%xmm2,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ │                                                            ; - java.lang.FdLibm$Atan::compute@205 (line 1308)
          │││ ││ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││ ││ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││ ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.17%  │││ ││ │  0x00007f572eda44a6:   vmulsd %xmm9,%xmm3,%xmm4            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ │                                                            ; - java.lang.FdLibm$Atan::compute@247 (line 1310)
          │││ ││ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││ ││ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││ ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.22%  │││ ││ │  0x00007f572eda44ab:   vaddsd %xmm11,%xmm4,%xmm4           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ │                                                            ; - java.lang.FdLibm$Atan::compute@248 (line 1310)
          │││ ││ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││ ││ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││ ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.24%  │││ ││ │  0x00007f572eda44b0:   vmulsd %xmm3,%xmm4,%xmm4            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ │                                                            ; - java.lang.FdLibm$Atan::compute@249 (line 1310)
          │││ ││ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││ ││ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││ ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.22%  │││ ││ │  0x00007f572eda44b4:   vaddsd %xmm15,%xmm4,%xmm4           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ │                                                            ; - java.lang.FdLibm$Atan::compute@250 (line 1310)
          │││ ││ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││ ││ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││ ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.27%  │││ ││ │  0x00007f572eda44b9:   vmulsd %xmm3,%xmm4,%xmm4            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ │                                                            ; - java.lang.FdLibm$Atan::compute@251 (line 1310)
          │││ ││ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││ ││ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││ ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.18%  │││ ││ │  0x00007f572eda44bd:   vaddsd %xmm8,%xmm4,%xmm4            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ │                                                            ; - java.lang.FdLibm$Atan::compute@252 (line 1310)
          │││ ││ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││ ││ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││ ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.53%  │││ ││ │  0x00007f572eda44c2:   vmulsd %xmm3,%xmm4,%xmm4            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ │                                                            ; - java.lang.FdLibm$Atan::compute@253 (line 1310)
          │││ ││ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││ ││ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││ ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.21%  │││ ││ │  0x00007f572eda44c6:   vaddsd 0x18(%rsp),%xmm4,%xmm4       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ │                                                            ; - java.lang.FdLibm$Atan::compute@254 (line 1310)
          │││ ││ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││ ││ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││ ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.17%  │││ ││ │  0x00007f572eda44cc:   vmulsd %xmm3,%xmm4,%xmm4            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ │                                                            ; - java.lang.FdLibm$Atan::compute@255 (line 1310)
          │││ ││ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││ ││ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││ ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.13%  │││ ││ │  0x00007f572eda44d0:   vaddsd 0x20(%rsp),%xmm4,%xmm4       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ │                                                            ; - java.lang.FdLibm$Atan::compute@256 (line 1310)
          │││ ││ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││ ││ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││ ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.19%  │││ ││ │  0x00007f572eda44d6:   vmulsd %xmm2,%xmm4,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ │                                                            ; - java.lang.FdLibm$Atan::compute@257 (line 1310)
          │││ ││ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││ ││ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││ ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.26%  │││ ││ │  0x00007f572eda44da:   vmulsd 0x58(%rsp),%xmm3,%xmm4       ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ │                                                            ; - java.lang.FdLibm$Atan::compute@292 (line 1311)
          │││ ││ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││ ││ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││ ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││ ││ │  0x00007f572eda44e0:   vaddsd 0x50(%rsp),%xmm4,%xmm4       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ │                                                            ; - java.lang.FdLibm$Atan::compute@293 (line 1311)
          │││ ││ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││ ││ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││ ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││ ││ │  0x00007f572eda44e6:   vmulsd %xmm3,%xmm4,%xmm4            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ │                                                            ; - java.lang.FdLibm$Atan::compute@294 (line 1311)
          │││ ││ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││ ││ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││ ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││ ││ │  0x00007f572eda44ea:   vaddsd 0x48(%rsp),%xmm4,%xmm4       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ │                                                            ; - java.lang.FdLibm$Atan::compute@295 (line 1311)
          │││ ││ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││ ││ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││ ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.31%  │││ ││ │  0x00007f572eda44f0:   vmulsd %xmm3,%xmm4,%xmm4            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ │                                                            ; - java.lang.FdLibm$Atan::compute@296 (line 1311)
          │││ ││ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││ ││ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││ ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││ ││ │  0x00007f572eda44f4:   vaddsd 0x40(%rsp),%xmm4,%xmm4       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ │                                                            ; - java.lang.FdLibm$Atan::compute@297 (line 1311)
          │││ ││ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││ ││ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││ ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││ ││ │  0x00007f572eda44fa:   vmulsd %xmm3,%xmm4,%xmm4            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ │                                                            ; - java.lang.FdLibm$Atan::compute@298 (line 1311)
          │││ ││ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││ ││ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││ ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││ ││ │  0x00007f572eda44fe:   vaddsd 0x38(%rsp),%xmm4,%xmm4       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ │                                                            ; - java.lang.FdLibm$Atan::compute@299 (line 1311)
          │││ ││ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││ ││ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││ ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.31%  │││ ││ │  0x00007f572eda4504:   vmulsd %xmm3,%xmm4,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ │                                                            ; - java.lang.FdLibm$Atan::compute@300 (line 1311)
          │││ ││ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││ ││ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││ ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.00%  │││ ││ │  0x00007f572eda4508:   vaddsd %xmm3,%xmm2,%xmm2            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ │                                                            ; - java.lang.FdLibm$Atan::compute@314 (line 1313)
          │││ ││ │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││ ││ │                                                            ; - java.lang.Math::atan@1 (line 279)
          │││ ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.58%  │││ ││ │  0x00007f572eda450c:   vmovupd %xmm0,%xmm3
          │││ ││ │  0x00007f572eda4510:   mov    $0x28,%r11
          │││ ││↗│  0x00007f572eda4517:   vmovsd 0x0(%rbp,%r11,1),%xmm4       ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │││ ││││                                                            ; - java.lang.FdLibm$Atan::compute@323 (line 1315)
          │││ ││││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││ ││││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │││ ││││  0x00007f572eda451e:   vmulsd %xmm2,%xmm3,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││ ││││                                                            ; - java.lang.FdLibm$Atan::compute@315 (line 1313)
          │││ ││││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││ ││││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.25%  │││ ││││  0x00007f572eda4522:   vsubsd (%r14,%r11,1),%xmm2,%xmm2    ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │││ ││││                                                            ; - java.lang.FdLibm$Atan::compute@337 (line 1315)
          │││ ││││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││ ││││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.20%  │││ ││││  0x00007f572eda4528:   vsubsd %xmm0,%xmm2,%xmm0            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │││ ││││                                                            ; - java.lang.FdLibm$Atan::compute@339 (line 1315)
          │││ ││││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││ ││││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.22%  │││ ││││  0x00007f572eda452c:   vsubsd %xmm0,%xmm4,%xmm0            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │││ ││││                                                            ; - java.lang.FdLibm$Atan::compute@340 (line 1315)
          │││ ││││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││ ││││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.17%  │││ ││││  0x00007f572eda4530:   test   %r10d,%r10d
          │││╭││││  0x00007f572eda4533:   jl     0x00007f572eda456d
          ││││││││  0x00007f572eda4539:   mov    %r8d,%r13d
          ││││││││  0x00007f572eda453c:   vmovupd %xmm1,%xmm12
          ││││││││  0x00007f572eda4540:   call   0x00007f572e919dc0           ;   {runtime_call Stub&lt;AMD64MathStub.tan&gt;}
          ││││││││  0x00007f572eda4545:   nop
          ││││││││  0x00007f572eda4546:   vmovsd %xmm0,(%rsp)
   0.26%  ││││││││  0x00007f572eda454b:   mov    %r13d,%r10d
          ││││││││  0x00007f572eda454e:   vmovupd %xmm10,%xmm3
          ││││││││  0x00007f572eda4553:   vmovupd %xmm13,%xmm2
   0.26%  ││││││││  0x00007f572eda4558:   vmovupd %xmm14,%xmm1
          ││││││││  0x00007f572eda455d:   vmovsd 0x70(%rsp),%xmm13
          ││││││││  0x00007f572eda4563:   mov    0x64(%rsp),%r13d
          ││││╰│││  0x00007f572eda4568:   jmp    0x00007f572eda43e0           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││││ │││                                                            ; - java.lang.FdLibm$Atan::compute@345 (line 1316)
          ││││ │││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          ││││ │││                                                            ; - java.lang.Math::atan@1 (line 279)
          ││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.00%  │││↘ │││  0x00007f572eda456d:   mov    %r8d,%r13d
          │││  │││  0x00007f572eda4570:   vmovupd %xmm1,%xmm12
          │││  │││  0x00007f572eda4574:   vmovsd -0x474(%rip),%xmm1        # 0x00007f572eda4108
          │││  │││                                                            ;   {section_word}
   0.06%  │││  │││  0x00007f572eda457c:   vxorpd %xmm1,%xmm0,%xmm0
          │││  │││  0x00007f572eda4580:   call   0x00007f572e919dc0           ;   {runtime_call Stub&lt;AMD64MathStub.tan&gt;}
          │││  │││  0x00007f572eda4585:   nop
          │││  │││  0x00007f572eda4586:   vmovsd %xmm0,(%rsp)
   0.04%  │││  │││  0x00007f572eda458b:   mov    %r13d,%r10d
          │││  │││  0x00007f572eda458e:   vmovupd %xmm10,%xmm3
          │││  │││  0x00007f572eda4593:   vmovupd %xmm13,%xmm2
   0.08%  │││  │││  0x00007f572eda4598:   vmovupd %xmm14,%xmm1
          │││  │││  0x00007f572eda459d:   vmovsd 0x70(%rsp),%xmm13
          │││  │││  0x00007f572eda45a3:   mov    0x64(%rsp),%r13d
          │││  ╰││  0x00007f572eda45a8:   jmp    0x00007f572eda43e0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││   ││                                                            ; - java.lang.FdLibm$Atan::compute@116 (line 1288)
          │││   ││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │││   ││                                                            ; - java.lang.Math::atan@1 (line 279)
          │││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │↘│   ││  0x00007f572eda45ad:   mov    %r8d,%r13d
          │ │   ││  0x00007f572eda45b0:   vmovupd %xmm1,%xmm12
          │ │   ││  0x00007f572eda45b4:   nopl   0x0(%rax,%rax,1)
          │ │   ││  0x00007f572eda45bc:   data16 data16 xchg %ax,%ax
          │ │   ││  0x00007f572eda45c0:   cmp    $0x3fe60000,%r11d
          │ │   ││  0x00007f572eda45c7:   jae    0x00007f572eda4765           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││                                                            ; - java.lang.FdLibm$Atan::compute@123 (line 1289)
          │ │   ││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │ │   ││                                                            ; - java.lang.Math::atan@1 (line 279)
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │ │   ││  0x00007f572eda45cd:   vmulsd 0x28(%rsp),%xmm0,%xmm1       ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││                                                            ; - java.lang.FdLibm$Atan::compute@133 (line 1291)
          │ │   ││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │ │   ││                                                            ; - java.lang.Math::atan@1 (line 279)
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │ │   ││  0x00007f572eda45d3:   vmovupd %xmm1,%xmm3
          │ │   ││  0x00007f572eda45d7:   vmovupd %xmm0,%xmm2
          │ │   ││  0x00007f572eda45db:   vmovupd %xmm13,%xmm1
          │ │   ││  0x00007f572eda45e0:   mov    $0x10,%r11
          │ │   ││  0x00007f572eda45e7:   vmovsd 0x28(%rsp),%xmm0
          │ │   ││  0x00007f572eda45ed:   vsubsd %xmm1,%xmm3,%xmm1
          │ │   ││  0x00007f572eda45f1:   vaddsd %xmm0,%xmm2,%xmm0
          │ │   ││  0x00007f572eda45f5:   vdivsd %xmm0,%xmm1,%xmm0            ;*dload_0 {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││                                                            ; - java.lang.FdLibm$Atan::compute@196 (line 1307)
          │ │   ││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │ │   ││                                                            ; - java.lang.Math::atan@1 (line 279)
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.00%  │ │   ││  0x00007f572eda45f9:   vmulsd %xmm0,%xmm0,%xmm1            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││                                                            ; - java.lang.FdLibm$Atan::compute@198 (line 1307)
          │ │   ││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │ │   ││                                                            ; - java.lang.Math::atan@1 (line 279)
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.00%  │ │   ││  0x00007f572eda45fd:   vmulsd %xmm1,%xmm1,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││                                                            ; - java.lang.FdLibm$Atan::compute@205 (line 1308)
          │ │   ││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │ │   ││                                                            ; - java.lang.Math::atan@1 (line 279)
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │ │   ││  0x00007f572eda4601:   vmulsd %xmm9,%xmm2,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││                                                            ; - java.lang.FdLibm$Atan::compute@247 (line 1310)
          │ │   ││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │ │   ││                                                            ; - java.lang.Math::atan@1 (line 279)
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.00%  │ │   ││  0x00007f572eda4606:   vaddsd %xmm11,%xmm3,%xmm3           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││                                                            ; - java.lang.FdLibm$Atan::compute@248 (line 1310)
          │ │   ││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │ │   ││                                                            ; - java.lang.Math::atan@1 (line 279)
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │ │   ││  0x00007f572eda460b:   vmulsd %xmm2,%xmm3,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││                                                            ; - java.lang.FdLibm$Atan::compute@249 (line 1310)
          │ │   ││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │ │   ││                                                            ; - java.lang.Math::atan@1 (line 279)
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │ │   ││  0x00007f572eda460f:   vaddsd %xmm15,%xmm3,%xmm3           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││                                                            ; - java.lang.FdLibm$Atan::compute@250 (line 1310)
          │ │   ││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │ │   ││                                                            ; - java.lang.Math::atan@1 (line 279)
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.00%  │ │   ││  0x00007f572eda4614:   vmulsd %xmm2,%xmm3,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││                                                            ; - java.lang.FdLibm$Atan::compute@251 (line 1310)
          │ │   ││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │ │   ││                                                            ; - java.lang.Math::atan@1 (line 279)
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.00%  │ │   ││  0x00007f572eda4618:   vaddsd %xmm8,%xmm3,%xmm3            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││                                                            ; - java.lang.FdLibm$Atan::compute@252 (line 1310)
          │ │   ││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │ │   ││                                                            ; - java.lang.Math::atan@1 (line 279)
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │ │   ││  0x00007f572eda461d:   vmulsd %xmm2,%xmm3,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││                                                            ; - java.lang.FdLibm$Atan::compute@253 (line 1310)
          │ │   ││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │ │   ││                                                            ; - java.lang.Math::atan@1 (line 279)
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │ │   ││  0x00007f572eda4621:   vaddsd 0x18(%rsp),%xmm3,%xmm3       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││                                                            ; - java.lang.FdLibm$Atan::compute@254 (line 1310)
          │ │   ││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │ │   ││                                                            ; - java.lang.Math::atan@1 (line 279)
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.00%  │ │   ││  0x00007f572eda4627:   vmulsd %xmm2,%xmm3,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││                                                            ; - java.lang.FdLibm$Atan::compute@255 (line 1310)
          │ │   ││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │ │   ││                                                            ; - java.lang.Math::atan@1 (line 279)
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.00%  │ │   ││  0x00007f572eda462b:   vaddsd 0x20(%rsp),%xmm3,%xmm3       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││                                                            ; - java.lang.FdLibm$Atan::compute@256 (line 1310)
          │ │   ││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │ │   ││                                                            ; - java.lang.Math::atan@1 (line 279)
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.00%  │ │   ││  0x00007f572eda4631:   vmulsd %xmm1,%xmm3,%xmm1            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││                                                            ; - java.lang.FdLibm$Atan::compute@257 (line 1310)
          │ │   ││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │ │   ││                                                            ; - java.lang.Math::atan@1 (line 279)
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │ │   ││  0x00007f572eda4635:   vmulsd 0x58(%rsp),%xmm2,%xmm3       ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││                                                            ; - java.lang.FdLibm$Atan::compute@292 (line 1311)
          │ │   ││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │ │   ││                                                            ; - java.lang.Math::atan@1 (line 279)
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │ │   ││  0x00007f572eda463b:   vaddsd 0x50(%rsp),%xmm3,%xmm3       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││                                                            ; - java.lang.FdLibm$Atan::compute@293 (line 1311)
          │ │   ││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │ │   ││                                                            ; - java.lang.Math::atan@1 (line 279)
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │ │   ││  0x00007f572eda4641:   vmulsd %xmm2,%xmm3,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││                                                            ; - java.lang.FdLibm$Atan::compute@294 (line 1311)
          │ │   ││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │ │   ││                                                            ; - java.lang.Math::atan@1 (line 279)
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │ │   ││  0x00007f572eda4645:   vaddsd 0x48(%rsp),%xmm3,%xmm3       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││                                                            ; - java.lang.FdLibm$Atan::compute@295 (line 1311)
          │ │   ││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │ │   ││                                                            ; - java.lang.Math::atan@1 (line 279)
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │ │   ││  0x00007f572eda464b:   vmulsd %xmm2,%xmm3,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││                                                            ; - java.lang.FdLibm$Atan::compute@296 (line 1311)
          │ │   ││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │ │   ││                                                            ; - java.lang.Math::atan@1 (line 279)
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │ │   ││  0x00007f572eda464f:   vaddsd 0x40(%rsp),%xmm3,%xmm3       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││                                                            ; - java.lang.FdLibm$Atan::compute@297 (line 1311)
          │ │   ││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │ │   ││                                                            ; - java.lang.Math::atan@1 (line 279)
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │ │   ││  0x00007f572eda4655:   vmulsd %xmm2,%xmm3,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││                                                            ; - java.lang.FdLibm$Atan::compute@298 (line 1311)
          │ │   ││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │ │   ││                                                            ; - java.lang.Math::atan@1 (line 279)
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │ │   ││  0x00007f572eda4659:   vaddsd 0x38(%rsp),%xmm3,%xmm3       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││                                                            ; - java.lang.FdLibm$Atan::compute@299 (line 1311)
          │ │   ││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │ │   ││                                                            ; - java.lang.Math::atan@1 (line 279)
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │ │   ││  0x00007f572eda465f:   vmulsd %xmm2,%xmm3,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││                                                            ; - java.lang.FdLibm$Atan::compute@300 (line 1311)
          │ │   ││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │ │   ││                                                            ; - java.lang.Math::atan@1 (line 279)
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │ │   ││  0x00007f572eda4663:   vaddsd %xmm2,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││                                                            ; - java.lang.FdLibm$Atan::compute@314 (line 1313)
          │ │   ││                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │ │   ││                                                            ; - java.lang.Math::atan@1 (line 279)
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          │ │   ││  0x00007f572eda4667:   vmovupd %xmm1,%xmm3
          │ │   ││  0x00007f572eda466b:   vmovupd %xmm0,%xmm2
          │ │   ││  0x00007f572eda466f:   vmovupd %xmm12,%xmm1
          │ │   ╰│  0x00007f572eda4674:   jmp    0x00007f572eda4517           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │    │                                                            ; - java.lang.FdLibm$Atan::compute@79 (line 1279)
          │ │    │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
          │ │    │                                                            ; - java.lang.Math::atan@1 (line 279)
          │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          ↘ │    │  0x00007f572eda4679:   nopl   0x0(%rax)                    ;   {no_reloc}
            │    │  0x00007f572eda4680:   cmp    $0x3e200000,%r11d
            │    │  0x00007f572eda4687:   jb     0x00007f572eda4ac3           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │    │                                                            ; - java.lang.FdLibm$Atan::compute@86 (line 1280)
            │    │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
            │    │                                                            ; - java.lang.Math::atan@1 (line 279)
            │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
            │    │  0x00007f572eda468d:   mov    %r8d,%r13d
            │    │  0x00007f572eda4690:   vmulsd %xmm1,%xmm1,%xmm0            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            │    │                                                            ; - java.lang.FdLibm$Atan::compute@198 (line 1307)
            │    │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
            │    │                                                            ; - java.lang.Math::atan@1 (line 279)
            │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
            │    │  0x00007f572eda4694:   vmulsd %xmm0,%xmm0,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            │    │                                                            ; - java.lang.FdLibm$Atan::compute@205 (line 1308)
            │    │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
            │    │                                                            ; - java.lang.Math::atan@1 (line 279)
            │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
            │    │  0x00007f572eda4698:   vmulsd %xmm9,%xmm2,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            │    │                                                            ; - java.lang.FdLibm$Atan::compute@247 (line 1310)
            │    │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
            │    │                                                            ; - java.lang.Math::atan@1 (line 279)
            │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.00%    │    │  0x00007f572eda469d:   vaddsd %xmm11,%xmm3,%xmm3           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            │    │                                                            ; - java.lang.FdLibm$Atan::compute@248 (line 1310)
            │    │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
            │    │                                                            ; - java.lang.Math::atan@1 (line 279)
            │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
            │    │  0x00007f572eda46a2:   vmulsd %xmm2,%xmm3,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            │    │                                                            ; - java.lang.FdLibm$Atan::compute@249 (line 1310)
            │    │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
            │    │                                                            ; - java.lang.Math::atan@1 (line 279)
            │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
            │    │  0x00007f572eda46a6:   vaddsd %xmm15,%xmm3,%xmm3           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            │    │                                                            ; - java.lang.FdLibm$Atan::compute@250 (line 1310)
            │    │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
            │    │                                                            ; - java.lang.Math::atan@1 (line 279)
            │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.00%    │    │  0x00007f572eda46ab:   vmulsd %xmm2,%xmm3,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            │    │                                                            ; - java.lang.FdLibm$Atan::compute@251 (line 1310)
            │    │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
            │    │                                                            ; - java.lang.Math::atan@1 (line 279)
            │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.00%    │    │  0x00007f572eda46af:   vaddsd %xmm8,%xmm3,%xmm3            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            │    │                                                            ; - java.lang.FdLibm$Atan::compute@252 (line 1310)
            │    │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
            │    │                                                            ; - java.lang.Math::atan@1 (line 279)
            │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
            │    │  0x00007f572eda46b4:   vmulsd %xmm2,%xmm3,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            │    │                                                            ; - java.lang.FdLibm$Atan::compute@253 (line 1310)
            │    │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
            │    │                                                            ; - java.lang.Math::atan@1 (line 279)
            │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
            │    │  0x00007f572eda46b8:   vaddsd 0x18(%rsp),%xmm3,%xmm3       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            │    │                                                            ; - java.lang.FdLibm$Atan::compute@254 (line 1310)
            │    │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
            │    │                                                            ; - java.lang.Math::atan@1 (line 279)
            │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
            │    │  0x00007f572eda46be:   vmulsd %xmm2,%xmm3,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            │    │                                                            ; - java.lang.FdLibm$Atan::compute@255 (line 1310)
            │    │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
            │    │                                                            ; - java.lang.Math::atan@1 (line 279)
            │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
            │    │  0x00007f572eda46c2:   vaddsd 0x20(%rsp),%xmm3,%xmm3       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            │    │                                                            ; - java.lang.FdLibm$Atan::compute@256 (line 1310)
            │    │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
            │    │                                                            ; - java.lang.Math::atan@1 (line 279)
            │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.00%    │    │  0x00007f572eda46c8:   vmulsd %xmm0,%xmm3,%xmm0            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            │    │                                                            ; - java.lang.FdLibm$Atan::compute@257 (line 1310)
            │    │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
            │    │                                                            ; - java.lang.Math::atan@1 (line 279)
            │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
            │    │  0x00007f572eda46cc:   vmulsd 0x58(%rsp),%xmm2,%xmm3       ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            │    │                                                            ; - java.lang.FdLibm$Atan::compute@292 (line 1311)
            │    │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
            │    │                                                            ; - java.lang.Math::atan@1 (line 279)
            │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
            │    │  0x00007f572eda46d2:   vaddsd 0x50(%rsp),%xmm3,%xmm3       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            │    │                                                            ; - java.lang.FdLibm$Atan::compute@293 (line 1311)
            │    │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
            │    │                                                            ; - java.lang.Math::atan@1 (line 279)
            │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
            │    │  0x00007f572eda46d8:   vmulsd %xmm2,%xmm3,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            │    │                                                            ; - java.lang.FdLibm$Atan::compute@294 (line 1311)
            │    │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
            │    │                                                            ; - java.lang.Math::atan@1 (line 279)
            │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
            │    │  0x00007f572eda46dc:   vaddsd 0x48(%rsp),%xmm3,%xmm3       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            │    │                                                            ; - java.lang.FdLibm$Atan::compute@295 (line 1311)
            │    │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
            │    │                                                            ; - java.lang.Math::atan@1 (line 279)
            │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
            │    │  0x00007f572eda46e2:   vmulsd %xmm2,%xmm3,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            │    │                                                            ; - java.lang.FdLibm$Atan::compute@296 (line 1311)
            │    │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
            │    │                                                            ; - java.lang.Math::atan@1 (line 279)
            │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
            │    │  0x00007f572eda46e6:   vaddsd 0x40(%rsp),%xmm3,%xmm3       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            │    │                                                            ; - java.lang.FdLibm$Atan::compute@297 (line 1311)
            │    │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
            │    │                                                            ; - java.lang.Math::atan@1 (line 279)
            │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
            │    │  0x00007f572eda46ec:   vmulsd %xmm2,%xmm3,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            │    │                                                            ; - java.lang.FdLibm$Atan::compute@298 (line 1311)
            │    │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
            │    │                                                            ; - java.lang.Math::atan@1 (line 279)
            │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
            │    │  0x00007f572eda46f0:   vaddsd 0x38(%rsp),%xmm3,%xmm3       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            │    │                                                            ; - java.lang.FdLibm$Atan::compute@299 (line 1311)
            │    │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
            │    │                                                            ; - java.lang.Math::atan@1 (line 279)
            │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
            │    │  0x00007f572eda46f6:   vmulsd %xmm2,%xmm3,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            │    │                                                            ; - java.lang.FdLibm$Atan::compute@300 (line 1311)
            │    │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
            │    │                                                            ; - java.lang.Math::atan@1 (line 279)
            │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
            │    │  0x00007f572eda46fa:   vaddsd %xmm2,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            │    │                                                            ; - java.lang.FdLibm$Atan::compute@314 (line 1313)
            │    │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
            │    │                                                            ; - java.lang.Math::atan@1 (line 279)
            │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
            │    │  0x00007f572eda46fe:   vmulsd %xmm1,%xmm0,%xmm0            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            │    │                                                            ; - java.lang.FdLibm$Atan::compute@315 (line 1313)
            │    │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
            │    │                                                            ; - java.lang.Math::atan@1 (line 279)
            │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
            │    │  0x00007f572eda4702:   vsubsd %xmm0,%xmm1,%xmm0            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
            │    │                                                            ; - java.lang.FdLibm$Atan::compute@316 (line 1313)
            │    │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
            │    │                                                            ; - java.lang.Math::atan@1 (line 279)
            │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
            │    │  0x00007f572eda4706:   vmovupd %xmm1,%xmm12
            │    │  0x00007f572eda470a:   call   0x00007f572e919dc0           ;   {runtime_call Stub&lt;AMD64MathStub.tan&gt;}
            │    │  0x00007f572eda470f:   nop
            │    │  0x00007f572eda4710:   vmovsd %xmm0,(%rsp)
            │    │  0x00007f572eda4715:   mov    %r13d,%r10d
            │    │  0x00007f572eda4718:   vmovupd %xmm10,%xmm3
            │    │  0x00007f572eda471d:   vmovupd %xmm13,%xmm2
   0.00%    │    │  0x00007f572eda4722:   vmovupd %xmm14,%xmm1
            │    │  0x00007f572eda4727:   vmovsd 0x70(%rsp),%xmm13
            │    │  0x00007f572eda472d:   mov    0x64(%rsp),%r13d
            │    ╰  0x00007f572eda4732:   jmp    0x00007f572eda43e0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                                 ; - java.lang.FdLibm$Atan::compute@164 (line 1297)
            │                                                                 ; - java.lang.StrictMath::atan@1 (line 227)
            │                                                                 ; - java.lang.Math::atan@1 (line 279)
            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
            ↘       0x00007f572eda4737:   mov    %r8d,%r13d
                    0x00007f572eda473a:   vmovupd %xmm1,%xmm12
                    0x00007f572eda473e:   vmulsd 0x30(%rsp),%xmm0,%xmm1       ;*dmul {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  37.76%  <total for region 2>

....[Hottest Regions]...............................................................................
  57.33%                        <unknown> 
  37.76%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop, version 4, compile id 1064 
   0.54%                kernel  [unknown] 
   0.43%                kernel  [unknown] 
   0.33%                kernel  [unknown] 
   0.25%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%             libjvm.so  xmlStream::write 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   2.25%  <...other 364 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  57.42%                        <unknown> 
  37.76%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop, version 4, compile id 1064 
   4.10%                kernel  [unknown] 
   0.05%             libjvm.so  xmlStream::write 
   0.04%             libjvm.so  fileStream::write 
   0.04%             libc.so.6  __vfprintf_internal 
   0.04%             libc.so.6  __strchr_avx2 
   0.03%             libjvm.so  defaultStream::hold 
   0.03%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.02%             libjvm.so  ElfSymbolTable::lookup 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%                [vdso]  [unknown] 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libjvm.so  relocInfo::initialize 
   0.02%             libc.so.6  _IO_fwrite 
   0.02%             libc.so.6  _IO_setb 
   0.01%             libc.so.6  syscall 
   0.01%        hsdis-amd64.so  BND_Fixup 
   0.01%             libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%             libc.so.6  clock_gettime@@GLIBC_2.17 
   0.34%  <...other 107 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  57.42%                      
  37.76%        jvmci, level 4
   4.10%                kernel
   0.36%             libjvm.so
   0.25%             libc.so.6
   0.04%        hsdis-amd64.so
   0.04%           interpreter
   0.02%                [vdso]
   0.01%  ld-linux-x86-64.so.2
   0.00%         perf-5722.map
   0.00%           c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking
# Parameters: (iterations = 16384)

# Run progress: 50.00% complete, ETA 00:02:17
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2144.569 us/op
# Warmup Iteration   2: 2134.089 us/op
# Warmup Iteration   3: 2128.586 us/op
# Warmup Iteration   4: 2108.951 us/op
# Warmup Iteration   5: 2112.242 us/op
Iteration   1: 2105.217 us/op
Iteration   2: 2110.674 us/op
Iteration   3: 2114.636 us/op
Iteration   4: 2136.463 us/op
Iteration   5: 2119.085 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking":
  2117.215 ±(99.9%) 45.860 us/op [Average]
  (min, avg, max) = (2105.217, 2117.215, 2136.463), stdev = 11.910
  CI (99.9%): [2071.355, 2163.076] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking:asm":
PrintAssembly processed: 227984 total address lines.
Perf output processed (skipped 79.574 seconds):
 Column 1: cycles (51213 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

                                 --------------------------------------------------------------------------------
                                 [/Disassembly]
                                 </print_nmethod>
                                 <task_queued compile_id='1054' compile_kind='osr' method='com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark manual_loop_hoisting_and_sinking ()D' bytes='86' count='10' backedge_count='159217' iicount='10' osr_bci='25' stamp='28,448' comment='tiered' hot_count='159217'/>
                                 - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                 Decoding RuntimeStub - Stub&lt;AMD64MathStub.tan&gt; 0x00007f3d22918190
                                 --------------------------------------------------------------------------------
                                   0x00007f3d22919ac0:   sub    $0x18,%rsp
   0.53%                           0x00007f3d22919ac4:   push   %rbx
   0.13%                           0x00007f3d22919ac5:   sub    $0x10,%rsp
   0.28%                           0x00007f3d22919ac9:   vmovsd %xmm0,0x8(%rsp)
   0.27%                           0x00007f3d22919acf:   vpextrw $0x3,%xmm0,%eax
   0.15%                           0x00007f3d22919ad4:   and    $0x7fff,%eax
   0.26%                           0x00007f3d22919ada:   sub    $0x3fba,%eax
   0.23%                           0x00007f3d22919ae0:   cmp    $0x10e,%eax
          ╭                        0x00007f3d22919ae6:   ja     0x00007f3d22919ce9
   0.01%  │                        0x00007f3d22919aec:   vmovdqu -0x17b4(%rip),%xmm5        # 0x00007f3d22918340
          │                        0x00007f3d22919af4:   vmovdqu -0x17ac(%rip),%xmm6        # 0x00007f3d22918350
   0.01%  │                        0x00007f3d22919afc:   vunpcklpd %xmm0,%xmm0,%xmm0
   0.01%  │                        0x00007f3d22919b00:   vmovdqu -0x17a8(%rip),%xmm4        # 0x00007f3d22918360
   0.01%  │                        0x00007f3d22919b08:   vandpd %xmm0,%xmm4,%xmm4
          │                        0x00007f3d22919b0c:   vmovdqu -0x17a4(%rip),%xmm1        # 0x00007f3d22918370
   0.01%  │                        0x00007f3d22919b14:   vmulpd %xmm0,%xmm1,%xmm1
   0.01%  │                        0x00007f3d22919b18:   vpor   %xmm4,%xmm5,%xmm5
   0.00%  │                        0x00007f3d22919b1c:   vaddpd %xmm5,%xmm1,%xmm1
          │                        0x00007f3d22919b20:   vmovdqu %xmm1,%xmm7
   0.02%  │                        0x00007f3d22919b24:   vunpckhpd %xmm7,%xmm7,%xmm7
   0.00%  │                        0x00007f3d22919b28:   vcvttsd2si %xmm7,%edx
   0.00%  │                        0x00007f3d22919b2c:   vcvttpd2dq %xmm1,%xmm1
   0.02%  │                        0x00007f3d22919b30:   vcvtdq2pd %xmm1,%xmm1
   0.01%  │                        0x00007f3d22919b34:   vmulpd %xmm6,%xmm1,%xmm1
   0.01%  │                        0x00007f3d22919b38:   vmovdqu -0x17c0(%rip),%xmm3        # 0x00007f3d22918380
   0.01%  │                        0x00007f3d22919b40:   vmovq  -0x1838(%rip),%xmm5        # 0x00007f3d22918310
          │                        0x00007f3d22919b48:   add    $0x72900,%rdx
          │                        0x00007f3d22919b4f:   vmovdqu -0x17c7(%rip),%xmm4        # 0x00007f3d22918390
   0.01%  │                        0x00007f3d22919b57:   vmulpd %xmm1,%xmm3,%xmm3
   0.01%  │                        0x00007f3d22919b5b:   and    $0x1f,%rdx
   0.00%  │                        0x00007f3d22919b5f:   vmulsd %xmm1,%xmm5,%xmm5
          │                        0x00007f3d22919b63:   mov    %rdx,%rcx
   0.01%  │                        0x00007f3d22919b66:   vmulpd %xmm1,%xmm4,%xmm4
          │                        0x00007f3d22919b6a:   shl    %rcx
   0.01%  │                        0x00007f3d22919b6d:   vsubpd %xmm3,%xmm0,%xmm0
   0.00%  │                        0x00007f3d22919b71:   vmulpd -0x17d9(%rip),%xmm1,%xmm1        # 0x00007f3d229183a0
   0.01%  │                        0x00007f3d22919b79:   add    %rcx,%rdx
   0.01%  │                        0x00007f3d22919b7c:   shl    $0x2,%rcx
   0.00%  │                        0x00007f3d22919b80:   add    %rcx,%rdx
          │                        0x00007f3d22919b83:   vaddsd %xmm0,%xmm5,%xmm5
   0.01%  │                        0x00007f3d22919b87:   vmovdqu %xmm0,%xmm2
   0.01%  │                        0x00007f3d22919b8b:   vsubpd %xmm4,%xmm0,%xmm0
   0.01%  │                        0x00007f3d22919b8f:   vmovq  -0x187f(%rip),%xmm6        # 0x00007f3d22918318
          │                        0x00007f3d22919b97:   shl    $0x4,%rdx
   0.01%  │                        0x00007f3d22919b9b:   lea    -0x17f2(%rip),%rax        # 0x00007f3d229183b0
   0.00%  │                        0x00007f3d22919ba2:   vandpd -0x1fa(%rip),%xmm5,%xmm5        # 0x00007f3d229199b0
          │                        0x00007f3d22919baa:   vmovdqu %xmm0,%xmm3
          │                        0x00007f3d22919bae:   add    %rdx,%rax
   0.01%  │                        0x00007f3d22919bb1:   vsubpd %xmm0,%xmm2,%xmm2
   0.02%  │                        0x00007f3d22919bb5:   vunpckhpd %xmm0,%xmm0,%xmm0
   0.00%  │                        0x00007f3d22919bb9:   vdivsd %xmm5,%xmm6,%xmm6
   0.09%  │                        0x00007f3d22919bbd:   vsubpd %xmm4,%xmm2,%xmm2
          │                        0x00007f3d22919bc1:   vmovdqu 0x10(%rax),%xmm7
   0.01%  │                        0x00007f3d22919bc6:   vsubsd %xmm5,%xmm3,%xmm3
   0.01%  │                        0x00007f3d22919bca:   vmulpd %xmm0,%xmm7,%xmm7
   0.02%  │                        0x00007f3d22919bce:   vsubpd %xmm1,%xmm2,%xmm2
          │                        0x00007f3d22919bd2:   vmovdqu 0x30(%rax),%xmm1
   0.01%  │                        0x00007f3d22919bd7:   vmulpd %xmm0,%xmm1,%xmm1
   0.01%  │                        0x00007f3d22919bdb:   vmovdqu 0x60(%rax),%xmm4
   0.01%  │                        0x00007f3d22919be0:   vmulpd %xmm0,%xmm4,%xmm4
          │                        0x00007f3d22919be4:   vaddsd %xmm3,%xmm2,%xmm2
   0.00%  │                        0x00007f3d22919be8:   vmovdqu %xmm0,%xmm3
   0.00%  │                        0x00007f3d22919bec:   vmulpd %xmm0,%xmm0,%xmm0
   0.01%  │                        0x00007f3d22919bf0:   vaddpd (%rax),%xmm7,%xmm7
          │                        0x00007f3d22919bf4:   vaddpd 0x20(%rax),%xmm1,%xmm1
   0.01%  │                        0x00007f3d22919bf9:   vmulpd %xmm0,%xmm1,%xmm1
   0.01%  │                        0x00007f3d22919bfd:   vaddpd 0x50(%rax),%xmm4,%xmm4
   0.02%  │                        0x00007f3d22919c02:   vaddpd %xmm1,%xmm7,%xmm7
   0.01%  │                        0x00007f3d22919c06:   vmovdqu 0x70(%rax),%xmm1
   0.00%  │                        0x00007f3d22919c0b:   vmulpd %xmm0,%xmm1,%xmm1
   0.00%  │                        0x00007f3d22919c0f:   vmulpd %xmm0,%xmm0,%xmm0
   0.01%  │                        0x00007f3d22919c13:   vaddpd %xmm1,%xmm4,%xmm4
   0.00%  │                        0x00007f3d22919c17:   vmovdqu 0x40(%rax),%xmm1
   0.01%  │                        0x00007f3d22919c1c:   vmulpd %xmm0,%xmm1,%xmm1
          │                        0x00007f3d22919c20:   vaddpd %xmm1,%xmm7,%xmm7
   0.02%  │                        0x00007f3d22919c24:   vmovdqu %xmm3,%xmm1
          │                        0x00007f3d22919c28:   vmulpd %xmm0,%xmm3,%xmm3
   0.00%  │                        0x00007f3d22919c2c:   vmulsd %xmm0,%xmm0,%xmm0
   0.00%  │                        0x00007f3d22919c30:   vmulpd 0x90(%rax),%xmm1,%xmm1
   0.02%  │                        0x00007f3d22919c38:   vmulpd %xmm3,%xmm4,%xmm4
          │                        0x00007f3d22919c3c:   vmovdqu %xmm1,%xmm3
   0.00%  │                        0x00007f3d22919c40:   vaddpd %xmm4,%xmm7,%xmm7
   0.04%  │                        0x00007f3d22919c44:   vmovdqu %xmm1,%xmm4
          │                        0x00007f3d22919c48:   vmulsd %xmm7,%xmm0,%xmm0
   0.07%  │                        0x00007f3d22919c4c:   vunpckhpd %xmm7,%xmm7,%xmm7
   0.00%  │                        0x00007f3d22919c50:   vaddsd %xmm7,%xmm0,%xmm0
   0.06%  │                        0x00007f3d22919c54:   vunpckhpd %xmm1,%xmm1,%xmm1
          │                        0x00007f3d22919c58:   vaddsd %xmm1,%xmm3,%xmm3
          │                        0x00007f3d22919c5c:   vsubsd %xmm3,%xmm4,%xmm4
          │                        0x00007f3d22919c60:   vaddsd %xmm4,%xmm1,%xmm1
   0.02%  │                        0x00007f3d22919c64:   vmovdqu %xmm2,%xmm4
          │                        0x00007f3d22919c68:   vmovq  0x90(%rax),%xmm7
          │                        0x00007f3d22919c70:   vunpckhpd %xmm2,%xmm2,%xmm2
          │                        0x00007f3d22919c74:   vaddsd 0x98(%rax),%xmm7,%xmm7
   0.03%  │                        0x00007f3d22919c7c:   vmulsd %xmm2,%xmm7,%xmm7
          │                        0x00007f3d22919c80:   vaddsd 0x88(%rax),%xmm7,%xmm7
          │                        0x00007f3d22919c88:   vaddsd %xmm1,%xmm7,%xmm7
   0.00%  │                        0x00007f3d22919c8c:   vaddsd %xmm7,%xmm0,%xmm0
   0.04%  │                        0x00007f3d22919c90:   vmovq  -0x1980(%rip),%xmm7        # 0x00007f3d22918318
          │                        0x00007f3d22919c98:   vmulsd %xmm6,%xmm4,%xmm4
          │                        0x00007f3d22919c9c:   vmovq  0xa8(%rax),%xmm2
          │                        0x00007f3d22919ca4:   vandpd %xmm6,%xmm2,%xmm2
   0.02%  │                        0x00007f3d22919ca8:   vmulsd %xmm2,%xmm5,%xmm5
          │                        0x00007f3d22919cac:   vmulsd 0xa0(%rax),%xmm6,%xmm6
          │                        0x00007f3d22919cb4:   vsubsd %xmm5,%xmm7,%xmm7
          │                        0x00007f3d22919cb8:   vsubsd 0x80(%rax),%xmm2,%xmm2
   0.02%  │                        0x00007f3d22919cc0:   vsubsd %xmm4,%xmm7,%xmm7
          │                        0x00007f3d22919cc4:   vmulsd %xmm6,%xmm7,%xmm7
          │                        0x00007f3d22919cc8:   vmovdqu %xmm3,%xmm4
   0.00%  │                        0x00007f3d22919ccc:   vsubsd %xmm2,%xmm3,%xmm3
   0.03%  │                        0x00007f3d22919cd0:   vaddsd %xmm3,%xmm2,%xmm2
          │                        0x00007f3d22919cd4:   vsubsd %xmm2,%xmm4,%xmm4
          │                        0x00007f3d22919cd8:   vaddsd %xmm4,%xmm0,%xmm0
   0.02%  │                        0x00007f3d22919cdc:   vsubsd %xmm7,%xmm0,%xmm0
   0.07%  │                        0x00007f3d22919ce0:   vaddsd %xmm3,%xmm0,%xmm0
   0.09%  │╭                       0x00007f3d22919ce4:   jmp    0x00007f3d2291a319
   0.14%  ↘│╭                      0x00007f3d22919ce9:   jg     0x00007f3d22919d9d
           ││                      0x00007f3d22919cef:   vpextrw $0x3,%xmm0,%eax
           ││                      0x00007f3d22919cf4:   mov    %eax,%edx
           ││                      0x00007f3d22919cf6:   data16 nopw 0x0(%rax,%rax,1)
           ││                      0x00007f3d22919d00:   and    $0x7ff0,%eax
           ││╭                     0x00007f3d22919d06:   je     0x00007f3d22919d90
           │││                     0x00007f3d22919d0c:   and    $0x7fff,%edx
           │││                     0x00007f3d22919d12:   cmp    $0x3e20,%edx
           │││╭                    0x00007f3d22919d18:   jb     0x00007f3d22919d73
           ││││                    0x00007f3d22919d1e:   vmovdqu %xmm0,%xmm2
           ││││                    0x00007f3d22919d22:   vmovdqu %xmm0,%xmm3
           ││││                    0x00007f3d22919d26:   vmovq  -0x36e(%rip),%xmm1        # 0x00007f3d229199c0
           ││││                    0x00007f3d22919d2e:   vmulsd %xmm0,%xmm2,%xmm2
           ││││                    0x00007f3d22919d32:   vmulsd %xmm2,%xmm3,%xmm3
           ││││                    0x00007f3d22919d36:   vmulsd %xmm2,%xmm1,%xmm1
           ││││                    0x00007f3d22919d3a:   vaddsd -0x372(%rip),%xmm1,%xmm1        # 0x00007f3d229199d0
           ││││                    0x00007f3d22919d42:   vmulsd %xmm2,%xmm1,%xmm1
           ││││                    0x00007f3d22919d46:   vaddsd -0x36e(%rip),%xmm1,%xmm1        # 0x00007f3d229199e0
           ││││                    0x00007f3d22919d4e:   vmulsd %xmm2,%xmm1,%xmm1
           ││││                    0x00007f3d22919d52:   vaddsd -0x36a(%rip),%xmm1,%xmm1        # 0x00007f3d229199f0
           ││││                    0x00007f3d22919d5a:   vmulsd %xmm2,%xmm1,%xmm1
           ││││                    0x00007f3d22919d5e:   vaddsd -0x366(%rip),%xmm1,%xmm1        # 0x00007f3d22919a00
           ││││                    0x00007f3d22919d66:   vmulsd %xmm3,%xmm1,%xmm1
           ││││                    0x00007f3d22919d6a:   vaddsd %xmm1,%xmm0,%xmm0
           ││││╭                   0x00007f3d22919d6e:   jmp    0x00007f3d2291a319
           │││↘│                   0x00007f3d22919d73:   vmovq  -0x1a5b(%rip),%xmm3        # 0x00007f3d22918320
           │││ │                   0x00007f3d22919d7b:   vmulsd %xmm0,%xmm3,%xmm3
           │││ │                   0x00007f3d22919d7f:   vaddsd %xmm3,%xmm0,%xmm0
           │││ │                   0x00007f3d22919d83:   vmulsd -0x1a8b(%rip),%xmm0,%xmm0        # 0x00007f3d22918300
           │││ │╭                  0x00007f3d22919d8b:   jmp    0x00007f3d2291a319
           ││↘ ││                  0x00007f3d22919d90:   vmovdqu %xmm0,%xmm1
           ││  ││                  0x00007f3d22919d94:   vmulsd %xmm1,%xmm1,%xmm1
           ││  ││╭                 0x00007f3d22919d98:   jmp    0x00007f3d2291a319
   0.65%   │↘  │││                 0x00007f3d22919d9d:   vpextrw $0x3,%xmm0,%eax
           │   │││                 0x00007f3d22919da2:   and    $0x7ff0,%eax
           │   │││                 0x00007f3d22919da8:   cmp    $0x7ff0,%eax
           │   │││╭                0x00007f3d22919dae:   je     0x00007f3d2291a306
   0.56%   │   ││││                0x00007f3d22919db4:   vpextrw $0x3,%xmm0,%ecx
           │   ││││                0x00007f3d22919db9:   and    $0x7ff0,%ecx
           │   ││││                0x00007f3d22919dbf:   sub    $0x3f60,%ecx
   0.65%   │   ││││                0x00007f3d22919dc5:   shr    $0x7,%ecx
           │   ││││                0x00007f3d22919dc8:   and    $0xfffc,%ecx
           │   ││││                0x00007f3d22919dce:   lea    -0x3c5(%rip),%r11        # 0x00007f3d22919a10
           │   ││││                0x00007f3d22919dd5:   add    %r11,%rcx
   0.57%   │   ││││                0x00007f3d22919dd8:   vmovq  %xmm0,%rax
           │   ││││                0x00007f3d22919ddd:   mov    0x14(%rcx),%r10d
   0.00%   │   ││││                0x00007f3d22919de1:   mov    0x18(%rcx),%r8d
           │   ││││                0x00007f3d22919de5:   mov    %eax,%edx
   0.58%   │   ││││                0x00007f3d22919de7:   shr    $0x15,%rax
           │   ││││                0x00007f3d22919deb:   or     $0x80000000,%eax
           │   ││││                0x00007f3d22919df1:   shr    $0xb,%eax
           │   ││││                0x00007f3d22919df4:   mov    %r10d,%r9d
   0.62%   │   ││││                0x00007f3d22919df7:   imul   %rdx,%r10
           │   ││││                0x00007f3d22919dfb:   imul   %rax,%r9
           │   ││││                0x00007f3d22919dff:   imul   %rax,%r8
           │   ││││                0x00007f3d22919e03:   mov    0x10(%rcx),%esi
   0.60%   │   ││││                0x00007f3d22919e06:   mov    0xc(%rcx),%edi
           │   ││││                0x00007f3d22919e09:   mov    %r10d,%r11d
           │   ││││                0x00007f3d22919e0c:   shr    $0x20,%r10
           │   ││││                0x00007f3d22919e10:   add    %r10,%r9
   0.60%   │   ││││                0x00007f3d22919e13:   add    %r8,%r11
           │   ││││                0x00007f3d22919e16:   mov    %r11d,%r8d
           │   ││││                0x00007f3d22919e19:   shr    $0x20,%r11
           │   ││││                0x00007f3d22919e1d:   add    %r11,%r9
   0.57%   │   ││││                0x00007f3d22919e20:   mov    %esi,%r10d
           │   ││││                0x00007f3d22919e23:   imul   %rdx,%rsi
           │   ││││                0x00007f3d22919e27:   imul   %rax,%r10
           │   ││││                0x00007f3d22919e2b:   mov    %edi,%r11d
   0.64%   │   ││││                0x00007f3d22919e2e:   imul   %rdx,%rdi
           │   ││││                0x00007f3d22919e32:   mov    %esi,%ebx
           │   ││││                0x00007f3d22919e34:   shr    $0x20,%rsi
           │   ││││                0x00007f3d22919e38:   add    %rbx,%r9
   0.62%   │   ││││                0x00007f3d22919e3b:   mov    %r9d,%ebx
           │   ││││                0x00007f3d22919e3e:   shr    $0x20,%r9
           │   ││││                0x00007f3d22919e42:   add    %rsi,%r10
           │   ││││                0x00007f3d22919e45:   add    %r9,%r10
   0.67%   │   ││││                0x00007f3d22919e48:   shl    $0x20,%rbx
           │   ││││                0x00007f3d22919e4c:   or     %rbx,%r8
           │   ││││                0x00007f3d22919e4f:   imul   %rax,%r11
           │   ││││                0x00007f3d22919e53:   mov    0x8(%rcx),%r9d
   0.61%   │   ││││                0x00007f3d22919e57:   mov    0x4(%rcx),%esi
           │   ││││                0x00007f3d22919e5a:   mov    %edi,%ebx
           │   ││││                0x00007f3d22919e5c:   shr    $0x20,%rdi
           │   ││││                0x00007f3d22919e60:   add    %rbx,%r10
   0.63%   │   ││││                0x00007f3d22919e63:   mov    %r10d,%ebx
           │   ││││                0x00007f3d22919e66:   shr    $0x20,%r10
           │   ││││                0x00007f3d22919e6a:   add    %rdi,%r11
           │   ││││                0x00007f3d22919e6d:   add    %r10,%r11
   0.65%   │   ││││                0x00007f3d22919e70:   mov    %r9,%rdi
           │   ││││                0x00007f3d22919e73:   imul   %rdx,%r9
           │   ││││                0x00007f3d22919e77:   imul   %rax,%rdi
           │   ││││                0x00007f3d22919e7b:   mov    %r9d,%r10d
   0.64%   │   ││││                0x00007f3d22919e7e:   shr    $0x20,%r9
           │   ││││                0x00007f3d22919e82:   add    %r10,%r11
           │   ││││                0x00007f3d22919e85:   mov    %r11d,%r10d
           │   ││││                0x00007f3d22919e88:   shr    $0x20,%r11
   0.63%   │   ││││                0x00007f3d22919e8c:   add    %r9,%rdi
           │   ││││                0x00007f3d22919e8f:   add    %r11,%rdi
           │   ││││                0x00007f3d22919e92:   mov    %rsi,%r9
           │   ││││                0x00007f3d22919e95:   imul   %rdx,%rsi
   0.61%   │   ││││                0x00007f3d22919e99:   imul   %rax,%r9
   0.00%   │   ││││                0x00007f3d22919e9d:   shl    $0x20,%r10
           │   ││││                0x00007f3d22919ea1:   or     %rbx,%r10
           │   ││││                0x00007f3d22919ea4:   mov    (%rcx),%eax
   0.66%   │   ││││                0x00007f3d22919ea6:   mov    %esi,%r11d
           │   ││││                0x00007f3d22919ea9:   shr    $0x20,%rsi
           │   ││││                0x00007f3d22919ead:   add    %r11,%rdi
           │   ││││                0x00007f3d22919eb0:   mov    %edi,%r11d
   0.57%   │   ││││                0x00007f3d22919eb3:   shr    $0x20,%rdi
           │   ││││                0x00007f3d22919eb7:   add    %rsi,%r9
           │   ││││                0x00007f3d22919eba:   add    %rdi,%r9
           │   ││││                0x00007f3d22919ebd:   imul   %rax,%rdx
   0.59%   │   ││││                0x00007f3d22919ec1:   vpextrw $0x3,%xmm0,%ebx
           │   ││││                0x00007f3d22919ec6:   lea    -0x4bd(%rip),%rdi        # 0x00007f3d22919a10
           │   ││││                0x00007f3d22919ecd:   sub    %rdi,%rcx
   0.60%   │   ││││                0x00007f3d22919ed0:   add    %ecx,%ecx
           │   ││││                0x00007f3d22919ed2:   add    %ecx,%ecx
           │   ││││                0x00007f3d22919ed4:   add    %ecx,%ecx
           │   ││││                0x00007f3d22919ed6:   add    $0x13,%ecx
   0.63%   │   ││││                0x00007f3d22919ed9:   mov    $0x8000,%esi
           │   ││││                0x00007f3d22919ede:   and    %ebx,%esi
           │   ││││                0x00007f3d22919ee0:   shr    $0x4,%ebx
           │   ││││                0x00007f3d22919ee3:   and    $0x7ff,%ebx
   0.60%   │   ││││                0x00007f3d22919ee9:   sub    $0x3ff,%ebx
           │   ││││                0x00007f3d22919eef:   sub    %ebx,%ecx
   0.00%   │   ││││                0x00007f3d22919ef1:   add    %rdx,%r9
           │   ││││                0x00007f3d22919ef4:   mov    %ecx,%edx
   0.57%   │   ││││                0x00007f3d22919ef6:   add    $0x20,%edx
           │   ││││                0x00007f3d22919ef9:   nopl   0x0(%rax)
   0.00%   │   ││││                0x00007f3d22919f00:   cmp    $0x0,%ecx
           │   ││││╭               0x00007f3d22919f03:   jl     0x00007f3d2291a252
           │   │││││               0x00007f3d22919f09:   neg    %ecx
   0.65%   │   │││││               0x00007f3d22919f0b:   add    $0x1d,%ecx
           │   │││││               0x00007f3d22919f0e:   shl    %cl,%r9d
   0.58%   │   │││││               0x00007f3d22919f11:   mov    %r9d,%edi
           │   │││││               0x00007f3d22919f14:   and    $0x3fffffff,%r9d
           │   │││││               0x00007f3d22919f1b:   nopl   0x0(%rax,%rax,1)
           │   │││││               0x00007f3d22919f20:   test   $0x20000000,%r9d
           │   │││││╭              0x00007f3d22919f27:   jne    0x00007f3d2291a27f
   0.34%   │   ││││││              0x00007f3d22919f2d:   shr    %cl,%r9d
   0.01%   │   ││││││              0x00007f3d22919f30:   mov    $0x0,%ebx
   0.29%   │   ││││││              0x00007f3d22919f35:   shl    $0x20,%r9
           │   ││││││              0x00007f3d22919f39:   or     %r11,%r9
   0.01%   │   ││││││         ↗↗↗  0x00007f3d22919f3c:   nopl   0x0(%rax)
   0.00%   │   ││││││         │││  0x00007f3d22919f40:   cmp    $0x0,%r9
           │   ││││││╭        │││  0x00007f3d22919f44:   je     0x00007f3d2291a1fd
   0.58%   │   │││││││  ↗↗    │││  0x00007f3d22919f4a:   bsr    %r9,%r11
           │   │││││││  ││    │││  0x00007f3d22919f4e:   mov    $0x1d,%ecx
   0.00%   │   │││││││  ││    │││  0x00007f3d22919f53:   sub    %r11d,%ecx
           │   │││││││╭ ││    │││  0x00007f3d22919f56:   jle    0x00007f3d2291a22f
   0.01%   │   ││││││││ ││    │││  0x00007f3d22919f5c:   shl    %cl,%r9
   0.05%   │   ││││││││ ││    │││  0x00007f3d22919f5f:   mov    %r10,%rax
           │   ││││││││ ││    │││  0x00007f3d22919f62:   shl    %cl,%r10
   0.01%   │   ││││││││ ││    │││  0x00007f3d22919f65:   add    %ecx,%edx
           │   ││││││││ ││    │││  0x00007f3d22919f67:   neg    %ecx
   0.02%   │   ││││││││ ││    │││  0x00007f3d22919f69:   add    $0x40,%ecx
           │   ││││││││ ││    │││  0x00007f3d22919f6c:   shr    %cl,%rax
   0.04%   │   ││││││││ ││    │││  0x00007f3d22919f6f:   shr    %cl,%r8
   0.00%   │   ││││││││ ││    │││  0x00007f3d22919f72:   or     %rax,%r9
   0.02%   │   ││││││││ ││    │││  0x00007f3d22919f75:   or     %r8,%r10
   0.63%   │   ││││││││ ││↗↗↗ │││  0x00007f3d22919f78:   vcvtsi2sd %r9,%xmm0,%xmm0
   0.14%   │   ││││││││ │││││ │││  0x00007f3d22919f7d:   shr    %r10
   0.01%   │   ││││││││ │││││ │││  0x00007f3d22919f80:   vcvtsi2sd %r10,%xmm3,%xmm3
   0.63%   │   ││││││││ │││││ │││  0x00007f3d22919f85:   vxorpd %xmm4,%xmm4,%xmm4
   0.01%   │   ││││││││ │││││ │││  0x00007f3d22919f89:   shl    $0x4,%edx
   0.03%   │   ││││││││ │││││ │││  0x00007f3d22919f8c:   neg    %edx
   0.57%   │   ││││││││ │││││ │││  0x00007f3d22919f8e:   add    $0x3ff0,%edx
   0.05%   │   ││││││││ │││││ │││  0x00007f3d22919f94:   or     %esi,%edx
   0.03%   │   ││││││││ │││││ │││  0x00007f3d22919f96:   xor    %ebx,%edx
   0.01%   │   ││││││││ │││││ │││  0x00007f3d22919f98:   vpinsrw $0x3,%edx,%xmm4,%xmm4
   0.60%   │   ││││││││ │││││ │││  0x00007f3d22919f9d:   vmovq  -0x1c7d(%rip),%xmm2        # 0x00007f3d22918328
   0.02%   │   ││││││││ │││││ │││  0x00007f3d22919fa5:   vmovq  -0x1c7d(%rip),%xmm7        # 0x00007f3d22918330
   0.02%   │   ││││││││ │││││ │││  0x00007f3d22919fad:   vxorpd %xmm5,%xmm5,%xmm5
   0.61%   │   ││││││││ │││││ │││  0x00007f3d22919fb1:   sub    $0x3f0,%edx
   0.04%   │   ││││││││ │││││ │││  0x00007f3d22919fb7:   vpinsrw $0x3,%edx,%xmm5,%xmm5
   0.06%   │   ││││││││ │││││ │││  0x00007f3d22919fbc:   vmulsd %xmm4,%xmm0,%xmm0
   0.70%   │   ││││││││ │││││ │││  0x00007f3d22919fc0:   shl    $0x10,%esi
   0.02%   │   ││││││││ │││││ │││  0x00007f3d22919fc3:   sar    $0x1f,%esi
   0.01%   │   ││││││││ │││││ │││  0x00007f3d22919fc6:   vmulsd %xmm5,%xmm3,%xmm3
   0.14%   │   ││││││││ │││││ │││  0x00007f3d22919fca:   vmovdqu %xmm0,%xmm1
   0.55%   │   ││││││││ │││││ │││  0x00007f3d22919fce:   vmulsd %xmm2,%xmm0,%xmm0
   0.18%   │   ││││││││ │││││ │││  0x00007f3d22919fd2:   shr    $0x1e,%edi
           │   ││││││││ │││││ │││  0x00007f3d22919fd5:   vaddsd %xmm3,%xmm1,%xmm1
   0.32%   │   ││││││││ │││││ │││  0x00007f3d22919fd9:   vmulsd %xmm2,%xmm3,%xmm3
   0.61%   │   ││││││││ │││││ │││  0x00007f3d22919fdd:   add    %esi,%edi
           │   ││││││││ │││││ │││  0x00007f3d22919fdf:   xor    %esi,%edi
           │   ││││││││ │││││ │││  0x00007f3d22919fe1:   vmulsd %xmm1,%xmm7,%xmm7
   0.75%   │   ││││││││ │││││ │││  0x00007f3d22919fe5:   mov    %edi,%eax
   0.37%   │   ││││││││ │││││ │││  0x00007f3d22919fe7:   vaddsd %xmm3,%xmm7,%xmm7
   1.05%   │   ││││││││ │││││ │││  0x00007f3d22919feb:   vmovdqu %xmm0,%xmm2
           │   ││││││││ │││││ │││  0x00007f3d22919fef:   vaddsd %xmm7,%xmm0,%xmm0
   1.27%   │   ││││││││ │││││ │││  0x00007f3d22919ff3:   vsubsd %xmm0,%xmm2,%xmm2
   1.70%   │   ││││││││ │││││ │││  0x00007f3d22919ff7:   vaddsd %xmm2,%xmm7,%xmm7
   1.55%   │   ││││││││ │││││ │││  0x00007f3d22919ffb:   vmovdqu -0x1c93(%rip),%xmm1        # 0x00007f3d22918370
           │   ││││││││ │││││ │││  0x00007f3d2291a003:   vmovddup %xmm0,%xmm0
   0.00%   │   ││││││││ │││││ │││  0x00007f3d2291a007:   vmovdqu -0x1caf(%rip),%xmm4        # 0x00007f3d22918360
   0.17%   │   ││││││││ │││││ │││  0x00007f3d2291a00f:   vandpd %xmm0,%xmm4,%xmm4
   0.39%   │   ││││││││ │││││ │││  0x00007f3d2291a013:   vmulpd %xmm0,%xmm1,%xmm1
           │   ││││││││ │││││ │││  0x00007f3d2291a017:   vmovddup %xmm7,%xmm7
   0.00%   │   ││││││││ │││││ │││  0x00007f3d2291a01b:   vmovdqu -0x1ce3(%rip),%xmm5        # 0x00007f3d22918340
   0.19%   │   ││││││││ │││││ │││  0x00007f3d2291a023:   vmovdqu -0x1cdb(%rip),%xmm6        # 0x00007f3d22918350
   0.47%   │   ││││││││ │││││ │││  0x00007f3d2291a02b:   vpor   %xmm4,%xmm5,%xmm5
           │   ││││││││ │││││ │││  0x00007f3d2291a02f:   vaddpd %xmm5,%xmm1,%xmm1
   0.18%   │   ││││││││ │││││ │││  0x00007f3d2291a033:   vmovdqu %xmm1,%xmm5
   0.21%   │   ││││││││ │││││ │││  0x00007f3d2291a037:   vunpckhpd %xmm5,%xmm5,%xmm5
   0.43%   │   ││││││││ │││││ │││  0x00007f3d2291a03b:   vcvttsd2si %xmm5,%edx
   3.07%   │   ││││││││ │││││ │││  0x00007f3d2291a03f:   vcvttpd2dq %xmm1,%xmm1
   0.05%   │   ││││││││ │││││ │││  0x00007f3d2291a043:   vcvtdq2pd %xmm1,%xmm1
   1.71%   │   ││││││││ │││││ │││  0x00007f3d2291a047:   vmulpd %xmm6,%xmm1,%xmm1
   2.39%   │   ││││││││ │││││ │││  0x00007f3d2291a04b:   vmovdqu -0x1cd3(%rip),%xmm3        # 0x00007f3d22918380
   0.00%   │   ││││││││ │││││ │││  0x00007f3d2291a053:   vmovq  -0x1d4b(%rip),%xmm5        # 0x00007f3d22918310
           │   ││││││││ │││││ │││  0x00007f3d2291a05b:   shl    $0x4,%eax
           │   ││││││││ │││││ │││  0x00007f3d2291a05e:   add    $0x72900,%edx
   0.64%   │   ││││││││ │││││ │││  0x00007f3d2291a064:   vmovdqu -0x1cdc(%rip),%xmm4        # 0x00007f3d22918390
   0.00%   │   ││││││││ │││││ │││  0x00007f3d2291a06c:   vmulpd %xmm1,%xmm3,%xmm3
   1.88%   │   ││││││││ │││││ │││  0x00007f3d2291a070:   add    %eax,%edx
           │   ││││││││ │││││ │││  0x00007f3d2291a072:   and    $0x1f,%edx
   0.00%   │   ││││││││ │││││ │││  0x00007f3d2291a075:   vmulsd %xmm1,%xmm5,%xmm5
   0.23%   │   ││││││││ │││││ │││  0x00007f3d2291a079:   mov    %edx,%ecx
   0.47%   │   ││││││││ │││││ │││  0x00007f3d2291a07b:   vmulpd %xmm1,%xmm4,%xmm4
   0.13%   │   ││││││││ │││││ │││  0x00007f3d2291a07f:   shl    %ecx
           │   ││││││││ │││││ │││  0x00007f3d2291a081:   vsubpd %xmm3,%xmm0,%xmm0
   1.49%   │   ││││││││ │││││ │││  0x00007f3d2291a085:   vmulpd -0x1ced(%rip),%xmm1,%xmm1        # 0x00007f3d229183a0
   0.01%   │   ││││││││ │││││ │││  0x00007f3d2291a08d:   add    %ecx,%edx
           │   ││││││││ │││││ │││  0x00007f3d2291a08f:   shl    $0x2,%ecx
           │   ││││││││ │││││ │││  0x00007f3d2291a092:   add    %ecx,%edx
   0.64%   │   ││││││││ │││││ │││  0x00007f3d2291a094:   vaddsd %xmm0,%xmm5,%xmm5
   1.87%   │   ││││││││ │││││ │││  0x00007f3d2291a098:   vmovdqu %xmm0,%xmm2
   0.00%   │   ││││││││ │││││ │││  0x00007f3d2291a09c:   vsubpd %xmm4,%xmm0,%xmm0
   0.42%   │   ││││││││ │││││ │││  0x00007f3d2291a0a0:   vmovq  -0x1d90(%rip),%xmm6        # 0x00007f3d22918318
           │   ││││││││ │││││ │││  0x00007f3d2291a0a8:   shl    $0x4,%edx
   0.19%   │   ││││││││ │││││ │││  0x00007f3d2291a0ab:   lea    -0x1d02(%rip),%rax        # 0x00007f3d229183b0
   0.00%   │   ││││││││ │││││ │││  0x00007f3d2291a0b2:   vandpd -0x70a(%rip),%xmm5,%xmm5        # 0x00007f3d229199b0
   1.12%   │   ││││││││ │││││ │││  0x00007f3d2291a0ba:   vmovdqu %xmm0,%xmm3
           │   ││││││││ │││││ │││  0x00007f3d2291a0be:   add    %rdx,%rax
   0.12%   │   ││││││││ │││││ │││  0x00007f3d2291a0c1:   vsubpd %xmm0,%xmm2,%xmm2
   1.71%   │   ││││││││ │││││ │││  0x00007f3d2291a0c5:   vunpckhpd %xmm0,%xmm0,%xmm0
   0.12%   │   ││││││││ │││││ │││  0x00007f3d2291a0c9:   vdivsd %xmm5,%xmm6,%xmm6
   6.05%   │   ││││││││ │││││ │││  0x00007f3d2291a0cd:   vsubpd %xmm4,%xmm2,%xmm2
           │   ││││││││ │││││ │││  0x00007f3d2291a0d1:   vsubsd %xmm5,%xmm3,%xmm3
           │   ││││││││ │││││ │││  0x00007f3d2291a0d5:   vsubpd %xmm1,%xmm2,%xmm2
           │   ││││││││ │││││ │││  0x00007f3d2291a0d9:   vmovdqu 0x30(%rax),%xmm1
   0.60%   │   ││││││││ │││││ │││  0x00007f3d2291a0de:   vaddpd %xmm7,%xmm2,%xmm2
   0.18%   │   ││││││││ │││││ │││  0x00007f3d2291a0e2:   vmovdqu 0x10(%rax),%xmm7
           │   ││││││││ │││││ │││  0x00007f3d2291a0e7:   vmulpd %xmm0,%xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007f3d2291a0eb:   vmovdqu 0x60(%rax),%xmm4
   0.44%   │   ││││││││ │││││ │││  0x00007f3d2291a0f0:   vmulpd %xmm0,%xmm1,%xmm1
   0.19%   │   ││││││││ │││││ │││  0x00007f3d2291a0f4:   vmulpd %xmm0,%xmm4,%xmm4
           │   ││││││││ │││││ │││  0x00007f3d2291a0f8:   vaddsd %xmm3,%xmm2,%xmm2
   1.64%   │   ││││││││ │││││ │││  0x00007f3d2291a0fc:   vmovdqu %xmm0,%xmm3
   0.00%   │   ││││││││ │││││ │││  0x00007f3d2291a100:   vmulpd %xmm0,%xmm0,%xmm0
           │   ││││││││ │││││ │││  0x00007f3d2291a104:   vaddpd (%rax),%xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007f3d2291a108:   vaddpd 0x20(%rax),%xmm1,%xmm1
   0.60%   │   ││││││││ │││││ │││  0x00007f3d2291a10d:   vmulpd %xmm0,%xmm1,%xmm1
   0.00%   │   ││││││││ │││││ │││  0x00007f3d2291a111:   vaddpd 0x50(%rax),%xmm4,%xmm4
           │   ││││││││ │││││ │││  0x00007f3d2291a116:   vaddpd %xmm1,%xmm7,%xmm7
   0.02%   │   ││││││││ │││││ │││  0x00007f3d2291a11a:   vmovdqu 0x70(%rax),%xmm1
   0.60%   │   ││││││││ │││││ │││  0x00007f3d2291a11f:   vmulpd %xmm0,%xmm1,%xmm1
   0.00%   │   ││││││││ │││││ │││  0x00007f3d2291a123:   vmulpd %xmm0,%xmm0,%xmm0
           │   ││││││││ │││││ │││  0x00007f3d2291a127:   vaddpd %xmm1,%xmm4,%xmm4
   0.01%   │   ││││││││ │││││ │││  0x00007f3d2291a12b:   vmovdqu 0x40(%rax),%xmm1
   0.58%   │   ││││││││ │││││ │││  0x00007f3d2291a130:   vmulpd %xmm0,%xmm1,%xmm1
   0.00%   │   ││││││││ │││││ │││  0x00007f3d2291a134:   vaddpd %xmm1,%xmm7,%xmm7
   0.26%   │   ││││││││ │││││ │││  0x00007f3d2291a138:   vmovdqu %xmm3,%xmm1
   0.00%   │   ││││││││ │││││ │││  0x00007f3d2291a13c:   vmulpd %xmm0,%xmm3,%xmm3
   0.43%   │   ││││││││ │││││ │││  0x00007f3d2291a140:   vmulsd %xmm0,%xmm0,%xmm0
   0.01%   │   ││││││││ │││││ │││  0x00007f3d2291a144:   vmulpd 0x90(%rax),%xmm1,%xmm1
   0.19%   │   ││││││││ │││││ │││  0x00007f3d2291a14c:   vmulpd %xmm3,%xmm4,%xmm4
   0.00%   │   ││││││││ │││││ │││  0x00007f3d2291a150:   vmovdqu %xmm1,%xmm3
   0.46%   │   ││││││││ │││││ │││  0x00007f3d2291a154:   vaddpd %xmm4,%xmm7,%xmm7
   1.52%   │   ││││││││ │││││ │││  0x00007f3d2291a158:   vmovdqu %xmm1,%xmm4
   0.00%   │   ││││││││ │││││ │││  0x00007f3d2291a15c:   vmulsd %xmm7,%xmm0,%xmm0
   1.88%   │   ││││││││ │││││ │││  0x00007f3d2291a160:   vunpckhpd %xmm7,%xmm7,%xmm7
   0.00%   │   ││││││││ │││││ │││  0x00007f3d2291a164:   vaddsd %xmm7,%xmm0,%xmm0
   2.45%   │   ││││││││ │││││ │││  0x00007f3d2291a168:   vunpckhpd %xmm1,%xmm1,%xmm1
   0.00%   │   ││││││││ │││││ │││  0x00007f3d2291a16c:   vaddsd %xmm1,%xmm3,%xmm3
           │   ││││││││ │││││ │││  0x00007f3d2291a170:   vsubsd %xmm3,%xmm4,%xmm4
           │   ││││││││ │││││ │││  0x00007f3d2291a174:   vaddsd %xmm4,%xmm1,%xmm1
   0.69%   │   ││││││││ │││││ │││  0x00007f3d2291a178:   vmovdqu %xmm2,%xmm4
   0.00%   │   ││││││││ │││││ │││  0x00007f3d2291a17c:   vmovq  0x90(%rax),%xmm7
           │   ││││││││ │││││ │││  0x00007f3d2291a184:   vunpckhpd %xmm2,%xmm2,%xmm2
           │   ││││││││ │││││ │││  0x00007f3d2291a188:   vaddsd 0x98(%rax),%xmm7,%xmm7
   0.64%   │   ││││││││ │││││ │││  0x00007f3d2291a190:   vmulsd %xmm2,%xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007f3d2291a194:   vaddsd 0x88(%rax),%xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007f3d2291a19c:   vaddsd %xmm1,%xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007f3d2291a1a0:   vaddsd %xmm7,%xmm0,%xmm0
   1.19%   │   ││││││││ │││││ │││  0x00007f3d2291a1a4:   vmovq  -0x1e94(%rip),%xmm7        # 0x00007f3d22918318
           │   ││││││││ │││││ │││  0x00007f3d2291a1ac:   vmulsd %xmm6,%xmm4,%xmm4
           │   ││││││││ │││││ │││  0x00007f3d2291a1b0:   vmovq  0xa8(%rax),%xmm2
           │   ││││││││ │││││ │││  0x00007f3d2291a1b8:   vandpd %xmm6,%xmm2,%xmm2
   0.64%   │   ││││││││ │││││ │││  0x00007f3d2291a1bc:   vmulsd %xmm2,%xmm5,%xmm5
           │   ││││││││ │││││ │││  0x00007f3d2291a1c0:   vmulsd 0xa0(%rax),%xmm6,%xmm6
           │   ││││││││ │││││ │││  0x00007f3d2291a1c8:   vsubsd %xmm5,%xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007f3d2291a1cc:   vsubsd 0x80(%rax),%xmm2,%xmm2
   0.59%   │   ││││││││ │││││ │││  0x00007f3d2291a1d4:   vsubsd %xmm4,%xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007f3d2291a1d8:   vmulsd %xmm6,%xmm7,%xmm7
           │   ││││││││ │││││ │││  0x00007f3d2291a1dc:   vmovdqu %xmm3,%xmm4
           │   ││││││││ │││││ │││  0x00007f3d2291a1e0:   vsubsd %xmm2,%xmm3,%xmm3
   0.59%   │   ││││││││ │││││ │││  0x00007f3d2291a1e4:   vaddsd %xmm3,%xmm2,%xmm2
           │   ││││││││ │││││ │││  0x00007f3d2291a1e8:   vsubsd %xmm2,%xmm4,%xmm4
           │   ││││││││ │││││ │││  0x00007f3d2291a1ec:   vaddsd %xmm4,%xmm0,%xmm0
   0.65%   │   ││││││││ │││││ │││  0x00007f3d2291a1f0:   vsubsd %xmm7,%xmm0,%xmm0
   2.45%   │   ││││││││ │││││ │││  0x00007f3d2291a1f4:   vaddsd %xmm3,%xmm0,%xmm0
   2.55%   │   ││││││││╭│││││ │││  0x00007f3d2291a1f8:   jmp    0x00007f3d2291a319
           │   ││││││↘│││││││ │││  0x00007f3d2291a1fd:   add    $0x40,%edx
           │   ││││││ │││││││ │││  0x00007f3d2291a200:   mov    %r10,%r9
           │   ││││││ │││││││ │││  0x00007f3d2291a203:   mov    %r8,%r10
           │   ││││││ │││││││ │││  0x00007f3d2291a206:   mov    $0x0,%r8d
           │   ││││││ │││││││ │││  0x00007f3d2291a20c:   cmp    $0x0,%r9
           │   ││││││ ││╰││││ │││  0x00007f3d2291a210:   jne    0x00007f3d22919f4a
           │   ││││││ ││ ││││ │││  0x00007f3d2291a216:   add    $0x40,%edx
           │   ││││││ ││ ││││ │││  0x00007f3d2291a219:   mov    %r10,%r9
           │   ││││││ ││ ││││ │││  0x00007f3d2291a21c:   mov    %r8,%r10
           │   ││││││ ││ ││││ │││  0x00007f3d2291a21f:   nop
           │   ││││││ ││ ││││ │││  0x00007f3d2291a220:   cmp    $0x0,%r9
           │   ││││││ ││ ╰│││ │││  0x00007f3d2291a224:   jne    0x00007f3d22919f4a
           │   ││││││ ││  ╰││ │││  0x00007f3d2291a22a:   jmp    0x00007f3d22919f78
   0.01%   │   ││││││ ↘│   ╰│ │││  0x00007f3d2291a22f:   je     0x00007f3d22919f78
   0.61%   │   ││││││  │    │ │││  0x00007f3d2291a235:   neg    %ecx
   0.01%   │   ││││││  │    │ │││  0x00007f3d2291a237:   shr    %cl,%r10
   0.59%   │   ││││││  │    │ │││  0x00007f3d2291a23a:   mov    %r9,%rax
   0.01%   │   ││││││  │    │ │││  0x00007f3d2291a23d:   shr    %cl,%r9
   0.52%   │   ││││││  │    │ │││  0x00007f3d2291a240:   sub    %ecx,%edx
   0.00%   │   ││││││  │    │ │││  0x00007f3d2291a242:   neg    %ecx
           │   ││││││  │    │ │││  0x00007f3d2291a244:   add    $0x40,%ecx
           │   ││││││  │    │ │││  0x00007f3d2291a247:   shl    %cl,%rax
   0.66%   │   ││││││  │    │ │││  0x00007f3d2291a24a:   or     %rax,%r10
   0.00%   │   ││││││  │    ╰ │││  0x00007f3d2291a24d:   jmp    0x00007f3d22919f78
           │   ││││↘│  │      │││  0x00007f3d2291a252:   not    %ecx
           │   ││││ │  │      │││  0x00007f3d2291a254:   shl    $0x20,%r9
           │   ││││ │  │      │││  0x00007f3d2291a258:   or     %r11,%r9
           │   ││││ │  │      │││  0x00007f3d2291a25b:   shl    %cl,%r9
           │   ││││ │  │      │││  0x00007f3d2291a25e:   mov    %r9,%rdi
           │   ││││ │  │      │││  0x00007f3d2291a261:   test   $0x80000000,%r9d
           │   ││││ │  │     ╭│││  0x00007f3d2291a268:   jne    0x00007f3d2291a2c5
           │   ││││ │  │     ││││  0x00007f3d2291a26e:   shr    %cl,%r9d
           │   ││││ │  │     ││││  0x00007f3d2291a271:   mov    $0x0,%ebx
           │   ││││ │  │     ││││  0x00007f3d2291a276:   shr    $0x2,%rdi
           │   ││││ │  │     │╰││  0x00007f3d2291a27a:   jmp    0x00007f3d22919f3c
   0.33%   │   ││││ ↘  │     │ ││  0x00007f3d2291a27f:   shr    %cl,%r9d
   0.02%   │   ││││    │     │ ││  0x00007f3d2291a282:   mov    $0x40000000,%ebx
   0.31%   │   ││││    │     │ ││  0x00007f3d2291a287:   shr    %cl,%ebx
   0.00%   │   ││││    │     │ ││  0x00007f3d2291a289:   shl    $0x20,%r9
   0.28%   │   ││││    │     │ ││  0x00007f3d2291a28d:   or     %r11,%r9
           │   ││││    │     │ ││  0x00007f3d2291a290:   shl    $0x20,%rbx
           │   ││││    │     │ ││  0x00007f3d2291a294:   add    $0x40000000,%edi
   0.00%   │   ││││    │     │ ││  0x00007f3d2291a29a:   mov    $0x0,%ecx
   0.29%   │   ││││    │     │ ││  0x00007f3d2291a29f:   mov    $0x0,%r11d
   0.00%   │   ││││    │     │ ││  0x00007f3d2291a2a5:   sub    %r8,%rcx
           │   ││││    │     │ ││  0x00007f3d2291a2a8:   sbb    %r10,%r11
   0.00%   │   ││││    │     │ ││  0x00007f3d2291a2ab:   sbb    %r9,%rbx
   0.27%   │   ││││    │     │ ││  0x00007f3d2291a2ae:   mov    %rcx,%r8
   0.00%   │   ││││    │     │ ││  0x00007f3d2291a2b1:   mov    %r11,%r10
           │   ││││    │     │ ││  0x00007f3d2291a2b4:   mov    %rbx,%r9
           │   ││││    │     │ ││  0x00007f3d2291a2b7:   mov    $0x8000,%ebx
   0.29%   │   ││││    │     │ ││  0x00007f3d2291a2bc:   nopl   0x0(%rax)
           │   ││││    │     │ ╰│  0x00007f3d2291a2c0:   jmp    0x00007f3d22919f3c
           │   ││││    │     ↘  │  0x00007f3d2291a2c5:   shr    %cl,%r9d
           │   ││││    │        │  0x00007f3d2291a2c8:   movabs $0x100000000,%rbx
           │   ││││    │        │  0x00007f3d2291a2d2:   shr    %cl,%rbx
           │   ││││    │        │  0x00007f3d2291a2d5:   mov    $0x0,%ecx
           │   ││││    │        │  0x00007f3d2291a2da:   mov    $0x0,%r11d
           │   ││││    │        │  0x00007f3d2291a2e0:   sub    %r8,%rcx
           │   ││││    │        │  0x00007f3d2291a2e3:   sbb    %r10,%r11
           │   ││││    │        │  0x00007f3d2291a2e6:   sbb    %r9,%rbx
           │   ││││    │        │  0x00007f3d2291a2e9:   mov    %rcx,%r8
           │   ││││    │        │  0x00007f3d2291a2ec:   mov    %r11,%r10
           │   ││││    │        │  0x00007f3d2291a2ef:   mov    %rbx,%r9
           │   ││││    │        │  0x00007f3d2291a2f2:   mov    $0x8000,%ebx
           │   ││││    │        │  0x00007f3d2291a2f7:   shr    $0x2,%rdi
           │   ││││    │        │  0x00007f3d2291a2fb:   add    $0x40000000,%edi
           │   ││││    │        ╰  0x00007f3d2291a301:   jmp    0x00007f3d22919f3c
           │   │││↘    │           0x00007f3d2291a306:   vmovq  0x8(%rsp),%xmm0
           │   │││     │           0x00007f3d2291a30c:   vmulsd -0x200c(%rip),%xmm0,%xmm0        # 0x00007f3d22918308
           │   │││     │           0x00007f3d2291a314:   vmovq  %xmm0,(%rsp)
   0.00%   ↘   ↘↘↘     ↘           0x00007f3d2291a319:   add    $0x10,%rsp
                                   0x00007f3d2291a31d:   pop    %rbx
                                   0x00007f3d2291a31e:   add    $0x18,%rsp
   0.60%                           0x00007f3d2291a322:   ret    
                                   0x00007f3d2291a323:   hlt    
                                   0x00007f3d2291a324:   hlt    
                                   0x00007f3d2291a325:   hlt    
                                   0x00007f3d2291a326:   hlt    
                                   0x00007f3d2291a327:   hlt    
                                 --------------------------------------------------------------------------------
                                 - - - [OOP MAPS]- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                 ImmutableOopMapSet contains 0 OopMaps
                                 - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                 <nmethod compile_id='1054' compile_kind='osr' compiler='jvmci' level='4' entry='0x00007f3d22d9c680' size='4784' address='0x00007f3d22d9c490' relocation_offset='344' consts_offset='432' insts_offset='496' stub_offset='1733' scopes_data_offset='1808' scopes_pcs_offset='2400' dependencies_offset='4752' oops_offset='1736' metadata_offset='1744' method='com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark manual_loop_hoisting_and_sinking ()D' bytes='86' count='28' backedge_count='444640' iicount='28' stamp='28,511'/>
....................................................................................................
  86.91%  <total for region 1>

....[Hottest Regions]...............................................................................
  86.91%                        <unknown> 
   9.08%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking, version 3, compile id 1055 
   0.62%                kernel  [unknown] 
   0.30%                kernel  [unknown] 
   0.28%                kernel  [unknown] 
   0.19%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%             libjvm.so  xmlTextStream::flush 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%             libjvm.so  fileStream::write 
   1.75%  <...other 330 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  87.03%                        <unknown> 
   9.08%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking, version 3, compile id 1055 
   3.22%                kernel  [unknown] 
   0.05%             libjvm.so  xmlTextStream::flush 
   0.04%             libjvm.so  fileStream::write 
   0.03%             libjvm.so  defaultStream::has_log_file 
   0.03%             libc.so.6  __vfprintf_internal 
   0.03%             libjvm.so  ElfSymbolTable::lookup 
   0.03%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.02%             libc.so.6  _IO_fwrite 
   0.02%             libc.so.6  __strchr_avx2 
   0.01%             libc.so.6  _IO_default_xsputn 
   0.01%           interpreter  lload  22 lload  
   0.01%             libc.so.6  syscall 
   0.01%             libjvm.so  MethodMatcher::matches 
   0.01%             libc.so.6  __stpcpy_avx2 
   0.01%             libc.so.6  __GI___libc_write 
   0.30%  <...other 105 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  87.03%                      
   9.08%        jvmci, level 4
   3.22%                kernel
   0.35%             libjvm.so
   0.21%             libc.so.6
   0.04%           interpreter
   0.03%        hsdis-amd64.so
   0.02%  ld-linux-x86-64.so.2
   0.00%         perf-5794.map
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

Benchmark                                                              (iterations)  Mode  Cnt     Score    Error  Units
LoopInvariantCodeMotionBenchmark.initial_loop                                 16384  avgt    5  4316.884 ± 48.173  us/op
LoopInvariantCodeMotionBenchmark.initial_loop:asm                             16384  avgt            NaN             ---
LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking             16384  avgt    5  2117.215 ± 45.860  us/op
LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking:asm         16384  avgt            NaN             ---
