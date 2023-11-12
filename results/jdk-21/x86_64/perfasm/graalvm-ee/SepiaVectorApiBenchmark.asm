# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark.baseline
# Parameters: (size = 32768)

# Run progress: 0.00% complete, ETA 00:06:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 140.094 us/op
# Warmup Iteration   2: 137.385 us/op
# Warmup Iteration   3: 137.422 us/op
# Warmup Iteration   4: 137.414 us/op
# Warmup Iteration   5: 137.436 us/op
Iteration   1: 137.437 us/op
Iteration   2: 137.815 us/op
Iteration   3: 137.766 us/op
Iteration   4: 137.662 us/op
Iteration   5: 137.723 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark.baseline":
  137.681 ±(99.9%) 0.567 us/op [Average]
  (min, avg, max) = (137.437, 137.681, 137.815), stdev = 0.147
  CI (99.9%): [137.113, 138.248] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark.baseline:asm":
PrintAssembly processed: 281516 total address lines.
Perf output processed (skipped 60.651 seconds):
 Column 1: cycles (53986 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline, version 4, compile id 983 

                0x00007f77cad7d5d3:   vaddss %xmm11,%xmm10,%xmm10         ;*fadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@113 (line 84)
                0x00007f77cad7d5d8:   vucomiss %xmm0,%xmm10
                0x00007f77cad7d5dc:   nopl   0x0(%rax)
                0x00007f77cad7d5e0:   jbe    0x00007f77cad7d540
                0x00007f77cad7d5e6:   jmp    0x00007f77cad7d93f           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@164 (line 91)
             ↗  0x00007f77cad7d5eb:   mov    %r11,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@185 (line 95)
             │  0x00007f77cad7d5ee:   mov    0x10(%rsp),%rbp
   0.02%     │  0x00007f77cad7d5f3:   add    $0x18,%rsp
             │  0x00007f77cad7d5f7:   nopw   0x0(%rax,%rax,1)
             │  0x00007f77cad7d600:   cmp    0x450(%r15),%rsp             ;   {poll_return}
             │  0x00007f77cad7d607:   ja     0x00007f77cad7d9b6
   0.00%     │  0x00007f77cad7d60d:   ret                                 ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@2 (line 81)
             │  0x00007f77cad7d60e:   lea    -0x2(%r10),%ecx
             │  0x00007f77cad7d612:   cmp    %edx,%ecx
          ╭  │  0x00007f77cad7d614:   jg     0x00007f77cad7d6f7
          │  │  0x00007f77cad7d61a:   jmp    0x00007f77cad7d82b
          │  │  0x00007f77cad7d61f:   nop                                 ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@164 (line 91)
   0.97%  │ ↗│  0x00007f77cad7d620:   vmovss %xmm10,0x10(%rdi,%rdx,4)     ;*fastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@114 (line 84)
   0.12%  │ ││  0x00007f77cad7d626:   vmovss 0x10(%r11,%rdx,4),%xmm10     ;*faload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@120 (line 85)
   1.73%  │ ││  0x00007f77cad7d62d:   lea    0x2(%rdx),%ebp               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@175 (line 81)
   1.52%  │ ││  0x00007f77cad7d630:   vucomiss %xmm0,%xmm10
   0.88%  │ ││  0x00007f77cad7d634:   ja     0x00007f77cad7d855           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@124 (line 85)
   0.32%  │ ││  0x00007f77cad7d63a:   vmovss 0x10(%rax,%rdx,4),%xmm10     ;*faload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@140 (line 88)
   1.65%  │ ││  0x00007f77cad7d640:   vucomiss %xmm0,%xmm10
   1.83%  │ ││  0x00007f77cad7d644:   ja     0x00007f77cad7d962           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@144 (line 88)
   1.40%  │ ││  0x00007f77cad7d64a:   vmulss 0x14(%rbx,%rdx,4),%xmm9,%xmm10;*faload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@41 (line 82)
   2.27%  │ ││  0x00007f77cad7d650:   vmulss 0x14(%r8,%rdx,4),%xmm7,%xmm11;*faload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@22 (line 82)
   3.53%  │ ││  0x00007f77cad7d657:   vmulss 0x14(%r9,%rdx,4),%xmm8,%xmm12;*fmul {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@32 (line 82)
   2.25%  │ ││  0x00007f77cad7d65e:   vaddss %xmm12,%xmm11,%xmm11         ;*fadd {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@33 (line 82)
   2.98%  │ ││  0x00007f77cad7d663:   vaddss %xmm10,%xmm11,%xmm10         ;*fadd {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@43 (line 82)
   4.00%  │ ││  0x00007f77cad7d668:   vmovss %xmm10,0x14(%r11,%rdx,4)     ;*fastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@44 (line 82)
   1.23%  │ ││  0x00007f77cad7d66f:   vmulss 0x14(%rbx,%rdx,4),%xmm6,%xmm10;*faload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@76 (line 83)
   2.18%  │ ││  0x00007f77cad7d675:   vmulss 0x14(%r8,%rdx,4),%xmm4,%xmm11;*faload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@57 (line 83)
   2.09%  │ ││  0x00007f77cad7d67c:   vmulss 0x14(%r9,%rdx,4),%xmm5,%xmm12;*fmul {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@67 (line 83)
   2.10%  │ ││  0x00007f77cad7d683:   vaddss %xmm12,%xmm11,%xmm11         ;*fadd {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@68 (line 83)
   0.92%  │ ││  0x00007f77cad7d688:   vaddss %xmm10,%xmm11,%xmm10         ;*fadd {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@78 (line 83)
   1.48%  │ ││  0x00007f77cad7d68d:   vmovss %xmm10,0x14(%rax,%rdx,4)     ;*fastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@79 (line 83)
   1.54%  │ ││  0x00007f77cad7d693:   vmulss 0x14(%r8,%rdx,4),%xmm1,%xmm10;*faload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@92 (line 84)
   1.90%  │ ││  0x00007f77cad7d69a:   vmulss 0x14(%r9,%rdx,4),%xmm2,%xmm11;*faload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@101 (line 84)
   2.38%  │ ││  0x00007f77cad7d6a1:   vaddss %xmm11,%xmm10,%xmm10         ;*fadd {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@103 (line 84)
   1.14%  │ ││  0x00007f77cad7d6a6:   vmulss 0x14(%rbx,%rdx,4),%xmm3,%xmm11;*fmul {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@112 (line 84)
   1.77%  │ ││  0x00007f77cad7d6ac:   vaddss %xmm11,%xmm10,%xmm10         ;*fadd {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@113 (line 84)
   1.51%  │ ││  0x00007f77cad7d6b1:   mov    %edx,%r13d
   1.10%  │ ││  0x00007f77cad7d6b4:   inc    %r13d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@175 (line 81)
   0.82%  │ ││  0x00007f77cad7d6b7:   vucomiss %xmm0,%xmm10
   1.33%  │ ││  0x00007f77cad7d6bb:   nopl   0x0(%rax,%rax,1)
   1.20%  │ ││  0x00007f77cad7d6c0:   ja     0x00007f77cad7d91c           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@164 (line 91)
   1.53%  │ ││  0x00007f77cad7d6c6:   vmovss %xmm10,0x14(%rdi,%rdx,4)     ;*fastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@114 (line 84)
   0.66%  │ ││  0x00007f77cad7d6cc:   vmovss 0x14(%r11,%rdx,4),%xmm10     ;*faload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@120 (line 85)
   0.79%  │ ││  0x00007f77cad7d6d3:   vucomiss %xmm0,%xmm10
   1.24%  │ ││  0x00007f77cad7d6d7:   ja     0x00007f77cad7d8f6           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@124 (line 85)
   2.19%  │ ││  0x00007f77cad7d6dd:   vmovss 0x14(%rax,%rdx,4),%xmm10     ;*faload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@140 (line 88)
   0.65%  │ ││  0x00007f77cad7d6e3:   vucomiss %xmm0,%xmm10
   0.97%  │ ││  0x00007f77cad7d6e7:   ja     0x00007f77cad7d96e           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@144 (line 88)
   1.97%  │ ││  0x00007f77cad7d6ed:   cmp    %ebp,%ecx
          │╭││  0x00007f77cad7d6ef:   jle    0x00007f77cad7d76d           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@7 (line 81)
   1.65%  ││││  0x00007f77cad7d6f5:   mov    %ebp,%edx                    ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@2 (line 81)
   0.53%  ↘│││  0x00007f77cad7d6f7:   vmulss 0x10(%rbx,%rdx,4),%xmm9,%xmm10;*faload {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@41 (line 82)
   1.98%   │││  0x00007f77cad7d6fd:   vmulss 0x10(%r8,%rdx,4),%xmm7,%xmm11;*faload {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@22 (line 82)
           │││                                                            ;   {no_reloc}
   2.13%   │││  0x00007f77cad7d704:   vmulss 0x10(%r9,%rdx,4),%xmm8,%xmm12;*fmul {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@32 (line 82)
   1.98%   │││  0x00007f77cad7d70b:   vaddss %xmm12,%xmm11,%xmm11         ;*fadd {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@33 (line 82)
   1.61%   │││  0x00007f77cad7d710:   vaddss %xmm10,%xmm11,%xmm10         ;*fadd {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@43 (line 82)
   0.55%   │││  0x00007f77cad7d715:   vmovss %xmm10,0x10(%r11,%rdx,4)     ;*fastore {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@44 (line 82)
   0.19%   │││  0x00007f77cad7d71c:   vmulss 0x10(%rbx,%rdx,4),%xmm6,%xmm10;*faload {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@76 (line 83)
   3.56%   │││  0x00007f77cad7d722:   vmulss 0x10(%r8,%rdx,4),%xmm4,%xmm11;*faload {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@57 (line 83)
   0.70%   │││  0x00007f77cad7d729:   vmulss 0x10(%r9,%rdx,4),%xmm5,%xmm12;*fmul {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@67 (line 83)
   3.46%   │││  0x00007f77cad7d730:   vaddss %xmm12,%xmm11,%xmm11         ;*fadd {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@68 (line 83)
   0.59%   │││  0x00007f77cad7d735:   vaddss %xmm10,%xmm11,%xmm10         ;*fadd {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@78 (line 83)
   0.27%   │││  0x00007f77cad7d73a:   vmovss %xmm10,0x10(%rax,%rdx,4)     ;*fastore {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@79 (line 83)
   2.02%   │││  0x00007f77cad7d740:   vmulss 0x10(%r8,%rdx,4),%xmm1,%xmm10;*faload {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@92 (line 84)
   2.17%   │││  0x00007f77cad7d747:   vmulss 0x10(%r9,%rdx,4),%xmm2,%xmm11;*faload {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@101 (line 84)
   2.16%   │││  0x00007f77cad7d74e:   vaddss %xmm11,%xmm10,%xmm10         ;*fadd {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@103 (line 84)
   1.62%   │││  0x00007f77cad7d753:   vmulss 0x10(%rbx,%rdx,4),%xmm3,%xmm11;*fmul {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@112 (line 84)
   0.66%   │││  0x00007f77cad7d759:   vaddss %xmm11,%xmm10,%xmm10         ;*fadd {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@113 (line 84)
   2.04%   │││  0x00007f77cad7d75e:   vucomiss %xmm0,%xmm10
   1.98%   │╰│  0x00007f77cad7d762:   jbe    0x00007f77cad7d620
           │ │  0x00007f77cad7d768:   jmp    0x00007f77cad7d87e
           ↘ │  0x00007f77cad7d76d:   cmp    %ebp,%r10d
             ╰  0x00007f77cad7d770:   jle    0x00007f77cad7d5eb
                0x00007f77cad7d776:   jmp    0x00007f77cad7d7b2
                0x00007f77cad7d77b:   nopl   0x0(%rax,%rax,1)             ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@164 (line 91)
                0x00007f77cad7d780:   vmovss %xmm10,0x10(%rdi,%rbp,4)     ;*fastore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@114 (line 84)
                0x00007f77cad7d786:   vmovss 0x10(%r11,%rbp,4),%xmm10     ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@120 (line 85)
....................................................................................................
  92.02%  <total for region 1>

....[Hottest Regions]...............................................................................
  92.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline, version 4, compile id 983 
   0.90%              kernel  [unknown] 
   0.82%              kernel  [unknown] 
   0.75%              kernel  [unknown] 
   0.42%              kernel  [unknown] 
   0.15%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%           libjvm.so  ElfSymbolTable::lookup 
   0.06%        libc-2.31.so  __strchrnul_avx2 
   0.06%        libc-2.31.so  syscall 
   0.06%           libjvm.so  fileStream::flush 
   0.06%          ld-2.31.so  __tls_get_addr 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%        libc-2.31.so  _IO_default_xsputn 
   4.00%  <...other 1039 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  92.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline, version 4, compile id 983 
   5.17%              kernel  [unknown] 
   0.51%                      <unknown> 
   0.14%        libc-2.31.so  __vfprintf_internal 
   0.08%           libjvm.so  ElfSymbolTable::lookup 
   0.07%      hsdis-amd64.so  print_insn 
   0.07%           libjvm.so  defaultStream::write 
   0.07%        libc-2.31.so  _IO_fwrite 
   0.07%           libjvm.so  xmlStream::write_text 
   0.07%        libc-2.31.so  __strchrnul_avx2 
   0.06%        libc-2.31.so  syscall 
   0.06%        libc-2.31.so  __strchr_avx2 
   0.06%        libc-2.31.so  _IO_default_xsputn 
   0.06%           libjvm.so  fileStream::flush 
   0.06%          ld-2.31.so  __tls_get_addr 
   0.05%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.04%           libjvm.so  stringStream::write 
   0.04%        libc-2.31.so  __vsnprintf_internal 
   0.04%           libjvm.so  RelocIterator::initialize 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.jmh_generated.SepiaVectorApiBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 4, compile id 1008 
   1.18%  <...other 295 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  92.10%      jvmci, level 4
   5.17%              kernel
   0.89%           libjvm.so
   0.79%        libc-2.31.so
   0.51%                    
   0.18%         interpreter
   0.12%      hsdis-amd64.so
   0.09%  libpthread-2.31.so
   0.06%          ld-2.31.so
   0.05%         c1, level 3
   0.01%    perf-2149567.map
   0.01%    Unknown, level 0
   0.00%         c1, level 1
   0.00%        libjimage.so
   0.00%         c1, level 2
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark.baseline
# Parameters: (size = 65536)

# Run progress: 25.00% complete, ETA 00:05:52
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 275.808 us/op
# Warmup Iteration   2: 272.022 us/op
# Warmup Iteration   3: 271.749 us/op
# Warmup Iteration   4: 271.723 us/op
# Warmup Iteration   5: 271.725 us/op
Iteration   1: 271.729 us/op
Iteration   2: 271.729 us/op
Iteration   3: 271.717 us/op
Iteration   4: 271.724 us/op
Iteration   5: 271.732 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark.baseline":
  271.726 ±(99.9%) 0.022 us/op [Average]
  (min, avg, max) = (271.717, 271.726, 271.732), stdev = 0.006
  CI (99.9%): [271.704, 271.749] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark.baseline:asm":
PrintAssembly processed: 279570 total address lines.
Perf output processed (skipped 60.769 seconds):
 Column 1: cycles (54031 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline, version 3, compile id 988 

               0x00007f3e9ed80c80:   cmp    0x450(%r15),%rsp             ;   {poll_return}
               0x00007f3e9ed80c87:   ja     0x00007f3e9ed81036
               0x00007f3e9ed80c8d:   ret                                 ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@2 (line 81)
               0x00007f3e9ed80c8e:   lea    -0x2(%r10),%ecx
               0x00007f3e9ed80c92:   cmp    %edx,%ecx
          ╭    0x00007f3e9ed80c94:   jg     0x00007f3e9ed80d77
          │    0x00007f3e9ed80c9a:   jmp    0x00007f3e9ed80eab
          │    0x00007f3e9ed80c9f:   nop                                 ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@164 (line 91)
   1.64%  │ ↗  0x00007f3e9ed80ca0:   vmovss %xmm10,0x10(%rdi,%rdx,4)     ;*fastore {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@114 (line 84)
   0.29%  │ │  0x00007f3e9ed80ca6:   vmovss 0x10(%r11,%rdx,4),%xmm10     ;*faload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@120 (line 85)
   2.26%  │ │  0x00007f3e9ed80cad:   lea    0x2(%rdx),%ebp               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@175 (line 81)
   0.23%  │ │  0x00007f3e9ed80cb0:   vucomiss %xmm0,%xmm10
   1.55%  │ │  0x00007f3e9ed80cb4:   ja     0x00007f3e9ed80ed5           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@124 (line 85)
   0.45%  │ │  0x00007f3e9ed80cba:   vmovss 0x10(%rax,%rdx,4),%xmm10     ;*faload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@140 (line 88)
   2.16%  │ │  0x00007f3e9ed80cc0:   vucomiss %xmm0,%xmm10
   0.94%  │ │  0x00007f3e9ed80cc4:   ja     0x00007f3e9ed80fe2           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@144 (line 88)
   2.40%  │ │  0x00007f3e9ed80cca:   vmulss 0x14(%rbx,%rdx,4),%xmm9,%xmm10;*faload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@41 (line 82)
   2.59%  │ │  0x00007f3e9ed80cd0:   vmulss 0x14(%r8,%rdx,4),%xmm7,%xmm11;*faload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@22 (line 82)
   2.82%  │ │  0x00007f3e9ed80cd7:   vmulss 0x14(%r9,%rdx,4),%xmm8,%xmm12;*fmul {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@32 (line 82)
   2.32%  │ │  0x00007f3e9ed80cde:   vaddss %xmm12,%xmm11,%xmm11         ;*fadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@33 (line 82)
   0.38%  │ │  0x00007f3e9ed80ce3:   vaddss %xmm10,%xmm11,%xmm10         ;*fadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@43 (line 82)
   3.55%  │ │  0x00007f3e9ed80ce8:   vmovss %xmm10,0x14(%r11,%rdx,4)     ;*fastore {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@44 (line 82)
   1.20%  │ │  0x00007f3e9ed80cef:   vmulss 0x14(%rbx,%rdx,4),%xmm6,%xmm10;*faload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@76 (line 83)
   1.47%  │ │  0x00007f3e9ed80cf5:   vmulss 0x14(%r8,%rdx,4),%xmm4,%xmm11;*faload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@57 (line 83)
   2.89%  │ │  0x00007f3e9ed80cfc:   vmulss 0x14(%r9,%rdx,4),%xmm5,%xmm12;*fmul {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@67 (line 83)
   1.50%  │ │  0x00007f3e9ed80d03:   vaddss %xmm12,%xmm11,%xmm11         ;*fadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@68 (line 83)
   1.75%  │ │  0x00007f3e9ed80d08:   vaddss %xmm10,%xmm11,%xmm10         ;*fadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@78 (line 83)
   1.52%  │ │  0x00007f3e9ed80d0d:   vmovss %xmm10,0x14(%rax,%rdx,4)     ;*fastore {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@79 (line 83)
   1.82%  │ │  0x00007f3e9ed80d13:   vmulss 0x14(%r8,%rdx,4),%xmm1,%xmm10;*faload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@92 (line 84)
   1.74%  │ │  0x00007f3e9ed80d1a:   vmulss 0x14(%r9,%rdx,4),%xmm2,%xmm11;*faload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@101 (line 84)
   2.50%  │ │  0x00007f3e9ed80d21:   vaddss %xmm11,%xmm10,%xmm10         ;*fadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@103 (line 84)
   0.15%  │ │  0x00007f3e9ed80d26:   vmulss 0x14(%rbx,%rdx,4),%xmm3,%xmm11;*fmul {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@112 (line 84)
   2.32%  │ │  0x00007f3e9ed80d2c:   vaddss %xmm11,%xmm10,%xmm10         ;*fadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@113 (line 84)
   1.96%  │ │  0x00007f3e9ed80d31:   mov    %edx,%r13d
   0.14%  │ │  0x00007f3e9ed80d34:   inc    %r13d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@175 (line 81)
   1.57%  │ │  0x00007f3e9ed80d37:   vucomiss %xmm0,%xmm10
   1.43%  │ │  0x00007f3e9ed80d3b:   nopl   0x0(%rax,%rax,1)
   1.52%  │ │  0x00007f3e9ed80d40:   ja     0x00007f3e9ed80f9c           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@164 (line 91)
   0.82%  │ │  0x00007f3e9ed80d46:   vmovss %xmm10,0x14(%rdi,%rdx,4)     ;*fastore {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@114 (line 84)
   1.40%  │ │  0x00007f3e9ed80d4c:   vmovss 0x14(%r11,%rdx,4),%xmm10     ;*faload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@120 (line 85)
   0.64%  │ │  0x00007f3e9ed80d53:   vucomiss %xmm0,%xmm10
   1.56%  │ │  0x00007f3e9ed80d57:   ja     0x00007f3e9ed80f76           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@124 (line 85)
   1.54%  │ │  0x00007f3e9ed80d5d:   vmovss 0x14(%rax,%rdx,4),%xmm10     ;*faload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@140 (line 88)
   1.30%  │ │  0x00007f3e9ed80d63:   vucomiss %xmm0,%xmm10
   1.41%  │ │  0x00007f3e9ed80d67:   ja     0x00007f3e9ed80fee           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@144 (line 88)
   2.98%  │ │  0x00007f3e9ed80d6d:   cmp    %ebp,%ecx
          │╭│  0x00007f3e9ed80d6f:   jle    0x00007f3e9ed80ded           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@7 (line 81)
   0.34%  │││  0x00007f3e9ed80d75:   mov    %ebp,%edx                    ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@2 (line 81)
   0.87%  ↘││  0x00007f3e9ed80d77:   vmulss 0x10(%rbx,%rdx,4),%xmm9,%xmm10;*faload {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@41 (line 82)
   3.01%   ││  0x00007f3e9ed80d7d:   vmulss 0x10(%r8,%rdx,4),%xmm7,%xmm11;*faload {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@22 (line 82)
           ││                                                            ;   {no_reloc}
   1.28%   ││  0x00007f3e9ed80d84:   vmulss 0x10(%r9,%rdx,4),%xmm8,%xmm12;*fmul {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@32 (line 82)
   2.94%   ││  0x00007f3e9ed80d8b:   vaddss %xmm12,%xmm11,%xmm11         ;*fadd {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@33 (line 82)
   0.32%   ││  0x00007f3e9ed80d90:   vaddss %xmm10,%xmm11,%xmm10         ;*fadd {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@43 (line 82)
   0.97%   ││  0x00007f3e9ed80d95:   vmovss %xmm10,0x10(%r11,%rdx,4)     ;*fastore {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@44 (line 82)
   0.33%   ││  0x00007f3e9ed80d9c:   vmulss 0x10(%rbx,%rdx,4),%xmm6,%xmm10;*faload {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@76 (line 83)
   3.05%   ││  0x00007f3e9ed80da2:   vmulss 0x10(%r8,%rdx,4),%xmm4,%xmm11;*faload {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@57 (line 83)
   1.22%   ││  0x00007f3e9ed80da9:   vmulss 0x10(%r9,%rdx,4),%xmm5,%xmm12;*fmul {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@67 (line 83)
   3.12%   ││  0x00007f3e9ed80db0:   vaddss %xmm12,%xmm11,%xmm11         ;*fadd {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@68 (line 83)
   0.91%   ││  0x00007f3e9ed80db5:   vaddss %xmm10,%xmm11,%xmm10         ;*fadd {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@78 (line 83)
   0.51%   ││  0x00007f3e9ed80dba:   vmovss %xmm10,0x10(%rax,%rdx,4)     ;*fastore {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@79 (line 83)
   2.86%   ││  0x00007f3e9ed80dc0:   vmulss 0x10(%r8,%rdx,4),%xmm1,%xmm10;*faload {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@92 (line 84)
   1.23%   ││  0x00007f3e9ed80dc7:   vmulss 0x10(%r9,%rdx,4),%xmm2,%xmm11;*faload {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@101 (line 84)
   3.03%   ││  0x00007f3e9ed80dce:   vaddss %xmm11,%xmm10,%xmm10         ;*fadd {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@103 (line 84)
   0.31%   ││  0x00007f3e9ed80dd3:   vmulss 0x10(%rbx,%rdx,4),%xmm3,%xmm11;*fmul {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@112 (line 84)
   1.24%   ││  0x00007f3e9ed80dd9:   vaddss %xmm11,%xmm10,%xmm10         ;*fadd {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@113 (line 84)
   2.77%   ││  0x00007f3e9ed80dde:   vucomiss %xmm0,%xmm10
   0.90%   │╰  0x00007f3e9ed80de2:   jbe    0x00007f3e9ed80ca0
           │   0x00007f3e9ed80de8:   jmp    0x00007f3e9ed80efe
           ↘   0x00007f3e9ed80ded:   cmp    %ebp,%r10d
               0x00007f3e9ed80df0:   jle    0x00007f3e9ed80c6b
               0x00007f3e9ed80df6:   jmp    0x00007f3e9ed80e32
               0x00007f3e9ed80dfb:   nopl   0x0(%rax,%rax,1)             ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@164 (line 91)
               0x00007f3e9ed80e00:   vmovss %xmm10,0x10(%rdi,%rbp,4)     ;*fastore {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@114 (line 84)
               0x00007f3e9ed80e06:   vmovss 0x10(%r11,%rbp,4),%xmm10     ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@120 (line 85)
....................................................................................................
  91.95%  <total for region 1>

....[Hottest Regions]...............................................................................
  91.95%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline, version 3, compile id 988 
   0.91%               kernel  [unknown] 
   0.81%               kernel  [unknown] 
   0.73%               kernel  [unknown] 
   0.45%               kernel  [unknown] 
   0.31%               kernel  [unknown] 
   0.13%            libjvm.so  ElfSymbolTable::lookup 
   0.12%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%   libpthread-2.31.so  __libc_write 
   0.05%         libc-2.31.so  syscall 
   0.05%           ld-2.31.so  __tls_get_addr 
   0.05%               kernel  [unknown] 
   0.05%         libc-2.31.so  __strchrnul_avx2 
   0.04%            libjvm.so  CompilerOracle::has_option_value<bool> 
   3.85%  <...other 1006 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  91.99%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline, version 3, compile id 988 
   5.32%               kernel  [unknown] 
   0.18%         libc-2.31.so  __vfprintf_internal 
   0.16%                       <unknown> 
   0.13%            libjvm.so  ElfSymbolTable::lookup 
   0.09%            libjvm.so  xmlStream::write_text 
   0.06%         libc-2.31.so  _IO_fwrite 
   0.06%   libpthread-2.31.so  __libc_write 
   0.05%         libc-2.31.so  __strlen_avx2 
   0.05%         libc-2.31.so  __strchrnul_avx2 
   0.05%            libjvm.so  defaultStream::write 
   0.05%         libc-2.31.so  syscall 
   0.05%         libc-2.31.so  _IO_default_xsputn 
   0.05%           ld-2.31.so  __tls_get_addr 
   0.04%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.04%       hsdis-amd64.so  print_insn 
   0.04%            libjvm.so  stringStream::write 
   0.04%         libc-2.31.so  __strchr_avx2 
   0.04%            libjvm.so  fileStream::write 
   0.03%          interpreter  invokevirtual  182 invokevirtual  
   1.46%  <...other 422 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  92.01%       jvmci, level 4
   5.32%               kernel
   0.82%            libjvm.so
   0.75%         libc-2.31.so
   0.39%  libjvmcicompiler.so
   0.23%          interpreter
   0.16%                     
   0.10%       hsdis-amd64.so
   0.08%   libpthread-2.31.so
   0.05%          c1, level 3
   0.05%           ld-2.31.so
   0.02%     perf-2149637.map
   0.01%          c1, level 2
   0.01%     Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark.vectorized
# Parameters: (size = 32768)

# Run progress: 50.00% complete, ETA 00:03:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 108.734 us/op
# Warmup Iteration   2: 59.782 us/op
# Warmup Iteration   3: 59.775 us/op
# Warmup Iteration   4: 59.778 us/op
# Warmup Iteration   5: 59.777 us/op
Iteration   1: 59.791 us/op
Iteration   2: 59.782 us/op
Iteration   3: 59.786 us/op
Iteration   4: 59.784 us/op
Iteration   5: 59.786 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark.vectorized":
  59.786 ±(99.9%) 0.014 us/op [Average]
  (min, avg, max) = (59.782, 59.786, 59.791), stdev = 0.004
  CI (99.9%): [59.772, 59.800] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark.vectorized:asm":
PrintAssembly processed: 309443 total address lines.
Perf output processed (skipped 60.633 seconds):
 Column 1: cycles (51054 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized, version 4, compile id 1247 

                                                                          ; - jdk.incubator.vector.FloatVector::compareTemplate@42 (line 1902)
                                                                          ; - jdk.incubator.vector.Float256Vector::compare@5 (line 371)
                                                                          ; - jdk.incubator.vector.Float256Vector::compare@3 (line 41)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@301 (line 120)
                0x00007f6e0ed98fa3:   vblendvps %ymm11,%ymm6,%ymm10,%ymm10;* unwind (locked if synchronized)
                                                                          ; - jdk.internal.vm.vector.VectorSupport::blend@-3
                                                                          ; - jdk.incubator.vector.FloatVector::blendTemplate@26 (line 2051)
                                                                          ; - jdk.incubator.vector.Float256Vector::blend@11 (line 397)
                                                                          ; - jdk.incubator.vector.Float256Vector::blend@3 (line 41)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@304 (line 120)
   0.00%        0x00007f6e0ed98fa9:   vmovups %ymm10,0x10(%rdi,%rdx,4)    ;* unwind (locked if synchronized)
                                                                          ; - jdk.internal.vm.vector.VectorSupport::store@-3
                                                                          ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
                0x00007f6e0ed98faf:   lea    0x8(%rdx),%edx               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@324 (line 101)
                0x00007f6e0ed98fb2:   cmp    %edx,%ecx
          ╭     0x00007f6e0ed98fb4:   jle    0x00007f6e0ed98fdc
          │     0x00007f6e0ed98fba:   jmp    0x00007f6e0ed98f20           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@15 (line 101)
          │  ↗  0x00007f6e0ed98fbf:   mov    %r11,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@333 (line 122)
          │  │  0x00007f6e0ed98fc2:   mov    0x10(%rsp),%rbp
   0.01%  │  │  0x00007f6e0ed98fc7:   add    $0x18,%rsp
          │  │  0x00007f6e0ed98fcb:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  │  0x00007f6e0ed98fd2:   ja     0x00007f6e0ed992cd
   0.00%  │  │  0x00007f6e0ed98fd8:   vzeroupper 
   0.00%  │  │  0x00007f6e0ed98fdb:   ret                                 ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@2 (line 101)
          ↘  │  0x00007f6e0ed98fdc:   lea    -0x10(%r10),%ecx
             │  0x00007f6e0ed98fe0:   cmp    %edx,%ecx
           ╭ │  0x00007f6e0ed98fe2:   jle    0x00007f6e0ed99119
           │ │  0x00007f6e0ed98fe8:   nopl   0x0(%rax,%rax,1)
   1.10%   │↗│  0x00007f6e0ed98ff0:   vmovups 0x10(%r8,%rdx,4),%ymm10     ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::load@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
           │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@124 (line 112)
   0.25%   │││  0x00007f6e0ed98ff7:   vmovups 0x10(%r9,%rdx,4),%ymm11     ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::load@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
           │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@137 (line 113)
   0.17%   │││  0x00007f6e0ed98ffe:   vmovups 0x10(%rbx,%rdx,4),%ymm12    ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::load@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
           │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@150 (line 114)
   9.14%   │││  0x00007f6e0ed99004:   vmulps %ymm7,%ymm10,%ymm13          ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::mul@5 (line 1372)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@158 (line 115)
   0.60%   │││  0x00007f6e0ed99008:   vmulps %ymm8,%ymm11,%ymm14          ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::mul@5 (line 1372)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@164 (line 115)
   0.07%   │││  0x00007f6e0ed9900d:   vaddps %ymm14,%ymm13,%ymm13         ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@167 (line 115)
   0.08%   │││  0x00007f6e0ed99012:   vmulps %ymm9,%ymm12,%ymm14          ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::mul@5 (line 1372)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@174 (line 115)
   4.27%   │││  0x00007f6e0ed99017:   vaddps %ymm14,%ymm13,%ymm13         ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@177 (line 115)
   4.02%   │││  0x00007f6e0ed9901c:   vcmplt_oqps %ymm13,%ymm6,%ymm14     ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::compareTemplate@42 (line 1902)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::compare@5 (line 371)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::compare@3 (line 41)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@251 (line 118)
   2.95%   │││  0x00007f6e0ed99022:   vblendvps %ymm14,%ymm6,%ymm13,%ymm13;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::blend@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::blendTemplate@26 (line 2051)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::blend@11 (line 397)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::blend@3 (line 41)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@254 (line 118)
   3.54%   │││  0x00007f6e0ed99028:   vmovups %ymm13,0x10(%r11,%rdx,4)    ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::store@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@262 (line 118)
   1.11%   │││  0x00007f6e0ed9902f:   vmulps %ymm3,%ymm10,%ymm13          ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::mul@5 (line 1372)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@186 (line 116)
           │││  0x00007f6e0ed99033:   vmulps %ymm4,%ymm11,%ymm14          ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::mul@5 (line 1372)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@193 (line 116)
   0.32%   │││  0x00007f6e0ed99037:   vaddps %ymm14,%ymm13,%ymm13         ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@196 (line 116)
   0.22%   │││  0x00007f6e0ed9903c:   vmulps %ymm5,%ymm12,%ymm14          ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::mul@5 (line 1372)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@203 (line 116)
   0.72%   │││  0x00007f6e0ed99040:   vaddps %ymm14,%ymm13,%ymm13         ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@206 (line 116)
   0.00%   │││  0x00007f6e0ed99045:   vcmplt_oqps %ymm13,%ymm6,%ymm14     ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::compareTemplate@42 (line 1902)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::compare@5 (line 371)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::compare@3 (line 41)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@276 (line 119)
   0.32%   │││  0x00007f6e0ed9904b:   vblendvps %ymm14,%ymm6,%ymm13,%ymm13;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::blend@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::blendTemplate@26 (line 2051)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::blend@11 (line 397)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::blend@3 (line 41)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@279 (line 119)
   1.56%   │││  0x00007f6e0ed99051:   vmovups %ymm13,0x10(%rax,%rdx,4)    ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::store@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
   0.01%   │││  0x00007f6e0ed99057:   vmulps %ymm0,%ymm10,%ymm10          ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::mul@5 (line 1372)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@215 (line 117)
           │││  0x00007f6e0ed9905b:   vmulps %ymm1,%ymm11,%ymm11          ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::mul@5 (line 1372)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@222 (line 117)
   1.29%   │││  0x00007f6e0ed9905f:   vaddps %ymm11,%ymm10,%ymm10         ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@225 (line 117)
   0.10%   │││  0x00007f6e0ed99064:   vmulps %ymm2,%ymm12,%ymm11          ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::mul@5 (line 1372)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@232 (line 117)
   0.00%   │││  0x00007f6e0ed99068:   vaddps %ymm11,%ymm10,%ymm10         ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@235 (line 117)
   0.05%   │││  0x00007f6e0ed9906d:   vcmplt_oqps %ymm10,%ymm6,%ymm11     ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::compareTemplate@42 (line 1902)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::compare@5 (line 371)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::compare@3 (line 41)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@301 (line 120)
   1.34%   │││  0x00007f6e0ed99073:   vblendvps %ymm11,%ymm6,%ymm10,%ymm10;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::blend@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::blendTemplate@26 (line 2051)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::blend@11 (line 397)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::blend@3 (line 41)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@304 (line 120)
   3.30%   │││  0x00007f6e0ed99079:   vmovups %ymm10,0x10(%rdi,%rdx,4)    ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::store@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.46%   │││  0x00007f6e0ed9907f:   vmovups 0x30(%r8,%rdx,4),%ymm10     ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::load@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
           │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@124 (line 112)
   9.07%   │││  0x00007f6e0ed99086:   vmovups 0x30(%r9,%rdx,4),%ymm11     ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::load@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
           │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@137 (line 113)
   7.59%   │││  0x00007f6e0ed9908d:   vmovups 0x30(%rbx,%rdx,4),%ymm12    ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::load@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
           │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@150 (line 114)
   0.79%   │││  0x00007f6e0ed99093:   vmulps %ymm7,%ymm10,%ymm13          ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::mul@5 (line 1372)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@158 (line 115)
   1.18%   │││  0x00007f6e0ed99097:   vmulps %ymm8,%ymm11,%ymm14          ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::mul@5 (line 1372)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@164 (line 115)
   3.64%   │││  0x00007f6e0ed9909c:   vaddps %ymm14,%ymm13,%ymm13         ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@167 (line 115)
   3.73%   │││  0x00007f6e0ed990a1:   vmulps %ymm9,%ymm12,%ymm14          ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::mul@5 (line 1372)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@174 (line 115)
   0.36%   │││  0x00007f6e0ed990a6:   vaddps %ymm14,%ymm13,%ymm13         ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@177 (line 115)
   4.02%   │││  0x00007f6e0ed990ab:   vcmplt_oqps %ymm13,%ymm6,%ymm14     ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::compareTemplate@42 (line 1902)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::compare@5 (line 371)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::compare@3 (line 41)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@251 (line 118)
   3.88%   │││  0x00007f6e0ed990b1:   vblendvps %ymm14,%ymm6,%ymm13,%ymm13;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::blend@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::blendTemplate@26 (line 2051)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::blend@11 (line 397)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::blend@3 (line 41)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@254 (line 118)
   5.33%   │││  0x00007f6e0ed990b7:   vmovups %ymm13,0x30(%r11,%rdx,4)    ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::store@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@262 (line 118)
   0.35%   │││  0x00007f6e0ed990be:   vmulps %ymm3,%ymm10,%ymm13          ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::mul@5 (line 1372)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@186 (line 116)
           │││  0x00007f6e0ed990c2:   vmulps %ymm4,%ymm11,%ymm14          ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::mul@5 (line 1372)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@193 (line 116)
   0.17%   │││  0x00007f6e0ed990c6:   vaddps %ymm14,%ymm13,%ymm13         ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@196 (line 116)
           │││                                                            ;   {no_reloc}
   0.73%   │││  0x00007f6e0ed990cb:   vmulps %ymm5,%ymm12,%ymm14          ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::mul@5 (line 1372)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@203 (line 116)
   0.43%   │││  0x00007f6e0ed990cf:   vaddps %ymm14,%ymm13,%ymm13         ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@206 (line 116)
   0.01%   │││  0x00007f6e0ed990d4:   vcmplt_oqps %ymm13,%ymm6,%ymm14     ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::compareTemplate@42 (line 1902)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::compare@5 (line 371)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::compare@3 (line 41)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@276 (line 119)
   0.16%   │││  0x00007f6e0ed990da:   vblendvps %ymm14,%ymm6,%ymm13,%ymm13;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::blend@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::blendTemplate@26 (line 2051)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::blend@11 (line 397)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::blend@3 (line 41)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@279 (line 119)
   1.80%   │││  0x00007f6e0ed990e0:   vmovups %ymm13,0x30(%rax,%rdx,4)    ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::store@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
   0.10%   │││  0x00007f6e0ed990e6:   vmulps %ymm0,%ymm10,%ymm10          ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::mul@5 (line 1372)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@215 (line 117)
           │││  0x00007f6e0ed990ea:   vmulps %ymm1,%ymm11,%ymm11          ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::mul@5 (line 1372)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@222 (line 117)
   1.25%   │││  0x00007f6e0ed990ee:   vaddps %ymm11,%ymm10,%ymm10         ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@225 (line 117)
   0.33%   │││  0x00007f6e0ed990f3:   vmulps %ymm2,%ymm12,%ymm11          ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::mul@5 (line 1372)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@232 (line 117)
   0.00%   │││  0x00007f6e0ed990f7:   vaddps %ymm11,%ymm10,%ymm10         ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@235 (line 117)
   0.26%   │││  0x00007f6e0ed990fc:   vcmplt_oqps %ymm10,%ymm6,%ymm11     ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::compareTemplate@42 (line 1902)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::compare@5 (line 371)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::compare@3 (line 41)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@301 (line 120)
   1.50%   │││  0x00007f6e0ed99102:   vblendvps %ymm11,%ymm6,%ymm10,%ymm10;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::blend@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::blendTemplate@26 (line 2051)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::blend@11 (line 397)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::blend@3 (line 41)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@304 (line 120)
   1.93%   │││  0x00007f6e0ed99108:   vmovups %ymm10,0x30(%rdi,%rdx,4)    ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::store@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
  11.56%   │││  0x00007f6e0ed9910e:   lea    0x10(%rdx),%edx              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@324 (line 101)
           │││  0x00007f6e0ed99111:   cmp    %edx,%ecx
           │╰│  0x00007f6e0ed99113:   jg     0x00007f6e0ed98ff0
           ↘ │  0x00007f6e0ed99119:   nopl   0x0(%rax)
             │  0x00007f6e0ed99120:   cmp    %edx,%r10d
             ╰  0x00007f6e0ed99123:   jle    0x00007f6e0ed98fbf
                0x00007f6e0ed99129:   jmp    0x00007f6e0ed99142
....................................................................................................
  97.19%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.19%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized, version 4, compile id 1247 
   1.19%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.08%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.jmh_generated.SepiaVectorApiBenchmark_vectorized_jmhTest::vectorized_avgt_jmhStub, version 4, compile id 1274 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized, version 4, compile id 1247 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized, version 4, compile id 1247 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%         interpreter  iload_1  27 iload_1  
   0.94%  <...other 298 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.29%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized, version 4, compile id 1247 
   2.18%              kernel  [unknown] 
   0.08%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.jmh_generated.SepiaVectorApiBenchmark_vectorized_jmhTest::vectorized_avgt_jmhStub, version 4, compile id 1274 
   0.07%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%         interpreter  fadd  98 fadd  
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%         interpreter  iload_1  27 iload_1  
   0.01%         interpreter  ldc  18 ldc  
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%         interpreter  fastore  81 fastore  
   0.01%         interpreter  faload  48 faload  
   0.01%           libjvm.so  fileStream::flush 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.20%  <...other 78 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.37%      jvmci, level 4
   2.18%              kernel
   0.14%           libjvm.so
   0.11%        libc-2.31.so
   0.10%         interpreter
   0.07%                    
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         c1, level 3
   0.00%    perf-2149707.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark.vectorized
# Parameters: (size = 65536)

# Run progress: 75.00% complete, ETA 00:01:56
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 212.667 us/op
# Warmup Iteration   2: 125.181 us/op
# Warmup Iteration   3: 125.148 us/op
# Warmup Iteration   4: 125.166 us/op
# Warmup Iteration   5: 125.138 us/op
Iteration   1: 125.153 us/op
Iteration   2: 125.121 us/op
Iteration   3: 125.097 us/op
Iteration   4: 125.144 us/op
Iteration   5: 125.100 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark.vectorized":
  125.123 ±(99.9%) 0.097 us/op [Average]
  (min, avg, max) = (125.097, 125.123, 125.153), stdev = 0.025
  CI (99.9%): [125.026, 125.220] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark.vectorized:asm":
PrintAssembly processed: 304272 total address lines.
Perf output processed (skipped 60.915 seconds):
 Column 1: cycles (50530 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized, version 4, compile id 1237 

                                                                          ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
                                                                          ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
                                                                          ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@235 (line 117)
                0x00007f1196d9fe1d:   vcmplt_oqps %ymm10,%ymm6,%ymm11     ;* unwind (locked if synchronized)
                                                                          ; - jdk.internal.vm.vector.VectorSupport::compare@-3
                                                                          ; - jdk.incubator.vector.FloatVector::compareTemplate@42 (line 1902)
                                                                          ; - jdk.incubator.vector.Float256Vector::compare@5 (line 371)
                                                                          ; - jdk.incubator.vector.Float256Vector::compare@3 (line 41)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@301 (line 120)
   0.00%        0x00007f1196d9fe23:   vblendvps %ymm11,%ymm6,%ymm10,%ymm10;* unwind (locked if synchronized)
                                                                          ; - jdk.internal.vm.vector.VectorSupport::blend@-3
                                                                          ; - jdk.incubator.vector.FloatVector::blendTemplate@26 (line 2051)
                                                                          ; - jdk.incubator.vector.Float256Vector::blend@11 (line 397)
                                                                          ; - jdk.incubator.vector.Float256Vector::blend@3 (line 41)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@304 (line 120)
   0.00%        0x00007f1196d9fe29:   vmovups %ymm10,0x10(%rdi,%rdx,4)    ;* unwind (locked if synchronized)
                                                                          ; - jdk.internal.vm.vector.VectorSupport::store@-3
                                                                          ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
                0x00007f1196d9fe2f:   lea    0x8(%rdx),%edx               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@324 (line 101)
                0x00007f1196d9fe32:   cmp    %edx,%ecx
          ╭     0x00007f1196d9fe34:   jle    0x00007f1196d9fe5c
          │     0x00007f1196d9fe3a:   jmp    0x00007f1196d9fda0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@15 (line 101)
          │  ↗  0x00007f1196d9fe3f:   mov    %r11,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@333 (line 122)
          │  │  0x00007f1196d9fe42:   mov    0x10(%rsp),%rbp
   0.00%  │  │  0x00007f1196d9fe47:   add    $0x18,%rsp
          │  │  0x00007f1196d9fe4b:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  │  0x00007f1196d9fe52:   ja     0x00007f1196da014d
   0.00%  │  │  0x00007f1196d9fe58:   vzeroupper 
   0.00%  │  │  0x00007f1196d9fe5b:   ret                                 ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@2 (line 101)
   0.00%  ↘  │  0x00007f1196d9fe5c:   lea    -0x10(%r10),%ecx
             │  0x00007f1196d9fe60:   cmp    %edx,%ecx
           ╭ │  0x00007f1196d9fe62:   jle    0x00007f1196d9ff99
           │ │  0x00007f1196d9fe68:   nopl   0x0(%rax,%rax,1)
   0.67%   │↗│  0x00007f1196d9fe70:   vmovups 0x10(%r8,%rdx,4),%ymm10     ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::load@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
           │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@124 (line 112)
   8.52%   │││  0x00007f1196d9fe77:   vmovups 0x10(%r9,%rdx,4),%ymm11     ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::load@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
           │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@137 (line 113)
   2.51%   │││  0x00007f1196d9fe7e:   vmovups 0x10(%rbx,%rdx,4),%ymm12    ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::load@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
           │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@150 (line 114)
   1.07%   │││  0x00007f1196d9fe84:   vmulps %ymm7,%ymm10,%ymm13          ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::mul@5 (line 1372)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@158 (line 115)
   4.65%   │││  0x00007f1196d9fe88:   vmulps %ymm8,%ymm11,%ymm14          ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::mul@5 (line 1372)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@164 (line 115)
   1.52%   │││  0x00007f1196d9fe8d:   vaddps %ymm14,%ymm13,%ymm13         ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@167 (line 115)
   4.73%   │││  0x00007f1196d9fe92:   vmulps %ymm9,%ymm12,%ymm14          ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::mul@5 (line 1372)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@174 (line 115)
   0.40%   │││  0x00007f1196d9fe97:   vaddps %ymm14,%ymm13,%ymm13         ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@177 (line 115)
   4.13%   │││  0x00007f1196d9fe9c:   vcmplt_oqps %ymm13,%ymm6,%ymm14     ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::compareTemplate@42 (line 1902)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::compare@5 (line 371)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::compare@3 (line 41)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@251 (line 118)
   4.55%   │││  0x00007f1196d9fea2:   vblendvps %ymm14,%ymm6,%ymm13,%ymm13;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::blend@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::blendTemplate@26 (line 2051)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::blend@11 (line 397)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::blend@3 (line 41)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@254 (line 118)
   5.34%   │││  0x00007f1196d9fea8:   vmovups %ymm13,0x10(%r11,%rdx,4)    ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::store@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@262 (line 118)
  12.83%   │││  0x00007f1196d9feaf:   vmulps %ymm3,%ymm10,%ymm13          ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::mul@5 (line 1372)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@186 (line 116)
           │││  0x00007f1196d9feb3:   vmulps %ymm4,%ymm11,%ymm14          ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::mul@5 (line 1372)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@193 (line 116)
   0.07%   │││  0x00007f1196d9feb7:   vaddps %ymm14,%ymm13,%ymm13         ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@196 (line 116)
   0.73%   │││  0x00007f1196d9febc:   vmulps %ymm5,%ymm12,%ymm14          ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::mul@5 (line 1372)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@203 (line 116)
   0.38%   │││  0x00007f1196d9fec0:   vaddps %ymm14,%ymm13,%ymm13         ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@206 (line 116)
           │││  0x00007f1196d9fec5:   vcmplt_oqps %ymm13,%ymm6,%ymm14     ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::compareTemplate@42 (line 1902)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::compare@5 (line 371)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::compare@3 (line 41)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@276 (line 119)
   0.08%   │││  0x00007f1196d9fecb:   vblendvps %ymm14,%ymm6,%ymm13,%ymm13;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::blend@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::blendTemplate@26 (line 2051)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::blend@11 (line 397)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::blend@3 (line 41)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@279 (line 119)
   1.63%   │││  0x00007f1196d9fed1:   vmovups %ymm13,0x10(%rax,%rdx,4)    ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::store@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
   0.06%   │││  0x00007f1196d9fed7:   vmulps %ymm0,%ymm10,%ymm10          ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::mul@5 (line 1372)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@215 (line 117)
           │││  0x00007f1196d9fedb:   vmulps %ymm1,%ymm11,%ymm11          ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::mul@5 (line 1372)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@222 (line 117)
   1.02%   │││  0x00007f1196d9fedf:   vaddps %ymm11,%ymm10,%ymm10         ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@225 (line 117)
   0.26%   │││  0x00007f1196d9fee4:   vmulps %ymm2,%ymm12,%ymm11          ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::mul@5 (line 1372)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@232 (line 117)
           │││  0x00007f1196d9fee8:   vaddps %ymm11,%ymm10,%ymm10         ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@235 (line 117)
   1.23%   │││  0x00007f1196d9feed:   vcmplt_oqps %ymm10,%ymm6,%ymm11     ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::compareTemplate@42 (line 1902)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::compare@5 (line 371)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::compare@3 (line 41)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@301 (line 120)
   2.09%   │││  0x00007f1196d9fef3:   vblendvps %ymm11,%ymm6,%ymm10,%ymm10;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::blend@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::blendTemplate@26 (line 2051)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::blend@11 (line 397)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::blend@3 (line 41)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@304 (line 120)
   4.40%   │││  0x00007f1196d9fef9:   vmovups %ymm10,0x10(%rdi,%rdx,4)    ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::store@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.51%   │││  0x00007f1196d9feff:   vmovups 0x30(%r8,%rdx,4),%ymm10     ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::load@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
           │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@124 (line 112)
           │││  0x00007f1196d9ff06:   vmovups 0x30(%r9,%rdx,4),%ymm11     ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::load@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
           │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@137 (line 113)
   0.75%   │││  0x00007f1196d9ff0d:   vmovups 0x30(%rbx,%rdx,4),%ymm12    ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::load@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
           │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@150 (line 114)
   0.43%   │││  0x00007f1196d9ff13:   vmulps %ymm7,%ymm10,%ymm13          ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::mul@5 (line 1372)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@158 (line 115)
   1.41%   │││  0x00007f1196d9ff17:   vmulps %ymm8,%ymm11,%ymm14          ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::mul@5 (line 1372)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@164 (line 115)
   2.81%   │││  0x00007f1196d9ff1c:   vaddps %ymm14,%ymm13,%ymm13         ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@167 (line 115)
   1.96%   │││  0x00007f1196d9ff21:   vmulps %ymm9,%ymm12,%ymm14          ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::mul@5 (line 1372)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@174 (line 115)
   0.03%   │││  0x00007f1196d9ff26:   vaddps %ymm14,%ymm13,%ymm13         ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@177 (line 115)
   3.73%   │││  0x00007f1196d9ff2b:   vcmplt_oqps %ymm13,%ymm6,%ymm14     ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::compareTemplate@42 (line 1902)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::compare@5 (line 371)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::compare@3 (line 41)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@251 (line 118)
   2.00%   │││  0x00007f1196d9ff31:   vblendvps %ymm14,%ymm6,%ymm13,%ymm13;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::blend@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::blendTemplate@26 (line 2051)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::blend@11 (line 397)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::blend@3 (line 41)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@254 (line 118)
   5.89%   │││  0x00007f1196d9ff37:   vmovups %ymm13,0x30(%r11,%rdx,4)    ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::store@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@262 (line 118)
   0.13%   │││  0x00007f1196d9ff3e:   vmulps %ymm3,%ymm10,%ymm13          ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::mul@5 (line 1372)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@186 (line 116)
           │││  0x00007f1196d9ff42:   vmulps %ymm4,%ymm11,%ymm14          ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::mul@5 (line 1372)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@193 (line 116)
   0.44%   │││  0x00007f1196d9ff46:   vaddps %ymm14,%ymm13,%ymm13         ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@196 (line 116)
           │││                                                            ;   {no_reloc}
   1.03%   │││  0x00007f1196d9ff4b:   vmulps %ymm5,%ymm12,%ymm14          ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::mul@5 (line 1372)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@203 (line 116)
   0.12%   │││  0x00007f1196d9ff4f:   vaddps %ymm14,%ymm13,%ymm13         ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@206 (line 116)
   1.24%   │││  0x00007f1196d9ff54:   vcmplt_oqps %ymm13,%ymm6,%ymm14     ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::compareTemplate@42 (line 1902)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::compare@5 (line 371)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::compare@3 (line 41)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@276 (line 119)
   3.60%   │││  0x00007f1196d9ff5a:   vblendvps %ymm14,%ymm6,%ymm13,%ymm13;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::blend@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::blendTemplate@26 (line 2051)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::blend@11 (line 397)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::blend@3 (line 41)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@279 (line 119)
   3.21%   │││  0x00007f1196d9ff60:   vmovups %ymm13,0x30(%rax,%rdx,4)    ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::store@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
   0.71%   │││  0x00007f1196d9ff66:   vmulps %ymm0,%ymm10,%ymm10          ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::mul@5 (line 1372)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@215 (line 117)
           │││  0x00007f1196d9ff6a:   vmulps %ymm1,%ymm11,%ymm11          ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::mul@5 (line 1372)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@222 (line 117)
   0.32%   │││  0x00007f1196d9ff6e:   vaddps %ymm11,%ymm10,%ymm10         ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@225 (line 117)
   0.36%   │││  0x00007f1196d9ff73:   vmulps %ymm2,%ymm12,%ymm11          ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::mul@5 (line 1372)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@232 (line 117)
   0.69%   │││  0x00007f1196d9ff77:   vaddps %ymm11,%ymm10,%ymm10         ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
           │││                                                            ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@235 (line 117)
   0.14%   │││  0x00007f1196d9ff7c:   vcmplt_oqps %ymm10,%ymm6,%ymm11     ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::compareTemplate@42 (line 1902)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::compare@5 (line 371)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::compare@3 (line 41)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@301 (line 120)
   0.81%   │││  0x00007f1196d9ff82:   vblendvps %ymm11,%ymm6,%ymm10,%ymm10;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::blend@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::blendTemplate@26 (line 2051)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::blend@11 (line 397)
           │││                                                            ; - jdk.incubator.vector.Float256Vector::blend@3 (line 41)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@304 (line 120)
   1.64%   │││  0x00007f1196d9ff88:   vmovups %ymm10,0x30(%rdi,%rdx,4)    ;* unwind (locked if synchronized)
           │││                                                            ; - jdk.internal.vm.vector.VectorSupport::store@-3
           │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   1.48%   │││  0x00007f1196d9ff8e:   lea    0x10(%rdx),%edx              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@324 (line 101)
           │││  0x00007f1196d9ff91:   cmp    %edx,%ecx
           │╰│  0x00007f1196d9ff93:   jg     0x00007f1196d9fe70
           ↘ │  0x00007f1196d9ff99:   nopl   0x0(%rax)
             │  0x00007f1196d9ffa0:   cmp    %edx,%r10d
             ╰  0x00007f1196d9ffa3:   jle    0x00007f1196d9fe3f
                0x00007f1196d9ffa9:   jmp    0x00007f1196d9ffc2
....................................................................................................
  98.30%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.30%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized, version 4, compile id 1237 
   0.12%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.jmh_generated.SepiaVectorApiBenchmark_vectorized_jmhTest::vectorized_avgt_jmhStub, version 5, compile id 1269 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized, version 4, compile id 1237 
   0.03%         interpreter  ldc  18 ldc  
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized, version 4, compile id 1237 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%              kernel  [unknown] 
   0.02%         interpreter  faload  48 faload  
   0.02%         interpreter  fmul  106 fmul  
   0.02%              kernel  [unknown] 
   0.92%  <...other 297 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.36%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized, version 4, compile id 1237 
   1.15%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.jmh_generated.SepiaVectorApiBenchmark_vectorized_jmhTest::vectorized_avgt_jmhStub, version 5, compile id 1269 
   0.03%         interpreter  ldc  18 ldc  
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%         interpreter  faload  48 faload  
   0.02%         interpreter  fmul  106 fmul  
   0.02%         interpreter  fast_aaccess_0  222 fast_aaccess_0  
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%         interpreter  goto  167 goto  
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%         interpreter  fastore  81 fastore  
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%         interpreter  iload_1  27 iload_1  
   0.01%         interpreter  fadd  98 fadd  
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%         interpreter  ifle  158 ifle  
   0.01%         interpreter  if_icmpge  162 if_icmpge  
   0.21%  <...other 91 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.39%      jvmci, level 4
   1.15%              kernel
   0.17%         interpreter
   0.12%           libjvm.so
   0.08%        libc-2.31.so
   0.04%                    
   0.02%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.00%              [vdso]
   0.00%         c1, level 3
   0.00%    perf-2149770.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:07:42

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

Benchmark                               (size)  Mode  Cnt    Score   Error  Units
SepiaVectorApiBenchmark.baseline         32768  avgt    5  137.681 ± 0.567  us/op
SepiaVectorApiBenchmark.baseline:asm     32768  avgt           NaN            ---
SepiaVectorApiBenchmark.baseline         65536  avgt    5  271.726 ± 0.022  us/op
SepiaVectorApiBenchmark.baseline:asm     65536  avgt           NaN            ---
SepiaVectorApiBenchmark.vectorized       32768  avgt    5   59.786 ± 0.014  us/op
SepiaVectorApiBenchmark.vectorized:asm   32768  avgt           NaN            ---
SepiaVectorApiBenchmark.vectorized       65536  avgt    5  125.123 ± 0.097  us/op
SepiaVectorApiBenchmark.vectorized:asm   65536  avgt           NaN            ---
