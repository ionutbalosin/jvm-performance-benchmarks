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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.initial_loop
# Parameters: (iterations = 16384)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 4255.451 us/op
# Warmup Iteration   2: 4211.702 us/op
# Warmup Iteration   3: 4207.612 us/op
# Warmup Iteration   4: 4207.244 us/op
# Warmup Iteration   5: 4207.427 us/op
Iteration   1: 4210.889 us/op
Iteration   2: 4207.750 us/op
Iteration   3: 4211.854 us/op
Iteration   4: 4207.816 us/op
Iteration   5: 4210.796 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.initial_loop":
  4209.821 ±(99.9%) 7.340 us/op [Average]
  (min, avg, max) = (4207.750, 4209.821, 4211.854), stdev = 1.906
  CI (99.9%): [4202.482, 4217.161] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.initial_loop:asm":
PrintAssembly processed: 128056 total address lines.
Perf output processed (skipped 56.230 seconds):
 Column 1: cycles (50995 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::libmTan 

           --------------------------------------------------------------------------------
           - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           StubRoutines::libmTan [0x00007f138c07811c, 0x00007f138c078964] (2120 bytes)
           --------------------------------------------------------------------------------
   0.11%     0x00007f138c07811c:   push   %rbp
   0.18%     0x00007f138c07811d:   mov    %rsp,%rbp
   0.58%     0x00007f138c078120:   push   %rbx
   0.13%     0x00007f138c078121:   sub    $0x10,%rsp
   0.46%     0x00007f138c078125:   vmovsd %xmm0,0x8(%rsp)
   0.09%     0x00007f138c07812b:   vpextrw $0x3,%xmm0,%eax
   0.16%     0x00007f138c078130:   and    $0x7fff,%eax
   0.55%     0x00007f138c078135:   sub    $0x3fba,%eax
   0.08%     0x00007f138c07813a:   cmp    $0x10e,%eax
          ╭  0x00007f138c07813f:   ja     0x00007f138c078346
   0.19%  │  0x00007f138c078145:   vmovdqu 0x161599b3(%rip),%xmm5        # 0x00007f13a21d1b00
   0.00%  │  0x00007f138c07814d:   vmovdqu 0x1615fa3b(%rip),%xmm6        # 0x00007f13a21d7b90
   0.35%  │  0x00007f138c078155:   vunpcklpd %xmm0,%xmm0,%xmm0
          │  0x00007f138c078159:   vmovdqu 0x1615fa1f(%rip),%xmm4        # 0x00007f13a21d7b80
   0.15%  │  0x00007f138c078161:   vandpd %xmm0,%xmm4,%xmm4
          │  0x00007f138c078165:   vmovdqu 0x1615fa03(%rip),%xmm1        # 0x00007f13a21d7b70
   0.34%  │  0x00007f138c07816d:   vmulpd %xmm0,%xmm1,%xmm1
          │  0x00007f138c078171:   vpor   %xmm4,%xmm5,%xmm5
   0.16%  │  0x00007f138c078175:   vaddpd %xmm5,%xmm1,%xmm1
   0.55%  │  0x00007f138c078179:   vmovdqu %xmm1,%xmm7
   0.31%  │  0x00007f138c07817d:   vunpckhpd %xmm7,%xmm7,%xmm7
   0.28%  │  0x00007f138c078181:   vcvttsd2si %xmm7,%edx
   0.90%  │  0x00007f138c078185:   vcvttpd2dq %xmm1,%xmm1
   0.33%  │  0x00007f138c07818a:   vcvtdq2pd %xmm1,%xmm1
   0.53%  │  0x00007f138c07818e:   vmulpd %xmm6,%xmm1,%xmm1
   1.05%  │  0x00007f138c078192:   vmovdqu 0x1615f9c6(%rip),%xmm3        # 0x00007f13a21d7b60
          │  0x00007f138c07819a:   vmovq  0x1615e31e(%rip),%xmm5        # 0x00007f13a21d64c0
          │  0x00007f138c0781a2:   add    $0x72900,%rdx
          │  0x00007f138c0781a9:   vmovdqu 0x1615f99f(%rip),%xmm4        # 0x00007f13a21d7b50
   0.52%  │  0x00007f138c0781b1:   vmulpd %xmm1,%xmm3,%xmm3
   0.86%  │  0x00007f138c0781b5:   and    $0x1f,%rdx
          │  0x00007f138c0781b9:   vmulsd %xmm1,%xmm5,%xmm5
   0.63%  │  0x00007f138c0781bd:   mov    %rdx,%rcx
   0.08%  │  0x00007f138c0781c0:   vmulpd %xmm1,%xmm4,%xmm4
   0.20%  │  0x00007f138c0781c4:   shl    %rcx
          │  0x00007f138c0781c7:   vsubpd %xmm3,%xmm0,%xmm0
   0.90%  │  0x00007f138c0781cb:   vmulpd 0x1615f96d(%rip),%xmm1,%xmm1        # 0x00007f13a21d7b40
   0.03%  │  0x00007f138c0781d3:   add    %rcx,%rdx
          │  0x00007f138c0781d6:   shl    $0x2,%rcx
          │  0x00007f138c0781da:   add    %rcx,%rdx
   0.49%  │  0x00007f138c0781dd:   vaddsd %xmm0,%xmm5,%xmm5
   1.48%  │  0x00007f138c0781e1:   vmovdqu %xmm0,%xmm2
          │  0x00007f138c0781e5:   vsubpd %xmm4,%xmm0,%xmm0
   0.09%  │  0x00007f138c0781e9:   vmovq  0x1615991f(%rip),%xmm6        # 0x00007f13a21d1b10
          │  0x00007f138c0781f1:   shl    $0x4,%rdx
   0.39%  │  0x00007f138c0781f5:   movabs $0x7f13a21d6540,%rax
          │  0x00007f138c0781ff:   vandpd 0x1615e329(%rip),%xmm5,%xmm5        # 0x00007f13a21d6530
   0.07%  │  0x00007f138c078207:   vmovdqu %xmm0,%xmm3
          │  0x00007f138c07820b:   add    %rdx,%rax
   0.41%  │  0x00007f138c07820e:   vsubpd %xmm0,%xmm2,%xmm2
   1.79%  │  0x00007f138c078212:   vunpckhpd %xmm0,%xmm0,%xmm0
          │  0x00007f138c078216:   vdivsd %xmm5,%xmm6,%xmm6
   4.75%  │  0x00007f138c07821a:   vsubpd %xmm4,%xmm2,%xmm2
          │  0x00007f138c07821e:   vmovdqu 0x10(%rax),%xmm7
          │  0x00007f138c078223:   vsubsd %xmm5,%xmm3,%xmm3
          │  0x00007f138c078227:   vmulpd %xmm0,%xmm7,%xmm7
   0.48%  │  0x00007f138c07822b:   vsubpd %xmm1,%xmm2,%xmm2
          │  0x00007f138c07822f:   vmovdqu 0x30(%rax),%xmm1
          │  0x00007f138c078234:   vmulpd %xmm0,%xmm1,%xmm1
          │  0x00007f138c078238:   vmovdqu 0x60(%rax),%xmm4
   0.47%  │  0x00007f138c07823d:   vmulpd %xmm0,%xmm4,%xmm4
          │  0x00007f138c078241:   vaddsd %xmm3,%xmm2,%xmm2
          │  0x00007f138c078245:   vmovdqu %xmm0,%xmm3
          │  0x00007f138c078249:   vmulpd %xmm0,%xmm0,%xmm0
   0.46%  │  0x00007f138c07824d:   vaddpd (%rax),%xmm7,%xmm7
          │  0x00007f138c078251:   vaddpd 0x20(%rax),%xmm1,%xmm1
          │  0x00007f138c078256:   vmulpd %xmm0,%xmm1,%xmm1
          │  0x00007f138c07825a:   vaddpd 0x50(%rax),%xmm4,%xmm4
   0.49%  │  0x00007f138c07825f:   vaddpd %xmm1,%xmm7,%xmm7
   0.32%  │  0x00007f138c078263:   vmovdqu 0x70(%rax),%xmm1
          │  0x00007f138c078268:   vmulpd %xmm0,%xmm1,%xmm1
          │  0x00007f138c07826c:   vmulpd %xmm0,%xmm0,%xmm0
   0.30%  │  0x00007f138c078270:   vaddpd %xmm1,%xmm4,%xmm4
   0.19%  │  0x00007f138c078274:   vmovdqu 0x40(%rax),%xmm1
          │  0x00007f138c078279:   vmulpd %xmm0,%xmm1,%xmm1
          │  0x00007f138c07827d:   vaddpd %xmm1,%xmm7,%xmm7
   1.30%  │  0x00007f138c078281:   vmovdqu %xmm3,%xmm1
          │  0x00007f138c078285:   vmulpd %xmm0,%xmm3,%xmm3
          │  0x00007f138c078289:   vmulsd %xmm0,%xmm0,%xmm0
          │  0x00007f138c07828d:   vmulpd 0x90(%rax),%xmm1,%xmm1
   0.57%  │  0x00007f138c078295:   vmulpd %xmm3,%xmm4,%xmm4
   0.01%  │  0x00007f138c078299:   vmovdqu %xmm1,%xmm3
          │  0x00007f138c07829d:   vaddpd %xmm4,%xmm7,%xmm7
   1.67%  │  0x00007f138c0782a1:   vmovdqu %xmm1,%xmm4
          │  0x00007f138c0782a5:   vmulsd %xmm7,%xmm0,%xmm0
   1.90%  │  0x00007f138c0782a9:   vunpckhpd %xmm7,%xmm7,%xmm7
          │  0x00007f138c0782ad:   vaddsd %xmm7,%xmm0,%xmm0
   1.93%  │  0x00007f138c0782b1:   vunpckhpd %xmm1,%xmm1,%xmm1
          │  0x00007f138c0782b5:   vaddsd %xmm1,%xmm3,%xmm3
          │  0x00007f138c0782b9:   vsubsd %xmm3,%xmm4,%xmm4
          │  0x00007f138c0782bd:   vaddsd %xmm4,%xmm1,%xmm1
   0.44%  │  0x00007f138c0782c1:   vmovdqu %xmm2,%xmm4
          │  0x00007f138c0782c5:   vmovq  0x90(%rax),%xmm7
          │  0x00007f138c0782cd:   vunpckhpd %xmm2,%xmm2,%xmm2
          │  0x00007f138c0782d1:   vaddsd 0x98(%rax),%xmm7,%xmm7
   0.51%  │  0x00007f138c0782d9:   vmulsd %xmm2,%xmm7,%xmm7
          │  0x00007f138c0782dd:   vaddsd 0x88(%rax),%xmm7,%xmm7
          │  0x00007f138c0782e5:   vaddsd %xmm1,%xmm7,%xmm7
          │  0x00007f138c0782e9:   vaddsd %xmm7,%xmm0,%xmm0
   1.03%  │  0x00007f138c0782ed:   vmovq  0x1615981b(%rip),%xmm7        # 0x00007f13a21d1b10
          │  0x00007f138c0782f5:   vmulsd %xmm6,%xmm4,%xmm4
          │  0x00007f138c0782f9:   vmovq  0xa8(%rax),%xmm2
          │  0x00007f138c078301:   vandpd %xmm6,%xmm2,%xmm2
   0.49%  │  0x00007f138c078305:   vmulsd %xmm2,%xmm5,%xmm5
          │  0x00007f138c078309:   vmulsd 0xa0(%rax),%xmm6,%xmm6
          │  0x00007f138c078311:   vsubsd %xmm5,%xmm7,%xmm7
          │  0x00007f138c078315:   vsubsd 0x80(%rax),%xmm2,%xmm2
   0.51%  │  0x00007f138c07831d:   vsubsd %xmm4,%xmm7,%xmm7
          │  0x00007f138c078321:   vmulsd %xmm6,%xmm7,%xmm7
          │  0x00007f138c078325:   vmovdqu %xmm3,%xmm4
          │  0x00007f138c078329:   vsubsd %xmm2,%xmm3,%xmm3
   0.49%  │  0x00007f138c07832d:   vaddsd %xmm3,%xmm2,%xmm2
          │  0x00007f138c078331:   vsubsd %xmm2,%xmm4,%xmm4
          │  0x00007f138c078335:   vaddsd %xmm4,%xmm0,%xmm0
   0.48%  │  0x00007f138c078339:   vsubsd %xmm7,%xmm0,%xmm0
   1.94%  │  0x00007f138c07833d:   vaddsd %xmm3,%xmm0,%xmm0
   1.94%  │  0x00007f138c078341:   jmp    0x00007f138c07895d
   0.11%  ↘  0x00007f138c078346:   jg     0x00007f138c0783ef
             0x00007f138c07834c:   vpextrw $0x3,%xmm0,%eax
             0x00007f138c078351:   mov    %eax,%edx
             0x00007f138c078353:   and    $0x7ff0,%eax
             0x00007f138c078358:   je     0x00007f138c0783e2
             0x00007f138c07835e:   and    $0x7fff,%edx
             0x00007f138c078364:   cmp    $0x3e20,%edx
             0x00007f138c07836a:   jb     0x00007f138c0783c5
             0x00007f138c078370:   vmovdqu %xmm0,%xmm2
             0x00007f138c078374:   vmovdqu %xmm0,%xmm3
             0x00007f138c078378:   vmovq  0x1615e1a0(%rip),%xmm1        # 0x00007f13a21d6520
....................................................................................................
  38.21%  <total for region 1>

....[Hottest Region 2]..............................................................................
runtime stub, StubRoutines::libmTan 

              0x00007f138c0783bc:   vaddsd %xmm1,%xmm0,%xmm0
              0x00007f138c0783c0:   jmp    0x00007f138c07895d
              0x00007f138c0783c5:   vmovq  0x1615971b(%rip),%xmm3        # 0x00007f13a21d1ae8
              0x00007f138c0783cd:   vmulsd %xmm0,%xmm3,%xmm3
              0x00007f138c0783d1:   vaddsd %xmm3,%xmm0,%xmm0
              0x00007f138c0783d5:   vmulsd 0x16159703(%rip),%xmm0,%xmm0        # 0x00007f13a21d1ae0
              0x00007f138c0783dd:   jmp    0x00007f138c07895d
              0x00007f138c0783e2:   vmovdqu %xmm0,%xmm1
              0x00007f138c0783e6:   vmulsd %xmm1,%xmm1,%xmm1
              0x00007f138c0783ea:   jmp    0x00007f138c07895d
   0.25%      0x00007f138c0783ef:   vpextrw $0x3,%xmm0,%eax
   0.01%      0x00007f138c0783f4:   and    $0x7ff0,%eax
              0x00007f138c0783f9:   cmp    $0x7ff0,%eax
              0x00007f138c0783fe:   je     0x00007f138c07894a
   0.25%      0x00007f138c078404:   vpextrw $0x3,%xmm0,%ecx
   0.00%      0x00007f138c078409:   and    $0x7ff0,%ecx
   0.00%      0x00007f138c07840f:   sub    $0x3f60,%ecx
   0.24%      0x00007f138c078415:   shr    $0x7,%ecx
              0x00007f138c078418:   and    $0xfffc,%ecx
              0x00007f138c07841e:   movabs $0x7f13a21d1990,%r11
              0x00007f138c078428:   add    %r11,%rcx
   0.38%      0x00007f138c07842b:   vmovq  %xmm0,%rax
              0x00007f138c078430:   mov    0x14(%rcx),%r10d
   0.49%      0x00007f138c078434:   mov    0x18(%rcx),%r8d
              0x00007f138c078438:   mov    %eax,%edx
   0.10%      0x00007f138c07843a:   shr    $0x15,%rax
              0x00007f138c07843e:   or     $0x80000000,%eax
   0.12%      0x00007f138c078443:   shr    $0xb,%eax
              0x00007f138c078446:   mov    %r10d,%r9d
   0.12%      0x00007f138c078449:   imul   %rdx,%r10
   0.26%      0x00007f138c07844d:   imul   %rax,%r9
   0.19%      0x00007f138c078451:   imul   %rax,%r8
   0.09%      0x00007f138c078455:   mov    0x10(%rcx),%esi
   0.12%      0x00007f138c078458:   mov    0xc(%rcx),%edi
              0x00007f138c07845b:   mov    %r10d,%r11d
   0.04%      0x00007f138c07845e:   shr    $0x20,%r10
   0.09%      0x00007f138c078462:   add    %r10,%r9
   0.10%      0x00007f138c078465:   add    %r8,%r11
              0x00007f138c078468:   mov    %r11d,%r8d
   0.05%      0x00007f138c07846b:   shr    $0x20,%r11
   0.10%      0x00007f138c07846f:   add    %r11,%r9
   0.36%      0x00007f138c078472:   mov    %esi,%r10d
              0x00007f138c078475:   imul   %rdx,%rsi
   0.04%      0x00007f138c078479:   imul   %rax,%r10
              0x00007f138c07847d:   mov    %edi,%r11d
   0.25%      0x00007f138c078480:   imul   %rdx,%rdi
              0x00007f138c078484:   mov    %esi,%ebx
   0.05%      0x00007f138c078486:   shr    $0x20,%rsi
              0x00007f138c07848a:   add    %rbx,%r9
   0.20%      0x00007f138c07848d:   mov    %r9d,%ebx
   0.15%      0x00007f138c078490:   shr    $0x20,%r9
   0.06%      0x00007f138c078494:   add    %rsi,%r10
              0x00007f138c078497:   add    %r9,%r10
   0.18%      0x00007f138c07849a:   shl    $0x20,%rbx
   0.08%      0x00007f138c07849e:   or     %rbx,%r8
   0.11%      0x00007f138c0784a1:   imul   %rax,%r11
              0x00007f138c0784a5:   mov    0x8(%rcx),%r9d
   0.13%      0x00007f138c0784a9:   mov    0x4(%rcx),%esi
   0.00%      0x00007f138c0784ac:   mov    %edi,%ebx
   0.12%      0x00007f138c0784ae:   shr    $0x20,%rdi
              0x00007f138c0784b2:   add    %rbx,%r10
   0.13%      0x00007f138c0784b5:   mov    %r10d,%ebx
   0.00%      0x00007f138c0784b8:   shr    $0x20,%r10
   0.12%      0x00007f138c0784bc:   add    %rdi,%r11
              0x00007f138c0784bf:   add    %r10,%r11
   0.13%      0x00007f138c0784c2:   mov    %r9,%rdi
   0.00%      0x00007f138c0784c5:   imul   %rdx,%r9
   0.13%      0x00007f138c0784c9:   imul   %rax,%rdi
              0x00007f138c0784cd:   mov    %r9d,%r10d
   0.14%      0x00007f138c0784d0:   shr    $0x20,%r9
   0.01%      0x00007f138c0784d4:   add    %r10,%r11
   0.13%      0x00007f138c0784d7:   mov    %r11d,%r10d
              0x00007f138c0784da:   shr    $0x20,%r11
   0.14%      0x00007f138c0784de:   add    %r9,%rdi
              0x00007f138c0784e1:   add    %r11,%rdi
   0.14%      0x00007f138c0784e4:   mov    %rsi,%r9
              0x00007f138c0784e7:   imul   %rdx,%rsi
   0.13%      0x00007f138c0784eb:   imul   %rax,%r9
              0x00007f138c0784ef:   shl    $0x20,%r10
   0.12%      0x00007f138c0784f3:   or     %rbx,%r10
              0x00007f138c0784f6:   mov    (%rcx),%eax
   0.13%      0x00007f138c0784f8:   mov    %esi,%r11d
   0.00%      0x00007f138c0784fb:   shr    $0x20,%rsi
   0.13%      0x00007f138c0784ff:   add    %r11,%rdi
              0x00007f138c078502:   mov    %edi,%r11d
   0.11%      0x00007f138c078505:   shr    $0x20,%rdi
   0.09%      0x00007f138c078509:   add    %rsi,%r9
   0.01%      0x00007f138c07850c:   add    %rdi,%r9
   0.11%      0x00007f138c07850f:   imul   %rax,%rdx
   0.11%      0x00007f138c078513:   vpextrw $0x3,%xmm0,%ebx
   0.01%      0x00007f138c078518:   movabs $0x7f13a21d1990,%rdi
   0.12%      0x00007f138c078522:   sub    %rdi,%rcx
   0.10%      0x00007f138c078525:   add    %ecx,%ecx
              0x00007f138c078527:   add    %ecx,%ecx
   0.02%      0x00007f138c078529:   add    %ecx,%ecx
   0.12%      0x00007f138c07852b:   add    $0x13,%ecx
   0.10%      0x00007f138c07852e:   mov    $0x8000,%esi
              0x00007f138c078533:   and    %ebx,%esi
   0.01%      0x00007f138c078535:   shr    $0x4,%ebx
   0.10%      0x00007f138c078538:   and    $0x7ff,%ebx
   0.12%      0x00007f138c07853e:   sub    $0x3ff,%ebx
              0x00007f138c078544:   sub    %ebx,%ecx
   0.02%      0x00007f138c078546:   add    %rdx,%r9
   0.09%      0x00007f138c078549:   mov    %ecx,%edx
   0.11%      0x00007f138c07854b:   add    $0x20,%edx
              0x00007f138c07854e:   cmp    $0x0,%ecx
              0x00007f138c078551:   jl     0x00007f138c07889a
   0.01%      0x00007f138c078557:   neg    %ecx
   0.13%      0x00007f138c078559:   add    $0x1d,%ecx
   0.12%      0x00007f138c07855c:   shl    %cl,%r9d
   0.14%      0x00007f138c07855f:   mov    %r9d,%edi
   0.12%      0x00007f138c078562:   and    $0x3fffffff,%r9d
              0x00007f138c078569:   test   $0x20000000,%r9d
              0x00007f138c078570:   jne    0x00007f138c0788c7
   0.07%      0x00007f138c078576:   shr    %cl,%r9d
   0.18%      0x00007f138c078579:   mov    $0x0,%ebx
   0.01%      0x00007f138c07857e:   shl    $0x20,%r9
   0.05%      0x00007f138c078582:   or     %r11,%r9
   0.10%      0x00007f138c078585:   cmp    $0x0,%r9
          ╭   0x00007f138c078589:   je     0x00007f138c078846
   0.12%  │↗  0x00007f138c07858f:   bsr    %r9,%r11
   0.17%  ││  0x00007f138c078593:   mov    $0x1d,%ecx
   0.01%  ││  0x00007f138c078598:   sub    %r11d,%ecx
          ││  0x00007f138c07859b:   jle    0x00007f138c078877
   0.01%  ││  0x00007f138c0785a1:   shl    %cl,%r9
   0.01%  ││  0x00007f138c0785a4:   mov    %r10,%rax
          ││  0x00007f138c0785a7:   shl    %cl,%r10
          ││  0x00007f138c0785aa:   add    %ecx,%edx
          ││  0x00007f138c0785ac:   neg    %ecx
          ││  0x00007f138c0785ae:   add    $0x40,%ecx
          ││  0x00007f138c0785b1:   shr    %cl,%rax
   0.00%  ││  0x00007f138c0785b4:   shr    %cl,%r8
          ││  0x00007f138c0785b7:   or     %rax,%r9
          ││  0x00007f138c0785ba:   or     %r8,%r10
   0.14%  ││  0x00007f138c0785bd:   vcvtsi2sd %r9,%xmm0,%xmm0
   0.49%  ││  0x00007f138c0785c2:   shr    %r10
   0.03%  ││  0x00007f138c0785c5:   vcvtsi2sd %r10,%xmm3,%xmm3
   0.61%  ││  0x00007f138c0785ca:   vxorpd %xmm4,%xmm4,%xmm4
   0.02%  ││  0x00007f138c0785ce:   shl    $0x4,%edx
          ││  0x00007f138c0785d1:   neg    %edx
   0.00%  ││  0x00007f138c0785d3:   add    $0x3ff0,%edx
   0.22%  ││  0x00007f138c0785d9:   or     %esi,%edx
   0.02%  ││  0x00007f138c0785db:   xor    %ebx,%edx
   0.01%  ││  0x00007f138c0785dd:   vpinsrw $0x3,%edx,%xmm4,%xmm4
   0.29%  ││  0x00007f138c0785e2:   vmovq  0x1615dede(%rip),%xmm2        # 0x00007f13a21d64c8
   0.01%  ││  0x00007f138c0785ea:   vmovq  0x1615dede(%rip),%xmm7        # 0x00007f13a21d64d0
   0.00%  ││  0x00007f138c0785f2:   vxorpd %xmm5,%xmm5,%xmm5
   0.01%  ││  0x00007f138c0785f6:   sub    $0x3f0,%edx
   0.21%  ││  0x00007f138c0785fc:   vpinsrw $0x3,%edx,%xmm5,%xmm5
   0.16%  ││  0x00007f138c078601:   vmulsd %xmm4,%xmm0,%xmm0
   0.23%  ││  0x00007f138c078605:   shl    $0x10,%esi
   0.07%  ││  0x00007f138c078608:   sar    $0x1f,%esi
   0.03%  ││  0x00007f138c07860b:   vmulsd %xmm5,%xmm3,%xmm3
   0.37%  ││  0x00007f138c07860f:   vmovdqu %xmm0,%xmm1
   0.02%  ││  0x00007f138c078613:   vmulsd %xmm2,%xmm0,%xmm0
   0.43%  ││  0x00007f138c078617:   shr    $0x1e,%edi
   0.01%  ││  0x00007f138c07861a:   vaddsd %xmm3,%xmm1,%xmm1
   0.52%  ││  0x00007f138c07861e:   vmulsd %xmm2,%xmm3,%xmm3
   0.21%  ││  0x00007f138c078622:   add    %esi,%edi
   0.01%  ││  0x00007f138c078624:   xor    %esi,%edi
          ││  0x00007f138c078626:   vmulsd %xmm1,%xmm7,%xmm7
   0.81%  ││  0x00007f138c07862a:   mov    %edi,%eax
   0.00%  ││  0x00007f138c07862c:   vaddsd %xmm3,%xmm7,%xmm7
   1.02%  ││  0x00007f138c078630:   vmovdqu %xmm0,%xmm2
          ││  0x00007f138c078634:   vaddsd %xmm7,%xmm0,%xmm0
   0.94%  ││  0x00007f138c078638:   vsubsd %xmm0,%xmm2,%xmm2
   1.00%  ││  0x00007f138c07863c:   vaddsd %xmm2,%xmm7,%xmm7
   0.97%  ││  0x00007f138c078640:   vmovdqu 0x1615f528(%rip),%xmm1        # 0x00007f13a21d7b70
          ││  0x00007f138c078648:   vmovddup %xmm0,%xmm0
          ││  0x00007f138c07864c:   vmovdqu 0x1615f52c(%rip),%xmm4        # 0x00007f13a21d7b80
          ││  0x00007f138c078654:   vandpd %xmm0,%xmm4,%xmm4
   0.22%  ││  0x00007f138c078658:   vmulpd %xmm0,%xmm1,%xmm1
          ││  0x00007f138c07865c:   vmovddup %xmm7,%xmm7
          ││  0x00007f138c078660:   vmovdqu 0x16159498(%rip),%xmm5        # 0x00007f13a21d1b00
          ││  0x00007f138c078668:   vmovdqu 0x1615f520(%rip),%xmm6        # 0x00007f13a21d7b90
   0.25%  ││  0x00007f138c078670:   vpor   %xmm4,%xmm5,%xmm5
          ││  0x00007f138c078674:   vaddpd %xmm5,%xmm1,%xmm1
   0.08%  ││  0x00007f138c078678:   vmovdqu %xmm1,%xmm5
          ││  0x00007f138c07867c:   vunpckhpd %xmm5,%xmm5,%xmm5
   0.27%  ││  0x00007f138c078680:   vcvttsd2si %xmm5,%edx
   1.43%  ││  0x00007f138c078684:   vcvttpd2dq %xmm1,%xmm1
          ││  0x00007f138c078689:   vcvtdq2pd %xmm1,%xmm1
   0.71%  ││  0x00007f138c07868d:   vmulpd %xmm6,%xmm1,%xmm1
   0.95%  ││  0x00007f138c078691:   vmovdqu 0x1615f4c7(%rip),%xmm3        # 0x00007f13a21d7b60
          ││  0x00007f138c078699:   vmovq  0x1615de1f(%rip),%xmm5        # 0x00007f13a21d64c0
          ││  0x00007f138c0786a1:   shl    $0x4,%eax
          ││  0x00007f138c0786a4:   add    $0x72900,%edx
   0.21%  ││  0x00007f138c0786aa:   vmovdqu 0x1615f49e(%rip),%xmm4        # 0x00007f13a21d7b50
          ││  0x00007f138c0786b2:   vmulpd %xmm1,%xmm3,%xmm3
   0.84%  ││  0x00007f138c0786b6:   add    %eax,%edx
          ││  0x00007f138c0786b8:   and    $0x1f,%edx
          ││  0x00007f138c0786bb:   vmulsd %xmm1,%xmm5,%xmm5
   0.09%  ││  0x00007f138c0786bf:   mov    %edx,%ecx
   0.18%  ││  0x00007f138c0786c1:   vmulpd %xmm1,%xmm4,%xmm4
   0.06%  ││  0x00007f138c0786c5:   shl    %ecx
          ││  0x00007f138c0786c7:   vsubpd %xmm3,%xmm0,%xmm0
   0.60%  ││  0x00007f138c0786cb:   vmulpd 0x1615f46d(%rip),%xmm1,%xmm1        # 0x00007f13a21d7b40
          ││  0x00007f138c0786d3:   add    %ecx,%edx
          ││  0x00007f138c0786d5:   shl    $0x2,%ecx
          ││  0x00007f138c0786d8:   add    %ecx,%edx
   0.26%  ││  0x00007f138c0786da:   vaddsd %xmm0,%xmm5,%xmm5
   0.78%  ││  0x00007f138c0786de:   vmovdqu %xmm0,%xmm2
          ││  0x00007f138c0786e2:   vsubpd %xmm4,%xmm0,%xmm0
   0.14%  ││  0x00007f138c0786e6:   vmovq  0x16159422(%rip),%xmm6        # 0x00007f13a21d1b10
          ││  0x00007f138c0786ee:   shl    $0x4,%edx
   0.09%  ││  0x00007f138c0786f1:   movabs $0x7f13a21d6540,%rax
          ││  0x00007f138c0786fb:   vandpd 0x1615de2d(%rip),%xmm5,%xmm5        # 0x00007f13a21d6530
   0.32%  ││  0x00007f138c078703:   vmovdqu %xmm0,%xmm3
          ││  0x00007f138c078707:   add    %rdx,%rax
   0.06%  ││  0x00007f138c07870a:   vsubpd %xmm0,%xmm2,%xmm2
   0.80%  ││  0x00007f138c07870e:   vunpckhpd %xmm0,%xmm0,%xmm0
   0.03%  ││  0x00007f138c078712:   vdivsd %xmm5,%xmm6,%xmm6
   2.39%  ││  0x00007f138c078716:   vsubpd %xmm4,%xmm2,%xmm2
          ││  0x00007f138c07871a:   vsubsd %xmm5,%xmm3,%xmm3
          ││  0x00007f138c07871e:   vsubpd %xmm1,%xmm2,%xmm2
          ││  0x00007f138c078722:   vmovdqu 0x30(%rax),%xmm1
   0.20%  ││  0x00007f138c078727:   vaddpd %xmm7,%xmm2,%xmm2
   0.05%  ││  0x00007f138c07872b:   vmovdqu 0x10(%rax),%xmm7
          ││  0x00007f138c078730:   vmulpd %xmm0,%xmm7,%xmm7
          ││  0x00007f138c078734:   vmovdqu 0x60(%rax),%xmm4
   0.20%  ││  0x00007f138c078739:   vmulpd %xmm0,%xmm1,%xmm1
   0.06%  ││  0x00007f138c07873d:   vmulpd %xmm0,%xmm4,%xmm4
          ││  0x00007f138c078741:   vaddsd %xmm3,%xmm2,%xmm2
   0.70%  ││  0x00007f138c078745:   vmovdqu %xmm0,%xmm3
          ││  0x00007f138c078749:   vmulpd %xmm0,%xmm0,%xmm0
          ││  0x00007f138c07874d:   vaddpd (%rax),%xmm7,%xmm7
          ││  0x00007f138c078751:   vaddpd 0x20(%rax),%xmm1,%xmm1
   0.25%  ││  0x00007f138c078756:   vmulpd %xmm0,%xmm1,%xmm1
          ││  0x00007f138c07875a:   vaddpd 0x50(%rax),%xmm4,%xmm4
          ││  0x00007f138c07875f:   vaddpd %xmm1,%xmm7,%xmm7
          ││  0x00007f138c078763:   vmovdqu 0x70(%rax),%xmm1
   0.20%  ││  0x00007f138c078768:   vmulpd %xmm0,%xmm1,%xmm1
   0.00%  ││  0x00007f138c07876c:   vmulpd %xmm0,%xmm0,%xmm0
          ││  0x00007f138c078770:   vaddpd %xmm1,%xmm4,%xmm4
   0.00%  ││  0x00007f138c078774:   vmovdqu 0x40(%rax),%xmm1
   0.21%  ││  0x00007f138c078779:   vmulpd %xmm0,%xmm1,%xmm1
   0.00%  ││  0x00007f138c07877d:   vaddpd %xmm1,%xmm7,%xmm7
   0.12%  ││  0x00007f138c078781:   vmovdqu %xmm3,%xmm1
          ││  0x00007f138c078785:   vmulpd %xmm0,%xmm3,%xmm3
   0.20%  ││  0x00007f138c078789:   vmulsd %xmm0,%xmm0,%xmm0
   0.00%  ││  0x00007f138c07878d:   vmulpd 0x90(%rax),%xmm1,%xmm1
   0.07%  ││  0x00007f138c078795:   vmulpd %xmm3,%xmm4,%xmm4
   0.00%  ││  0x00007f138c078799:   vmovdqu %xmm1,%xmm3
   0.19%  ││  0x00007f138c07879d:   vaddpd %xmm4,%xmm7,%xmm7
   0.47%  ││  0x00007f138c0787a1:   vmovdqu %xmm1,%xmm4
          ││  0x00007f138c0787a5:   vmulsd %xmm7,%xmm0,%xmm0
   1.02%  ││  0x00007f138c0787a9:   vunpckhpd %xmm7,%xmm7,%xmm7
          ││  0x00007f138c0787ad:   vaddsd %xmm7,%xmm0,%xmm0
   1.02%  ││  0x00007f138c0787b1:   vunpckhpd %xmm1,%xmm1,%xmm1
          ││  0x00007f138c0787b5:   vaddsd %xmm1,%xmm3,%xmm3
          ││  0x00007f138c0787b9:   vsubsd %xmm3,%xmm4,%xmm4
          ││  0x00007f138c0787bd:   vaddsd %xmm4,%xmm1,%xmm1
   0.24%  ││  0x00007f138c0787c1:   vmovdqu %xmm2,%xmm4
          ││  0x00007f138c0787c5:   vmovq  0x90(%rax),%xmm7
          ││  0x00007f138c0787cd:   vunpckhpd %xmm2,%xmm2,%xmm2
          ││  0x00007f138c0787d1:   vaddsd 0x98(%rax),%xmm7,%xmm7
   0.23%  ││  0x00007f138c0787d9:   vmulsd %xmm2,%xmm7,%xmm7
          ││  0x00007f138c0787dd:   vaddsd 0x88(%rax),%xmm7,%xmm7
          ││  0x00007f138c0787e5:   vaddsd %xmm1,%xmm7,%xmm7
          ││  0x00007f138c0787e9:   vaddsd %xmm7,%xmm0,%xmm0
   0.50%  ││  0x00007f138c0787ed:   vmovq  0x1615931b(%rip),%xmm7        # 0x00007f13a21d1b10
          ││  0x00007f138c0787f5:   vmulsd %xmm6,%xmm4,%xmm4
          ││  0x00007f138c0787f9:   vmovq  0xa8(%rax),%xmm2
          ││  0x00007f138c078801:   vandpd %xmm6,%xmm2,%xmm2
   0.26%  ││  0x00007f138c078805:   vmulsd %xmm2,%xmm5,%xmm5
          ││  0x00007f138c078809:   vmulsd 0xa0(%rax),%xmm6,%xmm6
          ││  0x00007f138c078811:   vsubsd %xmm5,%xmm7,%xmm7
          ││  0x00007f138c078815:   vsubsd 0x80(%rax),%xmm2,%xmm2
   0.22%  ││  0x00007f138c07881d:   vsubsd %xmm4,%xmm7,%xmm7
          ││  0x00007f138c078821:   vmulsd %xmm6,%xmm7,%xmm7
          ││  0x00007f138c078825:   vmovdqu %xmm3,%xmm4
          ││  0x00007f138c078829:   vsubsd %xmm2,%xmm3,%xmm3
   0.24%  ││  0x00007f138c07882d:   vaddsd %xmm3,%xmm2,%xmm2
          ││  0x00007f138c078831:   vsubsd %xmm2,%xmm4,%xmm4
          ││  0x00007f138c078835:   vaddsd %xmm4,%xmm0,%xmm0
   0.32%  ││  0x00007f138c078839:   vsubsd %xmm7,%xmm0,%xmm0
   0.98%  ││  0x00007f138c07883d:   vaddsd %xmm3,%xmm0,%xmm0
   1.01%  ││  0x00007f138c078841:   jmp    0x00007f138c07895d
          ↘│  0x00007f138c078846:   add    $0x40,%edx
           │  0x00007f138c078849:   mov    %r10,%r9
           │  0x00007f138c07884c:   mov    %r8,%r10
           │  0x00007f138c07884f:   mov    $0x0,%r8d
           │  0x00007f138c078855:   cmp    $0x0,%r9
           ╰  0x00007f138c078859:   jne    0x00007f138c07858f
              0x00007f138c07885f:   add    $0x40,%edx
              0x00007f138c078862:   mov    %r10,%r9
              0x00007f138c078865:   mov    %r8,%r10
              0x00007f138c078868:   cmp    $0x0,%r9
....................................................................................................
  37.53%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, java.lang.FdLibm$Atan::compute, version 2, compile id 583 

              0x00007f138c638550:   0xf4f4f4f4      0xf4f4f4f4f4f4f4f4      
              0x00007f138c638554:   0xf4f4f4f4                              
              0x00007f138c638558:   0xf4f4f4f4      0xf4f4f4f4f4f4f4f4      
              0x00007f138c63855c:   0xf4f4f4f4                              
            --------------------------------------------------------------------------------
            [Verified Entry Point]
              # {method} {0x00007f130b25fbb0} &apos;compute&apos; &apos;(D)D&apos; in &apos;java/lang/FdLibm$Atan&apos;
              # parm0:    xmm0:xmm0   = double
              #           [sp+0x30]  (sp of caller)
              0x00007f138c638560:   mov    %eax,-0x14000(%rsp)          ;   {no_reloc}
   0.13%      0x00007f138c638567:   push   %rbp
              0x00007f138c638568:   sub    $0x20,%rsp
   0.12%      0x00007f138c63856c:   cmpl   $0x1,0x20(%r15)
              0x00007f138c638574:   jne    0x00007f138c638736           ;*synchronization entry
                                                                        ; - java.lang.FdLibm$Atan::compute@-1 (line 1267)
              0x00007f138c63857a:   vmovq  %xmm0,%r10
              0x00007f138c63857f:   sar    $0x20,%r10
   0.16%      0x00007f138c638583:   mov    %r10d,%r11d                  ;*l2i {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.FdLibm::__HI@9 (line 105)
                                                                        ; - java.lang.FdLibm$Atan::compute@1 (line 1267)
              0x00007f138c638586:   mov    %r11d,%r8d
              0x00007f138c638589:   and    $0x7fffffff,%r8d             ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.FdLibm$Atan::compute@10 (line 1268)
              0x00007f138c638590:   lea    -0x3fdc0000(%r8),%r9d
   0.16%      0x00007f138c638597:   nopw   0x0(%rax,%rax,1)
              0x00007f138c6385a0:   cmp    $0x4340000,%r9d
          ╭   0x00007f138c6385a7:   jae    0x00007f138c6386a9           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.lang.FdLibm$Atan::compute@79 (line 1279)
   0.16%  │   0x00007f138c6385ad:   cmp    $0x3ff30000,%r8d
          │   0x00007f138c6385b4:   jl     0x00007f138c6386cc           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.lang.FdLibm$Atan::compute@116 (line 1288)
   0.03%  │   0x00007f138c6385ba:   nopw   0x0(%rax,%rax,1)
          │   0x00007f138c6385c0:   cmp    $0x40038000,%r8d
          │   0x00007f138c6385c7:   jl     0x00007f138c6386f8           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.lang.FdLibm$Atan::compute@164 (line 1297)
   0.09%  │   0x00007f138c6385cd:   movabs $0x7ff143ba8,%r10            ;   {oop([D{0x00000007ff143ba8})}
          │   0x00007f138c6385d7:   movabs $0x7ff143b78,%r8             ;   {oop([D{0x00000007ff143b78})}
   0.03%  │   0x00007f138c6385e1:   vmovsd 0x28(%r8),%xmm3
          │   0x00007f138c6385e7:   movabs $0x7ff143bd8,%r8             ;   {oop([D{0x00000007ff143bd8})}
   0.11%  │   0x00007f138c6385f1:   vmovsd -0xb9(%rip),%xmm1        # 0x00007f138c638540
          │                                                             ;   {section_word}
          │   0x00007f138c6385f9:   vandpd -0x5c1721(%rip),%xmm0,%xmm0        # Stub::double_sign_mask
          │                                                             ;*invokestatic abs {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.lang.FdLibm$Atan::compute@108 (line 1287)
          │                                                             ;   {external_word}
   0.03%  │   0x00007f138c638601:   vdivsd %xmm0,%xmm1,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.lang.FdLibm$Atan::compute@194 (line 1302)
   1.00%  │   0x00007f138c638605:   vmulsd %xmm2,%xmm2,%xmm4            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.lang.FdLibm$Atan::compute@198 (line 1307)
   0.58%  │   0x00007f138c638609:   vmulsd %xmm4,%xmm4,%xmm5            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.lang.FdLibm$Atan::compute@205 (line 1308)
   0.60%  │   0x00007f138c63860d:   vmulsd 0x60(%r8),%xmm5,%xmm0
   0.59%  │   0x00007f138c638613:   vmulsd 0x58(%r8),%xmm5,%xmm1
   0.11%  │   0x00007f138c638619:   vaddsd 0x50(%r8),%xmm0,%xmm0
   0.48%  │   0x00007f138c63861f:   vaddsd 0x48(%r8),%xmm1,%xmm1
   0.10%  │   0x00007f138c638625:   vmulsd %xmm5,%xmm0,%xmm0
   0.54%  │   0x00007f138c638629:   vaddsd 0x40(%r8),%xmm0,%xmm0
   0.61%  │   0x00007f138c63862f:   vmulsd %xmm5,%xmm1,%xmm1
          │   0x00007f138c638633:   vaddsd 0x38(%r8),%xmm1,%xmm1
   0.13%  │   0x00007f138c638639:   vmulsd %xmm5,%xmm0,%xmm0
   0.46%  │   0x00007f138c63863d:   vaddsd 0x30(%r8),%xmm0,%xmm0
   0.62%  │   0x00007f138c638643:   vmulsd %xmm5,%xmm1,%xmm1
          │   0x00007f138c638647:   vaddsd 0x28(%r8),%xmm1,%xmm1
   0.12%  │   0x00007f138c63864d:   vmulsd %xmm5,%xmm0,%xmm0
   0.50%  │   0x00007f138c638651:   vaddsd 0x20(%r8),%xmm0,%xmm0
   0.55%  │   0x00007f138c638657:   vmulsd %xmm5,%xmm1,%xmm1
          │   0x00007f138c63865b:   vaddsd 0x18(%r8),%xmm1,%xmm1
   0.11%  │   0x00007f138c638661:   vmulsd %xmm5,%xmm0,%xmm0
   0.47%  │   0x00007f138c638665:   vaddsd 0x10(%r8),%xmm0,%xmm0
   0.55%  │   0x00007f138c63866b:   vmulsd %xmm5,%xmm1,%xmm1
          │   0x00007f138c63866f:   vmulsd %xmm4,%xmm0,%xmm0
   0.54%  │   0x00007f138c638673:   vaddsd %xmm1,%xmm0,%xmm0
   0.58%  │   0x00007f138c638677:   vmulsd %xmm2,%xmm0,%xmm0
   0.60%  │   0x00007f138c63867b:   vsubsd 0x28(%r10),%xmm0,%xmm0
   0.63%  │   0x00007f138c638681:   vsubsd %xmm2,%xmm0,%xmm0
   0.54%  │   0x00007f138c638685:   vsubsd %xmm0,%xmm3,%xmm0            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.lang.FdLibm$Atan::compute@340 (line 1315)
   0.59%  │   0x00007f138c638689:   test   %r11d,%r11d
          │╭  0x00007f138c63868c:   jge    0x00007f138c638696           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.lang.FdLibm$Atan::compute@345 (line 1316)
          ││  0x00007f138c63868e:   vxorpd -0x5c1796(%rip),%xmm0,%xmm0        # Stub::double_sign_flip
          ││                                                            ;*dreturn {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.lang.FdLibm$Atan::compute@356 (line 1316)
          ││                                                            ;   {external_word}
   0.11%  │↘  0x00007f138c638696:   add    $0x20,%rsp
          │   0x00007f138c63869a:   pop    %rbp
          │   0x00007f138c63869b:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │   0x00007f138c6386a2:   ja     0x00007f138c638720
   0.13%  │   0x00007f138c6386a8:   ret    
          ↘   0x00007f138c6386a9:   mov    $0xffffff3d,%esi
              0x00007f138c6386ae:   vmovq  %xmm0,%rbp
              0x00007f138c6386b3:   mov    %r11d,0x4(%rsp)
              0x00007f138c6386b8:   mov    %r8d,0x8(%rsp)
              0x00007f138c6386bd:   xchg   %ax,%ax
              0x00007f138c6386bf:   call   0x00007f138c0c9f00           ; ImmutableOopMap {}
                                                                        ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.lang.FdLibm$Atan::compute@17 (line 1269)
                                                                        ;   {runtime_call UncommonTrapBlob}
              0x00007f138c6386c4:   nopl   0x334(%rax,%rax,1)           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  12.83%  <total for region 3>

....[Hottest Regions]...............................................................................
  38.21%        runtime stub  StubRoutines::libmTan 
  37.53%        runtime stub  StubRoutines::libmTan 
  12.83%         c2, level 4  java.lang.FdLibm$Atan::compute, version 2, compile id 583 
   5.93%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop, version 3, compile id 587 
   1.56%        runtime stub  StubRoutines::libmTan 
   1.23%              kernel  [unknown] 
   0.72%        runtime stub  StubRoutines::libmTan 
   0.71%        runtime stub  StubRoutines::libmTan 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.81%  <...other 249 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  78.73%        runtime stub  StubRoutines::libmTan 
  12.83%         c2, level 4  java.lang.FdLibm$Atan::compute, version 2, compile id 583 
   5.93%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop, version 3, compile id 587 
   2.25%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  defaultStream::hold 
   0.01%           libjvm.so  xmlStream::write_text 
   0.00%           libjvm.so  jio_print 
   0.00%        libc-2.31.so  syscall 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.13%  <...other 64 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  78.73%        runtime stub
  18.76%         c2, level 4
   2.25%              kernel
   0.11%           libjvm.so
   0.06%        libc-2.31.so
   0.03%                    
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%    perf-1939762.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking
# Parameters: (iterations = 16384)

# Run progress: 50.00% complete, ETA 00:01:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1224.614 us/op
# Warmup Iteration   2: 1211.875 us/op
# Warmup Iteration   3: 1212.537 us/op
# Warmup Iteration   4: 1211.872 us/op
# Warmup Iteration   5: 1211.896 us/op
Iteration   1: 1211.860 us/op
Iteration   2: 1211.827 us/op
Iteration   3: 1211.743 us/op
Iteration   4: 1211.575 us/op
Iteration   5: 1211.550 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking":
  1211.711 ±(99.9%) 0.549 us/op [Average]
  (min, avg, max) = (1211.550, 1211.711, 1211.860), stdev = 0.142
  CI (99.9%): [1211.163, 1212.260] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking:asm":
PrintAssembly processed: 129373 total address lines.
Perf output processed (skipped 56.198 seconds):
 Column 1: cycles (50717 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::libmTan 

              0x00007fb35407839c:   vaddsd %xmm1,%xmm0,%xmm0
              0x00007fb3540783a0:   jmp    0x00007fb35407893d
              0x00007fb3540783a5:   vmovq  0x164f073b(%rip),%xmm3        # 0x00007fb36a568ae8
              0x00007fb3540783ad:   vmulsd %xmm0,%xmm3,%xmm3
              0x00007fb3540783b1:   vaddsd %xmm3,%xmm0,%xmm0
              0x00007fb3540783b5:   vmulsd 0x164f0723(%rip),%xmm0,%xmm0        # 0x00007fb36a568ae0
              0x00007fb3540783bd:   jmp    0x00007fb35407893d
              0x00007fb3540783c2:   vmovdqu %xmm0,%xmm1
              0x00007fb3540783c6:   vmulsd %xmm1,%xmm1,%xmm1
              0x00007fb3540783ca:   jmp    0x00007fb35407893d
   0.48%      0x00007fb3540783cf:   vpextrw $0x3,%xmm0,%eax
              0x00007fb3540783d4:   and    $0x7ff0,%eax
              0x00007fb3540783d9:   cmp    $0x7ff0,%eax
              0x00007fb3540783de:   je     0x00007fb35407892a
   0.47%      0x00007fb3540783e4:   vpextrw $0x3,%xmm0,%ecx
              0x00007fb3540783e9:   and    $0x7ff0,%ecx
              0x00007fb3540783ef:   sub    $0x3f60,%ecx
   0.51%      0x00007fb3540783f5:   shr    $0x7,%ecx
   0.09%      0x00007fb3540783f8:   and    $0xfffc,%ecx
   0.05%      0x00007fb3540783fe:   movabs $0x7fb36a568990,%r11
              0x00007fb354078408:   add    %r11,%rcx
   0.64%      0x00007fb35407840b:   vmovq  %xmm0,%rax
   0.00%      0x00007fb354078410:   mov    0x14(%rcx),%r10d
   1.45%      0x00007fb354078414:   mov    0x18(%rcx),%r8d
              0x00007fb354078418:   mov    %eax,%edx
   0.16%      0x00007fb35407841a:   shr    $0x15,%rax
              0x00007fb35407841e:   or     $0x80000000,%eax
   0.32%      0x00007fb354078423:   shr    $0xb,%eax
              0x00007fb354078426:   mov    %r10d,%r9d
   0.21%      0x00007fb354078429:   imul   %rdx,%r10
   0.60%      0x00007fb35407842d:   imul   %rax,%r9
   0.37%      0x00007fb354078431:   imul   %rax,%r8
   0.27%      0x00007fb354078435:   mov    0x10(%rcx),%esi
   0.20%      0x00007fb354078438:   mov    0xc(%rcx),%edi
              0x00007fb35407843b:   mov    %r10d,%r11d
   0.08%      0x00007fb35407843e:   shr    $0x20,%r10
   0.30%      0x00007fb354078442:   add    %r10,%r9
   0.15%      0x00007fb354078445:   add    %r8,%r11
              0x00007fb354078448:   mov    %r11d,%r8d
   0.10%      0x00007fb35407844b:   shr    $0x20,%r11
   0.24%      0x00007fb35407844f:   add    %r11,%r9
   0.58%      0x00007fb354078452:   mov    %esi,%r10d
              0x00007fb354078455:   imul   %rdx,%rsi
   0.07%      0x00007fb354078459:   imul   %rax,%r10
              0x00007fb35407845d:   mov    %edi,%r11d
   0.45%      0x00007fb354078460:   imul   %rdx,%rdi
              0x00007fb354078464:   mov    %esi,%ebx
   0.13%      0x00007fb354078466:   shr    $0x20,%rsi
              0x00007fb35407846a:   add    %rbx,%r9
   0.40%      0x00007fb35407846d:   mov    %r9d,%ebx
   0.32%      0x00007fb354078470:   shr    $0x20,%r9
   0.12%      0x00007fb354078474:   add    %rsi,%r10
              0x00007fb354078477:   add    %r9,%r10
   0.29%      0x00007fb35407847a:   shl    $0x20,%rbx
   0.16%      0x00007fb35407847e:   or     %rbx,%r8
   0.28%      0x00007fb354078481:   imul   %rax,%r11
              0x00007fb354078485:   mov    0x8(%rcx),%r9d
   0.21%      0x00007fb354078489:   mov    0x4(%rcx),%esi
   0.02%      0x00007fb35407848c:   mov    %edi,%ebx
   0.27%      0x00007fb35407848e:   shr    $0x20,%rdi
   0.00%      0x00007fb354078492:   add    %rbx,%r10
   0.23%      0x00007fb354078495:   mov    %r10d,%ebx
   0.03%      0x00007fb354078498:   shr    $0x20,%r10
   0.22%      0x00007fb35407849c:   add    %rdi,%r11
              0x00007fb35407849f:   add    %r10,%r11
   0.23%      0x00007fb3540784a2:   mov    %r9,%rdi
   0.02%      0x00007fb3540784a5:   imul   %rdx,%r9
   0.26%      0x00007fb3540784a9:   imul   %rax,%rdi
   0.00%      0x00007fb3540784ad:   mov    %r9d,%r10d
   0.25%      0x00007fb3540784b0:   shr    $0x20,%r9
   0.02%      0x00007fb3540784b4:   add    %r10,%r11
   0.23%      0x00007fb3540784b7:   mov    %r11d,%r10d
              0x00007fb3540784ba:   shr    $0x20,%r11
   0.21%      0x00007fb3540784be:   add    %r9,%rdi
   0.03%      0x00007fb3540784c1:   add    %r11,%rdi
   0.31%      0x00007fb3540784c4:   mov    %rsi,%r9
   0.00%      0x00007fb3540784c7:   imul   %rdx,%rsi
   0.20%      0x00007fb3540784cb:   imul   %rax,%r9
   0.01%      0x00007fb3540784cf:   shl    $0x20,%r10
   0.31%      0x00007fb3540784d3:   or     %rbx,%r10
              0x00007fb3540784d6:   mov    (%rcx),%eax
   0.18%      0x00007fb3540784d8:   mov    %esi,%r11d
   0.03%      0x00007fb3540784db:   shr    $0x20,%rsi
   0.25%      0x00007fb3540784df:   add    %r11,%rdi
   0.00%      0x00007fb3540784e2:   mov    %edi,%r11d
   0.21%      0x00007fb3540784e5:   shr    $0x20,%rdi
   0.32%      0x00007fb3540784e9:   add    %rsi,%r9
   0.04%      0x00007fb3540784ec:   add    %rdi,%r9
   0.31%      0x00007fb3540784ef:   imul   %rax,%rdx
   0.20%      0x00007fb3540784f3:   vpextrw $0x3,%xmm0,%ebx
   0.03%      0x00007fb3540784f8:   movabs $0x7fb36a568990,%rdi
   0.26%      0x00007fb354078502:   sub    %rdi,%rcx
   0.16%      0x00007fb354078505:   add    %ecx,%ecx
              0x00007fb354078507:   add    %ecx,%ecx
   0.03%      0x00007fb354078509:   add    %ecx,%ecx
   0.31%      0x00007fb35407850b:   add    $0x13,%ecx
   0.21%      0x00007fb35407850e:   mov    $0x8000,%esi
              0x00007fb354078513:   and    %ebx,%esi
   0.02%      0x00007fb354078515:   shr    $0x4,%ebx
   0.23%      0x00007fb354078518:   and    $0x7ff,%ebx
   0.18%      0x00007fb35407851e:   sub    $0x3ff,%ebx
              0x00007fb354078524:   sub    %ebx,%ecx
   0.05%      0x00007fb354078526:   add    %rdx,%r9
   0.27%      0x00007fb354078529:   mov    %ecx,%edx
   0.15%      0x00007fb35407852b:   add    $0x20,%edx
              0x00007fb35407852e:   cmp    $0x0,%ecx
              0x00007fb354078531:   jl     0x00007fb35407887a
   0.03%      0x00007fb354078537:   neg    %ecx
   0.29%      0x00007fb354078539:   add    $0x1d,%ecx
   0.21%      0x00007fb35407853c:   shl    %cl,%r9d
   0.31%      0x00007fb35407853f:   mov    %r9d,%edi
   0.17%      0x00007fb354078542:   and    $0x3fffffff,%r9d
              0x00007fb354078549:   test   $0x20000000,%r9d
              0x00007fb354078550:   jne    0x00007fb3540788a7
   0.01%      0x00007fb354078556:   shr    %cl,%r9d
   0.25%      0x00007fb354078559:   mov    $0x0,%ebx
   0.02%      0x00007fb35407855e:   shl    $0x20,%r9
   0.20%      0x00007fb354078562:   or     %r11,%r9
   0.23%      0x00007fb354078565:   cmp    $0x0,%r9
          ╭   0x00007fb354078569:   je     0x00007fb354078826
   0.13%  │↗  0x00007fb35407856f:   bsr    %r9,%r11
   0.38%  ││  0x00007fb354078573:   mov    $0x1d,%ecx
   0.05%  ││  0x00007fb354078578:   sub    %r11d,%ecx
          ││  0x00007fb35407857b:   jle    0x00007fb354078857
   0.02%  ││  0x00007fb354078581:   shl    %cl,%r9
   0.03%  ││  0x00007fb354078584:   mov    %r10,%rax
   0.01%  ││  0x00007fb354078587:   shl    %cl,%r10
   0.02%  ││  0x00007fb35407858a:   add    %ecx,%edx
   0.00%  ││  0x00007fb35407858c:   neg    %ecx
          ││  0x00007fb35407858e:   add    $0x40,%ecx
          ││  0x00007fb354078591:   shr    %cl,%rax
   0.03%  ││  0x00007fb354078594:   shr    %cl,%r8
   0.03%  ││  0x00007fb354078597:   or     %rax,%r9
   0.02%  ││  0x00007fb35407859a:   or     %r8,%r10
   0.25%  ││  0x00007fb35407859d:   vcvtsi2sd %r9,%xmm0,%xmm0
   1.08%  ││  0x00007fb3540785a2:   shr    %r10
   0.05%  ││  0x00007fb3540785a5:   vcvtsi2sd %r10,%xmm3,%xmm3
   1.34%  ││  0x00007fb3540785aa:   vxorpd %xmm4,%xmm4,%xmm4
   0.03%  ││  0x00007fb3540785ae:   shl    $0x4,%edx
   0.01%  ││  0x00007fb3540785b1:   neg    %edx
   0.03%  ││  0x00007fb3540785b3:   add    $0x3ff0,%edx
   0.46%  ││  0x00007fb3540785b9:   or     %esi,%edx
   0.04%  ││  0x00007fb3540785bb:   xor    %ebx,%edx
   0.00%  ││  0x00007fb3540785bd:   vpinsrw $0x3,%edx,%xmm4,%xmm4
   0.50%  ││  0x00007fb3540785c2:   vmovq  0x164f4efe(%rip),%xmm2        # 0x00007fb36a56d4c8
   0.03%  ││  0x00007fb3540785ca:   vmovq  0x164f4efe(%rip),%xmm7        # 0x00007fb36a56d4d0
          ││  0x00007fb3540785d2:   vxorpd %xmm5,%xmm5,%xmm5
   0.01%  ││  0x00007fb3540785d6:   sub    $0x3f0,%edx
   0.43%  ││  0x00007fb3540785dc:   vpinsrw $0x3,%edx,%xmm5,%xmm5
   0.28%  ││  0x00007fb3540785e1:   vmulsd %xmm4,%xmm0,%xmm0
   0.47%  ││  0x00007fb3540785e5:   shl    $0x10,%esi
   0.20%  ││  0x00007fb3540785e8:   sar    $0x1f,%esi
   0.02%  ││  0x00007fb3540785eb:   vmulsd %xmm5,%xmm3,%xmm3
   0.67%  ││  0x00007fb3540785ef:   vmovdqu %xmm0,%xmm1
   0.01%  ││  0x00007fb3540785f3:   vmulsd %xmm2,%xmm0,%xmm0
   0.91%  ││  0x00007fb3540785f7:   shr    $0x1e,%edi
          ││  0x00007fb3540785fa:   vaddsd %xmm3,%xmm1,%xmm1
   1.05%  ││  0x00007fb3540785fe:   vmulsd %xmm2,%xmm3,%xmm3
   0.25%  ││  0x00007fb354078602:   add    %esi,%edi
   0.00%  ││  0x00007fb354078604:   xor    %esi,%edi
          ││  0x00007fb354078606:   vmulsd %xmm1,%xmm7,%xmm7
   1.76%  ││  0x00007fb35407860a:   mov    %edi,%eax
   0.01%  ││  0x00007fb35407860c:   vaddsd %xmm3,%xmm7,%xmm7
   1.97%  ││  0x00007fb354078610:   vmovdqu %xmm0,%xmm2
          ││  0x00007fb354078614:   vaddsd %xmm7,%xmm0,%xmm0
   2.08%  ││  0x00007fb354078618:   vsubsd %xmm0,%xmm2,%xmm2
   1.99%  ││  0x00007fb35407861c:   vaddsd %xmm2,%xmm7,%xmm7
   1.96%  ││  0x00007fb354078620:   vmovdqu 0x164f6548(%rip),%xmm1        # 0x00007fb36a56eb70
          ││  0x00007fb354078628:   vmovddup %xmm0,%xmm0
          ││  0x00007fb35407862c:   vmovdqu 0x164f654c(%rip),%xmm4        # 0x00007fb36a56eb80
          ││  0x00007fb354078634:   vandpd %xmm0,%xmm4,%xmm4
   0.51%  ││  0x00007fb354078638:   vmulpd %xmm0,%xmm1,%xmm1
          ││  0x00007fb35407863c:   vmovddup %xmm7,%xmm7
          ││  0x00007fb354078640:   vmovdqu 0x164f04b8(%rip),%xmm5        # 0x00007fb36a568b00
          ││  0x00007fb354078648:   vmovdqu 0x164f6540(%rip),%xmm6        # 0x00007fb36a56eb90
   0.52%  ││  0x00007fb354078650:   vpor   %xmm4,%xmm5,%xmm5
          ││  0x00007fb354078654:   vaddpd %xmm5,%xmm1,%xmm1
   0.16%  ││  0x00007fb354078658:   vmovdqu %xmm1,%xmm5
          ││  0x00007fb35407865c:   vunpckhpd %xmm5,%xmm5,%xmm5
   0.59%  ││  0x00007fb354078660:   vcvttsd2si %xmm5,%edx
   2.97%  ││  0x00007fb354078664:   vcvttpd2dq %xmm1,%xmm1
          ││  0x00007fb354078669:   vcvtdq2pd %xmm1,%xmm1
   1.43%  ││  0x00007fb35407866d:   vmulpd %xmm6,%xmm1,%xmm1
   1.94%  ││  0x00007fb354078671:   vmovdqu 0x164f64e7(%rip),%xmm3        # 0x00007fb36a56eb60
          ││  0x00007fb354078679:   vmovq  0x164f4e3f(%rip),%xmm5        # 0x00007fb36a56d4c0
          ││  0x00007fb354078681:   shl    $0x4,%eax
          ││  0x00007fb354078684:   add    $0x72900,%edx
   0.48%  ││  0x00007fb35407868a:   vmovdqu 0x164f64be(%rip),%xmm4        # 0x00007fb36a56eb50
          ││  0x00007fb354078692:   vmulpd %xmm1,%xmm3,%xmm3
   1.52%  ││  0x00007fb354078696:   add    %eax,%edx
          ││  0x00007fb354078698:   and    $0x1f,%edx
          ││  0x00007fb35407869b:   vmulsd %xmm1,%xmm5,%xmm5
   0.16%  ││  0x00007fb35407869f:   mov    %edx,%ecx
   0.40%  ││  0x00007fb3540786a1:   vmulpd %xmm1,%xmm4,%xmm4
   0.14%  ││  0x00007fb3540786a5:   shl    %ecx
          ││  0x00007fb3540786a7:   vsubpd %xmm3,%xmm0,%xmm0
   1.15%  ││  0x00007fb3540786ab:   vmulpd 0x164f648d(%rip),%xmm1,%xmm1        # 0x00007fb36a56eb40
          ││  0x00007fb3540786b3:   add    %ecx,%edx
          ││  0x00007fb3540786b5:   shl    $0x2,%ecx
          ││  0x00007fb3540786b8:   add    %ecx,%edx
   0.50%  ││  0x00007fb3540786ba:   vaddsd %xmm0,%xmm5,%xmm5
   1.58%  ││  0x00007fb3540786be:   vmovdqu %xmm0,%xmm2
          ││  0x00007fb3540786c2:   vsubpd %xmm4,%xmm0,%xmm0
   0.33%  ││  0x00007fb3540786c6:   vmovq  0x164f0442(%rip),%xmm6        # 0x00007fb36a568b10
          ││  0x00007fb3540786ce:   shl    $0x4,%edx
   0.20%  ││  0x00007fb3540786d1:   movabs $0x7fb36a56d540,%rax
          ││  0x00007fb3540786db:   vandpd 0x164f4e4d(%rip),%xmm5,%xmm5        # 0x00007fb36a56d530
   0.78%  ││  0x00007fb3540786e3:   vmovdqu %xmm0,%xmm3
          ││  0x00007fb3540786e7:   add    %rdx,%rax
   0.12%  ││  0x00007fb3540786ea:   vsubpd %xmm0,%xmm2,%xmm2
   1.55%  ││  0x00007fb3540786ee:   vunpckhpd %xmm0,%xmm0,%xmm0
   0.05%  ││  0x00007fb3540786f2:   vdivsd %xmm5,%xmm6,%xmm6
   5.01%  ││  0x00007fb3540786f6:   vsubpd %xmm4,%xmm2,%xmm2
          ││  0x00007fb3540786fa:   vsubsd %xmm5,%xmm3,%xmm3
          ││  0x00007fb3540786fe:   vsubpd %xmm1,%xmm2,%xmm2
          ││  0x00007fb354078702:   vmovdqu 0x30(%rax),%xmm1
   0.48%  ││  0x00007fb354078707:   vaddpd %xmm7,%xmm2,%xmm2
   0.18%  ││  0x00007fb35407870b:   vmovdqu 0x10(%rax),%xmm7
          ││  0x00007fb354078710:   vmulpd %xmm0,%xmm7,%xmm7
          ││  0x00007fb354078714:   vmovdqu 0x60(%rax),%xmm4
   0.37%  ││  0x00007fb354078719:   vmulpd %xmm0,%xmm1,%xmm1
   0.13%  ││  0x00007fb35407871d:   vmulpd %xmm0,%xmm4,%xmm4
          ││  0x00007fb354078721:   vaddsd %xmm3,%xmm2,%xmm2
   1.33%  ││  0x00007fb354078725:   vmovdqu %xmm0,%xmm3
   0.00%  ││  0x00007fb354078729:   vmulpd %xmm0,%xmm0,%xmm0
          ││  0x00007fb35407872d:   vaddpd (%rax),%xmm7,%xmm7
          ││  0x00007fb354078731:   vaddpd 0x20(%rax),%xmm1,%xmm1
   0.46%  ││  0x00007fb354078736:   vmulpd %xmm0,%xmm1,%xmm1
   0.01%  ││  0x00007fb35407873a:   vaddpd 0x50(%rax),%xmm4,%xmm4
          ││  0x00007fb35407873f:   vaddpd %xmm1,%xmm7,%xmm7
   0.00%  ││  0x00007fb354078743:   vmovdqu 0x70(%rax),%xmm1
   0.46%  ││  0x00007fb354078748:   vmulpd %xmm0,%xmm1,%xmm1
   0.01%  ││  0x00007fb35407874c:   vmulpd %xmm0,%xmm0,%xmm0
          ││  0x00007fb354078750:   vaddpd %xmm1,%xmm4,%xmm4
   0.01%  ││  0x00007fb354078754:   vmovdqu 0x40(%rax),%xmm1
   0.50%  ││  0x00007fb354078759:   vmulpd %xmm0,%xmm1,%xmm1
   0.00%  ││  0x00007fb35407875d:   vaddpd %xmm1,%xmm7,%xmm7
   0.21%  ││  0x00007fb354078761:   vmovdqu %xmm3,%xmm1
          ││  0x00007fb354078765:   vmulpd %xmm0,%xmm3,%xmm3
   0.36%  ││  0x00007fb354078769:   vmulsd %xmm0,%xmm0,%xmm0
   0.00%  ││  0x00007fb35407876d:   vmulpd 0x90(%rax),%xmm1,%xmm1
   0.10%  ││  0x00007fb354078775:   vmulpd %xmm3,%xmm4,%xmm4
          ││  0x00007fb354078779:   vmovdqu %xmm1,%xmm3
   0.36%  ││  0x00007fb35407877d:   vaddpd %xmm4,%xmm7,%xmm7
   0.93%  ││  0x00007fb354078781:   vmovdqu %xmm1,%xmm4
          ││  0x00007fb354078785:   vmulsd %xmm7,%xmm0,%xmm0
   2.02%  ││  0x00007fb354078789:   vunpckhpd %xmm7,%xmm7,%xmm7
          ││  0x00007fb35407878d:   vaddsd %xmm7,%xmm0,%xmm0
   1.94%  ││  0x00007fb354078791:   vunpckhpd %xmm1,%xmm1,%xmm1
          ││  0x00007fb354078795:   vaddsd %xmm1,%xmm3,%xmm3
          ││  0x00007fb354078799:   vsubsd %xmm3,%xmm4,%xmm4
          ││  0x00007fb35407879d:   vaddsd %xmm4,%xmm1,%xmm1
   0.49%  ││  0x00007fb3540787a1:   vmovdqu %xmm2,%xmm4
          ││  0x00007fb3540787a5:   vmovq  0x90(%rax),%xmm7
          ││  0x00007fb3540787ad:   vunpckhpd %xmm2,%xmm2,%xmm2
          ││  0x00007fb3540787b1:   vaddsd 0x98(%rax),%xmm7,%xmm7
   0.47%  ││  0x00007fb3540787b9:   vmulsd %xmm2,%xmm7,%xmm7
          ││  0x00007fb3540787bd:   vaddsd 0x88(%rax),%xmm7,%xmm7
          ││  0x00007fb3540787c5:   vaddsd %xmm1,%xmm7,%xmm7
          ││  0x00007fb3540787c9:   vaddsd %xmm7,%xmm0,%xmm0
   1.13%  ││  0x00007fb3540787cd:   vmovq  0x164f033b(%rip),%xmm7        # 0x00007fb36a568b10
          ││  0x00007fb3540787d5:   vmulsd %xmm6,%xmm4,%xmm4
          ││  0x00007fb3540787d9:   vmovq  0xa8(%rax),%xmm2
          ││  0x00007fb3540787e1:   vandpd %xmm6,%xmm2,%xmm2
   0.49%  ││  0x00007fb3540787e5:   vmulsd %xmm2,%xmm5,%xmm5
          ││  0x00007fb3540787e9:   vmulsd 0xa0(%rax),%xmm6,%xmm6
          ││  0x00007fb3540787f1:   vsubsd %xmm5,%xmm7,%xmm7
          ││  0x00007fb3540787f5:   vsubsd 0x80(%rax),%xmm2,%xmm2
   0.45%  ││  0x00007fb3540787fd:   vsubsd %xmm4,%xmm7,%xmm7
          ││  0x00007fb354078801:   vmulsd %xmm6,%xmm7,%xmm7
          ││  0x00007fb354078805:   vmovdqu %xmm3,%xmm4
          ││  0x00007fb354078809:   vsubsd %xmm2,%xmm3,%xmm3
   0.49%  ││  0x00007fb35407880d:   vaddsd %xmm3,%xmm2,%xmm2
          ││  0x00007fb354078811:   vsubsd %xmm2,%xmm4,%xmm4
          ││  0x00007fb354078815:   vaddsd %xmm4,%xmm0,%xmm0
   0.56%  ││  0x00007fb354078819:   vsubsd %xmm7,%xmm0,%xmm0
   1.83%  ││  0x00007fb35407881d:   vaddsd %xmm3,%xmm0,%xmm0
   2.08%  ││  0x00007fb354078821:   jmp    0x00007fb35407893d
          ↘│  0x00007fb354078826:   add    $0x40,%edx
           │  0x00007fb354078829:   mov    %r10,%r9
           │  0x00007fb35407882c:   mov    %r8,%r10
           │  0x00007fb35407882f:   mov    $0x0,%r8d
           │  0x00007fb354078835:   cmp    $0x0,%r9
           ╰  0x00007fb354078839:   jne    0x00007fb35407856f
              0x00007fb35407883f:   add    $0x40,%edx
              0x00007fb354078842:   mov    %r10,%r9
              0x00007fb354078845:   mov    %r8,%r10
              0x00007fb354078848:   cmp    $0x0,%r9
....................................................................................................
  76.26%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking, version 3, compile id 581 

             0x00007fb35463947c:   cmovl  %r11d,%r14d
             0x00007fb354639480:   cmp    $0x1f40,%r14d
             0x00007fb354639487:   mov    $0x1f40,%r11d
             0x00007fb35463948d:   cmova  %r11d,%r14d
             0x00007fb354639491:   add    %ebx,%r14d
             0x00007fb354639494:   mov    %ebp,0x30(%rsp)
             0x00007fb354639498:   nopl   0x0(%rax,%rax,1)             ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@32 (line 98)
          ↗  0x00007fb3546394a0:   lea    0x6(%rbx),%r10d
          │  0x00007fb3546394a4:   lea    0x5(%rbx),%r11d
   0.07%  │  0x00007fb3546394a8:   vcvtsi2sd %r10d,%xmm0,%xmm0
   0.12%  │  0x00007fb3546394ad:   vmulsd (%rsp),%xmm0,%xmm0
   0.27%  │  0x00007fb3546394b2:   vmovsd %xmm0,0x18(%rsp)
   0.08%  │  0x00007fb3546394b8:   vcvtsi2sd %r11d,%xmm0,%xmm0
   0.20%  │  0x00007fb3546394bd:   vmulsd (%rsp),%xmm0,%xmm0
   0.26%  │  0x00007fb3546394c2:   vmovsd %xmm0,0x20(%rsp)
   0.06%  │  0x00007fb3546394c8:   mov    %ebx,%r10d
          │  0x00007fb3546394cb:   dec    %r10d
          │  0x00007fb3546394ce:   vcvtsi2sd %ebx,%xmm0,%xmm0
   0.19%  │  0x00007fb3546394d2:   vmulsd (%rsp),%xmm0,%xmm0
   0.24%  │  0x00007fb3546394d7:   vmovq  %xmm0,%rbp
   0.16%  │  0x00007fb3546394dc:   vcvtsi2sd %r10d,%xmm0,%xmm0
   0.12%  │  0x00007fb3546394e1:   vmulsd (%rsp),%xmm0,%xmm0           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@39 (line 98)
   0.26%  │  0x00007fb3546394e6:   movabs $0x7fb3540780fc,%r10
          │  0x00007fb3546394f0:   call   *%r10
          │  0x00007fb3546394f3:   nopl   0x0(%rax,%rax,1)             ;   {other}
   0.06%  │  0x00007fb3546394fb:   vmovsd %xmm0,0x28(%rsp)
          │  0x00007fb354639501:   vmovq  %rbp,%xmm0
          │  0x00007fb354639506:   movabs $0x7fb3540780fc,%r10
   0.08%  │  0x00007fb354639510:   call   *%r10
          │  0x00007fb354639513:   nopl   0x0(%rax,%rax,1)             ;*invokestatic tan {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@40 (line 98)
          │                                                            ;   {other}
   0.07%  │  0x00007fb35463951b:   vmovsd 0x28(%rsp),%xmm1
          │  0x00007fb354639521:   vmulsd 0x8(%rsp),%xmm1,%xmm1
          │  0x00007fb354639527:   vmulsd 0x8(%rsp),%xmm0,%xmm2
   0.13%  │  0x00007fb35463952d:   vmovsd -0x1d5(%rip),%xmm3        # 0x00007fb354639360
          │                                                            ;   {section_word}
          │  0x00007fb354639535:   vsubsd %xmm1,%xmm3,%xmm1
          │  0x00007fb354639539:   vsubsd %xmm2,%xmm3,%xmm2
   0.27%  │  0x00007fb35463953d:   vaddsd 0x8(%rsp),%xmm0,%xmm0
          │  0x00007fb354639543:   vmovsd 0x28(%rsp),%xmm3
          │  0x00007fb354639549:   vaddsd 0x8(%rsp),%xmm3,%xmm3
          │  0x00007fb35463954f:   vdivsd %xmm2,%xmm0,%xmm0
   0.88%  │  0x00007fb354639553:   vdivsd %xmm1,%xmm3,%xmm1
          │  0x00007fb354639557:   vaddsd 0x10(%rsp),%xmm1,%xmm1
          │  0x00007fb35463955d:   vaddsd %xmm1,%xmm0,%xmm0
   0.25%  │  0x00007fb354639561:   vmovsd %xmm0,0x10(%rsp)
   0.06%  │  0x00007fb354639567:   mov    %ebx,%r10d
          │  0x00007fb35463956a:   inc    %r10d
          │  0x00007fb35463956d:   lea    0x2(%rbx),%ebp
          │  0x00007fb354639570:   vcvtsi2sd %r10d,%xmm0,%xmm0
   0.19%  │  0x00007fb354639575:   vmulsd (%rsp),%xmm0,%xmm0           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@39 (line 98)
   0.33%  │  0x00007fb35463957a:   movabs $0x7fb3540780fc,%r10
          │  0x00007fb354639584:   call   *%r10
          │  0x00007fb354639587:   nopl   0x0(%rax,%rax,1)             ;*invokestatic tan {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@40 (line 98)
          │                                                            ;   {other}
   0.07%  │  0x00007fb35463958f:   vaddsd 0x8(%rsp),%xmm0,%xmm1
   0.12%  │  0x00007fb354639595:   vmulsd 0x8(%rsp),%xmm0,%xmm0
   0.02%  │  0x00007fb35463959b:   vmovsd -0x243(%rip),%xmm2        # 0x00007fb354639360
          │                                                            ;   {section_word}
          │  0x00007fb3546395a3:   vsubsd %xmm0,%xmm2,%xmm0
   0.23%  │  0x00007fb3546395a7:   vdivsd %xmm0,%xmm1,%xmm0
   0.98%  │  0x00007fb3546395ab:   vaddsd 0x10(%rsp),%xmm0,%xmm0
   0.26%  │  0x00007fb3546395b1:   vmovsd %xmm0,0x10(%rsp)
   0.06%  │  0x00007fb3546395b7:   vcvtsi2sd %ebp,%xmm0,%xmm0
   0.23%  │  0x00007fb3546395bb:   vmulsd (%rsp),%xmm0,%xmm0           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@39 (line 98)
   0.30%  │  0x00007fb3546395c0:   movabs $0x7fb3540780fc,%r10
          │  0x00007fb3546395ca:   call   *%r10
          │  0x00007fb3546395cd:   nopl   0x0(%rax,%rax,1)             ;*invokestatic tan {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@40 (line 98)
          │                                                            ;   {other}
   0.06%  │  0x00007fb3546395d5:   vaddsd 0x8(%rsp),%xmm0,%xmm1
   0.13%  │  0x00007fb3546395db:   vmulsd 0x8(%rsp),%xmm0,%xmm0
   0.01%  │  0x00007fb3546395e1:   vmovsd -0x289(%rip),%xmm2        # 0x00007fb354639360
          │                                                            ;   {section_word}
          │  0x00007fb3546395e9:   vsubsd %xmm0,%xmm2,%xmm0
   0.30%  │  0x00007fb3546395ed:   vdivsd %xmm0,%xmm1,%xmm0
   0.93%  │  0x00007fb3546395f1:   vaddsd 0x10(%rsp),%xmm0,%xmm0
   0.28%  │  0x00007fb3546395f7:   vmovsd %xmm0,0x10(%rsp)
   0.05%  │  0x00007fb3546395fd:   lea    0x3(%rbx),%r11d
          │  0x00007fb354639601:   lea    0x4(%rbx),%ebp
          │  0x00007fb354639604:   vcvtsi2sd %r11d,%xmm0,%xmm0
   0.17%  │  0x00007fb354639609:   vmulsd (%rsp),%xmm0,%xmm0           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@39 (line 98)
   0.26%  │  0x00007fb35463960e:   movabs $0x7fb3540780fc,%r10
          │  0x00007fb354639618:   call   *%r10
          │  0x00007fb35463961b:   nopl   0x0(%rax,%rax,1)             ;*invokestatic tan {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@40 (line 98)
          │                                                            ;   {other}
   0.08%  │  0x00007fb354639623:   vaddsd 0x8(%rsp),%xmm0,%xmm1
   0.14%  │  0x00007fb354639629:   vmulsd 0x8(%rsp),%xmm0,%xmm0
   0.01%  │  0x00007fb35463962f:   vmovsd -0x2d7(%rip),%xmm2        # 0x00007fb354639360
          │                                                            ;   {section_word}
          │  0x00007fb354639637:   vsubsd %xmm0,%xmm2,%xmm0
   0.30%  │  0x00007fb35463963b:   vdivsd %xmm0,%xmm1,%xmm0
   0.87%  │  0x00007fb35463963f:   vaddsd 0x10(%rsp),%xmm0,%xmm0
   0.25%  │  0x00007fb354639645:   vmovsd %xmm0,0x10(%rsp)
   0.07%  │  0x00007fb35463964b:   vcvtsi2sd %ebp,%xmm0,%xmm0
   0.19%  │  0x00007fb35463964f:   vmulsd (%rsp),%xmm0,%xmm0           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@39 (line 98)
   0.27%  │  0x00007fb354639654:   movabs $0x7fb3540780fc,%r10
          │  0x00007fb35463965e:   call   *%r10
          │  0x00007fb354639661:   nopl   0x0(%rax,%rax,1)             ;   {other}
   0.07%  │  0x00007fb354639669:   vmovq  %xmm0,%rbp
          │  0x00007fb35463966e:   vmovsd 0x20(%rsp),%xmm0
          │  0x00007fb354639674:   movabs $0x7fb3540780fc,%r10
   0.06%  │  0x00007fb35463967e:   call   *%r10
          │  0x00007fb354639681:   nopl   0x0(%rax,%rax,1)             ;   {other}
   0.06%  │  0x00007fb354639689:   vmovsd %xmm0,0x20(%rsp)
          │  0x00007fb35463968f:   vmovsd 0x18(%rsp),%xmm0
          │  0x00007fb354639695:   movabs $0x7fb3540780fc,%r10
   0.07%  │  0x00007fb35463969f:   call   *%r10
          │  0x00007fb3546396a2:   nopl   0x0(%rax,%rax,1)             ;*invokestatic tan {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@40 (line 98)
          │                                                            ;   {other}
   0.07%  │  0x00007fb3546396aa:   vmovq  %rbp,%xmm1
          │  0x00007fb3546396af:   vmulsd 0x8(%rsp),%xmm1,%xmm1
          │  0x00007fb3546396b5:   vmulsd 0x8(%rsp),%xmm0,%xmm2
   0.16%  │  0x00007fb3546396bb:   vmovsd -0x363(%rip),%xmm3        # 0x00007fb354639360
          │                                                            ;   {section_word}
          │  0x00007fb3546396c3:   vsubsd %xmm1,%xmm3,%xmm3
          │  0x00007fb3546396c7:   vmovsd -0x36f(%rip),%xmm1        # 0x00007fb354639360
          │                                                            ;   {section_word}
          │  0x00007fb3546396cf:   vsubsd %xmm2,%xmm1,%xmm1
   0.25%  │  0x00007fb3546396d3:   vaddsd 0x8(%rsp),%xmm0,%xmm0
          │  0x00007fb3546396d9:   vmovsd 0x20(%rsp),%xmm2
          │  0x00007fb3546396df:   vaddsd 0x8(%rsp),%xmm2,%xmm2
          │  0x00007fb3546396e5:   vdivsd %xmm1,%xmm0,%xmm4
   0.81%  │  0x00007fb3546396e9:   vmovsd 0x20(%rsp),%xmm0
          │  0x00007fb3546396ef:   vmulsd 0x8(%rsp),%xmm0,%xmm0
          │  0x00007fb3546396f5:   vmovq  %rbp,%xmm1
          │  0x00007fb3546396fa:   vaddsd 0x8(%rsp),%xmm1,%xmm1
   0.05%  │  0x00007fb354639700:   vmovsd -0x3a8(%rip),%xmm5        # 0x00007fb354639360
          │                                                            ;   {section_word}
          │  0x00007fb354639708:   vsubsd %xmm0,%xmm5,%xmm0
          │  0x00007fb35463970c:   vdivsd %xmm3,%xmm1,%xmm1
          │  0x00007fb354639710:   vdivsd %xmm0,%xmm2,%xmm0
   0.06%  │  0x00007fb354639714:   vaddsd 0x10(%rsp),%xmm1,%xmm1
          │  0x00007fb35463971a:   vaddsd %xmm1,%xmm0,%xmm0
          │  0x00007fb35463971e:   vaddsd %xmm0,%xmm4,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@64 (line 101)
   0.15%  │  0x00007fb354639722:   vmovsd %xmm0,0x10(%rsp)
   0.06%  │  0x00007fb354639728:   add    $0x8,%ebx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@67 (line 96)
          │  0x00007fb35463972b:   cmp    %r14d,%ebx
          ╰  0x00007fb35463972e:   jl     0x00007fb3546394a0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@29 (line 96)
             0x00007fb354639734:   mov    0x458(%r15),%r10             ; ImmutableOopMap {}
                                                                       ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@70 (line 96)
             0x00007fb35463973b:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@70 (line 96)
                                                                       ;   {poll}
....................................................................................................
  12.84%  <total for region 2>

....[Hottest Regions]...............................................................................
  76.26%        runtime stub  StubRoutines::libmTan 
  12.84%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking, version 3, compile id 581 
   3.56%        runtime stub  StubRoutines::libmTan 
   3.55%        runtime stub  StubRoutines::libmTan 
   1.29%        runtime stub  StubRoutines::libmTan 
   0.54%              kernel  [unknown] 
   0.50%        runtime stub  StubRoutines::libmTan 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.84%  <...other 281 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  85.17%        runtime stub  StubRoutines::libmTan 
  12.85%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking, version 3, compile id 581 
   1.69%              kernel  [unknown] 
   0.02%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  defaultStream::write 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  stringStream::write 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%         c2, level 4  java.lang.FdLibm$Atan::compute, version 2, compile id 585 
   0.00%         interpreter  getstatic  178 getstatic  
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%           libjvm.so  Mutex::lock_without_safepoint_check 
   0.14%  <...other 67 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  85.17%        runtime stub
  12.85%         c2, level 4
   1.69%              kernel
   0.13%           libjvm.so
   0.07%        libc-2.31.so
   0.02%      hsdis-amd64.so
   0.02%                    
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.00%              [vdso]
   0.00%         c1, level 3
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

Benchmark                                                              (iterations)  Mode  Cnt     Score   Error  Units
LoopInvariantCodeMotionBenchmark.initial_loop                                 16384  avgt    5  4209.821 ± 7.340  us/op
LoopInvariantCodeMotionBenchmark.initial_loop:asm                             16384  avgt            NaN            ---
LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking             16384  avgt    5  1211.711 ± 0.549  us/op
LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking:asm         16384  avgt            NaN            ---
