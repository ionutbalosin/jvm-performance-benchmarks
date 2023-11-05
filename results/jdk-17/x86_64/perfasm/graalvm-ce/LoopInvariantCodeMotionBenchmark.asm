# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
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
# Warmup Iteration   1: 2114.505 us/op
# Warmup Iteration   2: 2097.841 us/op
# Warmup Iteration   3: 2095.929 us/op
# Warmup Iteration   4: 2096.278 us/op
# Warmup Iteration   5: 2096.033 us/op
Iteration   1: 2096.200 us/op
Iteration   2: 2096.188 us/op
Iteration   3: 2096.013 us/op
Iteration   4: 2096.311 us/op
Iteration   5: 2096.972 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.initial_loop":
  2096.337 ±(99.9%) 1.428 us/op [Average]
  (min, avg, max) = (2096.013, 2096.337, 2096.972), stdev = 0.371
  CI (99.9%): [2094.909, 2097.765] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.initial_loop:·asm":
PrintAssembly processed: 189313 total address lines.
Perf output processed (skipped 58.542 seconds):
 Column 1: cycles (51192 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

           --------------------------------------------------------------------------------
           [/Disassembly]
           </print_nmethod>
           <task_queued compile_id='728' compile_kind='osr' method='com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark initial_loop ()D' bytes='93' count='7' backedge_count='109717' iicount='7' osr_bci='21' stamp='8.247' comment='tiered' hot_count='109717'/>
           - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           Decoding RuntimeStub - Stub&lt;AMD64MathStub.tan&gt; 0x00007f199b65ef90
           --------------------------------------------------------------------------------
   0.27%     0x00007f199b6608a0:   push   %rbx
             0x00007f199b6608a1:   sub    $0x10,%rsp
   0.32%     0x00007f199b6608a5:   vmovsd %xmm0,0x8(%rsp)
   0.33%     0x00007f199b6608ab:   vpextrw $0x3,%xmm0,%eax
   0.30%     0x00007f199b6608b0:   and    $0x7fff,%eax
   0.37%     0x00007f199b6608b6:   sub    $0x3fba,%eax
   0.49%     0x00007f199b6608bc:   nopl   0x0(%rax)
             0x00007f199b6608c0:   cmp    $0x10e,%eax
          ╭  0x00007f199b6608c6:   ja     0x00007f199b660ac9
   0.32%  │  0x00007f199b6608cc:   vmovdqu -0x17b4(%rip),%xmm5        # 0x00007f199b65f120
   0.01%  │  0x00007f199b6608d4:   vmovdqu -0x17ac(%rip),%xmm6        # 0x00007f199b65f130
   0.30%  │  0x00007f199b6608dc:   vunpcklpd %xmm0,%xmm0,%xmm0
          │  0x00007f199b6608e0:   vmovdqu -0x17a8(%rip),%xmm4        # 0x00007f199b65f140
   0.28%  │  0x00007f199b6608e8:   vandpd %xmm0,%xmm4,%xmm4
   0.00%  │  0x00007f199b6608ec:   vmovdqu -0x17a4(%rip),%xmm1        # 0x00007f199b65f150
   0.30%  │  0x00007f199b6608f4:   vmulpd %xmm0,%xmm1,%xmm1
          │  0x00007f199b6608f8:   vpor   %xmm4,%xmm5,%xmm5
   0.27%  │  0x00007f199b6608fc:   vaddpd %xmm5,%xmm1,%xmm1
   0.93%  │  0x00007f199b660900:   vmovdqu %xmm1,%xmm7
   0.26%  │  0x00007f199b660904:   vunpckhpd %xmm7,%xmm7,%xmm7
   0.28%  │  0x00007f199b660908:   vcvttsd2si %xmm7,%edx
   1.78%  │  0x00007f199b66090c:   vcvttpd2dq %xmm1,%xmm1
   0.30%  │  0x00007f199b660910:   vcvtdq2pd %xmm1,%xmm1
   0.83%  │  0x00007f199b660914:   vmulpd %xmm6,%xmm1,%xmm1
   1.42%  │  0x00007f199b660918:   vmovdqu -0x17c0(%rip),%xmm3        # 0x00007f199b65f160
          │  0x00007f199b660920:   vmovq  -0x1838(%rip),%xmm5        # 0x00007f199b65f0f0
          │  0x00007f199b660928:   add    $0x72900,%rdx
          │  0x00007f199b66092f:   vmovdqu -0x17c7(%rip),%xmm4        # 0x00007f199b65f170
   0.61%  │  0x00007f199b660937:   vmulpd %xmm1,%xmm3,%xmm3
   0.95%  │  0x00007f199b66093b:   and    $0x1f,%rdx
          │  0x00007f199b66093f:   vmulsd %xmm1,%xmm5,%xmm5
   0.20%  │  0x00007f199b660943:   mov    %rdx,%rcx
   0.31%  │  0x00007f199b660946:   vmulpd %xmm1,%xmm4,%xmm4
   0.14%  │  0x00007f199b66094a:   shl    %rcx
          │  0x00007f199b66094d:   vsubpd %xmm3,%xmm0,%xmm0
   0.86%  │  0x00007f199b660951:   vmulpd -0x17d9(%rip),%xmm1,%xmm1        # 0x00007f199b65f180
   0.27%  │  0x00007f199b660959:   add    %rcx,%rdx
          │  0x00007f199b66095c:   shl    $0x2,%rcx
          │  0x00007f199b660960:   add    %rcx,%rdx
   0.28%  │  0x00007f199b660963:   vaddsd %xmm0,%xmm5,%xmm5
   1.66%  │  0x00007f199b660967:   vmovdqu %xmm0,%xmm2
          │  0x00007f199b66096b:   vsubpd %xmm4,%xmm0,%xmm0
   0.37%  │  0x00007f199b66096f:   vmovq  -0x187f(%rip),%xmm6        # 0x00007f199b65f0f8
          │  0x00007f199b660977:   shl    $0x4,%rdx
   0.21%  │  0x00007f199b66097b:   lea    -0x17f2(%rip),%rax        # 0x00007f199b65f190
          │  0x00007f199b660982:   vandpd -0x1fa(%rip),%xmm5,%xmm5        # 0x00007f199b660790
   0.43%  │  0x00007f199b66098a:   vmovdqu %xmm0,%xmm3
          │  0x00007f199b66098e:   add    %rdx,%rax
   0.22%  │  0x00007f199b660991:   vsubpd %xmm0,%xmm2,%xmm2
   2.34%  │  0x00007f199b660995:   vunpckhpd %xmm0,%xmm0,%xmm0
          │  0x00007f199b660999:   vdivsd %xmm5,%xmm6,%xmm6
   5.33%  │  0x00007f199b66099d:   vsubpd %xmm4,%xmm2,%xmm2
          │  0x00007f199b6609a1:   vmovdqu 0x10(%rax),%xmm7
          │  0x00007f199b6609a6:   vsubsd %xmm5,%xmm3,%xmm3
          │  0x00007f199b6609aa:   vmulpd %xmm0,%xmm7,%xmm7
   0.58%  │  0x00007f199b6609ae:   vsubpd %xmm1,%xmm2,%xmm2
          │  0x00007f199b6609b2:   vmovdqu 0x30(%rax),%xmm1
          │  0x00007f199b6609b7:   vmulpd %xmm0,%xmm1,%xmm1
          │  0x00007f199b6609bb:   vmovdqu 0x60(%rax),%xmm4
   0.63%  │  0x00007f199b6609c0:   vmulpd %xmm0,%xmm4,%xmm4
          │  0x00007f199b6609c4:   vaddsd %xmm3,%xmm2,%xmm2
   0.06%  │  0x00007f199b6609c8:   vmovdqu %xmm0,%xmm3
          │  0x00007f199b6609cc:   vmulpd %xmm0,%xmm0,%xmm0
   0.54%  │  0x00007f199b6609d0:   vaddpd (%rax),%xmm7,%xmm7
          │  0x00007f199b6609d4:   vaddpd 0x20(%rax),%xmm1,%xmm1
   0.05%  │  0x00007f199b6609d9:   vmulpd %xmm0,%xmm1,%xmm1
          │  0x00007f199b6609dd:   vaddpd 0x50(%rax),%xmm4,%xmm4
   0.51%  │  0x00007f199b6609e2:   vaddpd %xmm1,%xmm7,%xmm7
   0.21%  │  0x00007f199b6609e6:   vmovdqu 0x70(%rax),%xmm1
   0.02%  │  0x00007f199b6609eb:   vmulpd %xmm0,%xmm1,%xmm1
          │  0x00007f199b6609ef:   vmulpd %xmm0,%xmm0,%xmm0
   0.41%  │  0x00007f199b6609f3:   vaddpd %xmm1,%xmm4,%xmm4
   0.12%  │  0x00007f199b6609f7:   vmovdqu 0x40(%rax),%xmm1
   0.01%  │  0x00007f199b6609fc:   vmulpd %xmm0,%xmm1,%xmm1
          │  0x00007f199b660a00:   vaddpd %xmm1,%xmm7,%xmm7
   1.38%  │  0x00007f199b660a04:   vmovdqu %xmm3,%xmm1
          │  0x00007f199b660a08:   vmulpd %xmm0,%xmm3,%xmm3
          │  0x00007f199b660a0c:   vmulsd %xmm0,%xmm0,%xmm0
          │  0x00007f199b660a10:   vmulpd 0x90(%rax),%xmm1,%xmm1
   0.98%  │  0x00007f199b660a18:   vmulpd %xmm3,%xmm4,%xmm4
   0.01%  │  0x00007f199b660a1c:   vmovdqu %xmm1,%xmm3
          │  0x00007f199b660a20:   vaddpd %xmm4,%xmm7,%xmm7
   1.96%  │  0x00007f199b660a24:   vmovdqu %xmm1,%xmm4
          │  0x00007f199b660a28:   vmulsd %xmm7,%xmm0,%xmm0
   1.95%  │  0x00007f199b660a2c:   vunpckhpd %xmm7,%xmm7,%xmm7
          │  0x00007f199b660a30:   vaddsd %xmm7,%xmm0,%xmm0
   2.50%  │  0x00007f199b660a34:   vunpckhpd %xmm1,%xmm1,%xmm1
          │  0x00007f199b660a38:   vaddsd %xmm1,%xmm3,%xmm3
          │  0x00007f199b660a3c:   vsubsd %xmm3,%xmm4,%xmm4
          │  0x00007f199b660a40:   vaddsd %xmm4,%xmm1,%xmm1
   0.62%  │  0x00007f199b660a44:   vmovdqu %xmm2,%xmm4
          │  0x00007f199b660a48:   vmovq  0x90(%rax),%xmm7
          │  0x00007f199b660a50:   vunpckhpd %xmm2,%xmm2,%xmm2
          │  0x00007f199b660a54:   vaddsd 0x98(%rax),%xmm7,%xmm7
   0.57%  │  0x00007f199b660a5c:   vmulsd %xmm2,%xmm7,%xmm7
          │  0x00007f199b660a60:   vaddsd 0x88(%rax),%xmm7,%xmm7
          │  0x00007f199b660a68:   vaddsd %xmm1,%xmm7,%xmm7
          │  0x00007f199b660a6c:   vaddsd %xmm7,%xmm0,%xmm0
   1.22%  │  0x00007f199b660a70:   vmovq  -0x1980(%rip),%xmm7        # 0x00007f199b65f0f8
          │  0x00007f199b660a78:   vmulsd %xmm6,%xmm4,%xmm4
          │  0x00007f199b660a7c:   vmovq  0xa8(%rax),%xmm2
          │  0x00007f199b660a84:   vandpd %xmm6,%xmm2,%xmm2
   0.58%  │  0x00007f199b660a88:   vmulsd %xmm2,%xmm5,%xmm5
          │  0x00007f199b660a8c:   vmulsd 0xa0(%rax),%xmm6,%xmm6
          │  0x00007f199b660a94:   vsubsd %xmm5,%xmm7,%xmm7
          │  0x00007f199b660a98:   vsubsd 0x80(%rax),%xmm2,%xmm2
   0.67%  │  0x00007f199b660aa0:   vsubsd %xmm4,%xmm7,%xmm7
          │  0x00007f199b660aa4:   vmulsd %xmm6,%xmm7,%xmm7
          │  0x00007f199b660aa8:   vmovdqu %xmm3,%xmm4
          │  0x00007f199b660aac:   vsubsd %xmm2,%xmm3,%xmm3
   0.61%  │  0x00007f199b660ab0:   vaddsd %xmm3,%xmm2,%xmm2
          │  0x00007f199b660ab4:   vsubsd %xmm2,%xmm4,%xmm4
          │  0x00007f199b660ab8:   vaddsd %xmm4,%xmm0,%xmm0
   0.65%  │  0x00007f199b660abc:   vsubsd %xmm7,%xmm0,%xmm0
   2.32%  │  0x00007f199b660ac0:   vaddsd %xmm3,%xmm0,%xmm0
   2.28%  │  0x00007f199b660ac4:   jmp    0x00007f199b6610f9
          ↘  0x00007f199b660ac9:   jg     0x00007f199b660b7d
             0x00007f199b660acf:   vpextrw $0x3,%xmm0,%eax
             0x00007f199b660ad4:   mov    %eax,%edx
             0x00007f199b660ad6:   data16 nopw 0x0(%rax,%rax,1)
             0x00007f199b660ae0:   and    $0x7ff0,%eax
             0x00007f199b660ae6:   je     0x00007f199b660b70
             0x00007f199b660aec:   and    $0x7fff,%edx
             0x00007f199b660af2:   cmp    $0x3e20,%edx
             0x00007f199b660af8:   jb     0x00007f199b660b53
             0x00007f199b660afe:   vmovdqu %xmm0,%xmm2
....................................................................................................
  44.98%  <total for region 1>

....[Hottest Region 2]..............................................................................
libjava.so, jatan 

 <no assembly is recorded, native region>
....................................................................................................
  21.32%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop, version 3, compile id 729 

              0x00007f19a2ffd997:   vmovsd 0x8(%rsp),%xmm8
              0x00007f19a2ffd99d:   vmovapd %xmm0,%xmm1
              0x00007f19a2ffd9a1:   mov    $0x2,%r13d
          ╭   0x00007f19a2ffd9a7:   jmp    0x00007f19a2ffda38           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@21 (line 79)
          │   0x00007f19a2ffd9ac:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f19a2ffd9b7:   data16 data16 xchg %ax,%ax
          │   0x00007f19a2ffd9bb:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@25 (line 79)
          │↗  0x00007f19a2ffd9c0:   mov    %r13d,%r10d
   0.27%  ││  0x00007f19a2ffd9c3:   dec    %r10d                        ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@31 (line 80)
          ││  0x00007f19a2ffd9c6:   vcvtsi2sd %r10d,%xmm1,%xmm1         ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@32 (line 80)
          ││  0x00007f19a2ffd9cb:   vmulsd %xmm9,%xmm1,%xmm1            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@35 (line 80)
   1.19%  ││  0x00007f19a2ffd9d0:   vmovapd %xmm0,%xmm10
          ││  0x00007f19a2ffd9d4:   vmovapd %xmm1,%xmm0                 ;* unwind (locked if synchronized)
          ││                                                            ; - java.lang.Math::tan@-3
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@36 (line 80)
          ││  0x00007f19a2ffd9d8:   vmovapd %xmm2,%xmm11
          ││  0x00007f19a2ffd9dc:   nopl   0x0(%rax)
   0.29%  ││  0x00007f19a2ffd9e0:   call   0x00007f199b6608a0           ;   {runtime_call Stub&lt;AMD64MathStub.tan&gt;}
   0.34%  ││  0x00007f19a2ffd9e5:   nop
          ││  0x00007f19a2ffd9e6:   vaddsd %xmm10,%xmm0,%xmm1           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@44 (line 80)
   0.83%  ││  0x00007f19a2ffd9eb:   vmulsd %xmm0,%xmm10,%xmm0           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@63 (line 81)
   0.00%  ││  0x00007f19a2ffd9ef:   vsubsd %xmm0,%xmm11,%xmm2           ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@64 (line 81)
   1.15%  ││  0x00007f19a2ffd9f3:   vdivsd %xmm2,%xmm1,%xmm0            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@70 (line 82)
   3.93%  ││  0x00007f19a2ffd9f7:   vaddsd %xmm0,%xmm8,%xmm8            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@71 (line 82)
   1.25%  ││  0x00007f19a2ffd9fb:   vmovapd %xmm8,%xmm0                 ;*invokestatic atan {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.lang.Math::atan@1 (line 268)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 83)
          ││  0x00007f19a2ffda00:   vmovsd %xmm1,0x8(%rsp)
          ││  0x00007f19a2ffda06:   vmovsd %xmm2,0x10(%rsp)
   0.23%  ││  0x00007f19a2ffda0c:   vmovsd %xmm8,0x18(%rsp)
          ││  0x00007f19a2ffda12:   mov    %r13d,0x4(%rsp)
          ││  0x00007f19a2ffda17:   call   0x00007f19a2ffc940           ; ImmutableOopMap {}
          ││                                                            ;*invokestatic atan {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.lang.Math::atan@1 (line 268)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 83)
          ││                                                            ;   {static_call}
   0.32%  ││  0x00007f19a2ffda1c:   nop
          ││  0x00007f19a2ffda1d:   data16 xchg %ax,%ax
          ││  0x00007f19a2ffda20:   call   0x00007f199b6608a0           ;   {runtime_call Stub&lt;AMD64MathStub.tan&gt;}
   0.28%  ││  0x00007f19a2ffda25:   nop
          ││  0x00007f19a2ffda26:   mov    0x4(%rsp),%r13d
          ││  0x00007f19a2ffda2b:   inc    %r13d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@84 (line 79)
   0.26%  ││  0x00007f19a2ffda2e:   vmovsd 0x18(%rsp),%xmm8
          ││  0x00007f19a2ffda34:   vmovapd %xmm0,%xmm1
          ↘│  0x00007f19a2ffda38:   vmovsd -0x180(%rip),%xmm2        # 0x00007f19a2ffd8c0
           │                                                            ;   {section_word}
           │  0x00007f19a2ffda40:   vmovsd 0x20(%rsp),%xmm0
   0.29%   │  0x00007f19a2ffda46:   vmovsd 0x28(%rsp),%xmm9
           │  0x00007f19a2ffda4c:   mov    0x34(%rsp),%ebp
           │  0x00007f19a2ffda50:   cmp    %r13d,%ebp
           ╰  0x00007f19a2ffda53:   jg     0x00007f19a2ffd9c0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@25 (line 79)
              0x00007f19a2ffda59:   vmovapd %xmm1,%xmm0                 ;*dreturn {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@92 (line 86)
              0x00007f19a2ffda5d:   mov    0x40(%rsp),%rbp
              0x00007f19a2ffda62:   add    $0x48,%rsp
              0x00007f19a2ffda66:   mov    0x348(%r15),%rcx
              0x00007f19a2ffda6d:   test   %eax,(%rcx)                  ;   {poll_return}
....................................................................................................
  10.65%  <total for region 3>

....[Hottest Regions]...............................................................................
  44.98%                       <unknown> 
  21.32%           libjava.so  jatan 
  10.65%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop, version 3, compile id 729 
   5.58%     Unknown, level 0  java.lang.StrictMath::atan, version 1, compile id 725 
   5.57%           libjava.so  jfabs 
   4.38%           libjava.so  jatan 
   1.48%               kernel  [unknown] 
   1.46%     Unknown, level 0  java.lang.StrictMath::atan, version 1, compile id 725 
   0.92%           libjava.so  jatan 
   0.87%     Unknown, level 0  java.lang.StrictMath::atan, version 1, compile id 725 
   0.31%     Unknown, level 0  java.lang.StrictMath::atan, version 1, compile id 725 
   0.30%           libjava.so  jatan 
   0.29%     Unknown, level 0  java.lang.StrictMath::atan, version 1, compile id 725 
   0.27%           libjava.so  jatan 
   0.27%           libjava.so  Java_java_lang_StrictMath_atan 
   0.09%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   1.04%  <...other 296 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  45.01%                       <unknown> 
  27.19%           libjava.so  jatan 
  10.66%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop, version 3, compile id 729 
   8.53%     Unknown, level 0  java.lang.StrictMath::atan, version 1, compile id 725 
   5.57%           libjava.so  jfabs 
   2.49%               kernel  [unknown] 
   0.27%           libjava.so  Java_java_lang_StrictMath_atan 
   0.03%         libc-2.31.so  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%       perf-30026.map  [unknown] 
   0.01%            libjvm.so  xmlTextStream::write 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.00%         libc-2.31.so  __strchr_sse2 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%       hsdis-amd64.so  hsdis_read_memory_func 
   0.15%  <...other 69 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  45.01%                     
  33.03%           libjava.so
  10.66%       jvmci, level 4
   8.53%     Unknown, level 0
   2.49%               kernel
   0.12%            libjvm.so
   0.09%         libc-2.31.so
   0.02%          interpreter
   0.02%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.01%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.01%       perf-30026.map
   0.00%          c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking
# Parameters: (iterations = 16384)

# Run progress: 50.00% complete, ETA 00:01:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 760.258 us/op
# Warmup Iteration   2: 756.953 us/op
# Warmup Iteration   3: 756.869 us/op
# Warmup Iteration   4: 756.949 us/op
# Warmup Iteration   5: 756.912 us/op
Iteration   1: 756.792 us/op
Iteration   2: 756.863 us/op
Iteration   3: 756.818 us/op
Iteration   4: 756.852 us/op
Iteration   5: 756.792 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking":
  756.823 ±(99.9%) 0.127 us/op [Average]
  (min, avg, max) = (756.792, 756.823, 756.863), stdev = 0.033
  CI (99.9%): [756.696, 756.951] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking:·asm":
PrintAssembly processed: 195305 total address lines.
Perf output processed (skipped 58.645 seconds):
 Column 1: cycles (51325 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

           --------------------------------------------------------------------------------
           [/Disassembly]
           </print_nmethod>
           <task_queued compile_id='742' compile_kind='osr' method='com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark manual_loop_hoisting_and_sinking ()D' bytes='86' count='15' backedge_count='232723' iicount='15' osr_bci='25' stamp='8.387' comment='tiered' hot_count='232723'/>
           - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           Decoding RuntimeStub - Stub&lt;AMD64MathStub.tan&gt; 0x00007f3bab65e990
           --------------------------------------------------------------------------------
             0x00007f3bab6602a0:   push   %rbx
             0x00007f3bab6602a1:   sub    $0x10,%rsp
   0.79%     0x00007f3bab6602a5:   vmovsd %xmm0,0x8(%rsp)
             0x00007f3bab6602ab:   vpextrw $0x3,%xmm0,%eax
   1.58%     0x00007f3bab6602b0:   and    $0x7fff,%eax
   1.25%     0x00007f3bab6602b6:   sub    $0x3fba,%eax
   0.48%     0x00007f3bab6602bc:   nopl   0x0(%rax)
             0x00007f3bab6602c0:   cmp    $0x10e,%eax
          ╭  0x00007f3bab6602c6:   ja     0x00007f3bab6604c9
   0.78%  │  0x00007f3bab6602cc:   vmovdqu -0x17b4(%rip),%xmm5        # 0x00007f3bab65eb20
   0.01%  │  0x00007f3bab6602d4:   vmovdqu -0x17ac(%rip),%xmm6        # 0x00007f3bab65eb30
          │  0x00007f3bab6602dc:   vunpcklpd %xmm0,%xmm0,%xmm0
          │  0x00007f3bab6602e0:   vmovdqu -0x17a8(%rip),%xmm4        # 0x00007f3bab65eb40
   0.84%  │  0x00007f3bab6602e8:   vandpd %xmm0,%xmm4,%xmm4
   0.01%  │  0x00007f3bab6602ec:   vmovdqu -0x17a4(%rip),%xmm1        # 0x00007f3bab65eb50
          │  0x00007f3bab6602f4:   vmulpd %xmm0,%xmm1,%xmm1
          │  0x00007f3bab6602f8:   vpor   %xmm4,%xmm5,%xmm5
   0.82%  │  0x00007f3bab6602fc:   vaddpd %xmm5,%xmm1,%xmm1
   2.63%  │  0x00007f3bab660300:   vmovdqu %xmm1,%xmm7
          │  0x00007f3bab660304:   vunpckhpd %xmm7,%xmm7,%xmm7
   0.86%  │  0x00007f3bab660308:   vcvttsd2si %xmm7,%edx
   4.61%  │  0x00007f3bab66030c:   vcvttpd2dq %xmm1,%xmm1
          │  0x00007f3bab660310:   vcvtdq2pd %xmm1,%xmm1
   2.45%  │  0x00007f3bab660314:   vmulpd %xmm6,%xmm1,%xmm1
   3.26%  │  0x00007f3bab660318:   vmovdqu -0x17c0(%rip),%xmm3        # 0x00007f3bab65eb60
          │  0x00007f3bab660320:   vmovq  -0x1838(%rip),%xmm5        # 0x00007f3bab65eaf0
          │  0x00007f3bab660328:   add    $0x72900,%rdx
          │  0x00007f3bab66032f:   vmovdqu -0x17c7(%rip),%xmm4        # 0x00007f3bab65eb70
   0.80%  │  0x00007f3bab660337:   vmulpd %xmm1,%xmm3,%xmm3
   2.61%  │  0x00007f3bab66033b:   and    $0x1f,%rdx
          │  0x00007f3bab66033f:   vmulsd %xmm1,%xmm5,%xmm5
   0.63%  │  0x00007f3bab660343:   mov    %rdx,%rcx
          │  0x00007f3bab660346:   vmulpd %xmm1,%xmm4,%xmm4
   0.51%  │  0x00007f3bab66034a:   shl    %rcx
          │  0x00007f3bab66034d:   vsubpd %xmm3,%xmm0,%xmm0
   2.08%  │  0x00007f3bab660351:   vmulpd -0x17d9(%rip),%xmm1,%xmm1        # 0x00007f3bab65eb80
          │  0x00007f3bab660359:   add    %rcx,%rdx
          │  0x00007f3bab66035c:   shl    $0x2,%rcx
          │  0x00007f3bab660360:   add    %rcx,%rdx
   0.80%  │  0x00007f3bab660363:   vaddsd %xmm0,%xmm5,%xmm5
   2.63%  │  0x00007f3bab660367:   vmovdqu %xmm0,%xmm2
          │  0x00007f3bab66036b:   vsubpd %xmm4,%xmm0,%xmm0
   0.53%  │  0x00007f3bab66036f:   vmovq  -0x187f(%rip),%xmm6        # 0x00007f3bab65eaf8
          │  0x00007f3bab660377:   shl    $0x4,%rdx
   0.28%  │  0x00007f3bab66037b:   lea    -0x17f2(%rip),%rax        # 0x00007f3bab65eb90
          │  0x00007f3bab660382:   vandpd -0x1fa(%rip),%xmm5,%xmm5        # 0x00007f3bab660190
   0.55%  │  0x00007f3bab66038a:   vmovdqu %xmm0,%xmm3
          │  0x00007f3bab66038e:   add    %rdx,%rax
   0.31%  │  0x00007f3bab660391:   vsubpd %xmm0,%xmm2,%xmm2
   2.90%  │  0x00007f3bab660395:   vunpckhpd %xmm0,%xmm0,%xmm0
          │  0x00007f3bab660399:   vdivsd %xmm5,%xmm6,%xmm6
   7.79%  │  0x00007f3bab66039d:   vsubpd %xmm4,%xmm2,%xmm2
          │  0x00007f3bab6603a1:   vmovdqu 0x10(%rax),%xmm7
          │  0x00007f3bab6603a6:   vsubsd %xmm5,%xmm3,%xmm3
          │  0x00007f3bab6603aa:   vmulpd %xmm0,%xmm7,%xmm7
   0.77%  │  0x00007f3bab6603ae:   vsubpd %xmm1,%xmm2,%xmm2
          │  0x00007f3bab6603b2:   vmovdqu 0x30(%rax),%xmm1
          │  0x00007f3bab6603b7:   vmulpd %xmm0,%xmm1,%xmm1
          │  0x00007f3bab6603bb:   vmovdqu 0x60(%rax),%xmm4
   0.77%  │  0x00007f3bab6603c0:   vmulpd %xmm0,%xmm4,%xmm4
          │  0x00007f3bab6603c4:   vaddsd %xmm3,%xmm2,%xmm2
   0.07%  │  0x00007f3bab6603c8:   vmovdqu %xmm0,%xmm3
          │  0x00007f3bab6603cc:   vmulpd %xmm0,%xmm0,%xmm0
   0.76%  │  0x00007f3bab6603d0:   vaddpd (%rax),%xmm7,%xmm7
          │  0x00007f3bab6603d4:   vaddpd 0x20(%rax),%xmm1,%xmm1
   0.08%  │  0x00007f3bab6603d9:   vmulpd %xmm0,%xmm1,%xmm1
          │  0x00007f3bab6603dd:   vaddpd 0x50(%rax),%xmm4,%xmm4
   0.79%  │  0x00007f3bab6603e2:   vaddpd %xmm1,%xmm7,%xmm7
   0.44%  │  0x00007f3bab6603e6:   vmovdqu 0x70(%rax),%xmm1
   0.02%  │  0x00007f3bab6603eb:   vmulpd %xmm0,%xmm1,%xmm1
          │  0x00007f3bab6603ef:   vmulpd %xmm0,%xmm0,%xmm0
   0.43%  │  0x00007f3bab6603f3:   vaddpd %xmm1,%xmm4,%xmm4
   0.37%  │  0x00007f3bab6603f7:   vmovdqu 0x40(%rax),%xmm1
   0.03%  │  0x00007f3bab6603fc:   vmulpd %xmm0,%xmm1,%xmm1
   0.00%  │  0x00007f3bab660400:   vaddpd %xmm1,%xmm7,%xmm7
   2.14%  │  0x00007f3bab660404:   vmovdqu %xmm3,%xmm1
          │  0x00007f3bab660408:   vmulpd %xmm0,%xmm3,%xmm3
          │  0x00007f3bab66040c:   vmulsd %xmm0,%xmm0,%xmm0
          │  0x00007f3bab660410:   vmulpd 0x90(%rax),%xmm1,%xmm1
   1.13%  │  0x00007f3bab660418:   vmulpd %xmm3,%xmm4,%xmm4
   0.01%  │  0x00007f3bab66041c:   vmovdqu %xmm1,%xmm3
          │  0x00007f3bab660420:   vaddpd %xmm4,%xmm7,%xmm7
   2.68%  │  0x00007f3bab660424:   vmovdqu %xmm1,%xmm4
          │  0x00007f3bab660428:   vmulsd %xmm7,%xmm0,%xmm0
   2.81%  │  0x00007f3bab66042c:   vunpckhpd %xmm7,%xmm7,%xmm7
          │  0x00007f3bab660430:   vaddsd %xmm7,%xmm0,%xmm0
   3.21%  │  0x00007f3bab660434:   vunpckhpd %xmm1,%xmm1,%xmm1
          │  0x00007f3bab660438:   vaddsd %xmm1,%xmm3,%xmm3
          │  0x00007f3bab66043c:   vsubsd %xmm3,%xmm4,%xmm4
          │  0x00007f3bab660440:   vaddsd %xmm4,%xmm1,%xmm1
   0.76%  │  0x00007f3bab660444:   vmovdqu %xmm2,%xmm4
          │  0x00007f3bab660448:   vmovq  0x90(%rax),%xmm7
          │  0x00007f3bab660450:   vunpckhpd %xmm2,%xmm2,%xmm2
          │  0x00007f3bab660454:   vaddsd 0x98(%rax),%xmm7,%xmm7
   0.78%  │  0x00007f3bab66045c:   vmulsd %xmm2,%xmm7,%xmm7
          │  0x00007f3bab660460:   vaddsd 0x88(%rax),%xmm7,%xmm7
          │  0x00007f3bab660468:   vaddsd %xmm1,%xmm7,%xmm7
          │  0x00007f3bab66046c:   vaddsd %xmm7,%xmm0,%xmm0
   1.63%  │  0x00007f3bab660470:   vmovq  -0x1980(%rip),%xmm7        # 0x00007f3bab65eaf8
          │  0x00007f3bab660478:   vmulsd %xmm6,%xmm4,%xmm4
          │  0x00007f3bab66047c:   vmovq  0xa8(%rax),%xmm2
          │  0x00007f3bab660484:   vandpd %xmm6,%xmm2,%xmm2
   0.79%  │  0x00007f3bab660488:   vmulsd %xmm2,%xmm5,%xmm5
          │  0x00007f3bab66048c:   vmulsd 0xa0(%rax),%xmm6,%xmm6
          │  0x00007f3bab660494:   vsubsd %xmm5,%xmm7,%xmm7
          │  0x00007f3bab660498:   vsubsd 0x80(%rax),%xmm2,%xmm2
   0.78%  │  0x00007f3bab6604a0:   vsubsd %xmm4,%xmm7,%xmm7
          │  0x00007f3bab6604a4:   vmulsd %xmm6,%xmm7,%xmm7
          │  0x00007f3bab6604a8:   vmovdqu %xmm3,%xmm4
          │  0x00007f3bab6604ac:   vsubsd %xmm2,%xmm3,%xmm3
   0.82%  │  0x00007f3bab6604b0:   vaddsd %xmm3,%xmm2,%xmm2
          │  0x00007f3bab6604b4:   vsubsd %xmm2,%xmm4,%xmm4
          │  0x00007f3bab6604b8:   vaddsd %xmm4,%xmm0,%xmm0
   0.84%  │  0x00007f3bab6604bc:   vsubsd %xmm7,%xmm0,%xmm0
   3.11%  │  0x00007f3bab6604c0:   vaddsd %xmm3,%xmm0,%xmm0
   3.29%  │  0x00007f3bab6604c4:   jmp    0x00007f3bab660af9
          ↘  0x00007f3bab6604c9:   jg     0x00007f3bab66057d
             0x00007f3bab6604cf:   vpextrw $0x3,%xmm0,%eax
             0x00007f3bab6604d4:   mov    %eax,%edx
             0x00007f3bab6604d6:   data16 nopw 0x0(%rax,%rax,1)
             0x00007f3bab6604e0:   and    $0x7ff0,%eax
             0x00007f3bab6604e6:   je     0x00007f3bab660570
             0x00007f3bab6604ec:   and    $0x7fff,%edx
             0x00007f3bab6604f2:   cmp    $0x3e20,%edx
             0x00007f3bab6604f8:   jb     0x00007f3bab660553
             0x00007f3bab6604fe:   vmovdqu %xmm0,%xmm2
....................................................................................................
  72.06%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking, version 3, compile id 743 

              0x00007f3bb2ffcdc5:   vmovapd %xmm0,%xmm8
              0x00007f3bb2ffcdc9:   mov    $0x2,%r13d
          ╭   0x00007f3bb2ffcdcf:   jmp    0x00007f3bb2ffce0e           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@25 (line 98)
          │   0x00007f3bb2ffcdd4:   nopl   0x0(%rax,%rax,1)
          │   0x00007f3bb2ffcddc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@29 (line 98)
          │↗  0x00007f3bb2ffcde0:   mov    %r13d,%r10d
          ││  0x00007f3bb2ffcde3:   dec    %r10d                        ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@35 (line 100)
   0.99%  ││  0x00007f3bb2ffcde6:   vcvtsi2sd %r10d,%xmm0,%xmm0         ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@36 (line 100)
   0.00%  ││  0x00007f3bb2ffcdeb:   vmulsd %xmm9,%xmm0,%xmm0
   2.66%  ││  0x00007f3bb2ffcdf0:   call   0x00007f3bab6602a0           ;   {runtime_call Stub&lt;AMD64MathStub.tan&gt;}
   0.80%  ││  0x00007f3bb2ffcdf5:   nop
          ││  0x00007f3bb2ffcdf6:   vaddsd %xmm10,%xmm0,%xmm1           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@49 (line 101)
   2.32%  ││  0x00007f3bb2ffcdfb:   vmulsd %xmm0,%xmm10,%xmm0           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@56 (line 102)
   0.01%  ││  0x00007f3bb2ffcdff:   vsubsd %xmm0,%xmm11,%xmm0           ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@57 (line 102)
   3.27%  ││  0x00007f3bb2ffce03:   vdivsd %xmm0,%xmm1,%xmm0            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@63 (line 103)
  11.42%  ││  0x00007f3bb2ffce07:   vaddsd %xmm0,%xmm8,%xmm8            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@64 (line 103)
   3.40%  ││  0x00007f3bb2ffce0b:   inc    %r13d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@67 (line 98)
          ↘│  0x00007f3bb2ffce0e:   cmp    %r13d,%ebp
           ╰  0x00007f3bb2ffce11:   jg     0x00007f3bb2ffcde0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@29 (line 98)
              0x00007f3bb2ffce13:   vmovapd %xmm8,%xmm0                 ;*invokestatic atan {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.Math::atan@1 (line 268)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking@75 (line 107)
              0x00007f3bb2ffce18:   vmovsd %xmm8,(%rsp)
              0x00007f3bb2ffce1d:   xchg   %ax,%ax
....................................................................................................
  24.87%  <total for region 2>

....[Hottest Regions]...............................................................................
  72.06%                       <unknown> 
  24.87%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking, version 3, compile id 743 
   1.46%               kernel  [unknown] 
   0.15%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  xmlStream::write_text 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  fileStream::write 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  outputStream::update_position 
   0.01%               kernel  [unknown] 
   0.93%  <...other 335 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  72.11%                       <unknown> 
  24.87%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking, version 3, compile id 743 
   2.59%               kernel  [unknown] 
   0.04%         libc-2.31.so  [unknown] 
   0.02%            libjvm.so  xmlStream::write_text 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.02%            libjvm.so  fileStream::write 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  outputStream::update_position 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%   libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%            libjvm.so  os::current_thread_id 
   0.01%            libjvm.so  stringStream::write 
   0.01%   libpthread-2.31.so  __pthread_mutex_unlock 
   0.01%           libjava.so  jfabs 
   0.00%         libc-2.31.so  __strncat_ssse3 
   0.22%  <...other 101 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  72.11%                     
  24.87%       jvmci, level 4
   2.59%               kernel
   0.17%            libjvm.so
   0.12%         libc-2.31.so
   0.05%  libjvmcicompiler.so
   0.02%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.02%           ld-2.31.so
   0.01%          interpreter
   0.01%           libjava.so
   0.01%          c1, level 3
   0.00%               [vdso]
   0.00%       perf-30085.map
   0.00%     Unknown, level 0
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:03:42

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
LoopInvariantCodeMotionBenchmark.initial_loop                                  16384  avgt    5  2096.337 ± 1.428  us/op
LoopInvariantCodeMotionBenchmark.initial_loop:·asm                             16384  avgt            NaN            ---
LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking              16384  avgt    5   756.823 ± 0.127  us/op
LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking:·asm         16384  avgt            NaN            ---
