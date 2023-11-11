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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign
# Parameters: (algorithm = secp256r1, messageLength = 64)

# Run progress: 0.00% complete, ETA 00:20:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 955.287 us/op
# Warmup Iteration   2: 339.271 us/op
# Warmup Iteration   3: 338.112 us/op
# Warmup Iteration   4: 337.947 us/op
# Warmup Iteration   5: 337.732 us/op
Iteration   1: 337.746 us/op
Iteration   2: 337.591 us/op
Iteration   3: 337.821 us/op
Iteration   4: 337.667 us/op
Iteration   5: 337.663 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign":
  337.698 ±(99.9%) 0.339 us/op [Average]
  (min, avg, max) = (337.591, 337.698, 337.821), stdev = 0.088
  CI (99.9%): [337.359, 338.037] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign:asm":
PrintAssembly processed: 323181 total address lines.
Perf output processed (skipped 59.096 seconds):
 Column 1: cycles (50743 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, sun.security.util.math.intpoly.IntegerPolynomialP256::mult, version 2, compile id 650 

             # parm2:    r8:r8     = &apos;[J&apos;
             #           [sp+0x270]  (sp of caller)
             0x00007f0df46403c0:   mov    0x8(%rsi),%r10d
             0x00007f0df46403c4:   movabs $0x7f0d77000000,%r11
             0x00007f0df46403ce:   add    %r11,%r10
             0x00007f0df46403d1:   cmp    %r10,%rax
             0x00007f0df46403d4:   jne    0x00007f0df40c4080           ;   {runtime_call ic_miss_stub}
             0x00007f0df46403da:   xchg   %ax,%ax
             0x00007f0df46403dc:   nopl   0x0(%rax)
           [Verified Entry Point]
   0.06%     0x00007f0df46403e0:   mov    %eax,-0x14000(%rsp)
   0.13%     0x00007f0df46403e7:   push   %rbp
   0.01%     0x00007f0df46403e8:   sub    $0x260,%rsp
   0.04%     0x00007f0df46403ef:   nop
   0.08%     0x00007f0df46403f0:   cmpl   $0x0,0x20(%r15)
   0.00%     0x00007f0df46403f8:   jne    0x00007f0df4640e8a           ;*synchronization entry
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@-1 (line 303)
   0.03%     0x00007f0df46403fe:   vmovq  %r8,%xmm0
   0.00%     0x00007f0df4640403:   mov    0xc(%rdx),%r10d              ; implicit exception: dispatches to 0x00007f0df4640e4c
   0.08%     0x00007f0df4640407:   cmp    $0x9,%r10d
          ╭  0x00007f0df464040b:   jbe    0x00007f0df4640dda
   0.01%  │  0x00007f0df4640411:   mov    0xc(%rcx),%r11d              ; implicit exception: dispatches to 0x00007f0df4640e60
   0.05%  │  0x00007f0df4640415:   mov    0x10(%rdx),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@2 (line 303)
   0.00%  │  0x00007f0df4640419:   nopl   0x0(%rax)
   0.07%  │  0x00007f0df4640420:   cmp    $0x9,%r11d
          │  0x00007f0df4640424:   jbe    0x00007f0df4640e08
   0.01%  │  0x00007f0df464042a:   vmovq  %rsi,%xmm6
   0.04%  │  0x00007f0df464042f:   vmovq  %rcx,%xmm1
   0.01%  │  0x00007f0df4640434:   mov    0x10(%rcx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@5 (line 303)
   0.09%  │  0x00007f0df4640438:   mov    0x18(%rdx),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@18 (line 304)
   0.01%  │  0x00007f0df464043c:   vmovq  %r10,%xmm5
   0.03%  │  0x00007f0df4640441:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@6 (line 303)
   0.01%  │  0x00007f0df4640445:   vmovq  %r10,%xmm7
   0.09%  │  0x00007f0df464044a:   mov    %r11,%rdi
   0.01%  │  0x00007f0df464044d:   mov    %r8,0x78(%rsp)
   0.04%  │  0x00007f0df4640452:   imul   %r8,%rdi
   0.00%  │  0x00007f0df4640456:   mov    0x20(%rdx),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@43 (line 305)
   0.08%  │  0x00007f0df464045a:   mov    0x28(%rdx),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@76 (line 306)
   0.01%  │  0x00007f0df464045e:   mov    %r11,%rsi
   0.04%  │  0x00007f0df4640461:   mov    %r10,0x80(%rsp)
   0.01%  │  0x00007f0df4640469:   imul   %r10,%rsi
   0.08%  │  0x00007f0df464046d:   mov    %r11,%r10
   0.01%  │  0x00007f0df4640470:   mov    %r8,0x88(%rsp)
   0.05%  │  0x00007f0df4640478:   imul   %r8,%r11
   0.01%  │  0x00007f0df464047c:   mov    %r11,0x90(%rsp)
   0.07%  │  0x00007f0df4640484:   mov    0x30(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@117 (line 307)
   0.01%  │  0x00007f0df4640488:   mov    %r11,0x98(%rsp)
   0.02%  │  0x00007f0df4640490:   mov    0x38(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@166 (line 308)
   0.01%  │  0x00007f0df4640494:   mov    %r11,0xa0(%rsp)
   0.07%  │  0x00007f0df464049c:   mov    %r10,%r13
   0.01%  │  0x00007f0df464049f:   imul   0x98(%rsp),%r13
   0.15%  │  0x00007f0df46404a8:   mov    %r10,%r11
          │  0x00007f0df46404ab:   imul   0xa0(%rsp),%r11
   0.12%  │  0x00007f0df46404b4:   mov    %r11,0xa8(%rsp)
   0.20%  │  0x00007f0df46404bc:   mov    0x40(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@225 (line 309)
   0.01%  │  0x00007f0df46404c0:   mov    %r11,0xb0(%rsp)
          │  0x00007f0df46404c8:   mov    0x48(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@294 (line 310)
   0.00%  │  0x00007f0df46404cc:   mov    %r11,0xb8(%rsp)              ;   {no_reloc}
   0.10%  │  0x00007f0df46404d4:   mov    %r10,%r11
          │  0x00007f0df46404d7:   imul   0xb0(%rsp),%r11
   0.04%  │  0x00007f0df46404e0:   mov    %r11,0xc0(%rsp)
   0.11%  │  0x00007f0df46404e8:   mov    %r10,%r11
   0.05%  │  0x00007f0df46404eb:   imul   0xb8(%rsp),%r11
   0.07%  │  0x00007f0df46404f4:   mov    %r11,0xc8(%rsp)
   0.15%  │  0x00007f0df46404fc:   mov    0x50(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@373 (line 311)
   0.02%  │  0x00007f0df4640500:   mov    %r11,0xd0(%rsp)
   0.01%  │  0x00007f0df4640508:   mov    0x58(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@462 (line 312)
   0.00%  │  0x00007f0df464050c:   mov    %r11,0xd8(%rsp)
   0.08%  │  0x00007f0df4640514:   mov    %r10,%r11
   0.01%  │  0x00007f0df4640517:   imul   0xd0(%rsp),%r11
   0.05%  │  0x00007f0df4640520:   mov    %r11,0xe0(%rsp)
   0.23%  │  0x00007f0df4640528:   imul   0xd8(%rsp),%r10
   0.03%  │  0x00007f0df4640531:   mov    %r10,0xe8(%rsp)
   0.14%  │  0x00007f0df4640539:   mov    0x18(%rcx),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@14 (line 304)
          │  0x00007f0df464053d:   vmovq  %xmm1,%r10
   0.01%  │  0x00007f0df4640542:   mov    0x20(%r10),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@31 (line 305)
   0.00%  │  0x00007f0df4640546:   mov    %rcx,%r10
   0.09%  │  0x00007f0df4640549:   imul   0xd8(%rsp),%r10
   0.00%  │  0x00007f0df4640552:   mov    %r10,0xf0(%rsp)
   0.06%  │  0x00007f0df464055a:   mov    %r8,%r10
   0.00%  │  0x00007f0df464055d:   imul   0xd8(%rsp),%r10
   0.06%  │  0x00007f0df4640566:   mov    %r10,0xf8(%rsp)
   0.03%  │  0x00007f0df464056e:   mov    %r8,%r10
   0.04%  │  0x00007f0df4640571:   imul   0xd0(%rsp),%r10
   0.00%  │  0x00007f0df464057a:   mov    %r10,0x100(%rsp)
   0.04%  │  0x00007f0df4640582:   mov    %r8,%r10
   0.02%  │  0x00007f0df4640585:   imul   0xb8(%rsp),%r10
   0.05%  │  0x00007f0df464058e:   mov    %r10,0x108(%rsp)
   0.01%  │  0x00007f0df4640596:   mov    %r8,%r10
   0.04%  │  0x00007f0df4640599:   imul   0xb0(%rsp),%r10
   0.01%  │  0x00007f0df46405a2:   mov    %r10,0x110(%rsp)
   0.04%  │  0x00007f0df46405aa:   mov    %r8,%r10
   0.01%  │  0x00007f0df46405ad:   imul   0xa0(%rsp),%r10
   0.04%  │  0x00007f0df46405b6:   mov    %r10,0x118(%rsp)
   0.03%  │  0x00007f0df46405be:   mov    %r8,%r10
   0.05%  │  0x00007f0df46405c1:   imul   0x98(%rsp),%r10
   0.01%  │  0x00007f0df46405ca:   mov    %r10,0x120(%rsp)
   0.07%  │  0x00007f0df46405d2:   mov    %r8,%r10                     ;   {no_reloc}
   0.00%  │  0x00007f0df46405d5:   imul   0x88(%rsp),%r10
   0.04%  │  0x00007f0df46405de:   mov    %r10,0x128(%rsp)
   0.04%  │  0x00007f0df46405e6:   mov    %r8,%r10
   0.05%  │  0x00007f0df46405e9:   imul   0x80(%rsp),%r10
   0.00%  │  0x00007f0df46405f2:   mov    0x78(%rsp),%r11
   0.04%  │  0x00007f0df46405f7:   imul   %r8,%r11
   0.03%  │  0x00007f0df46405fb:   vmovq  %xmm5,%r9
   0.04%  │  0x00007f0df4640600:   imul   %r8,%r9
   0.00%  │  0x00007f0df4640604:   mov    %r9,%rax
   0.05%  │  0x00007f0df4640607:   mov    %rcx,%r8
   0.07%  │  0x00007f0df464060a:   imul   0xd0(%rsp),%r8
   0.03%  │  0x00007f0df4640613:   mov    %r8,0x130(%rsp)
   0.14%  │  0x00007f0df464061b:   mov    %rcx,%r8
   0.01%  │  0x00007f0df464061e:   imul   0xb8(%rsp),%r8
   0.00%  │  0x00007f0df4640627:   mov    %r8,0x138(%rsp)
   0.13%  │  0x00007f0df464062f:   mov    %rcx,%r8
          │  0x00007f0df4640632:   imul   0xb0(%rsp),%r8
   0.01%  │  0x00007f0df464063b:   mov    %r8,0x140(%rsp)
   0.15%  │  0x00007f0df4640643:   mov    %rcx,%rdx
   0.00%  │  0x00007f0df4640646:   imul   0xa0(%rsp),%rdx
   0.00%  │  0x00007f0df464064f:   mov    %rcx,%r8
   0.00%  │  0x00007f0df4640652:   imul   0x98(%rsp),%r8
   0.12%  │  0x00007f0df464065b:   mov    %r8,0x148(%rsp)
   0.09%  │  0x00007f0df4640663:   mov    %rcx,%r8
          │  0x00007f0df4640666:   imul   0x88(%rsp),%r8
          │  0x00007f0df464066f:   mov    %rcx,%r9
   0.03%  │  0x00007f0df4640672:   imul   0x80(%rsp),%r9
   0.10%  │  0x00007f0df464067b:   mov    %rcx,%rbx
   0.00%  │  0x00007f0df464067e:   imul   0x78(%rsp),%rbx
   0.00%  │  0x00007f0df4640684:   add    %rbx,%rax
   0.12%  │  0x00007f0df4640687:   add    %rsi,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@48 (line 305)
   0.10%  │  0x00007f0df464068a:   vmovq  %rax,%xmm8
   0.24%  │  0x00007f0df464068f:   vmovq  %xmm5,%rbx
          │  0x00007f0df4640694:   imul   %rcx,%rbx
          │  0x00007f0df4640698:   add    %rdi,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@23 (line 304)
   0.00%  │  0x00007f0df464069b:   vmovq  %rbx,%xmm9
   0.16%  │  0x00007f0df46406a0:   vmovq  %xmm1,%rcx
          │  0x00007f0df46406a5:   mov    0x28(%rcx),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@56 (line 306)
          │  0x00007f0df46406a9:   vmovq  %xmm1,%rbx
          │  0x00007f0df46406ae:   mov    0x30(%rbx),%rdi              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@89 (line 307)
   0.13%  │  0x00007f0df46406b2:   mov    %rcx,%rbx
          │  0x00007f0df46406b5:   imul   0xd8(%rsp),%rbx
   0.01%  │  0x00007f0df46406be:   mov    %rbx,0x150(%rsp)
          │  0x00007f0df46406c6:   mov    %rdi,%rbx
   0.09%  │  0x00007f0df46406c9:   imul   0xd8(%rsp),%rbx              ;   {no_reloc}
          │  0x00007f0df46406d2:   mov    %rbx,0x158(%rsp)
   0.00%  │  0x00007f0df46406da:   mov    %rdi,%rbx
          │  0x00007f0df46406dd:   imul   0xd0(%rsp),%rbx
   0.13%  │  0x00007f0df46406e6:   mov    %rbx,0x160(%rsp)
   0.00%  │  0x00007f0df46406ee:   mov    %rdi,%rbx
          │  0x00007f0df46406f1:   imul   0xb8(%rsp),%rbx
          │  0x00007f0df46406fa:   mov    %rbx,0x168(%rsp)
   0.12%  │  0x00007f0df4640702:   mov    %rdi,%rbx
          │  0x00007f0df4640705:   imul   0xb0(%rsp),%rbx
   0.00%  │  0x00007f0df464070e:   mov    %rbx,0x170(%rsp)
   0.01%  │  0x00007f0df4640716:   mov    %rdi,%rbx
   0.10%  │  0x00007f0df4640719:   imul   0xa0(%rsp),%rbx
          │  0x00007f0df4640722:   mov    %rbx,0x178(%rsp)
   0.00%  │  0x00007f0df464072a:   mov    %rdi,%rbx
          │  0x00007f0df464072d:   imul   0x98(%rsp),%rbx
   0.12%  │  0x00007f0df4640736:   mov    %rbx,0x180(%rsp)
   0.01%  │  0x00007f0df464073e:   mov    0x88(%rsp),%rbx
          │  0x00007f0df4640746:   imul   %rdi,%rbx
          │  0x00007f0df464074a:   mov    %rbx,0x188(%rsp)
   0.11%  │  0x00007f0df4640752:   mov    0x80(%rsp),%rsi
          │  0x00007f0df464075a:   imul   %rdi,%rsi
          │  0x00007f0df464075e:   mov    0x78(%rsp),%rax
          │  0x00007f0df4640763:   imul   %rdi,%rax
   0.12%  │  0x00007f0df4640767:   vmovq  %xmm5,%rbx
          │  0x00007f0df464076c:   imul   %rdi,%rbx
          │  0x00007f0df4640770:   mov    %rcx,%rdi
          │  0x00007f0df4640773:   imul   0xd0(%rsp),%rdi
   0.14%  │  0x00007f0df464077c:   mov    %rdi,0x190(%rsp)
   0.11%  │  0x00007f0df4640784:   mov    %rcx,%rdi
          │  0x00007f0df4640787:   imul   0xb8(%rsp),%rdi
          │  0x00007f0df4640790:   mov    %rdi,0x198(%rsp)
   0.13%  │  0x00007f0df4640798:   mov    %rcx,%rdi
          │  0x00007f0df464079b:   imul   0xb0(%rsp),%rdi
          │  0x00007f0df46407a4:   mov    %rdi,0x1a0(%rsp)
   0.12%  │  0x00007f0df46407ac:   mov    %rcx,%rdi
          │  0x00007f0df46407af:   imul   0xa0(%rsp),%rdi
          │  0x00007f0df46407b8:   mov    %rdi,0x1a8(%rsp)
   0.17%  │  0x00007f0df46407c0:   mov    %rcx,%rdi
          │  0x00007f0df46407c3:   imul   0x98(%rsp),%rdi
          │  0x00007f0df46407cc:   mov    %rdi,0x1b0(%rsp)             ;   {no_reloc}
   0.08%  │  0x00007f0df46407d4:   mov    %rcx,%rbp
   0.02%  │  0x00007f0df46407d7:   imul   0x88(%rsp),%rbp
          │  0x00007f0df46407e0:   mov    0x80(%rsp),%r14
          │  0x00007f0df46407e8:   imul   %rcx,%r14
   0.11%  │  0x00007f0df46407ec:   mov    0x78(%rsp),%rdi
   0.02%  │  0x00007f0df46407f1:   imul   %rcx,%rdi
   0.00%  │  0x00007f0df46407f5:   add    %rdi,%rbx
   0.12%  │  0x00007f0df46407f8:   add    %r10,%rbx
   0.53%  │  0x00007f0df46407fb:   add    %r8,%rbx
   0.01%  │  0x00007f0df46407fe:   add    %r13,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@122 (line 307)
   0.02%  │  0x00007f0df4640801:   vmovq  %rbx,%xmm2
   0.04%  │  0x00007f0df4640806:   vmovq  %xmm5,%r10
   0.10%  │  0x00007f0df464080b:   imul   %rcx,%r10
          │  0x00007f0df464080f:   add    %r11,%r10
          │  0x00007f0df4640812:   add    %r9,%r10
   0.02%  │  0x00007f0df4640815:   add    0x90(%rsp),%r10              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@81 (line 306)
   0.11%  │  0x00007f0df464081d:   vmovq  %r10,%xmm10
   0.02%  │  0x00007f0df4640822:   vmovq  %xmm1,%r10
          │  0x00007f0df4640827:   mov    0x38(%r10),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@130 (line 308)
   0.01%  │  0x00007f0df464082b:   vmovq  %xmm1,%r11
   0.09%  │  0x00007f0df4640830:   mov    0x40(%r11),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@180 (line 309)
   0.02%  │  0x00007f0df4640834:   mov    %r10,%r11
          │  0x00007f0df4640837:   imul   0xd8(%rsp),%r11
   0.01%  │  0x00007f0df4640840:   mov    %r11,0x90(%rsp)
   0.09%  │  0x00007f0df4640848:   mov    %r8,%r11
   0.03%  │  0x00007f0df464084b:   imul   0xd8(%rsp),%r11
          │  0x00007f0df4640854:   mov    %r11,0x1b8(%rsp)
   0.00%  │  0x00007f0df464085c:   mov    %r8,%r11
   0.10%  │  0x00007f0df464085f:   imul   0xd0(%rsp),%r11
   0.02%  │  0x00007f0df4640868:   mov    %r11,0x1c0(%rsp)
   0.02%  │  0x00007f0df4640870:   mov    %r8,%r11
          │  0x00007f0df4640873:   imul   0xb8(%rsp),%r11
   0.11%  │  0x00007f0df464087c:   mov    %r11,0x1c8(%rsp)
   0.00%  │  0x00007f0df4640884:   mov    %r8,%r11
   0.01%  │  0x00007f0df4640887:   imul   0xb0(%rsp),%r11
   0.00%  │  0x00007f0df4640890:   mov    %r11,0x1d0(%rsp)
   0.09%  │  0x00007f0df4640898:   mov    0xa0(%rsp),%r11
          │  0x00007f0df46408a0:   imul   %r8,%r11
   0.02%  │  0x00007f0df46408a4:   mov    %r11,0x1d8(%rsp)
   0.02%  │  0x00007f0df46408ac:   mov    0x98(%rsp),%r11
   0.08%  │  0x00007f0df46408b4:   imul   %r8,%r11
          │  0x00007f0df46408b8:   mov    %r11,0x1e0(%rsp)
   0.03%  │  0x00007f0df46408c0:   mov    0x88(%rsp),%r11
          │  0x00007f0df46408c8:   imul   %r8,%r11
   0.08%  │  0x00007f0df46408cc:   mov    %r11,0x1e8(%rsp)             ;   {no_reloc}
   0.04%  │  0x00007f0df46408d4:   mov    0x80(%rsp),%rbx
          │  0x00007f0df46408dc:   imul   %r8,%rbx
   0.00%  │  0x00007f0df46408e0:   mov    0x78(%rsp),%r11
   0.06%  │  0x00007f0df46408e5:   imul   %r8,%r11
   0.03%  │  0x00007f0df46408e9:   mov    %r11,0x1f0(%rsp)
   0.05%  │  0x00007f0df46408f1:   vmovq  %xmm5,%r11
          │  0x00007f0df46408f6:   imul   %r8,%r11
   0.09%  │  0x00007f0df46408fa:   mov    %r10,%r8
   0.00%  │  0x00007f0df46408fd:   imul   0xd0(%rsp),%r8
   0.05%  │  0x00007f0df4640906:   mov    %r8,0x1f8(%rsp)
   0.05%  │  0x00007f0df464090e:   mov    %r10,%r8
   0.04%  │  0x00007f0df4640911:   imul   0xb8(%rsp),%r8
          │  0x00007f0df464091a:   mov    %r8,0x200(%rsp)
   0.04%  │  0x00007f0df4640922:   mov    %r10,%r8
          │  0x00007f0df4640925:   imul   0xb0(%rsp),%r8
   0.07%  │  0x00007f0df464092e:   mov    %r8,0x208(%rsp)
   0.07%  │  0x00007f0df4640936:   mov    %r10,%r8
          │  0x00007f0df4640939:   imul   0xa0(%rsp),%r8
          │  0x00007f0df4640942:   mov    %r8,0x210(%rsp)
   0.15%  │  0x00007f0df464094a:   mov    0x98(%rsp),%r8
          │  0x00007f0df4640952:   imul   %r10,%r8
          │  0x00007f0df4640956:   mov    %r8,0x218(%rsp)
   0.07%  │  0x00007f0df464095e:   mov    0x88(%rsp),%rdi
   0.07%  │  0x00007f0df4640966:   imul   %r10,%rdi
   0.00%  │  0x00007f0df464096a:   mov    0x80(%rsp),%r13
   0.00%  │  0x00007f0df4640972:   imul   %r10,%r13
   0.06%  │  0x00007f0df4640976:   mov    0x78(%rsp),%r8
   0.05%  │  0x00007f0df464097b:   imul   %r10,%r8
          │  0x00007f0df464097f:   add    %r8,%r11
   0.05%  │  0x00007f0df4640982:   add    %rsi,%r11
   0.08%  │  0x00007f0df4640985:   add    %rbp,%r11
   0.09%  │  0x00007f0df4640988:   add    0x120(%rsp),%r11
   0.13%  │  0x00007f0df4640990:   add    %rdx,%r11
   0.09%  │  0x00007f0df4640993:   add    0xc0(%rsp),%r11              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@230 (line 309)
   0.11%  │  0x00007f0df464099b:   vmovq  %r11,%xmm3
   0.24%  │  0x00007f0df46409a0:   vmovq  %xmm5,%r11
          │  0x00007f0df46409a5:   imul   %r10,%r11
          │  0x00007f0df46409a9:   add    %rax,%r11
          │  0x00007f0df46409ac:   add    %r14,%r11
   0.10%  │  0x00007f0df46409af:   add    0x128(%rsp),%r11
          │  0x00007f0df46409b7:   add    0x148(%rsp),%r11
          │  0x00007f0df46409bf:   add    0xa8(%rsp),%r11              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@171 (line 308)
          │  0x00007f0df46409c7:   vmovq  %r11,%xmm4
   0.13%  │  0x00007f0df46409cc:   vmovq  %xmm1,%r10                   ;   {no_reloc}
          │  0x00007f0df46409d1:   mov    0x48(%r10),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@239 (line 310)
          │  0x00007f0df46409d5:   vmovq  %xmm1,%r11
          │  0x00007f0df46409da:   mov    0x50(%r11),%rdx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@308 (line 311)
   0.09%  │  0x00007f0df46409de:   mov    %r10,%r11
          │  0x00007f0df46409e1:   imul   0xd8(%rsp),%r11
   0.00%  │  0x00007f0df46409ea:   mov    %r11,0xa8(%rsp)
   0.01%  │  0x00007f0df46409f2:   mov    %rdx,%r11
   0.11%  │  0x00007f0df46409f5:   imul   0xd8(%rsp),%r11
          │  0x00007f0df46409fe:   mov    %rdx,%r8
          │  0x00007f0df4640a01:   imul   0xd0(%rsp),%r8
   0.02%  │  0x00007f0df4640a0a:   mov    0xb8(%rsp),%r9
   0.10%  │  0x00007f0df4640a12:   imul   %rdx,%r9
          │  0x00007f0df4640a16:   mov    %r9,0xc0(%rsp)
   0.03%  │  0x00007f0df4640a1e:   mov    0xb0(%rsp),%r9
          │  0x00007f0df4640a26:   imul   %rdx,%r9
   0.08%  │  0x00007f0df4640a2a:   mov    %r9,0x120(%rsp)
   0.03%  │  0x00007f0df4640a32:   mov    0xa0(%rsp),%r9
          │  0x00007f0df4640a3a:   imul   %rdx,%r9
          │  0x00007f0df4640a3e:   mov    %r9,0x128(%rsp)
   0.10%  │  0x00007f0df4640a46:   mov    0x98(%rsp),%r9
          │  0x00007f0df4640a4e:   imul   %rdx,%r9
          │  0x00007f0df4640a52:   mov    %r9,0x148(%rsp)
   0.07%  │  0x00007f0df4640a5a:   mov    0x88(%rsp),%r9
   0.04%  │  0x00007f0df4640a62:   imul   %rdx,%r9
          │  0x00007f0df4640a66:   mov    %r9,0x220(%rsp)
   0.07%  │  0x00007f0df4640a6e:   mov    0x80(%rsp),%r9
          │  0x00007f0df4640a76:   imul   %rdx,%r9
   0.05%  │  0x00007f0df4640a7a:   mov    %r9,0x228(%rsp)
   0.07%  │  0x00007f0df4640a82:   mov    0x78(%rsp),%r9
          │  0x00007f0df4640a87:   imul   %rdx,%r9
          │  0x00007f0df4640a8b:   vmovq  %xmm5,%rcx
   0.05%  │  0x00007f0df4640a90:   imul   %rdx,%rcx
   0.08%  │  0x00007f0df4640a94:   mov    %r10,%rdx
          │  0x00007f0df4640a97:   imul   0xd0(%rsp),%rdx
          │  0x00007f0df4640aa0:   mov    %r10,%rsi
   0.06%  │  0x00007f0df4640aa3:   imul   0xb8(%rsp),%rsi
   0.09%  │  0x00007f0df4640aac:   mov    0xb0(%rsp),%rax
          │  0x00007f0df4640ab4:   imul   %r10,%rax
   0.06%  │  0x00007f0df4640ab8:   mov    0xa0(%rsp),%rbp
   0.07%  │  0x00007f0df4640ac0:   imul   %r10,%rbp
   0.07%  │  0x00007f0df4640ac4:   mov    %rbp,0x230(%rsp)
   0.15%  │  0x00007f0df4640acc:   mov    0x98(%rsp),%rbp              ;   {no_reloc}
          │  0x00007f0df4640ad4:   imul   %r10,%rbp
   0.06%  │  0x00007f0df4640ad8:   mov    %rbp,0x238(%rsp)
   0.09%  │  0x00007f0df4640ae0:   mov    0x88(%rsp),%rbp
          │  0x00007f0df4640ae8:   imul   %r10,%rbp
          │  0x00007f0df4640aec:   mov    %rbp,0x240(%rsp)
   0.12%  │  0x00007f0df4640af4:   mov    0x80(%rsp),%rbp
          │  0x00007f0df4640afc:   imul   %r10,%rbp
          │  0x00007f0df4640b00:   mov    0x78(%rsp),%r14
          │  0x00007f0df4640b05:   imul   %r10,%r14
   0.13%  │  0x00007f0df4640b09:   add    %r14,%rcx
   0.01%  │  0x00007f0df4640b0c:   add    %rbx,%rcx
   0.15%  │  0x00007f0df4640b0f:   add    %rdi,%rcx
   0.03%  │  0x00007f0df4640b12:   add    0x180(%rsp),%rcx
   0.14%  │  0x00007f0df4640b1a:   add    0x1a8(%rsp),%rcx
   0.13%  │  0x00007f0df4640b22:   add    0x110(%rsp),%rcx
   0.11%  │  0x00007f0df4640b2a:   add    0x138(%rsp),%rcx
   0.14%  │  0x00007f0df4640b32:   add    0xe0(%rsp),%rcx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@378 (line 311)
   0.11%  │  0x00007f0df4640b3a:   mov    %rcx,%r14
          │  0x00007f0df4640b3d:   vmovq  %xmm5,%rcx
          │  0x00007f0df4640b42:   imul   %r10,%rcx
          │  0x00007f0df4640b46:   add    0x1f0(%rsp),%rcx
   0.15%  │  0x00007f0df4640b4e:   add    %r13,%rcx
          │  0x00007f0df4640b51:   add    0x188(%rsp),%rcx
          │  0x00007f0df4640b59:   add    0x1b0(%rsp),%rcx
          │  0x00007f0df4640b61:   add    0x118(%rsp),%rcx
   0.11%  │  0x00007f0df4640b69:   add    0x140(%rsp),%rcx
          │  0x00007f0df4640b71:   add    0xc8(%rsp),%rcx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@299 (line 310)
   0.07%  │  0x00007f0df4640b79:   mov    %rcx,%r13
          │  0x00007f0df4640b7c:   vmovq  %xmm1,%r10
   0.05%  │  0x00007f0df4640b81:   mov    0x58(%r10),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@387 (line 312)
          │  0x00007f0df4640b85:   vmovq  %xmm5,%r10
   0.07%  │  0x00007f0df4640b8a:   imul   %rcx,%r10
   0.00%  │  0x00007f0df4640b8e:   add    %r9,%r10
   0.04%  │  0x00007f0df4640b91:   add    %rbp,%r10
   0.01%  │  0x00007f0df4640b94:   add    0x1e8(%rsp),%r10
   0.14%  │  0x00007f0df4640b9c:   add    0x218(%rsp),%r10
   0.02%  │  0x00007f0df4640ba4:   add    0x178(%rsp),%r10
   0.15%  │  0x00007f0df4640bac:   add    0x1a0(%rsp),%r10
   0.15%  │  0x00007f0df4640bb4:   add    0x108(%rsp),%r10
   0.13%  │  0x00007f0df4640bbc:   add    0x130(%rsp),%r10
   0.11%  │  0x00007f0df4640bc4:   add    0xe8(%rsp),%r10              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@467 (line 312)
   0.11%  │  0x00007f0df4640bcc:   mov    %r10,%rbp                    ;   {no_reloc}
          │  0x00007f0df4640bcf:   mov    %rcx,%r10
   0.00%  │  0x00007f0df4640bd2:   imul   0xd8(%rsp),%r10              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@896 (line 321)
          │  0x00007f0df4640bdb:   vmovq  %r10,%xmm1
   0.11%  │  0x00007f0df4640be0:   mov    0xd0(%rsp),%r10
          │  0x00007f0df4640be8:   imul   %rcx,%r10
          │  0x00007f0df4640bec:   add    %r11,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@885 (line 320)
          │  0x00007f0df4640bef:   vmovq  %r10,%xmm5
   0.18%  │  0x00007f0df4640bf4:   mov    0xb8(%rsp),%r9
          │  0x00007f0df4640bfc:   imul   %rcx,%r9
          │  0x00007f0df4640c00:   add    %r8,%r9
          │  0x00007f0df4640c03:   add    0xa8(%rsp),%r9               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@864 (line 319)
   0.13%  │  0x00007f0df4640c0b:   mov    0xb0(%rsp),%r8
          │  0x00007f0df4640c13:   imul   %rcx,%r8
          │  0x00007f0df4640c17:   add    0xc0(%rsp),%r8
          │  0x00007f0df4640c1f:   add    %rdx,%r8
   0.08%  │  0x00007f0df4640c22:   add    0x1b8(%rsp),%r8              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@833 (line 318)
          │  0x00007f0df4640c2a:   mov    0xa0(%rsp),%rbx
          │  0x00007f0df4640c32:   imul   %rcx,%rbx
          │  0x00007f0df4640c36:   add    0x120(%rsp),%rbx
   0.12%  │  0x00007f0df4640c3e:   add    %rsi,%rbx
          │  0x00007f0df4640c41:   add    0x1c0(%rsp),%rbx
          │  0x00007f0df4640c49:   add    0x90(%rsp),%rbx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@792 (line 317)
          │  0x00007f0df4640c51:   mov    0x98(%rsp),%rdi
   0.14%  │  0x00007f0df4640c59:   imul   %rcx,%rdi
          │  0x00007f0df4640c5d:   add    0x128(%rsp),%rdi
   0.00%  │  0x00007f0df4640c65:   add    %rax,%rdi
          │  0x00007f0df4640c68:   add    0x1c8(%rsp),%rdi
   0.11%  │  0x00007f0df4640c70:   add    0x1f8(%rsp),%rdi
          │  0x00007f0df4640c78:   add    0x158(%rsp),%rdi             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@743 (line 316)
   0.07%  │  0x00007f0df4640c80:   mov    0x88(%rsp),%r10
          │  0x00007f0df4640c88:   imul   %rcx,%r10
   0.06%  │  0x00007f0df4640c8c:   add    0x148(%rsp),%r10
          │  0x00007f0df4640c94:   add    0x230(%rsp),%r10
   0.07%  │  0x00007f0df4640c9c:   add    0x1d0(%rsp),%r10
          │  0x00007f0df4640ca4:   add    0x200(%rsp),%r10
   0.06%  │  0x00007f0df4640cac:   add    0x160(%rsp),%r10
   0.06%  │  0x00007f0df4640cb4:   add    0x150(%rsp),%r10             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@686 (line 315)
   0.07%  │  0x00007f0df4640cbc:   mov    0x80(%rsp),%r11
          │  0x00007f0df4640cc4:   imul   %rcx,%r11
   0.06%  │  0x00007f0df4640cc8:   add    0x220(%rsp),%r11             ;   {no_reloc}
          │  0x00007f0df4640cd0:   add    0x238(%rsp),%r11
   0.08%  │  0x00007f0df4640cd8:   add    0x1d8(%rsp),%r11
   0.00%  │  0x00007f0df4640ce0:   add    0x208(%rsp),%r11
   0.07%  │  0x00007f0df4640ce8:   add    0x168(%rsp),%r11
   0.07%  │  0x00007f0df4640cf0:   add    0x190(%rsp),%r11
   0.14%  │  0x00007f0df4640cf8:   add    0xf8(%rsp),%r11              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@621 (line 314)
   0.14%  │  0x00007f0df4640d00:   mov    0x78(%rsp),%rsi
          │  0x00007f0df4640d05:   imul   %rcx,%rsi
          │  0x00007f0df4640d09:   add    0x228(%rsp),%rsi
   0.00%  │  0x00007f0df4640d11:   add    0x240(%rsp),%rsi
   0.11%  │  0x00007f0df4640d19:   add    0x1e0(%rsp),%rsi
   0.02%  │  0x00007f0df4640d21:   add    0x210(%rsp),%rsi
   0.07%  │  0x00007f0df4640d29:   add    0x170(%rsp),%rsi
   0.09%  │  0x00007f0df4640d31:   add    0x198(%rsp),%rsi
   0.16%  │  0x00007f0df4640d39:   add    0x100(%rsp),%rsi
   0.15%  │  0x00007f0df4640d41:   add    0xf0(%rsp),%rsi              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@548 (line 313)
   0.14%  │  0x00007f0df4640d49:   vmovq  %xmm0,%rdx
          │  0x00007f0df4640d4e:   vmovsd %xmm2,(%rsp)
   0.03%  │  0x00007f0df4640d53:   vmovsd %xmm4,0x8(%rsp)
   0.02%  │  0x00007f0df4640d59:   vmovsd %xmm3,0x10(%rsp)
   0.10%  │  0x00007f0df4640d5f:   mov    %r13,0x18(%rsp)
   0.04%  │  0x00007f0df4640d64:   mov    %r14,0x20(%rsp)
   0.02%  │  0x00007f0df4640d69:   mov    %rbp,0x28(%rsp)
   0.03%  │  0x00007f0df4640d6e:   mov    %rsi,0x30(%rsp)
   0.14%  │  0x00007f0df4640d73:   mov    %r11,0x38(%rsp)
   0.00%  │  0x00007f0df4640d78:   mov    %r10,0x40(%rsp)
   0.04%  │  0x00007f0df4640d7d:   mov    %rdi,0x48(%rsp)
   0.02%  │  0x00007f0df4640d82:   mov    %rbx,0x50(%rsp)
   0.07%  │  0x00007f0df4640d87:   mov    %r8,0x58(%rsp)
   0.01%  │  0x00007f0df4640d8c:   mov    %r9,0x60(%rsp)
   0.06%  │  0x00007f0df4640d91:   vmovsd %xmm5,0x68(%rsp)
   0.06%  │  0x00007f0df4640d97:   vmovsd %xmm1,0x70(%rsp)
   0.10%  │  0x00007f0df4640d9d:   vmovq  %xmm6,%rsi
   0.00%  │  0x00007f0df4640da2:   vmovq  %xmm7,%rcx
   0.01%  │  0x00007f0df4640da7:   vmovq  %xmm9,%r8
   0.02%  │  0x00007f0df4640dac:   vmovq  %xmm8,%r9
   0.09%  │  0x00007f0df4640db1:   vmovq  %xmm10,%rdi
          │  0x00007f0df4640db6:   nop
   0.00%  │  0x00007f0df4640db7:   call   0x00007f0df40c4380           ; ImmutableOopMap {}
          │                                                            ;*invokevirtual carryReduce {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@939 (line 323)
          │                                                            ;   {optimized virtual_call}
   0.05%  │  0x00007f0df4640dbc:   nopl   0xbac(%rax,%rax,1)           ;*invokevirtual carryReduce {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@939 (line 323)
          │                                                            ;   {other}
   0.05%  │  0x00007f0df4640dc4:   add    $0x260,%rsp
   0.06%  │  0x00007f0df4640dcb:   pop    %rbp
   0.08%  │  0x00007f0df4640dcc:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f0df4640dd3:   ja     0x00007f0df4640e74
   0.06%  │  0x00007f0df4640dd9:   ret    
          ↘  0x00007f0df4640dda:   mov    %rsi,%rbp
             0x00007f0df4640ddd:   mov    %rcx,0x80(%rsp)
             0x00007f0df4640de5:   mov    %r8,0x88(%rsp)
             0x00007f0df4640ded:   mov    %rdx,0x90(%rsp)
             0x00007f0df4640df5:   mov    $0xffffffe4,%esi
             0x00007f0df4640dfa:   nop
             0x00007f0df4640dfb:   call   0x00007f0df40c9f00           ; ImmutableOopMap {rbp=Oop [128]=Oop [136]=Oop [144]=Oop }
                                                                       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@2 (line 303)
                                                                       ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  18.84%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce, version 2, compile id 646 

               # parm18:   [sp+0x108]   = long
               # parm19:   [sp+0x110]   = long
               0x00007f0df463f8a0:   mov    0x8(%rsi),%r10d
               0x00007f0df463f8a4:   movabs $0x7f0d77000000,%r11
               0x00007f0df463f8ae:   add    %r11,%r10
               0x00007f0df463f8b1:   cmp    %r10,%rax
               0x00007f0df463f8b4:   jne    0x00007f0df40c4080           ;   {runtime_call ic_miss_stub}
               0x00007f0df463f8ba:   xchg   %ax,%ax
               0x00007f0df463f8bc:   nopl   0x0(%rax)
             [Verified Entry Point]
   0.15%       0x00007f0df463f8c0:   mov    %eax,-0x14000(%rsp)
   0.00%       0x00007f0df463f8c7:   push   %rbp
   0.11%       0x00007f0df463f8c8:   sub    $0x90,%rsp
   0.02%       0x00007f0df463f8cf:   nop
   0.01%       0x00007f0df463f8d0:   cmpl   $0x1,0x20(%r15)
   0.14%  ╭    0x00007f0df463f8d8:   jne    0x00007f0df463ff40           ;*synchronization entry
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@-1 (line 81)
   0.04%  │    0x00007f0df463f8de:   mov    %rdi,%r14
   0.00%  │    0x00007f0df463f8e1:   vmovq  %r9,%xmm9
   0.00%  │    0x00007f0df463f8e6:   vmovq  %r8,%xmm8
   0.14%  │    0x00007f0df463f8eb:   vmovq  %rcx,%xmm7
   0.03%  │    0x00007f0df463f8f0:   vmovq  %rdx,%xmm6
   0.00%  │    0x00007f0df463f8f5:   vmovq  %rsi,%xmm5
   0.00%  │    0x00007f0df463f8fa:   mov    0x110(%rsp),%r10
   0.16%  │    0x00007f0df463f902:   sar    $0x6,%r10
   0.02%  │    0x00007f0df463f906:   mov    0x108(%rsp),%rcx
          │    0x00007f0df463f90e:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@24 (line 84)
   0.01%  │    0x00007f0df463f911:   mov    0x110(%rsp),%r10
   0.12%  │    0x00007f0df463f919:   shl    $0x14,%r10
   0.05%  │    0x00007f0df463f91d:   mov    %rcx,%r11
   0.00%  │    0x00007f0df463f920:   shl    $0x4,%r11
   0.07%  │    0x00007f0df463f924:   and    $0x3ffffff,%r10
   0.06%  │    0x00007f0df463f92b:   mov    0x100(%rsp),%r9
   0.03%  │    0x00007f0df463f933:   add    %r10,%r9
   0.03%  │    0x00007f0df463f936:   and    $0x3ffffff,%r11
   0.05%  │    0x00007f0df463f93d:   mov    0xb8(%rsp),%rdx
   0.06%  │    0x00007f0df463f945:   add    %r11,%rdx
   0.07%  │    0x00007f0df463f948:   mov    %rcx,%r10
   0.02%  │    0x00007f0df463f94b:   sar    $0x4,%r10
          │    0x00007f0df463f94f:   mov    %r10,0xb8(%rsp)
   0.05%  │    0x00007f0df463f957:   mov    %rcx,%r10
   0.08%  │    0x00007f0df463f95a:   shl    $0xe,%r10
   0.01%  │    0x00007f0df463f95e:   mov    %rcx,%r11
   0.00%  │    0x00007f0df463f961:   sar    $0xc,%r11
   0.07%  │    0x00007f0df463f965:   and    $0x3ffffff,%r10
   0.06%  │    0x00007f0df463f96c:   mov    0xf0(%rsp),%rbx
   0.01%  │    0x00007f0df463f974:   sub    %r10,%rbx
   0.01%  │    0x00007f0df463f977:   mov    %rcx,%r8
   0.07%  │    0x00007f0df463f97a:   shl    $0x14,%r8
   0.09%  │    0x00007f0df463f97e:   vmovq  %rcx,%xmm0
   0.02%  │    0x00007f0df463f983:   sar    $0x6,%rcx
   0.01%  │    0x00007f0df463f987:   and    $0x3ffffff,%r8
   0.09%  │    0x00007f0df463f98e:   vmovq  %xmm0,%rdi
   0.41%  │    0x00007f0df463f993:   shl    $0x16,%rdi
   0.23%  │    0x00007f0df463f997:   vmovq  %xmm0,%r10
   0.00%  │    0x00007f0df463f99c:   sar    $0x16,%r10
   0.09%  │    0x00007f0df463f9a0:   mov    %r10,0xf0(%rsp)
   0.17%  │    0x00007f0df463f9a8:   and    $0x3ffffff,%rdi
   0.03%  │    0x00007f0df463f9af:   mov    0xd0(%rsp),%r10              ;   {no_reloc}
          │    0x00007f0df463f9b7:   sub    %rdi,%r10
   0.06%  │    0x00007f0df463f9ba:   vmovq  %r10,%xmm10
   0.20%  │    0x00007f0df463f9bf:   mov    0x110(%rsp),%r10
          │    0x00007f0df463f9c7:   sar    $0xc,%r10
          │    0x00007f0df463f9cb:   sub    %r10,%r9
   0.02%  │    0x00007f0df463f9ce:   lea    (%r9,%rcx,1),%r10
   0.15%  │    0x00007f0df463f9d2:   vmovq  %r10,%xmm1
   0.00%  │    0x00007f0df463f9d7:   mov    0x110(%rsp),%r9
   0.00%  │    0x00007f0df463f9df:   shl    $0xe,%r9
   0.03%  │    0x00007f0df463f9e3:   sar    $0x16,%r10
   0.11%  │    0x00007f0df463f9e7:   lea    (%rdx,%r10,1),%rcx
   0.01%  │    0x00007f0df463f9eb:   mov    %rcx,%rdi
   0.00%  │    0x00007f0df463f9ee:   and    $0x3ffffff,%r9
   0.03%  │    0x00007f0df463f9f5:   mov    0xf8(%rsp),%rcx
   0.13%  │    0x00007f0df463f9fd:   sub    %r9,%rcx
   0.01%  │    0x00007f0df463fa00:   add    %r8,%rcx
          │    0x00007f0df463fa03:   sub    %r11,%rcx
   0.04%  │    0x00007f0df463fa06:   vmovq  %xmm1,%r11
   0.07%  │    0x00007f0df463fa0b:   shl    $0x4,%r11
   0.05%  │    0x00007f0df463fa0f:   vmovq  %xmm1,%r8
   0.00%  │    0x00007f0df463fa14:   sar    $0xc,%r8
   0.06%  │    0x00007f0df463fa18:   and    $0x3ffffff,%r11
   0.09%  │    0x00007f0df463fa1f:   mov    0xb0(%rsp),%r10
   0.01%  │    0x00007f0df463fa27:   add    %r11,%r10
   0.01%  │    0x00007f0df463fa2a:   vmovq  %xmm1,%r9
   0.04%  │    0x00007f0df463fa2f:   shl    $0x14,%r9
   0.07%  │    0x00007f0df463fa33:   vmovq  %xmm1,%r11
   0.02%  │    0x00007f0df463fa38:   sar    $0x6,%r11
   0.01%  │    0x00007f0df463fa3c:   add    %r11,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@212 (line 102)
   0.06%  │    0x00007f0df463fa3f:   vmovq  %rcx,%xmm2
   0.10%  │    0x00007f0df463fa44:   and    $0x3ffffff,%r9
          │    0x00007f0df463fa4b:   add    %r9,%rbx
   0.00%  │    0x00007f0df463fa4e:   sub    %r8,%rbx
   0.05%  │    0x00007f0df463fa51:   mov    %rcx,%r11
   0.09%  │    0x00007f0df463fa54:   shl    $0x16,%r11
   0.01%  │    0x00007f0df463fa58:   mov    %rcx,%r8
          │    0x00007f0df463fa5b:   sar    $0x16,%r8
   0.05%  │    0x00007f0df463fa5f:   add    %r8,%r10
   0.11%  │    0x00007f0df463fa62:   and    $0x3ffffff,%r11
   0.00%  │    0x00007f0df463fa69:   mov    %rcx,%r9
   0.00%  │    0x00007f0df463fa6c:   shl    $0x4,%r9
   0.04%  │    0x00007f0df463fa70:   mov    %rcx,%r8
   0.11%  │    0x00007f0df463fa73:   shl    $0xe,%r8
   0.00%  │    0x00007f0df463fa77:   and    $0x3ffffff,%r9
   0.00%  │    0x00007f0df463fa7e:   mov    0xa8(%rsp),%rcx
   0.05%  │    0x00007f0df463fa86:   add    %r9,%rcx
   0.11%  │    0x00007f0df463fa89:   and    $0x3ffffff,%r8
   0.01%  │    0x00007f0df463fa90:   vmovq  %xmm2,%r9
   0.00%  │    0x00007f0df463fa95:   sar    $0x6,%r9
   0.13%  │    0x00007f0df463fa99:   add    %r9,%rbx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@306 (line 111)
   0.20%  │    0x00007f0df463fa9c:   vmovq  %rbx,%xmm3
   0.14%  │    0x00007f0df463faa1:   vmovq  %xmm2,%rdx
          │    0x00007f0df463faa6:   sar    $0xc,%rdx
   0.24%  │    0x00007f0df463faaa:   mov    %rbx,%r9
   0.02%  │    0x00007f0df463faad:   shl    $0x16,%r9
   0.10%  │    0x00007f0df463fab1:   and    $0x3ffffff,%r9               ;   {no_reloc}
   0.00%  │    0x00007f0df463fab8:   mov    %rdi,%rbx
   0.07%  │    0x00007f0df463fabb:   sub    %r9,%rbx
   0.07%  │    0x00007f0df463fabe:   vmovq  %rbx,%xmm11
   0.22%  │    0x00007f0df463fac3:   vmovq  %xmm3,%r9
          │    0x00007f0df463fac8:   sar    $0x16,%r9
   0.40%  │    0x00007f0df463facc:   add    %r9,%rcx
   0.11%  │    0x00007f0df463facf:   vmovq  %rcx,%xmm12
   0.22%  │    0x00007f0df463fad4:   vmovq  %xmm3,%r9
   0.00%  │    0x00007f0df463fad9:   shl    $0x4,%r9
   0.11%  │    0x00007f0df463fadd:   and    $0x3ffffff,%r9
   0.02%  │    0x00007f0df463fae4:   mov    0xa0(%rsp),%rcx
   0.09%  │    0x00007f0df463faec:   add    %r9,%rcx
   0.02%  │    0x00007f0df463faef:   vmovq  %rcx,%xmm13
   0.09%  │    0x00007f0df463faf4:   vmovq  %xmm3,%r9
   0.00%  │    0x00007f0df463faf9:   sar    $0xc,%r9
   0.20%  │    0x00007f0df463fafd:   vmovq  %xmm3,%rcx
   0.00%  │    0x00007f0df463fb02:   shl    $0x14,%rcx
   0.06%  │    0x00007f0df463fb06:   and    $0x3ffffff,%rcx
   0.01%  │    0x00007f0df463fb0d:   vmovq  %xmm3,%rsi
   0.06%  │    0x00007f0df463fb12:   sar    $0x6,%rsi
   0.00%  │    0x00007f0df463fb16:   vmovq  %xmm3,%rbx
   0.07%  │    0x00007f0df463fb1b:   sar    $0x4,%rbx
   0.00%  │    0x00007f0df463fb1f:   vmovq  %xmm2,%rax
   0.09%  │    0x00007f0df463fb24:   shl    $0x14,%rax
   0.00%  │    0x00007f0df463fb28:   and    $0x3ffffff,%rax
   0.08%  │    0x00007f0df463fb2e:   vmovq  %xmm2,%rdi
   0.00%  │    0x00007f0df463fb33:   sar    $0x4,%rdi
   0.08%  │    0x00007f0df463fb37:   vmovq  %xmm1,%rbp
   0.01%  │    0x00007f0df463fb3c:   shl    $0xe,%rbp
   0.07%  │    0x00007f0df463fb40:   and    $0x3ffffff,%rbp
   0.01%  │    0x00007f0df463fb47:   mov    0xe8(%rsp),%r13
   0.08%  │    0x00007f0df463fb4f:   sub    %rbp,%r13
   0.00%  │    0x00007f0df463fb52:   add    %rax,%r13
   0.07%  │    0x00007f0df463fb55:   sub    %rdx,%r13
   0.01%  │    0x00007f0df463fb58:   add    %rsi,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@400 (line 120)
   0.09%  │    0x00007f0df463fb5b:   vmovq  %r13,%xmm4
   0.01%  │    0x00007f0df463fb60:   vmovq  %xmm1,%rdx
   0.06%  │    0x00007f0df463fb65:   sar    $0x4,%rdx
   0.00%  │    0x00007f0df463fb69:   vmovq  %xmm10,%rsi
   0.09%  │    0x00007f0df463fb6e:   sub    %rdx,%rsi
   0.00%  │    0x00007f0df463fb71:   mov    %rsi,%r13
   0.09%  │    0x00007f0df463fb74:   vmovq  %xmm4,%rdx
   0.01%  │    0x00007f0df463fb79:   shl    $0x16,%rdx
   0.25%  │    0x00007f0df463fb7d:   and    $0x3ffffff,%rdx
   0.03%  │    0x00007f0df463fb84:   sub    %rdx,%r10
   0.09%  │    0x00007f0df463fb87:   vmovq  %xmm4,%rdx
   0.01%  │    0x00007f0df463fb8c:   sar    $0x16,%rdx
   0.13%  │    0x00007f0df463fb90:   vmovq  %xmm13,%rsi
          │    0x00007f0df463fb95:   add    %rdx,%rsi
   0.10%  │    0x00007f0df463fb98:   vmovq  %rsi,%xmm10
   0.02%  │    0x00007f0df463fb9d:   vmovq  %xmm4,%rdx
   0.05%  │    0x00007f0df463fba2:   shl    $0x4,%rdx
   0.00%  │    0x00007f0df463fba6:   and    $0x3ffffff,%rdx
   0.07%  │    0x00007f0df463fbad:   lea    (%r14,%rdx,1),%rsi
   0.02%  │    0x00007f0df463fbb1:   vmovq  %rsi,%xmm13                  ;   {no_reloc}
   0.08%  │    0x00007f0df463fbb6:   vmovq  %xmm4,%rdx
          │    0x00007f0df463fbbb:   sar    $0xc,%rdx
   0.08%  │    0x00007f0df463fbbf:   vmovq  %xmm4,%rsi
   0.01%  │    0x00007f0df463fbc4:   shl    $0x14,%rsi
   0.13%  │    0x00007f0df463fbc8:   and    $0x3ffffff,%rsi
   0.01%  │    0x00007f0df463fbcf:   vmovq  %xmm4,%rax
   0.05%  │    0x00007f0df463fbd4:   sar    $0x6,%rax
   0.02%  │    0x00007f0df463fbd8:   vmovq  %xmm4,%rbp
   0.04%  │    0x00007f0df463fbdd:   shl    $0xe,%rbp
   0.02%  │    0x00007f0df463fbe1:   and    $0x3ffffff,%rbp
   0.04%  │    0x00007f0df463fbe8:   sub    %rbp,%r13
   0.00%  │    0x00007f0df463fbeb:   vmovq  %r13,%xmm14
   0.08%  │    0x00007f0df463fbf0:   vmovq  %xmm4,%rbp
   0.02%  │    0x00007f0df463fbf5:   sar    $0x4,%rbp
   0.05%  │    0x00007f0df463fbf9:   vmovq  %xmm11,%r13
   0.00%  │    0x00007f0df463fbfe:   sub    %rbp,%r13
   0.07%  │    0x00007f0df463fc01:   vmovq  %r13,%xmm11
   0.01%  │    0x00007f0df463fc06:   vmovq  %xmm1,%rbp
   0.05%  │    0x00007f0df463fc0b:   shl    $0x16,%rbp
   0.01%  │    0x00007f0df463fc0f:   and    $0x3ffffff,%rbp
   0.06%  │    0x00007f0df463fc16:   mov    0x110(%rsp),%r13
   0.02%  │    0x00007f0df463fc1e:   sar    $0x4,%r13
   0.08%  │    0x00007f0df463fc22:   mov    0xe0(%rsp),%r14
   0.01%  │    0x00007f0df463fc2a:   sub    %r13,%r14
   0.07%  │    0x00007f0df463fc2d:   sub    %r8,%r14
   0.02%  │    0x00007f0df463fc30:   add    %rcx,%r14
   0.07%  │    0x00007f0df463fc33:   sub    %r9,%r14
   0.01%  │    0x00007f0df463fc36:   add    %rax,%r14                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@494 (line 129)
   0.08%  │    0x00007f0df463fc39:   mov    0x110(%rsp),%r8
   0.04%  │    0x00007f0df463fc41:   shl    $0x16,%r8
   0.07%  │    0x00007f0df463fc45:   and    $0x3ffffff,%r8
   0.00%  │    0x00007f0df463fc4c:   mov    0xd8(%rsp),%r9
   0.07%  │    0x00007f0df463fc54:   sub    %r8,%r9
   0.02%  │    0x00007f0df463fc57:   sub    0xb8(%rsp),%r9
   0.06%  │    0x00007f0df463fc5f:   mov    %r14,%r8
   0.01%  │    0x00007f0df463fc62:   sar    $0x4,%r8
   0.06%  │    0x00007f0df463fc66:   sub    %r8,%r10                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@635 (line 142)
   0.03%  │    0x00007f0df463fc69:   mov    %r10,%r13
   0.05%  │    0x00007f0df463fc6c:   mov    %r14,%r10
   0.01%  │    0x00007f0df463fc6f:   shl    $0x16,%r10
   0.07%  │    0x00007f0df463fc73:   and    $0x3ffffff,%r10
   0.02%  │    0x00007f0df463fc7a:   vmovq  %xmm12,%r8
   0.06%  │    0x00007f0df463fc7f:   sub    %r10,%r8
   0.01%  │    0x00007f0df463fc82:   vmovq  %r8,%xmm12
   0.06%  │    0x00007f0df463fc87:   mov    %r14,%r10
   0.03%  │    0x00007f0df463fc8a:   sar    $0x16,%r10
   0.05%  │    0x00007f0df463fc8e:   vmovq  %xmm13,%r8
   0.01%  │    0x00007f0df463fc93:   add    %r10,%r8
   0.07%  │    0x00007f0df463fc96:   vmovq  %r8,%xmm13
   0.02%  │    0x00007f0df463fc9b:   mov    %r14,%r10
   0.06%  │    0x00007f0df463fc9e:   shl    $0x4,%r10
   0.01%  │    0x00007f0df463fca2:   and    $0x3ffffff,%r10
   0.05%  │    0x00007f0df463fca9:   vmovq  %xmm9,%r8
   0.01%  │    0x00007f0df463fcae:   add    %r10,%r8                     ;   {no_reloc}
   0.05%  │    0x00007f0df463fcb1:   vmovq  %r8,%xmm9
   0.00%  │    0x00007f0df463fcb6:   mov    %r14,%rcx
   0.08%  │    0x00007f0df463fcb9:   sar    $0x6,%rcx
   0.02%  │    0x00007f0df463fcbd:   mov    %r14,%r10
   0.05%  │    0x00007f0df463fcc0:   sar    $0xc,%r10
   0.01%  │    0x00007f0df463fcc4:   mov    %r14,%r8
   0.05%  │    0x00007f0df463fcc7:   shl    $0x14,%r8
   0.02%  │    0x00007f0df463fccb:   and    $0x3ffffff,%r8
   0.06%  │    0x00007f0df463fcd2:   vmovq  %xmm14,%rax
   0.01%  │    0x00007f0df463fcd7:   add    %r8,%rax
   0.07%  │    0x00007f0df463fcda:   sub    %r10,%rax
   0.02%  │    0x00007f0df463fcdd:   vmovq  %rax,%xmm14
   0.07%  │    0x00007f0df463fce2:   mov    %r14,%r10
   0.01%  │    0x00007f0df463fce5:   shl    $0xe,%r10
   0.08%  │    0x00007f0df463fce9:   and    $0x3ffffff,%r10
   0.03%  │    0x00007f0df463fcf0:   mov    0x110(%rsp),%r8
   0.06%  │    0x00007f0df463fcf8:   shl    $0x4,%r8
   0.00%  │    0x00007f0df463fcfc:   and    $0x3ffffff,%r8
   0.07%  │    0x00007f0df463fd03:   mov    0xc0(%rsp),%rax
   0.02%  │    0x00007f0df463fd0b:   add    %r8,%rax
   0.06%  │    0x00007f0df463fd0e:   add    0xf0(%rsp),%rax
   0.00%  │    0x00007f0df463fd16:   sub    %r11,%rax
   0.05%  │    0x00007f0df463fd19:   sub    %rbx,%rax
   0.02%  │    0x00007f0df463fd1c:   mov    0x110(%rsp),%r11
   0.05%  │    0x00007f0df463fd24:   sar    $0x16,%r11
   0.00%  │    0x00007f0df463fd28:   mov    0xc8(%rsp),%r8
   0.06%  │    0x00007f0df463fd30:   add    %r11,%r8
   0.02%  │    0x00007f0df463fd33:   sub    %rbp,%r8
   0.06%  │    0x00007f0df463fd36:   sub    %rdi,%r8
   0.01%  │    0x00007f0df463fd39:   sub    %r10,%r8
   0.06%  │    0x00007f0df463fd3c:   vmovq  %xmm3,%r10
   0.02%  │    0x00007f0df463fd41:   shl    $0xe,%r10
   0.06%  │    0x00007f0df463fd45:   and    $0x3ffffff,%r10
   0.00%  │    0x00007f0df463fd4c:   sub    %r10,%r9
   0.06%  │    0x00007f0df463fd4f:   add    %rsi,%r9
   0.01%  │    0x00007f0df463fd52:   sub    %rdx,%r9
   0.05%  │    0x00007f0df463fd55:   lea    (%r9,%rcx,1),%r10
   0.02%  │    0x00007f0df463fd59:   mov    %r10,%r11
   0.08%  │    0x00007f0df463fd5c:   sar    $0xc,%r11
   0.03%  │    0x00007f0df463fd60:   mov    %r10,%r9
   0.07%  │    0x00007f0df463fd63:   shl    $0x14,%r9
   0.01%  │    0x00007f0df463fd67:   and    $0x3ffffff,%r9
   0.06%  │    0x00007f0df463fd6e:   add    %r9,%r8
   0.04%  │    0x00007f0df463fd71:   sub    %r11,%r8
   0.08%  │    0x00007f0df463fd74:   mov    %r10,%r11
   0.01%  │    0x00007f0df463fd77:   shl    $0xe,%r11
   0.05%  │    0x00007f0df463fd7b:   and    $0x3ffffff,%r11
   0.03%  │    0x00007f0df463fd82:   sub    %r11,%rax
   0.08%  │    0x00007f0df463fd85:   mov    %r10,%r11
   0.00%  │    0x00007f0df463fd88:   sar    $0x4,%r11
   0.04%  │    0x00007f0df463fd8c:   vmovq  %xmm12,%r9
   0.02%  │    0x00007f0df463fd91:   sub    %r11,%r9                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@729 (line 151)
   0.06%  │    0x00007f0df463fd94:   mov    %r9,%rbx
   0.01%  │    0x00007f0df463fd97:   mov    %r10,%r11
   0.05%  │    0x00007f0df463fd9a:   shl    $0x16,%r11
   0.03%  │    0x00007f0df463fd9e:   and    $0x3ffffff,%r11
   0.09%  │    0x00007f0df463fda5:   vmovq  %xmm10,%r9
   0.01%  │    0x00007f0df463fdaa:   sub    %r11,%r9
   0.05%  │    0x00007f0df463fdad:   mov    %r9,%rcx                     ;   {no_reloc}
   0.02%  │    0x00007f0df463fdb0:   mov    %r10,%r11
   0.08%  │    0x00007f0df463fdb3:   sar    $0x16,%r11
   0.01%  │    0x00007f0df463fdb7:   vmovq  %xmm9,%r9
   0.05%  │    0x00007f0df463fdbc:   add    %r11,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@752 (line 153)
   0.01%  │    0x00007f0df463fdbf:   mov    %r9,%rbp
   0.07%  │    0x00007f0df463fdc2:   mov    %r10,%r11
   0.01%  │    0x00007f0df463fdc5:   shl    $0x4,%r11
   0.04%  │    0x00007f0df463fdc9:   and    $0x3ffffff,%r11
   0.02%  │    0x00007f0df463fdd0:   vmovq  %xmm8,%r9
   0.09%  │    0x00007f0df463fdd5:   add    %r11,%r9
   0.01%  │    0x00007f0df463fdd8:   mov    %r9,%rdx
   0.07%  │    0x00007f0df463fddb:   mov    %r10,%r11
   0.04%  │    0x00007f0df463fdde:   sar    $0x6,%r11
   0.07%  │    0x00007f0df463fde2:   vmovq  %xmm14,%r9
   0.01%  │    0x00007f0df463fde7:   add    %r11,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@682 (line 147)
   0.06%  │    0x00007f0df463fdea:   mov    %r9,%rsi
   0.02%  │    0x00007f0df463fded:   mov    %r9,%r11
   0.08%  │    0x00007f0df463fdf0:   sar    $0x6,%r11
   0.01%  │    0x00007f0df463fdf4:   add    %r11,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@776 (line 156)
   0.05%  │    0x00007f0df463fdf7:   mov    %r8,%rdi
   0.01%  │    0x00007f0df463fdfa:   mov    %r9,%r11
   0.06%  │    0x00007f0df463fdfd:   sar    $0xc,%r11
   0.00%  │    0x00007f0df463fe01:   mov    %r9,%r8
   0.07%  │    0x00007f0df463fe04:   shl    $0x14,%r8
   0.01%  │    0x00007f0df463fe08:   and    $0x3ffffff,%r8
   0.08%  │    0x00007f0df463fe0f:   add    %r8,%rax
   0.01%  │    0x00007f0df463fe12:   sub    %r11,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@800 (line 158)
   0.05%  │    0x00007f0df463fe15:   mov    %r9,%r11
   0.03%  │    0x00007f0df463fe18:   shl    $0xe,%r11
   0.07%  │    0x00007f0df463fe1c:   and    $0x3ffffff,%r11
   0.01%  │    0x00007f0df463fe23:   vmovq  %xmm11,%r8
   0.07%  │    0x00007f0df463fe28:   sub    %r11,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@790 (line 157)
   0.02%  │    0x00007f0df463fe2b:   mov    %r9,%r11
   0.05%  │    0x00007f0df463fe2e:   sar    $0x4,%r11
   0.02%  │    0x00007f0df463fe32:   mov    %rcx,%r9
   0.05%  │    0x00007f0df463fe35:   sub    %r11,%r9                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@823 (line 160)
   0.01%  │    0x00007f0df463fe38:   mov    %rsi,%r11
   0.08%  │    0x00007f0df463fe3b:   shl    $0x16,%r11
   0.01%  │    0x00007f0df463fe3f:   and    $0x3ffffff,%r11
   0.10%  │    0x00007f0df463fe46:   vmovq  %xmm13,%rcx
   0.01%  │    0x00007f0df463fe4b:   sub    %r11,%rcx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@814 (line 159)
   0.06%  │    0x00007f0df463fe4e:   vmovq  %rcx,%xmm8
   0.01%  │    0x00007f0df463fe53:   mov    %rsi,%r11
   0.07%  │    0x00007f0df463fe56:   sar    $0x16,%r11
   0.02%  │    0x00007f0df463fe5a:   lea    (%rdx,%r11,1),%rcx
   0.07%  │    0x00007f0df463fe5e:   vmovq  %rcx,%xmm9
   0.01%  │    0x00007f0df463fe63:   mov    %rsi,%rcx
   0.04%  │    0x00007f0df463fe66:   shl    $0x4,%rcx
   0.02%  │    0x00007f0df463fe6a:   and    $0x3ffffff,%rcx
   0.05%  │    0x00007f0df463fe71:   vmovq  %xmm7,%r11
   0.01%  │    0x00007f0df463fe76:   add    %rcx,%r11                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@835 (line 161)
   0.07%  │    0x00007f0df463fe79:   mov    %r9,(%rsp)
   0.02%  │    0x00007f0df463fe7d:   mov    %rbx,0x8(%rsp)
   0.08%  │    0x00007f0df463fe82:   mov    %r13,0x10(%rsp)
   0.01%  │    0x00007f0df463fe87:   mov    %r8,0x18(%rsp)
   0.07%  │    0x00007f0df463fe8c:   mov    %rax,0x20(%rsp)
   0.02%  │    0x00007f0df463fe91:   mov    %rdi,0x28(%rsp)
   0.07%  │    0x00007f0df463fe96:   xor    %r8d,%r8d
   0.01%  │    0x00007f0df463fe99:   mov    %r8,0x30(%rsp)
   0.05%  │    0x00007f0df463fe9e:   mov    %r10,0x38(%rsp)
   0.01%  │    0x00007f0df463fea3:   mov    %r14,0x40(%rsp)
   0.09%  │    0x00007f0df463fea8:   vmovsd %xmm4,0x48(%rsp)
          │    0x00007f0df463feae:   vmovsd %xmm3,0x50(%rsp)             ;   {no_reloc}
   0.05%  │    0x00007f0df463feb4:   vmovsd %xmm2,0x58(%rsp)
   0.03%  │    0x00007f0df463feba:   vmovsd %xmm1,0x60(%rsp)
   0.07%  │    0x00007f0df463fec0:   vmovsd %xmm0,0x68(%rsp)
   0.01%  │    0x00007f0df463fec6:   mov    0x110(%rsp),%r10
   0.06%  │    0x00007f0df463fece:   mov    %r10,0x70(%rsp)
   0.03%  │    0x00007f0df463fed3:   xor    %r10d,%r10d
   0.08%  │    0x00007f0df463fed6:   mov    %r10,0x78(%rsp)
   0.00%  │    0x00007f0df463fedb:   vmovq  %xmm5,%rsi
   0.05%  │    0x00007f0df463fee0:   vmovq  %xmm6,%rdx
   0.02%  │    0x00007f0df463fee5:   mov    %r11,%rcx
   0.05%  │    0x00007f0df463fee8:   vmovq  %xmm9,%r8
   0.02%  │    0x00007f0df463feed:   mov    %rbp,%r9
   0.07%  │    0x00007f0df463fef0:   vmovq  %xmm8,%rdi
   0.02%  │    0x00007f0df463fef5:   xchg   %ax,%ax
   0.08%  │    0x00007f0df463fef7:   call   0x00007f0df463cd40           ; ImmutableOopMap {}
          │                                                              ;*invokevirtual carryReduce0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │                                                              ;   {optimized virtual_call}
   0.04%  │    0x00007f0df463fefc:   nopl   0x7ec(%rax,%rax,1)           ;   {other}
   0.03%  │    0x00007f0df463ff04:   add    $0x90,%rsp
   0.07%  │    0x00007f0df463ff0b:   pop    %rbp
   0.05%  │ ↗  0x00007f0df463ff0c:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭│  0x00007f0df463ff13:   ja     0x00007f0df463ff2a
   0.06%  │││  0x00007f0df463ff19:   ret                                 ;*invokevirtual carryReduce0 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │││  0x00007f0df463ff1a:   mov    %rax,%rsi
          │││  0x00007f0df463ff1d:   add    $0x90,%rsp
          │││  0x00007f0df463ff24:   pop    %rbp
          │││  0x00007f0df463ff25:   jmp    0x00007f0df419d380           ;   {runtime_call _rethrow_Java}
          │↘╰  0x00007f0df463ff2a:   movabs $0x7f0df463ff0c,%r10         ;   {internal_word}
          │    0x00007f0df463ff34:   mov    %r10,0x468(%r15)
          │    0x00007f0df463ff3b:   jmp    0x00007f0df40cb000           ;   {runtime_call SafepointBlob}
          ↘    0x00007f0df463ff40:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
               0x00007f0df463ff45:   jmp    0x00007f0df463f8de
....................................................................................................
  17.02%  <total for region 2>

....[Hottest Regions]...............................................................................
  18.84%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::mult, version 2, compile id 650 
  17.02%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce, version 2, compile id 646 
   7.02%         c2, level 4  sun.security.util.math.intpoly.P256OrderField::carryReduce0, version 2, compile id 746 
   5.85%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0, version 2, compile id 631 
   5.29%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier::lookup, version 2, compile id 686 
   4.30%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   3.51%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier::lookup, version 2, compile id 686 
   3.33%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::square, version 2, compile id 667 
   3.25%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier::lookup, version 2, compile id 686 
   2.94%         c2, level 4  sun.security.util.math.intpoly.P256OrderField::square, version 2, compile id 741 
   2.07%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce, version 2, compile id 645 
   2.02%         c2, level 4  sun.security.util.math.intpoly.P256OrderField::carryReduce, version 2, compile id 742 
   1.52%         c2, level 4  sun.security.util.math.intpoly.P256OrderField::carryReduce2, version 2, compile id 722 
   1.35%         c2, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 759 
   1.05%         c2, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 759 
   0.80%              kernel  [unknown] 
   0.64%         c2, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 759 
   0.60%         c2, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 759 
   0.56%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier::lookup, version 2, compile id 686 
   0.54%         c2, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Secp256R1::inverse, version 3, compile id 894 
  17.54%  <...other 937 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  18.84%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::mult, version 2, compile id 650 
  17.02%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce, version 2, compile id 646 
  12.80%         c2, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 759 
  12.71%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier::lookup, version 2, compile id 686 
   7.02%         c2, level 4  sun.security.util.math.intpoly.P256OrderField::carryReduce0, version 2, compile id 746 
   5.85%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0, version 2, compile id 631 
   4.30%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   3.33%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::square, version 2, compile id 667 
   2.94%         c2, level 4  sun.security.util.math.intpoly.P256OrderField::square, version 2, compile id 741 
   2.10%         c2, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 688 
   2.07%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce, version 2, compile id 645 
   2.02%         c2, level 4  sun.security.util.math.intpoly.P256OrderField::carryReduce, version 2, compile id 742 
   1.77%              kernel  [unknown] 
   1.52%         c2, level 4  sun.security.util.math.intpoly.P256OrderField::carryReduce2, version 2, compile id 722 
   1.12%         c2, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Secp256R1Field::inverse, version 4, compile id 934 
   0.90%         c2, level 4  sun.security.util.math.intpoly.P256OrderField::mult, version 2, compile id 821 
   0.79%         c2, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Secp256R1::inverse, version 3, compile id 894 
   0.45%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark::sign, version 2, compile id 1086 
   0.40%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier$Secp256R1GeneratorMultiplier::pointMultiply, version 3, compile id 972 
   0.24%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial::setLimbsValuePositive, version 2, compile id 931 
   1.83%  <...other 121 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  93.40%         c2, level 4
   4.51%        runtime stub
   1.77%              kernel
   0.15%           libjvm.so
   0.08%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.02%                    
   0.02%         interpreter
   0.01%          ld-2.31.so
   0.01%              [vdso]
   0.01%      hsdis-amd64.so
   0.01%    perf-1933552.map
   0.00%         c1, level 3
   0.00%          libjava.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign
# Parameters: (algorithm = secp256r1, messageLength = 512)

# Run progress: 8.33% complete, ETA 00:20:59
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 925.499 us/op
# Warmup Iteration   2: 356.628 us/op
# Warmup Iteration   3: 341.148 us/op
# Warmup Iteration   4: 340.763 us/op
# Warmup Iteration   5: 340.880 us/op
Iteration   1: 340.865 us/op
Iteration   2: 340.804 us/op
Iteration   3: 340.889 us/op
Iteration   4: 340.963 us/op
Iteration   5: 340.701 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign":
  340.844 ±(99.9%) 0.380 us/op [Average]
  (min, avg, max) = (340.701, 340.844, 340.963), stdev = 0.099
  CI (99.9%): [340.465, 341.224] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign:asm":
PrintAssembly processed: 320480 total address lines.
Perf output processed (skipped 59.331 seconds):
 Column 1: cycles (50594 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, sun.security.util.math.intpoly.IntegerPolynomialP256::mult, version 2, compile id 641 

             # parm2:    r8:r8     = &apos;[J&apos;
             #           [sp+0x270]  (sp of caller)
             0x00007fa9286413c0:   mov    0x8(%rsi),%r10d
             0x00007fa9286413c4:   movabs $0x7fa8ab000000,%r11
             0x00007fa9286413ce:   add    %r11,%r10
             0x00007fa9286413d1:   cmp    %r10,%rax
             0x00007fa9286413d4:   jne    0x00007fa9280c4080           ;   {runtime_call ic_miss_stub}
             0x00007fa9286413da:   xchg   %ax,%ax
             0x00007fa9286413dc:   nopl   0x0(%rax)
           [Verified Entry Point]
   0.06%     0x00007fa9286413e0:   mov    %eax,-0x14000(%rsp)
   0.11%     0x00007fa9286413e7:   push   %rbp
   0.01%     0x00007fa9286413e8:   sub    $0x260,%rsp
   0.05%     0x00007fa9286413ef:   nop
   0.08%     0x00007fa9286413f0:   cmpl   $0x0,0x20(%r15)
   0.01%     0x00007fa9286413f8:   jne    0x00007fa928641e8a           ;*synchronization entry
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@-1 (line 303)
   0.04%     0x00007fa9286413fe:   vmovq  %r8,%xmm0
   0.00%     0x00007fa928641403:   mov    0xc(%rdx),%r10d              ; implicit exception: dispatches to 0x00007fa928641e4c
   0.09%     0x00007fa928641407:   cmp    $0x9,%r10d
          ╭  0x00007fa92864140b:   jbe    0x00007fa928641dda
   0.01%  │  0x00007fa928641411:   mov    0xc(%rcx),%r11d              ; implicit exception: dispatches to 0x00007fa928641e60
   0.04%  │  0x00007fa928641415:   mov    0x10(%rdx),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@2 (line 303)
   0.01%  │  0x00007fa928641419:   nopl   0x0(%rax)
   0.08%  │  0x00007fa928641420:   cmp    $0x9,%r11d
          │  0x00007fa928641424:   jbe    0x00007fa928641e08
   0.01%  │  0x00007fa92864142a:   vmovq  %rsi,%xmm6
   0.04%  │  0x00007fa92864142f:   vmovq  %rcx,%xmm1
   0.00%  │  0x00007fa928641434:   mov    0x10(%rcx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@5 (line 303)
   0.06%  │  0x00007fa928641438:   mov    0x18(%rdx),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@18 (line 304)
   0.01%  │  0x00007fa92864143c:   vmovq  %r10,%xmm5
   0.03%  │  0x00007fa928641441:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@6 (line 303)
   0.00%  │  0x00007fa928641445:   vmovq  %r10,%xmm7
   0.08%  │  0x00007fa92864144a:   mov    %r11,%rdi
   0.01%  │  0x00007fa92864144d:   mov    %r8,0x78(%rsp)
   0.04%  │  0x00007fa928641452:   imul   %r8,%rdi
   0.00%  │  0x00007fa928641456:   mov    0x20(%rdx),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@43 (line 305)
   0.09%  │  0x00007fa92864145a:   mov    0x28(%rdx),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@76 (line 306)
   0.01%  │  0x00007fa92864145e:   mov    %r11,%rsi
   0.03%  │  0x00007fa928641461:   mov    %r10,0x80(%rsp)
   0.00%  │  0x00007fa928641469:   imul   %r10,%rsi
   0.05%  │  0x00007fa92864146d:   mov    %r11,%r10
   0.00%  │  0x00007fa928641470:   mov    %r8,0x88(%rsp)
   0.04%  │  0x00007fa928641478:   imul   %r8,%r11
   0.01%  │  0x00007fa92864147c:   mov    %r11,0x90(%rsp)
   0.06%  │  0x00007fa928641484:   mov    0x30(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@117 (line 307)
   0.01%  │  0x00007fa928641488:   mov    %r11,0x98(%rsp)
   0.04%  │  0x00007fa928641490:   mov    0x38(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@166 (line 308)
   0.01%  │  0x00007fa928641494:   mov    %r11,0xa0(%rsp)
   0.08%  │  0x00007fa92864149c:   mov    %r10,%r13
   0.01%  │  0x00007fa92864149f:   imul   0x98(%rsp),%r13
   0.17%  │  0x00007fa9286414a8:   mov    %r10,%r11
   0.00%  │  0x00007fa9286414ab:   imul   0xa0(%rsp),%r11
   0.10%  │  0x00007fa9286414b4:   mov    %r11,0xa8(%rsp)
   0.18%  │  0x00007fa9286414bc:   mov    0x40(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@225 (line 309)
   0.00%  │  0x00007fa9286414c0:   mov    %r11,0xb0(%rsp)
   0.01%  │  0x00007fa9286414c8:   mov    0x48(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@294 (line 310)
   0.00%  │  0x00007fa9286414cc:   mov    %r11,0xb8(%rsp)              ;   {no_reloc}
   0.12%  │  0x00007fa9286414d4:   mov    %r10,%r11
   0.00%  │  0x00007fa9286414d7:   imul   0xb0(%rsp),%r11
   0.04%  │  0x00007fa9286414e0:   mov    %r11,0xc0(%rsp)
   0.12%  │  0x00007fa9286414e8:   mov    %r10,%r11
   0.05%  │  0x00007fa9286414eb:   imul   0xb8(%rsp),%r11
   0.05%  │  0x00007fa9286414f4:   mov    %r11,0xc8(%rsp)
   0.14%  │  0x00007fa9286414fc:   mov    0x50(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@373 (line 311)
   0.01%  │  0x00007fa928641500:   mov    %r11,0xd0(%rsp)
   0.01%  │  0x00007fa928641508:   mov    0x58(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@462 (line 312)
          │  0x00007fa92864150c:   mov    %r11,0xd8(%rsp)
   0.09%  │  0x00007fa928641514:   mov    %r10,%r11
   0.02%  │  0x00007fa928641517:   imul   0xd0(%rsp),%r11
   0.06%  │  0x00007fa928641520:   mov    %r11,0xe0(%rsp)
   0.16%  │  0x00007fa928641528:   imul   0xd8(%rsp),%r10
   0.03%  │  0x00007fa928641531:   mov    %r10,0xe8(%rsp)
   0.12%  │  0x00007fa928641539:   mov    0x18(%rcx),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@14 (line 304)
   0.01%  │  0x00007fa92864153d:   vmovq  %xmm1,%r10
   0.02%  │  0x00007fa928641542:   mov    0x20(%r10),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@31 (line 305)
   0.00%  │  0x00007fa928641546:   mov    %rcx,%r10
   0.09%  │  0x00007fa928641549:   imul   0xd8(%rsp),%r10
   0.00%  │  0x00007fa928641552:   mov    %r10,0xf0(%rsp)
   0.06%  │  0x00007fa92864155a:   mov    %r8,%r10
   0.00%  │  0x00007fa92864155d:   imul   0xd8(%rsp),%r10
   0.10%  │  0x00007fa928641566:   mov    %r10,0xf8(%rsp)
   0.02%  │  0x00007fa92864156e:   mov    %r8,%r10
   0.04%  │  0x00007fa928641571:   imul   0xd0(%rsp),%r10
   0.00%  │  0x00007fa92864157a:   mov    %r10,0x100(%rsp)
   0.07%  │  0x00007fa928641582:   mov    %r8,%r10
   0.03%  │  0x00007fa928641585:   imul   0xb8(%rsp),%r10
   0.04%  │  0x00007fa92864158e:   mov    %r10,0x108(%rsp)
   0.01%  │  0x00007fa928641596:   mov    %r8,%r10
   0.05%  │  0x00007fa928641599:   imul   0xb0(%rsp),%r10
   0.01%  │  0x00007fa9286415a2:   mov    %r10,0x110(%rsp)
   0.04%  │  0x00007fa9286415aa:   mov    %r8,%r10
   0.01%  │  0x00007fa9286415ad:   imul   0xa0(%rsp),%r10
   0.03%  │  0x00007fa9286415b6:   mov    %r10,0x118(%rsp)
   0.02%  │  0x00007fa9286415be:   mov    %r8,%r10
   0.06%  │  0x00007fa9286415c1:   imul   0x98(%rsp),%r10
   0.02%  │  0x00007fa9286415ca:   mov    %r10,0x120(%rsp)
   0.08%  │  0x00007fa9286415d2:   mov    %r8,%r10                     ;   {no_reloc}
   0.00%  │  0x00007fa9286415d5:   imul   0x88(%rsp),%r10
   0.04%  │  0x00007fa9286415de:   mov    %r10,0x128(%rsp)
   0.05%  │  0x00007fa9286415e6:   mov    %r8,%r10
   0.03%  │  0x00007fa9286415e9:   imul   0x80(%rsp),%r10
          │  0x00007fa9286415f2:   mov    0x78(%rsp),%r11
   0.04%  │  0x00007fa9286415f7:   imul   %r8,%r11
   0.04%  │  0x00007fa9286415fb:   vmovq  %xmm5,%r9
   0.04%  │  0x00007fa928641600:   imul   %r8,%r9
   0.00%  │  0x00007fa928641604:   mov    %r9,%rax
   0.04%  │  0x00007fa928641607:   mov    %rcx,%r8
   0.03%  │  0x00007fa92864160a:   imul   0xd0(%rsp),%r8
   0.02%  │  0x00007fa928641613:   mov    %r8,0x130(%rsp)
   0.16%  │  0x00007fa92864161b:   mov    %rcx,%r8
          │  0x00007fa92864161e:   imul   0xb8(%rsp),%r8
   0.00%  │  0x00007fa928641627:   mov    %r8,0x138(%rsp)
   0.11%  │  0x00007fa92864162f:   mov    %rcx,%r8
          │  0x00007fa928641632:   imul   0xb0(%rsp),%r8
          │  0x00007fa92864163b:   mov    %r8,0x140(%rsp)
   0.11%  │  0x00007fa928641643:   mov    %rcx,%rdx
   0.00%  │  0x00007fa928641646:   imul   0xa0(%rsp),%rdx
          │  0x00007fa92864164f:   mov    %rcx,%r8
          │  0x00007fa928641652:   imul   0x98(%rsp),%r8
   0.10%  │  0x00007fa92864165b:   mov    %r8,0x148(%rsp)
   0.09%  │  0x00007fa928641663:   mov    %rcx,%r8
          │  0x00007fa928641666:   imul   0x88(%rsp),%r8
          │  0x00007fa92864166f:   mov    %rcx,%r9
   0.01%  │  0x00007fa928641672:   imul   0x80(%rsp),%r9
   0.08%  │  0x00007fa92864167b:   mov    %rcx,%rbx
          │  0x00007fa92864167e:   imul   0x78(%rsp),%rbx
          │  0x00007fa928641684:   add    %rbx,%rax
   0.12%  │  0x00007fa928641687:   add    %rsi,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@48 (line 305)
   0.10%  │  0x00007fa92864168a:   vmovq  %rax,%xmm8
   0.26%  │  0x00007fa92864168f:   vmovq  %xmm5,%rbx
          │  0x00007fa928641694:   imul   %rcx,%rbx
          │  0x00007fa928641698:   add    %rdi,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@23 (line 304)
          │  0x00007fa92864169b:   vmovq  %rbx,%xmm9
   0.12%  │  0x00007fa9286416a0:   vmovq  %xmm1,%rcx
          │  0x00007fa9286416a5:   mov    0x28(%rcx),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@56 (line 306)
   0.01%  │  0x00007fa9286416a9:   vmovq  %xmm1,%rbx
          │  0x00007fa9286416ae:   mov    0x30(%rbx),%rdi              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@89 (line 307)
   0.11%  │  0x00007fa9286416b2:   mov    %rcx,%rbx
          │  0x00007fa9286416b5:   imul   0xd8(%rsp),%rbx
   0.01%  │  0x00007fa9286416be:   mov    %rbx,0x150(%rsp)
   0.03%  │  0x00007fa9286416c6:   mov    %rdi,%rbx
   0.13%  │  0x00007fa9286416c9:   imul   0xd8(%rsp),%rbx              ;   {no_reloc}
          │  0x00007fa9286416d2:   mov    %rbx,0x158(%rsp)
   0.01%  │  0x00007fa9286416da:   mov    %rdi,%rbx
   0.00%  │  0x00007fa9286416dd:   imul   0xd0(%rsp),%rbx
   0.11%  │  0x00007fa9286416e6:   mov    %rbx,0x160(%rsp)
   0.01%  │  0x00007fa9286416ee:   mov    %rdi,%rbx
          │  0x00007fa9286416f1:   imul   0xb8(%rsp),%rbx
   0.00%  │  0x00007fa9286416fa:   mov    %rbx,0x168(%rsp)
   0.11%  │  0x00007fa928641702:   mov    %rdi,%rbx
          │  0x00007fa928641705:   imul   0xb0(%rsp),%rbx
          │  0x00007fa92864170e:   mov    %rbx,0x170(%rsp)
   0.01%  │  0x00007fa928641716:   mov    %rdi,%rbx
   0.10%  │  0x00007fa928641719:   imul   0xa0(%rsp),%rbx
          │  0x00007fa928641722:   mov    %rbx,0x178(%rsp)
   0.01%  │  0x00007fa92864172a:   mov    %rdi,%rbx
   0.00%  │  0x00007fa92864172d:   imul   0x98(%rsp),%rbx
   0.14%  │  0x00007fa928641736:   mov    %rbx,0x180(%rsp)
   0.01%  │  0x00007fa92864173e:   mov    0x88(%rsp),%rbx
          │  0x00007fa928641746:   imul   %rdi,%rbx
   0.00%  │  0x00007fa92864174a:   mov    %rbx,0x188(%rsp)
   0.12%  │  0x00007fa928641752:   mov    0x80(%rsp),%rsi
          │  0x00007fa92864175a:   imul   %rdi,%rsi
          │  0x00007fa92864175e:   mov    0x78(%rsp),%rax
          │  0x00007fa928641763:   imul   %rdi,%rax
   0.13%  │  0x00007fa928641767:   vmovq  %xmm5,%rbx
          │  0x00007fa92864176c:   imul   %rdi,%rbx
          │  0x00007fa928641770:   mov    %rcx,%rdi
          │  0x00007fa928641773:   imul   0xd0(%rsp),%rdi
   0.16%  │  0x00007fa92864177c:   mov    %rdi,0x190(%rsp)
   0.09%  │  0x00007fa928641784:   mov    %rcx,%rdi
          │  0x00007fa928641787:   imul   0xb8(%rsp),%rdi
          │  0x00007fa928641790:   mov    %rdi,0x198(%rsp)
   0.12%  │  0x00007fa928641798:   mov    %rcx,%rdi
          │  0x00007fa92864179b:   imul   0xb0(%rsp),%rdi
          │  0x00007fa9286417a4:   mov    %rdi,0x1a0(%rsp)
   0.12%  │  0x00007fa9286417ac:   mov    %rcx,%rdi
          │  0x00007fa9286417af:   imul   0xa0(%rsp),%rdi
   0.00%  │  0x00007fa9286417b8:   mov    %rdi,0x1a8(%rsp)
   0.13%  │  0x00007fa9286417c0:   mov    %rcx,%rdi
          │  0x00007fa9286417c3:   imul   0x98(%rsp),%rdi
          │  0x00007fa9286417cc:   mov    %rdi,0x1b0(%rsp)             ;   {no_reloc}
   0.10%  │  0x00007fa9286417d4:   mov    %rcx,%rbp
   0.02%  │  0x00007fa9286417d7:   imul   0x88(%rsp),%rbp
   0.00%  │  0x00007fa9286417e0:   mov    0x80(%rsp),%r14
          │  0x00007fa9286417e8:   imul   %rcx,%r14
   0.10%  │  0x00007fa9286417ec:   mov    0x78(%rsp),%rdi
   0.02%  │  0x00007fa9286417f1:   imul   %rcx,%rdi
          │  0x00007fa9286417f5:   add    %rdi,%rbx
   0.11%  │  0x00007fa9286417f8:   add    %r10,%rbx
   0.59%  │  0x00007fa9286417fb:   add    %r8,%rbx
   0.02%  │  0x00007fa9286417fe:   add    %r13,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@122 (line 307)
   0.02%  │  0x00007fa928641801:   vmovq  %rbx,%xmm2
   0.04%  │  0x00007fa928641806:   vmovq  %xmm5,%r10
   0.13%  │  0x00007fa92864180b:   imul   %rcx,%r10
          │  0x00007fa92864180f:   add    %r11,%r10
          │  0x00007fa928641812:   add    %r9,%r10
   0.03%  │  0x00007fa928641815:   add    0x90(%rsp),%r10              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@81 (line 306)
   0.08%  │  0x00007fa92864181d:   vmovq  %r10,%xmm10
   0.02%  │  0x00007fa928641822:   vmovq  %xmm1,%r10
          │  0x00007fa928641827:   mov    0x38(%r10),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@130 (line 308)
          │  0x00007fa92864182b:   vmovq  %xmm1,%r11
   0.10%  │  0x00007fa928641830:   mov    0x40(%r11),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@180 (line 309)
   0.03%  │  0x00007fa928641834:   mov    %r10,%r11
          │  0x00007fa928641837:   imul   0xd8(%rsp),%r11
   0.01%  │  0x00007fa928641840:   mov    %r11,0x90(%rsp)
   0.11%  │  0x00007fa928641848:   mov    %r8,%r11
   0.02%  │  0x00007fa92864184b:   imul   0xd8(%rsp),%r11
          │  0x00007fa928641854:   mov    %r11,0x1b8(%rsp)
          │  0x00007fa92864185c:   mov    %r8,%r11
   0.10%  │  0x00007fa92864185f:   imul   0xd0(%rsp),%r11
   0.02%  │  0x00007fa928641868:   mov    %r11,0x1c0(%rsp)
   0.02%  │  0x00007fa928641870:   mov    %r8,%r11
          │  0x00007fa928641873:   imul   0xb8(%rsp),%r11
   0.08%  │  0x00007fa92864187c:   mov    %r11,0x1c8(%rsp)
   0.00%  │  0x00007fa928641884:   mov    %r8,%r11
   0.01%  │  0x00007fa928641887:   imul   0xb0(%rsp),%r11
   0.00%  │  0x00007fa928641890:   mov    %r11,0x1d0(%rsp)
   0.08%  │  0x00007fa928641898:   mov    0xa0(%rsp),%r11
   0.00%  │  0x00007fa9286418a0:   imul   %r8,%r11
   0.01%  │  0x00007fa9286418a4:   mov    %r11,0x1d8(%rsp)
   0.02%  │  0x00007fa9286418ac:   mov    0x98(%rsp),%r11
   0.04%  │  0x00007fa9286418b4:   imul   %r8,%r11
   0.00%  │  0x00007fa9286418b8:   mov    %r11,0x1e0(%rsp)
   0.06%  │  0x00007fa9286418c0:   mov    0x88(%rsp),%r11
          │  0x00007fa9286418c8:   imul   %r8,%r11
   0.05%  │  0x00007fa9286418cc:   mov    %r11,0x1e8(%rsp)             ;   {no_reloc}
   0.05%  │  0x00007fa9286418d4:   mov    0x80(%rsp),%rbx
          │  0x00007fa9286418dc:   imul   %r8,%rbx
          │  0x00007fa9286418e0:   mov    0x78(%rsp),%r11
   0.10%  │  0x00007fa9286418e5:   imul   %r8,%r11
   0.05%  │  0x00007fa9286418e9:   mov    %r11,0x1f0(%rsp)
   0.04%  │  0x00007fa9286418f1:   vmovq  %xmm5,%r11
          │  0x00007fa9286418f6:   imul   %r8,%r11
   0.06%  │  0x00007fa9286418fa:   mov    %r10,%r8
   0.01%  │  0x00007fa9286418fd:   imul   0xd0(%rsp),%r8
   0.08%  │  0x00007fa928641906:   mov    %r8,0x1f8(%rsp)
   0.08%  │  0x00007fa92864190e:   mov    %r10,%r8
   0.05%  │  0x00007fa928641911:   imul   0xb8(%rsp),%r8
   0.00%  │  0x00007fa92864191a:   mov    %r8,0x200(%rsp)
   0.05%  │  0x00007fa928641922:   mov    %r10,%r8
          │  0x00007fa928641925:   imul   0xb0(%rsp),%r8
   0.05%  │  0x00007fa92864192e:   mov    %r8,0x208(%rsp)
   0.07%  │  0x00007fa928641936:   mov    %r10,%r8
          │  0x00007fa928641939:   imul   0xa0(%rsp),%r8
   0.00%  │  0x00007fa928641942:   mov    %r8,0x210(%rsp)
   0.17%  │  0x00007fa92864194a:   mov    0x98(%rsp),%r8
   0.01%  │  0x00007fa928641952:   imul   %r10,%r8
          │  0x00007fa928641956:   mov    %r8,0x218(%rsp)
   0.09%  │  0x00007fa92864195e:   mov    0x88(%rsp),%rdi
   0.05%  │  0x00007fa928641966:   imul   %r10,%rdi
   0.01%  │  0x00007fa92864196a:   mov    0x80(%rsp),%r13
          │  0x00007fa928641972:   imul   %r10,%r13
   0.08%  │  0x00007fa928641976:   mov    0x78(%rsp),%r8
   0.05%  │  0x00007fa92864197b:   imul   %r10,%r8
   0.01%  │  0x00007fa92864197f:   add    %r8,%r11
   0.07%  │  0x00007fa928641982:   add    %rsi,%r11
   0.06%  │  0x00007fa928641985:   add    %rbp,%r11
   0.15%  │  0x00007fa928641988:   add    0x120(%rsp),%r11
   0.10%  │  0x00007fa928641990:   add    %rdx,%r11
   0.12%  │  0x00007fa928641993:   add    0xc0(%rsp),%r11              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@230 (line 309)
   0.10%  │  0x00007fa92864199b:   vmovq  %r11,%xmm3
   0.24%  │  0x00007fa9286419a0:   vmovq  %xmm5,%r11
          │  0x00007fa9286419a5:   imul   %r10,%r11
          │  0x00007fa9286419a9:   add    %rax,%r11
          │  0x00007fa9286419ac:   add    %r14,%r11
   0.11%  │  0x00007fa9286419af:   add    0x128(%rsp),%r11
          │  0x00007fa9286419b7:   add    0x148(%rsp),%r11
          │  0x00007fa9286419bf:   add    0xa8(%rsp),%r11              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@171 (line 308)
          │  0x00007fa9286419c7:   vmovq  %r11,%xmm4
   0.15%  │  0x00007fa9286419cc:   vmovq  %xmm1,%r10                   ;   {no_reloc}
   0.00%  │  0x00007fa9286419d1:   mov    0x48(%r10),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@239 (line 310)
   0.01%  │  0x00007fa9286419d5:   vmovq  %xmm1,%r11
          │  0x00007fa9286419da:   mov    0x50(%r11),%rdx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@308 (line 311)
   0.12%  │  0x00007fa9286419de:   mov    %r10,%r11
          │  0x00007fa9286419e1:   imul   0xd8(%rsp),%r11
   0.00%  │  0x00007fa9286419ea:   mov    %r11,0xa8(%rsp)
   0.02%  │  0x00007fa9286419f2:   mov    %rdx,%r11
   0.11%  │  0x00007fa9286419f5:   imul   0xd8(%rsp),%r11
          │  0x00007fa9286419fe:   mov    %rdx,%r8
          │  0x00007fa928641a01:   imul   0xd0(%rsp),%r8
   0.01%  │  0x00007fa928641a0a:   mov    0xb8(%rsp),%r9
   0.11%  │  0x00007fa928641a12:   imul   %rdx,%r9
          │  0x00007fa928641a16:   mov    %r9,0xc0(%rsp)
   0.03%  │  0x00007fa928641a1e:   mov    0xb0(%rsp),%r9
          │  0x00007fa928641a26:   imul   %rdx,%r9
   0.08%  │  0x00007fa928641a2a:   mov    %r9,0x120(%rsp)
   0.04%  │  0x00007fa928641a32:   mov    0xa0(%rsp),%r9
          │  0x00007fa928641a3a:   imul   %rdx,%r9
          │  0x00007fa928641a3e:   mov    %r9,0x128(%rsp)
   0.12%  │  0x00007fa928641a46:   mov    0x98(%rsp),%r9
          │  0x00007fa928641a4e:   imul   %rdx,%r9
          │  0x00007fa928641a52:   mov    %r9,0x148(%rsp)
   0.08%  │  0x00007fa928641a5a:   mov    0x88(%rsp),%r9
   0.04%  │  0x00007fa928641a62:   imul   %rdx,%r9
          │  0x00007fa928641a66:   mov    %r9,0x220(%rsp)
   0.07%  │  0x00007fa928641a6e:   mov    0x80(%rsp),%r9
          │  0x00007fa928641a76:   imul   %rdx,%r9
   0.05%  │  0x00007fa928641a7a:   mov    %r9,0x228(%rsp)
   0.08%  │  0x00007fa928641a82:   mov    0x78(%rsp),%r9
          │  0x00007fa928641a87:   imul   %rdx,%r9
          │  0x00007fa928641a8b:   vmovq  %xmm5,%rcx
   0.04%  │  0x00007fa928641a90:   imul   %rdx,%rcx
   0.08%  │  0x00007fa928641a94:   mov    %r10,%rdx
          │  0x00007fa928641a97:   imul   0xd0(%rsp),%rdx
          │  0x00007fa928641aa0:   mov    %r10,%rsi
   0.05%  │  0x00007fa928641aa3:   imul   0xb8(%rsp),%rsi
   0.06%  │  0x00007fa928641aac:   mov    0xb0(%rsp),%rax
          │  0x00007fa928641ab4:   imul   %r10,%rax
   0.11%  │  0x00007fa928641ab8:   mov    0xa0(%rsp),%rbp
   0.04%  │  0x00007fa928641ac0:   imul   %r10,%rbp
   0.08%  │  0x00007fa928641ac4:   mov    %rbp,0x230(%rsp)
   0.16%  │  0x00007fa928641acc:   mov    0x98(%rsp),%rbp              ;   {no_reloc}
          │  0x00007fa928641ad4:   imul   %r10,%rbp
   0.04%  │  0x00007fa928641ad8:   mov    %rbp,0x238(%rsp)
   0.09%  │  0x00007fa928641ae0:   mov    0x88(%rsp),%rbp
          │  0x00007fa928641ae8:   imul   %r10,%rbp
          │  0x00007fa928641aec:   mov    %rbp,0x240(%rsp)
   0.10%  │  0x00007fa928641af4:   mov    0x80(%rsp),%rbp
          │  0x00007fa928641afc:   imul   %r10,%rbp
          │  0x00007fa928641b00:   mov    0x78(%rsp),%r14
          │  0x00007fa928641b05:   imul   %r10,%r14
   0.11%  │  0x00007fa928641b09:   add    %r14,%rcx
   0.02%  │  0x00007fa928641b0c:   add    %rbx,%rcx
   0.19%  │  0x00007fa928641b0f:   add    %rdi,%rcx
   0.02%  │  0x00007fa928641b12:   add    0x180(%rsp),%rcx
   0.13%  │  0x00007fa928641b1a:   add    0x1a8(%rsp),%rcx
   0.11%  │  0x00007fa928641b22:   add    0x110(%rsp),%rcx
   0.12%  │  0x00007fa928641b2a:   add    0x138(%rsp),%rcx
   0.13%  │  0x00007fa928641b32:   add    0xe0(%rsp),%rcx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@378 (line 311)
   0.12%  │  0x00007fa928641b3a:   mov    %rcx,%r14
          │  0x00007fa928641b3d:   vmovq  %xmm5,%rcx
          │  0x00007fa928641b42:   imul   %r10,%rcx
          │  0x00007fa928641b46:   add    0x1f0(%rsp),%rcx
   0.13%  │  0x00007fa928641b4e:   add    %r13,%rcx
          │  0x00007fa928641b51:   add    0x188(%rsp),%rcx
          │  0x00007fa928641b59:   add    0x1b0(%rsp),%rcx
          │  0x00007fa928641b61:   add    0x118(%rsp),%rcx
   0.08%  │  0x00007fa928641b69:   add    0x140(%rsp),%rcx
          │  0x00007fa928641b71:   add    0xc8(%rsp),%rcx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@299 (line 310)
   0.08%  │  0x00007fa928641b79:   mov    %rcx,%r13
          │  0x00007fa928641b7c:   vmovq  %xmm1,%r10
   0.04%  │  0x00007fa928641b81:   mov    0x58(%r10),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@387 (line 312)
          │  0x00007fa928641b85:   vmovq  %xmm5,%r10
   0.07%  │  0x00007fa928641b8a:   imul   %rcx,%r10
   0.00%  │  0x00007fa928641b8e:   add    %r9,%r10
   0.06%  │  0x00007fa928641b91:   add    %rbp,%r10
   0.00%  │  0x00007fa928641b94:   add    0x1e8(%rsp),%r10
   0.14%  │  0x00007fa928641b9c:   add    0x218(%rsp),%r10
   0.01%  │  0x00007fa928641ba4:   add    0x178(%rsp),%r10
   0.14%  │  0x00007fa928641bac:   add    0x1a0(%rsp),%r10
   0.11%  │  0x00007fa928641bb4:   add    0x108(%rsp),%r10
   0.13%  │  0x00007fa928641bbc:   add    0x130(%rsp),%r10
   0.13%  │  0x00007fa928641bc4:   add    0xe8(%rsp),%r10              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@467 (line 312)
   0.12%  │  0x00007fa928641bcc:   mov    %r10,%rbp                    ;   {no_reloc}
          │  0x00007fa928641bcf:   mov    %rcx,%r10
          │  0x00007fa928641bd2:   imul   0xd8(%rsp),%r10              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@896 (line 321)
          │  0x00007fa928641bdb:   vmovq  %r10,%xmm1
   0.11%  │  0x00007fa928641be0:   mov    0xd0(%rsp),%r10
          │  0x00007fa928641be8:   imul   %rcx,%r10
          │  0x00007fa928641bec:   add    %r11,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@885 (line 320)
          │  0x00007fa928641bef:   vmovq  %r10,%xmm5
   0.17%  │  0x00007fa928641bf4:   mov    0xb8(%rsp),%r9
          │  0x00007fa928641bfc:   imul   %rcx,%r9
          │  0x00007fa928641c00:   add    %r8,%r9
          │  0x00007fa928641c03:   add    0xa8(%rsp),%r9               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@864 (line 319)
   0.12%  │  0x00007fa928641c0b:   mov    0xb0(%rsp),%r8
          │  0x00007fa928641c13:   imul   %rcx,%r8
          │  0x00007fa928641c17:   add    0xc0(%rsp),%r8
          │  0x00007fa928641c1f:   add    %rdx,%r8
   0.13%  │  0x00007fa928641c22:   add    0x1b8(%rsp),%r8              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@833 (line 318)
          │  0x00007fa928641c2a:   mov    0xa0(%rsp),%rbx
   0.00%  │  0x00007fa928641c32:   imul   %rcx,%rbx
          │  0x00007fa928641c36:   add    0x120(%rsp),%rbx
   0.12%  │  0x00007fa928641c3e:   add    %rsi,%rbx
          │  0x00007fa928641c41:   add    0x1c0(%rsp),%rbx
          │  0x00007fa928641c49:   add    0x90(%rsp),%rbx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@792 (line 317)
          │  0x00007fa928641c51:   mov    0x98(%rsp),%rdi
   0.11%  │  0x00007fa928641c59:   imul   %rcx,%rdi
          │  0x00007fa928641c5d:   add    0x128(%rsp),%rdi
          │  0x00007fa928641c65:   add    %rax,%rdi
          │  0x00007fa928641c68:   add    0x1c8(%rsp),%rdi
   0.12%  │  0x00007fa928641c70:   add    0x1f8(%rsp),%rdi
   0.00%  │  0x00007fa928641c78:   add    0x158(%rsp),%rdi             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@743 (line 316)
   0.07%  │  0x00007fa928641c80:   mov    0x88(%rsp),%r10
          │  0x00007fa928641c88:   imul   %rcx,%r10
   0.04%  │  0x00007fa928641c8c:   add    0x148(%rsp),%r10
          │  0x00007fa928641c94:   add    0x230(%rsp),%r10
   0.05%  │  0x00007fa928641c9c:   add    0x1d0(%rsp),%r10
          │  0x00007fa928641ca4:   add    0x200(%rsp),%r10
   0.06%  │  0x00007fa928641cac:   add    0x160(%rsp),%r10
   0.05%  │  0x00007fa928641cb4:   add    0x150(%rsp),%r10             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@686 (line 315)
   0.09%  │  0x00007fa928641cbc:   mov    0x80(%rsp),%r11
          │  0x00007fa928641cc4:   imul   %rcx,%r11
   0.05%  │  0x00007fa928641cc8:   add    0x220(%rsp),%r11             ;   {no_reloc}
          │  0x00007fa928641cd0:   add    0x238(%rsp),%r11
   0.09%  │  0x00007fa928641cd8:   add    0x1d8(%rsp),%r11
          │  0x00007fa928641ce0:   add    0x208(%rsp),%r11
   0.08%  │  0x00007fa928641ce8:   add    0x168(%rsp),%r11
   0.07%  │  0x00007fa928641cf0:   add    0x190(%rsp),%r11
   0.14%  │  0x00007fa928641cf8:   add    0xf8(%rsp),%r11              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@621 (line 314)
   0.15%  │  0x00007fa928641d00:   mov    0x78(%rsp),%rsi
   0.00%  │  0x00007fa928641d05:   imul   %rcx,%rsi
          │  0x00007fa928641d09:   add    0x228(%rsp),%rsi
          │  0x00007fa928641d11:   add    0x240(%rsp),%rsi
   0.13%  │  0x00007fa928641d19:   add    0x1e0(%rsp),%rsi
   0.04%  │  0x00007fa928641d21:   add    0x210(%rsp),%rsi
   0.08%  │  0x00007fa928641d29:   add    0x170(%rsp),%rsi
   0.13%  │  0x00007fa928641d31:   add    0x198(%rsp),%rsi
   0.14%  │  0x00007fa928641d39:   add    0x100(%rsp),%rsi
   0.12%  │  0x00007fa928641d41:   add    0xf0(%rsp),%rsi              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@548 (line 313)
   0.11%  │  0x00007fa928641d49:   vmovq  %xmm0,%rdx
          │  0x00007fa928641d4e:   vmovsd %xmm2,(%rsp)
   0.03%  │  0x00007fa928641d53:   vmovsd %xmm4,0x8(%rsp)
   0.01%  │  0x00007fa928641d59:   vmovsd %xmm3,0x10(%rsp)
   0.11%  │  0x00007fa928641d5f:   mov    %r13,0x18(%rsp)
   0.04%  │  0x00007fa928641d64:   mov    %r14,0x20(%rsp)
   0.02%  │  0x00007fa928641d69:   mov    %rbp,0x28(%rsp)
   0.03%  │  0x00007fa928641d6e:   mov    %rsi,0x30(%rsp)
   0.14%  │  0x00007fa928641d73:   mov    %r11,0x38(%rsp)
          │  0x00007fa928641d78:   mov    %r10,0x40(%rsp)
   0.05%  │  0x00007fa928641d7d:   mov    %rdi,0x48(%rsp)
   0.03%  │  0x00007fa928641d82:   mov    %rbx,0x50(%rsp)
   0.07%  │  0x00007fa928641d87:   mov    %r8,0x58(%rsp)
   0.01%  │  0x00007fa928641d8c:   mov    %r9,0x60(%rsp)
   0.07%  │  0x00007fa928641d91:   vmovsd %xmm5,0x68(%rsp)
   0.07%  │  0x00007fa928641d97:   vmovsd %xmm1,0x70(%rsp)
   0.10%  │  0x00007fa928641d9d:   vmovq  %xmm6,%rsi
          │  0x00007fa928641da2:   vmovq  %xmm7,%rcx
          │  0x00007fa928641da7:   vmovq  %xmm9,%r8
   0.02%  │  0x00007fa928641dac:   vmovq  %xmm8,%r9
   0.09%  │  0x00007fa928641db1:   vmovq  %xmm10,%rdi
          │  0x00007fa928641db6:   nop
   0.00%  │  0x00007fa928641db7:   call   0x00007fa9280c4380           ; ImmutableOopMap {}
          │                                                            ;*invokevirtual carryReduce {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@939 (line 323)
          │                                                            ;   {optimized virtual_call}
   0.05%  │  0x00007fa928641dbc:   nopl   0xbac(%rax,%rax,1)           ;*invokevirtual carryReduce {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@939 (line 323)
          │                                                            ;   {other}
   0.05%  │  0x00007fa928641dc4:   add    $0x260,%rsp
   0.04%  │  0x00007fa928641dcb:   pop    %rbp
   0.05%  │  0x00007fa928641dcc:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007fa928641dd3:   ja     0x00007fa928641e74
   0.06%  │  0x00007fa928641dd9:   ret    
          ↘  0x00007fa928641dda:   mov    %rsi,%rbp
             0x00007fa928641ddd:   mov    %rcx,0x80(%rsp)
             0x00007fa928641de5:   mov    %r8,0x88(%rsp)
             0x00007fa928641ded:   mov    %rdx,0x90(%rsp)
             0x00007fa928641df5:   mov    $0xffffffe4,%esi
             0x00007fa928641dfa:   nop
             0x00007fa928641dfb:   call   0x00007fa9280c9f00           ; ImmutableOopMap {rbp=Oop [128]=Oop [136]=Oop [144]=Oop }
                                                                       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@2 (line 303)
                                                                       ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  18.94%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce, version 2, compile id 640 

               # parm18:   [sp+0x108]   = long
               # parm19:   [sp+0x110]   = long
               0x00007fa9286408a0:   mov    0x8(%rsi),%r10d
               0x00007fa9286408a4:   movabs $0x7fa8ab000000,%r11
               0x00007fa9286408ae:   add    %r11,%r10
               0x00007fa9286408b1:   cmp    %r10,%rax
               0x00007fa9286408b4:   jne    0x00007fa9280c4080           ;   {runtime_call ic_miss_stub}
               0x00007fa9286408ba:   xchg   %ax,%ax
               0x00007fa9286408bc:   nopl   0x0(%rax)
             [Verified Entry Point]
   0.16%       0x00007fa9286408c0:   mov    %eax,-0x14000(%rsp)
   0.00%       0x00007fa9286408c7:   push   %rbp
   0.12%       0x00007fa9286408c8:   sub    $0x90,%rsp
   0.02%       0x00007fa9286408cf:   nop
               0x00007fa9286408d0:   cmpl   $0x1,0x20(%r15)
   0.14%  ╭    0x00007fa9286408d8:   jne    0x00007fa928640f40           ;*synchronization entry
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@-1 (line 81)
   0.02%  │    0x00007fa9286408de:   mov    %rdi,%r14
   0.00%  │    0x00007fa9286408e1:   vmovq  %r9,%xmm9
   0.00%  │    0x00007fa9286408e6:   vmovq  %r8,%xmm8
   0.10%  │    0x00007fa9286408eb:   vmovq  %rcx,%xmm7
   0.03%  │    0x00007fa9286408f0:   vmovq  %rdx,%xmm6
   0.00%  │    0x00007fa9286408f5:   vmovq  %rsi,%xmm5
   0.00%  │    0x00007fa9286408fa:   mov    0x110(%rsp),%r10
   0.17%  │    0x00007fa928640902:   sar    $0x6,%r10
   0.02%  │    0x00007fa928640906:   mov    0x108(%rsp),%rcx
   0.00%  │    0x00007fa92864090e:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@24 (line 84)
   0.02%  │    0x00007fa928640911:   mov    0x110(%rsp),%r10
   0.10%  │    0x00007fa928640919:   shl    $0x14,%r10
   0.03%  │    0x00007fa92864091d:   mov    %rcx,%r11
          │    0x00007fa928640920:   shl    $0x4,%r11
   0.05%  │    0x00007fa928640924:   and    $0x3ffffff,%r10
   0.09%  │    0x00007fa92864092b:   mov    0x100(%rsp),%r9
   0.02%  │    0x00007fa928640933:   add    %r10,%r9
   0.02%  │    0x00007fa928640936:   and    $0x3ffffff,%r11
   0.03%  │    0x00007fa92864093d:   mov    0xb8(%rsp),%rdx
   0.07%  │    0x00007fa928640945:   add    %r11,%rdx
   0.09%  │    0x00007fa928640948:   mov    %rcx,%r10
   0.02%  │    0x00007fa92864094b:   sar    $0x4,%r10
   0.00%  │    0x00007fa92864094f:   mov    %r10,0xb8(%rsp)
   0.05%  │    0x00007fa928640957:   mov    %rcx,%r10
   0.07%  │    0x00007fa92864095a:   shl    $0xe,%r10
   0.02%  │    0x00007fa92864095e:   mov    %rcx,%r11
   0.00%  │    0x00007fa928640961:   sar    $0xc,%r11
   0.06%  │    0x00007fa928640965:   and    $0x3ffffff,%r10
   0.08%  │    0x00007fa92864096c:   mov    0xf0(%rsp),%rbx
   0.02%  │    0x00007fa928640974:   sub    %r10,%rbx
   0.00%  │    0x00007fa928640977:   mov    %rcx,%r8
   0.06%  │    0x00007fa92864097a:   shl    $0x14,%r8
   0.07%  │    0x00007fa92864097e:   vmovq  %rcx,%xmm0
   0.02%  │    0x00007fa928640983:   sar    $0x6,%rcx
   0.02%  │    0x00007fa928640987:   and    $0x3ffffff,%r8
   0.08%  │    0x00007fa92864098e:   vmovq  %xmm0,%rdi
   0.35%  │    0x00007fa928640993:   shl    $0x16,%rdi
   0.20%  │    0x00007fa928640997:   vmovq  %xmm0,%r10
          │    0x00007fa92864099c:   sar    $0x16,%r10
   0.10%  │    0x00007fa9286409a0:   mov    %r10,0xf0(%rsp)
   0.20%  │    0x00007fa9286409a8:   and    $0x3ffffff,%rdi
   0.02%  │    0x00007fa9286409af:   mov    0xd0(%rsp),%r10              ;   {no_reloc}
   0.00%  │    0x00007fa9286409b7:   sub    %rdi,%r10
   0.08%  │    0x00007fa9286409ba:   vmovq  %r10,%xmm10
   0.19%  │    0x00007fa9286409bf:   mov    0x110(%rsp),%r10
          │    0x00007fa9286409c7:   sar    $0xc,%r10
          │    0x00007fa9286409cb:   sub    %r10,%r9
   0.03%  │    0x00007fa9286409ce:   lea    (%r9,%rcx,1),%r10
   0.08%  │    0x00007fa9286409d2:   vmovq  %r10,%xmm1
   0.01%  │    0x00007fa9286409d7:   mov    0x110(%rsp),%r9
          │    0x00007fa9286409df:   shl    $0xe,%r9
   0.02%  │    0x00007fa9286409e3:   sar    $0x16,%r10
   0.12%  │    0x00007fa9286409e7:   lea    (%rdx,%r10,1),%rcx
   0.01%  │    0x00007fa9286409eb:   mov    %rcx,%rdi
          │    0x00007fa9286409ee:   and    $0x3ffffff,%r9
   0.02%  │    0x00007fa9286409f5:   mov    0xf8(%rsp),%rcx
   0.12%  │    0x00007fa9286409fd:   sub    %r9,%rcx
   0.02%  │    0x00007fa928640a00:   add    %r8,%rcx
   0.00%  │    0x00007fa928640a03:   sub    %r11,%rcx
   0.06%  │    0x00007fa928640a06:   vmovq  %xmm1,%r11
   0.12%  │    0x00007fa928640a0b:   shl    $0x4,%r11
   0.05%  │    0x00007fa928640a0f:   vmovq  %xmm1,%r8
          │    0x00007fa928640a14:   sar    $0xc,%r8
   0.06%  │    0x00007fa928640a18:   and    $0x3ffffff,%r11
   0.08%  │    0x00007fa928640a1f:   mov    0xb0(%rsp),%r10
   0.02%  │    0x00007fa928640a27:   add    %r11,%r10
   0.01%  │    0x00007fa928640a2a:   vmovq  %xmm1,%r9
   0.05%  │    0x00007fa928640a2f:   shl    $0x14,%r9
   0.09%  │    0x00007fa928640a33:   vmovq  %xmm1,%r11
   0.01%  │    0x00007fa928640a38:   sar    $0x6,%r11
   0.00%  │    0x00007fa928640a3c:   add    %r11,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@212 (line 102)
   0.07%  │    0x00007fa928640a3f:   vmovq  %rcx,%xmm2
   0.13%  │    0x00007fa928640a44:   and    $0x3ffffff,%r9
   0.00%  │    0x00007fa928640a4b:   add    %r9,%rbx
          │    0x00007fa928640a4e:   sub    %r8,%rbx
   0.06%  │    0x00007fa928640a51:   mov    %rcx,%r11
   0.10%  │    0x00007fa928640a54:   shl    $0x16,%r11
   0.01%  │    0x00007fa928640a58:   mov    %rcx,%r8
   0.00%  │    0x00007fa928640a5b:   sar    $0x16,%r8
   0.04%  │    0x00007fa928640a5f:   add    %r8,%r10
   0.10%  │    0x00007fa928640a62:   and    $0x3ffffff,%r11
   0.01%  │    0x00007fa928640a69:   mov    %rcx,%r9
          │    0x00007fa928640a6c:   shl    $0x4,%r9
   0.05%  │    0x00007fa928640a70:   mov    %rcx,%r8
   0.11%  │    0x00007fa928640a73:   shl    $0xe,%r8
   0.00%  │    0x00007fa928640a77:   and    $0x3ffffff,%r9
   0.00%  │    0x00007fa928640a7e:   mov    0xa8(%rsp),%rcx
   0.04%  │    0x00007fa928640a86:   add    %r9,%rcx
   0.09%  │    0x00007fa928640a89:   and    $0x3ffffff,%r8
   0.01%  │    0x00007fa928640a90:   vmovq  %xmm2,%r9
   0.00%  │    0x00007fa928640a95:   sar    $0x6,%r9
   0.10%  │    0x00007fa928640a99:   add    %r9,%rbx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@306 (line 111)
   0.21%  │    0x00007fa928640a9c:   vmovq  %rbx,%xmm3
   0.11%  │    0x00007fa928640aa1:   vmovq  %xmm2,%rdx
          │    0x00007fa928640aa6:   sar    $0xc,%rdx
   0.29%  │    0x00007fa928640aaa:   mov    %rbx,%r9
   0.03%  │    0x00007fa928640aad:   shl    $0x16,%r9
   0.14%  │    0x00007fa928640ab1:   and    $0x3ffffff,%r9               ;   {no_reloc}
   0.00%  │    0x00007fa928640ab8:   mov    %rdi,%rbx
   0.04%  │    0x00007fa928640abb:   sub    %r9,%rbx
   0.07%  │    0x00007fa928640abe:   vmovq  %rbx,%xmm11
   0.23%  │    0x00007fa928640ac3:   vmovq  %xmm3,%r9
   0.01%  │    0x00007fa928640ac8:   sar    $0x16,%r9
   0.39%  │    0x00007fa928640acc:   add    %r9,%rcx
   0.08%  │    0x00007fa928640acf:   vmovq  %rcx,%xmm12
   0.27%  │    0x00007fa928640ad4:   vmovq  %xmm3,%r9
          │    0x00007fa928640ad9:   shl    $0x4,%r9
   0.07%  │    0x00007fa928640add:   and    $0x3ffffff,%r9
   0.02%  │    0x00007fa928640ae4:   mov    0xa0(%rsp),%rcx
   0.08%  │    0x00007fa928640aec:   add    %r9,%rcx
   0.03%  │    0x00007fa928640aef:   vmovq  %rcx,%xmm13
   0.12%  │    0x00007fa928640af4:   vmovq  %xmm3,%r9
   0.00%  │    0x00007fa928640af9:   sar    $0xc,%r9
   0.21%  │    0x00007fa928640afd:   vmovq  %xmm3,%rcx
   0.00%  │    0x00007fa928640b02:   shl    $0x14,%rcx
   0.08%  │    0x00007fa928640b06:   and    $0x3ffffff,%rcx
   0.00%  │    0x00007fa928640b0d:   vmovq  %xmm3,%rsi
   0.06%  │    0x00007fa928640b12:   sar    $0x6,%rsi
   0.00%  │    0x00007fa928640b16:   vmovq  %xmm3,%rbx
   0.06%  │    0x00007fa928640b1b:   sar    $0x4,%rbx
   0.01%  │    0x00007fa928640b1f:   vmovq  %xmm2,%rax
   0.08%  │    0x00007fa928640b24:   shl    $0x14,%rax
   0.00%  │    0x00007fa928640b28:   and    $0x3ffffff,%rax
   0.07%  │    0x00007fa928640b2e:   vmovq  %xmm2,%rdi
   0.00%  │    0x00007fa928640b33:   sar    $0x4,%rdi
   0.08%  │    0x00007fa928640b37:   vmovq  %xmm1,%rbp
          │    0x00007fa928640b3c:   shl    $0xe,%rbp
   0.07%  │    0x00007fa928640b40:   and    $0x3ffffff,%rbp
   0.00%  │    0x00007fa928640b47:   mov    0xe8(%rsp),%r13
   0.09%  │    0x00007fa928640b4f:   sub    %rbp,%r13
   0.00%  │    0x00007fa928640b52:   add    %rax,%r13
   0.04%  │    0x00007fa928640b55:   sub    %rdx,%r13
   0.00%  │    0x00007fa928640b58:   add    %rsi,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@400 (line 120)
   0.10%  │    0x00007fa928640b5b:   vmovq  %r13,%xmm4
   0.01%  │    0x00007fa928640b60:   vmovq  %xmm1,%rdx
   0.05%  │    0x00007fa928640b65:   sar    $0x4,%rdx
          │    0x00007fa928640b69:   vmovq  %xmm10,%rsi
   0.08%  │    0x00007fa928640b6e:   sub    %rdx,%rsi
   0.01%  │    0x00007fa928640b71:   mov    %rsi,%r13
   0.10%  │    0x00007fa928640b74:   vmovq  %xmm4,%rdx
   0.00%  │    0x00007fa928640b79:   shl    $0x16,%rdx
   0.20%  │    0x00007fa928640b7d:   and    $0x3ffffff,%rdx
   0.04%  │    0x00007fa928640b84:   sub    %rdx,%r10
   0.08%  │    0x00007fa928640b87:   vmovq  %xmm4,%rdx
   0.00%  │    0x00007fa928640b8c:   sar    $0x16,%rdx
   0.14%  │    0x00007fa928640b90:   vmovq  %xmm13,%rsi
          │    0x00007fa928640b95:   add    %rdx,%rsi
   0.09%  │    0x00007fa928640b98:   vmovq  %rsi,%xmm10
   0.02%  │    0x00007fa928640b9d:   vmovq  %xmm4,%rdx
   0.10%  │    0x00007fa928640ba2:   shl    $0x4,%rdx
   0.00%  │    0x00007fa928640ba6:   and    $0x3ffffff,%rdx
   0.07%  │    0x00007fa928640bad:   lea    (%r14,%rdx,1),%rsi
   0.02%  │    0x00007fa928640bb1:   vmovq  %rsi,%xmm13                  ;   {no_reloc}
   0.10%  │    0x00007fa928640bb6:   vmovq  %xmm4,%rdx
          │    0x00007fa928640bbb:   sar    $0xc,%rdx
   0.09%  │    0x00007fa928640bbf:   vmovq  %xmm4,%rsi
   0.01%  │    0x00007fa928640bc4:   shl    $0x14,%rsi
   0.12%  │    0x00007fa928640bc8:   and    $0x3ffffff,%rsi
   0.02%  │    0x00007fa928640bcf:   vmovq  %xmm4,%rax
   0.04%  │    0x00007fa928640bd4:   sar    $0x6,%rax
   0.01%  │    0x00007fa928640bd8:   vmovq  %xmm4,%rbp
   0.07%  │    0x00007fa928640bdd:   shl    $0xe,%rbp
   0.02%  │    0x00007fa928640be1:   and    $0x3ffffff,%rbp
   0.07%  │    0x00007fa928640be8:   sub    %rbp,%r13
   0.01%  │    0x00007fa928640beb:   vmovq  %r13,%xmm14
   0.08%  │    0x00007fa928640bf0:   vmovq  %xmm4,%rbp
   0.01%  │    0x00007fa928640bf5:   sar    $0x4,%rbp
   0.05%  │    0x00007fa928640bf9:   vmovq  %xmm11,%r13
   0.01%  │    0x00007fa928640bfe:   sub    %rbp,%r13
   0.06%  │    0x00007fa928640c01:   vmovq  %r13,%xmm11
   0.02%  │    0x00007fa928640c06:   vmovq  %xmm1,%rbp
   0.06%  │    0x00007fa928640c0b:   shl    $0x16,%rbp
   0.01%  │    0x00007fa928640c0f:   and    $0x3ffffff,%rbp
   0.08%  │    0x00007fa928640c16:   mov    0x110(%rsp),%r13
   0.02%  │    0x00007fa928640c1e:   sar    $0x4,%r13
   0.05%  │    0x00007fa928640c22:   mov    0xe0(%rsp),%r14
   0.01%  │    0x00007fa928640c2a:   sub    %r13,%r14
   0.06%  │    0x00007fa928640c2d:   sub    %r8,%r14
   0.03%  │    0x00007fa928640c30:   add    %rcx,%r14
   0.05%  │    0x00007fa928640c33:   sub    %r9,%r14
   0.01%  │    0x00007fa928640c36:   add    %rax,%r14                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@494 (line 129)
   0.08%  │    0x00007fa928640c39:   mov    0x110(%rsp),%r8
   0.03%  │    0x00007fa928640c41:   shl    $0x16,%r8
   0.06%  │    0x00007fa928640c45:   and    $0x3ffffff,%r8
   0.00%  │    0x00007fa928640c4c:   mov    0xd8(%rsp),%r9
   0.06%  │    0x00007fa928640c54:   sub    %r8,%r9
   0.02%  │    0x00007fa928640c57:   sub    0xb8(%rsp),%r9
   0.06%  │    0x00007fa928640c5f:   mov    %r14,%r8
   0.01%  │    0x00007fa928640c62:   sar    $0x4,%r8
   0.06%  │    0x00007fa928640c66:   sub    %r8,%r10                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@635 (line 142)
   0.01%  │    0x00007fa928640c69:   mov    %r10,%r13
   0.07%  │    0x00007fa928640c6c:   mov    %r14,%r10
          │    0x00007fa928640c6f:   shl    $0x16,%r10
   0.05%  │    0x00007fa928640c73:   and    $0x3ffffff,%r10
   0.02%  │    0x00007fa928640c7a:   vmovq  %xmm12,%r8
   0.05%  │    0x00007fa928640c7f:   sub    %r10,%r8
   0.01%  │    0x00007fa928640c82:   vmovq  %r8,%xmm12
   0.09%  │    0x00007fa928640c87:   mov    %r14,%r10
   0.03%  │    0x00007fa928640c8a:   sar    $0x16,%r10
   0.06%  │    0x00007fa928640c8e:   vmovq  %xmm13,%r8
   0.01%  │    0x00007fa928640c93:   add    %r10,%r8
   0.06%  │    0x00007fa928640c96:   vmovq  %r8,%xmm13
   0.02%  │    0x00007fa928640c9b:   mov    %r14,%r10
   0.05%  │    0x00007fa928640c9e:   shl    $0x4,%r10
   0.01%  │    0x00007fa928640ca2:   and    $0x3ffffff,%r10
   0.06%  │    0x00007fa928640ca9:   vmovq  %xmm9,%r8
   0.03%  │    0x00007fa928640cae:   add    %r10,%r8                     ;   {no_reloc}
   0.07%  │    0x00007fa928640cb1:   vmovq  %r8,%xmm9
   0.01%  │    0x00007fa928640cb6:   mov    %r14,%rcx
   0.09%  │    0x00007fa928640cb9:   sar    $0x6,%rcx
   0.03%  │    0x00007fa928640cbd:   mov    %r14,%r10
   0.05%  │    0x00007fa928640cc0:   sar    $0xc,%r10
   0.00%  │    0x00007fa928640cc4:   mov    %r14,%r8
   0.05%  │    0x00007fa928640cc7:   shl    $0x14,%r8
   0.02%  │    0x00007fa928640ccb:   and    $0x3ffffff,%r8
   0.05%  │    0x00007fa928640cd2:   vmovq  %xmm14,%rax
   0.01%  │    0x00007fa928640cd7:   add    %r8,%rax
   0.08%  │    0x00007fa928640cda:   sub    %r10,%rax
   0.03%  │    0x00007fa928640cdd:   vmovq  %rax,%xmm14
   0.06%  │    0x00007fa928640ce2:   mov    %r14,%r10
   0.01%  │    0x00007fa928640ce5:   shl    $0xe,%r10
   0.07%  │    0x00007fa928640ce9:   and    $0x3ffffff,%r10
   0.01%  │    0x00007fa928640cf0:   mov    0x110(%rsp),%r8
   0.07%  │    0x00007fa928640cf8:   shl    $0x4,%r8
   0.01%  │    0x00007fa928640cfc:   and    $0x3ffffff,%r8
   0.04%  │    0x00007fa928640d03:   mov    0xc0(%rsp),%rax
   0.02%  │    0x00007fa928640d0b:   add    %r8,%rax
   0.06%  │    0x00007fa928640d0e:   add    0xf0(%rsp),%rax
   0.01%  │    0x00007fa928640d16:   sub    %r11,%rax
   0.06%  │    0x00007fa928640d19:   sub    %rbx,%rax
   0.03%  │    0x00007fa928640d1c:   mov    0x110(%rsp),%r11
   0.06%  │    0x00007fa928640d24:   sar    $0x16,%r11
   0.01%  │    0x00007fa928640d28:   mov    0xc8(%rsp),%r8
   0.06%  │    0x00007fa928640d30:   add    %r11,%r8
   0.03%  │    0x00007fa928640d33:   sub    %rbp,%r8
   0.06%  │    0x00007fa928640d36:   sub    %rdi,%r8
   0.01%  │    0x00007fa928640d39:   sub    %r10,%r8
   0.06%  │    0x00007fa928640d3c:   vmovq  %xmm3,%r10
   0.01%  │    0x00007fa928640d41:   shl    $0xe,%r10
   0.06%  │    0x00007fa928640d45:   and    $0x3ffffff,%r10
   0.00%  │    0x00007fa928640d4c:   sub    %r10,%r9
   0.06%  │    0x00007fa928640d4f:   add    %rsi,%r9
   0.02%  │    0x00007fa928640d52:   sub    %rdx,%r9
   0.06%  │    0x00007fa928640d55:   lea    (%r9,%rcx,1),%r10
   0.01%  │    0x00007fa928640d59:   mov    %r10,%r11
   0.06%  │    0x00007fa928640d5c:   sar    $0xc,%r11
   0.04%  │    0x00007fa928640d60:   mov    %r10,%r9
   0.05%  │    0x00007fa928640d63:   shl    $0x14,%r9
   0.01%  │    0x00007fa928640d67:   and    $0x3ffffff,%r9
   0.08%  │    0x00007fa928640d6e:   add    %r9,%r8
   0.04%  │    0x00007fa928640d71:   sub    %r11,%r8
   0.08%  │    0x00007fa928640d74:   mov    %r10,%r11
   0.00%  │    0x00007fa928640d77:   shl    $0xe,%r11
   0.05%  │    0x00007fa928640d7b:   and    $0x3ffffff,%r11
   0.03%  │    0x00007fa928640d82:   sub    %r11,%rax
   0.06%  │    0x00007fa928640d85:   mov    %r10,%r11
   0.00%  │    0x00007fa928640d88:   sar    $0x4,%r11
   0.06%  │    0x00007fa928640d8c:   vmovq  %xmm12,%r9
   0.03%  │    0x00007fa928640d91:   sub    %r11,%r9                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@729 (line 151)
   0.08%  │    0x00007fa928640d94:   mov    %r9,%rbx
   0.01%  │    0x00007fa928640d97:   mov    %r10,%r11
   0.05%  │    0x00007fa928640d9a:   shl    $0x16,%r11
   0.03%  │    0x00007fa928640d9e:   and    $0x3ffffff,%r11
   0.08%  │    0x00007fa928640da5:   vmovq  %xmm10,%r9
   0.00%  │    0x00007fa928640daa:   sub    %r11,%r9
   0.05%  │    0x00007fa928640dad:   mov    %r9,%rcx                     ;   {no_reloc}
   0.02%  │    0x00007fa928640db0:   mov    %r10,%r11
   0.08%  │    0x00007fa928640db3:   sar    $0x16,%r11
   0.01%  │    0x00007fa928640db7:   vmovq  %xmm9,%r9
   0.05%  │    0x00007fa928640dbc:   add    %r11,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@752 (line 153)
   0.03%  │    0x00007fa928640dbf:   mov    %r9,%rbp
   0.07%  │    0x00007fa928640dc2:   mov    %r10,%r11
          │    0x00007fa928640dc5:   shl    $0x4,%r11
   0.07%  │    0x00007fa928640dc9:   and    $0x3ffffff,%r11
   0.02%  │    0x00007fa928640dd0:   vmovq  %xmm8,%r9
   0.06%  │    0x00007fa928640dd5:   add    %r11,%r9
   0.01%  │    0x00007fa928640dd8:   mov    %r9,%rdx
   0.05%  │    0x00007fa928640ddb:   mov    %r10,%r11
   0.02%  │    0x00007fa928640dde:   sar    $0x6,%r11
   0.06%  │    0x00007fa928640de2:   vmovq  %xmm14,%r9
   0.01%  │    0x00007fa928640de7:   add    %r11,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@682 (line 147)
   0.05%  │    0x00007fa928640dea:   mov    %r9,%rsi
   0.02%  │    0x00007fa928640ded:   mov    %r9,%r11
   0.06%  │    0x00007fa928640df0:   sar    $0x6,%r11
   0.01%  │    0x00007fa928640df4:   add    %r11,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@776 (line 156)
   0.05%  │    0x00007fa928640df7:   mov    %r8,%rdi
   0.02%  │    0x00007fa928640dfa:   mov    %r9,%r11
   0.08%  │    0x00007fa928640dfd:   sar    $0xc,%r11
   0.01%  │    0x00007fa928640e01:   mov    %r9,%r8
   0.06%  │    0x00007fa928640e04:   shl    $0x14,%r8
   0.02%  │    0x00007fa928640e08:   and    $0x3ffffff,%r8
   0.08%  │    0x00007fa928640e0f:   add    %r8,%rax
   0.01%  │    0x00007fa928640e12:   sub    %r11,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@800 (line 158)
   0.06%  │    0x00007fa928640e15:   mov    %r9,%r11
   0.02%  │    0x00007fa928640e18:   shl    $0xe,%r11
   0.06%  │    0x00007fa928640e1c:   and    $0x3ffffff,%r11
   0.01%  │    0x00007fa928640e23:   vmovq  %xmm11,%r8
   0.08%  │    0x00007fa928640e28:   sub    %r11,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@790 (line 157)
   0.01%  │    0x00007fa928640e2b:   mov    %r9,%r11
   0.07%  │    0x00007fa928640e2e:   sar    $0x4,%r11
   0.01%  │    0x00007fa928640e32:   mov    %rcx,%r9
   0.06%  │    0x00007fa928640e35:   sub    %r11,%r9                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@823 (line 160)
   0.01%  │    0x00007fa928640e38:   mov    %rsi,%r11
   0.09%  │    0x00007fa928640e3b:   shl    $0x16,%r11
   0.00%  │    0x00007fa928640e3f:   and    $0x3ffffff,%r11
   0.06%  │    0x00007fa928640e46:   vmovq  %xmm13,%rcx
   0.03%  │    0x00007fa928640e4b:   sub    %r11,%rcx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@814 (line 159)
   0.06%  │    0x00007fa928640e4e:   vmovq  %rcx,%xmm8
   0.01%  │    0x00007fa928640e53:   mov    %rsi,%r11
   0.07%  │    0x00007fa928640e56:   sar    $0x16,%r11
   0.02%  │    0x00007fa928640e5a:   lea    (%rdx,%r11,1),%rcx
   0.06%  │    0x00007fa928640e5e:   vmovq  %rcx,%xmm9
   0.01%  │    0x00007fa928640e63:   mov    %rsi,%rcx
   0.05%  │    0x00007fa928640e66:   shl    $0x4,%rcx
   0.03%  │    0x00007fa928640e6a:   and    $0x3ffffff,%rcx
   0.06%  │    0x00007fa928640e71:   vmovq  %xmm7,%r11
   0.01%  │    0x00007fa928640e76:   add    %rcx,%r11                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@835 (line 161)
   0.04%  │    0x00007fa928640e79:   mov    %r9,(%rsp)
   0.03%  │    0x00007fa928640e7d:   mov    %rbx,0x8(%rsp)
   0.08%  │    0x00007fa928640e82:   mov    %r13,0x10(%rsp)
   0.01%  │    0x00007fa928640e87:   mov    %r8,0x18(%rsp)
   0.05%  │    0x00007fa928640e8c:   mov    %rax,0x20(%rsp)
   0.02%  │    0x00007fa928640e91:   mov    %rdi,0x28(%rsp)
   0.08%  │    0x00007fa928640e96:   xor    %r8d,%r8d
   0.01%  │    0x00007fa928640e99:   mov    %r8,0x30(%rsp)
   0.06%  │    0x00007fa928640e9e:   mov    %r10,0x38(%rsp)
   0.02%  │    0x00007fa928640ea3:   mov    %r14,0x40(%rsp)
   0.07%  │    0x00007fa928640ea8:   vmovsd %xmm4,0x48(%rsp)
   0.01%  │    0x00007fa928640eae:   vmovsd %xmm3,0x50(%rsp)             ;   {no_reloc}
   0.07%  │    0x00007fa928640eb4:   vmovsd %xmm2,0x58(%rsp)
   0.02%  │    0x00007fa928640eba:   vmovsd %xmm1,0x60(%rsp)
   0.07%  │    0x00007fa928640ec0:   vmovsd %xmm0,0x68(%rsp)
   0.01%  │    0x00007fa928640ec6:   mov    0x110(%rsp),%r10
   0.06%  │    0x00007fa928640ece:   mov    %r10,0x70(%rsp)
   0.02%  │    0x00007fa928640ed3:   xor    %r10d,%r10d
   0.09%  │    0x00007fa928640ed6:   mov    %r10,0x78(%rsp)
   0.01%  │    0x00007fa928640edb:   vmovq  %xmm5,%rsi
   0.05%  │    0x00007fa928640ee0:   vmovq  %xmm6,%rdx
   0.02%  │    0x00007fa928640ee5:   mov    %r11,%rcx
   0.07%  │    0x00007fa928640ee8:   vmovq  %xmm9,%r8
   0.00%  │    0x00007fa928640eed:   mov    %rbp,%r9
   0.07%  │    0x00007fa928640ef0:   vmovq  %xmm8,%rdi
   0.02%  │    0x00007fa928640ef5:   xchg   %ax,%ax
   0.06%  │    0x00007fa928640ef7:   call   0x00007fa92863da40           ; ImmutableOopMap {}
          │                                                              ;*invokevirtual carryReduce0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │                                                              ;   {optimized virtual_call}
   0.03%  │    0x00007fa928640efc:   nopl   0x7ec(%rax,%rax,1)           ;   {other}
   0.04%  │    0x00007fa928640f04:   add    $0x90,%rsp
   0.06%  │    0x00007fa928640f0b:   pop    %rbp
   0.04%  │ ↗  0x00007fa928640f0c:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭│  0x00007fa928640f13:   ja     0x00007fa928640f2a
   0.05%  │││  0x00007fa928640f19:   ret                                 ;*invokevirtual carryReduce0 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │││  0x00007fa928640f1a:   mov    %rax,%rsi
          │││  0x00007fa928640f1d:   add    $0x90,%rsp
          │││  0x00007fa928640f24:   pop    %rbp
          │││  0x00007fa928640f25:   jmp    0x00007fa92819d380           ;   {runtime_call _rethrow_Java}
          │↘╰  0x00007fa928640f2a:   movabs $0x7fa928640f0c,%r10         ;   {internal_word}
          │    0x00007fa928640f34:   mov    %r10,0x468(%r15)
          │    0x00007fa928640f3b:   jmp    0x00007fa9280cb000           ;   {runtime_call SafepointBlob}
          ↘    0x00007fa928640f40:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
               0x00007fa928640f45:   jmp    0x00007fa9286408de
....................................................................................................
  16.91%  <total for region 2>

....[Hottest Regions]...............................................................................
  18.94%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::mult, version 2, compile id 641 
  16.91%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce, version 2, compile id 640 
   7.32%         c2, level 4  sun.security.util.math.intpoly.P256OrderField::carryReduce0, version 2, compile id 743 
   5.70%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0, version 2, compile id 621 
   4.82%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier::lookup, version 2, compile id 679 
   4.17%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   3.74%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::square, version 2, compile id 659 
   3.45%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier::lookup, version 2, compile id 679 
   3.19%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier::lookup, version 2, compile id 679 
   3.12%         c2, level 4  sun.security.util.math.intpoly.P256OrderField::square, version 2, compile id 745 
   2.11%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce, version 2, compile id 639 
   1.83%         c2, level 4  sun.security.util.math.intpoly.P256OrderField::carryReduce, version 2, compile id 736 
   1.49%         c2, level 4  sun.security.util.math.intpoly.P256OrderField::carryReduce2, version 2, compile id 721 
   1.38%         c2, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 766 
   0.81%         c2, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 766 
   0.66%         c2, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 766 
   0.56%         c2, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 766 
   0.56%         c2, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Secp256R1::inverse, version 2, compile id 874 
   0.56%         c2, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 766 
   0.55%         c2, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 766 
  18.11%  <...other 1017 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  18.94%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::mult, version 2, compile id 641 
  16.91%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce, version 2, compile id 640 
  12.75%         c2, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 766 
  12.09%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier::lookup, version 2, compile id 679 
   7.32%         c2, level 4  sun.security.util.math.intpoly.P256OrderField::carryReduce0, version 2, compile id 743 
   5.70%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0, version 2, compile id 621 
   4.17%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   3.74%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::square, version 2, compile id 659 
   3.12%         c2, level 4  sun.security.util.math.intpoly.P256OrderField::square, version 2, compile id 745 
   2.11%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce, version 2, compile id 639 
   2.05%         c2, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 681 
   1.83%         c2, level 4  sun.security.util.math.intpoly.P256OrderField::carryReduce, version 2, compile id 736 
   1.49%         c2, level 4  sun.security.util.math.intpoly.P256OrderField::carryReduce2, version 2, compile id 721 
   1.43%              kernel  [unknown] 
   1.14%         c2, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Secp256R1Field::inverse, version 4, compile id 911 
   0.82%         c2, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Secp256R1::inverse, version 2, compile id 874 
   0.78%         c2, level 4  sun.security.util.math.intpoly.P256OrderField::mult, version 2, compile id 816 
   0.43%        runtime stub  StubRoutines::sha256_implCompressMB 
   0.40%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark::sign, version 2, compile id 1084 
   0.39%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier$Secp256R1GeneratorMultiplier::pointMultiply, version 3, compile id 956 
   2.37%  <...other 125 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  93.34%         c2, level 4
   4.83%        runtime stub
   1.43%              kernel
   0.18%           libjvm.so
   0.09%        libc-2.31.so
   0.03%                    
   0.03%              [vdso]
   0.02%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.02%          ld-2.31.so
   0.01%         interpreter
   0.00%         c1, level 3
   0.00%    perf-1933626.map
   0.00%    Unknown, level 0
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign
# Parameters: (algorithm = secp256r1, messageLength = 2048)

# Run progress: 16.67% complete, ETA 00:18:58
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 866.034 us/op
# Warmup Iteration   2: 378.245 us/op
# Warmup Iteration   3: 346.631 us/op
# Warmup Iteration   4: 346.013 us/op
# Warmup Iteration   5: 346.001 us/op
Iteration   1: 346.139 us/op
Iteration   2: 346.551 us/op
Iteration   3: 347.697 us/op
Iteration   4: 346.963 us/op
Iteration   5: 345.968 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign":
  346.664 ±(99.9%) 2.675 us/op [Average]
  (min, avg, max) = (345.968, 346.664, 347.697), stdev = 0.695
  CI (99.9%): [343.988, 349.339] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign:asm":
PrintAssembly processed: 326730 total address lines.
Perf output processed (skipped 59.841 seconds):
 Column 1: cycles (50471 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, sun.security.util.math.intpoly.IntegerPolynomialP256::mult, version 2, compile id 649 

             # parm2:    r8:r8     = &apos;[J&apos;
             #           [sp+0x270]  (sp of caller)
             0x00007f920c641840:   mov    0x8(%rsi),%r10d
             0x00007f920c641844:   movabs $0x7f918f000000,%r11
             0x00007f920c64184e:   add    %r11,%r10
             0x00007f920c641851:   cmp    %r10,%rax
             0x00007f920c641854:   jne    0x00007f920c0c4080           ;   {runtime_call ic_miss_stub}
             0x00007f920c64185a:   xchg   %ax,%ax
             0x00007f920c64185c:   nopl   0x0(%rax)
           [Verified Entry Point]
   0.04%     0x00007f920c641860:   mov    %eax,-0x14000(%rsp)
   0.12%     0x00007f920c641867:   push   %rbp
   0.00%     0x00007f920c641868:   sub    $0x260,%rsp
   0.04%     0x00007f920c64186f:   nop
   0.04%     0x00007f920c641870:   cmpl   $0x0,0x20(%r15)
   0.01%     0x00007f920c641878:   jne    0x00007f920c64230a           ;*synchronization entry
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@-1 (line 303)
   0.04%     0x00007f920c64187e:   vmovq  %r8,%xmm0
   0.00%     0x00007f920c641883:   mov    0xc(%rdx),%r10d              ; implicit exception: dispatches to 0x00007f920c6422cc
   0.06%     0x00007f920c641887:   cmp    $0x9,%r10d
          ╭  0x00007f920c64188b:   jbe    0x00007f920c64225a
   0.02%  │  0x00007f920c641891:   mov    0xc(%rcx),%r11d              ; implicit exception: dispatches to 0x00007f920c6422e0
   0.04%  │  0x00007f920c641895:   mov    0x10(%rdx),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@2 (line 303)
   0.00%  │  0x00007f920c641899:   nopl   0x0(%rax)
   0.09%  │  0x00007f920c6418a0:   cmp    $0x9,%r11d
          │  0x00007f920c6418a4:   jbe    0x00007f920c642288
   0.01%  │  0x00007f920c6418aa:   vmovq  %rsi,%xmm6
   0.03%  │  0x00007f920c6418af:   vmovq  %rcx,%xmm1
          │  0x00007f920c6418b4:   mov    0x10(%rcx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@5 (line 303)
   0.08%  │  0x00007f920c6418b8:   mov    0x18(%rdx),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@18 (line 304)
   0.01%  │  0x00007f920c6418bc:   vmovq  %r10,%xmm5
   0.04%  │  0x00007f920c6418c1:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@6 (line 303)
   0.01%  │  0x00007f920c6418c5:   vmovq  %r10,%xmm7
   0.07%  │  0x00007f920c6418ca:   mov    %r11,%rdi
   0.01%  │  0x00007f920c6418cd:   mov    %r8,0x78(%rsp)
   0.05%  │  0x00007f920c6418d2:   imul   %r8,%rdi
          │  0x00007f920c6418d6:   mov    0x20(%rdx),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@43 (line 305)
   0.09%  │  0x00007f920c6418da:   mov    0x28(%rdx),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@76 (line 306)
   0.00%  │  0x00007f920c6418de:   mov    %r11,%rsi
   0.03%  │  0x00007f920c6418e1:   mov    %r10,0x80(%rsp)
   0.01%  │  0x00007f920c6418e9:   imul   %r10,%rsi
   0.08%  │  0x00007f920c6418ed:   mov    %r11,%r10
   0.00%  │  0x00007f920c6418f0:   mov    %r8,0x88(%rsp)
   0.02%  │  0x00007f920c6418f8:   imul   %r8,%r11
   0.02%  │  0x00007f920c6418fc:   mov    %r11,0x90(%rsp)
   0.08%  │  0x00007f920c641904:   mov    0x30(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@117 (line 307)
   0.01%  │  0x00007f920c641908:   mov    %r11,0x98(%rsp)
   0.03%  │  0x00007f920c641910:   mov    0x38(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@166 (line 308)
   0.01%  │  0x00007f920c641914:   mov    %r11,0xa0(%rsp)
   0.08%  │  0x00007f920c64191c:   mov    %r10,%r13
   0.01%  │  0x00007f920c64191f:   imul   0x98(%rsp),%r13
   0.14%  │  0x00007f920c641928:   mov    %r10,%r11
          │  0x00007f920c64192b:   imul   0xa0(%rsp),%r11
   0.12%  │  0x00007f920c641934:   mov    %r11,0xa8(%rsp)
   0.23%  │  0x00007f920c64193c:   mov    0x40(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@225 (line 309)
   0.00%  │  0x00007f920c641940:   mov    %r11,0xb0(%rsp)
          │  0x00007f920c641948:   mov    0x48(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@294 (line 310)
   0.01%  │  0x00007f920c64194c:   mov    %r11,0xb8(%rsp)              ;   {no_reloc}
   0.09%  │  0x00007f920c641954:   mov    %r10,%r11
   0.00%  │  0x00007f920c641957:   imul   0xb0(%rsp),%r11
   0.04%  │  0x00007f920c641960:   mov    %r11,0xc0(%rsp)
   0.11%  │  0x00007f920c641968:   mov    %r10,%r11
   0.03%  │  0x00007f920c64196b:   imul   0xb8(%rsp),%r11
   0.07%  │  0x00007f920c641974:   mov    %r11,0xc8(%rsp)
   0.13%  │  0x00007f920c64197c:   mov    0x50(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@373 (line 311)
   0.02%  │  0x00007f920c641980:   mov    %r11,0xd0(%rsp)
   0.01%  │  0x00007f920c641988:   mov    0x58(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@462 (line 312)
   0.00%  │  0x00007f920c64198c:   mov    %r11,0xd8(%rsp)
   0.09%  │  0x00007f920c641994:   mov    %r10,%r11
   0.02%  │  0x00007f920c641997:   imul   0xd0(%rsp),%r11
   0.04%  │  0x00007f920c6419a0:   mov    %r11,0xe0(%rsp)
   0.19%  │  0x00007f920c6419a8:   imul   0xd8(%rsp),%r10
   0.03%  │  0x00007f920c6419b1:   mov    %r10,0xe8(%rsp)
   0.11%  │  0x00007f920c6419b9:   mov    0x18(%rcx),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@14 (line 304)
   0.00%  │  0x00007f920c6419bd:   vmovq  %xmm1,%r10
   0.01%  │  0x00007f920c6419c2:   mov    0x20(%r10),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@31 (line 305)
   0.01%  │  0x00007f920c6419c6:   mov    %rcx,%r10
   0.09%  │  0x00007f920c6419c9:   imul   0xd8(%rsp),%r10
   0.00%  │  0x00007f920c6419d2:   mov    %r10,0xf0(%rsp)
   0.04%  │  0x00007f920c6419da:   mov    %r8,%r10
   0.00%  │  0x00007f920c6419dd:   imul   0xd8(%rsp),%r10
   0.04%  │  0x00007f920c6419e6:   mov    %r10,0xf8(%rsp)
   0.02%  │  0x00007f920c6419ee:   mov    %r8,%r10
   0.04%  │  0x00007f920c6419f1:   imul   0xd0(%rsp),%r10
   0.00%  │  0x00007f920c6419fa:   mov    %r10,0x100(%rsp)
   0.07%  │  0x00007f920c641a02:   mov    %r8,%r10
   0.01%  │  0x00007f920c641a05:   imul   0xb8(%rsp),%r10
   0.04%  │  0x00007f920c641a0e:   mov    %r10,0x108(%rsp)
   0.01%  │  0x00007f920c641a16:   mov    %r8,%r10
   0.05%  │  0x00007f920c641a19:   imul   0xb0(%rsp),%r10
   0.01%  │  0x00007f920c641a22:   mov    %r10,0x110(%rsp)
   0.03%  │  0x00007f920c641a2a:   mov    %r8,%r10
   0.01%  │  0x00007f920c641a2d:   imul   0xa0(%rsp),%r10
   0.07%  │  0x00007f920c641a36:   mov    %r10,0x118(%rsp)
   0.01%  │  0x00007f920c641a3e:   mov    %r8,%r10
   0.03%  │  0x00007f920c641a41:   imul   0x98(%rsp),%r10
   0.01%  │  0x00007f920c641a4a:   mov    %r10,0x120(%rsp)
   0.08%  │  0x00007f920c641a52:   mov    %r8,%r10                     ;   {no_reloc}
   0.00%  │  0x00007f920c641a55:   imul   0x88(%rsp),%r10
   0.04%  │  0x00007f920c641a5e:   mov    %r10,0x128(%rsp)
   0.03%  │  0x00007f920c641a66:   mov    %r8,%r10
   0.04%  │  0x00007f920c641a69:   imul   0x80(%rsp),%r10
   0.00%  │  0x00007f920c641a72:   mov    0x78(%rsp),%r11
   0.03%  │  0x00007f920c641a77:   imul   %r8,%r11
   0.05%  │  0x00007f920c641a7b:   vmovq  %xmm5,%r9
   0.03%  │  0x00007f920c641a80:   imul   %r8,%r9
   0.00%  │  0x00007f920c641a84:   mov    %r9,%rax
   0.04%  │  0x00007f920c641a87:   mov    %rcx,%r8
   0.03%  │  0x00007f920c641a8a:   imul   0xd0(%rsp),%r8
   0.04%  │  0x00007f920c641a93:   mov    %r8,0x130(%rsp)
   0.20%  │  0x00007f920c641a9b:   mov    %rcx,%r8
          │  0x00007f920c641a9e:   imul   0xb8(%rsp),%r8
   0.00%  │  0x00007f920c641aa7:   mov    %r8,0x138(%rsp)
   0.14%  │  0x00007f920c641aaf:   mov    %rcx,%r8
   0.00%  │  0x00007f920c641ab2:   imul   0xb0(%rsp),%r8
   0.00%  │  0x00007f920c641abb:   mov    %r8,0x140(%rsp)
   0.13%  │  0x00007f920c641ac3:   mov    %rcx,%rdx
   0.00%  │  0x00007f920c641ac6:   imul   0xa0(%rsp),%rdx
          │  0x00007f920c641acf:   mov    %rcx,%r8
   0.00%  │  0x00007f920c641ad2:   imul   0x98(%rsp),%r8
   0.11%  │  0x00007f920c641adb:   mov    %r8,0x148(%rsp)
   0.07%  │  0x00007f920c641ae3:   mov    %rcx,%r8
   0.00%  │  0x00007f920c641ae6:   imul   0x88(%rsp),%r8
          │  0x00007f920c641aef:   mov    %rcx,%r9
   0.02%  │  0x00007f920c641af2:   imul   0x80(%rsp),%r9
   0.11%  │  0x00007f920c641afb:   mov    %rcx,%rbx
          │  0x00007f920c641afe:   imul   0x78(%rsp),%rbx
          │  0x00007f920c641b04:   add    %rbx,%rax
   0.14%  │  0x00007f920c641b07:   add    %rsi,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@48 (line 305)
   0.11%  │  0x00007f920c641b0a:   vmovq  %rax,%xmm8
   0.25%  │  0x00007f920c641b0f:   vmovq  %xmm5,%rbx
          │  0x00007f920c641b14:   imul   %rcx,%rbx
          │  0x00007f920c641b18:   add    %rdi,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@23 (line 304)
          │  0x00007f920c641b1b:   vmovq  %rbx,%xmm9
   0.16%  │  0x00007f920c641b20:   vmovq  %xmm1,%rcx
          │  0x00007f920c641b25:   mov    0x28(%rcx),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@56 (line 306)
   0.00%  │  0x00007f920c641b29:   vmovq  %xmm1,%rbx
          │  0x00007f920c641b2e:   mov    0x30(%rbx),%rdi              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@89 (line 307)
   0.13%  │  0x00007f920c641b32:   mov    %rcx,%rbx
          │  0x00007f920c641b35:   imul   0xd8(%rsp),%rbx
   0.01%  │  0x00007f920c641b3e:   mov    %rbx,0x150(%rsp)
   0.00%  │  0x00007f920c641b46:   mov    %rdi,%rbx
   0.10%  │  0x00007f920c641b49:   imul   0xd8(%rsp),%rbx              ;   {no_reloc}
          │  0x00007f920c641b52:   mov    %rbx,0x158(%rsp)
          │  0x00007f920c641b5a:   mov    %rdi,%rbx
   0.00%  │  0x00007f920c641b5d:   imul   0xd0(%rsp),%rbx
   0.12%  │  0x00007f920c641b66:   mov    %rbx,0x160(%rsp)
          │  0x00007f920c641b6e:   mov    %rdi,%rbx
          │  0x00007f920c641b71:   imul   0xb8(%rsp),%rbx
   0.00%  │  0x00007f920c641b7a:   mov    %rbx,0x168(%rsp)
   0.14%  │  0x00007f920c641b82:   mov    %rdi,%rbx
   0.00%  │  0x00007f920c641b85:   imul   0xb0(%rsp),%rbx
          │  0x00007f920c641b8e:   mov    %rbx,0x170(%rsp)
   0.01%  │  0x00007f920c641b96:   mov    %rdi,%rbx
   0.12%  │  0x00007f920c641b99:   imul   0xa0(%rsp),%rbx
          │  0x00007f920c641ba2:   mov    %rbx,0x178(%rsp)
   0.00%  │  0x00007f920c641baa:   mov    %rdi,%rbx
          │  0x00007f920c641bad:   imul   0x98(%rsp),%rbx
   0.12%  │  0x00007f920c641bb6:   mov    %rbx,0x180(%rsp)
   0.01%  │  0x00007f920c641bbe:   mov    0x88(%rsp),%rbx
          │  0x00007f920c641bc6:   imul   %rdi,%rbx
          │  0x00007f920c641bca:   mov    %rbx,0x188(%rsp)
   0.13%  │  0x00007f920c641bd2:   mov    0x80(%rsp),%rsi
          │  0x00007f920c641bda:   imul   %rdi,%rsi
          │  0x00007f920c641bde:   mov    0x78(%rsp),%rax
          │  0x00007f920c641be3:   imul   %rdi,%rax
   0.12%  │  0x00007f920c641be7:   vmovq  %xmm5,%rbx
          │  0x00007f920c641bec:   imul   %rdi,%rbx
   0.00%  │  0x00007f920c641bf0:   mov    %rcx,%rdi
          │  0x00007f920c641bf3:   imul   0xd0(%rsp),%rdi
   0.15%  │  0x00007f920c641bfc:   mov    %rdi,0x190(%rsp)
   0.08%  │  0x00007f920c641c04:   mov    %rcx,%rdi
          │  0x00007f920c641c07:   imul   0xb8(%rsp),%rdi
          │  0x00007f920c641c10:   mov    %rdi,0x198(%rsp)
   0.12%  │  0x00007f920c641c18:   mov    %rcx,%rdi
          │  0x00007f920c641c1b:   imul   0xb0(%rsp),%rdi
          │  0x00007f920c641c24:   mov    %rdi,0x1a0(%rsp)
   0.11%  │  0x00007f920c641c2c:   mov    %rcx,%rdi
          │  0x00007f920c641c2f:   imul   0xa0(%rsp),%rdi
          │  0x00007f920c641c38:   mov    %rdi,0x1a8(%rsp)
   0.15%  │  0x00007f920c641c40:   mov    %rcx,%rdi
   0.00%  │  0x00007f920c641c43:   imul   0x98(%rsp),%rdi
          │  0x00007f920c641c4c:   mov    %rdi,0x1b0(%rsp)             ;   {no_reloc}
   0.12%  │  0x00007f920c641c54:   mov    %rcx,%rbp
   0.01%  │  0x00007f920c641c57:   imul   0x88(%rsp),%rbp
          │  0x00007f920c641c60:   mov    0x80(%rsp),%r14
          │  0x00007f920c641c68:   imul   %rcx,%r14
   0.09%  │  0x00007f920c641c6c:   mov    0x78(%rsp),%rdi
   0.02%  │  0x00007f920c641c71:   imul   %rcx,%rdi
   0.00%  │  0x00007f920c641c75:   add    %rdi,%rbx
   0.10%  │  0x00007f920c641c78:   add    %r10,%rbx
   0.52%  │  0x00007f920c641c7b:   add    %r8,%rbx
   0.02%  │  0x00007f920c641c7e:   add    %r13,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@122 (line 307)
   0.02%  │  0x00007f920c641c81:   vmovq  %rbx,%xmm2
   0.04%  │  0x00007f920c641c86:   vmovq  %xmm5,%r10
   0.12%  │  0x00007f920c641c8b:   imul   %rcx,%r10
          │  0x00007f920c641c8f:   add    %r11,%r10
          │  0x00007f920c641c92:   add    %r9,%r10
   0.03%  │  0x00007f920c641c95:   add    0x90(%rsp),%r10              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@81 (line 306)
   0.11%  │  0x00007f920c641c9d:   vmovq  %r10,%xmm10
   0.02%  │  0x00007f920c641ca2:   vmovq  %xmm1,%r10
          │  0x00007f920c641ca7:   mov    0x38(%r10),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@130 (line 308)
   0.00%  │  0x00007f920c641cab:   vmovq  %xmm1,%r11
   0.07%  │  0x00007f920c641cb0:   mov    0x40(%r11),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@180 (line 309)
   0.02%  │  0x00007f920c641cb4:   mov    %r10,%r11
          │  0x00007f920c641cb7:   imul   0xd8(%rsp),%r11
          │  0x00007f920c641cc0:   mov    %r11,0x90(%rsp)
   0.11%  │  0x00007f920c641cc8:   mov    %r8,%r11
   0.02%  │  0x00007f920c641ccb:   imul   0xd8(%rsp),%r11
          │  0x00007f920c641cd4:   mov    %r11,0x1b8(%rsp)
   0.00%  │  0x00007f920c641cdc:   mov    %r8,%r11
   0.10%  │  0x00007f920c641cdf:   imul   0xd0(%rsp),%r11
   0.02%  │  0x00007f920c641ce8:   mov    %r11,0x1c0(%rsp)
   0.02%  │  0x00007f920c641cf0:   mov    %r8,%r11
   0.00%  │  0x00007f920c641cf3:   imul   0xb8(%rsp),%r11
   0.08%  │  0x00007f920c641cfc:   mov    %r11,0x1c8(%rsp)
          │  0x00007f920c641d04:   mov    %r8,%r11
   0.02%  │  0x00007f920c641d07:   imul   0xb0(%rsp),%r11
          │  0x00007f920c641d10:   mov    %r11,0x1d0(%rsp)
   0.09%  │  0x00007f920c641d18:   mov    0xa0(%rsp),%r11
   0.00%  │  0x00007f920c641d20:   imul   %r8,%r11
   0.02%  │  0x00007f920c641d24:   mov    %r11,0x1d8(%rsp)
   0.03%  │  0x00007f920c641d2c:   mov    0x98(%rsp),%r11
   0.09%  │  0x00007f920c641d34:   imul   %r8,%r11
   0.00%  │  0x00007f920c641d38:   mov    %r11,0x1e0(%rsp)
   0.05%  │  0x00007f920c641d40:   mov    0x88(%rsp),%r11
          │  0x00007f920c641d48:   imul   %r8,%r11
   0.07%  │  0x00007f920c641d4c:   mov    %r11,0x1e8(%rsp)             ;   {no_reloc}
   0.04%  │  0x00007f920c641d54:   mov    0x80(%rsp),%rbx
          │  0x00007f920c641d5c:   imul   %r8,%rbx
          │  0x00007f920c641d60:   mov    0x78(%rsp),%r11
   0.07%  │  0x00007f920c641d65:   imul   %r8,%r11
   0.04%  │  0x00007f920c641d69:   mov    %r11,0x1f0(%rsp)
   0.04%  │  0x00007f920c641d71:   vmovq  %xmm5,%r11
   0.00%  │  0x00007f920c641d76:   imul   %r8,%r11
   0.05%  │  0x00007f920c641d7a:   mov    %r10,%r8
          │  0x00007f920c641d7d:   imul   0xd0(%rsp),%r8
   0.08%  │  0x00007f920c641d86:   mov    %r8,0x1f8(%rsp)
   0.05%  │  0x00007f920c641d8e:   mov    %r10,%r8
   0.08%  │  0x00007f920c641d91:   imul   0xb8(%rsp),%r8
   0.01%  │  0x00007f920c641d9a:   mov    %r8,0x200(%rsp)
   0.07%  │  0x00007f920c641da2:   mov    %r10,%r8
   0.00%  │  0x00007f920c641da5:   imul   0xb0(%rsp),%r8
   0.05%  │  0x00007f920c641dae:   mov    %r8,0x208(%rsp)
   0.06%  │  0x00007f920c641db6:   mov    %r10,%r8
          │  0x00007f920c641db9:   imul   0xa0(%rsp),%r8
          │  0x00007f920c641dc2:   mov    %r8,0x210(%rsp)
   0.11%  │  0x00007f920c641dca:   mov    0x98(%rsp),%r8
          │  0x00007f920c641dd2:   imul   %r10,%r8
          │  0x00007f920c641dd6:   mov    %r8,0x218(%rsp)
   0.08%  │  0x00007f920c641dde:   mov    0x88(%rsp),%rdi
   0.05%  │  0x00007f920c641de6:   imul   %r10,%rdi
          │  0x00007f920c641dea:   mov    0x80(%rsp),%r13
          │  0x00007f920c641df2:   imul   %r10,%r13
   0.08%  │  0x00007f920c641df6:   mov    0x78(%rsp),%r8
   0.07%  │  0x00007f920c641dfb:   imul   %r10,%r8
   0.00%  │  0x00007f920c641dff:   add    %r8,%r11
   0.05%  │  0x00007f920c641e02:   add    %rsi,%r11
   0.08%  │  0x00007f920c641e05:   add    %rbp,%r11
   0.11%  │  0x00007f920c641e08:   add    0x120(%rsp),%r11
   0.09%  │  0x00007f920c641e10:   add    %rdx,%r11
   0.10%  │  0x00007f920c641e13:   add    0xc0(%rsp),%r11              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@230 (line 309)
   0.12%  │  0x00007f920c641e1b:   vmovq  %r11,%xmm3
   0.23%  │  0x00007f920c641e20:   vmovq  %xmm5,%r11
          │  0x00007f920c641e25:   imul   %r10,%r11
          │  0x00007f920c641e29:   add    %rax,%r11
          │  0x00007f920c641e2c:   add    %r14,%r11
   0.11%  │  0x00007f920c641e2f:   add    0x128(%rsp),%r11
          │  0x00007f920c641e37:   add    0x148(%rsp),%r11
          │  0x00007f920c641e3f:   add    0xa8(%rsp),%r11              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@171 (line 308)
          │  0x00007f920c641e47:   vmovq  %r11,%xmm4
   0.10%  │  0x00007f920c641e4c:   vmovq  %xmm1,%r10                   ;   {no_reloc}
          │  0x00007f920c641e51:   mov    0x48(%r10),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@239 (line 310)
          │  0x00007f920c641e55:   vmovq  %xmm1,%r11
          │  0x00007f920c641e5a:   mov    0x50(%r11),%rdx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@308 (line 311)
   0.12%  │  0x00007f920c641e5e:   mov    %r10,%r11
          │  0x00007f920c641e61:   imul   0xd8(%rsp),%r11
   0.00%  │  0x00007f920c641e6a:   mov    %r11,0xa8(%rsp)
   0.02%  │  0x00007f920c641e72:   mov    %rdx,%r11
   0.07%  │  0x00007f920c641e75:   imul   0xd8(%rsp),%r11
          │  0x00007f920c641e7e:   mov    %rdx,%r8
          │  0x00007f920c641e81:   imul   0xd0(%rsp),%r8
   0.01%  │  0x00007f920c641e8a:   mov    0xb8(%rsp),%r9
   0.09%  │  0x00007f920c641e92:   imul   %rdx,%r9
          │  0x00007f920c641e96:   mov    %r9,0xc0(%rsp)
   0.05%  │  0x00007f920c641e9e:   mov    0xb0(%rsp),%r9
          │  0x00007f920c641ea6:   imul   %rdx,%r9
   0.09%  │  0x00007f920c641eaa:   mov    %r9,0x120(%rsp)
   0.05%  │  0x00007f920c641eb2:   mov    0xa0(%rsp),%r9
          │  0x00007f920c641eba:   imul   %rdx,%r9
          │  0x00007f920c641ebe:   mov    %r9,0x128(%rsp)
   0.14%  │  0x00007f920c641ec6:   mov    0x98(%rsp),%r9
          │  0x00007f920c641ece:   imul   %rdx,%r9
          │  0x00007f920c641ed2:   mov    %r9,0x148(%rsp)
   0.09%  │  0x00007f920c641eda:   mov    0x88(%rsp),%r9
   0.03%  │  0x00007f920c641ee2:   imul   %rdx,%r9
          │  0x00007f920c641ee6:   mov    %r9,0x220(%rsp)
   0.07%  │  0x00007f920c641eee:   mov    0x80(%rsp),%r9
          │  0x00007f920c641ef6:   imul   %rdx,%r9
   0.04%  │  0x00007f920c641efa:   mov    %r9,0x228(%rsp)
   0.06%  │  0x00007f920c641f02:   mov    0x78(%rsp),%r9
          │  0x00007f920c641f07:   imul   %rdx,%r9
          │  0x00007f920c641f0b:   vmovq  %xmm5,%rcx
   0.03%  │  0x00007f920c641f10:   imul   %rdx,%rcx
   0.10%  │  0x00007f920c641f14:   mov    %r10,%rdx
          │  0x00007f920c641f17:   imul   0xd0(%rsp),%rdx
   0.00%  │  0x00007f920c641f20:   mov    %r10,%rsi
   0.03%  │  0x00007f920c641f23:   imul   0xb8(%rsp),%rsi
   0.08%  │  0x00007f920c641f2c:   mov    0xb0(%rsp),%rax
          │  0x00007f920c641f34:   imul   %r10,%rax
   0.07%  │  0x00007f920c641f38:   mov    0xa0(%rsp),%rbp
   0.03%  │  0x00007f920c641f40:   imul   %r10,%rbp
   0.11%  │  0x00007f920c641f44:   mov    %rbp,0x230(%rsp)
   0.18%  │  0x00007f920c641f4c:   mov    0x98(%rsp),%rbp              ;   {no_reloc}
          │  0x00007f920c641f54:   imul   %r10,%rbp
   0.03%  │  0x00007f920c641f58:   mov    %rbp,0x238(%rsp)
   0.08%  │  0x00007f920c641f60:   mov    0x88(%rsp),%rbp
          │  0x00007f920c641f68:   imul   %r10,%rbp
          │  0x00007f920c641f6c:   mov    %rbp,0x240(%rsp)
   0.11%  │  0x00007f920c641f74:   mov    0x80(%rsp),%rbp
          │  0x00007f920c641f7c:   imul   %r10,%rbp
          │  0x00007f920c641f80:   mov    0x78(%rsp),%r14
          │  0x00007f920c641f85:   imul   %r10,%r14
   0.09%  │  0x00007f920c641f89:   add    %r14,%rcx
   0.01%  │  0x00007f920c641f8c:   add    %rbx,%rcx
   0.23%  │  0x00007f920c641f8f:   add    %rdi,%rcx
   0.01%  │  0x00007f920c641f92:   add    0x180(%rsp),%rcx
   0.13%  │  0x00007f920c641f9a:   add    0x1a8(%rsp),%rcx
   0.11%  │  0x00007f920c641fa2:   add    0x110(%rsp),%rcx
   0.14%  │  0x00007f920c641faa:   add    0x138(%rsp),%rcx
   0.10%  │  0x00007f920c641fb2:   add    0xe0(%rsp),%rcx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@378 (line 311)
   0.11%  │  0x00007f920c641fba:   mov    %rcx,%r14
          │  0x00007f920c641fbd:   vmovq  %xmm5,%rcx
          │  0x00007f920c641fc2:   imul   %r10,%rcx
          │  0x00007f920c641fc6:   add    0x1f0(%rsp),%rcx
   0.13%  │  0x00007f920c641fce:   add    %r13,%rcx
          │  0x00007f920c641fd1:   add    0x188(%rsp),%rcx
          │  0x00007f920c641fd9:   add    0x1b0(%rsp),%rcx
          │  0x00007f920c641fe1:   add    0x118(%rsp),%rcx
   0.13%  │  0x00007f920c641fe9:   add    0x140(%rsp),%rcx
          │  0x00007f920c641ff1:   add    0xc8(%rsp),%rcx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@299 (line 310)
   0.08%  │  0x00007f920c641ff9:   mov    %rcx,%r13
          │  0x00007f920c641ffc:   vmovq  %xmm1,%r10
   0.03%  │  0x00007f920c642001:   mov    0x58(%r10),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@387 (line 312)
   0.00%  │  0x00007f920c642005:   vmovq  %xmm5,%r10
   0.09%  │  0x00007f920c64200a:   imul   %rcx,%r10
          │  0x00007f920c64200e:   add    %r9,%r10
   0.03%  │  0x00007f920c642011:   add    %rbp,%r10
   0.00%  │  0x00007f920c642014:   add    0x1e8(%rsp),%r10
   0.19%  │  0x00007f920c64201c:   add    0x218(%rsp),%r10
   0.01%  │  0x00007f920c642024:   add    0x178(%rsp),%r10
   0.12%  │  0x00007f920c64202c:   add    0x1a0(%rsp),%r10
   0.12%  │  0x00007f920c642034:   add    0x108(%rsp),%r10
   0.12%  │  0x00007f920c64203c:   add    0x130(%rsp),%r10
   0.13%  │  0x00007f920c642044:   add    0xe8(%rsp),%r10              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@467 (line 312)
   0.16%  │  0x00007f920c64204c:   mov    %r10,%rbp                    ;   {no_reloc}
          │  0x00007f920c64204f:   mov    %rcx,%r10
          │  0x00007f920c642052:   imul   0xd8(%rsp),%r10              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@896 (line 321)
          │  0x00007f920c64205b:   vmovq  %r10,%xmm1
   0.11%  │  0x00007f920c642060:   mov    0xd0(%rsp),%r10
          │  0x00007f920c642068:   imul   %rcx,%r10
          │  0x00007f920c64206c:   add    %r11,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@885 (line 320)
          │  0x00007f920c64206f:   vmovq  %r10,%xmm5
   0.14%  │  0x00007f920c642074:   mov    0xb8(%rsp),%r9
          │  0x00007f920c64207c:   imul   %rcx,%r9
   0.00%  │  0x00007f920c642080:   add    %r8,%r9
          │  0x00007f920c642083:   add    0xa8(%rsp),%r9               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@864 (line 319)
   0.11%  │  0x00007f920c64208b:   mov    0xb0(%rsp),%r8
          │  0x00007f920c642093:   imul   %rcx,%r8
          │  0x00007f920c642097:   add    0xc0(%rsp),%r8
          │  0x00007f920c64209f:   add    %rdx,%r8
   0.12%  │  0x00007f920c6420a2:   add    0x1b8(%rsp),%r8              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@833 (line 318)
          │  0x00007f920c6420aa:   mov    0xa0(%rsp),%rbx
   0.00%  │  0x00007f920c6420b2:   imul   %rcx,%rbx
          │  0x00007f920c6420b6:   add    0x120(%rsp),%rbx
   0.12%  │  0x00007f920c6420be:   add    %rsi,%rbx
          │  0x00007f920c6420c1:   add    0x1c0(%rsp),%rbx
   0.00%  │  0x00007f920c6420c9:   add    0x90(%rsp),%rbx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@792 (line 317)
          │  0x00007f920c6420d1:   mov    0x98(%rsp),%rdi
   0.15%  │  0x00007f920c6420d9:   imul   %rcx,%rdi
          │  0x00007f920c6420dd:   add    0x128(%rsp),%rdi
          │  0x00007f920c6420e5:   add    %rax,%rdi
          │  0x00007f920c6420e8:   add    0x1c8(%rsp),%rdi
   0.12%  │  0x00007f920c6420f0:   add    0x1f8(%rsp),%rdi
          │  0x00007f920c6420f8:   add    0x158(%rsp),%rdi             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@743 (line 316)
   0.08%  │  0x00007f920c642100:   mov    0x88(%rsp),%r10
          │  0x00007f920c642108:   imul   %rcx,%r10
   0.04%  │  0x00007f920c64210c:   add    0x148(%rsp),%r10
          │  0x00007f920c642114:   add    0x230(%rsp),%r10
   0.07%  │  0x00007f920c64211c:   add    0x1d0(%rsp),%r10
          │  0x00007f920c642124:   add    0x200(%rsp),%r10
   0.07%  │  0x00007f920c64212c:   add    0x160(%rsp),%r10
   0.08%  │  0x00007f920c642134:   add    0x150(%rsp),%r10             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@686 (line 315)
   0.08%  │  0x00007f920c64213c:   mov    0x80(%rsp),%r11
          │  0x00007f920c642144:   imul   %rcx,%r11
   0.05%  │  0x00007f920c642148:   add    0x220(%rsp),%r11             ;   {no_reloc}
          │  0x00007f920c642150:   add    0x238(%rsp),%r11
   0.07%  │  0x00007f920c642158:   add    0x1d8(%rsp),%r11
   0.00%  │  0x00007f920c642160:   add    0x208(%rsp),%r11
   0.07%  │  0x00007f920c642168:   add    0x168(%rsp),%r11
   0.07%  │  0x00007f920c642170:   add    0x190(%rsp),%r11
   0.13%  │  0x00007f920c642178:   add    0xf8(%rsp),%r11              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@621 (line 314)
   0.12%  │  0x00007f920c642180:   mov    0x78(%rsp),%rsi
          │  0x00007f920c642185:   imul   %rcx,%rsi
          │  0x00007f920c642189:   add    0x228(%rsp),%rsi
   0.00%  │  0x00007f920c642191:   add    0x240(%rsp),%rsi
   0.09%  │  0x00007f920c642199:   add    0x1e0(%rsp),%rsi
   0.05%  │  0x00007f920c6421a1:   add    0x210(%rsp),%rsi
   0.06%  │  0x00007f920c6421a9:   add    0x170(%rsp),%rsi
   0.09%  │  0x00007f920c6421b1:   add    0x198(%rsp),%rsi
   0.14%  │  0x00007f920c6421b9:   add    0x100(%rsp),%rsi
   0.13%  │  0x00007f920c6421c1:   add    0xf0(%rsp),%rsi              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@548 (line 313)
   0.10%  │  0x00007f920c6421c9:   vmovq  %xmm0,%rdx
          │  0x00007f920c6421ce:   vmovsd %xmm2,(%rsp)
   0.04%  │  0x00007f920c6421d3:   vmovsd %xmm4,0x8(%rsp)
   0.00%  │  0x00007f920c6421d9:   vmovsd %xmm3,0x10(%rsp)
   0.11%  │  0x00007f920c6421df:   mov    %r13,0x18(%rsp)
   0.03%  │  0x00007f920c6421e4:   mov    %r14,0x20(%rsp)
   0.02%  │  0x00007f920c6421e9:   mov    %rbp,0x28(%rsp)
   0.03%  │  0x00007f920c6421ee:   mov    %rsi,0x30(%rsp)
   0.15%  │  0x00007f920c6421f3:   mov    %r11,0x38(%rsp)
   0.00%  │  0x00007f920c6421f8:   mov    %r10,0x40(%rsp)
   0.04%  │  0x00007f920c6421fd:   mov    %rdi,0x48(%rsp)
   0.03%  │  0x00007f920c642202:   mov    %rbx,0x50(%rsp)
   0.09%  │  0x00007f920c642207:   mov    %r8,0x58(%rsp)
   0.01%  │  0x00007f920c64220c:   mov    %r9,0x60(%rsp)
   0.07%  │  0x00007f920c642211:   vmovsd %xmm5,0x68(%rsp)
   0.07%  │  0x00007f920c642217:   vmovsd %xmm1,0x70(%rsp)
   0.11%  │  0x00007f920c64221d:   vmovq  %xmm6,%rsi
          │  0x00007f920c642222:   vmovq  %xmm7,%rcx
   0.01%  │  0x00007f920c642227:   vmovq  %xmm9,%r8
   0.01%  │  0x00007f920c64222c:   vmovq  %xmm8,%r9
   0.08%  │  0x00007f920c642231:   vmovq  %xmm10,%rdi
          │  0x00007f920c642236:   nop
          │  0x00007f920c642237:   call   0x00007f920c0c4380           ; ImmutableOopMap {}
          │                                                            ;*invokevirtual carryReduce {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@939 (line 323)
          │                                                            ;   {optimized virtual_call}
   0.04%  │  0x00007f920c64223c:   nopl   0xbac(%rax,%rax,1)           ;*invokevirtual carryReduce {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@939 (line 323)
          │                                                            ;   {other}
   0.04%  │  0x00007f920c642244:   add    $0x260,%rsp
   0.05%  │  0x00007f920c64224b:   pop    %rbp
   0.08%  │  0x00007f920c64224c:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f920c642253:   ja     0x00007f920c6422f4
   0.07%  │  0x00007f920c642259:   ret    
          ↘  0x00007f920c64225a:   mov    %rsi,%rbp
             0x00007f920c64225d:   mov    %rcx,0x80(%rsp)
             0x00007f920c642265:   mov    %r8,0x88(%rsp)
             0x00007f920c64226d:   mov    %rdx,0x90(%rsp)
             0x00007f920c642275:   mov    $0xffffffe4,%esi
             0x00007f920c64227a:   nop
             0x00007f920c64227b:   call   0x00007f920c0c9f00           ; ImmutableOopMap {rbp=Oop [128]=Oop [136]=Oop [144]=Oop }
                                                                       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@2 (line 303)
                                                                       ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  18.57%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce, version 2, compile id 641 

               # parm18:   [sp+0x108]   = long
               # parm19:   [sp+0x110]   = long
               0x00007f920c6400a0:   mov    0x8(%rsi),%r10d
               0x00007f920c6400a4:   movabs $0x7f918f000000,%r11
               0x00007f920c6400ae:   add    %r11,%r10
               0x00007f920c6400b1:   cmp    %r10,%rax
               0x00007f920c6400b4:   jne    0x00007f920c0c4080           ;   {runtime_call ic_miss_stub}
               0x00007f920c6400ba:   xchg   %ax,%ax
               0x00007f920c6400bc:   nopl   0x0(%rax)
             [Verified Entry Point]
   0.13%       0x00007f920c6400c0:   mov    %eax,-0x14000(%rsp)
   0.00%       0x00007f920c6400c7:   push   %rbp
   0.16%       0x00007f920c6400c8:   sub    $0x90,%rsp
   0.03%       0x00007f920c6400cf:   nop
               0x00007f920c6400d0:   cmpl   $0x1,0x20(%r15)
   0.13%  ╭    0x00007f920c6400d8:   jne    0x00007f920c640740           ;*synchronization entry
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@-1 (line 81)
   0.01%  │    0x00007f920c6400de:   mov    %rdi,%r14
   0.00%  │    0x00007f920c6400e1:   vmovq  %r9,%xmm9
   0.00%  │    0x00007f920c6400e6:   vmovq  %r8,%xmm8
   0.10%  │    0x00007f920c6400eb:   vmovq  %rcx,%xmm7
   0.01%  │    0x00007f920c6400f0:   vmovq  %rdx,%xmm6
   0.00%  │    0x00007f920c6400f5:   vmovq  %rsi,%xmm5
   0.00%  │    0x00007f920c6400fa:   mov    0x110(%rsp),%r10
   0.13%  │    0x00007f920c640102:   sar    $0x6,%r10
   0.02%  │    0x00007f920c640106:   mov    0x108(%rsp),%rcx
          │    0x00007f920c64010e:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@24 (line 84)
   0.02%  │    0x00007f920c640111:   mov    0x110(%rsp),%r10
   0.12%  │    0x00007f920c640119:   shl    $0x14,%r10
   0.02%  │    0x00007f920c64011d:   mov    %rcx,%r11
   0.00%  │    0x00007f920c640120:   shl    $0x4,%r11
   0.07%  │    0x00007f920c640124:   and    $0x3ffffff,%r10
   0.09%  │    0x00007f920c64012b:   mov    0x100(%rsp),%r9
   0.02%  │    0x00007f920c640133:   add    %r10,%r9
   0.04%  │    0x00007f920c640136:   and    $0x3ffffff,%r11
   0.04%  │    0x00007f920c64013d:   mov    0xb8(%rsp),%rdx
   0.05%  │    0x00007f920c640145:   add    %r11,%rdx
   0.07%  │    0x00007f920c640148:   mov    %rcx,%r10
   0.02%  │    0x00007f920c64014b:   sar    $0x4,%r10
          │    0x00007f920c64014f:   mov    %r10,0xb8(%rsp)
   0.05%  │    0x00007f920c640157:   mov    %rcx,%r10
   0.07%  │    0x00007f920c64015a:   shl    $0xe,%r10
   0.02%  │    0x00007f920c64015e:   mov    %rcx,%r11
   0.00%  │    0x00007f920c640161:   sar    $0xc,%r11
   0.08%  │    0x00007f920c640165:   and    $0x3ffffff,%r10
   0.06%  │    0x00007f920c64016c:   mov    0xf0(%rsp),%rbx
   0.03%  │    0x00007f920c640174:   sub    %r10,%rbx
   0.01%  │    0x00007f920c640177:   mov    %rcx,%r8
   0.05%  │    0x00007f920c64017a:   shl    $0x14,%r8
   0.06%  │    0x00007f920c64017e:   vmovq  %rcx,%xmm0
   0.02%  │    0x00007f920c640183:   sar    $0x6,%rcx
   0.01%  │    0x00007f920c640187:   and    $0x3ffffff,%r8
   0.09%  │    0x00007f920c64018e:   vmovq  %xmm0,%rdi
   0.35%  │    0x00007f920c640193:   shl    $0x16,%rdi
   0.24%  │    0x00007f920c640197:   vmovq  %xmm0,%r10
   0.00%  │    0x00007f920c64019c:   sar    $0x16,%r10
   0.07%  │    0x00007f920c6401a0:   mov    %r10,0xf0(%rsp)
   0.16%  │    0x00007f920c6401a8:   and    $0x3ffffff,%rdi
   0.03%  │    0x00007f920c6401af:   mov    0xd0(%rsp),%r10              ;   {no_reloc}
          │    0x00007f920c6401b7:   sub    %rdi,%r10
   0.07%  │    0x00007f920c6401ba:   vmovq  %r10,%xmm10
   0.19%  │    0x00007f920c6401bf:   mov    0x110(%rsp),%r10
   0.00%  │    0x00007f920c6401c7:   sar    $0xc,%r10
   0.00%  │    0x00007f920c6401cb:   sub    %r10,%r9
   0.04%  │    0x00007f920c6401ce:   lea    (%r9,%rcx,1),%r10
   0.10%  │    0x00007f920c6401d2:   vmovq  %r10,%xmm1
   0.02%  │    0x00007f920c6401d7:   mov    0x110(%rsp),%r9
   0.00%  │    0x00007f920c6401df:   shl    $0xe,%r9
   0.04%  │    0x00007f920c6401e3:   sar    $0x16,%r10
   0.09%  │    0x00007f920c6401e7:   lea    (%rdx,%r10,1),%rcx
   0.00%  │    0x00007f920c6401eb:   mov    %rcx,%rdi
          │    0x00007f920c6401ee:   and    $0x3ffffff,%r9
   0.02%  │    0x00007f920c6401f5:   mov    0xf8(%rsp),%rcx
   0.12%  │    0x00007f920c6401fd:   sub    %r9,%rcx
   0.01%  │    0x00007f920c640200:   add    %r8,%rcx
          │    0x00007f920c640203:   sub    %r11,%rcx
   0.04%  │    0x00007f920c640206:   vmovq  %xmm1,%r11
   0.09%  │    0x00007f920c64020b:   shl    $0x4,%r11
   0.04%  │    0x00007f920c64020f:   vmovq  %xmm1,%r8
   0.00%  │    0x00007f920c640214:   sar    $0xc,%r8
   0.07%  │    0x00007f920c640218:   and    $0x3ffffff,%r11
   0.10%  │    0x00007f920c64021f:   mov    0xb0(%rsp),%r10
   0.01%  │    0x00007f920c640227:   add    %r11,%r10
   0.00%  │    0x00007f920c64022a:   vmovq  %xmm1,%r9
   0.05%  │    0x00007f920c64022f:   shl    $0x14,%r9
   0.09%  │    0x00007f920c640233:   vmovq  %xmm1,%r11
   0.01%  │    0x00007f920c640238:   sar    $0x6,%r11
   0.00%  │    0x00007f920c64023c:   add    %r11,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@212 (line 102)
   0.08%  │    0x00007f920c64023f:   vmovq  %rcx,%xmm2
   0.10%  │    0x00007f920c640244:   and    $0x3ffffff,%r9
   0.00%  │    0x00007f920c64024b:   add    %r9,%rbx
          │    0x00007f920c64024e:   sub    %r8,%rbx
   0.05%  │    0x00007f920c640251:   mov    %rcx,%r11
   0.11%  │    0x00007f920c640254:   shl    $0x16,%r11
   0.01%  │    0x00007f920c640258:   mov    %rcx,%r8
          │    0x00007f920c64025b:   sar    $0x16,%r8
   0.05%  │    0x00007f920c64025f:   add    %r8,%r10
   0.10%  │    0x00007f920c640262:   and    $0x3ffffff,%r11
   0.00%  │    0x00007f920c640269:   mov    %rcx,%r9
          │    0x00007f920c64026c:   shl    $0x4,%r9
   0.06%  │    0x00007f920c640270:   mov    %rcx,%r8
   0.11%  │    0x00007f920c640273:   shl    $0xe,%r8
   0.01%  │    0x00007f920c640277:   and    $0x3ffffff,%r9
   0.00%  │    0x00007f920c64027e:   mov    0xa8(%rsp),%rcx
   0.03%  │    0x00007f920c640286:   add    %r9,%rcx
   0.13%  │    0x00007f920c640289:   and    $0x3ffffff,%r8
   0.01%  │    0x00007f920c640290:   vmovq  %xmm2,%r9
   0.00%  │    0x00007f920c640295:   sar    $0x6,%r9
   0.15%  │    0x00007f920c640299:   add    %r9,%rbx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@306 (line 111)
   0.20%  │    0x00007f920c64029c:   vmovq  %rbx,%xmm3
   0.15%  │    0x00007f920c6402a1:   vmovq  %xmm2,%rdx
          │    0x00007f920c6402a6:   sar    $0xc,%rdx
   0.26%  │    0x00007f920c6402aa:   mov    %rbx,%r9
   0.02%  │    0x00007f920c6402ad:   shl    $0x16,%r9
   0.07%  │    0x00007f920c6402b1:   and    $0x3ffffff,%r9               ;   {no_reloc}
          │    0x00007f920c6402b8:   mov    %rdi,%rbx
   0.06%  │    0x00007f920c6402bb:   sub    %r9,%rbx
   0.05%  │    0x00007f920c6402be:   vmovq  %rbx,%xmm11
   0.31%  │    0x00007f920c6402c3:   vmovq  %xmm3,%r9
          │    0x00007f920c6402c8:   sar    $0x16,%r9
   0.42%  │    0x00007f920c6402cc:   add    %r9,%rcx
   0.09%  │    0x00007f920c6402cf:   vmovq  %rcx,%xmm12
   0.26%  │    0x00007f920c6402d4:   vmovq  %xmm3,%r9
          │    0x00007f920c6402d9:   shl    $0x4,%r9
   0.12%  │    0x00007f920c6402dd:   and    $0x3ffffff,%r9
   0.02%  │    0x00007f920c6402e4:   mov    0xa0(%rsp),%rcx
   0.10%  │    0x00007f920c6402ec:   add    %r9,%rcx
   0.02%  │    0x00007f920c6402ef:   vmovq  %rcx,%xmm13
   0.11%  │    0x00007f920c6402f4:   vmovq  %xmm3,%r9
   0.00%  │    0x00007f920c6402f9:   sar    $0xc,%r9
   0.17%  │    0x00007f920c6402fd:   vmovq  %xmm3,%rcx
          │    0x00007f920c640302:   shl    $0x14,%rcx
   0.06%  │    0x00007f920c640306:   and    $0x3ffffff,%rcx
   0.01%  │    0x00007f920c64030d:   vmovq  %xmm3,%rsi
   0.07%  │    0x00007f920c640312:   sar    $0x6,%rsi
          │    0x00007f920c640316:   vmovq  %xmm3,%rbx
   0.06%  │    0x00007f920c64031b:   sar    $0x4,%rbx
   0.01%  │    0x00007f920c64031f:   vmovq  %xmm2,%rax
   0.10%  │    0x00007f920c640324:   shl    $0x14,%rax
   0.00%  │    0x00007f920c640328:   and    $0x3ffffff,%rax
   0.07%  │    0x00007f920c64032e:   vmovq  %xmm2,%rdi
   0.01%  │    0x00007f920c640333:   sar    $0x4,%rdi
   0.08%  │    0x00007f920c640337:   vmovq  %xmm1,%rbp
          │    0x00007f920c64033c:   shl    $0xe,%rbp
   0.07%  │    0x00007f920c640340:   and    $0x3ffffff,%rbp
   0.00%  │    0x00007f920c640347:   mov    0xe8(%rsp),%r13
   0.11%  │    0x00007f920c64034f:   sub    %rbp,%r13
          │    0x00007f920c640352:   add    %rax,%r13
   0.07%  │    0x00007f920c640355:   sub    %rdx,%r13
   0.01%  │    0x00007f920c640358:   add    %rsi,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@400 (line 120)
   0.12%  │    0x00007f920c64035b:   vmovq  %r13,%xmm4
   0.01%  │    0x00007f920c640360:   vmovq  %xmm1,%rdx
   0.05%  │    0x00007f920c640365:   sar    $0x4,%rdx
   0.01%  │    0x00007f920c640369:   vmovq  %xmm10,%rsi
   0.07%  │    0x00007f920c64036e:   sub    %rdx,%rsi
   0.02%  │    0x00007f920c640371:   mov    %rsi,%r13
   0.07%  │    0x00007f920c640374:   vmovq  %xmm4,%rdx
   0.03%  │    0x00007f920c640379:   shl    $0x16,%rdx
   0.22%  │    0x00007f920c64037d:   and    $0x3ffffff,%rdx
   0.06%  │    0x00007f920c640384:   sub    %rdx,%r10
   0.07%  │    0x00007f920c640387:   vmovq  %xmm4,%rdx
          │    0x00007f920c64038c:   sar    $0x16,%rdx
   0.13%  │    0x00007f920c640390:   vmovq  %xmm13,%rsi
          │    0x00007f920c640395:   add    %rdx,%rsi
   0.09%  │    0x00007f920c640398:   vmovq  %rsi,%xmm10
   0.03%  │    0x00007f920c64039d:   vmovq  %xmm4,%rdx
   0.05%  │    0x00007f920c6403a2:   shl    $0x4,%rdx
   0.00%  │    0x00007f920c6403a6:   and    $0x3ffffff,%rdx
   0.09%  │    0x00007f920c6403ad:   lea    (%r14,%rdx,1),%rsi
   0.02%  │    0x00007f920c6403b1:   vmovq  %rsi,%xmm13                  ;   {no_reloc}
   0.09%  │    0x00007f920c6403b6:   vmovq  %xmm4,%rdx
          │    0x00007f920c6403bb:   sar    $0xc,%rdx
   0.10%  │    0x00007f920c6403bf:   vmovq  %xmm4,%rsi
   0.01%  │    0x00007f920c6403c4:   shl    $0x14,%rsi
   0.10%  │    0x00007f920c6403c8:   and    $0x3ffffff,%rsi
   0.01%  │    0x00007f920c6403cf:   vmovq  %xmm4,%rax
   0.05%  │    0x00007f920c6403d4:   sar    $0x6,%rax
   0.01%  │    0x00007f920c6403d8:   vmovq  %xmm4,%rbp
   0.07%  │    0x00007f920c6403dd:   shl    $0xe,%rbp
   0.01%  │    0x00007f920c6403e1:   and    $0x3ffffff,%rbp
   0.07%  │    0x00007f920c6403e8:   sub    %rbp,%r13
   0.02%  │    0x00007f920c6403eb:   vmovq  %r13,%xmm14
   0.09%  │    0x00007f920c6403f0:   vmovq  %xmm4,%rbp
   0.02%  │    0x00007f920c6403f5:   sar    $0x4,%rbp
   0.06%  │    0x00007f920c6403f9:   vmovq  %xmm11,%r13
   0.01%  │    0x00007f920c6403fe:   sub    %rbp,%r13
   0.06%  │    0x00007f920c640401:   vmovq  %r13,%xmm11
   0.02%  │    0x00007f920c640406:   vmovq  %xmm1,%rbp
   0.04%  │    0x00007f920c64040b:   shl    $0x16,%rbp
   0.00%  │    0x00007f920c64040f:   and    $0x3ffffff,%rbp
   0.09%  │    0x00007f920c640416:   mov    0x110(%rsp),%r13
   0.01%  │    0x00007f920c64041e:   sar    $0x4,%r13
   0.07%  │    0x00007f920c640422:   mov    0xe0(%rsp),%r14
   0.01%  │    0x00007f920c64042a:   sub    %r13,%r14
   0.09%  │    0x00007f920c64042d:   sub    %r8,%r14
   0.02%  │    0x00007f920c640430:   add    %rcx,%r14
   0.06%  │    0x00007f920c640433:   sub    %r9,%r14
   0.02%  │    0x00007f920c640436:   add    %rax,%r14                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@494 (line 129)
   0.07%  │    0x00007f920c640439:   mov    0x110(%rsp),%r8
   0.01%  │    0x00007f920c640441:   shl    $0x16,%r8
   0.06%  │    0x00007f920c640445:   and    $0x3ffffff,%r8
          │    0x00007f920c64044c:   mov    0xd8(%rsp),%r9
   0.10%  │    0x00007f920c640454:   sub    %r8,%r9
   0.02%  │    0x00007f920c640457:   sub    0xb8(%rsp),%r9
   0.06%  │    0x00007f920c64045f:   mov    %r14,%r8
   0.01%  │    0x00007f920c640462:   sar    $0x4,%r8
   0.07%  │    0x00007f920c640466:   sub    %r8,%r10                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@635 (line 142)
   0.01%  │    0x00007f920c640469:   mov    %r10,%r13
   0.05%  │    0x00007f920c64046c:   mov    %r14,%r10
   0.01%  │    0x00007f920c64046f:   shl    $0x16,%r10
   0.05%  │    0x00007f920c640473:   and    $0x3ffffff,%r10
   0.01%  │    0x00007f920c64047a:   vmovq  %xmm12,%r8
   0.05%  │    0x00007f920c64047f:   sub    %r10,%r8
   0.01%  │    0x00007f920c640482:   vmovq  %r8,%xmm12
   0.07%  │    0x00007f920c640487:   mov    %r14,%r10
   0.02%  │    0x00007f920c64048a:   sar    $0x16,%r10
   0.07%  │    0x00007f920c64048e:   vmovq  %xmm13,%r8
   0.01%  │    0x00007f920c640493:   add    %r10,%r8
   0.09%  │    0x00007f920c640496:   vmovq  %r8,%xmm13
   0.01%  │    0x00007f920c64049b:   mov    %r14,%r10
   0.06%  │    0x00007f920c64049e:   shl    $0x4,%r10
   0.01%  │    0x00007f920c6404a2:   and    $0x3ffffff,%r10
   0.07%  │    0x00007f920c6404a9:   vmovq  %xmm9,%r8
   0.02%  │    0x00007f920c6404ae:   add    %r10,%r8                     ;   {no_reloc}
   0.05%  │    0x00007f920c6404b1:   vmovq  %r8,%xmm9
   0.00%  │    0x00007f920c6404b6:   mov    %r14,%rcx
   0.07%  │    0x00007f920c6404b9:   sar    $0x6,%rcx
   0.01%  │    0x00007f920c6404bd:   mov    %r14,%r10
   0.06%  │    0x00007f920c6404c0:   sar    $0xc,%r10
   0.01%  │    0x00007f920c6404c4:   mov    %r14,%r8
   0.06%  │    0x00007f920c6404c7:   shl    $0x14,%r8
   0.02%  │    0x00007f920c6404cb:   and    $0x3ffffff,%r8
   0.04%  │    0x00007f920c6404d2:   vmovq  %xmm14,%rax
   0.01%  │    0x00007f920c6404d7:   add    %r8,%rax
   0.06%  │    0x00007f920c6404da:   sub    %r10,%rax
   0.02%  │    0x00007f920c6404dd:   vmovq  %rax,%xmm14
   0.04%  │    0x00007f920c6404e2:   mov    %r14,%r10
   0.01%  │    0x00007f920c6404e5:   shl    $0xe,%r10
   0.06%  │    0x00007f920c6404e9:   and    $0x3ffffff,%r10
   0.02%  │    0x00007f920c6404f0:   mov    0x110(%rsp),%r8
   0.06%  │    0x00007f920c6404f8:   shl    $0x4,%r8
   0.01%  │    0x00007f920c6404fc:   and    $0x3ffffff,%r8
   0.07%  │    0x00007f920c640503:   mov    0xc0(%rsp),%rax
   0.02%  │    0x00007f920c64050b:   add    %r8,%rax
   0.06%  │    0x00007f920c64050e:   add    0xf0(%rsp),%rax
   0.01%  │    0x00007f920c640516:   sub    %r11,%rax
   0.09%  │    0x00007f920c640519:   sub    %rbx,%rax
   0.01%  │    0x00007f920c64051c:   mov    0x110(%rsp),%r11
   0.06%  │    0x00007f920c640524:   sar    $0x16,%r11
   0.01%  │    0x00007f920c640528:   mov    0xc8(%rsp),%r8
   0.07%  │    0x00007f920c640530:   add    %r11,%r8
   0.02%  │    0x00007f920c640533:   sub    %rbp,%r8
   0.06%  │    0x00007f920c640536:   sub    %rdi,%r8
   0.01%  │    0x00007f920c640539:   sub    %r10,%r8
   0.06%  │    0x00007f920c64053c:   vmovq  %xmm3,%r10
   0.02%  │    0x00007f920c640541:   shl    $0xe,%r10
   0.05%  │    0x00007f920c640545:   and    $0x3ffffff,%r10
   0.00%  │    0x00007f920c64054c:   sub    %r10,%r9
   0.07%  │    0x00007f920c64054f:   add    %rsi,%r9
   0.01%  │    0x00007f920c640552:   sub    %rdx,%r9
   0.05%  │    0x00007f920c640555:   lea    (%r9,%rcx,1),%r10
   0.00%  │    0x00007f920c640559:   mov    %r10,%r11
   0.06%  │    0x00007f920c64055c:   sar    $0xc,%r11
   0.01%  │    0x00007f920c640560:   mov    %r10,%r9
   0.07%  │    0x00007f920c640563:   shl    $0x14,%r9
   0.02%  │    0x00007f920c640567:   and    $0x3ffffff,%r9
   0.06%  │    0x00007f920c64056e:   add    %r9,%r8
   0.03%  │    0x00007f920c640571:   sub    %r11,%r8
   0.08%  │    0x00007f920c640574:   mov    %r10,%r11
   0.00%  │    0x00007f920c640577:   shl    $0xe,%r11
   0.06%  │    0x00007f920c64057b:   and    $0x3ffffff,%r11
   0.02%  │    0x00007f920c640582:   sub    %r11,%rax
   0.06%  │    0x00007f920c640585:   mov    %r10,%r11
   0.01%  │    0x00007f920c640588:   sar    $0x4,%r11
   0.05%  │    0x00007f920c64058c:   vmovq  %xmm12,%r9
   0.01%  │    0x00007f920c640591:   sub    %r11,%r9                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@729 (line 151)
   0.05%  │    0x00007f920c640594:   mov    %r9,%rbx
   0.01%  │    0x00007f920c640597:   mov    %r10,%r11
   0.07%  │    0x00007f920c64059a:   shl    $0x16,%r11
   0.01%  │    0x00007f920c64059e:   and    $0x3ffffff,%r11
   0.09%  │    0x00007f920c6405a5:   vmovq  %xmm10,%r9
   0.01%  │    0x00007f920c6405aa:   sub    %r11,%r9
   0.07%  │    0x00007f920c6405ad:   mov    %r9,%rcx                     ;   {no_reloc}
   0.02%  │    0x00007f920c6405b0:   mov    %r10,%r11
   0.07%  │    0x00007f920c6405b3:   sar    $0x16,%r11
   0.00%  │    0x00007f920c6405b7:   vmovq  %xmm9,%r9
   0.07%  │    0x00007f920c6405bc:   add    %r11,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@752 (line 153)
   0.02%  │    0x00007f920c6405bf:   mov    %r9,%rbp
   0.06%  │    0x00007f920c6405c2:   mov    %r10,%r11
   0.01%  │    0x00007f920c6405c5:   shl    $0x4,%r11
   0.05%  │    0x00007f920c6405c9:   and    $0x3ffffff,%r11
   0.02%  │    0x00007f920c6405d0:   vmovq  %xmm8,%r9
   0.10%  │    0x00007f920c6405d5:   add    %r11,%r9
   0.01%  │    0x00007f920c6405d8:   mov    %r9,%rdx
   0.05%  │    0x00007f920c6405db:   mov    %r10,%r11
   0.02%  │    0x00007f920c6405de:   sar    $0x6,%r11
   0.09%  │    0x00007f920c6405e2:   vmovq  %xmm14,%r9
          │    0x00007f920c6405e7:   add    %r11,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@682 (line 147)
   0.05%  │    0x00007f920c6405ea:   mov    %r9,%rsi
   0.01%  │    0x00007f920c6405ed:   mov    %r9,%r11
   0.08%  │    0x00007f920c6405f0:   sar    $0x6,%r11
          │    0x00007f920c6405f4:   add    %r11,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@776 (line 156)
   0.06%  │    0x00007f920c6405f7:   mov    %r8,%rdi
   0.01%  │    0x00007f920c6405fa:   mov    %r9,%r11
   0.07%  │    0x00007f920c6405fd:   sar    $0xc,%r11
   0.00%  │    0x00007f920c640601:   mov    %r9,%r8
   0.07%  │    0x00007f920c640604:   shl    $0x14,%r8
   0.02%  │    0x00007f920c640608:   and    $0x3ffffff,%r8
   0.08%  │    0x00007f920c64060f:   add    %r8,%rax
   0.01%  │    0x00007f920c640612:   sub    %r11,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@800 (line 158)
   0.07%  │    0x00007f920c640615:   mov    %r9,%r11
   0.01%  │    0x00007f920c640618:   shl    $0xe,%r11
   0.07%  │    0x00007f920c64061c:   and    $0x3ffffff,%r11
   0.01%  │    0x00007f920c640623:   vmovq  %xmm11,%r8
   0.04%  │    0x00007f920c640628:   sub    %r11,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@790 (line 157)
   0.01%  │    0x00007f920c64062b:   mov    %r9,%r11
   0.06%  │    0x00007f920c64062e:   sar    $0x4,%r11
   0.00%  │    0x00007f920c640632:   mov    %rcx,%r9
   0.06%  │    0x00007f920c640635:   sub    %r11,%r9                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@823 (line 160)
   0.01%  │    0x00007f920c640638:   mov    %rsi,%r11
   0.07%  │    0x00007f920c64063b:   shl    $0x16,%r11
   0.01%  │    0x00007f920c64063f:   and    $0x3ffffff,%r11
   0.12%  │    0x00007f920c640646:   vmovq  %xmm13,%rcx
   0.01%  │    0x00007f920c64064b:   sub    %r11,%rcx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@814 (line 159)
   0.07%  │    0x00007f920c64064e:   vmovq  %rcx,%xmm8
   0.00%  │    0x00007f920c640653:   mov    %rsi,%r11
   0.07%  │    0x00007f920c640656:   sar    $0x16,%r11
   0.01%  │    0x00007f920c64065a:   lea    (%rdx,%r11,1),%rcx
   0.05%  │    0x00007f920c64065e:   vmovq  %rcx,%xmm9
   0.01%  │    0x00007f920c640663:   mov    %rsi,%rcx
   0.06%  │    0x00007f920c640666:   shl    $0x4,%rcx
   0.02%  │    0x00007f920c64066a:   and    $0x3ffffff,%rcx
   0.08%  │    0x00007f920c640671:   vmovq  %xmm7,%r11
   0.01%  │    0x00007f920c640676:   add    %rcx,%r11                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@835 (line 161)
   0.07%  │    0x00007f920c640679:   mov    %r9,(%rsp)
   0.01%  │    0x00007f920c64067d:   mov    %rbx,0x8(%rsp)
   0.07%  │    0x00007f920c640682:   mov    %r13,0x10(%rsp)
   0.01%  │    0x00007f920c640687:   mov    %r8,0x18(%rsp)
   0.08%  │    0x00007f920c64068c:   mov    %rax,0x20(%rsp)
   0.01%  │    0x00007f920c640691:   mov    %rdi,0x28(%rsp)
   0.07%  │    0x00007f920c640696:   xor    %r8d,%r8d
   0.00%  │    0x00007f920c640699:   mov    %r8,0x30(%rsp)
   0.07%  │    0x00007f920c64069e:   mov    %r10,0x38(%rsp)
   0.02%  │    0x00007f920c6406a3:   mov    %r14,0x40(%rsp)
   0.09%  │    0x00007f920c6406a8:   vmovsd %xmm4,0x48(%rsp)
   0.01%  │    0x00007f920c6406ae:   vmovsd %xmm3,0x50(%rsp)             ;   {no_reloc}
   0.08%  │    0x00007f920c6406b4:   vmovsd %xmm2,0x58(%rsp)
   0.03%  │    0x00007f920c6406ba:   vmovsd %xmm1,0x60(%rsp)
   0.05%  │    0x00007f920c6406c0:   vmovsd %xmm0,0x68(%rsp)
   0.01%  │    0x00007f920c6406c6:   mov    0x110(%rsp),%r10
   0.08%  │    0x00007f920c6406ce:   mov    %r10,0x70(%rsp)
   0.01%  │    0x00007f920c6406d3:   xor    %r10d,%r10d
   0.06%  │    0x00007f920c6406d6:   mov    %r10,0x78(%rsp)
   0.01%  │    0x00007f920c6406db:   vmovq  %xmm5,%rsi
   0.07%  │    0x00007f920c6406e0:   vmovq  %xmm6,%rdx
   0.02%  │    0x00007f920c6406e5:   mov    %r11,%rcx
   0.08%  │    0x00007f920c6406e8:   vmovq  %xmm9,%r8
   0.00%  │    0x00007f920c6406ed:   mov    %rbp,%r9
   0.07%  │    0x00007f920c6406f0:   vmovq  %xmm8,%rdi
   0.03%  │    0x00007f920c6406f5:   xchg   %ax,%ax
   0.08%  │    0x00007f920c6406f7:   call   0x00007f920c63d540           ; ImmutableOopMap {}
          │                                                              ;*invokevirtual carryReduce0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │                                                              ;   {optimized virtual_call}
   0.04%  │    0x00007f920c6406fc:   nopl   0x7ec(%rax,%rax,1)           ;   {other}
   0.04%  │    0x00007f920c640704:   add    $0x90,%rsp
   0.09%  │    0x00007f920c64070b:   pop    %rbp
   0.02%  │ ↗  0x00007f920c64070c:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭│  0x00007f920c640713:   ja     0x00007f920c64072a
   0.06%  │││  0x00007f920c640719:   ret                                 ;*invokevirtual carryReduce0 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │││  0x00007f920c64071a:   mov    %rax,%rsi
          │││  0x00007f920c64071d:   add    $0x90,%rsp
          │││  0x00007f920c640724:   pop    %rbp
          │││  0x00007f920c640725:   jmp    0x00007f920c1a0580           ;   {runtime_call _rethrow_Java}
          │↘╰  0x00007f920c64072a:   movabs $0x7f920c64070c,%r10         ;   {internal_word}
          │    0x00007f920c640734:   mov    %r10,0x468(%r15)
          │    0x00007f920c64073b:   jmp    0x00007f920c0cb000           ;   {runtime_call SafepointBlob}
          ↘    0x00007f920c640740:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
               0x00007f920c640745:   jmp    0x00007f920c6400de
....................................................................................................
  16.89%  <total for region 2>

....[Hottest Regions]...............................................................................
  18.57%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::mult, version 2, compile id 649 
  16.89%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce, version 2, compile id 641 
   7.22%         c2, level 4  sun.security.util.math.intpoly.P256OrderField::carryReduce0, version 2, compile id 760 
   5.62%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0, version 2, compile id 624 
   4.92%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier::lookup, version 2, compile id 684 
   4.16%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   3.64%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier::lookup, version 2, compile id 684 
   3.34%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::square, version 2, compile id 663 
   3.20%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier::lookup, version 2, compile id 684 
   2.90%         c2, level 4  sun.security.util.math.intpoly.P256OrderField::square, version 2, compile id 765 
   2.03%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce, version 2, compile id 643 
   1.86%         c2, level 4  sun.security.util.math.intpoly.P256OrderField::carryReduce, version 2, compile id 755 
   1.45%         c2, level 4  sun.security.util.math.intpoly.P256OrderField::carryReduce2, version 2, compile id 730 
   1.30%         c2, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 782 
   1.16%         c2, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 782 
   1.03%        runtime stub  StubRoutines::sha256_implCompressMB 
   0.75%        runtime stub  StubRoutines::sha256_implCompressMB 
   0.74%         c2, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 782 
   0.60%         c2, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Secp256R1::inverse, version 4, compile id 913 
   0.59%         c2, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 782 
  18.03%  <...other 988 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  18.57%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::mult, version 2, compile id 649 
  16.89%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce, version 2, compile id 641 
  12.44%         c2, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 782 
  12.38%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier::lookup, version 2, compile id 684 
   7.22%         c2, level 4  sun.security.util.math.intpoly.P256OrderField::carryReduce0, version 2, compile id 760 
   5.62%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0, version 2, compile id 624 
   4.16%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   3.34%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::square, version 2, compile id 663 
   2.90%         c2, level 4  sun.security.util.math.intpoly.P256OrderField::square, version 2, compile id 765 
   2.03%         c2, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 686 
   2.03%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce, version 2, compile id 643 
   1.88%        runtime stub  StubRoutines::sha256_implCompressMB 
   1.86%         c2, level 4  sun.security.util.math.intpoly.P256OrderField::carryReduce, version 2, compile id 755 
   1.46%              kernel  [unknown] 
   1.45%         c2, level 4  sun.security.util.math.intpoly.P256OrderField::carryReduce2, version 2, compile id 730 
   1.04%         c2, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Secp256R1Field::inverse, version 4, compile id 930 
   0.85%         c2, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Secp256R1::inverse, version 4, compile id 913 
   0.82%         c2, level 4  sun.security.util.math.intpoly.P256OrderField::mult, version 2, compile id 828 
   0.44%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier$Secp256R1GeneratorMultiplier::pointMultiply, version 3, compile id 988 
   0.40%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark::sign, version 2, compile id 1092 
   2.20%  <...other 122 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  91.95%         c2, level 4
   6.25%        runtime stub
   1.46%              kernel
   0.17%           libjvm.so
   0.08%        libc-2.31.so
   0.02%                    
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.00%              [vdso]
   0.00%          ld-2.31.so
   0.00%    perf-1933691.map
   0.00%        libjimage.so
....................................................................................................
  99.99%  <totals>



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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign
# Parameters: (algorithm = secp256r1, messageLength = 16384)

# Run progress: 25.00% complete, ETA 00:17:06
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 952.274 us/op
# Warmup Iteration   2: 408.810 us/op
# Warmup Iteration   3: 395.383 us/op
# Warmup Iteration   4: 394.876 us/op
# Warmup Iteration   5: 394.519 us/op
Iteration   1: 394.577 us/op
Iteration   2: 394.394 us/op
Iteration   3: 394.408 us/op
Iteration   4: 394.597 us/op
Iteration   5: 394.396 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign":
  394.474 ±(99.9%) 0.397 us/op [Average]
  (min, avg, max) = (394.394, 394.474, 394.597), stdev = 0.103
  CI (99.9%): [394.078, 394.871] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign:asm":
PrintAssembly processed: 310943 total address lines.
Perf output processed (skipped 59.535 seconds):
 Column 1: cycles (50572 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, sun.security.util.math.intpoly.IntegerPolynomialP256::mult, version 2, compile id 661 

             # parm2:    r8:r8     = &apos;[J&apos;
             #           [sp+0x270]  (sp of caller)
             0x00007f6ab4642ac0:   mov    0x8(%rsi),%r10d
             0x00007f6ab4642ac4:   movabs $0x7f6a3b000000,%r11
             0x00007f6ab4642ace:   add    %r11,%r10
             0x00007f6ab4642ad1:   cmp    %r10,%rax
             0x00007f6ab4642ad4:   jne    0x00007f6ab40c4080           ;   {runtime_call ic_miss_stub}
             0x00007f6ab4642ada:   xchg   %ax,%ax
             0x00007f6ab4642adc:   nopl   0x0(%rax)
           [Verified Entry Point]
   0.02%     0x00007f6ab4642ae0:   mov    %eax,-0x14000(%rsp)
   0.10%     0x00007f6ab4642ae7:   push   %rbp
   0.00%     0x00007f6ab4642ae8:   sub    $0x260,%rsp
   0.04%     0x00007f6ab4642aef:   nop
   0.08%     0x00007f6ab4642af0:   cmpl   $0x1,0x20(%r15)
   0.01%     0x00007f6ab4642af8:   jne    0x00007f6ab464358a           ;*synchronization entry
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@-1 (line 303)
   0.03%     0x00007f6ab4642afe:   vmovq  %r8,%xmm0
   0.00%     0x00007f6ab4642b03:   mov    0xc(%rdx),%r10d              ; implicit exception: dispatches to 0x00007f6ab464354c
   0.07%     0x00007f6ab4642b07:   cmp    $0x9,%r10d
          ╭  0x00007f6ab4642b0b:   jbe    0x00007f6ab46434da
   0.01%  │  0x00007f6ab4642b11:   mov    0xc(%rcx),%r11d              ; implicit exception: dispatches to 0x00007f6ab4643560
   0.02%  │  0x00007f6ab4642b15:   mov    0x10(%rdx),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@2 (line 303)
          │  0x00007f6ab4642b19:   nopl   0x0(%rax)
   0.05%  │  0x00007f6ab4642b20:   cmp    $0x9,%r11d
          │  0x00007f6ab4642b24:   jbe    0x00007f6ab4643508
   0.00%  │  0x00007f6ab4642b2a:   vmovq  %rsi,%xmm6
   0.02%  │  0x00007f6ab4642b2f:   vmovq  %rcx,%xmm1
   0.00%  │  0x00007f6ab4642b34:   mov    0x10(%rcx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@5 (line 303)
   0.05%  │  0x00007f6ab4642b38:   mov    0x18(%rdx),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@18 (line 304)
   0.01%  │  0x00007f6ab4642b3c:   vmovq  %r10,%xmm5
   0.02%  │  0x00007f6ab4642b41:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@6 (line 303)
   0.01%  │  0x00007f6ab4642b45:   vmovq  %r10,%xmm7
   0.09%  │  0x00007f6ab4642b4a:   mov    %r11,%rdi
   0.01%  │  0x00007f6ab4642b4d:   mov    %r8,0x78(%rsp)
   0.03%  │  0x00007f6ab4642b52:   imul   %r8,%rdi
   0.00%  │  0x00007f6ab4642b56:   mov    0x20(%rdx),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@43 (line 305)
   0.07%  │  0x00007f6ab4642b5a:   mov    0x28(%rdx),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@76 (line 306)
   0.00%  │  0x00007f6ab4642b5e:   mov    %r11,%rsi
   0.02%  │  0x00007f6ab4642b61:   mov    %r10,0x80(%rsp)
   0.00%  │  0x00007f6ab4642b69:   imul   %r10,%rsi
   0.07%  │  0x00007f6ab4642b6d:   mov    %r11,%r10
   0.00%  │  0x00007f6ab4642b70:   mov    %r8,0x88(%rsp)
   0.03%  │  0x00007f6ab4642b78:   imul   %r8,%r11
   0.01%  │  0x00007f6ab4642b7c:   mov    %r11,0x90(%rsp)
   0.08%  │  0x00007f6ab4642b84:   mov    0x30(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@117 (line 307)
   0.01%  │  0x00007f6ab4642b88:   mov    %r11,0x98(%rsp)
   0.04%  │  0x00007f6ab4642b90:   mov    0x38(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@166 (line 308)
   0.01%  │  0x00007f6ab4642b94:   mov    %r11,0xa0(%rsp)
   0.05%  │  0x00007f6ab4642b9c:   mov    %r10,%r13
   0.00%  │  0x00007f6ab4642b9f:   imul   0x98(%rsp),%r13
   0.13%  │  0x00007f6ab4642ba8:   mov    %r10,%r11
          │  0x00007f6ab4642bab:   imul   0xa0(%rsp),%r11
   0.11%  │  0x00007f6ab4642bb4:   mov    %r11,0xa8(%rsp)
   0.19%  │  0x00007f6ab4642bbc:   mov    0x40(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@225 (line 309)
   0.00%  │  0x00007f6ab4642bc0:   mov    %r11,0xb0(%rsp)
   0.00%  │  0x00007f6ab4642bc8:   mov    0x48(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@294 (line 310)
   0.01%  │  0x00007f6ab4642bcc:   mov    %r11,0xb8(%rsp)              ;   {no_reloc}
   0.09%  │  0x00007f6ab4642bd4:   mov    %r10,%r11
          │  0x00007f6ab4642bd7:   imul   0xb0(%rsp),%r11
   0.04%  │  0x00007f6ab4642be0:   mov    %r11,0xc0(%rsp)
   0.08%  │  0x00007f6ab4642be8:   mov    %r10,%r11
   0.04%  │  0x00007f6ab4642beb:   imul   0xb8(%rsp),%r11
   0.04%  │  0x00007f6ab4642bf4:   mov    %r11,0xc8(%rsp)
   0.12%  │  0x00007f6ab4642bfc:   mov    0x50(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@373 (line 311)
   0.01%  │  0x00007f6ab4642c00:   mov    %r11,0xd0(%rsp)
   0.02%  │  0x00007f6ab4642c08:   mov    0x58(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@462 (line 312)
   0.01%  │  0x00007f6ab4642c0c:   mov    %r11,0xd8(%rsp)
   0.07%  │  0x00007f6ab4642c14:   mov    %r10,%r11
   0.02%  │  0x00007f6ab4642c17:   imul   0xd0(%rsp),%r11
   0.03%  │  0x00007f6ab4642c20:   mov    %r11,0xe0(%rsp)
   0.17%  │  0x00007f6ab4642c28:   imul   0xd8(%rsp),%r10
   0.01%  │  0x00007f6ab4642c31:   mov    %r10,0xe8(%rsp)
   0.09%  │  0x00007f6ab4642c39:   mov    0x18(%rcx),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@14 (line 304)
   0.00%  │  0x00007f6ab4642c3d:   vmovq  %xmm1,%r10
   0.01%  │  0x00007f6ab4642c42:   mov    0x20(%r10),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@31 (line 305)
          │  0x00007f6ab4642c46:   mov    %rcx,%r10
   0.08%  │  0x00007f6ab4642c49:   imul   0xd8(%rsp),%r10
   0.00%  │  0x00007f6ab4642c52:   mov    %r10,0xf0(%rsp)
   0.05%  │  0x00007f6ab4642c5a:   mov    %r8,%r10
   0.00%  │  0x00007f6ab4642c5d:   imul   0xd8(%rsp),%r10
   0.06%  │  0x00007f6ab4642c66:   mov    %r10,0xf8(%rsp)
   0.02%  │  0x00007f6ab4642c6e:   mov    %r8,%r10
   0.04%  │  0x00007f6ab4642c71:   imul   0xd0(%rsp),%r10
   0.01%  │  0x00007f6ab4642c7a:   mov    %r10,0x100(%rsp)
   0.06%  │  0x00007f6ab4642c82:   mov    %r8,%r10
   0.02%  │  0x00007f6ab4642c85:   imul   0xb8(%rsp),%r10
   0.04%  │  0x00007f6ab4642c8e:   mov    %r10,0x108(%rsp)
   0.01%  │  0x00007f6ab4642c96:   mov    %r8,%r10
   0.03%  │  0x00007f6ab4642c99:   imul   0xb0(%rsp),%r10
   0.01%  │  0x00007f6ab4642ca2:   mov    %r10,0x110(%rsp)
   0.06%  │  0x00007f6ab4642caa:   mov    %r8,%r10
   0.00%  │  0x00007f6ab4642cad:   imul   0xa0(%rsp),%r10
   0.03%  │  0x00007f6ab4642cb6:   mov    %r10,0x118(%rsp)
   0.03%  │  0x00007f6ab4642cbe:   mov    %r8,%r10
   0.03%  │  0x00007f6ab4642cc1:   imul   0x98(%rsp),%r10
   0.01%  │  0x00007f6ab4642cca:   mov    %r10,0x120(%rsp)
   0.07%  │  0x00007f6ab4642cd2:   mov    %r8,%r10                     ;   {no_reloc}
          │  0x00007f6ab4642cd5:   imul   0x88(%rsp),%r10
   0.03%  │  0x00007f6ab4642cde:   mov    %r10,0x128(%rsp)
   0.04%  │  0x00007f6ab4642ce6:   mov    %r8,%r10
   0.04%  │  0x00007f6ab4642ce9:   imul   0x80(%rsp),%r10
   0.00%  │  0x00007f6ab4642cf2:   mov    0x78(%rsp),%r11
   0.03%  │  0x00007f6ab4642cf7:   imul   %r8,%r11
   0.04%  │  0x00007f6ab4642cfb:   vmovq  %xmm5,%r9
   0.05%  │  0x00007f6ab4642d00:   imul   %r8,%r9
   0.00%  │  0x00007f6ab4642d04:   mov    %r9,%rax
   0.03%  │  0x00007f6ab4642d07:   mov    %rcx,%r8
   0.03%  │  0x00007f6ab4642d0a:   imul   0xd0(%rsp),%r8
   0.04%  │  0x00007f6ab4642d13:   mov    %r8,0x130(%rsp)
   0.14%  │  0x00007f6ab4642d1b:   mov    %rcx,%r8
   0.00%  │  0x00007f6ab4642d1e:   imul   0xb8(%rsp),%r8
          │  0x00007f6ab4642d27:   mov    %r8,0x138(%rsp)
   0.10%  │  0x00007f6ab4642d2f:   mov    %rcx,%r8
   0.00%  │  0x00007f6ab4642d32:   imul   0xb0(%rsp),%r8
          │  0x00007f6ab4642d3b:   mov    %r8,0x140(%rsp)
   0.12%  │  0x00007f6ab4642d43:   mov    %rcx,%rdx
          │  0x00007f6ab4642d46:   imul   0xa0(%rsp),%rdx
          │  0x00007f6ab4642d4f:   mov    %rcx,%r8
   0.00%  │  0x00007f6ab4642d52:   imul   0x98(%rsp),%r8
   0.10%  │  0x00007f6ab4642d5b:   mov    %r8,0x148(%rsp)
   0.09%  │  0x00007f6ab4642d63:   mov    %rcx,%r8
          │  0x00007f6ab4642d66:   imul   0x88(%rsp),%r8
   0.00%  │  0x00007f6ab4642d6f:   mov    %rcx,%r9
   0.01%  │  0x00007f6ab4642d72:   imul   0x80(%rsp),%r9
   0.09%  │  0x00007f6ab4642d7b:   mov    %rcx,%rbx
          │  0x00007f6ab4642d7e:   imul   0x78(%rsp),%rbx
          │  0x00007f6ab4642d84:   add    %rbx,%rax
   0.10%  │  0x00007f6ab4642d87:   add    %rsi,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@48 (line 305)
   0.12%  │  0x00007f6ab4642d8a:   vmovq  %rax,%xmm8
   0.19%  │  0x00007f6ab4642d8f:   vmovq  %xmm5,%rbx
          │  0x00007f6ab4642d94:   imul   %rcx,%rbx
          │  0x00007f6ab4642d98:   add    %rdi,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@23 (line 304)
          │  0x00007f6ab4642d9b:   vmovq  %rbx,%xmm9
   0.11%  │  0x00007f6ab4642da0:   vmovq  %xmm1,%rcx
          │  0x00007f6ab4642da5:   mov    0x28(%rcx),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@56 (line 306)
   0.00%  │  0x00007f6ab4642da9:   vmovq  %xmm1,%rbx
          │  0x00007f6ab4642dae:   mov    0x30(%rbx),%rdi              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@89 (line 307)
   0.11%  │  0x00007f6ab4642db2:   mov    %rcx,%rbx
          │  0x00007f6ab4642db5:   imul   0xd8(%rsp),%rbx
   0.01%  │  0x00007f6ab4642dbe:   mov    %rbx,0x150(%rsp)
   0.00%  │  0x00007f6ab4642dc6:   mov    %rdi,%rbx
   0.11%  │  0x00007f6ab4642dc9:   imul   0xd8(%rsp),%rbx              ;   {no_reloc}
   0.00%  │  0x00007f6ab4642dd2:   mov    %rbx,0x158(%rsp)
          │  0x00007f6ab4642dda:   mov    %rdi,%rbx
          │  0x00007f6ab4642ddd:   imul   0xd0(%rsp),%rbx
   0.09%  │  0x00007f6ab4642de6:   mov    %rbx,0x160(%rsp)
          │  0x00007f6ab4642dee:   mov    %rdi,%rbx
          │  0x00007f6ab4642df1:   imul   0xb8(%rsp),%rbx
          │  0x00007f6ab4642dfa:   mov    %rbx,0x168(%rsp)
   0.09%  │  0x00007f6ab4642e02:   mov    %rdi,%rbx
          │  0x00007f6ab4642e05:   imul   0xb0(%rsp),%rbx
          │  0x00007f6ab4642e0e:   mov    %rbx,0x170(%rsp)
   0.00%  │  0x00007f6ab4642e16:   mov    %rdi,%rbx
   0.11%  │  0x00007f6ab4642e19:   imul   0xa0(%rsp),%rbx
          │  0x00007f6ab4642e22:   mov    %rbx,0x178(%rsp)
   0.00%  │  0x00007f6ab4642e2a:   mov    %rdi,%rbx
          │  0x00007f6ab4642e2d:   imul   0x98(%rsp),%rbx
   0.10%  │  0x00007f6ab4642e36:   mov    %rbx,0x180(%rsp)
          │  0x00007f6ab4642e3e:   mov    0x88(%rsp),%rbx
          │  0x00007f6ab4642e46:   imul   %rdi,%rbx
          │  0x00007f6ab4642e4a:   mov    %rbx,0x188(%rsp)
   0.10%  │  0x00007f6ab4642e52:   mov    0x80(%rsp),%rsi
          │  0x00007f6ab4642e5a:   imul   %rdi,%rsi
          │  0x00007f6ab4642e5e:   mov    0x78(%rsp),%rax
          │  0x00007f6ab4642e63:   imul   %rdi,%rax
   0.09%  │  0x00007f6ab4642e67:   vmovq  %xmm5,%rbx
          │  0x00007f6ab4642e6c:   imul   %rdi,%rbx
          │  0x00007f6ab4642e70:   mov    %rcx,%rdi
          │  0x00007f6ab4642e73:   imul   0xd0(%rsp),%rdi
   0.12%  │  0x00007f6ab4642e7c:   mov    %rdi,0x190(%rsp)
   0.11%  │  0x00007f6ab4642e84:   mov    %rcx,%rdi
          │  0x00007f6ab4642e87:   imul   0xb8(%rsp),%rdi
          │  0x00007f6ab4642e90:   mov    %rdi,0x198(%rsp)
   0.12%  │  0x00007f6ab4642e98:   mov    %rcx,%rdi
          │  0x00007f6ab4642e9b:   imul   0xb0(%rsp),%rdi
          │  0x00007f6ab4642ea4:   mov    %rdi,0x1a0(%rsp)
   0.11%  │  0x00007f6ab4642eac:   mov    %rcx,%rdi
          │  0x00007f6ab4642eaf:   imul   0xa0(%rsp),%rdi
          │  0x00007f6ab4642eb8:   mov    %rdi,0x1a8(%rsp)
   0.15%  │  0x00007f6ab4642ec0:   mov    %rcx,%rdi
          │  0x00007f6ab4642ec3:   imul   0x98(%rsp),%rdi
          │  0x00007f6ab4642ecc:   mov    %rdi,0x1b0(%rsp)             ;   {no_reloc}
   0.11%  │  0x00007f6ab4642ed4:   mov    %rcx,%rbp
   0.02%  │  0x00007f6ab4642ed7:   imul   0x88(%rsp),%rbp
          │  0x00007f6ab4642ee0:   mov    0x80(%rsp),%r14
          │  0x00007f6ab4642ee8:   imul   %rcx,%r14
   0.08%  │  0x00007f6ab4642eec:   mov    0x78(%rsp),%rdi
   0.02%  │  0x00007f6ab4642ef1:   imul   %rcx,%rdi
          │  0x00007f6ab4642ef5:   add    %rdi,%rbx
   0.09%  │  0x00007f6ab4642ef8:   add    %r10,%rbx
   0.44%  │  0x00007f6ab4642efb:   add    %r8,%rbx
   0.03%  │  0x00007f6ab4642efe:   add    %r13,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@122 (line 307)
   0.02%  │  0x00007f6ab4642f01:   vmovq  %rbx,%xmm2
   0.03%  │  0x00007f6ab4642f06:   vmovq  %xmm5,%r10
   0.08%  │  0x00007f6ab4642f0b:   imul   %rcx,%r10
          │  0x00007f6ab4642f0f:   add    %r11,%r10
          │  0x00007f6ab4642f12:   add    %r9,%r10
   0.01%  │  0x00007f6ab4642f15:   add    0x90(%rsp),%r10              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@81 (line 306)
   0.06%  │  0x00007f6ab4642f1d:   vmovq  %r10,%xmm10
   0.01%  │  0x00007f6ab4642f22:   vmovq  %xmm1,%r10
          │  0x00007f6ab4642f27:   mov    0x38(%r10),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@130 (line 308)
          │  0x00007f6ab4642f2b:   vmovq  %xmm1,%r11
   0.10%  │  0x00007f6ab4642f30:   mov    0x40(%r11),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@180 (line 309)
   0.03%  │  0x00007f6ab4642f34:   mov    %r10,%r11
          │  0x00007f6ab4642f37:   imul   0xd8(%rsp),%r11
   0.00%  │  0x00007f6ab4642f40:   mov    %r11,0x90(%rsp)
   0.08%  │  0x00007f6ab4642f48:   mov    %r8,%r11
   0.01%  │  0x00007f6ab4642f4b:   imul   0xd8(%rsp),%r11
          │  0x00007f6ab4642f54:   mov    %r11,0x1b8(%rsp)
          │  0x00007f6ab4642f5c:   mov    %r8,%r11
   0.09%  │  0x00007f6ab4642f5f:   imul   0xd0(%rsp),%r11
   0.02%  │  0x00007f6ab4642f68:   mov    %r11,0x1c0(%rsp)
   0.01%  │  0x00007f6ab4642f70:   mov    %r8,%r11
          │  0x00007f6ab4642f73:   imul   0xb8(%rsp),%r11
   0.09%  │  0x00007f6ab4642f7c:   mov    %r11,0x1c8(%rsp)
   0.00%  │  0x00007f6ab4642f84:   mov    %r8,%r11
   0.02%  │  0x00007f6ab4642f87:   imul   0xb0(%rsp),%r11
          │  0x00007f6ab4642f90:   mov    %r11,0x1d0(%rsp)
   0.08%  │  0x00007f6ab4642f98:   mov    0xa0(%rsp),%r11
   0.00%  │  0x00007f6ab4642fa0:   imul   %r8,%r11
   0.02%  │  0x00007f6ab4642fa4:   mov    %r11,0x1d8(%rsp)
   0.03%  │  0x00007f6ab4642fac:   mov    0x98(%rsp),%r11
   0.05%  │  0x00007f6ab4642fb4:   imul   %r8,%r11
   0.00%  │  0x00007f6ab4642fb8:   mov    %r11,0x1e0(%rsp)
   0.05%  │  0x00007f6ab4642fc0:   mov    0x88(%rsp),%r11
          │  0x00007f6ab4642fc8:   imul   %r8,%r11
   0.07%  │  0x00007f6ab4642fcc:   mov    %r11,0x1e8(%rsp)             ;   {no_reloc}
   0.05%  │  0x00007f6ab4642fd4:   mov    0x80(%rsp),%rbx
          │  0x00007f6ab4642fdc:   imul   %r8,%rbx
   0.00%  │  0x00007f6ab4642fe0:   mov    0x78(%rsp),%r11
   0.07%  │  0x00007f6ab4642fe5:   imul   %r8,%r11
   0.03%  │  0x00007f6ab4642fe9:   mov    %r11,0x1f0(%rsp)
   0.06%  │  0x00007f6ab4642ff1:   vmovq  %xmm5,%r11
          │  0x00007f6ab4642ff6:   imul   %r8,%r11
   0.03%  │  0x00007f6ab4642ffa:   mov    %r10,%r8
          │  0x00007f6ab4642ffd:   imul   0xd0(%rsp),%r8
   0.06%  │  0x00007f6ab4643006:   mov    %r8,0x1f8(%rsp)
   0.10%  │  0x00007f6ab464300e:   mov    %r10,%r8
   0.04%  │  0x00007f6ab4643011:   imul   0xb8(%rsp),%r8
          │  0x00007f6ab464301a:   mov    %r8,0x200(%rsp)
   0.07%  │  0x00007f6ab4643022:   mov    %r10,%r8
          │  0x00007f6ab4643025:   imul   0xb0(%rsp),%r8
   0.02%  │  0x00007f6ab464302e:   mov    %r8,0x208(%rsp)
   0.08%  │  0x00007f6ab4643036:   mov    %r10,%r8
          │  0x00007f6ab4643039:   imul   0xa0(%rsp),%r8
   0.00%  │  0x00007f6ab4643042:   mov    %r8,0x210(%rsp)
   0.14%  │  0x00007f6ab464304a:   mov    0x98(%rsp),%r8
          │  0x00007f6ab4643052:   imul   %r10,%r8
          │  0x00007f6ab4643056:   mov    %r8,0x218(%rsp)
   0.08%  │  0x00007f6ab464305e:   mov    0x88(%rsp),%rdi
   0.02%  │  0x00007f6ab4643066:   imul   %r10,%rdi
          │  0x00007f6ab464306a:   mov    0x80(%rsp),%r13
          │  0x00007f6ab4643072:   imul   %r10,%r13
   0.07%  │  0x00007f6ab4643076:   mov    0x78(%rsp),%r8
   0.04%  │  0x00007f6ab464307b:   imul   %r10,%r8
          │  0x00007f6ab464307f:   add    %r8,%r11
   0.04%  │  0x00007f6ab4643082:   add    %rsi,%r11
   0.08%  │  0x00007f6ab4643085:   add    %rbp,%r11
   0.12%  │  0x00007f6ab4643088:   add    0x120(%rsp),%r11
   0.10%  │  0x00007f6ab4643090:   add    %rdx,%r11
   0.10%  │  0x00007f6ab4643093:   add    0xc0(%rsp),%r11              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@230 (line 309)
   0.12%  │  0x00007f6ab464309b:   vmovq  %r11,%xmm3
   0.25%  │  0x00007f6ab46430a0:   vmovq  %xmm5,%r11
          │  0x00007f6ab46430a5:   imul   %r10,%r11
          │  0x00007f6ab46430a9:   add    %rax,%r11
          │  0x00007f6ab46430ac:   add    %r14,%r11
   0.08%  │  0x00007f6ab46430af:   add    0x128(%rsp),%r11
          │  0x00007f6ab46430b7:   add    0x148(%rsp),%r11
          │  0x00007f6ab46430bf:   add    0xa8(%rsp),%r11              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@171 (line 308)
          │  0x00007f6ab46430c7:   vmovq  %r11,%xmm4
   0.10%  │  0x00007f6ab46430cc:   vmovq  %xmm1,%r10                   ;   {no_reloc}
          │  0x00007f6ab46430d1:   mov    0x48(%r10),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@239 (line 310)
   0.00%  │  0x00007f6ab46430d5:   vmovq  %xmm1,%r11
          │  0x00007f6ab46430da:   mov    0x50(%r11),%rdx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@308 (line 311)
   0.11%  │  0x00007f6ab46430de:   mov    %r10,%r11
          │  0x00007f6ab46430e1:   imul   0xd8(%rsp),%r11
   0.00%  │  0x00007f6ab46430ea:   mov    %r11,0xa8(%rsp)
   0.03%  │  0x00007f6ab46430f2:   mov    %rdx,%r11
   0.09%  │  0x00007f6ab46430f5:   imul   0xd8(%rsp),%r11
          │  0x00007f6ab46430fe:   mov    %rdx,%r8
          │  0x00007f6ab4643101:   imul   0xd0(%rsp),%r8
   0.01%  │  0x00007f6ab464310a:   mov    0xb8(%rsp),%r9
   0.11%  │  0x00007f6ab4643112:   imul   %rdx,%r9
          │  0x00007f6ab4643116:   mov    %r9,0xc0(%rsp)
   0.06%  │  0x00007f6ab464311e:   mov    0xb0(%rsp),%r9
   0.00%  │  0x00007f6ab4643126:   imul   %rdx,%r9
   0.05%  │  0x00007f6ab464312a:   mov    %r9,0x120(%rsp)
   0.05%  │  0x00007f6ab4643132:   mov    0xa0(%rsp),%r9
          │  0x00007f6ab464313a:   imul   %rdx,%r9
          │  0x00007f6ab464313e:   mov    %r9,0x128(%rsp)
   0.09%  │  0x00007f6ab4643146:   mov    0x98(%rsp),%r9
          │  0x00007f6ab464314e:   imul   %rdx,%r9
          │  0x00007f6ab4643152:   mov    %r9,0x148(%rsp)
   0.08%  │  0x00007f6ab464315a:   mov    0x88(%rsp),%r9
   0.01%  │  0x00007f6ab4643162:   imul   %rdx,%r9
          │  0x00007f6ab4643166:   mov    %r9,0x220(%rsp)
   0.10%  │  0x00007f6ab464316e:   mov    0x80(%rsp),%r9
          │  0x00007f6ab4643176:   imul   %rdx,%r9
   0.02%  │  0x00007f6ab464317a:   mov    %r9,0x228(%rsp)
   0.09%  │  0x00007f6ab4643182:   mov    0x78(%rsp),%r9
          │  0x00007f6ab4643187:   imul   %rdx,%r9
          │  0x00007f6ab464318b:   vmovq  %xmm5,%rcx
   0.01%  │  0x00007f6ab4643190:   imul   %rdx,%rcx
   0.07%  │  0x00007f6ab4643194:   mov    %r10,%rdx
          │  0x00007f6ab4643197:   imul   0xd0(%rsp),%rdx
   0.00%  │  0x00007f6ab46431a0:   mov    %r10,%rsi
   0.02%  │  0x00007f6ab46431a3:   imul   0xb8(%rsp),%rsi
   0.09%  │  0x00007f6ab46431ac:   mov    0xb0(%rsp),%rax
          │  0x00007f6ab46431b4:   imul   %r10,%rax
   0.08%  │  0x00007f6ab46431b8:   mov    0xa0(%rsp),%rbp
   0.02%  │  0x00007f6ab46431c0:   imul   %r10,%rbp
   0.09%  │  0x00007f6ab46431c4:   mov    %rbp,0x230(%rsp)
   0.18%  │  0x00007f6ab46431cc:   mov    0x98(%rsp),%rbp              ;   {no_reloc}
          │  0x00007f6ab46431d4:   imul   %r10,%rbp
   0.01%  │  0x00007f6ab46431d8:   mov    %rbp,0x238(%rsp)
   0.09%  │  0x00007f6ab46431e0:   mov    0x88(%rsp),%rbp
          │  0x00007f6ab46431e8:   imul   %r10,%rbp
          │  0x00007f6ab46431ec:   mov    %rbp,0x240(%rsp)
   0.10%  │  0x00007f6ab46431f4:   mov    0x80(%rsp),%rbp
          │  0x00007f6ab46431fc:   imul   %r10,%rbp
          │  0x00007f6ab4643200:   mov    0x78(%rsp),%r14
          │  0x00007f6ab4643205:   imul   %r10,%r14
   0.08%  │  0x00007f6ab4643209:   add    %r14,%rcx
   0.00%  │  0x00007f6ab464320c:   add    %rbx,%rcx
   0.20%  │  0x00007f6ab464320f:   add    %rdi,%rcx
   0.02%  │  0x00007f6ab4643212:   add    0x180(%rsp),%rcx
   0.10%  │  0x00007f6ab464321a:   add    0x1a8(%rsp),%rcx
   0.09%  │  0x00007f6ab4643222:   add    0x110(%rsp),%rcx
   0.11%  │  0x00007f6ab464322a:   add    0x138(%rsp),%rcx
   0.10%  │  0x00007f6ab4643232:   add    0xe0(%rsp),%rcx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@378 (line 311)
   0.11%  │  0x00007f6ab464323a:   mov    %rcx,%r14
          │  0x00007f6ab464323d:   vmovq  %xmm5,%rcx
          │  0x00007f6ab4643242:   imul   %r10,%rcx
          │  0x00007f6ab4643246:   add    0x1f0(%rsp),%rcx
   0.09%  │  0x00007f6ab464324e:   add    %r13,%rcx
          │  0x00007f6ab4643251:   add    0x188(%rsp),%rcx
          │  0x00007f6ab4643259:   add    0x1b0(%rsp),%rcx
          │  0x00007f6ab4643261:   add    0x118(%rsp),%rcx
   0.12%  │  0x00007f6ab4643269:   add    0x140(%rsp),%rcx
          │  0x00007f6ab4643271:   add    0xc8(%rsp),%rcx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@299 (line 310)
   0.10%  │  0x00007f6ab4643279:   mov    %rcx,%r13
          │  0x00007f6ab464327c:   vmovq  %xmm1,%r10
   0.02%  │  0x00007f6ab4643281:   mov    0x58(%r10),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@387 (line 312)
   0.00%  │  0x00007f6ab4643285:   vmovq  %xmm5,%r10
   0.10%  │  0x00007f6ab464328a:   imul   %rcx,%r10
   0.00%  │  0x00007f6ab464328e:   add    %r9,%r10
   0.02%  │  0x00007f6ab4643291:   add    %rbp,%r10
          │  0x00007f6ab4643294:   add    0x1e8(%rsp),%r10
   0.19%  │  0x00007f6ab464329c:   add    0x218(%rsp),%r10
   0.00%  │  0x00007f6ab46432a4:   add    0x178(%rsp),%r10
   0.12%  │  0x00007f6ab46432ac:   add    0x1a0(%rsp),%r10
   0.12%  │  0x00007f6ab46432b4:   add    0x108(%rsp),%r10
   0.10%  │  0x00007f6ab46432bc:   add    0x130(%rsp),%r10
   0.08%  │  0x00007f6ab46432c4:   add    0xe8(%rsp),%r10              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@467 (line 312)
   0.12%  │  0x00007f6ab46432cc:   mov    %r10,%rbp                    ;   {no_reloc}
          │  0x00007f6ab46432cf:   mov    %rcx,%r10
   0.00%  │  0x00007f6ab46432d2:   imul   0xd8(%rsp),%r10              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@896 (line 321)
          │  0x00007f6ab46432db:   vmovq  %r10,%xmm1
   0.10%  │  0x00007f6ab46432e0:   mov    0xd0(%rsp),%r10
          │  0x00007f6ab46432e8:   imul   %rcx,%r10
          │  0x00007f6ab46432ec:   add    %r11,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@885 (line 320)
          │  0x00007f6ab46432ef:   vmovq  %r10,%xmm5
   0.12%  │  0x00007f6ab46432f4:   mov    0xb8(%rsp),%r9
          │  0x00007f6ab46432fc:   imul   %rcx,%r9
          │  0x00007f6ab4643300:   add    %r8,%r9
          │  0x00007f6ab4643303:   add    0xa8(%rsp),%r9               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@864 (line 319)
   0.11%  │  0x00007f6ab464330b:   mov    0xb0(%rsp),%r8
          │  0x00007f6ab4643313:   imul   %rcx,%r8
          │  0x00007f6ab4643317:   add    0xc0(%rsp),%r8
          │  0x00007f6ab464331f:   add    %rdx,%r8
   0.11%  │  0x00007f6ab4643322:   add    0x1b8(%rsp),%r8              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@833 (line 318)
          │  0x00007f6ab464332a:   mov    0xa0(%rsp),%rbx
          │  0x00007f6ab4643332:   imul   %rcx,%rbx
          │  0x00007f6ab4643336:   add    0x120(%rsp),%rbx
   0.10%  │  0x00007f6ab464333e:   add    %rsi,%rbx
          │  0x00007f6ab4643341:   add    0x1c0(%rsp),%rbx
          │  0x00007f6ab4643349:   add    0x90(%rsp),%rbx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@792 (line 317)
          │  0x00007f6ab4643351:   mov    0x98(%rsp),%rdi
   0.09%  │  0x00007f6ab4643359:   imul   %rcx,%rdi
          │  0x00007f6ab464335d:   add    0x128(%rsp),%rdi
          │  0x00007f6ab4643365:   add    %rax,%rdi
          │  0x00007f6ab4643368:   add    0x1c8(%rsp),%rdi
   0.10%  │  0x00007f6ab4643370:   add    0x1f8(%rsp),%rdi
          │  0x00007f6ab4643378:   add    0x158(%rsp),%rdi             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@743 (line 316)
   0.08%  │  0x00007f6ab4643380:   mov    0x88(%rsp),%r10
          │  0x00007f6ab4643388:   imul   %rcx,%r10
   0.04%  │  0x00007f6ab464338c:   add    0x148(%rsp),%r10
          │  0x00007f6ab4643394:   add    0x230(%rsp),%r10
   0.07%  │  0x00007f6ab464339c:   add    0x1d0(%rsp),%r10
          │  0x00007f6ab46433a4:   add    0x200(%rsp),%r10
   0.04%  │  0x00007f6ab46433ac:   add    0x160(%rsp),%r10
   0.06%  │  0x00007f6ab46433b4:   add    0x150(%rsp),%r10             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@686 (line 315)
   0.06%  │  0x00007f6ab46433bc:   mov    0x80(%rsp),%r11
          │  0x00007f6ab46433c4:   imul   %rcx,%r11
   0.05%  │  0x00007f6ab46433c8:   add    0x220(%rsp),%r11             ;   {no_reloc}
          │  0x00007f6ab46433d0:   add    0x238(%rsp),%r11
   0.09%  │  0x00007f6ab46433d8:   add    0x1d8(%rsp),%r11
          │  0x00007f6ab46433e0:   add    0x208(%rsp),%r11
   0.06%  │  0x00007f6ab46433e8:   add    0x168(%rsp),%r11
   0.07%  │  0x00007f6ab46433f0:   add    0x190(%rsp),%r11
   0.08%  │  0x00007f6ab46433f8:   add    0xf8(%rsp),%r11              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@621 (line 314)
   0.11%  │  0x00007f6ab4643400:   mov    0x78(%rsp),%rsi
          │  0x00007f6ab4643405:   imul   %rcx,%rsi
          │  0x00007f6ab4643409:   add    0x228(%rsp),%rsi
          │  0x00007f6ab4643411:   add    0x240(%rsp),%rsi
   0.09%  │  0x00007f6ab4643419:   add    0x1e0(%rsp),%rsi
   0.05%  │  0x00007f6ab4643421:   add    0x210(%rsp),%rsi
   0.04%  │  0x00007f6ab4643429:   add    0x170(%rsp),%rsi
   0.09%  │  0x00007f6ab4643431:   add    0x198(%rsp),%rsi
   0.13%  │  0x00007f6ab4643439:   add    0x100(%rsp),%rsi
   0.11%  │  0x00007f6ab4643441:   add    0xf0(%rsp),%rsi              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@548 (line 313)
   0.09%  │  0x00007f6ab4643449:   vmovq  %xmm0,%rdx
          │  0x00007f6ab464344e:   vmovsd %xmm2,(%rsp)
   0.04%  │  0x00007f6ab4643453:   vmovsd %xmm4,0x8(%rsp)
   0.01%  │  0x00007f6ab4643459:   vmovsd %xmm3,0x10(%rsp)
   0.09%  │  0x00007f6ab464345f:   mov    %r13,0x18(%rsp)
   0.06%  │  0x00007f6ab4643464:   mov    %r14,0x20(%rsp)
   0.01%  │  0x00007f6ab4643469:   mov    %rbp,0x28(%rsp)
   0.04%  │  0x00007f6ab464346e:   mov    %rsi,0x30(%rsp)
   0.17%  │  0x00007f6ab4643473:   mov    %r11,0x38(%rsp)
   0.00%  │  0x00007f6ab4643478:   mov    %r10,0x40(%rsp)
   0.05%  │  0x00007f6ab464347d:   mov    %rdi,0x48(%rsp)
   0.03%  │  0x00007f6ab4643482:   mov    %rbx,0x50(%rsp)
   0.06%  │  0x00007f6ab4643487:   mov    %r8,0x58(%rsp)
   0.02%  │  0x00007f6ab464348c:   mov    %r9,0x60(%rsp)
   0.06%  │  0x00007f6ab4643491:   vmovsd %xmm5,0x68(%rsp)
   0.04%  │  0x00007f6ab4643497:   vmovsd %xmm1,0x70(%rsp)
   0.11%  │  0x00007f6ab464349d:   vmovq  %xmm6,%rsi
   0.00%  │  0x00007f6ab46434a2:   vmovq  %xmm7,%rcx
   0.00%  │  0x00007f6ab46434a7:   vmovq  %xmm9,%r8
   0.02%  │  0x00007f6ab46434ac:   vmovq  %xmm8,%r9
   0.10%  │  0x00007f6ab46434b1:   vmovq  %xmm10,%rdi
          │  0x00007f6ab46434b6:   nop
   0.00%  │  0x00007f6ab46434b7:   call   0x00007f6ab46416c0           ; ImmutableOopMap {}
          │                                                            ;*invokevirtual carryReduce {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@939 (line 323)
          │                                                            ;   {optimized virtual_call}
   0.03%  │  0x00007f6ab46434bc:   nopl   0xbac(%rax,%rax,1)           ;*invokevirtual carryReduce {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@939 (line 323)
          │                                                            ;   {other}
   0.04%  │  0x00007f6ab46434c4:   add    $0x260,%rsp
   0.04%  │  0x00007f6ab46434cb:   pop    %rbp
   0.06%  │  0x00007f6ab46434cc:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f6ab46434d3:   ja     0x00007f6ab4643574
   0.06%  │  0x00007f6ab46434d9:   ret    
          ↘  0x00007f6ab46434da:   mov    %rsi,%rbp
             0x00007f6ab46434dd:   mov    %rcx,0x80(%rsp)
             0x00007f6ab46434e5:   mov    %r8,0x88(%rsp)
             0x00007f6ab46434ed:   mov    %rdx,0x90(%rsp)
             0x00007f6ab46434f5:   mov    $0xffffffe4,%esi
             0x00007f6ab46434fa:   nop
             0x00007f6ab46434fb:   call   0x00007f6ab40c9f00           ; ImmutableOopMap {rbp=Oop [128]=Oop [136]=Oop [144]=Oop }
                                                                       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@2 (line 303)
                                                                       ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  16.67%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce, version 2, compile id 656 

               # parm18:   [sp+0x108]   = long
               # parm19:   [sp+0x110]   = long
               0x00007f6ab46416a0:   mov    0x8(%rsi),%r10d
               0x00007f6ab46416a4:   movabs $0x7f6a3b000000,%r11
               0x00007f6ab46416ae:   add    %r11,%r10
               0x00007f6ab46416b1:   cmp    %r10,%rax
               0x00007f6ab46416b4:   jne    0x00007f6ab40c4080           ;   {runtime_call ic_miss_stub}
               0x00007f6ab46416ba:   xchg   %ax,%ax
               0x00007f6ab46416bc:   nopl   0x0(%rax)
             [Verified Entry Point]
   0.13%       0x00007f6ab46416c0:   mov    %eax,-0x14000(%rsp)
   0.00%       0x00007f6ab46416c7:   push   %rbp
   0.11%       0x00007f6ab46416c8:   sub    $0x90,%rsp
   0.01%       0x00007f6ab46416cf:   nop
   0.00%       0x00007f6ab46416d0:   cmpl   $0x1,0x20(%r15)
   0.13%  ╭    0x00007f6ab46416d8:   jne    0x00007f6ab4641d40           ;*synchronization entry
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@-1 (line 81)
   0.01%  │    0x00007f6ab46416de:   mov    %rdi,%r14
          │    0x00007f6ab46416e1:   vmovq  %r9,%xmm9
          │    0x00007f6ab46416e6:   vmovq  %r8,%xmm8
   0.15%  │    0x00007f6ab46416eb:   vmovq  %rcx,%xmm7
   0.01%  │    0x00007f6ab46416f0:   vmovq  %rdx,%xmm6
   0.00%  │    0x00007f6ab46416f5:   vmovq  %rsi,%xmm5
          │    0x00007f6ab46416fa:   mov    0x110(%rsp),%r10
   0.14%  │    0x00007f6ab4641702:   sar    $0x6,%r10
   0.02%  │    0x00007f6ab4641706:   mov    0x108(%rsp),%rcx
          │    0x00007f6ab464170e:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@24 (line 84)
   0.02%  │    0x00007f6ab4641711:   mov    0x110(%rsp),%r10
   0.11%  │    0x00007f6ab4641719:   shl    $0x14,%r10
   0.04%  │    0x00007f6ab464171d:   mov    %rcx,%r11
          │    0x00007f6ab4641720:   shl    $0x4,%r11
   0.04%  │    0x00007f6ab4641724:   and    $0x3ffffff,%r10
   0.09%  │    0x00007f6ab464172b:   mov    0x100(%rsp),%r9
   0.02%  │    0x00007f6ab4641733:   add    %r10,%r9
   0.02%  │    0x00007f6ab4641736:   and    $0x3ffffff,%r11
   0.02%  │    0x00007f6ab464173d:   mov    0xb8(%rsp),%rdx
   0.07%  │    0x00007f6ab4641745:   add    %r11,%rdx
   0.04%  │    0x00007f6ab4641748:   mov    %rcx,%r10
   0.02%  │    0x00007f6ab464174b:   sar    $0x4,%r10
          │    0x00007f6ab464174f:   mov    %r10,0xb8(%rsp)
   0.06%  │    0x00007f6ab4641757:   mov    %rcx,%r10
   0.06%  │    0x00007f6ab464175a:   shl    $0xe,%r10
   0.02%  │    0x00007f6ab464175e:   mov    %rcx,%r11
   0.00%  │    0x00007f6ab4641761:   sar    $0xc,%r11
   0.06%  │    0x00007f6ab4641765:   and    $0x3ffffff,%r10
   0.06%  │    0x00007f6ab464176c:   mov    0xf0(%rsp),%rbx
   0.02%  │    0x00007f6ab4641774:   sub    %r10,%rbx
   0.00%  │    0x00007f6ab4641777:   mov    %rcx,%r8
   0.05%  │    0x00007f6ab464177a:   shl    $0x14,%r8
   0.04%  │    0x00007f6ab464177e:   vmovq  %rcx,%xmm0
   0.03%  │    0x00007f6ab4641783:   sar    $0x6,%rcx
   0.01%  │    0x00007f6ab4641787:   and    $0x3ffffff,%r8
   0.07%  │    0x00007f6ab464178e:   vmovq  %xmm0,%rdi
   0.33%  │    0x00007f6ab4641793:   shl    $0x16,%rdi
   0.18%  │    0x00007f6ab4641797:   vmovq  %xmm0,%r10
          │    0x00007f6ab464179c:   sar    $0x16,%r10
   0.07%  │    0x00007f6ab46417a0:   mov    %r10,0xf0(%rsp)
   0.14%  │    0x00007f6ab46417a8:   and    $0x3ffffff,%rdi
   0.02%  │    0x00007f6ab46417af:   mov    0xd0(%rsp),%r10              ;   {no_reloc}
          │    0x00007f6ab46417b7:   sub    %rdi,%r10
   0.04%  │    0x00007f6ab46417ba:   vmovq  %r10,%xmm10
   0.20%  │    0x00007f6ab46417bf:   mov    0x110(%rsp),%r10
          │    0x00007f6ab46417c7:   sar    $0xc,%r10
   0.00%  │    0x00007f6ab46417cb:   sub    %r10,%r9
   0.02%  │    0x00007f6ab46417ce:   lea    (%r9,%rcx,1),%r10
   0.12%  │    0x00007f6ab46417d2:   vmovq  %r10,%xmm1
   0.02%  │    0x00007f6ab46417d7:   mov    0x110(%rsp),%r9
          │    0x00007f6ab46417df:   shl    $0xe,%r9
   0.02%  │    0x00007f6ab46417e3:   sar    $0x16,%r10
   0.10%  │    0x00007f6ab46417e7:   lea    (%rdx,%r10,1),%rcx
   0.00%  │    0x00007f6ab46417eb:   mov    %rcx,%rdi
          │    0x00007f6ab46417ee:   and    $0x3ffffff,%r9
   0.02%  │    0x00007f6ab46417f5:   mov    0xf8(%rsp),%rcx
   0.10%  │    0x00007f6ab46417fd:   sub    %r9,%rcx
   0.01%  │    0x00007f6ab4641800:   add    %r8,%rcx
          │    0x00007f6ab4641803:   sub    %r11,%rcx
   0.04%  │    0x00007f6ab4641806:   vmovq  %xmm1,%r11
   0.10%  │    0x00007f6ab464180b:   shl    $0x4,%r11
   0.02%  │    0x00007f6ab464180f:   vmovq  %xmm1,%r8
          │    0x00007f6ab4641814:   sar    $0xc,%r8
   0.05%  │    0x00007f6ab4641818:   and    $0x3ffffff,%r11
   0.08%  │    0x00007f6ab464181f:   mov    0xb0(%rsp),%r10
   0.01%  │    0x00007f6ab4641827:   add    %r11,%r10
          │    0x00007f6ab464182a:   vmovq  %xmm1,%r9
   0.03%  │    0x00007f6ab464182f:   shl    $0x14,%r9
   0.07%  │    0x00007f6ab4641833:   vmovq  %xmm1,%r11
   0.01%  │    0x00007f6ab4641838:   sar    $0x6,%r11
   0.00%  │    0x00007f6ab464183c:   add    %r11,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@212 (line 102)
   0.06%  │    0x00007f6ab464183f:   vmovq  %rcx,%xmm2
   0.11%  │    0x00007f6ab4641844:   and    $0x3ffffff,%r9
   0.00%  │    0x00007f6ab464184b:   add    %r9,%rbx
          │    0x00007f6ab464184e:   sub    %r8,%rbx
   0.04%  │    0x00007f6ab4641851:   mov    %rcx,%r11
   0.10%  │    0x00007f6ab4641854:   shl    $0x16,%r11
   0.01%  │    0x00007f6ab4641858:   mov    %rcx,%r8
          │    0x00007f6ab464185b:   sar    $0x16,%r8
   0.02%  │    0x00007f6ab464185f:   add    %r8,%r10
   0.10%  │    0x00007f6ab4641862:   and    $0x3ffffff,%r11
          │    0x00007f6ab4641869:   mov    %rcx,%r9
          │    0x00007f6ab464186c:   shl    $0x4,%r9
   0.04%  │    0x00007f6ab4641870:   mov    %rcx,%r8
   0.11%  │    0x00007f6ab4641873:   shl    $0xe,%r8
          │    0x00007f6ab4641877:   and    $0x3ffffff,%r9
          │    0x00007f6ab464187e:   mov    0xa8(%rsp),%rcx
   0.03%  │    0x00007f6ab4641886:   add    %r9,%rcx
   0.09%  │    0x00007f6ab4641889:   and    $0x3ffffff,%r8
   0.01%  │    0x00007f6ab4641890:   vmovq  %xmm2,%r9
          │    0x00007f6ab4641895:   sar    $0x6,%r9
   0.11%  │    0x00007f6ab4641899:   add    %r9,%rbx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@306 (line 111)
   0.20%  │    0x00007f6ab464189c:   vmovq  %rbx,%xmm3
   0.09%  │    0x00007f6ab46418a1:   vmovq  %xmm2,%rdx
          │    0x00007f6ab46418a6:   sar    $0xc,%rdx
   0.29%  │    0x00007f6ab46418aa:   mov    %rbx,%r9
   0.04%  │    0x00007f6ab46418ad:   shl    $0x16,%r9
   0.07%  │    0x00007f6ab46418b1:   and    $0x3ffffff,%r9               ;   {no_reloc}
          │    0x00007f6ab46418b8:   mov    %rdi,%rbx
   0.03%  │    0x00007f6ab46418bb:   sub    %r9,%rbx
   0.05%  │    0x00007f6ab46418be:   vmovq  %rbx,%xmm11
   0.17%  │    0x00007f6ab46418c3:   vmovq  %xmm3,%r9
   0.00%  │    0x00007f6ab46418c8:   sar    $0x16,%r9
   0.30%  │    0x00007f6ab46418cc:   add    %r9,%rcx
   0.06%  │    0x00007f6ab46418cf:   vmovq  %rcx,%xmm12
   0.19%  │    0x00007f6ab46418d4:   vmovq  %xmm3,%r9
          │    0x00007f6ab46418d9:   shl    $0x4,%r9
   0.09%  │    0x00007f6ab46418dd:   and    $0x3ffffff,%r9
   0.03%  │    0x00007f6ab46418e4:   mov    0xa0(%rsp),%rcx
   0.08%  │    0x00007f6ab46418ec:   add    %r9,%rcx
   0.02%  │    0x00007f6ab46418ef:   vmovq  %rcx,%xmm13
   0.10%  │    0x00007f6ab46418f4:   vmovq  %xmm3,%r9
   0.00%  │    0x00007f6ab46418f9:   sar    $0xc,%r9
   0.17%  │    0x00007f6ab46418fd:   vmovq  %xmm3,%rcx
          │    0x00007f6ab4641902:   shl    $0x14,%rcx
   0.05%  │    0x00007f6ab4641906:   and    $0x3ffffff,%rcx
   0.00%  │    0x00007f6ab464190d:   vmovq  %xmm3,%rsi
   0.08%  │    0x00007f6ab4641912:   sar    $0x6,%rsi
   0.00%  │    0x00007f6ab4641916:   vmovq  %xmm3,%rbx
   0.05%  │    0x00007f6ab464191b:   sar    $0x4,%rbx
   0.00%  │    0x00007f6ab464191f:   vmovq  %xmm2,%rax
   0.08%  │    0x00007f6ab4641924:   shl    $0x14,%rax
   0.00%  │    0x00007f6ab4641928:   and    $0x3ffffff,%rax
   0.05%  │    0x00007f6ab464192e:   vmovq  %xmm2,%rdi
   0.01%  │    0x00007f6ab4641933:   sar    $0x4,%rdi
   0.06%  │    0x00007f6ab4641937:   vmovq  %xmm1,%rbp
          │    0x00007f6ab464193c:   shl    $0xe,%rbp
   0.04%  │    0x00007f6ab4641940:   and    $0x3ffffff,%rbp
   0.00%  │    0x00007f6ab4641947:   mov    0xe8(%rsp),%r13
   0.07%  │    0x00007f6ab464194f:   sub    %rbp,%r13
   0.01%  │    0x00007f6ab4641952:   add    %rax,%r13
   0.06%  │    0x00007f6ab4641955:   sub    %rdx,%r13
   0.01%  │    0x00007f6ab4641958:   add    %rsi,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@400 (line 120)
   0.07%  │    0x00007f6ab464195b:   vmovq  %r13,%xmm4
   0.00%  │    0x00007f6ab4641960:   vmovq  %xmm1,%rdx
   0.06%  │    0x00007f6ab4641965:   sar    $0x4,%rdx
   0.00%  │    0x00007f6ab4641969:   vmovq  %xmm10,%rsi
   0.09%  │    0x00007f6ab464196e:   sub    %rdx,%rsi
   0.00%  │    0x00007f6ab4641971:   mov    %rsi,%r13
   0.08%  │    0x00007f6ab4641974:   vmovq  %xmm4,%rdx
   0.00%  │    0x00007f6ab4641979:   shl    $0x16,%rdx
   0.18%  │    0x00007f6ab464197d:   and    $0x3ffffff,%rdx
   0.02%  │    0x00007f6ab4641984:   sub    %rdx,%r10
   0.06%  │    0x00007f6ab4641987:   vmovq  %xmm4,%rdx
   0.00%  │    0x00007f6ab464198c:   sar    $0x16,%rdx
   0.12%  │    0x00007f6ab4641990:   vmovq  %xmm13,%rsi
          │    0x00007f6ab4641995:   add    %rdx,%rsi
   0.09%  │    0x00007f6ab4641998:   vmovq  %rsi,%xmm10
   0.03%  │    0x00007f6ab464199d:   vmovq  %xmm4,%rdx
   0.05%  │    0x00007f6ab46419a2:   shl    $0x4,%rdx
          │    0x00007f6ab46419a6:   and    $0x3ffffff,%rdx
   0.05%  │    0x00007f6ab46419ad:   lea    (%r14,%rdx,1),%rsi
   0.01%  │    0x00007f6ab46419b1:   vmovq  %rsi,%xmm13                  ;   {no_reloc}
   0.08%  │    0x00007f6ab46419b6:   vmovq  %xmm4,%rdx
          │    0x00007f6ab46419bb:   sar    $0xc,%rdx
   0.08%  │    0x00007f6ab46419bf:   vmovq  %xmm4,%rsi
   0.01%  │    0x00007f6ab46419c4:   shl    $0x14,%rsi
   0.07%  │    0x00007f6ab46419c8:   and    $0x3ffffff,%rsi
   0.01%  │    0x00007f6ab46419cf:   vmovq  %xmm4,%rax
   0.05%  │    0x00007f6ab46419d4:   sar    $0x6,%rax
   0.01%  │    0x00007f6ab46419d8:   vmovq  %xmm4,%rbp
   0.08%  │    0x00007f6ab46419dd:   shl    $0xe,%rbp
   0.02%  │    0x00007f6ab46419e1:   and    $0x3ffffff,%rbp
   0.05%  │    0x00007f6ab46419e8:   sub    %rbp,%r13
   0.01%  │    0x00007f6ab46419eb:   vmovq  %r13,%xmm14
   0.07%  │    0x00007f6ab46419f0:   vmovq  %xmm4,%rbp
   0.01%  │    0x00007f6ab46419f5:   sar    $0x4,%rbp
   0.04%  │    0x00007f6ab46419f9:   vmovq  %xmm11,%r13
   0.00%  │    0x00007f6ab46419fe:   sub    %rbp,%r13
   0.05%  │    0x00007f6ab4641a01:   vmovq  %r13,%xmm11
   0.02%  │    0x00007f6ab4641a06:   vmovq  %xmm1,%rbp
   0.07%  │    0x00007f6ab4641a0b:   shl    $0x16,%rbp
   0.00%  │    0x00007f6ab4641a0f:   and    $0x3ffffff,%rbp
   0.07%  │    0x00007f6ab4641a16:   mov    0x110(%rsp),%r13
   0.02%  │    0x00007f6ab4641a1e:   sar    $0x4,%r13
   0.07%  │    0x00007f6ab4641a22:   mov    0xe0(%rsp),%r14
   0.01%  │    0x00007f6ab4641a2a:   sub    %r13,%r14
   0.08%  │    0x00007f6ab4641a2d:   sub    %r8,%r14
   0.03%  │    0x00007f6ab4641a30:   add    %rcx,%r14
   0.03%  │    0x00007f6ab4641a33:   sub    %r9,%r14
   0.00%  │    0x00007f6ab4641a36:   add    %rax,%r14                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@494 (line 129)
   0.07%  │    0x00007f6ab4641a39:   mov    0x110(%rsp),%r8
   0.03%  │    0x00007f6ab4641a41:   shl    $0x16,%r8
   0.05%  │    0x00007f6ab4641a45:   and    $0x3ffffff,%r8
   0.01%  │    0x00007f6ab4641a4c:   mov    0xd8(%rsp),%r9
   0.05%  │    0x00007f6ab4641a54:   sub    %r8,%r9
   0.01%  │    0x00007f6ab4641a57:   sub    0xb8(%rsp),%r9
   0.02%  │    0x00007f6ab4641a5f:   mov    %r14,%r8
   0.00%  │    0x00007f6ab4641a62:   sar    $0x4,%r8
   0.05%  │    0x00007f6ab4641a66:   sub    %r8,%r10                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@635 (line 142)
   0.03%  │    0x00007f6ab4641a69:   mov    %r10,%r13
   0.03%  │    0x00007f6ab4641a6c:   mov    %r14,%r10
   0.01%  │    0x00007f6ab4641a6f:   shl    $0x16,%r10
   0.05%  │    0x00007f6ab4641a73:   and    $0x3ffffff,%r10
   0.02%  │    0x00007f6ab4641a7a:   vmovq  %xmm12,%r8
   0.05%  │    0x00007f6ab4641a7f:   sub    %r10,%r8
   0.01%  │    0x00007f6ab4641a82:   vmovq  %r8,%xmm12
   0.05%  │    0x00007f6ab4641a87:   mov    %r14,%r10
   0.04%  │    0x00007f6ab4641a8a:   sar    $0x16,%r10
   0.03%  │    0x00007f6ab4641a8e:   vmovq  %xmm13,%r8
   0.01%  │    0x00007f6ab4641a93:   add    %r10,%r8
   0.06%  │    0x00007f6ab4641a96:   vmovq  %r8,%xmm13
   0.02%  │    0x00007f6ab4641a9b:   mov    %r14,%r10
   0.03%  │    0x00007f6ab4641a9e:   shl    $0x4,%r10
   0.01%  │    0x00007f6ab4641aa2:   and    $0x3ffffff,%r10
   0.07%  │    0x00007f6ab4641aa9:   vmovq  %xmm9,%r8
   0.02%  │    0x00007f6ab4641aae:   add    %r10,%r8                     ;   {no_reloc}
   0.05%  │    0x00007f6ab4641ab1:   vmovq  %r8,%xmm9
   0.01%  │    0x00007f6ab4641ab6:   mov    %r14,%rcx
   0.05%  │    0x00007f6ab4641ab9:   sar    $0x6,%rcx
   0.01%  │    0x00007f6ab4641abd:   mov    %r14,%r10
   0.05%  │    0x00007f6ab4641ac0:   sar    $0xc,%r10
   0.01%  │    0x00007f6ab4641ac4:   mov    %r14,%r8
   0.06%  │    0x00007f6ab4641ac7:   shl    $0x14,%r8
   0.02%  │    0x00007f6ab4641acb:   and    $0x3ffffff,%r8
   0.02%  │    0x00007f6ab4641ad2:   vmovq  %xmm14,%rax
   0.00%  │    0x00007f6ab4641ad7:   add    %r8,%rax
   0.05%  │    0x00007f6ab4641ada:   sub    %r10,%rax
   0.02%  │    0x00007f6ab4641add:   vmovq  %rax,%xmm14
   0.05%  │    0x00007f6ab4641ae2:   mov    %r14,%r10
   0.01%  │    0x00007f6ab4641ae5:   shl    $0xe,%r10
   0.06%  │    0x00007f6ab4641ae9:   and    $0x3ffffff,%r10
   0.03%  │    0x00007f6ab4641af0:   mov    0x110(%rsp),%r8
   0.04%  │    0x00007f6ab4641af8:   shl    $0x4,%r8
   0.01%  │    0x00007f6ab4641afc:   and    $0x3ffffff,%r8
   0.05%  │    0x00007f6ab4641b03:   mov    0xc0(%rsp),%rax
   0.02%  │    0x00007f6ab4641b0b:   add    %r8,%rax
   0.05%  │    0x00007f6ab4641b0e:   add    0xf0(%rsp),%rax
   0.01%  │    0x00007f6ab4641b16:   sub    %r11,%rax
   0.05%  │    0x00007f6ab4641b19:   sub    %rbx,%rax
   0.02%  │    0x00007f6ab4641b1c:   mov    0x110(%rsp),%r11
   0.06%  │    0x00007f6ab4641b24:   sar    $0x16,%r11
   0.01%  │    0x00007f6ab4641b28:   mov    0xc8(%rsp),%r8
   0.07%  │    0x00007f6ab4641b30:   add    %r11,%r8
   0.01%  │    0x00007f6ab4641b33:   sub    %rbp,%r8
   0.04%  │    0x00007f6ab4641b36:   sub    %rdi,%r8
   0.01%  │    0x00007f6ab4641b39:   sub    %r10,%r8
   0.05%  │    0x00007f6ab4641b3c:   vmovq  %xmm3,%r10
   0.03%  │    0x00007f6ab4641b41:   shl    $0xe,%r10
   0.06%  │    0x00007f6ab4641b45:   and    $0x3ffffff,%r10
   0.00%  │    0x00007f6ab4641b4c:   sub    %r10,%r9
   0.05%  │    0x00007f6ab4641b4f:   add    %rsi,%r9
   0.02%  │    0x00007f6ab4641b52:   sub    %rdx,%r9
   0.03%  │    0x00007f6ab4641b55:   lea    (%r9,%rcx,1),%r10
   0.01%  │    0x00007f6ab4641b59:   mov    %r10,%r11
   0.07%  │    0x00007f6ab4641b5c:   sar    $0xc,%r11
   0.02%  │    0x00007f6ab4641b60:   mov    %r10,%r9
   0.06%  │    0x00007f6ab4641b63:   shl    $0x14,%r9
   0.00%  │    0x00007f6ab4641b67:   and    $0x3ffffff,%r9
   0.05%  │    0x00007f6ab4641b6e:   add    %r9,%r8
   0.05%  │    0x00007f6ab4641b71:   sub    %r11,%r8
   0.06%  │    0x00007f6ab4641b74:   mov    %r10,%r11
          │    0x00007f6ab4641b77:   shl    $0xe,%r11
   0.03%  │    0x00007f6ab4641b7b:   and    $0x3ffffff,%r11
   0.04%  │    0x00007f6ab4641b82:   sub    %r11,%rax
   0.06%  │    0x00007f6ab4641b85:   mov    %r10,%r11
   0.00%  │    0x00007f6ab4641b88:   sar    $0x4,%r11
   0.04%  │    0x00007f6ab4641b8c:   vmovq  %xmm12,%r9
   0.01%  │    0x00007f6ab4641b91:   sub    %r11,%r9                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@729 (line 151)
   0.06%  │    0x00007f6ab4641b94:   mov    %r9,%rbx
   0.01%  │    0x00007f6ab4641b97:   mov    %r10,%r11
   0.05%  │    0x00007f6ab4641b9a:   shl    $0x16,%r11
   0.02%  │    0x00007f6ab4641b9e:   and    $0x3ffffff,%r11
   0.06%  │    0x00007f6ab4641ba5:   vmovq  %xmm10,%r9
   0.00%  │    0x00007f6ab4641baa:   sub    %r11,%r9
   0.04%  │    0x00007f6ab4641bad:   mov    %r9,%rcx                     ;   {no_reloc}
   0.02%  │    0x00007f6ab4641bb0:   mov    %r10,%r11
   0.06%  │    0x00007f6ab4641bb3:   sar    $0x16,%r11
   0.00%  │    0x00007f6ab4641bb7:   vmovq  %xmm9,%r9
   0.04%  │    0x00007f6ab4641bbc:   add    %r11,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@752 (line 153)
   0.02%  │    0x00007f6ab4641bbf:   mov    %r9,%rbp
   0.06%  │    0x00007f6ab4641bc2:   mov    %r10,%r11
   0.00%  │    0x00007f6ab4641bc5:   shl    $0x4,%r11
   0.05%  │    0x00007f6ab4641bc9:   and    $0x3ffffff,%r11
   0.01%  │    0x00007f6ab4641bd0:   vmovq  %xmm8,%r9
   0.06%  │    0x00007f6ab4641bd5:   add    %r11,%r9
   0.00%  │    0x00007f6ab4641bd8:   mov    %r9,%rdx
   0.04%  │    0x00007f6ab4641bdb:   mov    %r10,%r11
   0.02%  │    0x00007f6ab4641bde:   sar    $0x6,%r11
   0.07%  │    0x00007f6ab4641be2:   vmovq  %xmm14,%r9
   0.00%  │    0x00007f6ab4641be7:   add    %r11,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@682 (line 147)
   0.06%  │    0x00007f6ab4641bea:   mov    %r9,%rsi
   0.02%  │    0x00007f6ab4641bed:   mov    %r9,%r11
   0.06%  │    0x00007f6ab4641bf0:   sar    $0x6,%r11
   0.00%  │    0x00007f6ab4641bf4:   add    %r11,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@776 (line 156)
   0.05%  │    0x00007f6ab4641bf7:   mov    %r8,%rdi
   0.02%  │    0x00007f6ab4641bfa:   mov    %r9,%r11
   0.06%  │    0x00007f6ab4641bfd:   sar    $0xc,%r11
   0.01%  │    0x00007f6ab4641c01:   mov    %r9,%r8
   0.04%  │    0x00007f6ab4641c04:   shl    $0x14,%r8
   0.03%  │    0x00007f6ab4641c08:   and    $0x3ffffff,%r8
   0.06%  │    0x00007f6ab4641c0f:   add    %r8,%rax
          │    0x00007f6ab4641c12:   sub    %r11,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@800 (line 158)
   0.06%  │    0x00007f6ab4641c15:   mov    %r9,%r11
   0.02%  │    0x00007f6ab4641c18:   shl    $0xe,%r11
   0.05%  │    0x00007f6ab4641c1c:   and    $0x3ffffff,%r11
   0.01%  │    0x00007f6ab4641c23:   vmovq  %xmm11,%r8
   0.04%  │    0x00007f6ab4641c28:   sub    %r11,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@790 (line 157)
   0.01%  │    0x00007f6ab4641c2b:   mov    %r9,%r11
   0.06%  │    0x00007f6ab4641c2e:   sar    $0x4,%r11
          │    0x00007f6ab4641c32:   mov    %rcx,%r9
   0.04%  │    0x00007f6ab4641c35:   sub    %r11,%r9                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@823 (line 160)
   0.02%  │    0x00007f6ab4641c38:   mov    %rsi,%r11
   0.08%  │    0x00007f6ab4641c3b:   shl    $0x16,%r11
   0.01%  │    0x00007f6ab4641c3f:   and    $0x3ffffff,%r11
   0.06%  │    0x00007f6ab4641c46:   vmovq  %xmm13,%rcx
   0.02%  │    0x00007f6ab4641c4b:   sub    %r11,%rcx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@814 (line 159)
   0.06%  │    0x00007f6ab4641c4e:   vmovq  %rcx,%xmm8
   0.01%  │    0x00007f6ab4641c53:   mov    %rsi,%r11
   0.09%  │    0x00007f6ab4641c56:   sar    $0x16,%r11
   0.02%  │    0x00007f6ab4641c5a:   lea    (%rdx,%r11,1),%rcx
   0.07%  │    0x00007f6ab4641c5e:   vmovq  %rcx,%xmm9
   0.00%  │    0x00007f6ab4641c63:   mov    %rsi,%rcx
   0.05%  │    0x00007f6ab4641c66:   shl    $0x4,%rcx
   0.02%  │    0x00007f6ab4641c6a:   and    $0x3ffffff,%rcx
   0.06%  │    0x00007f6ab4641c71:   vmovq  %xmm7,%r11
   0.01%  │    0x00007f6ab4641c76:   add    %rcx,%r11                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@835 (line 161)
   0.03%  │    0x00007f6ab4641c79:   mov    %r9,(%rsp)
   0.03%  │    0x00007f6ab4641c7d:   mov    %rbx,0x8(%rsp)
   0.05%  │    0x00007f6ab4641c82:   mov    %r13,0x10(%rsp)
   0.01%  │    0x00007f6ab4641c87:   mov    %r8,0x18(%rsp)
   0.06%  │    0x00007f6ab4641c8c:   mov    %rax,0x20(%rsp)
   0.01%  │    0x00007f6ab4641c91:   mov    %rdi,0x28(%rsp)
   0.08%  │    0x00007f6ab4641c96:   xor    %r8d,%r8d
   0.01%  │    0x00007f6ab4641c99:   mov    %r8,0x30(%rsp)
   0.04%  │    0x00007f6ab4641c9e:   mov    %r10,0x38(%rsp)
   0.02%  │    0x00007f6ab4641ca3:   mov    %r14,0x40(%rsp)
   0.05%  │    0x00007f6ab4641ca8:   vmovsd %xmm4,0x48(%rsp)
   0.01%  │    0x00007f6ab4641cae:   vmovsd %xmm3,0x50(%rsp)             ;   {no_reloc}
   0.04%  │    0x00007f6ab4641cb4:   vmovsd %xmm2,0x58(%rsp)
   0.02%  │    0x00007f6ab4641cba:   vmovsd %xmm1,0x60(%rsp)
   0.06%  │    0x00007f6ab4641cc0:   vmovsd %xmm0,0x68(%rsp)
   0.00%  │    0x00007f6ab4641cc6:   mov    0x110(%rsp),%r10
   0.04%  │    0x00007f6ab4641cce:   mov    %r10,0x70(%rsp)
   0.04%  │    0x00007f6ab4641cd3:   xor    %r10d,%r10d
   0.05%  │    0x00007f6ab4641cd6:   mov    %r10,0x78(%rsp)
   0.01%  │    0x00007f6ab4641cdb:   vmovq  %xmm5,%rsi
   0.04%  │    0x00007f6ab4641ce0:   vmovq  %xmm6,%rdx
   0.02%  │    0x00007f6ab4641ce5:   mov    %r11,%rcx
   0.06%  │    0x00007f6ab4641ce8:   vmovq  %xmm9,%r8
   0.00%  │    0x00007f6ab4641ced:   mov    %rbp,%r9
   0.05%  │    0x00007f6ab4641cf0:   vmovq  %xmm8,%rdi
   0.02%  │    0x00007f6ab4641cf5:   xchg   %ax,%ax
   0.05%  │    0x00007f6ab4641cf7:   call   0x00007f6ab463eb40           ; ImmutableOopMap {}
          │                                                              ;*invokevirtual carryReduce0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │                                                              ;   {optimized virtual_call}
   0.04%  │    0x00007f6ab4641cfc:   nopl   0x7ec(%rax,%rax,1)           ;   {other}
   0.04%  │    0x00007f6ab4641d04:   add    $0x90,%rsp
   0.06%  │    0x00007f6ab4641d0b:   pop    %rbp
   0.04%  │ ↗  0x00007f6ab4641d0c:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭│  0x00007f6ab4641d13:   ja     0x00007f6ab4641d2a
   0.04%  │││  0x00007f6ab4641d19:   ret                                 ;*invokevirtual carryReduce0 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │││  0x00007f6ab4641d1a:   mov    %rax,%rsi
          │││  0x00007f6ab4641d1d:   add    $0x90,%rsp
          │││  0x00007f6ab4641d24:   pop    %rbp
          │││  0x00007f6ab4641d25:   jmp    0x00007f6ab419d580           ;   {runtime_call _rethrow_Java}
          │↘╰  0x00007f6ab4641d2a:   movabs $0x7f6ab4641d0c,%r10         ;   {internal_word}
          │    0x00007f6ab4641d34:   mov    %r10,0x468(%r15)
          │    0x00007f6ab4641d3b:   jmp    0x00007f6ab40cb000           ;   {runtime_call SafepointBlob}
          ↘    0x00007f6ab4641d40:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
               0x00007f6ab4641d45:   jmp    0x00007f6ab46416de
....................................................................................................
  14.40%  <total for region 2>

....[Hottest Region 3]..............................................................................
runtime stub, StubRoutines::sha256_implCompressMB 

 <region is too big to display, has 1090 lines, but threshold is 1000>
....................................................................................................
  13.50%  <total for region 3>

....[Hottest Regions]...............................................................................
  16.67%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::mult, version 2, compile id 661 
  14.40%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce, version 2, compile id 656 
  13.50%        runtime stub  StubRoutines::sha256_implCompressMB 
   6.35%         c2, level 4  sun.security.util.math.intpoly.P256OrderField::carryReduce0, version 2, compile id 769 
   4.84%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0, version 2, compile id 641 
   4.34%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier::lookup, version 2, compile id 697 
   3.56%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   3.19%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::square, version 2, compile id 684 
   2.92%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier::lookup, version 2, compile id 697 
   2.73%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier::lookup, version 2, compile id 697 
   2.47%         c2, level 4  sun.security.util.math.intpoly.P256OrderField::square, version 2, compile id 777 
   1.87%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce, version 2, compile id 655 
   1.71%         c2, level 4  sun.security.util.math.intpoly.P256OrderField::carryReduce, version 2, compile id 768 
   1.48%         c2, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 790 
   1.31%         c2, level 4  sun.security.util.math.intpoly.P256OrderField::carryReduce2, version 2, compile id 751 
   1.18%         c2, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 790 
   0.67%         c2, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 790 
   0.51%         c2, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 790 
   0.50%         c2, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 790 
   0.46%         c2, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Secp256R1::inverse, version 3, compile id 918 
  15.34%  <...other 913 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  16.67%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::mult, version 2, compile id 661 
  14.40%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce, version 2, compile id 656 
  13.58%        runtime stub  StubRoutines::sha256_implCompressMB 
  11.17%         c2, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 790 
  10.55%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier::lookup, version 2, compile id 697 
   6.35%         c2, level 4  sun.security.util.math.intpoly.P256OrderField::carryReduce0, version 2, compile id 769 
   4.84%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0, version 2, compile id 641 
   3.56%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   3.19%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::square, version 2, compile id 684 
   2.47%         c2, level 4  sun.security.util.math.intpoly.P256OrderField::square, version 2, compile id 777 
   1.87%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce, version 2, compile id 655 
   1.83%         c2, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 700 
   1.71%         c2, level 4  sun.security.util.math.intpoly.P256OrderField::carryReduce, version 2, compile id 768 
   1.42%              kernel  [unknown] 
   1.31%         c2, level 4  sun.security.util.math.intpoly.P256OrderField::carryReduce2, version 2, compile id 751 
   0.91%         c2, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Secp256R1Field::inverse, version 3, compile id 944 
   0.70%         c2, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Secp256R1::inverse, version 3, compile id 918 
   0.67%         c2, level 4  sun.security.util.math.intpoly.P256OrderField::mult, version 2, compile id 835 
   0.41%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier$Secp256R1GeneratorMultiplier::pointMultiply, version 3, compile id 1000 
   0.38%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark::sign, version 2, compile id 1093 
   2.02%  <...other 133 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  80.88%         c2, level 4
  17.33%        runtime stub
   1.42%              kernel
   0.19%           libjvm.so
   0.07%        libc-2.31.so
   0.02%                    
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.02%              [vdso]
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.00%    perf-1933842.map
   0.00%        libjimage.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign
# Parameters: (algorithm = secp384r1, messageLength = 64)

# Run progress: 33.33% complete, ETA 00:15:10
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5362.345 us/op
# Warmup Iteration   2: 2121.866 us/op
# Warmup Iteration   3: 2102.794 us/op
# Warmup Iteration   4: 2102.028 us/op
# Warmup Iteration   5: 2101.000 us/op
Iteration   1: 2102.445 us/op
Iteration   2: 2100.551 us/op
Iteration   3: 2100.549 us/op
Iteration   4: 2100.508 us/op
Iteration   5: 2100.704 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign":
  2100.951 ±(99.9%) 3.228 us/op [Average]
  (min, avg, max) = (2100.508, 2100.951, 2102.445), stdev = 0.838
  CI (99.9%): [2097.724, 2104.179] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign:asm":
PrintAssembly processed: 317702 total address lines.
Perf output processed (skipped 57.130 seconds):
 Column 1: cycles (50725 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, sun.security.util.math.intpoly.IntegerPolynomialP384::mult, version 2, compile id 666 

             # parm2:    r8:r8     = &apos;[J&apos;
             #           [sp+0x490]  (sp of caller)
             0x00007f97cc643260:   mov    0x8(%rsi),%r10d
             0x00007f97cc643264:   movabs $0x7f9753000000,%r11
             0x00007f97cc64326e:   add    %r11,%r10
             0x00007f97cc643271:   cmp    %r10,%rax
             0x00007f97cc643274:   jne    0x00007f97cc0c4080           ;   {runtime_call ic_miss_stub}
             0x00007f97cc64327a:   xchg   %ax,%ax
             0x00007f97cc64327c:   nopl   0x0(%rax)
           [Verified Entry Point]
   0.06%     0x00007f97cc643280:   mov    %eax,-0x14000(%rsp)
   0.11%     0x00007f97cc643287:   push   %rbp
   0.02%     0x00007f97cc643288:   sub    $0x480,%rsp
   0.02%     0x00007f97cc64328f:   nop
   0.05%     0x00007f97cc643290:   cmpl   $0x0,0x20(%r15)
   0.01%     0x00007f97cc643298:   jne    0x00007f97cc64477a           ;*synchronization entry
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@-1 (line 379)
   0.01%     0x00007f97cc64329e:   vmovq  %r8,%xmm0
   0.01%     0x00007f97cc6432a3:   mov    0xc(%rdx),%r10d              ; implicit exception: dispatches to 0x00007f97cc64473c
   0.04%     0x00007f97cc6432a7:   cmp    $0xd,%r10d
          ╭  0x00007f97cc6432ab:   jbe    0x00007f97cc6446c6
   0.03%  │  0x00007f97cc6432b1:   mov    0xc(%rcx),%r11d              ; implicit exception: dispatches to 0x00007f97cc644750
   0.01%  │  0x00007f97cc6432b5:   mov    0x10(%rdx),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@2 (line 379)
   0.00%  │  0x00007f97cc6432b9:   nopl   0x0(%rax)
   0.05%  │  0x00007f97cc6432c0:   cmp    $0xd,%r11d
          │  0x00007f97cc6432c4:   jbe    0x00007f97cc6446f4
   0.03%  │  0x00007f97cc6432ca:   vmovq  %rsi,%xmm13
   0.02%  │  0x00007f97cc6432cf:   vmovq  %rcx,%xmm1
   0.01%  │  0x00007f97cc6432d4:   mov    0x10(%rcx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@5 (line 379)
   0.05%  │  0x00007f97cc6432d8:   mov    0x18(%rdx),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@18 (line 380)
   0.03%  │  0x00007f97cc6432dc:   vmovq  %r10,%xmm9
   0.01%  │  0x00007f97cc6432e1:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@6 (line 379)
   0.01%  │  0x00007f97cc6432e5:   vmovq  %r10,%xmm14
   0.07%  │  0x00007f97cc6432ea:   mov    %r11,%rdi
   0.01%  │  0x00007f97cc6432ed:   mov    %r8,0xb8(%rsp)
   0.02%  │  0x00007f97cc6432f5:   imul   %r8,%rdi
   0.01%  │  0x00007f97cc6432f9:   mov    0x20(%rdx),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@43 (line 381)
   0.08%  │  0x00007f97cc6432fd:   mov    0x28(%rdx),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@76 (line 382)
   0.02%  │  0x00007f97cc643301:   mov    %r11,%rsi
   0.01%  │  0x00007f97cc643304:   mov    %r10,0xc0(%rsp)
   0.02%  │  0x00007f97cc64330c:   imul   %r10,%rsi
   0.05%  │  0x00007f97cc643310:   mov    %r11,%r10
   0.01%  │  0x00007f97cc643313:   mov    %r8,0xc8(%rsp)
   0.01%  │  0x00007f97cc64331b:   imul   %r8,%r11
   0.00%  │  0x00007f97cc64331f:   mov    %r11,0xd0(%rsp)
   0.05%  │  0x00007f97cc643327:   mov    0x30(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@117 (line 383)
   0.02%  │  0x00007f97cc64332b:   mov    %r11,0xd8(%rsp)
   0.02%  │  0x00007f97cc643333:   mov    0x38(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@166 (line 384)
   0.01%  │  0x00007f97cc643337:   mov    %r11,0xe0(%rsp)
   0.07%  │  0x00007f97cc64333f:   mov    %r10,%r13
   0.01%  │  0x00007f97cc643342:   imul   0xd8(%rsp),%r13
   0.13%  │  0x00007f97cc64334b:   mov    %r10,%r11
   0.01%  │  0x00007f97cc64334e:   imul   0xe0(%rsp),%r11
   0.11%  │  0x00007f97cc643357:   mov    %r11,0xe8(%rsp)
   0.13%  │  0x00007f97cc64335f:   mov    0x40(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@225 (line 385)
   0.00%  │  0x00007f97cc643363:   mov    %r11,0xf0(%rsp)
   0.00%  │  0x00007f97cc64336b:   mov    0x48(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@294 (line 386)
   0.01%  │  0x00007f97cc64336f:   mov    %r11,0xf8(%rsp)              ;   {no_reloc}
   0.08%  │  0x00007f97cc643377:   mov    %r10,%r11
   0.01%  │  0x00007f97cc64337a:   imul   0xf0(%rsp),%r11
   0.02%  │  0x00007f97cc643383:   mov    %r11,0x100(%rsp)
   0.06%  │  0x00007f97cc64338b:   mov    %r10,%r11
   0.02%  │  0x00007f97cc64338e:   imul   0xf8(%rsp),%r11
   0.04%  │  0x00007f97cc643397:   mov    %r11,0x108(%rsp)
   0.09%  │  0x00007f97cc64339f:   mov    0x50(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@373 (line 387)
   0.02%  │  0x00007f97cc6433a3:   mov    %r11,0x110(%rsp)
   0.01%  │  0x00007f97cc6433ab:   mov    0x58(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@462 (line 388)
   0.00%  │  0x00007f97cc6433af:   mov    %r11,0x118(%rsp)
   0.06%  │  0x00007f97cc6433b7:   mov    %r10,%r11
   0.03%  │  0x00007f97cc6433ba:   imul   0x110(%rsp),%r11
   0.07%  │  0x00007f97cc6433c3:   mov    %r11,0x120(%rsp)
   0.12%  │  0x00007f97cc6433cb:   mov    %r10,%r11
   0.02%  │  0x00007f97cc6433ce:   imul   0x118(%rsp),%r11
   0.04%  │  0x00007f97cc6433d7:   mov    %r11,0x128(%rsp)
   0.09%  │  0x00007f97cc6433df:   mov    0x60(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@561 (line 389)
   0.04%  │  0x00007f97cc6433e3:   mov    %r11,0x130(%rsp)
   0.01%  │  0x00007f97cc6433eb:   mov    0x68(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@670 (line 390)
   0.02%  │  0x00007f97cc6433ef:   mov    %r11,0x138(%rsp)
   0.05%  │  0x00007f97cc6433f7:   mov    %r10,%r11
   0.04%  │  0x00007f97cc6433fa:   imul   0x130(%rsp),%r11
   0.05%  │  0x00007f97cc643403:   mov    %r11,0x140(%rsp)
   0.06%  │  0x00007f97cc64340b:   mov    %r10,%r11
   0.02%  │  0x00007f97cc64340e:   imul   0x138(%rsp),%r11
   0.05%  │  0x00007f97cc643417:   mov    %r11,0x148(%rsp)
   0.06%  │  0x00007f97cc64341f:   mov    0x70(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@789 (line 391)
   0.02%  │  0x00007f97cc643423:   mov    %r11,0x150(%rsp)
   0.02%  │  0x00007f97cc64342b:   mov    0x78(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@918 (line 392)
   0.01%  │  0x00007f97cc64342f:   mov    %r11,0x158(%rsp)
   0.06%  │  0x00007f97cc643437:   mov    %r10,%r11
   0.01%  │  0x00007f97cc64343a:   imul   0x150(%rsp),%r11
   0.08%  │  0x00007f97cc643443:   mov    %r11,0x160(%rsp)
   0.10%  │  0x00007f97cc64344b:   imul   0x158(%rsp),%r10
   0.05%  │  0x00007f97cc643454:   mov    %r10,0x168(%rsp)
   0.06%  │  0x00007f97cc64345c:   mov    0x18(%rcx),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@14 (line 380)
   0.01%  │  0x00007f97cc643460:   vmovq  %xmm1,%r10
   0.03%  │  0x00007f97cc643465:   mov    0x20(%r10),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@31 (line 381)
   0.03%  │  0x00007f97cc643469:   mov    %rcx,%r10
   0.04%  │  0x00007f97cc64346c:   imul   0x158(%rsp),%r10             ;   {no_reloc}
   0.00%  │  0x00007f97cc643475:   mov    %r10,0x170(%rsp)
   0.04%  │  0x00007f97cc64347d:   mov    %r8,%r10
   0.01%  │  0x00007f97cc643480:   imul   0x158(%rsp),%r10
   0.04%  │  0x00007f97cc643489:   mov    %r10,0x178(%rsp)
   0.03%  │  0x00007f97cc643491:   mov    %r8,%r10
   0.03%  │  0x00007f97cc643494:   imul   0x150(%rsp),%r10
   0.02%  │  0x00007f97cc64349d:   mov    %r10,0x180(%rsp)
   0.06%  │  0x00007f97cc6434a5:   mov    %r8,%r10
   0.03%  │  0x00007f97cc6434a8:   imul   0x138(%rsp),%r10
   0.02%  │  0x00007f97cc6434b1:   mov    %r10,0x188(%rsp)
   0.02%  │  0x00007f97cc6434b9:   mov    %r8,%r10
   0.03%  │  0x00007f97cc6434bc:   imul   0x130(%rsp),%r10
   0.03%  │  0x00007f97cc6434c5:   mov    %r10,0x190(%rsp)
   0.04%  │  0x00007f97cc6434cd:   mov    %r8,%r10
   0.02%  │  0x00007f97cc6434d0:   imul   0x118(%rsp),%r10
   0.03%  │  0x00007f97cc6434d9:   mov    %r10,0x198(%rsp)
   0.03%  │  0x00007f97cc6434e1:   mov    %r8,%r10
   0.03%  │  0x00007f97cc6434e4:   imul   0x110(%rsp),%r10
   0.01%  │  0x00007f97cc6434ed:   mov    %r10,0x1a0(%rsp)
   0.06%  │  0x00007f97cc6434f5:   mov    %r8,%r10
   0.01%  │  0x00007f97cc6434f8:   imul   0xf8(%rsp),%r10
   0.03%  │  0x00007f97cc643501:   mov    %r10,0x1a8(%rsp)
   0.05%  │  0x00007f97cc643509:   mov    %r8,%r10
   0.02%  │  0x00007f97cc64350c:   imul   0xf0(%rsp),%r10
   0.00%  │  0x00007f97cc643515:   mov    %r10,0x1b0(%rsp)
   0.07%  │  0x00007f97cc64351d:   mov    %r8,%r10
   0.01%  │  0x00007f97cc643520:   imul   0xe0(%rsp),%r10
   0.01%  │  0x00007f97cc643529:   mov    %r10,0x1b8(%rsp)
   0.05%  │  0x00007f97cc643531:   mov    %r8,%r10
   0.02%  │  0x00007f97cc643534:   imul   0xd8(%rsp),%r10
   0.00%  │  0x00007f97cc64353d:   mov    %r10,0x1c0(%rsp)
   0.07%  │  0x00007f97cc643545:   mov    %r8,%r10
          │  0x00007f97cc643548:   imul   0xc8(%rsp),%r10
   0.03%  │  0x00007f97cc643551:   mov    %r10,0x1c8(%rsp)
   0.09%  │  0x00007f97cc643559:   mov    %r8,%r10
   0.01%  │  0x00007f97cc64355c:   imul   0xc0(%rsp),%r10
   0.00%  │  0x00007f97cc643565:   mov    0xb8(%rsp),%r11
   0.02%  │  0x00007f97cc64356d:   imul   %r8,%r11
   0.07%  │  0x00007f97cc643571:   vmovq  %xmm9,%r9                    ;   {no_reloc}
   0.01%  │  0x00007f97cc643576:   imul   %r8,%r9
   0.00%  │  0x00007f97cc64357a:   mov    %r9,%rax
   0.02%  │  0x00007f97cc64357d:   mov    %rcx,%r8
   0.07%  │  0x00007f97cc643580:   imul   0x150(%rsp),%r8
   0.01%  │  0x00007f97cc643589:   mov    %r8,0x1d0(%rsp)
   0.20%  │  0x00007f97cc643591:   mov    %rcx,%r8
   0.00%  │  0x00007f97cc643594:   imul   0x138(%rsp),%r8
          │  0x00007f97cc64359d:   mov    %r8,0x1d8(%rsp)
   0.12%  │  0x00007f97cc6435a5:   mov    %rcx,%r8
   0.00%  │  0x00007f97cc6435a8:   imul   0x130(%rsp),%r8
   0.00%  │  0x00007f97cc6435b1:   mov    %r8,0x1e0(%rsp)
   0.12%  │  0x00007f97cc6435b9:   mov    %rcx,%r8
          │  0x00007f97cc6435bc:   imul   0x118(%rsp),%r8
          │  0x00007f97cc6435c5:   mov    %r8,0x1e8(%rsp)
   0.09%  │  0x00007f97cc6435cd:   mov    %rcx,%r8
   0.00%  │  0x00007f97cc6435d0:   imul   0x110(%rsp),%r8
   0.00%  │  0x00007f97cc6435d9:   mov    %r8,0x1f0(%rsp)
   0.11%  │  0x00007f97cc6435e1:   mov    %rcx,%r8
   0.00%  │  0x00007f97cc6435e4:   imul   0xf8(%rsp),%r8
   0.00%  │  0x00007f97cc6435ed:   mov    %r8,0x1f8(%rsp)
   0.11%  │  0x00007f97cc6435f5:   mov    %rcx,%r8
          │  0x00007f97cc6435f8:   imul   0xf0(%rsp),%r8
          │  0x00007f97cc643601:   mov    %r8,0x200(%rsp)
   0.09%  │  0x00007f97cc643609:   mov    %rcx,%rdx
          │  0x00007f97cc64360c:   imul   0xe0(%rsp),%rdx
          │  0x00007f97cc643615:   mov    %rcx,%r8
          │  0x00007f97cc643618:   imul   0xd8(%rsp),%r8
   0.10%  │  0x00007f97cc643621:   mov    %r8,0x208(%rsp)
   0.10%  │  0x00007f97cc643629:   mov    %rcx,%r8
          │  0x00007f97cc64362c:   imul   0xc8(%rsp),%r8
          │  0x00007f97cc643635:   mov    %rcx,%r9
   0.00%  │  0x00007f97cc643638:   imul   0xc0(%rsp),%r9
   0.10%  │  0x00007f97cc643641:   mov    %rcx,%rbx
          │  0x00007f97cc643644:   imul   0xb8(%rsp),%rbx
   0.00%  │  0x00007f97cc64364d:   add    %rbx,%rax
   0.06%  │  0x00007f97cc643650:   add    %rsi,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@48 (line 381)
   0.11%  │  0x00007f97cc643653:   vmovq  %rax,%xmm15
   0.21%  │  0x00007f97cc643658:   vmovq  %xmm9,%rbx
          │  0x00007f97cc64365d:   imul   %rcx,%rbx
          │  0x00007f97cc643661:   add    %rdi,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@23 (line 380)
          │  0x00007f97cc643664:   mov    %rbx,0x210(%rsp)
   0.15%  │  0x00007f97cc64366c:   vmovq  %xmm1,%rcx                   ;   {no_reloc}
   0.00%  │  0x00007f97cc643671:   mov    0x28(%rcx),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@56 (line 382)
          │  0x00007f97cc643675:   vmovq  %xmm1,%rbx
          │  0x00007f97cc64367a:   mov    0x30(%rbx),%rdi              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@89 (line 383)
   0.10%  │  0x00007f97cc64367e:   mov    %rcx,%rbx
   0.00%  │  0x00007f97cc643681:   imul   0x158(%rsp),%rbx
   0.01%  │  0x00007f97cc64368a:   mov    %rbx,0x218(%rsp)
   0.02%  │  0x00007f97cc643692:   mov    %rdi,%rbx
   0.11%  │  0x00007f97cc643695:   imul   0x158(%rsp),%rbx
          │  0x00007f97cc64369e:   mov    %rbx,0x220(%rsp)
   0.00%  │  0x00007f97cc6436a6:   mov    %rdi,%rbx
   0.00%  │  0x00007f97cc6436a9:   imul   0x150(%rsp),%rbx
   0.09%  │  0x00007f97cc6436b2:   mov    %rbx,0x228(%rsp)
   0.01%  │  0x00007f97cc6436ba:   mov    %rdi,%rbx
          │  0x00007f97cc6436bd:   imul   0x138(%rsp),%rbx
   0.00%  │  0x00007f97cc6436c6:   mov    %rbx,0x230(%rsp)
   0.10%  │  0x00007f97cc6436ce:   mov    %rdi,%rbx
          │  0x00007f97cc6436d1:   imul   0x130(%rsp),%rbx
          │  0x00007f97cc6436da:   mov    %rbx,0x238(%rsp)
   0.05%  │  0x00007f97cc6436e2:   mov    %rdi,%rbx
   0.07%  │  0x00007f97cc6436e5:   imul   0x118(%rsp),%rbx
          │  0x00007f97cc6436ee:   mov    %rbx,0x240(%rsp)
   0.03%  │  0x00007f97cc6436f6:   mov    %rdi,%rbx
   0.00%  │  0x00007f97cc6436f9:   imul   0x110(%rsp),%rbx
   0.05%  │  0x00007f97cc643702:   mov    %rbx,0x248(%rsp)
   0.04%  │  0x00007f97cc64370a:   mov    %rdi,%rbx
          │  0x00007f97cc64370d:   imul   0xf8(%rsp),%rbx
          │  0x00007f97cc643716:   mov    %rbx,0x250(%rsp)
   0.12%  │  0x00007f97cc64371e:   mov    %rdi,%rbx
          │  0x00007f97cc643721:   imul   0xf0(%rsp),%rbx
          │  0x00007f97cc64372a:   mov    %rbx,0x258(%rsp)
   0.07%  │  0x00007f97cc643732:   mov    %rdi,%rbx
   0.02%  │  0x00007f97cc643735:   imul   0xe0(%rsp),%rbx
          │  0x00007f97cc64373e:   mov    %rbx,0x260(%rsp)
   0.07%  │  0x00007f97cc643746:   mov    %rdi,%rbx
          │  0x00007f97cc643749:   imul   0xd8(%rsp),%rbx
   0.02%  │  0x00007f97cc643752:   mov    %rbx,0x268(%rsp)
   0.09%  │  0x00007f97cc64375a:   mov    0xc8(%rsp),%rbx
          │  0x00007f97cc643762:   imul   %rdi,%rbx
   0.00%  │  0x00007f97cc643766:   mov    %rbx,0x270(%rsp)
   0.11%  │  0x00007f97cc64376e:   mov    0xc0(%rsp),%rsi              ;   {no_reloc}
          │  0x00007f97cc643776:   imul   %rdi,%rsi
          │  0x00007f97cc64377a:   mov    0xb8(%rsp),%rax
          │  0x00007f97cc643782:   imul   %rdi,%rax
   0.10%  │  0x00007f97cc643786:   vmovq  %xmm9,%rbx
          │  0x00007f97cc64378b:   imul   %rdi,%rbx
          │  0x00007f97cc64378f:   mov    %rcx,%rdi
          │  0x00007f97cc643792:   imul   0x150(%rsp),%rdi
   0.10%  │  0x00007f97cc64379b:   mov    %rdi,0x278(%rsp)
   0.12%  │  0x00007f97cc6437a3:   mov    %rcx,%rdi
          │  0x00007f97cc6437a6:   imul   0x138(%rsp),%rdi
          │  0x00007f97cc6437af:   mov    %rdi,0x280(%rsp)
   0.09%  │  0x00007f97cc6437b7:   mov    %rcx,%rdi
          │  0x00007f97cc6437ba:   imul   0x130(%rsp),%rdi
          │  0x00007f97cc6437c3:   mov    %rdi,0x288(%rsp)
   0.10%  │  0x00007f97cc6437cb:   mov    %rcx,%rdi
          │  0x00007f97cc6437ce:   imul   0x118(%rsp),%rdi
   0.00%  │  0x00007f97cc6437d7:   mov    %rdi,0x290(%rsp)
   0.13%  │  0x00007f97cc6437df:   mov    %rcx,%rdi
          │  0x00007f97cc6437e2:   imul   0x110(%rsp),%rdi
          │  0x00007f97cc6437eb:   mov    %rdi,0x298(%rsp)
   0.10%  │  0x00007f97cc6437f3:   mov    %rcx,%rdi
   0.00%  │  0x00007f97cc6437f6:   imul   0xf8(%rsp),%rdi
          │  0x00007f97cc6437ff:   mov    %rdi,0x2a0(%rsp)
   0.08%  │  0x00007f97cc643807:   mov    %rcx,%rdi
   0.03%  │  0x00007f97cc64380a:   imul   0xf0(%rsp),%rdi
          │  0x00007f97cc643813:   mov    %rdi,0x2a8(%rsp)
   0.09%  │  0x00007f97cc64381b:   mov    %rcx,%rdi
          │  0x00007f97cc64381e:   imul   0xe0(%rsp),%rdi
   0.03%  │  0x00007f97cc643827:   mov    %rdi,0x2b0(%rsp)
   0.11%  │  0x00007f97cc64382f:   mov    %rcx,%rdi
          │  0x00007f97cc643832:   imul   0xd8(%rsp),%rdi
          │  0x00007f97cc64383b:   mov    %rdi,0x2b8(%rsp)
   0.15%  │  0x00007f97cc643843:   mov    %rcx,%rbp
          │  0x00007f97cc643846:   imul   0xc8(%rsp),%rbp
          │  0x00007f97cc64384f:   mov    0xc0(%rsp),%r14
          │  0x00007f97cc643857:   imul   %rcx,%r14
   0.08%  │  0x00007f97cc64385b:   mov    0xb8(%rsp),%rdi
          │  0x00007f97cc643863:   imul   %rcx,%rdi
          │  0x00007f97cc643867:   add    %rdi,%rbx
   0.13%  │  0x00007f97cc64386a:   add    %r10,%rbx
   0.47%  │  0x00007f97cc64386d:   add    %r8,%rbx                     ;   {no_reloc}
   0.00%  │  0x00007f97cc643870:   add    %r13,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@122 (line 383)
          │  0x00007f97cc643873:   vmovq  %rbx,%xmm2
   0.00%  │  0x00007f97cc643878:   vmovq  %xmm9,%r10
   0.07%  │  0x00007f97cc64387d:   imul   %rcx,%r10
          │  0x00007f97cc643881:   add    %r11,%r10
          │  0x00007f97cc643884:   add    %r9,%r10
          │  0x00007f97cc643887:   add    0xd0(%rsp),%r10              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@81 (line 382)
   0.11%  │  0x00007f97cc64388f:   mov    %r10,0xd0(%rsp)
          │  0x00007f97cc643897:   vmovq  %xmm1,%r10
          │  0x00007f97cc64389c:   mov    0x38(%r10),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@130 (line 384)
   0.00%  │  0x00007f97cc6438a0:   vmovq  %xmm1,%r11
   0.10%  │  0x00007f97cc6438a5:   mov    0x40(%r11),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@180 (line 385)
   0.00%  │  0x00007f97cc6438a9:   mov    %r10,%r11
          │  0x00007f97cc6438ac:   imul   0x158(%rsp),%r11
   0.01%  │  0x00007f97cc6438b5:   mov    %r11,0x2c0(%rsp)
   0.12%  │  0x00007f97cc6438bd:   mov    %rcx,%r11
          │  0x00007f97cc6438c0:   imul   0x158(%rsp),%r11
          │  0x00007f97cc6438c9:   mov    %r11,0x2c8(%rsp)
   0.00%  │  0x00007f97cc6438d1:   mov    %rcx,%r11
   0.10%  │  0x00007f97cc6438d4:   imul   0x150(%rsp),%r11
          │  0x00007f97cc6438dd:   mov    %r11,0x2d0(%rsp)
   0.00%  │  0x00007f97cc6438e5:   mov    %rcx,%r11
          │  0x00007f97cc6438e8:   imul   0x138(%rsp),%r11
   0.10%  │  0x00007f97cc6438f1:   mov    %r11,0x2d8(%rsp)
   0.00%  │  0x00007f97cc6438f9:   mov    %rcx,%r11
          │  0x00007f97cc6438fc:   imul   0x130(%rsp),%r11
          │  0x00007f97cc643905:   mov    %r11,0x2e0(%rsp)
   0.10%  │  0x00007f97cc64390d:   mov    %rcx,%r11
          │  0x00007f97cc643910:   imul   0x118(%rsp),%r11
          │  0x00007f97cc643919:   mov    %r11,0x2e8(%rsp)
   0.07%  │  0x00007f97cc643921:   mov    %rcx,%r11
   0.03%  │  0x00007f97cc643924:   imul   0x110(%rsp),%r11
          │  0x00007f97cc64392d:   mov    %r11,0x2f0(%rsp)
   0.05%  │  0x00007f97cc643935:   mov    %rcx,%r11
          │  0x00007f97cc643938:   imul   0xf8(%rsp),%r11
   0.04%  │  0x00007f97cc643941:   mov    %r11,0x2f8(%rsp)
   0.07%  │  0x00007f97cc643949:   mov    %rcx,%r11
          │  0x00007f97cc64394c:   imul   0xf0(%rsp),%r11
   0.00%  │  0x00007f97cc643955:   mov    %r11,0x300(%rsp)
   0.12%  │  0x00007f97cc64395d:   mov    0xe0(%rsp),%r11
   0.00%  │  0x00007f97cc643965:   imul   %rcx,%r11
          │  0x00007f97cc643969:   mov    %r11,0x308(%rsp)             ;   {no_reloc}
   0.04%  │  0x00007f97cc643971:   mov    0xd8(%rsp),%r11
   0.06%  │  0x00007f97cc643979:   imul   %rcx,%r11
          │  0x00007f97cc64397d:   mov    %r11,0x310(%rsp)
   0.03%  │  0x00007f97cc643985:   mov    0xc8(%rsp),%r11
          │  0x00007f97cc64398d:   imul   %rcx,%r11
   0.08%  │  0x00007f97cc643991:   mov    %r11,0x318(%rsp)
   0.05%  │  0x00007f97cc643999:   mov    0xc0(%rsp),%r11
          │  0x00007f97cc6439a1:   imul   %rcx,%r11
          │  0x00007f97cc6439a5:   mov    0xb8(%rsp),%r8
   0.07%  │  0x00007f97cc6439ad:   imul   %rcx,%r8
   0.04%  │  0x00007f97cc6439b1:   vmovq  %xmm9,%r9
          │  0x00007f97cc6439b6:   imul   %rcx,%r9
          │  0x00007f97cc6439ba:   mov    %r10,%rcx
   0.07%  │  0x00007f97cc6439bd:   imul   0x150(%rsp),%rcx
   0.09%  │  0x00007f97cc6439c6:   mov    %rcx,0x320(%rsp)
   0.15%  │  0x00007f97cc6439ce:   mov    %r10,%rcx
          │  0x00007f97cc6439d1:   imul   0x138(%rsp),%rcx
   0.02%  │  0x00007f97cc6439da:   mov    %rcx,0x328(%rsp)
   0.10%  │  0x00007f97cc6439e2:   mov    %r10,%rcx
          │  0x00007f97cc6439e5:   imul   0x130(%rsp),%rcx
   0.00%  │  0x00007f97cc6439ee:   mov    %rcx,0x330(%rsp)
   0.09%  │  0x00007f97cc6439f6:   mov    %r10,%rcx
          │  0x00007f97cc6439f9:   imul   0x118(%rsp),%rcx
          │  0x00007f97cc643a02:   mov    %rcx,0x338(%rsp)
   0.09%  │  0x00007f97cc643a0a:   mov    %r10,%rcx
   0.03%  │  0x00007f97cc643a0d:   imul   0x110(%rsp),%rcx
   0.00%  │  0x00007f97cc643a16:   mov    %rcx,0x340(%rsp)
   0.20%  │  0x00007f97cc643a1e:   mov    %r10,%rcx
          │  0x00007f97cc643a21:   imul   0xf8(%rsp),%rcx
   0.02%  │  0x00007f97cc643a2a:   mov    %rcx,0x348(%rsp)
   0.10%  │  0x00007f97cc643a32:   mov    %r10,%rcx
   0.03%  │  0x00007f97cc643a35:   imul   0xf0(%rsp),%rcx
          │  0x00007f97cc643a3e:   mov    %rcx,0x350(%rsp)
   0.05%  │  0x00007f97cc643a46:   mov    %r10,%r13
   0.00%  │  0x00007f97cc643a49:   imul   0xe0(%rsp),%r13
   0.05%  │  0x00007f97cc643a52:   mov    0xd8(%rsp),%rcx
          │  0x00007f97cc643a5a:   imul   %r10,%rcx
   0.04%  │  0x00007f97cc643a5e:   mov    %rcx,0x358(%rsp)
   0.08%  │  0x00007f97cc643a66:   mov    0xc8(%rsp),%rcx              ;   {no_reloc}
   0.02%  │  0x00007f97cc643a6e:   imul   %r10,%rcx
          │  0x00007f97cc643a72:   mov    0xc0(%rsp),%rbx
   0.00%  │  0x00007f97cc643a7a:   imul   %r10,%rbx
   0.08%  │  0x00007f97cc643a7e:   mov    0xb8(%rsp),%rdi
   0.01%  │  0x00007f97cc643a86:   imul   %r10,%rdi
   0.01%  │  0x00007f97cc643a8a:   add    %rdi,%r9
   0.11%  │  0x00007f97cc643a8d:   add    %rsi,%r9
   0.08%  │  0x00007f97cc643a90:   add    %rbp,%r9
   0.11%  │  0x00007f97cc643a93:   add    0x1c0(%rsp),%r9
   0.07%  │  0x00007f97cc643a9b:   add    %rdx,%r9
   0.09%  │  0x00007f97cc643a9e:   add    0x100(%rsp),%r9              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@230 (line 385)
   0.10%  │  0x00007f97cc643aa6:   vmovq  %r9,%xmm3
   0.25%  │  0x00007f97cc643aab:   vmovq  %xmm9,%r9
          │  0x00007f97cc643ab0:   imul   %r10,%r9
          │  0x00007f97cc643ab4:   add    %rax,%r9
          │  0x00007f97cc643ab7:   add    %r14,%r9
   0.13%  │  0x00007f97cc643aba:   add    0x1c8(%rsp),%r9
          │  0x00007f97cc643ac2:   add    0x208(%rsp),%r9
          │  0x00007f97cc643aca:   add    0xe8(%rsp),%r9               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@171 (line 384)
          │  0x00007f97cc643ad2:   vmovq  %r9,%xmm4
   0.09%  │  0x00007f97cc643ad7:   vmovq  %xmm1,%r10
          │  0x00007f97cc643adc:   mov    0x48(%r10),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@239 (line 386)
   0.00%  │  0x00007f97cc643ae0:   vmovq  %xmm1,%r9
          │  0x00007f97cc643ae5:   mov    0x50(%r9),%rdx               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@308 (line 387)
   0.10%  │  0x00007f97cc643ae9:   mov    %r10,%r9
          │  0x00007f97cc643aec:   imul   0x158(%rsp),%r9
   0.00%  │  0x00007f97cc643af5:   mov    %r9,0xe8(%rsp)
          │  0x00007f97cc643afd:   mov    %rdx,%r9
   0.10%  │  0x00007f97cc643b00:   imul   0x158(%rsp),%r9
          │  0x00007f97cc643b09:   mov    %r9,0x100(%rsp)
          │  0x00007f97cc643b11:   mov    %rdx,%r9
          │  0x00007f97cc643b14:   imul   0x150(%rsp),%r9
   0.10%  │  0x00007f97cc643b1d:   mov    %r9,0x1c0(%rsp)
          │  0x00007f97cc643b25:   mov    %rdx,%r9
          │  0x00007f97cc643b28:   imul   0x138(%rsp),%r9
          │  0x00007f97cc643b31:   mov    %r9,0x1c8(%rsp)
   0.10%  │  0x00007f97cc643b39:   mov    %rdx,%r9
          │  0x00007f97cc643b3c:   imul   0x130(%rsp),%r9
          │  0x00007f97cc643b45:   mov    %r9,0x208(%rsp)
   0.04%  │  0x00007f97cc643b4d:   mov    %rdx,%r9
   0.07%  │  0x00007f97cc643b50:   imul   0x118(%rsp),%r9
          │  0x00007f97cc643b59:   mov    %r9,0x360(%rsp)
          │  0x00007f97cc643b61:   mov    %rdx,%r9
   0.03%  │  0x00007f97cc643b64:   imul   0x110(%rsp),%r9              ;   {no_reloc}
   0.07%  │  0x00007f97cc643b6d:   mov    %r9,0x368(%rsp)
   0.00%  │  0x00007f97cc643b75:   mov    0xf8(%rsp),%r9
          │  0x00007f97cc643b7d:   imul   %rdx,%r9
   0.07%  │  0x00007f97cc643b81:   mov    %r9,0x370(%rsp)
   0.05%  │  0x00007f97cc643b89:   mov    0xf0(%rsp),%r9
          │  0x00007f97cc643b91:   imul   %rdx,%r9
          │  0x00007f97cc643b95:   mov    %r9,0x378(%rsp)
   0.17%  │  0x00007f97cc643b9d:   mov    0xe0(%rsp),%r9
   0.00%  │  0x00007f97cc643ba5:   imul   %rdx,%r9
          │  0x00007f97cc643ba9:   mov    %r9,0x380(%rsp)
   0.05%  │  0x00007f97cc643bb1:   mov    0xd8(%rsp),%r9
   0.05%  │  0x00007f97cc643bb9:   imul   %rdx,%r9
   0.01%  │  0x00007f97cc643bbd:   mov    %r9,0x388(%rsp)
   0.05%  │  0x00007f97cc643bc5:   mov    0xc8(%rsp),%r9
          │  0x00007f97cc643bcd:   imul   %rdx,%r9
   0.07%  │  0x00007f97cc643bd1:   mov    %r9,0x390(%rsp)
   0.14%  │  0x00007f97cc643bd9:   mov    0xc0(%rsp),%r9
          │  0x00007f97cc643be1:   imul   %rdx,%r9
          │  0x00007f97cc643be5:   mov    0xb8(%rsp),%rdi
          │  0x00007f97cc643bed:   imul   %rdx,%rdi
   0.11%  │  0x00007f97cc643bf1:   vmovq  %xmm9,%rax
          │  0x00007f97cc643bf6:   imul   %rdx,%rax
          │  0x00007f97cc643bfa:   mov    %r10,%rdx
          │  0x00007f97cc643bfd:   imul   0x150(%rsp),%rdx
   0.12%  │  0x00007f97cc643c06:   mov    %rdx,0x398(%rsp)
   0.08%  │  0x00007f97cc643c0e:   mov    %r10,%rdx
          │  0x00007f97cc643c11:   imul   0x138(%rsp),%rdx
          │  0x00007f97cc643c1a:   mov    %rdx,0x3a0(%rsp)
   0.07%  │  0x00007f97cc643c22:   mov    %r10,%rdx
          │  0x00007f97cc643c25:   imul   0x130(%rsp),%rdx
          │  0x00007f97cc643c2e:   mov    %rdx,0x3a8(%rsp)
   0.12%  │  0x00007f97cc643c36:   mov    %r10,%rdx
   0.00%  │  0x00007f97cc643c39:   imul   0x118(%rsp),%rdx
          │  0x00007f97cc643c42:   mov    %rdx,0x3b0(%rsp)
   0.09%  │  0x00007f97cc643c4a:   mov    %r10,%rdx
   0.00%  │  0x00007f97cc643c4d:   imul   0x110(%rsp),%rdx
   0.00%  │  0x00007f97cc643c56:   mov    %rdx,0x3b8(%rsp)
   0.17%  │  0x00007f97cc643c5e:   mov    %r10,%rdx
          │  0x00007f97cc643c61:   imul   0xf8(%rsp),%rdx
          │  0x00007f97cc643c6a:   mov    %rdx,0x3c0(%rsp)             ;   {no_reloc}
   0.16%  │  0x00007f97cc643c72:   mov    0xf0(%rsp),%rdx
          │  0x00007f97cc643c7a:   imul   %r10,%rdx
          │  0x00007f97cc643c7e:   mov    %rdx,0x3c8(%rsp)
   0.12%  │  0x00007f97cc643c86:   mov    0xe0(%rsp),%rdx
   0.00%  │  0x00007f97cc643c8e:   imul   %r10,%rdx
          │  0x00007f97cc643c92:   mov    %rdx,0x3d0(%rsp)
   0.14%  │  0x00007f97cc643c9a:   mov    0xd8(%rsp),%rdx
          │  0x00007f97cc643ca2:   imul   %r10,%rdx
          │  0x00007f97cc643ca6:   mov    %rdx,0x3d8(%rsp)
   0.11%  │  0x00007f97cc643cae:   mov    0xc8(%rsp),%rdx
          │  0x00007f97cc643cb6:   imul   %r10,%rdx
          │  0x00007f97cc643cba:   mov    0xc0(%rsp),%rsi
   0.00%  │  0x00007f97cc643cc2:   imul   %r10,%rsi
   0.11%  │  0x00007f97cc643cc6:   mov    0xb8(%rsp),%rbp
          │  0x00007f97cc643cce:   imul   %r10,%rbp
          │  0x00007f97cc643cd2:   add    %rbp,%rax
   0.13%  │  0x00007f97cc643cd5:   add    %r11,%rax
   0.10%  │  0x00007f97cc643cd8:   add    %rcx,%rax
   0.26%  │  0x00007f97cc643cdb:   add    0x268(%rsp),%rax
   0.12%  │  0x00007f97cc643ce3:   add    0x2b0(%rsp),%rax
   0.11%  │  0x00007f97cc643ceb:   add    0x1b0(%rsp),%rax
   0.13%  │  0x00007f97cc643cf3:   add    0x1f8(%rsp),%rax
   0.11%  │  0x00007f97cc643cfb:   add    0x120(%rsp),%rax             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@378 (line 387)
   0.09%  │  0x00007f97cc643d03:   vmovq  %rax,%xmm5
   0.18%  │  0x00007f97cc643d08:   vmovq  %xmm9,%r11
          │  0x00007f97cc643d0d:   imul   %r10,%r11
          │  0x00007f97cc643d11:   add    %r8,%r11
          │  0x00007f97cc643d14:   add    %rbx,%r11
   0.12%  │  0x00007f97cc643d17:   add    0x270(%rsp),%r11
          │  0x00007f97cc643d1f:   add    0x2b8(%rsp),%r11
          │  0x00007f97cc643d27:   add    0x1b8(%rsp),%r11
          │  0x00007f97cc643d2f:   add    0x200(%rsp),%r11
   0.09%  │  0x00007f97cc643d37:   add    0x108(%rsp),%r11             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@299 (line 386)
          │  0x00007f97cc643d3f:   vmovq  %r11,%xmm6
          │  0x00007f97cc643d44:   vmovq  %xmm1,%r10
          │  0x00007f97cc643d49:   mov    0x58(%r10),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@387 (line 388)
   0.09%  │  0x00007f97cc643d4d:   vmovq  %xmm1,%r11
          │  0x00007f97cc643d52:   mov    0x60(%r11),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@476 (line 389)
   0.00%  │  0x00007f97cc643d56:   mov    %r10,%r11
          │  0x00007f97cc643d59:   imul   0x158(%rsp),%r11
   0.09%  │  0x00007f97cc643d62:   mov    %r11,0x108(%rsp)             ;   {no_reloc}
          │  0x00007f97cc643d6a:   mov    %r8,%r11
          │  0x00007f97cc643d6d:   imul   0x158(%rsp),%r11
          │  0x00007f97cc643d76:   mov    %r11,0x120(%rsp)
   0.10%  │  0x00007f97cc643d7e:   mov    %r8,%r11
          │  0x00007f97cc643d81:   imul   0x150(%rsp),%r11
          │  0x00007f97cc643d8a:   mov    %r11,0x1b0(%rsp)
          │  0x00007f97cc643d92:   mov    %r8,%r11
   0.12%  │  0x00007f97cc643d95:   imul   0x138(%rsp),%r11
          │  0x00007f97cc643d9e:   mov    %r11,0x1b8(%rsp)
          │  0x00007f97cc643da6:   mov    %r8,%r11
          │  0x00007f97cc643da9:   imul   0x130(%rsp),%r11
   0.11%  │  0x00007f97cc643db2:   mov    %r11,0x1f8(%rsp)
          │  0x00007f97cc643dba:   mov    0x118(%rsp),%r11
          │  0x00007f97cc643dc2:   imul   %r8,%r11
          │  0x00007f97cc643dc6:   mov    %r11,0x200(%rsp)
   0.10%  │  0x00007f97cc643dce:   mov    0x110(%rsp),%r11
          │  0x00007f97cc643dd6:   imul   %r8,%r11
          │  0x00007f97cc643dda:   mov    %r11,0x268(%rsp)
          │  0x00007f97cc643de2:   mov    0xf8(%rsp),%r11
   0.10%  │  0x00007f97cc643dea:   imul   %r8,%r11
          │  0x00007f97cc643dee:   mov    %r11,0x270(%rsp)
          │  0x00007f97cc643df6:   mov    0xf0(%rsp),%r11
          │  0x00007f97cc643dfe:   imul   %r8,%r11
   0.10%  │  0x00007f97cc643e02:   mov    %r11,0x2b0(%rsp)
   0.00%  │  0x00007f97cc643e0a:   mov    0xe0(%rsp),%r11
          │  0x00007f97cc643e12:   imul   %r8,%r11
          │  0x00007f97cc643e16:   mov    %r11,0x2b8(%rsp)
   0.12%  │  0x00007f97cc643e1e:   mov    0xd8(%rsp),%r11
          │  0x00007f97cc643e26:   imul   %r8,%r11
          │  0x00007f97cc643e2a:   mov    %r11,0x3e0(%rsp)
   0.04%  │  0x00007f97cc643e32:   mov    0xc8(%rsp),%r11
   0.06%  │  0x00007f97cc643e3a:   imul   %r8,%r11
          │  0x00007f97cc643e3e:   mov    %r11,0x3e8(%rsp)
   0.05%  │  0x00007f97cc643e46:   mov    0xc0(%rsp),%r11
          │  0x00007f97cc643e4e:   imul   %r8,%r11
   0.07%  │  0x00007f97cc643e52:   mov    %r11,0x3f0(%rsp)
   0.06%  │  0x00007f97cc643e5a:   mov    0xb8(%rsp),%r11
          │  0x00007f97cc643e62:   imul   %r8,%r11
          │  0x00007f97cc643e66:   mov    %r11,0x3f8(%rsp)             ;   {no_reloc}
   0.17%  │  0x00007f97cc643e6e:   vmovq  %xmm9,%r11
          │  0x00007f97cc643e73:   imul   %r8,%r11
          │  0x00007f97cc643e77:   mov    %r10,%r8
          │  0x00007f97cc643e7a:   imul   0x150(%rsp),%r8
   0.09%  │  0x00007f97cc643e83:   mov    %r8,0x400(%rsp)
   0.04%  │  0x00007f97cc643e8b:   mov    %r10,%r8
   0.00%  │  0x00007f97cc643e8e:   imul   0x138(%rsp),%r8
          │  0x00007f97cc643e97:   mov    %r8,0x408(%rsp)
   0.14%  │  0x00007f97cc643e9f:   mov    %r10,%r8
          │  0x00007f97cc643ea2:   imul   0x130(%rsp),%r8
          │  0x00007f97cc643eab:   mov    %r8,0x410(%rsp)
   0.16%  │  0x00007f97cc643eb3:   mov    %r10,%r8
          │  0x00007f97cc643eb6:   imul   0x118(%rsp),%r8
          │  0x00007f97cc643ebf:   mov    %r8,0x418(%rsp)
   0.10%  │  0x00007f97cc643ec7:   mov    0x110(%rsp),%r8
          │  0x00007f97cc643ecf:   imul   %r10,%r8
          │  0x00007f97cc643ed3:   mov    %r8,0x420(%rsp)
   0.10%  │  0x00007f97cc643edb:   mov    0xf8(%rsp),%r8
          │  0x00007f97cc643ee3:   imul   %r10,%r8
          │  0x00007f97cc643ee7:   mov    %r8,0x428(%rsp)
   0.15%  │  0x00007f97cc643eef:   mov    0xf0(%rsp),%r8
          │  0x00007f97cc643ef7:   imul   %r10,%r8
          │  0x00007f97cc643efb:   mov    %r8,0x430(%rsp)
   0.10%  │  0x00007f97cc643f03:   mov    0xe0(%rsp),%r8
          │  0x00007f97cc643f0b:   imul   %r10,%r8
          │  0x00007f97cc643f0f:   mov    %r8,0x438(%rsp)
   0.09%  │  0x00007f97cc643f17:   mov    0xd8(%rsp),%r8
          │  0x00007f97cc643f1f:   imul   %r10,%r8
          │  0x00007f97cc643f23:   mov    %r8,0x440(%rsp)
   0.10%  │  0x00007f97cc643f2b:   mov    0xc8(%rsp),%rbp
          │  0x00007f97cc643f33:   imul   %r10,%rbp
   0.04%  │  0x00007f97cc643f37:   mov    0xc0(%rsp),%r14
          │  0x00007f97cc643f3f:   imul   %r10,%r14
   0.05%  │  0x00007f97cc643f43:   mov    0xb8(%rsp),%r8
          │  0x00007f97cc643f4b:   imul   %r10,%r8
   0.05%  │  0x00007f97cc643f4f:   add    %r8,%r11
   0.19%  │  0x00007f97cc643f52:   add    %r9,%r11
   0.06%  │  0x00007f97cc643f55:   add    %rdx,%r11
   0.13%  │  0x00007f97cc643f58:   add    0x310(%rsp),%r11
   0.12%  │  0x00007f97cc643f60:   add    %r13,%r11
   0.12%  │  0x00007f97cc643f63:   add    0x258(%rsp),%r11             ;   {no_reloc}
   0.10%  │  0x00007f97cc643f6b:   add    0x2a0(%rsp),%r11
   0.10%  │  0x00007f97cc643f73:   add    0x1a0(%rsp),%r11
   0.10%  │  0x00007f97cc643f7b:   add    0x1e8(%rsp),%r11
   0.11%  │  0x00007f97cc643f83:   add    0x140(%rsp),%r11             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@566 (line 389)
   0.11%  │  0x00007f97cc643f8b:   vmovq  %r11,%xmm7
   0.22%  │  0x00007f97cc643f90:   vmovq  %xmm9,%r11
          │  0x00007f97cc643f95:   imul   %r10,%r11
          │  0x00007f97cc643f99:   add    %rdi,%r11
          │  0x00007f97cc643f9c:   add    %rsi,%r11
   0.10%  │  0x00007f97cc643f9f:   add    0x318(%rsp),%r11
          │  0x00007f97cc643fa7:   add    0x358(%rsp),%r11
          │  0x00007f97cc643faf:   add    0x260(%rsp),%r11
          │  0x00007f97cc643fb7:   add    0x2a8(%rsp),%r11
   0.28%  │  0x00007f97cc643fbf:   add    0x1a8(%rsp),%r11
   0.06%  │  0x00007f97cc643fc7:   add    0x1f0(%rsp),%r11
   1.43%  │  0x00007f97cc643fcf:   add    0x128(%rsp),%r11             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@467 (line 388)
   0.12%  │  0x00007f97cc643fd7:   vmovq  %r11,%xmm8
   0.21%  │  0x00007f97cc643fdc:   vmovq  %xmm1,%r10
          │  0x00007f97cc643fe1:   mov    0x68(%r10),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@575 (line 390)
          │  0x00007f97cc643fe5:   vmovq  %xmm1,%r11
          │  0x00007f97cc643fea:   mov    0x70(%r11),%rbx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@684 (line 391)
   0.10%  │  0x00007f97cc643fee:   mov    %r10,%r11
          │  0x00007f97cc643ff1:   imul   0x158(%rsp),%r11
          │  0x00007f97cc643ffa:   mov    %r11,0x128(%rsp)
          │  0x00007f97cc644002:   mov    %rbx,%r11
   0.09%  │  0x00007f97cc644005:   imul   0x158(%rsp),%r11
          │  0x00007f97cc64400e:   mov    %rbx,%r8
          │  0x00007f97cc644011:   imul   0x150(%rsp),%r8
          │  0x00007f97cc64401a:   mov    0x138(%rsp),%r9
   0.11%  │  0x00007f97cc644022:   imul   %rbx,%r9
          │  0x00007f97cc644026:   mov    %r9,0x140(%rsp)
          │  0x00007f97cc64402e:   mov    0x130(%rsp),%r9
          │  0x00007f97cc644036:   imul   %rbx,%r9
   0.10%  │  0x00007f97cc64403a:   mov    %r9,0x1a0(%rsp)
          │  0x00007f97cc644042:   mov    0x118(%rsp),%r9
          │  0x00007f97cc64404a:   imul   %rbx,%r9
          │  0x00007f97cc64404e:   mov    %r9,0x1a8(%rsp)
   0.12%  │  0x00007f97cc644056:   mov    0x110(%rsp),%r9
          │  0x00007f97cc64405e:   imul   %rbx,%r9
          │  0x00007f97cc644062:   mov    %r9,0x1e8(%rsp)              ;   {no_reloc}
          │  0x00007f97cc64406a:   mov    0xf8(%rsp),%r9
   0.12%  │  0x00007f97cc644072:   imul   %rbx,%r9
          │  0x00007f97cc644076:   mov    %r9,0x1f0(%rsp)
          │  0x00007f97cc64407e:   mov    0xf0(%rsp),%r9
          │  0x00007f97cc644086:   imul   %rbx,%r9
   0.09%  │  0x00007f97cc64408a:   mov    %r9,0x258(%rsp)
          │  0x00007f97cc644092:   mov    0xe0(%rsp),%r9
          │  0x00007f97cc64409a:   imul   %rbx,%r9
          │  0x00007f97cc64409e:   mov    %r9,0x260(%rsp)
   0.09%  │  0x00007f97cc6440a6:   mov    0xd8(%rsp),%r9
          │  0x00007f97cc6440ae:   imul   %rbx,%r9
          │  0x00007f97cc6440b2:   mov    %r9,0x2a0(%rsp)
   0.04%  │  0x00007f97cc6440ba:   mov    0xc8(%rsp),%r9
   0.06%  │  0x00007f97cc6440c2:   imul   %rbx,%r9
          │  0x00007f97cc6440c6:   mov    %r9,0x2a8(%rsp)
   0.04%  │  0x00007f97cc6440ce:   mov    0xc0(%rsp),%r9
          │  0x00007f97cc6440d6:   imul   %rbx,%r9
   0.06%  │  0x00007f97cc6440da:   mov    %r9,0x310(%rsp)
   0.05%  │  0x00007f97cc6440e2:   mov    0xb8(%rsp),%r9
          │  0x00007f97cc6440ea:   imul   %rbx,%r9
          │  0x00007f97cc6440ee:   vmovq  %xmm9,%rcx
   0.06%  │  0x00007f97cc6440f3:   imul   %rbx,%rcx
   0.04%  │  0x00007f97cc6440f7:   mov    %r10,%rbx
          │  0x00007f97cc6440fa:   imul   0x150(%rsp),%rbx
   0.03%  │  0x00007f97cc644103:   mov    %r10,%rdi
   0.06%  │  0x00007f97cc644106:   imul   0x138(%rsp),%rdi
          │  0x00007f97cc64410f:   mov    0x130(%rsp),%rdx
          │  0x00007f97cc644117:   imul   %r10,%rdx
   0.05%  │  0x00007f97cc64411b:   mov    0x118(%rsp),%rsi
   0.07%  │  0x00007f97cc644123:   imul   %r10,%rsi
   0.03%  │  0x00007f97cc644127:   mov    0x110(%rsp),%rax
          │  0x00007f97cc64412f:   imul   %r10,%rax
   0.03%  │  0x00007f97cc644133:   mov    %rax,0x318(%rsp)
   0.15%  │  0x00007f97cc64413b:   mov    0xf8(%rsp),%rax
          │  0x00007f97cc644143:   imul   %r10,%rax
          │  0x00007f97cc644147:   mov    %rax,0x358(%rsp)
   0.06%  │  0x00007f97cc64414f:   mov    0xf0(%rsp),%rax
   0.07%  │  0x00007f97cc644157:   imul   %r10,%rax
          │  0x00007f97cc64415b:   mov    %rax,0x448(%rsp)
   0.04%  │  0x00007f97cc644163:   mov    0xe0(%rsp),%rax              ;   {no_reloc}
          │  0x00007f97cc64416b:   imul   %r10,%rax
   0.08%  │  0x00007f97cc64416f:   mov    %rax,0x450(%rsp)
   0.04%  │  0x00007f97cc644177:   mov    0xd8(%rsp),%rax
          │  0x00007f97cc64417f:   imul   %r10,%rax
          │  0x00007f97cc644183:   mov    %rax,0x458(%rsp)
   0.12%  │  0x00007f97cc64418b:   mov    0xc8(%rsp),%rax
          │  0x00007f97cc644193:   imul   %r10,%rax
          │  0x00007f97cc644197:   mov    %rax,0x460(%rsp)
   0.08%  │  0x00007f97cc64419f:   mov    0xc0(%rsp),%rax
   0.09%  │  0x00007f97cc6441a7:   imul   %r10,%rax
          │  0x00007f97cc6441ab:   mov    0xb8(%rsp),%r13
          │  0x00007f97cc6441b3:   imul   %r10,%r13
   0.04%  │  0x00007f97cc6441b7:   add    %r13,%rcx
   0.04%  │  0x00007f97cc6441ba:   add    0x3f0(%rsp),%rcx
   0.03%  │  0x00007f97cc6441c2:   add    %rbp,%rcx
   0.03%  │  0x00007f97cc6441c5:   add    0x388(%rsp),%rcx
   0.13%  │  0x00007f97cc6441cd:   add    0x3d0(%rsp),%rcx
   0.09%  │  0x00007f97cc6441d5:   add    0x300(%rsp),%rcx
   0.04%  │  0x00007f97cc6441dd:   add    0x348(%rsp),%rcx
   0.04%  │  0x00007f97cc6441e5:   add    0x248(%rsp),%rcx
   0.03%  │  0x00007f97cc6441ed:   add    0x290(%rsp),%rcx
   0.11%  │  0x00007f97cc6441f5:   add    0x190(%rsp),%rcx
   0.04%  │  0x00007f97cc6441fd:   add    0x1d8(%rsp),%rcx
   0.04%  │  0x00007f97cc644205:   add    0x160(%rsp),%rcx             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@794 (line 391)
   0.04%  │  0x00007f97cc64420d:   mov    %rcx,%rbp
   0.05%  │  0x00007f97cc644210:   vmovq  %xmm9,%rcx
          │  0x00007f97cc644215:   imul   %r10,%rcx
          │  0x00007f97cc644219:   add    0x3f8(%rsp),%rcx
   0.04%  │  0x00007f97cc644221:   add    %r14,%rcx
   0.05%  │  0x00007f97cc644224:   add    0x390(%rsp),%rcx
          │  0x00007f97cc64422c:   add    0x3d8(%rsp),%rcx
          │  0x00007f97cc644234:   add    0x308(%rsp),%rcx
   0.06%  │  0x00007f97cc64423c:   add    0x350(%rsp),%rcx
   0.05%  │  0x00007f97cc644244:   add    0x250(%rsp),%rcx
          │  0x00007f97cc64424c:   add    0x298(%rsp),%rcx
          │  0x00007f97cc644254:   add    0x198(%rsp),%rcx
   0.03%  │  0x00007f97cc64425c:   add    0x1e0(%rsp),%rcx
   0.06%  │  0x00007f97cc644264:   add    0x148(%rsp),%rcx             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@675 (line 390)
          │                                                            ;   {no_reloc}
          │  0x00007f97cc64426c:   mov    %rcx,%r13
          │  0x00007f97cc64426f:   vmovq  %xmm1,%r10
   0.03%  │  0x00007f97cc644274:   mov    0x78(%r10),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@803 (line 392)
   0.08%  │  0x00007f97cc644278:   vmovq  %xmm9,%r10
          │  0x00007f97cc64427d:   imul   %rcx,%r10
          │  0x00007f97cc644281:   add    %r9,%r10
   0.04%  │  0x00007f97cc644284:   add    %rax,%r10
   0.07%  │  0x00007f97cc644287:   add    0x3e8(%rsp),%r10
   0.01%  │  0x00007f97cc64428f:   add    0x440(%rsp),%r10
          │  0x00007f97cc644297:   add    0x380(%rsp),%r10
   0.05%  │  0x00007f97cc64429f:   add    0x3c8(%rsp),%r10
   0.05%  │  0x00007f97cc6442a7:   add    0x2f8(%rsp),%r10
   0.04%  │  0x00007f97cc6442af:   add    0x340(%rsp),%r10
   0.04%  │  0x00007f97cc6442b7:   add    0x240(%rsp),%r10
   0.03%  │  0x00007f97cc6442bf:   add    0x288(%rsp),%r10
   0.11%  │  0x00007f97cc6442c7:   add    0x188(%rsp),%r10
   0.06%  │  0x00007f97cc6442cf:   add    0x1d0(%rsp),%r10
   0.07%  │  0x00007f97cc6442d7:   add    0x168(%rsp),%r10             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@923 (line 392)
   0.10%  │  0x00007f97cc6442df:   mov    %r10,%r14
   0.01%  │  0x00007f97cc6442e2:   mov    %rcx,%r10
          │  0x00007f97cc6442e5:   imul   0x158(%rsp),%r10             ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1816 (line 405)
          │  0x00007f97cc6442ee:   vmovq  %r10,%xmm1
   0.09%  │  0x00007f97cc6442f3:   mov    0x150(%rsp),%r10
   0.02%  │  0x00007f97cc6442fb:   imul   %rcx,%r10
          │  0x00007f97cc6442ff:   add    %r11,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1805 (line 404)
          │  0x00007f97cc644302:   vmovq  %r10,%xmm9
   0.12%  │  0x00007f97cc644307:   mov    0x138(%rsp),%r10
   0.01%  │  0x00007f97cc64430f:   imul   %rcx,%r10
          │  0x00007f97cc644313:   add    %r8,%r10
          │  0x00007f97cc644316:   add    0x128(%rsp),%r10             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1784 (line 403)
   0.07%  │  0x00007f97cc64431e:   vmovq  %r10,%xmm10
   0.01%  │  0x00007f97cc644323:   mov    0x130(%rsp),%r10
          │  0x00007f97cc64432b:   imul   %rcx,%r10
          │  0x00007f97cc64432f:   add    0x140(%rsp),%r10
   0.11%  │  0x00007f97cc644337:   add    %rbx,%r10
   0.01%  │  0x00007f97cc64433a:   add    0x120(%rsp),%r10             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1753 (line 402)
          │  0x00007f97cc644342:   vmovq  %r10,%xmm11
          │  0x00007f97cc644347:   mov    0x118(%rsp),%r10
   0.09%  │  0x00007f97cc64434f:   imul   %rcx,%r10
   0.00%  │  0x00007f97cc644353:   add    0x1a0(%rsp),%r10
          │  0x00007f97cc64435b:   add    %rdi,%r10
          │  0x00007f97cc64435e:   add    0x1b0(%rsp),%r10             ;   {no_reloc}
   0.10%  │  0x00007f97cc644366:   add    0x108(%rsp),%r10             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1712 (line 401)
   0.01%  │  0x00007f97cc64436e:   vmovq  %r10,%xmm12
   0.07%  │  0x00007f97cc644373:   mov    0x110(%rsp),%rdi
          │  0x00007f97cc64437b:   imul   %rcx,%rdi
   0.07%  │  0x00007f97cc64437f:   add    0x1a8(%rsp),%rdi
   0.01%  │  0x00007f97cc644387:   add    %rdx,%rdi
   0.06%  │  0x00007f97cc64438a:   add    0x1b8(%rsp),%rdi
          │  0x00007f97cc644392:   add    0x400(%rsp),%rdi
   0.05%  │  0x00007f97cc64439a:   add    0x100(%rsp),%rdi             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1661 (line 400)
   0.01%  │  0x00007f97cc6443a2:   mov    0xf8(%rsp),%rax
   0.04%  │  0x00007f97cc6443aa:   imul   %rcx,%rax
          │  0x00007f97cc6443ae:   add    0x1e8(%rsp),%rax
   0.05%  │  0x00007f97cc6443b6:   add    %rsi,%rax
   0.01%  │  0x00007f97cc6443b9:   add    0x1f8(%rsp),%rax
   0.03%  │  0x00007f97cc6443c1:   add    0x408(%rsp),%rax
          │  0x00007f97cc6443c9:   add    0x1c0(%rsp),%rax
   0.06%  │  0x00007f97cc6443d1:   add    0xe8(%rsp),%rax              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1600 (line 399)
   0.05%  │  0x00007f97cc6443d9:   mov    0xf0(%rsp),%r10
          │  0x00007f97cc6443e1:   imul   %rcx,%r10
          │  0x00007f97cc6443e5:   add    0x1f0(%rsp),%r10
   0.05%  │  0x00007f97cc6443ed:   add    0x318(%rsp),%r10
   0.05%  │  0x00007f97cc6443f5:   add    0x200(%rsp),%r10
          │  0x00007f97cc6443fd:   add    0x410(%rsp),%r10
          │  0x00007f97cc644405:   add    0x1c8(%rsp),%r10
   0.05%  │  0x00007f97cc64440d:   add    0x398(%rsp),%r10
   0.10%  │  0x00007f97cc644415:   add    0x2c8(%rsp),%r10             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1529 (line 398)
   0.04%  │  0x00007f97cc64441d:   mov    0xe0(%rsp),%r11
          │  0x00007f97cc644425:   imul   %rcx,%r11
   0.05%  │  0x00007f97cc644429:   add    0x258(%rsp),%r11
   0.01%  │  0x00007f97cc644431:   add    0x358(%rsp),%r11
   0.05%  │  0x00007f97cc644439:   add    0x268(%rsp),%r11
   0.03%  │  0x00007f97cc644441:   add    0x418(%rsp),%r11
   0.07%  │  0x00007f97cc644449:   add    0x208(%rsp),%r11
   0.02%  │  0x00007f97cc644451:   add    0x3a0(%rsp),%r11
   0.04%  │  0x00007f97cc644459:   add    0x2d0(%rsp),%r11
   0.02%  │  0x00007f97cc644461:   add    0x2c0(%rsp),%r11             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1448 (line 397)
          │                                                            ;   {no_reloc}
   0.09%  │  0x00007f97cc644469:   mov    0xd8(%rsp),%r8
   0.01%  │  0x00007f97cc644471:   imul   %rcx,%r8
          │  0x00007f97cc644475:   add    0x260(%rsp),%r8
          │  0x00007f97cc64447d:   add    0x448(%rsp),%r8
   0.10%  │  0x00007f97cc644485:   add    0x270(%rsp),%r8
   0.00%  │  0x00007f97cc64448d:   add    0x420(%rsp),%r8
          │  0x00007f97cc644495:   add    0x360(%rsp),%r8
          │  0x00007f97cc64449d:   add    0x3a8(%rsp),%r8
   0.10%  │  0x00007f97cc6444a5:   add    0x2d8(%rsp),%r8
   0.03%  │  0x00007f97cc6444ad:   add    0x320(%rsp),%r8
   0.06%  │  0x00007f97cc6444b5:   add    0x220(%rsp),%r8              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1359 (line 396)
   0.08%  │  0x00007f97cc6444bd:   mov    0xc8(%rsp),%r9
   0.02%  │  0x00007f97cc6444c5:   imul   %rcx,%r9
          │  0x00007f97cc6444c9:   add    0x2a0(%rsp),%r9
          │  0x00007f97cc6444d1:   add    0x450(%rsp),%r9
   0.07%  │  0x00007f97cc6444d9:   add    0x2b0(%rsp),%r9
   0.02%  │  0x00007f97cc6444e1:   add    0x428(%rsp),%r9
   0.02%  │  0x00007f97cc6444e9:   add    0x368(%rsp),%r9
   0.06%  │  0x00007f97cc6444f1:   add    0x3b0(%rsp),%r9
   0.11%  │  0x00007f97cc6444f9:   add    0x2e0(%rsp),%r9
   0.08%  │  0x00007f97cc644501:   add    0x328(%rsp),%r9
   0.08%  │  0x00007f97cc644509:   add    0x228(%rsp),%r9
   0.09%  │  0x00007f97cc644511:   add    0x218(%rsp),%r9              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1262 (line 395)
   0.09%  │  0x00007f97cc644519:   mov    0xc0(%rsp),%rbx
          │  0x00007f97cc644521:   imul   %rcx,%rbx
          │  0x00007f97cc644525:   add    0x2a8(%rsp),%rbx
          │  0x00007f97cc64452d:   add    0x458(%rsp),%rbx
   0.12%  │  0x00007f97cc644535:   add    0x2b8(%rsp),%rbx
   0.00%  │  0x00007f97cc64453d:   add    0x430(%rsp),%rbx
          │  0x00007f97cc644545:   add    0x370(%rsp),%rbx
   0.02%  │  0x00007f97cc64454d:   add    0x3b8(%rsp),%rbx
   0.10%  │  0x00007f97cc644555:   add    0x2e8(%rsp),%rbx
   0.07%  │  0x00007f97cc64455d:   add    0x330(%rsp),%rbx             ;   {no_reloc}
   0.07%  │  0x00007f97cc644565:   add    0x230(%rsp),%rbx
   0.07%  │  0x00007f97cc64456d:   add    0x278(%rsp),%rbx
   0.10%  │  0x00007f97cc644575:   add    0x178(%rsp),%rbx             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1157 (line 394)
   0.08%  │  0x00007f97cc64457d:   mov    0xb8(%rsp),%rsi
          │  0x00007f97cc644585:   imul   %rcx,%rsi
          │  0x00007f97cc644589:   add    0x310(%rsp),%rsi
   0.01%  │  0x00007f97cc644591:   add    0x460(%rsp),%rsi
   0.09%  │  0x00007f97cc644599:   add    0x3e0(%rsp),%rsi
          │  0x00007f97cc6445a1:   add    0x438(%rsp),%rsi
          │  0x00007f97cc6445a9:   add    0x378(%rsp),%rsi
   0.04%  │  0x00007f97cc6445b1:   add    0x3c0(%rsp),%rsi
   0.09%  │  0x00007f97cc6445b9:   add    0x2f0(%rsp),%rsi
   0.10%  │  0x00007f97cc6445c1:   add    0x338(%rsp),%rsi
   0.18%  │  0x00007f97cc6445c9:   add    0x238(%rsp),%rsi
   0.12%  │  0x00007f97cc6445d1:   add    0x280(%rsp),%rsi
   0.09%  │  0x00007f97cc6445d9:   add    0x180(%rsp),%rsi
   0.11%  │  0x00007f97cc6445e1:   add    0x170(%rsp),%rsi             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1044 (line 393)
   0.10%  │  0x00007f97cc6445e9:   vmovq  %xmm0,%rdx
          │  0x00007f97cc6445ee:   vmovsd %xmm2,(%rsp)
          │  0x00007f97cc6445f3:   vmovsd %xmm4,0x8(%rsp)
          │  0x00007f97cc6445f9:   vmovsd %xmm3,0x10(%rsp)
   0.13%  │  0x00007f97cc6445ff:   vmovsd %xmm6,0x18(%rsp)
          │  0x00007f97cc644605:   vmovsd %xmm5,0x20(%rsp)
          │  0x00007f97cc64460b:   vmovsd %xmm8,0x28(%rsp)
   0.01%  │  0x00007f97cc644611:   vmovsd %xmm7,0x30(%rsp)
   0.08%  │  0x00007f97cc644617:   mov    %r13,0x38(%rsp)
   0.02%  │  0x00007f97cc64461c:   mov    %rbp,0x40(%rsp)
          │  0x00007f97cc644621:   mov    %r14,0x48(%rsp)
   0.04%  │  0x00007f97cc644626:   mov    %rsi,0x50(%rsp)
   0.04%  │  0x00007f97cc64462b:   mov    %rbx,0x58(%rsp)
   0.06%  │  0x00007f97cc644630:   mov    %r9,0x60(%rsp)
   0.01%  │  0x00007f97cc644635:   mov    %r8,0x68(%rsp)
   0.01%  │  0x00007f97cc64463a:   mov    %r11,0x70(%rsp)
   0.04%  │  0x00007f97cc64463f:   mov    %r10,0x78(%rsp)
   0.06%  │  0x00007f97cc644644:   mov    %rax,0x80(%rsp)
   0.06%  │  0x00007f97cc64464c:   mov    %rdi,0x88(%rsp)
   0.07%  │  0x00007f97cc644654:   vmovsd %xmm12,0x90(%rsp)
   0.10%  │  0x00007f97cc64465d:   vmovsd %xmm11,0x98(%rsp)            ;   {no_reloc}
   0.05%  │  0x00007f97cc644666:   vmovsd %xmm10,0xa0(%rsp)
   0.08%  │  0x00007f97cc64466f:   vmovsd %xmm9,0xa8(%rsp)
   0.09%  │  0x00007f97cc644678:   vmovsd %xmm1,0xb0(%rsp)
   0.10%  │  0x00007f97cc644681:   vmovq  %xmm13,%rsi
          │  0x00007f97cc644686:   vmovq  %xmm14,%rcx
          │  0x00007f97cc64468b:   mov    0x210(%rsp),%r8
          │  0x00007f97cc644693:   vmovq  %xmm15,%r9
   0.11%  │  0x00007f97cc644698:   mov    0xd0(%rsp),%rdi
          │  0x00007f97cc6446a0:   data16 xchg %ax,%ax
          │  0x00007f97cc6446a3:   call   0x00007f97cc0c4380           ; ImmutableOopMap {}
          │                                                            ;*invokevirtual carryReduce {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1875 (line 407)
          │                                                            ;   {optimized virtual_call}
   0.00%  │  0x00007f97cc6446a8:   nopl   0x1618(%rax,%rax,1)          ;*invokevirtual carryReduce {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1875 (line 407)
          │                                                            ;   {other}
   0.05%  │  0x00007f97cc6446b0:   add    $0x480,%rsp
   0.05%  │  0x00007f97cc6446b7:   pop    %rbp
   0.04%  │  0x00007f97cc6446b8:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f97cc6446bf:   ja     0x00007f97cc644764
   0.04%  │  0x00007f97cc6446c5:   ret    
          ↘  0x00007f97cc6446c6:   mov    %rsi,%rbp
             0x00007f97cc6446c9:   mov    %rcx,0xc0(%rsp)
             0x00007f97cc6446d1:   mov    %r8,0xc8(%rsp)
             0x00007f97cc6446d9:   mov    %rdx,0xd0(%rsp)
             0x00007f97cc6446e1:   mov    $0xffffffe4,%esi
             0x00007f97cc6446e6:   nop
             0x00007f97cc6446e7:   call   0x00007f97cc0c9f00           ; ImmutableOopMap {rbp=Oop [192]=Oop [200]=Oop [208]=Oop }
                                                                       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@2 (line 379)
                                                                       ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  33.10%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce, version 2, compile id 654 

               # parm26:   [sp+0x1d8]   = long
               # parm27:   [sp+0x1e0]   = long
               0x00007f97cc641920:   mov    0x8(%rsi),%r10d
               0x00007f97cc641924:   movabs $0x7f9753000000,%r11
               0x00007f97cc64192e:   add    %r11,%r10
               0x00007f97cc641931:   cmp    %r10,%rax
               0x00007f97cc641934:   jne    0x00007f97cc0c4080           ;   {runtime_call ic_miss_stub}
               0x00007f97cc64193a:   xchg   %ax,%ax
               0x00007f97cc64193c:   nopl   0x0(%rax)
             [Verified Entry Point]
   0.15%       0x00007f97cc641940:   mov    %eax,-0x14000(%rsp)
               0x00007f97cc641947:   push   %rbp
   0.14%       0x00007f97cc641948:   sub    $0x120,%rsp
               0x00007f97cc64194f:   nop
               0x00007f97cc641950:   cmpl   $0x0,0x20(%r15)
   0.12%  ╭    0x00007f97cc641958:   jne    0x00007f97cc642440           ;*synchronization entry
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@-1 (line 81)
          │    0x00007f97cc64195e:   mov    %r9,%rbp
          │    0x00007f97cc641961:   mov    %r8,%rax
          │    0x00007f97cc641964:   mov    %rcx,%r14
   0.13%  │    0x00007f97cc641967:   vmovq  %rdx,%xmm8
          │    0x00007f97cc64196c:   vmovq  %rsi,%xmm7
          │    0x00007f97cc641971:   mov    0x1e0(%rsp),%r10
          │    0x00007f97cc641979:   sar    $0x10,%r10
   0.14%  │    0x00007f97cc64197d:   mov    0x180(%rsp),%r11
          │    0x00007f97cc641985:   sub    %r10,%r11
          │    0x00007f97cc641988:   mov    0x1e0(%rsp),%r10
          │    0x00007f97cc641990:   shl    $0x14,%r10
   0.11%  │    0x00007f97cc641994:   mov    0x1e0(%rsp),%r8
          │    0x00007f97cc64199c:   shl    $0x18,%r8
          │    0x00007f97cc6419a0:   and    $0xfffffff,%r10
          │    0x00007f97cc6419a7:   mov    0x188(%rsp),%r9
   0.13%  │    0x00007f97cc6419af:   add    %r10,%r9
          │    0x00007f97cc6419b2:   and    $0xfffffff,%r8
          │    0x00007f97cc6419b9:   mov    0x190(%rsp),%rcx
          │    0x00007f97cc6419c1:   add    %r8,%rcx
   0.14%  │    0x00007f97cc6419c4:   mov    0x1e0(%rsp),%r10
          │    0x00007f97cc6419cc:   sar    $0x8,%r10
          │    0x00007f97cc6419d0:   add    %r10,%rcx
          │    0x00007f97cc6419d3:   mov    0x1e0(%rsp),%r8
   0.10%  │    0x00007f97cc6419db:   sar    $0x4,%r8
          │    0x00007f97cc6419df:   mov    0x198(%rsp),%r10
          │    0x00007f97cc6419e7:   add    %r8,%r10                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@23 (line 84)
   0.00%  │    0x00007f97cc6419ea:   mov    0x1e0(%rsp),%rbx
   0.12%  │    0x00007f97cc6419f2:   shl    $0x8,%rbx
          │    0x00007f97cc6419f6:   mov    %r10,%r8
          │    0x00007f97cc6419f9:   sar    $0x8,%r8
          │    0x00007f97cc6419fd:   mov    %r8,0x180(%rsp)
   0.10%  │    0x00007f97cc641a05:   and    $0xfffffff,%rbx
          │    0x00007f97cc641a0c:   mov    0x170(%rsp),%rdx
          │    0x00007f97cc641a14:   add    %rbx,%rdx
          │    0x00007f97cc641a17:   mov    %r10,%r8
   0.16%  │    0x00007f97cc641a1a:   shl    $0x18,%r8
          │    0x00007f97cc641a1e:   vmovq  %r10,%xmm0
          │    0x00007f97cc641a23:   shl    $0x14,%r10
          │    0x00007f97cc641a27:   and    $0xfffffff,%r8
   0.14%  │    0x00007f97cc641a2e:   mov    %r8,0x170(%rsp)              ;   {no_reloc}
          │    0x00007f97cc641a36:   and    $0xfffffff,%r10
          │    0x00007f97cc641a3d:   mov    %r10,0x188(%rsp)
          │    0x00007f97cc641a45:   vmovq  %xmm0,%r10
   0.15%  │    0x00007f97cc641a4a:   sar    $0x10,%r10
   0.08%  │    0x00007f97cc641a4e:   mov    %r10,0x190(%rsp)
   0.14%  │    0x00007f97cc641a56:   vmovq  %xmm0,%r10
          │    0x00007f97cc641a5b:   sar    $0x14,%r10
   0.24%  │    0x00007f97cc641a5f:   mov    %r10,0x198(%rsp)
   0.13%  │    0x00007f97cc641a67:   vmovq  %xmm0,%r10
   0.04%  │    0x00007f97cc641a6c:   shl    $0xc,%r10
          │    0x00007f97cc641a70:   vmovq  %xmm0,%r8
   0.02%  │    0x00007f97cc641a75:   shl    $0x8,%r8
   0.06%  │    0x00007f97cc641a79:   and    $0xfffffff,%r10
   0.04%  │    0x00007f97cc641a80:   and    $0xfffffff,%r8
          │    0x00007f97cc641a87:   add    %r8,%rdi
   0.03%  │    0x00007f97cc641a8a:   vmovq  %xmm0,%r8
   0.04%  │    0x00007f97cc641a8f:   sar    $0x4,%r8
   0.04%  │    0x00007f97cc641a93:   mov    %r8,0xc0(%rsp)
          │    0x00007f97cc641a9b:   mov    0x1e0(%rsp),%r8
   0.05%  │    0x00007f97cc641aa3:   shl    $0xc,%r8
   0.05%  │    0x00007f97cc641aa7:   and    $0xfffffff,%r8
   0.06%  │    0x00007f97cc641aae:   mov    0x178(%rsp),%rbx
          │    0x00007f97cc641ab6:   sub    %r8,%rbx
   0.02%  │    0x00007f97cc641ab9:   vmovq  %rbx,%xmm9
   0.06%  │    0x00007f97cc641abe:   mov    0x1d8(%rsp),%r8
   0.05%  │    0x00007f97cc641ac6:   shl    $0x14,%r8
          │    0x00007f97cc641aca:   and    $0xfffffff,%r8
   0.03%  │    0x00007f97cc641ad1:   add    %r8,%r11
   0.06%  │    0x00007f97cc641ad4:   mov    %r11,%rsi
   0.05%  │    0x00007f97cc641ad7:   mov    0x1d8(%rsp),%r11
          │    0x00007f97cc641adf:   shl    $0x18,%r11
   0.03%  │    0x00007f97cc641ae3:   and    $0xfffffff,%r11
   0.07%  │    0x00007f97cc641aea:   add    %r11,%r9
   0.04%  │    0x00007f97cc641aed:   mov    0x1d8(%rsp),%r11
          │    0x00007f97cc641af5:   sar    $0x8,%r11
   0.03%  │    0x00007f97cc641af9:   add    %r11,%r9
   0.07%  │    0x00007f97cc641afc:   mov    0x1d8(%rsp),%r11
   0.05%  │    0x00007f97cc641b04:   sar    $0x4,%r11
          │    0x00007f97cc641b08:   lea    (%rcx,%r11,1),%r8
   0.02%  │    0x00007f97cc641b0c:   vmovq  %r8,%xmm1
   0.07%  │    0x00007f97cc641b11:   mov    0x1d8(%rsp),%r11
   0.04%  │    0x00007f97cc641b19:   shl    $0x8,%r11
          │    0x00007f97cc641b1d:   and    $0xfffffff,%r11
   0.02%  │    0x00007f97cc641b24:   mov    0x168(%rsp),%r8
   0.07%  │    0x00007f97cc641b2c:   add    %r11,%r8
   0.03%  │    0x00007f97cc641b2f:   mov    %r8,%r13
          │    0x00007f97cc641b32:   vmovq  %xmm1,%r11                   ;   {no_reloc}
   0.04%  │    0x00007f97cc641b37:   sar    $0x8,%r11
   0.13%  │    0x00007f97cc641b3b:   mov    %r11,0x168(%rsp)
   0.09%  │    0x00007f97cc641b43:   vmovq  %xmm1,%r11
          │    0x00007f97cc641b48:   shl    $0x18,%r11
   0.24%  │    0x00007f97cc641b4c:   and    $0xfffffff,%r11
   0.12%  │    0x00007f97cc641b53:   mov    %r11,0x178(%rsp)
   0.14%  │    0x00007f97cc641b5b:   vmovq  %xmm1,%r11
          │    0x00007f97cc641b60:   shl    $0x14,%r11
          │    0x00007f97cc641b64:   and    $0xfffffff,%r11
   0.05%  │    0x00007f97cc641b6b:   vmovq  %xmm1,%r8
   0.09%  │    0x00007f97cc641b70:   sar    $0x10,%r8
          │    0x00007f97cc641b74:   vmovq  %xmm1,%rcx
          │    0x00007f97cc641b79:   sar    $0x14,%rcx
   0.05%  │    0x00007f97cc641b7d:   vmovq  %xmm1,%rbx
   0.08%  │    0x00007f97cc641b82:   shl    $0xc,%rbx
          │    0x00007f97cc641b86:   and    $0xfffffff,%rbx
          │    0x00007f97cc641b8d:   sub    %rbx,%rdi
   0.04%  │    0x00007f97cc641b90:   add    %rcx,%rdi
   0.10%  │    0x00007f97cc641b93:   vmovq  %rdi,%xmm3
   0.00%  │    0x00007f97cc641b98:   vmovq  %xmm1,%rcx
          │    0x00007f97cc641b9d:   shl    $0x8,%rcx
   0.04%  │    0x00007f97cc641ba1:   and    $0xfffffff,%rcx
   0.09%  │    0x00007f97cc641ba8:   add    %rcx,%rbp
   0.00%  │    0x00007f97cc641bab:   vmovq  %xmm1,%rcx
          │    0x00007f97cc641bb0:   sar    $0x4,%rcx
   0.05%  │    0x00007f97cc641bb4:   mov    %rcx,0xc8(%rsp)
   0.10%  │    0x00007f97cc641bbc:   mov    0x1d8(%rsp),%rcx
   0.00%  │    0x00007f97cc641bc4:   shl    $0xc,%rcx
          │    0x00007f97cc641bc8:   and    $0xfffffff,%rcx
   0.04%  │    0x00007f97cc641bcf:   sub    %rcx,%rdx
   0.07%  │    0x00007f97cc641bd2:   mov    0x1d8(%rsp),%rcx
   0.00%  │    0x00007f97cc641bda:   sar    $0x14,%rcx
          │    0x00007f97cc641bde:   add    %rcx,%rdx
   0.04%  │    0x00007f97cc641be1:   vmovq  %rdx,%xmm4
   0.07%  │    0x00007f97cc641be6:   mov    0x1d8(%rsp),%rcx
   0.00%  │    0x00007f97cc641bee:   sar    $0x10,%rcx
          │    0x00007f97cc641bf2:   mov    %rcx,0xd0(%rsp)
   0.03%  │    0x00007f97cc641bfa:   mov    0x1d0(%rsp),%rcx
   0.07%  │    0x00007f97cc641c02:   shl    $0x18,%rcx
          │    0x00007f97cc641c06:   and    $0xfffffff,%rcx
          │    0x00007f97cc641c0d:   lea    (%rsi,%rcx,1),%rbx
   0.04%  │    0x00007f97cc641c11:   mov    0x1d0(%rsp),%rcx
   0.07%  │    0x00007f97cc641c19:   sar    $0x8,%rcx
   0.00%  │    0x00007f97cc641c1d:   add    %rcx,%rbx
          │    0x00007f97cc641c20:   vmovq  %rbx,%xmm5
   0.04%  │    0x00007f97cc641c25:   mov    0x1d0(%rsp),%rcx
   0.08%  │    0x00007f97cc641c2d:   sar    $0x4,%rcx
          │    0x00007f97cc641c31:   add    %rcx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@213 (line 102)
          │                                                              ;   {no_reloc}
          │    0x00007f97cc641c34:   vmovq  %r9,%xmm2
   0.05%  │    0x00007f97cc641c39:   mov    0x1d0(%rsp),%r9
   0.07%  │    0x00007f97cc641c41:   shl    $0x8,%r9
   0.00%  │    0x00007f97cc641c45:   and    $0xfffffff,%r9
          │    0x00007f97cc641c4c:   mov    0x160(%rsp),%rcx
   0.03%  │    0x00007f97cc641c54:   add    %r9,%rcx
   0.11%  │    0x00007f97cc641c57:   vmovq  %rcx,%xmm6
   0.00%  │    0x00007f97cc641c5c:   vmovq  %xmm2,%r9
   0.00%  │    0x00007f97cc641c61:   sar    $0x8,%r9
   0.43%  │    0x00007f97cc641c65:   vmovq  %xmm2,%rcx
   0.05%  │    0x00007f97cc641c6a:   shl    $0x18,%rcx
   0.01%  │    0x00007f97cc641c6e:   and    $0xfffffff,%rcx
   0.00%  │    0x00007f97cc641c75:   vmovq  %xmm2,%rbx
   0.10%  │    0x00007f97cc641c7a:   shl    $0x14,%rbx
   0.20%  │    0x00007f97cc641c7e:   and    $0xfffffff,%rbx
   0.03%  │    0x00007f97cc641c85:   vmovq  %xmm2,%rdi
   0.00%  │    0x00007f97cc641c8a:   sar    $0x10,%rdi
   0.27%  │    0x00007f97cc641c8e:   vmovq  %xmm3,%rdx
   0.02%  │    0x00007f97cc641c93:   sub    %rdi,%rdx
   0.03%  │    0x00007f97cc641c96:   vmovq  %rdx,%xmm3
   0.03%  │    0x00007f97cc641c9b:   vmovq  %xmm2,%rdi
   0.07%  │    0x00007f97cc641ca0:   sar    $0x14,%rdi
   0.00%  │    0x00007f97cc641ca4:   vmovq  %xmm2,%rdx
   0.04%  │    0x00007f97cc641ca9:   shl    $0xc,%rdx
   0.02%  │    0x00007f97cc641cad:   and    $0xfffffff,%rdx
   0.07%  │    0x00007f97cc641cb4:   mov    %rbp,%rsi
   0.01%  │    0x00007f97cc641cb7:   sub    %rdx,%rsi
   0.03%  │    0x00007f97cc641cba:   add    %rdi,%rsi
   0.01%  │    0x00007f97cc641cbd:   vmovq  %rsi,%xmm10
   0.07%  │    0x00007f97cc641cc2:   vmovq  %xmm2,%rdi
   0.01%  │    0x00007f97cc641cc7:   shl    $0x8,%rdi
   0.02%  │    0x00007f97cc641ccb:   and    $0xfffffff,%rdi
   0.01%  │    0x00007f97cc641cd2:   lea    (%rax,%rdi,1),%rdx
   0.09%  │    0x00007f97cc641cd6:   vmovq  %rdx,%xmm11
   0.00%  │    0x00007f97cc641cdb:   vmovq  %xmm2,%rdi
   0.04%  │    0x00007f97cc641ce0:   sar    $0x4,%rdi
   0.00%  │    0x00007f97cc641ce4:   mov    0x1d0(%rsp),%rdx
   0.08%  │    0x00007f97cc641cec:   shl    $0xc,%rdx
   0.01%  │    0x00007f97cc641cf0:   and    $0xfffffff,%rdx
   0.04%  │    0x00007f97cc641cf7:   mov    %r13,%rsi
   0.01%  │    0x00007f97cc641cfa:   sub    %rdx,%rsi
   0.08%  │    0x00007f97cc641cfd:   mov    0x1d0(%rsp),%rdx
   0.01%  │    0x00007f97cc641d05:   sar    $0x14,%rdx
   0.03%  │    0x00007f97cc641d09:   add    %rdx,%rsi
   0.01%  │    0x00007f97cc641d0c:   vmovq  %rsi,%xmm12
   0.06%  │    0x00007f97cc641d11:   mov    0x1d0(%rsp),%rdx
   0.01%  │    0x00007f97cc641d19:   sar    $0x10,%rdx
   0.04%  │    0x00007f97cc641d1d:   vmovq  %xmm4,%rsi
   0.01%  │    0x00007f97cc641d22:   sub    %rdx,%rsi
   0.09%  │    0x00007f97cc641d25:   vmovq  %rsi,%xmm4
   0.00%  │    0x00007f97cc641d2a:   mov    0x1d0(%rsp),%rdx             ;   {no_reloc}
   0.03%  │    0x00007f97cc641d32:   shl    $0x14,%rdx
   0.01%  │    0x00007f97cc641d36:   and    $0xfffffff,%rdx
   0.07%  │    0x00007f97cc641d3d:   mov    %rdx,0x160(%rsp)
   0.00%  │    0x00007f97cc641d45:   mov    0x1c8(%rsp),%rdx
   0.03%  │    0x00007f97cc641d4d:   sar    $0x4,%rdx
   0.02%  │    0x00007f97cc641d51:   vmovq  %xmm5,%rsi
   0.07%  │    0x00007f97cc641d56:   add    %rdx,%rsi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@308 (line 111)
   0.01%  │    0x00007f97cc641d59:   vmovq  %rsi,%xmm5
   0.05%  │    0x00007f97cc641d5e:   mov    0x1c8(%rsp),%rdx
   0.01%  │    0x00007f97cc641d66:   shl    $0x8,%rdx
   0.08%  │    0x00007f97cc641d6a:   and    $0xfffffff,%rdx
   0.01%  │    0x00007f97cc641d71:   mov    0x158(%rsp),%rsi
   0.03%  │    0x00007f97cc641d79:   add    %rdx,%rsi
   0.01%  │    0x00007f97cc641d7c:   vmovq  %rsi,%xmm13
   0.09%  │    0x00007f97cc641d81:   vmovq  %xmm5,%rdx
   0.01%  │    0x00007f97cc641d86:   sar    $0x8,%rdx
   0.34%  │    0x00007f97cc641d8a:   vmovq  %xmm5,%rsi
   0.01%  │    0x00007f97cc641d8f:   shl    $0x18,%rsi
   0.12%  │    0x00007f97cc641d93:   and    $0xfffffff,%rsi
   0.00%  │    0x00007f97cc641d9a:   vmovq  %xmm5,%rax
   0.06%  │    0x00007f97cc641d9f:   shl    $0x14,%rax
   0.05%  │    0x00007f97cc641da3:   and    $0xfffffff,%rax
   0.13%  │    0x00007f97cc641da9:   vmovq  %xmm3,%rbp
   0.01%  │    0x00007f97cc641dae:   add    %rax,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@1177 (line 193)
   0.05%  │    0x00007f97cc641db1:   vmovq  %rbp,%xmm14
   0.03%  │    0x00007f97cc641db6:   vmovq  %xmm5,%rax
   0.10%  │    0x00007f97cc641dbb:   sar    $0x10,%rax
   0.02%  │    0x00007f97cc641dbf:   vmovq  %xmm10,%rbp
   0.07%  │    0x00007f97cc641dc4:   sub    %rax,%rbp                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@1211 (line 196)
   0.02%  │    0x00007f97cc641dc7:   vmovq  %rbp,%xmm10
   0.06%  │    0x00007f97cc641dcc:   vmovq  %xmm5,%rax
   0.02%  │    0x00007f97cc641dd1:   sar    $0x14,%rax
   0.06%  │    0x00007f97cc641dd5:   vmovq  %xmm5,%rbp
   0.01%  │    0x00007f97cc641dda:   shl    $0xc,%rbp
   0.06%  │    0x00007f97cc641dde:   and    $0xfffffff,%rbp
   0.00%  │    0x00007f97cc641de5:   vmovq  %xmm11,%r13
   0.04%  │    0x00007f97cc641dea:   sub    %rbp,%r13
   0.02%  │    0x00007f97cc641ded:   add    %rax,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@1233 (line 198)
   0.08%  │    0x00007f97cc641df0:   vmovq  %r13,%xmm11
   0.01%  │    0x00007f97cc641df5:   vmovq  %xmm5,%rbp
   0.06%  │    0x00007f97cc641dfa:   shl    $0x8,%rbp
   0.01%  │    0x00007f97cc641dfe:   vmovq  %xmm5,%rax
   0.06%  │    0x00007f97cc641e03:   sar    $0x4,%rax
   0.03%  │    0x00007f97cc641e07:   mov    %rax,%r13
   0.04%  │    0x00007f97cc641e0a:   and    $0xfffffff,%rbp
   0.01%  │    0x00007f97cc641e11:   lea    (%r14,%rbp,1),%rax
   0.06%  │    0x00007f97cc641e15:   vmovq  %rax,%xmm15
   0.02%  │    0x00007f97cc641e1a:   mov    0x1c8(%rsp),%rax
   0.05%  │    0x00007f97cc641e22:   shl    $0xc,%rax
   0.01%  │    0x00007f97cc641e26:   and    $0xfffffff,%rax
   0.07%  │    0x00007f97cc641e2c:   vmovq  %xmm6,%rbp                   ;   {no_reloc}
   0.03%  │    0x00007f97cc641e31:   sub    %rax,%rbp
   0.05%  │    0x00007f97cc641e34:   mov    0x1c8(%rsp),%rax
   0.01%  │    0x00007f97cc641e3c:   sar    $0x14,%rax
   0.05%  │    0x00007f97cc641e40:   add    %rax,%rbp
   0.02%  │    0x00007f97cc641e43:   mov    %rbp,0x158(%rsp)
   0.04%  │    0x00007f97cc641e4b:   mov    0x1c8(%rsp),%rax
   0.00%  │    0x00007f97cc641e53:   sar    $0x10,%rax
   0.06%  │    0x00007f97cc641e57:   vmovq  %xmm12,%rbp
   0.02%  │    0x00007f97cc641e5c:   sub    %rax,%rbp
   0.04%  │    0x00007f97cc641e5f:   vmovq  %rbp,%xmm12
   0.01%  │    0x00007f97cc641e64:   mov    0x1c8(%rsp),%rax
   0.05%  │    0x00007f97cc641e6c:   shl    $0x14,%rax
   0.01%  │    0x00007f97cc641e70:   and    $0xfffffff,%rax
   0.04%  │    0x00007f97cc641e76:   vmovq  %xmm4,%rbp
   0.02%  │    0x00007f97cc641e7b:   add    %rax,%rbp
   0.06%  │    0x00007f97cc641e7e:   mov    %rbp,0xd8(%rsp)
   0.02%  │    0x00007f97cc641e86:   mov    0x1c8(%rsp),%rax
   0.04%  │    0x00007f97cc641e8e:   shl    $0x18,%rax
   0.01%  │    0x00007f97cc641e92:   and    $0xfffffff,%rax
   0.06%  │    0x00007f97cc641e98:   mov    %rax,0xe0(%rsp)
   0.02%  │    0x00007f97cc641ea0:   mov    0x1c8(%rsp),%rax
   0.04%  │    0x00007f97cc641ea8:   sar    $0x8,%rax
   0.01%  │    0x00007f97cc641eac:   mov    %rax,0xe8(%rsp)
   0.03%  │    0x00007f97cc641eb4:   mov    0x1a0(%rsp),%rax
   0.02%  │    0x00007f97cc641ebc:   shl    $0x8,%rax
   0.03%  │    0x00007f97cc641ec0:   and    $0xfffffff,%rax
   0.01%  │    0x00007f97cc641ec6:   mov    0x130(%rsp),%rbp
   0.05%  │    0x00007f97cc641ece:   add    %rax,%rbp
   0.01%  │    0x00007f97cc641ed1:   sub    %r10,%rbp
   0.04%  │    0x00007f97cc641ed4:   add    0x198(%rsp),%rbp
   0.01%  │    0x00007f97cc641edc:   sub    %r8,%rbp
   0.07%  │    0x00007f97cc641edf:   add    %rbx,%rbp
   0.01%  │    0x00007f97cc641ee2:   add    %rsi,%rbp
   0.05%  │    0x00007f97cc641ee5:   add    %rdx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@1187 (line 194)
   0.02%  │    0x00007f97cc641ee8:   vmovq  %rbp,%xmm3
   0.05%  │    0x00007f97cc641eed:   mov    0x1a0(%rsp),%r10
   0.00%  │    0x00007f97cc641ef5:   shl    $0xc,%r10
   0.05%  │    0x00007f97cc641ef9:   and    $0xfffffff,%r10
   0.01%  │    0x00007f97cc641f00:   mov    0x1a0(%rsp),%r8
   0.07%  │    0x00007f97cc641f08:   sar    $0x14,%r8
   0.01%  │    0x00007f97cc641f0c:   mov    0x1a0(%rsp),%rax
   0.04%  │    0x00007f97cc641f14:   sar    $0x10,%rax
   0.01%  │    0x00007f97cc641f18:   mov    0x1a0(%rsp),%rbx
   0.06%  │    0x00007f97cc641f20:   shl    $0x14,%rbx
   0.01%  │    0x00007f97cc641f24:   and    $0xfffffff,%rbx
   0.05%  │    0x00007f97cc641f2b:   mov    0x1a0(%rsp),%rdx             ;   {no_reloc}
   0.01%  │    0x00007f97cc641f33:   shl    $0x18,%rdx
   0.07%  │    0x00007f97cc641f37:   and    $0xfffffff,%rdx
   0.01%  │    0x00007f97cc641f3e:   mov    %rdx,0x130(%rsp)
   0.06%  │    0x00007f97cc641f46:   mov    0x1a0(%rsp),%rdx
   0.01%  │    0x00007f97cc641f4e:   sar    $0x8,%rdx
   0.07%  │    0x00007f97cc641f52:   mov    %rdx,0x198(%rsp)
   0.02%  │    0x00007f97cc641f5a:   mov    0x1a0(%rsp),%rdx
   0.04%  │    0x00007f97cc641f62:   sar    $0x4,%rdx
   0.02%  │    0x00007f97cc641f66:   mov    %rdx,0xf0(%rsp)
   0.06%  │    0x00007f97cc641f6e:   mov    0x1a8(%rsp),%rdx
   0.02%  │    0x00007f97cc641f76:   shl    $0x8,%rdx
   0.04%  │    0x00007f97cc641f7a:   and    $0xfffffff,%rdx
   0.01%  │    0x00007f97cc641f81:   mov    0x138(%rsp),%rsi
   0.06%  │    0x00007f97cc641f89:   add    %rdx,%rsi
   0.01%  │    0x00007f97cc641f8c:   sub    %r10,%rsi
   0.04%  │    0x00007f97cc641f8f:   add    %r8,%rsi
   0.00%  │    0x00007f97cc641f92:   sub    0x190(%rsp),%rsi
   0.04%  │    0x00007f97cc641f9a:   add    %r11,%rsi
   0.01%  │    0x00007f97cc641f9d:   add    %rcx,%rsi
   0.04%  │    0x00007f97cc641fa0:   add    %r9,%rsi
   0.01%  │    0x00007f97cc641fa3:   add    %r13,%rsi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@1163 (line 192)
   0.07%  │    0x00007f97cc641fa6:   vmovq  %rsi,%xmm4
   0.02%  │    0x00007f97cc641fab:   mov    0x1a8(%rsp),%r10
   0.05%  │    0x00007f97cc641fb3:   shl    $0xc,%r10
   0.01%  │    0x00007f97cc641fb7:   and    $0xfffffff,%r10
   0.06%  │    0x00007f97cc641fbe:   mov    0x1a8(%rsp),%r11
   0.01%  │    0x00007f97cc641fc6:   sar    $0x14,%r11
   0.04%  │    0x00007f97cc641fca:   mov    0x1a8(%rsp),%rdx
   0.01%  │    0x00007f97cc641fd2:   sar    $0x10,%rdx
   0.07%  │    0x00007f97cc641fd6:   mov    0x1a8(%rsp),%r8
   0.02%  │    0x00007f97cc641fde:   shl    $0x14,%r8
   0.04%  │    0x00007f97cc641fe2:   and    $0xfffffff,%r8
   0.01%  │    0x00007f97cc641fe9:   mov    %r8,0x138(%rsp)
   0.06%  │    0x00007f97cc641ff1:   mov    0x1a8(%rsp),%r8
   0.02%  │    0x00007f97cc641ff9:   shl    $0x18,%r8
   0.06%  │    0x00007f97cc641ffd:   and    $0xfffffff,%r8
   0.00%  │    0x00007f97cc642004:   mov    %r8,0x190(%rsp)
   0.06%  │    0x00007f97cc64200c:   mov    0x1a8(%rsp),%r8
   0.01%  │    0x00007f97cc642014:   sar    $0x8,%r8
   0.07%  │    0x00007f97cc642018:   mov    %r8,0xf8(%rsp)
   0.01%  │    0x00007f97cc642020:   mov    0x1a8(%rsp),%r8
   0.04%  │    0x00007f97cc642028:   sar    $0x4,%r8
   0.01%  │    0x00007f97cc64202c:   mov    %r8,0x100(%rsp)              ;   {no_reloc}
   0.04%  │    0x00007f97cc642034:   mov    0x1b0(%rsp),%r8
   0.01%  │    0x00007f97cc64203c:   shl    $0x8,%r8
   0.08%  │    0x00007f97cc642040:   and    $0xfffffff,%r8
   0.02%  │    0x00007f97cc642047:   mov    0x140(%rsp),%r9
   0.04%  │    0x00007f97cc64204f:   add    %r8,%r9
   0.01%  │    0x00007f97cc642052:   sub    %r10,%r9
   0.08%  │    0x00007f97cc642055:   add    %r11,%r9
   0.01%  │    0x00007f97cc642058:   sub    %rax,%r9
   0.04%  │    0x00007f97cc64205b:   add    0x188(%rsp),%r9
   0.01%  │    0x00007f97cc642063:   add    0x178(%rsp),%r9
   0.04%  │    0x00007f97cc64206b:   add    0x168(%rsp),%r9
   0.01%  │    0x00007f97cc642073:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@1068 (line 183)
   0.05%  │    0x00007f97cc642076:   vmovq  %r9,%xmm5
   0.03%  │    0x00007f97cc64207b:   mov    0x1b0(%rsp),%rcx
   0.06%  │    0x00007f97cc642083:   shl    $0xc,%rcx
   0.01%  │    0x00007f97cc642087:   and    $0xfffffff,%rcx
   0.04%  │    0x00007f97cc64208e:   mov    0x1b0(%rsp),%rdi
   0.03%  │    0x00007f97cc642096:   sar    $0x14,%rdi
   0.07%  │    0x00007f97cc64209a:   mov    0x1b0(%rsp),%r10
   0.01%  │    0x00007f97cc6420a2:   sar    $0x10,%r10
   0.05%  │    0x00007f97cc6420a6:   mov    0x1b0(%rsp),%r11
   0.02%  │    0x00007f97cc6420ae:   shl    $0x14,%r11
   0.04%  │    0x00007f97cc6420b2:   and    $0xfffffff,%r11
   0.01%  │    0x00007f97cc6420b9:   mov    0x1b0(%rsp),%r8
   0.05%  │    0x00007f97cc6420c1:   shl    $0x18,%r8
   0.02%  │    0x00007f97cc6420c5:   and    $0xfffffff,%r8
   0.05%  │    0x00007f97cc6420cc:   mov    0x1b0(%rsp),%r9
   0.01%  │    0x00007f97cc6420d4:   sar    $0x8,%r9
   0.04%  │    0x00007f97cc6420d8:   mov    0x1b0(%rsp),%rsi
   0.01%  │    0x00007f97cc6420e0:   sar    $0x4,%rsi
   0.07%  │    0x00007f97cc6420e4:   mov    %rsi,0x140(%rsp)
          │    0x00007f97cc6420ec:   mov    0x1b8(%rsp),%rsi
   0.07%  │    0x00007f97cc6420f4:   shl    $0x8,%rsi
   0.02%  │    0x00007f97cc6420f8:   and    $0xfffffff,%rsi
   0.07%  │    0x00007f97cc6420ff:   mov    0x148(%rsp),%rax
   0.02%  │    0x00007f97cc642107:   add    %rsi,%rax
   0.03%  │    0x00007f97cc64210a:   sub    %rcx,%rax
   0.02%  │    0x00007f97cc64210d:   add    %rdi,%rax
   0.06%  │    0x00007f97cc642110:   sub    %rdx,%rax
   0.02%  │    0x00007f97cc642113:   add    %rbx,%rax
   0.10%  │    0x00007f97cc642116:   add    0x170(%rsp),%rax
   0.01%  │    0x00007f97cc64211e:   add    0x180(%rsp),%rax
   0.07%  │    0x00007f97cc642126:   add    0xc8(%rsp),%rax              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@973 (line 174)
          │                                                              ;   {no_reloc}
   0.03%  │    0x00007f97cc64212e:   vmovq  %rax,%xmm6
   0.14%  │    0x00007f97cc642133:   mov    0x1b8(%rsp),%rcx
   0.00%  │    0x00007f97cc64213b:   shl    $0xc,%rcx
   0.03%  │    0x00007f97cc64213f:   and    $0xfffffff,%rcx
   0.01%  │    0x00007f97cc642146:   mov    0x1b8(%rsp),%rbx
   0.07%  │    0x00007f97cc64214e:   sar    $0x14,%rbx
   0.00%  │    0x00007f97cc642152:   mov    0x1b8(%rsp),%rdi
   0.05%  │    0x00007f97cc64215a:   sar    $0x10,%rdi
   0.00%  │    0x00007f97cc64215e:   mov    0x1b8(%rsp),%rdx
   0.09%  │    0x00007f97cc642166:   shl    $0x14,%rdx
   0.01%  │    0x00007f97cc64216a:   and    $0xfffffff,%rdx
   0.05%  │    0x00007f97cc642171:   mov    0x1b8(%rsp),%rsi
   0.01%  │    0x00007f97cc642179:   shl    $0x18,%rsi
   0.06%  │    0x00007f97cc64217d:   and    $0xfffffff,%rsi
   0.00%  │    0x00007f97cc642184:   mov    0x1b8(%rsp),%rax
   0.04%  │    0x00007f97cc64218c:   sar    $0x8,%rax
   0.01%  │    0x00007f97cc642190:   mov    0x1b8(%rsp),%rbp
   0.06%  │    0x00007f97cc642198:   sar    $0x4,%rbp
   0.00%  │    0x00007f97cc64219c:   mov    0x1c0(%rsp),%r13
   0.06%  │    0x00007f97cc6421a4:   shl    $0x8,%r13
   0.01%  │    0x00007f97cc6421a8:   and    $0xfffffff,%r13
   0.06%  │    0x00007f97cc6421af:   mov    0x150(%rsp),%r14
   0.00%  │    0x00007f97cc6421b7:   add    %r13,%r14
   0.07%  │    0x00007f97cc6421ba:   sub    %rcx,%r14
   0.01%  │    0x00007f97cc6421bd:   add    %rbx,%r14
   0.08%  │    0x00007f97cc6421c0:   sub    %r10,%r14
   0.01%  │    0x00007f97cc6421c3:   add    0x138(%rsp),%r14
   0.09%  │    0x00007f97cc6421cb:   add    0x130(%rsp),%r14
   0.06%  │    0x00007f97cc6421d3:   add    0x198(%rsp),%r14
   0.06%  │    0x00007f97cc6421db:   add    0xc0(%rsp),%r14              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@878 (line 165)
   0.10%  │    0x00007f97cc6421e3:   mov    0x1c0(%rsp),%r10
   0.04%  │    0x00007f97cc6421eb:   shl    $0xc,%r10
   0.00%  │    0x00007f97cc6421ef:   and    $0xfffffff,%r10
          │    0x00007f97cc6421f6:   vmovq  %xmm13,%rcx
   0.08%  │    0x00007f97cc6421fb:   sub    %r10,%rcx
   0.04%  │    0x00007f97cc6421fe:   mov    0x1c0(%rsp),%r10
   0.01%  │    0x00007f97cc642206:   sar    $0x14,%r10
   0.00%  │    0x00007f97cc64220a:   add    %r10,%rcx
   0.08%  │    0x00007f97cc64220d:   sub    %rdi,%rcx
   0.04%  │    0x00007f97cc642210:   add    %r11,%rcx
   0.03%  │    0x00007f97cc642213:   add    0x190(%rsp),%rcx
   0.04%  │    0x00007f97cc64221b:   add    0xf8(%rsp),%rcx
   0.05%  │    0x00007f97cc642223:   add    0xf0(%rsp),%rcx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@783 (line 156)
   0.09%  │    0x00007f97cc64222b:   mov    0x1c0(%rsp),%r10             ;   {no_reloc}
   0.01%  │    0x00007f97cc642233:   sar    $0x10,%r10
   0.00%  │    0x00007f97cc642237:   mov    0x158(%rsp),%r11
   0.01%  │    0x00007f97cc64223f:   sub    %r10,%r11
   0.11%  │    0x00007f97cc642242:   add    %rdx,%r11
   0.00%  │    0x00007f97cc642245:   add    %r8,%r11
   0.01%  │    0x00007f97cc642248:   add    %r9,%r11
   0.04%  │    0x00007f97cc64224b:   add    0x100(%rsp),%r11             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@688 (line 147)
   0.13%  │    0x00007f97cc642253:   mov    %r11,%rbx
   0.00%  │    0x00007f97cc642256:   mov    0x1c0(%rsp),%r10
   0.01%  │    0x00007f97cc64225e:   shl    $0x14,%r10
   0.01%  │    0x00007f97cc642262:   and    $0xfffffff,%r10
   0.13%  │    0x00007f97cc642269:   vmovq  %xmm12,%r11
   0.01%  │    0x00007f97cc64226e:   add    %r10,%r11
          │    0x00007f97cc642271:   add    %rsi,%r11
   0.01%  │    0x00007f97cc642274:   add    %rax,%r11
   0.12%  │    0x00007f97cc642277:   add    0x140(%rsp),%r11             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@593 (line 138)
   0.02%  │    0x00007f97cc64227f:   mov    %r11,%rdi
   0.00%  │    0x00007f97cc642282:   mov    0x1c0(%rsp),%r10
   0.01%  │    0x00007f97cc64228a:   shl    $0x18,%r10
   0.08%  │    0x00007f97cc64228e:   and    $0xfffffff,%r10
   0.02%  │    0x00007f97cc642295:   mov    0xd8(%rsp),%r8
   0.00%  │    0x00007f97cc64229d:   add    %r10,%r8
   0.01%  │    0x00007f97cc6422a0:   mov    0x1c0(%rsp),%r10
   0.11%  │    0x00007f97cc6422a8:   sar    $0x8,%r10
   0.02%  │    0x00007f97cc6422ac:   add    %r10,%r8
          │    0x00007f97cc6422af:   add    %rbp,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@498 (line 129)
   0.02%  │    0x00007f97cc6422b2:   mov    0x1c0(%rsp),%r10
   0.07%  │    0x00007f97cc6422ba:   sar    $0x4,%r10
   0.02%  │    0x00007f97cc6422be:   mov    0x1e0(%rsp),%r11
   0.00%  │    0x00007f97cc6422c6:   sar    $0x14,%r11
   0.02%  │    0x00007f97cc6422ca:   vmovq  %xmm9,%r9
   0.08%  │    0x00007f97cc6422cf:   add    %r11,%r9
   0.01%  │    0x00007f97cc6422d2:   sub    0xd0(%rsp),%r9
   0.01%  │    0x00007f97cc6422da:   add    0x160(%rsp),%r9
   0.05%  │    0x00007f97cc6422e2:   add    0xe0(%rsp),%r9
   0.10%  │    0x00007f97cc6422ea:   add    0xe8(%rsp),%r9
   0.08%  │    0x00007f97cc6422f2:   add    %r10,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@403 (line 120)
   0.09%  │    0x00007f97cc6422f5:   vmovsd %xmm3,(%rsp)
   0.01%  │    0x00007f97cc6422fa:   vmovsd %xmm4,0x8(%rsp)
   0.04%  │    0x00007f97cc642300:   vmovsd %xmm5,0x10(%rsp)
   0.05%  │    0x00007f97cc642306:   vmovsd %xmm6,0x18(%rsp)
   0.07%  │    0x00007f97cc64230c:   mov    %r14,0x20(%rsp)
   0.15%  │    0x00007f97cc642311:   mov    %rcx,0x28(%rsp)
   0.11%  │    0x00007f97cc642316:   mov    %rbx,0x30(%rsp)
   0.09%  │    0x00007f97cc64231b:   mov    %rdi,0x38(%rsp)
   0.03%  │    0x00007f97cc642320:   mov    %r8,0x40(%rsp)
   0.06%  │    0x00007f97cc642325:   mov    %r9,0x48(%rsp)
   0.14%  │    0x00007f97cc64232a:   xor    %r10d,%r10d                  ;   {no_reloc}
   0.01%  │    0x00007f97cc64232d:   mov    %r10,0x50(%rsp)
   0.03%  │    0x00007f97cc642332:   vmovsd %xmm2,0x58(%rsp)
   0.04%  │    0x00007f97cc642338:   vmovsd %xmm1,0x60(%rsp)
   0.08%  │    0x00007f97cc64233e:   vmovsd %xmm0,0x68(%rsp)
   0.11%  │    0x00007f97cc642344:   mov    0x1a0(%rsp),%r10
          │    0x00007f97cc64234c:   mov    %r10,0x70(%rsp)
   0.14%  │    0x00007f97cc642351:   mov    0x1a8(%rsp),%r10
   0.01%  │    0x00007f97cc642359:   mov    %r10,0x78(%rsp)
   0.12%  │    0x00007f97cc64235e:   mov    0x1b0(%rsp),%r10
   0.01%  │    0x00007f97cc642366:   mov    %r10,0x80(%rsp)
   0.13%  │    0x00007f97cc64236e:   mov    0x1b8(%rsp),%r10
   0.01%  │    0x00007f97cc642376:   mov    %r10,0x88(%rsp)
   0.10%  │    0x00007f97cc64237e:   mov    0x1c0(%rsp),%r10
          │    0x00007f97cc642386:   mov    %r10,0x90(%rsp)
   0.14%  │    0x00007f97cc64238e:   mov    0x1c8(%rsp),%r10
   0.01%  │    0x00007f97cc642396:   mov    %r10,0x98(%rsp)
   0.12%  │    0x00007f97cc64239e:   mov    0x1d0(%rsp),%r10
   0.00%  │    0x00007f97cc6423a6:   mov    %r10,0xa0(%rsp)
   0.13%  │    0x00007f97cc6423ae:   mov    0x1d8(%rsp),%r10
   0.01%  │    0x00007f97cc6423b6:   mov    %r10,0xa8(%rsp)
   0.08%  │    0x00007f97cc6423be:   mov    0x1e0(%rsp),%r10
          │    0x00007f97cc6423c6:   mov    %r10,0xb0(%rsp)
   0.10%  │    0x00007f97cc6423ce:   xor    %r10d,%r10d
   0.01%  │    0x00007f97cc6423d1:   mov    %r10,0xb8(%rsp)
   0.11%  │    0x00007f97cc6423d9:   vmovq  %xmm7,%rsi
   0.00%  │    0x00007f97cc6423de:   vmovq  %xmm8,%rdx
          │    0x00007f97cc6423e3:   vmovq  %xmm15,%rcx
   0.01%  │    0x00007f97cc6423e8:   vmovq  %xmm11,%r8
   0.12%  │    0x00007f97cc6423ed:   vmovq  %xmm10,%r9
          │    0x00007f97cc6423f2:   vmovq  %xmm14,%rdi
   0.00%  │    0x00007f97cc6423f7:   call   0x00007f97cc0c4380           ; ImmutableOopMap {}
          │                                                              ;*invokevirtual carryReduce0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@1296 (line 201)
          │                                                              ;   {optimized virtual_call}
   0.04%  │    0x00007f97cc6423fc:   nopl   0xc6c(%rax,%rax,1)           ;   {other}
   0.03%  │    0x00007f97cc642404:   add    $0x120,%rsp
   0.07%  │    0x00007f97cc64240b:   pop    %rbp
   0.06%  │ ↗  0x00007f97cc64240c:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭│  0x00007f97cc642413:   ja     0x00007f97cc64242a
   0.10%  │││  0x00007f97cc642419:   ret                                 ;*invokevirtual carryReduce0 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@1296 (line 201)
          │││  0x00007f97cc64241a:   mov    %rax,%rsi
          │││  0x00007f97cc64241d:   add    $0x120,%rsp
          │││  0x00007f97cc642424:   pop    %rbp
          │││  0x00007f97cc642425:   jmp    0x00007f97cc19d700           ;   {runtime_call _rethrow_Java}
          │↘╰  0x00007f97cc64242a:   movabs $0x7f97cc64240c,%r10         ;   {internal_word}
          │    0x00007f97cc642434:   mov    %r10,0x468(%r15)
          │    0x00007f97cc64243b:   jmp    0x00007f97cc0cb000           ;   {runtime_call SafepointBlob}
          ↘    0x00007f97cc642440:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
               0x00007f97cc642445:   jmp    0x00007f97cc64195e
....................................................................................................
  20.57%  <total for region 2>

....[Hottest Regions]...............................................................................
  33.10%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::mult, version 2, compile id 666 
  20.57%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce, version 2, compile id 654 
   7.71%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce0, version 2, compile id 640 
   6.31%         c2, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 748 
   3.15%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier::lookup, version 2, compile id 751 
   3.05%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce, version 2, compile id 652 
   3.00%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::square, version 2, compile id 703 
   2.81%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   2.03%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::square, version 2, compile id 703 
   2.02%         c2, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 748 
   1.29%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::carryReduce0, version 2, compile id 736 
   1.18%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::carryReduce0, version 2, compile id 736 
   1.14%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::carryReduce, version 2, compile id 734 
   0.78%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::carryReduce1, version 2, compile id 737 
   0.71%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::square, version 2, compile id 767 
   0.71%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::carryReduce2, version 2, compile id 711 
   0.61%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::carryReduce0, version 2, compile id 736 
   0.54%              kernel  [unknown] 
   0.42%         c2, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 4, compile id 905 
   0.30%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::mult, version 2, compile id 768 
   8.60%  <...other 748 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  33.10%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::mult, version 2, compile id 666 
  20.57%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce, version 2, compile id 654 
   8.33%         c2, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 748 
   7.71%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce0, version 2, compile id 640 
   5.03%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::square, version 2, compile id 703 
   3.34%         c2, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 808 
   3.28%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::carryReduce0, version 2, compile id 736 
   3.17%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier::lookup, version 2, compile id 751 
   3.05%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce, version 2, compile id 652 
   2.81%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.79%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::mult, version 2, compile id 768 
   1.71%              kernel  [unknown] 
   1.29%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::square, version 2, compile id 767 
   1.14%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::carryReduce, version 2, compile id 734 
   0.78%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::carryReduce1, version 2, compile id 737 
   0.77%         c2, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 4, compile id 905 
   0.71%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::carryReduce2, version 2, compile id 711 
   0.39%         c2, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 1007 
   0.16%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier$Default::pointMultiply, version 4, compile id 1092 
   0.06%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial::evaluate, version 2, compile id 1046 
   0.82%  <...other 117 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.10%         c2, level 4
   2.83%        runtime stub
   1.71%              kernel
   0.17%           libjvm.so
   0.10%        libc-2.31.so
   0.03%         interpreter
   0.02%                    
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%              [vdso]
   0.00%         c1, level 3
   0.00%    perf-1933931.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign
# Parameters: (algorithm = secp384r1, messageLength = 512)

# Run progress: 41.67% complete, ETA 00:13:12
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6203.699 us/op
# Warmup Iteration   2: 2145.296 us/op
# Warmup Iteration   3: 2105.549 us/op
# Warmup Iteration   4: 2104.541 us/op
# Warmup Iteration   5: 2103.483 us/op
Iteration   1: 2103.961 us/op
Iteration   2: 2103.518 us/op
Iteration   3: 2102.805 us/op
Iteration   4: 2102.950 us/op
Iteration   5: 2102.341 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign":
  2103.115 ±(99.9%) 2.436 us/op [Average]
  (min, avg, max) = (2102.341, 2103.115, 2103.961), stdev = 0.633
  CI (99.9%): [2100.679, 2105.551] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign:asm":
PrintAssembly processed: 319145 total address lines.
Perf output processed (skipped 56.852 seconds):
 Column 1: cycles (50847 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, sun.security.util.math.intpoly.IntegerPolynomialP384::mult, version 2, compile id 643 

             # parm2:    r8:r8     = &apos;[J&apos;
             #           [sp+0x490]  (sp of caller)
             0x00007eff9c6414e0:   mov    0x8(%rsi),%r10d
             0x00007eff9c6414e4:   movabs $0x7eff23000000,%r11
             0x00007eff9c6414ee:   add    %r11,%r10
             0x00007eff9c6414f1:   cmp    %r10,%rax
             0x00007eff9c6414f4:   jne    0x00007eff9c0c4080           ;   {runtime_call ic_miss_stub}
             0x00007eff9c6414fa:   xchg   %ax,%ax
             0x00007eff9c6414fc:   nopl   0x0(%rax)
           [Verified Entry Point]
   0.06%     0x00007eff9c641500:   mov    %eax,-0x14000(%rsp)
   0.12%     0x00007eff9c641507:   push   %rbp
   0.02%     0x00007eff9c641508:   sub    $0x480,%rsp
   0.03%     0x00007eff9c64150f:   nop
   0.05%     0x00007eff9c641510:   cmpl   $0x0,0x20(%r15)
   0.01%     0x00007eff9c641518:   jne    0x00007eff9c6429fa           ;*synchronization entry
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@-1 (line 379)
   0.03%     0x00007eff9c64151e:   vmovq  %r8,%xmm0
   0.02%     0x00007eff9c641523:   mov    0xc(%rdx),%r10d              ; implicit exception: dispatches to 0x00007eff9c6429bc
   0.07%     0x00007eff9c641527:   cmp    $0xd,%r10d
          ╭  0x00007eff9c64152b:   jbe    0x00007eff9c642946
   0.02%  │  0x00007eff9c641531:   mov    0xc(%rcx),%r11d              ; implicit exception: dispatches to 0x00007eff9c6429d0
   0.01%  │  0x00007eff9c641535:   mov    0x10(%rdx),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@2 (line 379)
   0.01%  │  0x00007eff9c641539:   nopl   0x0(%rax)
   0.05%  │  0x00007eff9c641540:   cmp    $0xd,%r11d
          │  0x00007eff9c641544:   jbe    0x00007eff9c642974
   0.03%  │  0x00007eff9c64154a:   vmovq  %rsi,%xmm13
   0.01%  │  0x00007eff9c64154f:   vmovq  %rcx,%xmm1
   0.01%  │  0x00007eff9c641554:   mov    0x10(%rcx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@5 (line 379)
   0.07%  │  0x00007eff9c641558:   mov    0x18(%rdx),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@18 (line 380)
   0.02%  │  0x00007eff9c64155c:   vmovq  %r10,%xmm9
   0.01%  │  0x00007eff9c641561:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@6 (line 379)
   0.01%  │  0x00007eff9c641565:   vmovq  %r10,%xmm14
   0.07%  │  0x00007eff9c64156a:   mov    %r11,%rdi
   0.02%  │  0x00007eff9c64156d:   mov    %r8,0xb8(%rsp)
   0.02%  │  0x00007eff9c641575:   imul   %r8,%rdi
   0.00%  │  0x00007eff9c641579:   mov    0x20(%rdx),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@43 (line 381)
   0.06%  │  0x00007eff9c64157d:   mov    0x28(%rdx),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@76 (line 382)
   0.02%  │  0x00007eff9c641581:   mov    %r11,%rsi
   0.01%  │  0x00007eff9c641584:   mov    %r10,0xc0(%rsp)
   0.01%  │  0x00007eff9c64158c:   imul   %r10,%rsi
   0.07%  │  0x00007eff9c641590:   mov    %r11,%r10
   0.02%  │  0x00007eff9c641593:   mov    %r8,0xc8(%rsp)
   0.01%  │  0x00007eff9c64159b:   imul   %r8,%r11
   0.01%  │  0x00007eff9c64159f:   mov    %r11,0xd0(%rsp)
   0.07%  │  0x00007eff9c6415a7:   mov    0x30(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@117 (line 383)
   0.02%  │  0x00007eff9c6415ab:   mov    %r11,0xd8(%rsp)
   0.02%  │  0x00007eff9c6415b3:   mov    0x38(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@166 (line 384)
          │  0x00007eff9c6415b7:   mov    %r11,0xe0(%rsp)
   0.06%  │  0x00007eff9c6415bf:   mov    %r10,%r13
   0.01%  │  0x00007eff9c6415c2:   imul   0xd8(%rsp),%r13
   0.12%  │  0x00007eff9c6415cb:   mov    %r10,%r11
   0.00%  │  0x00007eff9c6415ce:   imul   0xe0(%rsp),%r11
   0.10%  │  0x00007eff9c6415d7:   mov    %r11,0xe8(%rsp)
   0.17%  │  0x00007eff9c6415df:   mov    0x40(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@225 (line 385)
   0.01%  │  0x00007eff9c6415e3:   mov    %r11,0xf0(%rsp)
   0.00%  │  0x00007eff9c6415eb:   mov    0x48(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@294 (line 386)
   0.01%  │  0x00007eff9c6415ef:   mov    %r11,0xf8(%rsp)              ;   {no_reloc}
   0.10%  │  0x00007eff9c6415f7:   mov    %r10,%r11
   0.01%  │  0x00007eff9c6415fa:   imul   0xf0(%rsp),%r11
   0.01%  │  0x00007eff9c641603:   mov    %r11,0x100(%rsp)
   0.10%  │  0x00007eff9c64160b:   mov    %r10,%r11
   0.01%  │  0x00007eff9c64160e:   imul   0xf8(%rsp),%r11
   0.05%  │  0x00007eff9c641617:   mov    %r11,0x108(%rsp)
   0.08%  │  0x00007eff9c64161f:   mov    0x50(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@373 (line 387)
   0.04%  │  0x00007eff9c641623:   mov    %r11,0x110(%rsp)
   0.02%  │  0x00007eff9c64162b:   mov    0x58(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@462 (line 388)
   0.00%  │  0x00007eff9c64162f:   mov    %r11,0x118(%rsp)
   0.07%  │  0x00007eff9c641637:   mov    %r10,%r11
   0.01%  │  0x00007eff9c64163a:   imul   0x110(%rsp),%r11
   0.07%  │  0x00007eff9c641643:   mov    %r11,0x120(%rsp)
   0.12%  │  0x00007eff9c64164b:   mov    %r10,%r11
   0.02%  │  0x00007eff9c64164e:   imul   0x118(%rsp),%r11
   0.02%  │  0x00007eff9c641657:   mov    %r11,0x128(%rsp)
   0.06%  │  0x00007eff9c64165f:   mov    0x60(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@561 (line 389)
   0.04%  │  0x00007eff9c641663:   mov    %r11,0x130(%rsp)
   0.01%  │  0x00007eff9c64166b:   mov    0x68(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@670 (line 390)
   0.01%  │  0x00007eff9c64166f:   mov    %r11,0x138(%rsp)
   0.04%  │  0x00007eff9c641677:   mov    %r10,%r11
   0.03%  │  0x00007eff9c64167a:   imul   0x130(%rsp),%r11
   0.05%  │  0x00007eff9c641683:   mov    %r11,0x140(%rsp)
   0.06%  │  0x00007eff9c64168b:   mov    %r10,%r11
   0.03%  │  0x00007eff9c64168e:   imul   0x138(%rsp),%r11
   0.08%  │  0x00007eff9c641697:   mov    %r11,0x148(%rsp)
   0.08%  │  0x00007eff9c64169f:   mov    0x70(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@789 (line 391)
   0.01%  │  0x00007eff9c6416a3:   mov    %r11,0x150(%rsp)
   0.03%  │  0x00007eff9c6416ab:   mov    0x78(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@918 (line 392)
   0.02%  │  0x00007eff9c6416af:   mov    %r11,0x158(%rsp)
   0.04%  │  0x00007eff9c6416b7:   mov    %r10,%r11
   0.02%  │  0x00007eff9c6416ba:   imul   0x150(%rsp),%r11
   0.07%  │  0x00007eff9c6416c3:   mov    %r11,0x160(%rsp)
   0.11%  │  0x00007eff9c6416cb:   imul   0x158(%rsp),%r10
   0.06%  │  0x00007eff9c6416d4:   mov    %r10,0x168(%rsp)
   0.06%  │  0x00007eff9c6416dc:   mov    0x18(%rcx),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@14 (line 380)
   0.01%  │  0x00007eff9c6416e0:   vmovq  %xmm1,%r10
   0.04%  │  0x00007eff9c6416e5:   mov    0x20(%r10),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@31 (line 381)
   0.02%  │  0x00007eff9c6416e9:   mov    %rcx,%r10
   0.02%  │  0x00007eff9c6416ec:   imul   0x158(%rsp),%r10             ;   {no_reloc}
   0.01%  │  0x00007eff9c6416f5:   mov    %r10,0x170(%rsp)
   0.04%  │  0x00007eff9c6416fd:   mov    %r8,%r10
   0.02%  │  0x00007eff9c641700:   imul   0x158(%rsp),%r10
   0.04%  │  0x00007eff9c641709:   mov    %r10,0x178(%rsp)
   0.03%  │  0x00007eff9c641711:   mov    %r8,%r10
   0.04%  │  0x00007eff9c641714:   imul   0x150(%rsp),%r10
   0.02%  │  0x00007eff9c64171d:   mov    %r10,0x180(%rsp)
   0.06%  │  0x00007eff9c641725:   mov    %r8,%r10
   0.02%  │  0x00007eff9c641728:   imul   0x138(%rsp),%r10
   0.04%  │  0x00007eff9c641731:   mov    %r10,0x188(%rsp)
   0.02%  │  0x00007eff9c641739:   mov    %r8,%r10
   0.04%  │  0x00007eff9c64173c:   imul   0x130(%rsp),%r10
   0.01%  │  0x00007eff9c641745:   mov    %r10,0x190(%rsp)
   0.03%  │  0x00007eff9c64174d:   mov    %r8,%r10
   0.01%  │  0x00007eff9c641750:   imul   0x118(%rsp),%r10
   0.05%  │  0x00007eff9c641759:   mov    %r10,0x198(%rsp)
   0.04%  │  0x00007eff9c641761:   mov    %r8,%r10
   0.04%  │  0x00007eff9c641764:   imul   0x110(%rsp),%r10
   0.01%  │  0x00007eff9c64176d:   mov    %r10,0x1a0(%rsp)
   0.06%  │  0x00007eff9c641775:   mov    %r8,%r10
   0.01%  │  0x00007eff9c641778:   imul   0xf8(%rsp),%r10
   0.01%  │  0x00007eff9c641781:   mov    %r10,0x1a8(%rsp)
   0.05%  │  0x00007eff9c641789:   mov    %r8,%r10
   0.02%  │  0x00007eff9c64178c:   imul   0xf0(%rsp),%r10
   0.00%  │  0x00007eff9c641795:   mov    %r10,0x1b0(%rsp)
   0.06%  │  0x00007eff9c64179d:   mov    %r8,%r10
   0.01%  │  0x00007eff9c6417a0:   imul   0xe0(%rsp),%r10
   0.03%  │  0x00007eff9c6417a9:   mov    %r10,0x1b8(%rsp)
   0.06%  │  0x00007eff9c6417b1:   mov    %r8,%r10
   0.02%  │  0x00007eff9c6417b4:   imul   0xd8(%rsp),%r10
   0.01%  │  0x00007eff9c6417bd:   mov    %r10,0x1c0(%rsp)
   0.07%  │  0x00007eff9c6417c5:   mov    %r8,%r10
          │  0x00007eff9c6417c8:   imul   0xc8(%rsp),%r10
   0.02%  │  0x00007eff9c6417d1:   mov    %r10,0x1c8(%rsp)
   0.10%  │  0x00007eff9c6417d9:   mov    %r8,%r10
   0.01%  │  0x00007eff9c6417dc:   imul   0xc0(%rsp),%r10
   0.00%  │  0x00007eff9c6417e5:   mov    0xb8(%rsp),%r11
   0.01%  │  0x00007eff9c6417ed:   imul   %r8,%r11
   0.06%  │  0x00007eff9c6417f1:   vmovq  %xmm9,%r9                    ;   {no_reloc}
   0.01%  │  0x00007eff9c6417f6:   imul   %r8,%r9
          │  0x00007eff9c6417fa:   mov    %r9,%rax
   0.01%  │  0x00007eff9c6417fd:   mov    %rcx,%r8
   0.08%  │  0x00007eff9c641800:   imul   0x150(%rsp),%r8
   0.01%  │  0x00007eff9c641809:   mov    %r8,0x1d0(%rsp)
   0.18%  │  0x00007eff9c641811:   mov    %rcx,%r8
   0.00%  │  0x00007eff9c641814:   imul   0x138(%rsp),%r8
   0.00%  │  0x00007eff9c64181d:   mov    %r8,0x1d8(%rsp)
   0.08%  │  0x00007eff9c641825:   mov    %rcx,%r8
          │  0x00007eff9c641828:   imul   0x130(%rsp),%r8
          │  0x00007eff9c641831:   mov    %r8,0x1e0(%rsp)
   0.08%  │  0x00007eff9c641839:   mov    %rcx,%r8
   0.00%  │  0x00007eff9c64183c:   imul   0x118(%rsp),%r8
          │  0x00007eff9c641845:   mov    %r8,0x1e8(%rsp)
   0.08%  │  0x00007eff9c64184d:   mov    %rcx,%r8
   0.00%  │  0x00007eff9c641850:   imul   0x110(%rsp),%r8
          │  0x00007eff9c641859:   mov    %r8,0x1f0(%rsp)
   0.11%  │  0x00007eff9c641861:   mov    %rcx,%r8
          │  0x00007eff9c641864:   imul   0xf8(%rsp),%r8
          │  0x00007eff9c64186d:   mov    %r8,0x1f8(%rsp)
   0.11%  │  0x00007eff9c641875:   mov    %rcx,%r8
          │  0x00007eff9c641878:   imul   0xf0(%rsp),%r8
          │  0x00007eff9c641881:   mov    %r8,0x200(%rsp)
   0.10%  │  0x00007eff9c641889:   mov    %rcx,%rdx
          │  0x00007eff9c64188c:   imul   0xe0(%rsp),%rdx
          │  0x00007eff9c641895:   mov    %rcx,%r8
   0.00%  │  0x00007eff9c641898:   imul   0xd8(%rsp),%r8
   0.11%  │  0x00007eff9c6418a1:   mov    %r8,0x208(%rsp)
   0.12%  │  0x00007eff9c6418a9:   mov    %rcx,%r8
          │  0x00007eff9c6418ac:   imul   0xc8(%rsp),%r8
          │  0x00007eff9c6418b5:   mov    %rcx,%r9
          │  0x00007eff9c6418b8:   imul   0xc0(%rsp),%r9
   0.11%  │  0x00007eff9c6418c1:   mov    %rcx,%rbx
          │  0x00007eff9c6418c4:   imul   0xb8(%rsp),%rbx
          │  0x00007eff9c6418cd:   add    %rbx,%rax
   0.05%  │  0x00007eff9c6418d0:   add    %rsi,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@48 (line 381)
   0.11%  │  0x00007eff9c6418d3:   vmovq  %rax,%xmm15
   0.19%  │  0x00007eff9c6418d8:   vmovq  %xmm9,%rbx
          │  0x00007eff9c6418dd:   imul   %rcx,%rbx
          │  0x00007eff9c6418e1:   add    %rdi,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@23 (line 380)
          │  0x00007eff9c6418e4:   mov    %rbx,0x210(%rsp)
   0.10%  │  0x00007eff9c6418ec:   vmovq  %xmm1,%rcx                   ;   {no_reloc}
   0.00%  │  0x00007eff9c6418f1:   mov    0x28(%rcx),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@56 (line 382)
   0.00%  │  0x00007eff9c6418f5:   vmovq  %xmm1,%rbx
          │  0x00007eff9c6418fa:   mov    0x30(%rbx),%rdi              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@89 (line 383)
   0.10%  │  0x00007eff9c6418fe:   mov    %rcx,%rbx
          │  0x00007eff9c641901:   imul   0x158(%rsp),%rbx
   0.01%  │  0x00007eff9c64190a:   mov    %rbx,0x218(%rsp)
   0.01%  │  0x00007eff9c641912:   mov    %rdi,%rbx
   0.08%  │  0x00007eff9c641915:   imul   0x158(%rsp),%rbx
          │  0x00007eff9c64191e:   mov    %rbx,0x220(%rsp)
   0.00%  │  0x00007eff9c641926:   mov    %rdi,%rbx
   0.00%  │  0x00007eff9c641929:   imul   0x150(%rsp),%rbx
   0.09%  │  0x00007eff9c641932:   mov    %rbx,0x228(%rsp)
   0.01%  │  0x00007eff9c64193a:   mov    %rdi,%rbx
          │  0x00007eff9c64193d:   imul   0x138(%rsp),%rbx
   0.00%  │  0x00007eff9c641946:   mov    %rbx,0x230(%rsp)
   0.09%  │  0x00007eff9c64194e:   mov    %rdi,%rbx
          │  0x00007eff9c641951:   imul   0x130(%rsp),%rbx
          │  0x00007eff9c64195a:   mov    %rbx,0x238(%rsp)
   0.05%  │  0x00007eff9c641962:   mov    %rdi,%rbx
   0.07%  │  0x00007eff9c641965:   imul   0x118(%rsp),%rbx
   0.00%  │  0x00007eff9c64196e:   mov    %rbx,0x240(%rsp)
   0.04%  │  0x00007eff9c641976:   mov    %rdi,%rbx
          │  0x00007eff9c641979:   imul   0x110(%rsp),%rbx
   0.07%  │  0x00007eff9c641982:   mov    %rbx,0x248(%rsp)
   0.03%  │  0x00007eff9c64198a:   mov    %rdi,%rbx
          │  0x00007eff9c64198d:   imul   0xf8(%rsp),%rbx
          │  0x00007eff9c641996:   mov    %rbx,0x250(%rsp)
   0.12%  │  0x00007eff9c64199e:   mov    %rdi,%rbx
          │  0x00007eff9c6419a1:   imul   0xf0(%rsp),%rbx
          │  0x00007eff9c6419aa:   mov    %rbx,0x258(%rsp)
   0.11%  │  0x00007eff9c6419b2:   mov    %rdi,%rbx
   0.02%  │  0x00007eff9c6419b5:   imul   0xe0(%rsp),%rbx
          │  0x00007eff9c6419be:   mov    %rbx,0x260(%rsp)
   0.08%  │  0x00007eff9c6419c6:   mov    %rdi,%rbx
          │  0x00007eff9c6419c9:   imul   0xd8(%rsp),%rbx
   0.01%  │  0x00007eff9c6419d2:   mov    %rbx,0x268(%rsp)
   0.10%  │  0x00007eff9c6419da:   mov    0xc8(%rsp),%rbx
          │  0x00007eff9c6419e2:   imul   %rdi,%rbx
          │  0x00007eff9c6419e6:   mov    %rbx,0x270(%rsp)
   0.11%  │  0x00007eff9c6419ee:   mov    0xc0(%rsp),%rsi              ;   {no_reloc}
   0.00%  │  0x00007eff9c6419f6:   imul   %rdi,%rsi
          │  0x00007eff9c6419fa:   mov    0xb8(%rsp),%rax
          │  0x00007eff9c641a02:   imul   %rdi,%rax
   0.07%  │  0x00007eff9c641a06:   vmovq  %xmm9,%rbx
          │  0x00007eff9c641a0b:   imul   %rdi,%rbx
          │  0x00007eff9c641a0f:   mov    %rcx,%rdi
          │  0x00007eff9c641a12:   imul   0x150(%rsp),%rdi
   0.12%  │  0x00007eff9c641a1b:   mov    %rdi,0x278(%rsp)
   0.10%  │  0x00007eff9c641a23:   mov    %rcx,%rdi
          │  0x00007eff9c641a26:   imul   0x138(%rsp),%rdi
   0.00%  │  0x00007eff9c641a2f:   mov    %rdi,0x280(%rsp)
   0.11%  │  0x00007eff9c641a37:   mov    %rcx,%rdi
          │  0x00007eff9c641a3a:   imul   0x130(%rsp),%rdi
          │  0x00007eff9c641a43:   mov    %rdi,0x288(%rsp)
   0.10%  │  0x00007eff9c641a4b:   mov    %rcx,%rdi
          │  0x00007eff9c641a4e:   imul   0x118(%rsp),%rdi
          │  0x00007eff9c641a57:   mov    %rdi,0x290(%rsp)
   0.18%  │  0x00007eff9c641a5f:   mov    %rcx,%rdi
          │  0x00007eff9c641a62:   imul   0x110(%rsp),%rdi
          │  0x00007eff9c641a6b:   mov    %rdi,0x298(%rsp)
   0.11%  │  0x00007eff9c641a73:   mov    %rcx,%rdi
          │  0x00007eff9c641a76:   imul   0xf8(%rsp),%rdi
          │  0x00007eff9c641a7f:   mov    %rdi,0x2a0(%rsp)
   0.06%  │  0x00007eff9c641a87:   mov    %rcx,%rdi
   0.03%  │  0x00007eff9c641a8a:   imul   0xf0(%rsp),%rdi
   0.00%  │  0x00007eff9c641a93:   mov    %rdi,0x2a8(%rsp)
   0.08%  │  0x00007eff9c641a9b:   mov    %rcx,%rdi
          │  0x00007eff9c641a9e:   imul   0xe0(%rsp),%rdi
   0.01%  │  0x00007eff9c641aa7:   mov    %rdi,0x2b0(%rsp)
   0.11%  │  0x00007eff9c641aaf:   mov    %rcx,%rdi
          │  0x00007eff9c641ab2:   imul   0xd8(%rsp),%rdi
          │  0x00007eff9c641abb:   mov    %rdi,0x2b8(%rsp)
   0.10%  │  0x00007eff9c641ac3:   mov    %rcx,%rbp
          │  0x00007eff9c641ac6:   imul   0xc8(%rsp),%rbp
          │  0x00007eff9c641acf:   mov    0xc0(%rsp),%r14
          │  0x00007eff9c641ad7:   imul   %rcx,%r14
   0.12%  │  0x00007eff9c641adb:   mov    0xb8(%rsp),%rdi
          │  0x00007eff9c641ae3:   imul   %rcx,%rdi
          │  0x00007eff9c641ae7:   add    %rdi,%rbx
   0.10%  │  0x00007eff9c641aea:   add    %r10,%rbx
   0.51%  │  0x00007eff9c641aed:   add    %r8,%rbx                     ;   {no_reloc}
          │  0x00007eff9c641af0:   add    %r13,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@122 (line 383)
          │  0x00007eff9c641af3:   vmovq  %rbx,%xmm2
          │  0x00007eff9c641af8:   vmovq  %xmm9,%r10
   0.12%  │  0x00007eff9c641afd:   imul   %rcx,%r10
          │  0x00007eff9c641b01:   add    %r11,%r10
          │  0x00007eff9c641b04:   add    %r9,%r10
   0.00%  │  0x00007eff9c641b07:   add    0xd0(%rsp),%r10              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@81 (line 382)
   0.11%  │  0x00007eff9c641b0f:   mov    %r10,0xd0(%rsp)
          │  0x00007eff9c641b17:   vmovq  %xmm1,%r10
          │  0x00007eff9c641b1c:   mov    0x38(%r10),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@130 (line 384)
          │  0x00007eff9c641b20:   vmovq  %xmm1,%r11
   0.13%  │  0x00007eff9c641b25:   mov    0x40(%r11),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@180 (line 385)
          │  0x00007eff9c641b29:   mov    %r10,%r11
          │  0x00007eff9c641b2c:   imul   0x158(%rsp),%r11
   0.01%  │  0x00007eff9c641b35:   mov    %r11,0x2c0(%rsp)
   0.12%  │  0x00007eff9c641b3d:   mov    %rcx,%r11
          │  0x00007eff9c641b40:   imul   0x158(%rsp),%r11
   0.00%  │  0x00007eff9c641b49:   mov    %r11,0x2c8(%rsp)
   0.00%  │  0x00007eff9c641b51:   mov    %rcx,%r11
   0.07%  │  0x00007eff9c641b54:   imul   0x150(%rsp),%r11
   0.00%  │  0x00007eff9c641b5d:   mov    %r11,0x2d0(%rsp)
   0.00%  │  0x00007eff9c641b65:   mov    %rcx,%r11
          │  0x00007eff9c641b68:   imul   0x138(%rsp),%r11
   0.10%  │  0x00007eff9c641b71:   mov    %r11,0x2d8(%rsp)
          │  0x00007eff9c641b79:   mov    %rcx,%r11
          │  0x00007eff9c641b7c:   imul   0x130(%rsp),%r11
          │  0x00007eff9c641b85:   mov    %r11,0x2e0(%rsp)
   0.14%  │  0x00007eff9c641b8d:   mov    %rcx,%r11
   0.00%  │  0x00007eff9c641b90:   imul   0x118(%rsp),%r11
          │  0x00007eff9c641b99:   mov    %r11,0x2e8(%rsp)
   0.07%  │  0x00007eff9c641ba1:   mov    %rcx,%r11
   0.05%  │  0x00007eff9c641ba4:   imul   0x110(%rsp),%r11
          │  0x00007eff9c641bad:   mov    %r11,0x2f0(%rsp)
   0.05%  │  0x00007eff9c641bb5:   mov    %rcx,%r11
          │  0x00007eff9c641bb8:   imul   0xf8(%rsp),%r11
   0.03%  │  0x00007eff9c641bc1:   mov    %r11,0x2f8(%rsp)
   0.05%  │  0x00007eff9c641bc9:   mov    %rcx,%r11
          │  0x00007eff9c641bcc:   imul   0xf0(%rsp),%r11
          │  0x00007eff9c641bd5:   mov    %r11,0x300(%rsp)
   0.12%  │  0x00007eff9c641bdd:   mov    0xe0(%rsp),%r11
          │  0x00007eff9c641be5:   imul   %rcx,%r11
          │  0x00007eff9c641be9:   mov    %r11,0x308(%rsp)             ;   {no_reloc}
   0.05%  │  0x00007eff9c641bf1:   mov    0xd8(%rsp),%r11
   0.07%  │  0x00007eff9c641bf9:   imul   %rcx,%r11
   0.00%  │  0x00007eff9c641bfd:   mov    %r11,0x310(%rsp)
   0.03%  │  0x00007eff9c641c05:   mov    0xc8(%rsp),%r11
          │  0x00007eff9c641c0d:   imul   %rcx,%r11
   0.07%  │  0x00007eff9c641c11:   mov    %r11,0x318(%rsp)
   0.06%  │  0x00007eff9c641c19:   mov    0xc0(%rsp),%r11
          │  0x00007eff9c641c21:   imul   %rcx,%r11
          │  0x00007eff9c641c25:   mov    0xb8(%rsp),%r8
   0.05%  │  0x00007eff9c641c2d:   imul   %rcx,%r8
   0.03%  │  0x00007eff9c641c31:   vmovq  %xmm9,%r9
          │  0x00007eff9c641c36:   imul   %rcx,%r9
          │  0x00007eff9c641c3a:   mov    %r10,%rcx
   0.08%  │  0x00007eff9c641c3d:   imul   0x150(%rsp),%rcx
   0.08%  │  0x00007eff9c641c46:   mov    %rcx,0x320(%rsp)
   0.14%  │  0x00007eff9c641c4e:   mov    %r10,%rcx
          │  0x00007eff9c641c51:   imul   0x138(%rsp),%rcx
   0.02%  │  0x00007eff9c641c5a:   mov    %rcx,0x328(%rsp)
   0.09%  │  0x00007eff9c641c62:   mov    %r10,%rcx
          │  0x00007eff9c641c65:   imul   0x130(%rsp),%rcx
          │  0x00007eff9c641c6e:   mov    %rcx,0x330(%rsp)
   0.10%  │  0x00007eff9c641c76:   mov    %r10,%rcx
          │  0x00007eff9c641c79:   imul   0x118(%rsp),%rcx
          │  0x00007eff9c641c82:   mov    %rcx,0x338(%rsp)
   0.10%  │  0x00007eff9c641c8a:   mov    %r10,%rcx
   0.01%  │  0x00007eff9c641c8d:   imul   0x110(%rsp),%rcx
          │  0x00007eff9c641c96:   mov    %rcx,0x340(%rsp)
   0.19%  │  0x00007eff9c641c9e:   mov    %r10,%rcx
          │  0x00007eff9c641ca1:   imul   0xf8(%rsp),%rcx
   0.01%  │  0x00007eff9c641caa:   mov    %rcx,0x348(%rsp)
   0.09%  │  0x00007eff9c641cb2:   mov    %r10,%rcx
   0.05%  │  0x00007eff9c641cb5:   imul   0xf0(%rsp),%rcx
          │  0x00007eff9c641cbe:   mov    %rcx,0x350(%rsp)
   0.05%  │  0x00007eff9c641cc6:   mov    %r10,%r13
   0.00%  │  0x00007eff9c641cc9:   imul   0xe0(%rsp),%r13
   0.05%  │  0x00007eff9c641cd2:   mov    0xd8(%rsp),%rcx
          │  0x00007eff9c641cda:   imul   %r10,%rcx
   0.04%  │  0x00007eff9c641cde:   mov    %rcx,0x358(%rsp)
   0.09%  │  0x00007eff9c641ce6:   mov    0xc8(%rsp),%rcx              ;   {no_reloc}
   0.01%  │  0x00007eff9c641cee:   imul   %r10,%rcx
          │  0x00007eff9c641cf2:   mov    0xc0(%rsp),%rbx
   0.01%  │  0x00007eff9c641cfa:   imul   %r10,%rbx
   0.11%  │  0x00007eff9c641cfe:   mov    0xb8(%rsp),%rdi
   0.01%  │  0x00007eff9c641d06:   imul   %r10,%rdi
   0.01%  │  0x00007eff9c641d0a:   add    %rdi,%r9
   0.12%  │  0x00007eff9c641d0d:   add    %rsi,%r9
   0.08%  │  0x00007eff9c641d10:   add    %rbp,%r9
   0.09%  │  0x00007eff9c641d13:   add    0x1c0(%rsp),%r9
   0.09%  │  0x00007eff9c641d1b:   add    %rdx,%r9
   0.10%  │  0x00007eff9c641d1e:   add    0x100(%rsp),%r9              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@230 (line 385)
   0.13%  │  0x00007eff9c641d26:   vmovq  %r9,%xmm3
   0.22%  │  0x00007eff9c641d2b:   vmovq  %xmm9,%r9
          │  0x00007eff9c641d30:   imul   %r10,%r9
          │  0x00007eff9c641d34:   add    %rax,%r9
          │  0x00007eff9c641d37:   add    %r14,%r9
   0.09%  │  0x00007eff9c641d3a:   add    0x1c8(%rsp),%r9
          │  0x00007eff9c641d42:   add    0x208(%rsp),%r9
          │  0x00007eff9c641d4a:   add    0xe8(%rsp),%r9               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@171 (line 384)
          │  0x00007eff9c641d52:   vmovq  %r9,%xmm4
   0.09%  │  0x00007eff9c641d57:   vmovq  %xmm1,%r10
          │  0x00007eff9c641d5c:   mov    0x48(%r10),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@239 (line 386)
   0.00%  │  0x00007eff9c641d60:   vmovq  %xmm1,%r9
          │  0x00007eff9c641d65:   mov    0x50(%r9),%rdx               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@308 (line 387)
   0.11%  │  0x00007eff9c641d69:   mov    %r10,%r9
          │  0x00007eff9c641d6c:   imul   0x158(%rsp),%r9
   0.00%  │  0x00007eff9c641d75:   mov    %r9,0xe8(%rsp)
          │  0x00007eff9c641d7d:   mov    %rdx,%r9
   0.11%  │  0x00007eff9c641d80:   imul   0x158(%rsp),%r9
   0.00%  │  0x00007eff9c641d89:   mov    %r9,0x100(%rsp)
          │  0x00007eff9c641d91:   mov    %rdx,%r9
          │  0x00007eff9c641d94:   imul   0x150(%rsp),%r9
   0.12%  │  0x00007eff9c641d9d:   mov    %r9,0x1c0(%rsp)
          │  0x00007eff9c641da5:   mov    %rdx,%r9
          │  0x00007eff9c641da8:   imul   0x138(%rsp),%r9
   0.00%  │  0x00007eff9c641db1:   mov    %r9,0x1c8(%rsp)
   0.11%  │  0x00007eff9c641db9:   mov    %rdx,%r9
          │  0x00007eff9c641dbc:   imul   0x130(%rsp),%r9
          │  0x00007eff9c641dc5:   mov    %r9,0x208(%rsp)
   0.04%  │  0x00007eff9c641dcd:   mov    %rdx,%r9
   0.07%  │  0x00007eff9c641dd0:   imul   0x118(%rsp),%r9
          │  0x00007eff9c641dd9:   mov    %r9,0x360(%rsp)
          │  0x00007eff9c641de1:   mov    %rdx,%r9
   0.04%  │  0x00007eff9c641de4:   imul   0x110(%rsp),%r9              ;   {no_reloc}
   0.07%  │  0x00007eff9c641ded:   mov    %r9,0x368(%rsp)
          │  0x00007eff9c641df5:   mov    0xf8(%rsp),%r9
          │  0x00007eff9c641dfd:   imul   %rdx,%r9
   0.04%  │  0x00007eff9c641e01:   mov    %r9,0x370(%rsp)
   0.05%  │  0x00007eff9c641e09:   mov    0xf0(%rsp),%r9
          │  0x00007eff9c641e11:   imul   %rdx,%r9
          │  0x00007eff9c641e15:   mov    %r9,0x378(%rsp)
   0.18%  │  0x00007eff9c641e1d:   mov    0xe0(%rsp),%r9
   0.01%  │  0x00007eff9c641e25:   imul   %rdx,%r9
          │  0x00007eff9c641e29:   mov    %r9,0x380(%rsp)
   0.05%  │  0x00007eff9c641e31:   mov    0xd8(%rsp),%r9
   0.05%  │  0x00007eff9c641e39:   imul   %rdx,%r9
   0.00%  │  0x00007eff9c641e3d:   mov    %r9,0x388(%rsp)
   0.06%  │  0x00007eff9c641e45:   mov    0xc8(%rsp),%r9
          │  0x00007eff9c641e4d:   imul   %rdx,%r9
   0.05%  │  0x00007eff9c641e51:   mov    %r9,0x390(%rsp)
   0.16%  │  0x00007eff9c641e59:   mov    0xc0(%rsp),%r9
          │  0x00007eff9c641e61:   imul   %rdx,%r9
          │  0x00007eff9c641e65:   mov    0xb8(%rsp),%rdi
          │  0x00007eff9c641e6d:   imul   %rdx,%rdi
   0.10%  │  0x00007eff9c641e71:   vmovq  %xmm9,%rax
          │  0x00007eff9c641e76:   imul   %rdx,%rax
          │  0x00007eff9c641e7a:   mov    %r10,%rdx
          │  0x00007eff9c641e7d:   imul   0x150(%rsp),%rdx
   0.18%  │  0x00007eff9c641e86:   mov    %rdx,0x398(%rsp)
   0.06%  │  0x00007eff9c641e8e:   mov    %r10,%rdx
          │  0x00007eff9c641e91:   imul   0x138(%rsp),%rdx
          │  0x00007eff9c641e9a:   mov    %rdx,0x3a0(%rsp)
   0.10%  │  0x00007eff9c641ea2:   mov    %r10,%rdx
          │  0x00007eff9c641ea5:   imul   0x130(%rsp),%rdx
          │  0x00007eff9c641eae:   mov    %rdx,0x3a8(%rsp)
   0.10%  │  0x00007eff9c641eb6:   mov    %r10,%rdx
   0.00%  │  0x00007eff9c641eb9:   imul   0x118(%rsp),%rdx
          │  0x00007eff9c641ec2:   mov    %rdx,0x3b0(%rsp)
   0.09%  │  0x00007eff9c641eca:   mov    %r10,%rdx
          │  0x00007eff9c641ecd:   imul   0x110(%rsp),%rdx
   0.01%  │  0x00007eff9c641ed6:   mov    %rdx,0x3b8(%rsp)
   0.15%  │  0x00007eff9c641ede:   mov    %r10,%rdx
          │  0x00007eff9c641ee1:   imul   0xf8(%rsp),%rdx
          │  0x00007eff9c641eea:   mov    %rdx,0x3c0(%rsp)             ;   {no_reloc}
   0.16%  │  0x00007eff9c641ef2:   mov    0xf0(%rsp),%rdx
          │  0x00007eff9c641efa:   imul   %r10,%rdx
          │  0x00007eff9c641efe:   mov    %rdx,0x3c8(%rsp)
   0.10%  │  0x00007eff9c641f06:   mov    0xe0(%rsp),%rdx
          │  0x00007eff9c641f0e:   imul   %r10,%rdx
          │  0x00007eff9c641f12:   mov    %rdx,0x3d0(%rsp)
   0.14%  │  0x00007eff9c641f1a:   mov    0xd8(%rsp),%rdx
          │  0x00007eff9c641f22:   imul   %r10,%rdx
          │  0x00007eff9c641f26:   mov    %rdx,0x3d8(%rsp)
   0.10%  │  0x00007eff9c641f2e:   mov    0xc8(%rsp),%rdx
          │  0x00007eff9c641f36:   imul   %r10,%rdx
          │  0x00007eff9c641f3a:   mov    0xc0(%rsp),%rsi
          │  0x00007eff9c641f42:   imul   %r10,%rsi
   0.10%  │  0x00007eff9c641f46:   mov    0xb8(%rsp),%rbp
          │  0x00007eff9c641f4e:   imul   %r10,%rbp
          │  0x00007eff9c641f52:   add    %rbp,%rax
   0.09%  │  0x00007eff9c641f55:   add    %r11,%rax
   0.12%  │  0x00007eff9c641f58:   add    %rcx,%rax
   0.25%  │  0x00007eff9c641f5b:   add    0x268(%rsp),%rax
   0.08%  │  0x00007eff9c641f63:   add    0x2b0(%rsp),%rax
   0.10%  │  0x00007eff9c641f6b:   add    0x1b0(%rsp),%rax
   0.09%  │  0x00007eff9c641f73:   add    0x1f8(%rsp),%rax
   0.10%  │  0x00007eff9c641f7b:   add    0x120(%rsp),%rax             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@378 (line 387)
   0.11%  │  0x00007eff9c641f83:   vmovq  %rax,%xmm5
   0.18%  │  0x00007eff9c641f88:   vmovq  %xmm9,%r11
          │  0x00007eff9c641f8d:   imul   %r10,%r11
          │  0x00007eff9c641f91:   add    %r8,%r11
          │  0x00007eff9c641f94:   add    %rbx,%r11
   0.09%  │  0x00007eff9c641f97:   add    0x270(%rsp),%r11
          │  0x00007eff9c641f9f:   add    0x2b8(%rsp),%r11
          │  0x00007eff9c641fa7:   add    0x1b8(%rsp),%r11
          │  0x00007eff9c641faf:   add    0x200(%rsp),%r11
   0.08%  │  0x00007eff9c641fb7:   add    0x108(%rsp),%r11             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@299 (line 386)
          │  0x00007eff9c641fbf:   vmovq  %r11,%xmm6
          │  0x00007eff9c641fc4:   vmovq  %xmm1,%r10
          │  0x00007eff9c641fc9:   mov    0x58(%r10),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@387 (line 388)
   0.10%  │  0x00007eff9c641fcd:   vmovq  %xmm1,%r11
          │  0x00007eff9c641fd2:   mov    0x60(%r11),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@476 (line 389)
          │  0x00007eff9c641fd6:   mov    %r10,%r11
          │  0x00007eff9c641fd9:   imul   0x158(%rsp),%r11
   0.09%  │  0x00007eff9c641fe2:   mov    %r11,0x108(%rsp)             ;   {no_reloc}
          │  0x00007eff9c641fea:   mov    %r8,%r11
          │  0x00007eff9c641fed:   imul   0x158(%rsp),%r11
          │  0x00007eff9c641ff6:   mov    %r11,0x120(%rsp)
   0.10%  │  0x00007eff9c641ffe:   mov    %r8,%r11
          │  0x00007eff9c642001:   imul   0x150(%rsp),%r11
          │  0x00007eff9c64200a:   mov    %r11,0x1b0(%rsp)
          │  0x00007eff9c642012:   mov    %r8,%r11
   0.08%  │  0x00007eff9c642015:   imul   0x138(%rsp),%r11
          │  0x00007eff9c64201e:   mov    %r11,0x1b8(%rsp)
   0.00%  │  0x00007eff9c642026:   mov    %r8,%r11
          │  0x00007eff9c642029:   imul   0x130(%rsp),%r11
   0.08%  │  0x00007eff9c642032:   mov    %r11,0x1f8(%rsp)
          │  0x00007eff9c64203a:   mov    0x118(%rsp),%r11
          │  0x00007eff9c642042:   imul   %r8,%r11
          │  0x00007eff9c642046:   mov    %r11,0x200(%rsp)
   0.09%  │  0x00007eff9c64204e:   mov    0x110(%rsp),%r11
          │  0x00007eff9c642056:   imul   %r8,%r11
          │  0x00007eff9c64205a:   mov    %r11,0x268(%rsp)
          │  0x00007eff9c642062:   mov    0xf8(%rsp),%r11
   0.07%  │  0x00007eff9c64206a:   imul   %r8,%r11
          │  0x00007eff9c64206e:   mov    %r11,0x270(%rsp)
          │  0x00007eff9c642076:   mov    0xf0(%rsp),%r11
          │  0x00007eff9c64207e:   imul   %r8,%r11
   0.11%  │  0x00007eff9c642082:   mov    %r11,0x2b0(%rsp)
   0.00%  │  0x00007eff9c64208a:   mov    0xe0(%rsp),%r11
          │  0x00007eff9c642092:   imul   %r8,%r11
          │  0x00007eff9c642096:   mov    %r11,0x2b8(%rsp)
   0.09%  │  0x00007eff9c64209e:   mov    0xd8(%rsp),%r11
          │  0x00007eff9c6420a6:   imul   %r8,%r11
          │  0x00007eff9c6420aa:   mov    %r11,0x3e0(%rsp)
   0.04%  │  0x00007eff9c6420b2:   mov    0xc8(%rsp),%r11
   0.06%  │  0x00007eff9c6420ba:   imul   %r8,%r11
          │  0x00007eff9c6420be:   mov    %r11,0x3e8(%rsp)
   0.05%  │  0x00007eff9c6420c6:   mov    0xc0(%rsp),%r11
          │  0x00007eff9c6420ce:   imul   %r8,%r11
   0.05%  │  0x00007eff9c6420d2:   mov    %r11,0x3f0(%rsp)
   0.06%  │  0x00007eff9c6420da:   mov    0xb8(%rsp),%r11
          │  0x00007eff9c6420e2:   imul   %r8,%r11
          │  0x00007eff9c6420e6:   mov    %r11,0x3f8(%rsp)             ;   {no_reloc}
   0.21%  │  0x00007eff9c6420ee:   vmovq  %xmm9,%r11
   0.00%  │  0x00007eff9c6420f3:   imul   %r8,%r11
          │  0x00007eff9c6420f7:   mov    %r10,%r8
          │  0x00007eff9c6420fa:   imul   0x150(%rsp),%r8
   0.11%  │  0x00007eff9c642103:   mov    %r8,0x400(%rsp)
   0.07%  │  0x00007eff9c64210b:   mov    %r10,%r8
          │  0x00007eff9c64210e:   imul   0x138(%rsp),%r8
          │  0x00007eff9c642117:   mov    %r8,0x408(%rsp)
   0.15%  │  0x00007eff9c64211f:   mov    %r10,%r8
          │  0x00007eff9c642122:   imul   0x130(%rsp),%r8
          │  0x00007eff9c64212b:   mov    %r8,0x410(%rsp)
   0.16%  │  0x00007eff9c642133:   mov    %r10,%r8
          │  0x00007eff9c642136:   imul   0x118(%rsp),%r8
          │  0x00007eff9c64213f:   mov    %r8,0x418(%rsp)
   0.10%  │  0x00007eff9c642147:   mov    0x110(%rsp),%r8
          │  0x00007eff9c64214f:   imul   %r10,%r8
          │  0x00007eff9c642153:   mov    %r8,0x420(%rsp)
   0.07%  │  0x00007eff9c64215b:   mov    0xf8(%rsp),%r8
          │  0x00007eff9c642163:   imul   %r10,%r8
          │  0x00007eff9c642167:   mov    %r8,0x428(%rsp)
   0.15%  │  0x00007eff9c64216f:   mov    0xf0(%rsp),%r8
          │  0x00007eff9c642177:   imul   %r10,%r8
          │  0x00007eff9c64217b:   mov    %r8,0x430(%rsp)
   0.09%  │  0x00007eff9c642183:   mov    0xe0(%rsp),%r8
          │  0x00007eff9c64218b:   imul   %r10,%r8
          │  0x00007eff9c64218f:   mov    %r8,0x438(%rsp)
   0.10%  │  0x00007eff9c642197:   mov    0xd8(%rsp),%r8
          │  0x00007eff9c64219f:   imul   %r10,%r8
          │  0x00007eff9c6421a3:   mov    %r8,0x440(%rsp)
   0.09%  │  0x00007eff9c6421ab:   mov    0xc8(%rsp),%rbp
          │  0x00007eff9c6421b3:   imul   %r10,%rbp
   0.04%  │  0x00007eff9c6421b7:   mov    0xc0(%rsp),%r14
          │  0x00007eff9c6421bf:   imul   %r10,%r14
   0.05%  │  0x00007eff9c6421c3:   mov    0xb8(%rsp),%r8
          │  0x00007eff9c6421cb:   imul   %r10,%r8
   0.06%  │  0x00007eff9c6421cf:   add    %r8,%r11
   0.15%  │  0x00007eff9c6421d2:   add    %r9,%r11
   0.05%  │  0x00007eff9c6421d5:   add    %rdx,%r11
   0.12%  │  0x00007eff9c6421d8:   add    0x310(%rsp),%r11
   0.13%  │  0x00007eff9c6421e0:   add    %r13,%r11
   0.10%  │  0x00007eff9c6421e3:   add    0x258(%rsp),%r11             ;   {no_reloc}
   0.12%  │  0x00007eff9c6421eb:   add    0x2a0(%rsp),%r11
   0.09%  │  0x00007eff9c6421f3:   add    0x1a0(%rsp),%r11
   0.09%  │  0x00007eff9c6421fb:   add    0x1e8(%rsp),%r11
   0.12%  │  0x00007eff9c642203:   add    0x140(%rsp),%r11             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@566 (line 389)
   0.12%  │  0x00007eff9c64220b:   vmovq  %r11,%xmm7
   0.20%  │  0x00007eff9c642210:   vmovq  %xmm9,%r11
          │  0x00007eff9c642215:   imul   %r10,%r11
          │  0x00007eff9c642219:   add    %rdi,%r11
          │  0x00007eff9c64221c:   add    %rsi,%r11
   0.08%  │  0x00007eff9c64221f:   add    0x318(%rsp),%r11
          │  0x00007eff9c642227:   add    0x358(%rsp),%r11
          │  0x00007eff9c64222f:   add    0x260(%rsp),%r11
          │  0x00007eff9c642237:   add    0x2a8(%rsp),%r11
   0.29%  │  0x00007eff9c64223f:   add    0x1a8(%rsp),%r11
   0.05%  │  0x00007eff9c642247:   add    0x1f0(%rsp),%r11
   1.44%  │  0x00007eff9c64224f:   add    0x128(%rsp),%r11             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@467 (line 388)
   0.10%  │  0x00007eff9c642257:   vmovq  %r11,%xmm8
   0.19%  │  0x00007eff9c64225c:   vmovq  %xmm1,%r10
          │  0x00007eff9c642261:   mov    0x68(%r10),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@575 (line 390)
          │  0x00007eff9c642265:   vmovq  %xmm1,%r11
          │  0x00007eff9c64226a:   mov    0x70(%r11),%rbx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@684 (line 391)
   0.06%  │  0x00007eff9c64226e:   mov    %r10,%r11
          │  0x00007eff9c642271:   imul   0x158(%rsp),%r11
          │  0x00007eff9c64227a:   mov    %r11,0x128(%rsp)
          │  0x00007eff9c642282:   mov    %rbx,%r11
   0.10%  │  0x00007eff9c642285:   imul   0x158(%rsp),%r11
          │  0x00007eff9c64228e:   mov    %rbx,%r8
          │  0x00007eff9c642291:   imul   0x150(%rsp),%r8
          │  0x00007eff9c64229a:   mov    0x138(%rsp),%r9
   0.08%  │  0x00007eff9c6422a2:   imul   %rbx,%r9
          │  0x00007eff9c6422a6:   mov    %r9,0x140(%rsp)
          │  0x00007eff9c6422ae:   mov    0x130(%rsp),%r9
          │  0x00007eff9c6422b6:   imul   %rbx,%r9
   0.08%  │  0x00007eff9c6422ba:   mov    %r9,0x1a0(%rsp)
          │  0x00007eff9c6422c2:   mov    0x118(%rsp),%r9
          │  0x00007eff9c6422ca:   imul   %rbx,%r9
          │  0x00007eff9c6422ce:   mov    %r9,0x1a8(%rsp)
   0.09%  │  0x00007eff9c6422d6:   mov    0x110(%rsp),%r9
          │  0x00007eff9c6422de:   imul   %rbx,%r9
          │  0x00007eff9c6422e2:   mov    %r9,0x1e8(%rsp)              ;   {no_reloc}
          │  0x00007eff9c6422ea:   mov    0xf8(%rsp),%r9
   0.10%  │  0x00007eff9c6422f2:   imul   %rbx,%r9
          │  0x00007eff9c6422f6:   mov    %r9,0x1f0(%rsp)
          │  0x00007eff9c6422fe:   mov    0xf0(%rsp),%r9
          │  0x00007eff9c642306:   imul   %rbx,%r9
   0.08%  │  0x00007eff9c64230a:   mov    %r9,0x258(%rsp)
          │  0x00007eff9c642312:   mov    0xe0(%rsp),%r9
          │  0x00007eff9c64231a:   imul   %rbx,%r9
          │  0x00007eff9c64231e:   mov    %r9,0x260(%rsp)
   0.10%  │  0x00007eff9c642326:   mov    0xd8(%rsp),%r9
          │  0x00007eff9c64232e:   imul   %rbx,%r9
          │  0x00007eff9c642332:   mov    %r9,0x2a0(%rsp)
   0.04%  │  0x00007eff9c64233a:   mov    0xc8(%rsp),%r9
   0.06%  │  0x00007eff9c642342:   imul   %rbx,%r9
          │  0x00007eff9c642346:   mov    %r9,0x2a8(%rsp)
   0.04%  │  0x00007eff9c64234e:   mov    0xc0(%rsp),%r9
          │  0x00007eff9c642356:   imul   %rbx,%r9
   0.07%  │  0x00007eff9c64235a:   mov    %r9,0x310(%rsp)
   0.04%  │  0x00007eff9c642362:   mov    0xb8(%rsp),%r9
          │  0x00007eff9c64236a:   imul   %rbx,%r9
          │  0x00007eff9c64236e:   vmovq  %xmm9,%rcx
   0.06%  │  0x00007eff9c642373:   imul   %rbx,%rcx
   0.04%  │  0x00007eff9c642377:   mov    %r10,%rbx
          │  0x00007eff9c64237a:   imul   0x150(%rsp),%rbx
   0.06%  │  0x00007eff9c642383:   mov    %r10,%rdi
   0.07%  │  0x00007eff9c642386:   imul   0x138(%rsp),%rdi
          │  0x00007eff9c64238f:   mov    0x130(%rsp),%rdx
          │  0x00007eff9c642397:   imul   %r10,%rdx
   0.04%  │  0x00007eff9c64239b:   mov    0x118(%rsp),%rsi
   0.08%  │  0x00007eff9c6423a3:   imul   %r10,%rsi
   0.04%  │  0x00007eff9c6423a7:   mov    0x110(%rsp),%rax
          │  0x00007eff9c6423af:   imul   %r10,%rax
   0.04%  │  0x00007eff9c6423b3:   mov    %rax,0x318(%rsp)
   0.15%  │  0x00007eff9c6423bb:   mov    0xf8(%rsp),%rax
          │  0x00007eff9c6423c3:   imul   %r10,%rax
          │  0x00007eff9c6423c7:   mov    %rax,0x358(%rsp)
   0.07%  │  0x00007eff9c6423cf:   mov    0xf0(%rsp),%rax
   0.07%  │  0x00007eff9c6423d7:   imul   %r10,%rax
          │  0x00007eff9c6423db:   mov    %rax,0x448(%rsp)
   0.06%  │  0x00007eff9c6423e3:   mov    0xe0(%rsp),%rax              ;   {no_reloc}
          │  0x00007eff9c6423eb:   imul   %r10,%rax
   0.06%  │  0x00007eff9c6423ef:   mov    %rax,0x450(%rsp)
   0.05%  │  0x00007eff9c6423f7:   mov    0xd8(%rsp),%rax
          │  0x00007eff9c6423ff:   imul   %r10,%rax
          │  0x00007eff9c642403:   mov    %rax,0x458(%rsp)
   0.13%  │  0x00007eff9c64240b:   mov    0xc8(%rsp),%rax
          │  0x00007eff9c642413:   imul   %r10,%rax
          │  0x00007eff9c642417:   mov    %rax,0x460(%rsp)
   0.06%  │  0x00007eff9c64241f:   mov    0xc0(%rsp),%rax
   0.06%  │  0x00007eff9c642427:   imul   %r10,%rax
          │  0x00007eff9c64242b:   mov    0xb8(%rsp),%r13
          │  0x00007eff9c642433:   imul   %r10,%r13
   0.06%  │  0x00007eff9c642437:   add    %r13,%rcx
   0.06%  │  0x00007eff9c64243a:   add    0x3f0(%rsp),%rcx
   0.05%  │  0x00007eff9c642442:   add    %rbp,%rcx
   0.03%  │  0x00007eff9c642445:   add    0x388(%rsp),%rcx
   0.14%  │  0x00007eff9c64244d:   add    0x3d0(%rsp),%rcx
   0.11%  │  0x00007eff9c642455:   add    0x300(%rsp),%rcx
   0.04%  │  0x00007eff9c64245d:   add    0x348(%rsp),%rcx
   0.04%  │  0x00007eff9c642465:   add    0x248(%rsp),%rcx
   0.04%  │  0x00007eff9c64246d:   add    0x290(%rsp),%rcx
   0.11%  │  0x00007eff9c642475:   add    0x190(%rsp),%rcx
   0.06%  │  0x00007eff9c64247d:   add    0x1d8(%rsp),%rcx
   0.04%  │  0x00007eff9c642485:   add    0x160(%rsp),%rcx             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@794 (line 391)
   0.04%  │  0x00007eff9c64248d:   mov    %rcx,%rbp
   0.07%  │  0x00007eff9c642490:   vmovq  %xmm9,%rcx
          │  0x00007eff9c642495:   imul   %r10,%rcx
          │  0x00007eff9c642499:   add    0x3f8(%rsp),%rcx
   0.03%  │  0x00007eff9c6424a1:   add    %r14,%rcx
   0.05%  │  0x00007eff9c6424a4:   add    0x390(%rsp),%rcx
          │  0x00007eff9c6424ac:   add    0x3d8(%rsp),%rcx
          │  0x00007eff9c6424b4:   add    0x308(%rsp),%rcx
   0.04%  │  0x00007eff9c6424bc:   add    0x350(%rsp),%rcx
   0.06%  │  0x00007eff9c6424c4:   add    0x250(%rsp),%rcx
          │  0x00007eff9c6424cc:   add    0x298(%rsp),%rcx
   0.00%  │  0x00007eff9c6424d4:   add    0x198(%rsp),%rcx
   0.04%  │  0x00007eff9c6424dc:   add    0x1e0(%rsp),%rcx
   0.07%  │  0x00007eff9c6424e4:   add    0x148(%rsp),%rcx             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@675 (line 390)
          │                                                            ;   {no_reloc}
   0.00%  │  0x00007eff9c6424ec:   mov    %rcx,%r13
          │  0x00007eff9c6424ef:   vmovq  %xmm1,%r10
   0.04%  │  0x00007eff9c6424f4:   mov    0x78(%r10),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@803 (line 392)
   0.06%  │  0x00007eff9c6424f8:   vmovq  %xmm9,%r10
          │  0x00007eff9c6424fd:   imul   %rcx,%r10
          │  0x00007eff9c642501:   add    %r9,%r10
   0.06%  │  0x00007eff9c642504:   add    %rax,%r10
   0.06%  │  0x00007eff9c642507:   add    0x3e8(%rsp),%r10
          │  0x00007eff9c64250f:   add    0x440(%rsp),%r10
          │  0x00007eff9c642517:   add    0x380(%rsp),%r10
   0.04%  │  0x00007eff9c64251f:   add    0x3c8(%rsp),%r10
   0.06%  │  0x00007eff9c642527:   add    0x2f8(%rsp),%r10
   0.03%  │  0x00007eff9c64252f:   add    0x340(%rsp),%r10
   0.05%  │  0x00007eff9c642537:   add    0x240(%rsp),%r10
   0.05%  │  0x00007eff9c64253f:   add    0x288(%rsp),%r10
   0.11%  │  0x00007eff9c642547:   add    0x188(%rsp),%r10
   0.06%  │  0x00007eff9c64254f:   add    0x1d0(%rsp),%r10
   0.10%  │  0x00007eff9c642557:   add    0x168(%rsp),%r10             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@923 (line 392)
   0.09%  │  0x00007eff9c64255f:   mov    %r10,%r14
   0.00%  │  0x00007eff9c642562:   mov    %rcx,%r10
          │  0x00007eff9c642565:   imul   0x158(%rsp),%r10             ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1816 (line 405)
          │  0x00007eff9c64256e:   vmovq  %r10,%xmm1
   0.09%  │  0x00007eff9c642573:   mov    0x150(%rsp),%r10
   0.00%  │  0x00007eff9c64257b:   imul   %rcx,%r10
          │  0x00007eff9c64257f:   add    %r11,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1805 (line 404)
          │  0x00007eff9c642582:   vmovq  %r10,%xmm9
   0.10%  │  0x00007eff9c642587:   mov    0x138(%rsp),%r10
   0.01%  │  0x00007eff9c64258f:   imul   %rcx,%r10
          │  0x00007eff9c642593:   add    %r8,%r10
          │  0x00007eff9c642596:   add    0x128(%rsp),%r10             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1784 (line 403)
   0.11%  │  0x00007eff9c64259e:   vmovq  %r10,%xmm10
   0.00%  │  0x00007eff9c6425a3:   mov    0x130(%rsp),%r10
          │  0x00007eff9c6425ab:   imul   %rcx,%r10
          │  0x00007eff9c6425af:   add    0x140(%rsp),%r10
   0.09%  │  0x00007eff9c6425b7:   add    %rbx,%r10
   0.01%  │  0x00007eff9c6425ba:   add    0x120(%rsp),%r10             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1753 (line 402)
          │  0x00007eff9c6425c2:   vmovq  %r10,%xmm11
          │  0x00007eff9c6425c7:   mov    0x118(%rsp),%r10
   0.13%  │  0x00007eff9c6425cf:   imul   %rcx,%r10
   0.01%  │  0x00007eff9c6425d3:   add    0x1a0(%rsp),%r10
          │  0x00007eff9c6425db:   add    %rdi,%r10
          │  0x00007eff9c6425de:   add    0x1b0(%rsp),%r10             ;   {no_reloc}
   0.09%  │  0x00007eff9c6425e6:   add    0x108(%rsp),%r10             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1712 (line 401)
   0.02%  │  0x00007eff9c6425ee:   vmovq  %r10,%xmm12
   0.08%  │  0x00007eff9c6425f3:   mov    0x110(%rsp),%rdi
          │  0x00007eff9c6425fb:   imul   %rcx,%rdi
   0.06%  │  0x00007eff9c6425ff:   add    0x1a8(%rsp),%rdi
   0.01%  │  0x00007eff9c642607:   add    %rdx,%rdi
   0.05%  │  0x00007eff9c64260a:   add    0x1b8(%rsp),%rdi
          │  0x00007eff9c642612:   add    0x400(%rsp),%rdi
   0.03%  │  0x00007eff9c64261a:   add    0x100(%rsp),%rdi             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1661 (line 400)
          │  0x00007eff9c642622:   mov    0xf8(%rsp),%rax
   0.06%  │  0x00007eff9c64262a:   imul   %rcx,%rax
          │  0x00007eff9c64262e:   add    0x1e8(%rsp),%rax
   0.06%  │  0x00007eff9c642636:   add    %rsi,%rax
   0.01%  │  0x00007eff9c642639:   add    0x1f8(%rsp),%rax
   0.06%  │  0x00007eff9c642641:   add    0x408(%rsp),%rax
          │  0x00007eff9c642649:   add    0x1c0(%rsp),%rax
   0.06%  │  0x00007eff9c642651:   add    0xe8(%rsp),%rax              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1600 (line 399)
   0.06%  │  0x00007eff9c642659:   mov    0xf0(%rsp),%r10
          │  0x00007eff9c642661:   imul   %rcx,%r10
          │  0x00007eff9c642665:   add    0x1f0(%rsp),%r10
   0.06%  │  0x00007eff9c64266d:   add    0x318(%rsp),%r10
   0.06%  │  0x00007eff9c642675:   add    0x200(%rsp),%r10
          │  0x00007eff9c64267d:   add    0x410(%rsp),%r10
          │  0x00007eff9c642685:   add    0x1c8(%rsp),%r10
   0.05%  │  0x00007eff9c64268d:   add    0x398(%rsp),%r10
   0.12%  │  0x00007eff9c642695:   add    0x2c8(%rsp),%r10             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1529 (line 398)
   0.05%  │  0x00007eff9c64269d:   mov    0xe0(%rsp),%r11
          │  0x00007eff9c6426a5:   imul   %rcx,%r11
   0.04%  │  0x00007eff9c6426a9:   add    0x258(%rsp),%r11
   0.01%  │  0x00007eff9c6426b1:   add    0x358(%rsp),%r11
   0.04%  │  0x00007eff9c6426b9:   add    0x268(%rsp),%r11
   0.02%  │  0x00007eff9c6426c1:   add    0x418(%rsp),%r11
   0.09%  │  0x00007eff9c6426c9:   add    0x208(%rsp),%r11
   0.03%  │  0x00007eff9c6426d1:   add    0x3a0(%rsp),%r11
   0.04%  │  0x00007eff9c6426d9:   add    0x2d0(%rsp),%r11
   0.01%  │  0x00007eff9c6426e1:   add    0x2c0(%rsp),%r11             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1448 (line 397)
          │                                                            ;   {no_reloc}
   0.10%  │  0x00007eff9c6426e9:   mov    0xd8(%rsp),%r8
   0.01%  │  0x00007eff9c6426f1:   imul   %rcx,%r8
          │  0x00007eff9c6426f5:   add    0x260(%rsp),%r8
          │  0x00007eff9c6426fd:   add    0x448(%rsp),%r8
   0.11%  │  0x00007eff9c642705:   add    0x270(%rsp),%r8
   0.02%  │  0x00007eff9c64270d:   add    0x420(%rsp),%r8
          │  0x00007eff9c642715:   add    0x360(%rsp),%r8
          │  0x00007eff9c64271d:   add    0x3a8(%rsp),%r8
   0.10%  │  0x00007eff9c642725:   add    0x2d8(%rsp),%r8
   0.05%  │  0x00007eff9c64272d:   add    0x320(%rsp),%r8
   0.05%  │  0x00007eff9c642735:   add    0x220(%rsp),%r8              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1359 (line 396)
   0.06%  │  0x00007eff9c64273d:   mov    0xc8(%rsp),%r9
   0.02%  │  0x00007eff9c642745:   imul   %rcx,%r9
          │  0x00007eff9c642749:   add    0x2a0(%rsp),%r9
          │  0x00007eff9c642751:   add    0x450(%rsp),%r9
   0.08%  │  0x00007eff9c642759:   add    0x2b0(%rsp),%r9
   0.03%  │  0x00007eff9c642761:   add    0x428(%rsp),%r9
   0.02%  │  0x00007eff9c642769:   add    0x368(%rsp),%r9
   0.05%  │  0x00007eff9c642771:   add    0x3b0(%rsp),%r9
   0.09%  │  0x00007eff9c642779:   add    0x2e0(%rsp),%r9
   0.07%  │  0x00007eff9c642781:   add    0x328(%rsp),%r9
   0.08%  │  0x00007eff9c642789:   add    0x228(%rsp),%r9
   0.10%  │  0x00007eff9c642791:   add    0x218(%rsp),%r9              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1262 (line 395)
   0.09%  │  0x00007eff9c642799:   mov    0xc0(%rsp),%rbx
   0.00%  │  0x00007eff9c6427a1:   imul   %rcx,%rbx
          │  0x00007eff9c6427a5:   add    0x2a8(%rsp),%rbx
          │  0x00007eff9c6427ad:   add    0x458(%rsp),%rbx
   0.10%  │  0x00007eff9c6427b5:   add    0x2b8(%rsp),%rbx
   0.00%  │  0x00007eff9c6427bd:   add    0x430(%rsp),%rbx
          │  0x00007eff9c6427c5:   add    0x370(%rsp),%rbx
   0.02%  │  0x00007eff9c6427cd:   add    0x3b8(%rsp),%rbx
   0.08%  │  0x00007eff9c6427d5:   add    0x2e8(%rsp),%rbx
   0.07%  │  0x00007eff9c6427dd:   add    0x330(%rsp),%rbx             ;   {no_reloc}
   0.10%  │  0x00007eff9c6427e5:   add    0x230(%rsp),%rbx
   0.09%  │  0x00007eff9c6427ed:   add    0x278(%rsp),%rbx
   0.10%  │  0x00007eff9c6427f5:   add    0x178(%rsp),%rbx             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1157 (line 394)
   0.09%  │  0x00007eff9c6427fd:   mov    0xb8(%rsp),%rsi
          │  0x00007eff9c642805:   imul   %rcx,%rsi
          │  0x00007eff9c642809:   add    0x310(%rsp),%rsi
   0.01%  │  0x00007eff9c642811:   add    0x460(%rsp),%rsi
   0.10%  │  0x00007eff9c642819:   add    0x3e0(%rsp),%rsi
          │  0x00007eff9c642821:   add    0x438(%rsp),%rsi
          │  0x00007eff9c642829:   add    0x378(%rsp),%rsi
   0.03%  │  0x00007eff9c642831:   add    0x3c0(%rsp),%rsi
   0.10%  │  0x00007eff9c642839:   add    0x2f0(%rsp),%rsi
   0.09%  │  0x00007eff9c642841:   add    0x338(%rsp),%rsi
   0.20%  │  0x00007eff9c642849:   add    0x238(%rsp),%rsi
   0.09%  │  0x00007eff9c642851:   add    0x280(%rsp),%rsi
   0.09%  │  0x00007eff9c642859:   add    0x180(%rsp),%rsi
   0.11%  │  0x00007eff9c642861:   add    0x170(%rsp),%rsi             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1044 (line 393)
   0.09%  │  0x00007eff9c642869:   vmovq  %xmm0,%rdx
          │  0x00007eff9c64286e:   vmovsd %xmm2,(%rsp)
          │  0x00007eff9c642873:   vmovsd %xmm4,0x8(%rsp)
          │  0x00007eff9c642879:   vmovsd %xmm3,0x10(%rsp)
   0.13%  │  0x00007eff9c64287f:   vmovsd %xmm6,0x18(%rsp)
          │  0x00007eff9c642885:   vmovsd %xmm5,0x20(%rsp)
          │  0x00007eff9c64288b:   vmovsd %xmm8,0x28(%rsp)
   0.01%  │  0x00007eff9c642891:   vmovsd %xmm7,0x30(%rsp)
   0.09%  │  0x00007eff9c642897:   mov    %r13,0x38(%rsp)
   0.02%  │  0x00007eff9c64289c:   mov    %rbp,0x40(%rsp)
          │  0x00007eff9c6428a1:   mov    %r14,0x48(%rsp)
   0.02%  │  0x00007eff9c6428a6:   mov    %rsi,0x50(%rsp)
   0.06%  │  0x00007eff9c6428ab:   mov    %rbx,0x58(%rsp)
   0.06%  │  0x00007eff9c6428b0:   mov    %r9,0x60(%rsp)
   0.01%  │  0x00007eff9c6428b5:   mov    %r8,0x68(%rsp)
   0.02%  │  0x00007eff9c6428ba:   mov    %r11,0x70(%rsp)
   0.04%  │  0x00007eff9c6428bf:   mov    %r10,0x78(%rsp)
   0.07%  │  0x00007eff9c6428c4:   mov    %rax,0x80(%rsp)
   0.05%  │  0x00007eff9c6428cc:   mov    %rdi,0x88(%rsp)
   0.09%  │  0x00007eff9c6428d4:   vmovsd %xmm12,0x90(%rsp)
   0.10%  │  0x00007eff9c6428dd:   vmovsd %xmm11,0x98(%rsp)            ;   {no_reloc}
   0.07%  │  0x00007eff9c6428e6:   vmovsd %xmm10,0xa0(%rsp)
   0.09%  │  0x00007eff9c6428ef:   vmovsd %xmm9,0xa8(%rsp)
   0.10%  │  0x00007eff9c6428f8:   vmovsd %xmm1,0xb0(%rsp)
   0.08%  │  0x00007eff9c642901:   vmovq  %xmm13,%rsi
          │  0x00007eff9c642906:   vmovq  %xmm14,%rcx
          │  0x00007eff9c64290b:   mov    0x210(%rsp),%r8
          │  0x00007eff9c642913:   vmovq  %xmm15,%r9
   0.10%  │  0x00007eff9c642918:   mov    0xd0(%rsp),%rdi
          │  0x00007eff9c642920:   data16 xchg %ax,%ax
          │  0x00007eff9c642923:   call   0x00007eff9c0c4380           ; ImmutableOopMap {}
          │                                                            ;*invokevirtual carryReduce {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1875 (line 407)
          │                                                            ;   {optimized virtual_call}
          │  0x00007eff9c642928:   nopl   0x1618(%rax,%rax,1)          ;*invokevirtual carryReduce {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1875 (line 407)
          │                                                            ;   {other}
   0.04%  │  0x00007eff9c642930:   add    $0x480,%rsp
   0.07%  │  0x00007eff9c642937:   pop    %rbp
   0.03%  │  0x00007eff9c642938:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007eff9c64293f:   ja     0x00007eff9c6429e4
   0.04%  │  0x00007eff9c642945:   ret    
          ↘  0x00007eff9c642946:   mov    %rsi,%rbp
             0x00007eff9c642949:   mov    %rcx,0xc0(%rsp)
             0x00007eff9c642951:   mov    %r8,0xc8(%rsp)
             0x00007eff9c642959:   mov    %rdx,0xd0(%rsp)
             0x00007eff9c642961:   mov    $0xffffffe4,%esi
             0x00007eff9c642966:   nop
             0x00007eff9c642967:   call   0x00007eff9c0c9f00           ; ImmutableOopMap {rbp=Oop [192]=Oop [200]=Oop [208]=Oop }
                                                                       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@2 (line 379)
                                                                       ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  33.06%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce, version 2, compile id 629 

               # parm26:   [sp+0x1d8]   = long
               # parm27:   [sp+0x1e0]   = long
               0x00007eff9c63eda0:   mov    0x8(%rsi),%r10d
               0x00007eff9c63eda4:   movabs $0x7eff23000000,%r11
               0x00007eff9c63edae:   add    %r11,%r10
               0x00007eff9c63edb1:   cmp    %r10,%rax
               0x00007eff9c63edb4:   jne    0x00007eff9c0c4080           ;   {runtime_call ic_miss_stub}
               0x00007eff9c63edba:   xchg   %ax,%ax
               0x00007eff9c63edbc:   nopl   0x0(%rax)
             [Verified Entry Point]
   0.17%       0x00007eff9c63edc0:   mov    %eax,-0x14000(%rsp)
               0x00007eff9c63edc7:   push   %rbp
   0.17%       0x00007eff9c63edc8:   sub    $0x120,%rsp
               0x00007eff9c63edcf:   nop
               0x00007eff9c63edd0:   cmpl   $0x0,0x20(%r15)
   0.30%  ╭    0x00007eff9c63edd8:   jne    0x00007eff9c63f8c0           ;*synchronization entry
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@-1 (line 81)
   0.03%  │    0x00007eff9c63edde:   mov    %r9,%rbp
          │    0x00007eff9c63ede1:   mov    %r8,%rax
          │    0x00007eff9c63ede4:   mov    %rcx,%r14
   0.10%  │    0x00007eff9c63ede7:   vmovq  %rdx,%xmm8
   0.02%  │    0x00007eff9c63edec:   vmovq  %rsi,%xmm7
          │    0x00007eff9c63edf1:   mov    0x1e0(%rsp),%r10
          │    0x00007eff9c63edf9:   sar    $0x10,%r10
   0.08%  │    0x00007eff9c63edfd:   mov    0x180(%rsp),%r11
   0.02%  │    0x00007eff9c63ee05:   sub    %r10,%r11
          │    0x00007eff9c63ee08:   mov    0x1e0(%rsp),%r10
          │    0x00007eff9c63ee10:   shl    $0x14,%r10
   0.09%  │    0x00007eff9c63ee14:   mov    0x1e0(%rsp),%r8
   0.02%  │    0x00007eff9c63ee1c:   shl    $0x18,%r8
          │    0x00007eff9c63ee20:   and    $0xfffffff,%r10
          │    0x00007eff9c63ee27:   mov    0x188(%rsp),%r9
   0.09%  │    0x00007eff9c63ee2f:   add    %r10,%r9
   0.04%  │    0x00007eff9c63ee32:   and    $0xfffffff,%r8
          │    0x00007eff9c63ee39:   mov    0x190(%rsp),%rcx
          │    0x00007eff9c63ee41:   add    %r8,%rcx
   0.10%  │    0x00007eff9c63ee44:   mov    0x1e0(%rsp),%r10
   0.03%  │    0x00007eff9c63ee4c:   sar    $0x8,%r10
          │    0x00007eff9c63ee50:   add    %r10,%rcx
          │    0x00007eff9c63ee53:   mov    0x1e0(%rsp),%r8
   0.13%  │    0x00007eff9c63ee5b:   sar    $0x4,%r8
   0.02%  │    0x00007eff9c63ee5f:   mov    0x198(%rsp),%r10
          │    0x00007eff9c63ee67:   add    %r8,%r10                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@23 (line 84)
          │    0x00007eff9c63ee6a:   mov    0x1e0(%rsp),%rbx
   0.12%  │    0x00007eff9c63ee72:   shl    $0x8,%rbx
   0.03%  │    0x00007eff9c63ee76:   mov    %r10,%r8
          │    0x00007eff9c63ee79:   sar    $0x8,%r8
          │    0x00007eff9c63ee7d:   mov    %r8,0x180(%rsp)
   0.10%  │    0x00007eff9c63ee85:   and    $0xfffffff,%rbx
   0.01%  │    0x00007eff9c63ee8c:   mov    0x170(%rsp),%rdx
          │    0x00007eff9c63ee94:   add    %rbx,%rdx
          │    0x00007eff9c63ee97:   mov    %r10,%r8
   0.10%  │    0x00007eff9c63ee9a:   shl    $0x18,%r8
   0.02%  │    0x00007eff9c63ee9e:   vmovq  %r10,%xmm0
          │    0x00007eff9c63eea3:   shl    $0x14,%r10
          │    0x00007eff9c63eea7:   and    $0xfffffff,%r8
   0.13%  │    0x00007eff9c63eeae:   mov    %r8,0x170(%rsp)              ;   {no_reloc}
   0.02%  │    0x00007eff9c63eeb6:   and    $0xfffffff,%r10
          │    0x00007eff9c63eebd:   mov    %r10,0x188(%rsp)
          │    0x00007eff9c63eec5:   vmovq  %xmm0,%r10
   0.13%  │    0x00007eff9c63eeca:   sar    $0x10,%r10
   0.10%  │    0x00007eff9c63eece:   mov    %r10,0x190(%rsp)
   0.14%  │    0x00007eff9c63eed6:   vmovq  %xmm0,%r10
          │    0x00007eff9c63eedb:   sar    $0x14,%r10
   0.25%  │    0x00007eff9c63eedf:   mov    %r10,0x198(%rsp)
   0.13%  │    0x00007eff9c63eee7:   vmovq  %xmm0,%r10
   0.04%  │    0x00007eff9c63eeec:   shl    $0xc,%r10
          │    0x00007eff9c63eef0:   vmovq  %xmm0,%r8
          │    0x00007eff9c63eef5:   shl    $0x8,%r8
   0.07%  │    0x00007eff9c63eef9:   and    $0xfffffff,%r10
   0.04%  │    0x00007eff9c63ef00:   and    $0xfffffff,%r8
   0.00%  │    0x00007eff9c63ef07:   add    %r8,%rdi
   0.00%  │    0x00007eff9c63ef0a:   vmovq  %xmm0,%r8
   0.09%  │    0x00007eff9c63ef0f:   sar    $0x4,%r8
   0.05%  │    0x00007eff9c63ef13:   mov    %r8,0xc0(%rsp)
          │    0x00007eff9c63ef1b:   mov    0x1e0(%rsp),%r8
   0.00%  │    0x00007eff9c63ef23:   shl    $0xc,%r8
   0.06%  │    0x00007eff9c63ef27:   and    $0xfffffff,%r8
   0.04%  │    0x00007eff9c63ef2e:   mov    0x178(%rsp),%rbx
          │    0x00007eff9c63ef36:   sub    %r8,%rbx
   0.00%  │    0x00007eff9c63ef39:   vmovq  %rbx,%xmm9
   0.06%  │    0x00007eff9c63ef3e:   mov    0x1d8(%rsp),%r8
   0.03%  │    0x00007eff9c63ef46:   shl    $0x14,%r8
          │    0x00007eff9c63ef4a:   and    $0xfffffff,%r8
   0.00%  │    0x00007eff9c63ef51:   add    %r8,%r11
   0.08%  │    0x00007eff9c63ef54:   mov    %r11,%rsi
   0.05%  │    0x00007eff9c63ef57:   mov    0x1d8(%rsp),%r11
          │    0x00007eff9c63ef5f:   shl    $0x18,%r11
   0.01%  │    0x00007eff9c63ef63:   and    $0xfffffff,%r11
   0.09%  │    0x00007eff9c63ef6a:   add    %r11,%r9
   0.04%  │    0x00007eff9c63ef6d:   mov    0x1d8(%rsp),%r11
          │    0x00007eff9c63ef75:   sar    $0x8,%r11
   0.00%  │    0x00007eff9c63ef79:   add    %r11,%r9
   0.09%  │    0x00007eff9c63ef7c:   mov    0x1d8(%rsp),%r11
   0.05%  │    0x00007eff9c63ef84:   sar    $0x4,%r11
          │    0x00007eff9c63ef88:   lea    (%rcx,%r11,1),%r8
   0.00%  │    0x00007eff9c63ef8c:   vmovq  %r8,%xmm1
   0.08%  │    0x00007eff9c63ef91:   mov    0x1d8(%rsp),%r11
   0.04%  │    0x00007eff9c63ef99:   shl    $0x8,%r11
          │    0x00007eff9c63ef9d:   and    $0xfffffff,%r11
          │    0x00007eff9c63efa4:   mov    0x168(%rsp),%r8
   0.08%  │    0x00007eff9c63efac:   add    %r11,%r8
   0.05%  │    0x00007eff9c63efaf:   mov    %r8,%r13
          │    0x00007eff9c63efb2:   vmovq  %xmm1,%r11                   ;   {no_reloc}
   0.00%  │    0x00007eff9c63efb7:   sar    $0x8,%r11
   0.13%  │    0x00007eff9c63efbb:   mov    %r11,0x168(%rsp)
   0.08%  │    0x00007eff9c63efc3:   vmovq  %xmm1,%r11
          │    0x00007eff9c63efc8:   shl    $0x18,%r11
   0.10%  │    0x00007eff9c63efcc:   and    $0xfffffff,%r11
   0.12%  │    0x00007eff9c63efd3:   mov    %r11,0x178(%rsp)
   0.13%  │    0x00007eff9c63efdb:   vmovq  %xmm1,%r11
          │    0x00007eff9c63efe0:   shl    $0x14,%r11
          │    0x00007eff9c63efe4:   and    $0xfffffff,%r11
   0.04%  │    0x00007eff9c63efeb:   vmovq  %xmm1,%r8
   0.06%  │    0x00007eff9c63eff0:   sar    $0x10,%r8
          │    0x00007eff9c63eff4:   vmovq  %xmm1,%rcx
          │    0x00007eff9c63eff9:   sar    $0x14,%rcx
   0.06%  │    0x00007eff9c63effd:   vmovq  %xmm1,%rbx
   0.07%  │    0x00007eff9c63f002:   shl    $0xc,%rbx
          │    0x00007eff9c63f006:   and    $0xfffffff,%rbx
          │    0x00007eff9c63f00d:   sub    %rbx,%rdi
   0.06%  │    0x00007eff9c63f010:   add    %rcx,%rdi
   0.07%  │    0x00007eff9c63f013:   vmovq  %rdi,%xmm3
   0.01%  │    0x00007eff9c63f018:   vmovq  %xmm1,%rcx
          │    0x00007eff9c63f01d:   shl    $0x8,%rcx
   0.06%  │    0x00007eff9c63f021:   and    $0xfffffff,%rcx
   0.08%  │    0x00007eff9c63f028:   add    %rcx,%rbp
          │    0x00007eff9c63f02b:   vmovq  %xmm1,%rcx
          │    0x00007eff9c63f030:   sar    $0x4,%rcx
   0.05%  │    0x00007eff9c63f034:   mov    %rcx,0xc8(%rsp)
   0.07%  │    0x00007eff9c63f03c:   mov    0x1d8(%rsp),%rcx
   0.00%  │    0x00007eff9c63f044:   shl    $0xc,%rcx
          │    0x00007eff9c63f048:   and    $0xfffffff,%rcx
   0.06%  │    0x00007eff9c63f04f:   sub    %rcx,%rdx
   0.08%  │    0x00007eff9c63f052:   mov    0x1d8(%rsp),%rcx
          │    0x00007eff9c63f05a:   sar    $0x14,%rcx
          │    0x00007eff9c63f05e:   add    %rcx,%rdx
   0.06%  │    0x00007eff9c63f061:   vmovq  %rdx,%xmm4
   0.06%  │    0x00007eff9c63f066:   mov    0x1d8(%rsp),%rcx
   0.00%  │    0x00007eff9c63f06e:   sar    $0x10,%rcx
          │    0x00007eff9c63f072:   mov    %rcx,0xd0(%rsp)
   0.06%  │    0x00007eff9c63f07a:   mov    0x1d0(%rsp),%rcx
   0.08%  │    0x00007eff9c63f082:   shl    $0x18,%rcx
   0.00%  │    0x00007eff9c63f086:   and    $0xfffffff,%rcx
          │    0x00007eff9c63f08d:   lea    (%rsi,%rcx,1),%rbx
   0.06%  │    0x00007eff9c63f091:   mov    0x1d0(%rsp),%rcx
   0.06%  │    0x00007eff9c63f099:   sar    $0x8,%rcx
   0.00%  │    0x00007eff9c63f09d:   add    %rcx,%rbx
          │    0x00007eff9c63f0a0:   vmovq  %rbx,%xmm5
   0.05%  │    0x00007eff9c63f0a5:   mov    0x1d0(%rsp),%rcx
   0.05%  │    0x00007eff9c63f0ad:   sar    $0x4,%rcx
   0.00%  │    0x00007eff9c63f0b1:   add    %rcx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@213 (line 102)
          │                                                              ;   {no_reloc}
          │    0x00007eff9c63f0b4:   vmovq  %r9,%xmm2
   0.06%  │    0x00007eff9c63f0b9:   mov    0x1d0(%rsp),%r9
   0.06%  │    0x00007eff9c63f0c1:   shl    $0x8,%r9
   0.01%  │    0x00007eff9c63f0c5:   and    $0xfffffff,%r9
          │    0x00007eff9c63f0cc:   mov    0x160(%rsp),%rcx
   0.05%  │    0x00007eff9c63f0d4:   add    %r9,%rcx
   0.06%  │    0x00007eff9c63f0d7:   vmovq  %rcx,%xmm6
   0.00%  │    0x00007eff9c63f0dc:   vmovq  %xmm2,%r9
   0.01%  │    0x00007eff9c63f0e1:   sar    $0x8,%r9
   0.42%  │    0x00007eff9c63f0e5:   vmovq  %xmm2,%rcx
   0.03%  │    0x00007eff9c63f0ea:   shl    $0x18,%rcx
   0.01%  │    0x00007eff9c63f0ee:   and    $0xfffffff,%rcx
   0.01%  │    0x00007eff9c63f0f5:   vmovq  %xmm2,%rbx
   0.10%  │    0x00007eff9c63f0fa:   shl    $0x14,%rbx
   0.24%  │    0x00007eff9c63f0fe:   and    $0xfffffff,%rbx
   0.03%  │    0x00007eff9c63f105:   vmovq  %xmm2,%rdi
   0.00%  │    0x00007eff9c63f10a:   sar    $0x10,%rdi
   0.30%  │    0x00007eff9c63f10e:   vmovq  %xmm3,%rdx
   0.02%  │    0x00007eff9c63f113:   sub    %rdi,%rdx
   0.03%  │    0x00007eff9c63f116:   vmovq  %rdx,%xmm3
   0.02%  │    0x00007eff9c63f11b:   vmovq  %xmm2,%rdi
   0.08%  │    0x00007eff9c63f120:   sar    $0x14,%rdi
   0.01%  │    0x00007eff9c63f124:   vmovq  %xmm2,%rdx
   0.05%  │    0x00007eff9c63f129:   shl    $0xc,%rdx
   0.01%  │    0x00007eff9c63f12d:   and    $0xfffffff,%rdx
   0.06%  │    0x00007eff9c63f134:   mov    %rbp,%rsi
   0.01%  │    0x00007eff9c63f137:   sub    %rdx,%rsi
   0.04%  │    0x00007eff9c63f13a:   add    %rdi,%rsi
   0.01%  │    0x00007eff9c63f13d:   vmovq  %rsi,%xmm10
   0.09%  │    0x00007eff9c63f142:   vmovq  %xmm2,%rdi
   0.01%  │    0x00007eff9c63f147:   shl    $0x8,%rdi
   0.03%  │    0x00007eff9c63f14b:   and    $0xfffffff,%rdi
   0.01%  │    0x00007eff9c63f152:   lea    (%rax,%rdi,1),%rdx
   0.06%  │    0x00007eff9c63f156:   vmovq  %rdx,%xmm11
   0.01%  │    0x00007eff9c63f15b:   vmovq  %xmm2,%rdi
   0.03%  │    0x00007eff9c63f160:   sar    $0x4,%rdi
   0.00%  │    0x00007eff9c63f164:   mov    0x1d0(%rsp),%rdx
   0.08%  │    0x00007eff9c63f16c:   shl    $0xc,%rdx
   0.01%  │    0x00007eff9c63f170:   and    $0xfffffff,%rdx
   0.02%  │    0x00007eff9c63f177:   mov    %r13,%rsi
   0.01%  │    0x00007eff9c63f17a:   sub    %rdx,%rsi
   0.10%  │    0x00007eff9c63f17d:   mov    0x1d0(%rsp),%rdx
   0.01%  │    0x00007eff9c63f185:   sar    $0x14,%rdx
   0.03%  │    0x00007eff9c63f189:   add    %rdx,%rsi
   0.00%  │    0x00007eff9c63f18c:   vmovq  %rsi,%xmm12
   0.07%  │    0x00007eff9c63f191:   mov    0x1d0(%rsp),%rdx
   0.00%  │    0x00007eff9c63f199:   sar    $0x10,%rdx
   0.04%  │    0x00007eff9c63f19d:   vmovq  %xmm4,%rsi
   0.01%  │    0x00007eff9c63f1a2:   sub    %rdx,%rsi
   0.09%  │    0x00007eff9c63f1a5:   vmovq  %rsi,%xmm4
   0.01%  │    0x00007eff9c63f1aa:   mov    0x1d0(%rsp),%rdx             ;   {no_reloc}
   0.03%  │    0x00007eff9c63f1b2:   shl    $0x14,%rdx
   0.01%  │    0x00007eff9c63f1b6:   and    $0xfffffff,%rdx
   0.07%  │    0x00007eff9c63f1bd:   mov    %rdx,0x160(%rsp)
   0.01%  │    0x00007eff9c63f1c5:   mov    0x1c8(%rsp),%rdx
   0.03%  │    0x00007eff9c63f1cd:   sar    $0x4,%rdx
   0.00%  │    0x00007eff9c63f1d1:   vmovq  %xmm5,%rsi
   0.08%  │    0x00007eff9c63f1d6:   add    %rdx,%rsi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@308 (line 111)
   0.01%  │    0x00007eff9c63f1d9:   vmovq  %rsi,%xmm5
   0.04%  │    0x00007eff9c63f1de:   mov    0x1c8(%rsp),%rdx
   0.01%  │    0x00007eff9c63f1e6:   shl    $0x8,%rdx
   0.07%  │    0x00007eff9c63f1ea:   and    $0xfffffff,%rdx
          │    0x00007eff9c63f1f1:   mov    0x158(%rsp),%rsi
   0.03%  │    0x00007eff9c63f1f9:   add    %rdx,%rsi
   0.01%  │    0x00007eff9c63f1fc:   vmovq  %rsi,%xmm13
   0.11%  │    0x00007eff9c63f201:   vmovq  %xmm5,%rdx
   0.01%  │    0x00007eff9c63f206:   sar    $0x8,%rdx
   0.38%  │    0x00007eff9c63f20a:   vmovq  %xmm5,%rsi
   0.01%  │    0x00007eff9c63f20f:   shl    $0x18,%rsi
   0.09%  │    0x00007eff9c63f213:   and    $0xfffffff,%rsi
   0.01%  │    0x00007eff9c63f21a:   vmovq  %xmm5,%rax
   0.09%  │    0x00007eff9c63f21f:   shl    $0x14,%rax
   0.00%  │    0x00007eff9c63f223:   and    $0xfffffff,%rax
   0.13%  │    0x00007eff9c63f229:   vmovq  %xmm3,%rbp
   0.01%  │    0x00007eff9c63f22e:   add    %rax,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@1177 (line 193)
   0.06%  │    0x00007eff9c63f231:   vmovq  %rbp,%xmm14
   0.00%  │    0x00007eff9c63f236:   vmovq  %xmm5,%rax
   0.08%  │    0x00007eff9c63f23b:   sar    $0x10,%rax
   0.01%  │    0x00007eff9c63f23f:   vmovq  %xmm10,%rbp
   0.07%  │    0x00007eff9c63f244:   sub    %rax,%rbp                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@1211 (line 196)
   0.01%  │    0x00007eff9c63f247:   vmovq  %rbp,%xmm10
   0.12%  │    0x00007eff9c63f24c:   vmovq  %xmm5,%rax
   0.01%  │    0x00007eff9c63f251:   sar    $0x14,%rax
   0.06%  │    0x00007eff9c63f255:   vmovq  %xmm5,%rbp
   0.00%  │    0x00007eff9c63f25a:   shl    $0xc,%rbp
   0.04%  │    0x00007eff9c63f25e:   and    $0xfffffff,%rbp
   0.00%  │    0x00007eff9c63f265:   vmovq  %xmm11,%r13
   0.05%  │    0x00007eff9c63f26a:   sub    %rbp,%r13
          │    0x00007eff9c63f26d:   add    %rax,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@1233 (line 198)
   0.07%  │    0x00007eff9c63f270:   vmovq  %r13,%xmm11
   0.01%  │    0x00007eff9c63f275:   vmovq  %xmm5,%rbp
   0.03%  │    0x00007eff9c63f27a:   shl    $0x8,%rbp
   0.00%  │    0x00007eff9c63f27e:   vmovq  %xmm5,%rax
   0.08%  │    0x00007eff9c63f283:   sar    $0x4,%rax
   0.01%  │    0x00007eff9c63f287:   mov    %rax,%r13
   0.05%  │    0x00007eff9c63f28a:   and    $0xfffffff,%rbp
   0.00%  │    0x00007eff9c63f291:   lea    (%r14,%rbp,1),%rax
   0.07%  │    0x00007eff9c63f295:   vmovq  %rax,%xmm15
   0.02%  │    0x00007eff9c63f29a:   mov    0x1c8(%rsp),%rax
   0.04%  │    0x00007eff9c63f2a2:   shl    $0xc,%rax
   0.01%  │    0x00007eff9c63f2a6:   and    $0xfffffff,%rax
   0.06%  │    0x00007eff9c63f2ac:   vmovq  %xmm6,%rbp                   ;   {no_reloc}
   0.01%  │    0x00007eff9c63f2b1:   sub    %rax,%rbp
   0.05%  │    0x00007eff9c63f2b4:   mov    0x1c8(%rsp),%rax
   0.01%  │    0x00007eff9c63f2bc:   sar    $0x14,%rax
   0.07%  │    0x00007eff9c63f2c0:   add    %rax,%rbp
   0.01%  │    0x00007eff9c63f2c3:   mov    %rbp,0x158(%rsp)
   0.05%  │    0x00007eff9c63f2cb:   mov    0x1c8(%rsp),%rax
   0.01%  │    0x00007eff9c63f2d3:   sar    $0x10,%rax
   0.06%  │    0x00007eff9c63f2d7:   vmovq  %xmm12,%rbp
   0.01%  │    0x00007eff9c63f2dc:   sub    %rax,%rbp
   0.04%  │    0x00007eff9c63f2df:   vmovq  %rbp,%xmm12
   0.01%  │    0x00007eff9c63f2e4:   mov    0x1c8(%rsp),%rax
   0.07%  │    0x00007eff9c63f2ec:   shl    $0x14,%rax
   0.01%  │    0x00007eff9c63f2f0:   and    $0xfffffff,%rax
   0.03%  │    0x00007eff9c63f2f6:   vmovq  %xmm4,%rbp
   0.00%  │    0x00007eff9c63f2fb:   add    %rax,%rbp
   0.07%  │    0x00007eff9c63f2fe:   mov    %rbp,0xd8(%rsp)
   0.02%  │    0x00007eff9c63f306:   mov    0x1c8(%rsp),%rax
   0.04%  │    0x00007eff9c63f30e:   shl    $0x18,%rax
   0.00%  │    0x00007eff9c63f312:   and    $0xfffffff,%rax
   0.06%  │    0x00007eff9c63f318:   mov    %rax,0xe0(%rsp)
   0.02%  │    0x00007eff9c63f320:   mov    0x1c8(%rsp),%rax
   0.05%  │    0x00007eff9c63f328:   sar    $0x8,%rax
   0.01%  │    0x00007eff9c63f32c:   mov    %rax,0xe8(%rsp)
   0.07%  │    0x00007eff9c63f334:   mov    0x1a0(%rsp),%rax
   0.02%  │    0x00007eff9c63f33c:   shl    $0x8,%rax
   0.04%  │    0x00007eff9c63f340:   and    $0xfffffff,%rax
   0.00%  │    0x00007eff9c63f346:   mov    0x130(%rsp),%rbp
   0.06%  │    0x00007eff9c63f34e:   add    %rax,%rbp
   0.02%  │    0x00007eff9c63f351:   sub    %r10,%rbp
   0.04%  │    0x00007eff9c63f354:   add    0x198(%rsp),%rbp
   0.00%  │    0x00007eff9c63f35c:   sub    %r8,%rbp
   0.06%  │    0x00007eff9c63f35f:   add    %rbx,%rbp
   0.01%  │    0x00007eff9c63f362:   add    %rsi,%rbp
   0.05%  │    0x00007eff9c63f365:   add    %rdx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@1187 (line 194)
   0.01%  │    0x00007eff9c63f368:   vmovq  %rbp,%xmm3
   0.08%  │    0x00007eff9c63f36d:   mov    0x1a0(%rsp),%r10
   0.01%  │    0x00007eff9c63f375:   shl    $0xc,%r10
   0.05%  │    0x00007eff9c63f379:   and    $0xfffffff,%r10
   0.00%  │    0x00007eff9c63f380:   mov    0x1a0(%rsp),%r8
   0.06%  │    0x00007eff9c63f388:   sar    $0x14,%r8
   0.00%  │    0x00007eff9c63f38c:   mov    0x1a0(%rsp),%rax
   0.06%  │    0x00007eff9c63f394:   sar    $0x10,%rax
   0.00%  │    0x00007eff9c63f398:   mov    0x1a0(%rsp),%rbx
   0.08%  │    0x00007eff9c63f3a0:   shl    $0x14,%rbx
   0.01%  │    0x00007eff9c63f3a4:   and    $0xfffffff,%rbx
   0.04%  │    0x00007eff9c63f3ab:   mov    0x1a0(%rsp),%rdx             ;   {no_reloc}
   0.01%  │    0x00007eff9c63f3b3:   shl    $0x18,%rdx
   0.09%  │    0x00007eff9c63f3b7:   and    $0xfffffff,%rdx
   0.01%  │    0x00007eff9c63f3be:   mov    %rdx,0x130(%rsp)
   0.05%  │    0x00007eff9c63f3c6:   mov    0x1a0(%rsp),%rdx
   0.01%  │    0x00007eff9c63f3ce:   sar    $0x8,%rdx
   0.07%  │    0x00007eff9c63f3d2:   mov    %rdx,0x198(%rsp)
   0.01%  │    0x00007eff9c63f3da:   mov    0x1a0(%rsp),%rdx
   0.05%  │    0x00007eff9c63f3e2:   sar    $0x4,%rdx
   0.01%  │    0x00007eff9c63f3e6:   mov    %rdx,0xf0(%rsp)
   0.09%  │    0x00007eff9c63f3ee:   mov    0x1a8(%rsp),%rdx
   0.01%  │    0x00007eff9c63f3f6:   shl    $0x8,%rdx
   0.06%  │    0x00007eff9c63f3fa:   and    $0xfffffff,%rdx
   0.00%  │    0x00007eff9c63f401:   mov    0x138(%rsp),%rsi
   0.06%  │    0x00007eff9c63f409:   add    %rdx,%rsi
   0.02%  │    0x00007eff9c63f40c:   sub    %r10,%rsi
   0.04%  │    0x00007eff9c63f40f:   add    %r8,%rsi
   0.01%  │    0x00007eff9c63f412:   sub    0x190(%rsp),%rsi
   0.05%  │    0x00007eff9c63f41a:   add    %r11,%rsi
   0.02%  │    0x00007eff9c63f41d:   add    %rcx,%rsi
   0.05%  │    0x00007eff9c63f420:   add    %r9,%rsi
   0.00%  │    0x00007eff9c63f423:   add    %r13,%rsi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@1163 (line 192)
   0.06%  │    0x00007eff9c63f426:   vmovq  %rsi,%xmm4
   0.01%  │    0x00007eff9c63f42b:   mov    0x1a8(%rsp),%r10
   0.06%  │    0x00007eff9c63f433:   shl    $0xc,%r10
   0.00%  │    0x00007eff9c63f437:   and    $0xfffffff,%r10
   0.06%  │    0x00007eff9c63f43e:   mov    0x1a8(%rsp),%r11
   0.01%  │    0x00007eff9c63f446:   sar    $0x14,%r11
   0.04%  │    0x00007eff9c63f44a:   mov    0x1a8(%rsp),%rdx
   0.00%  │    0x00007eff9c63f452:   sar    $0x10,%rdx
   0.09%  │    0x00007eff9c63f456:   mov    0x1a8(%rsp),%r8
   0.00%  │    0x00007eff9c63f45e:   shl    $0x14,%r8
   0.05%  │    0x00007eff9c63f462:   and    $0xfffffff,%r8
   0.01%  │    0x00007eff9c63f469:   mov    %r8,0x138(%rsp)
   0.07%  │    0x00007eff9c63f471:   mov    0x1a8(%rsp),%r8
   0.01%  │    0x00007eff9c63f479:   shl    $0x18,%r8
   0.06%  │    0x00007eff9c63f47d:   and    $0xfffffff,%r8
   0.01%  │    0x00007eff9c63f484:   mov    %r8,0x190(%rsp)
   0.07%  │    0x00007eff9c63f48c:   mov    0x1a8(%rsp),%r8
   0.01%  │    0x00007eff9c63f494:   sar    $0x8,%r8
   0.05%  │    0x00007eff9c63f498:   mov    %r8,0xf8(%rsp)
   0.01%  │    0x00007eff9c63f4a0:   mov    0x1a8(%rsp),%r8
   0.05%  │    0x00007eff9c63f4a8:   sar    $0x4,%r8
   0.02%  │    0x00007eff9c63f4ac:   mov    %r8,0x100(%rsp)              ;   {no_reloc}
   0.05%  │    0x00007eff9c63f4b4:   mov    0x1b0(%rsp),%r8
   0.00%  │    0x00007eff9c63f4bc:   shl    $0x8,%r8
   0.07%  │    0x00007eff9c63f4c0:   and    $0xfffffff,%r8
   0.01%  │    0x00007eff9c63f4c7:   mov    0x140(%rsp),%r9
   0.05%  │    0x00007eff9c63f4cf:   add    %r8,%r9
   0.00%  │    0x00007eff9c63f4d2:   sub    %r10,%r9
   0.09%  │    0x00007eff9c63f4d5:   add    %r11,%r9
   0.01%  │    0x00007eff9c63f4d8:   sub    %rax,%r9
   0.04%  │    0x00007eff9c63f4db:   add    0x188(%rsp),%r9
   0.00%  │    0x00007eff9c63f4e3:   add    0x178(%rsp),%r9
   0.08%  │    0x00007eff9c63f4eb:   add    0x168(%rsp),%r9
   0.00%  │    0x00007eff9c63f4f3:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@1068 (line 183)
   0.06%  │    0x00007eff9c63f4f6:   vmovq  %r9,%xmm5
   0.02%  │    0x00007eff9c63f4fb:   mov    0x1b0(%rsp),%rcx
   0.05%  │    0x00007eff9c63f503:   shl    $0xc,%rcx
   0.01%  │    0x00007eff9c63f507:   and    $0xfffffff,%rcx
   0.05%  │    0x00007eff9c63f50e:   mov    0x1b0(%rsp),%rdi
   0.01%  │    0x00007eff9c63f516:   sar    $0x14,%rdi
   0.06%  │    0x00007eff9c63f51a:   mov    0x1b0(%rsp),%r10
   0.02%  │    0x00007eff9c63f522:   sar    $0x10,%r10
   0.05%  │    0x00007eff9c63f526:   mov    0x1b0(%rsp),%r11
   0.02%  │    0x00007eff9c63f52e:   shl    $0x14,%r11
   0.09%  │    0x00007eff9c63f532:   and    $0xfffffff,%r11
   0.01%  │    0x00007eff9c63f539:   mov    0x1b0(%rsp),%r8
   0.07%  │    0x00007eff9c63f541:   shl    $0x18,%r8
   0.01%  │    0x00007eff9c63f545:   and    $0xfffffff,%r8
   0.05%  │    0x00007eff9c63f54c:   mov    0x1b0(%rsp),%r9
   0.00%  │    0x00007eff9c63f554:   sar    $0x8,%r9
   0.02%  │    0x00007eff9c63f558:   mov    0x1b0(%rsp),%rsi
   0.02%  │    0x00007eff9c63f560:   sar    $0x4,%rsi
   0.05%  │    0x00007eff9c63f564:   mov    %rsi,0x140(%rsp)
   0.01%  │    0x00007eff9c63f56c:   mov    0x1b8(%rsp),%rsi
   0.05%  │    0x00007eff9c63f574:   shl    $0x8,%rsi
   0.01%  │    0x00007eff9c63f578:   and    $0xfffffff,%rsi
   0.04%  │    0x00007eff9c63f57f:   mov    0x148(%rsp),%rax
   0.01%  │    0x00007eff9c63f587:   add    %rsi,%rax
   0.04%  │    0x00007eff9c63f58a:   sub    %rcx,%rax
   0.01%  │    0x00007eff9c63f58d:   add    %rdi,%rax
   0.06%  │    0x00007eff9c63f590:   sub    %rdx,%rax
   0.02%  │    0x00007eff9c63f593:   add    %rbx,%rax
   0.10%  │    0x00007eff9c63f596:   add    0x170(%rsp),%rax
   0.00%  │    0x00007eff9c63f59e:   add    0x180(%rsp),%rax
   0.08%  │    0x00007eff9c63f5a6:   add    0xc8(%rsp),%rax              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@973 (line 174)
          │                                                              ;   {no_reloc}
   0.02%  │    0x00007eff9c63f5ae:   vmovq  %rax,%xmm6
   0.11%  │    0x00007eff9c63f5b3:   mov    0x1b8(%rsp),%rcx
   0.00%  │    0x00007eff9c63f5bb:   shl    $0xc,%rcx
   0.06%  │    0x00007eff9c63f5bf:   and    $0xfffffff,%rcx
   0.01%  │    0x00007eff9c63f5c6:   mov    0x1b8(%rsp),%rbx
   0.06%  │    0x00007eff9c63f5ce:   sar    $0x14,%rbx
          │    0x00007eff9c63f5d2:   mov    0x1b8(%rsp),%rdi
   0.07%  │    0x00007eff9c63f5da:   sar    $0x10,%rdi
   0.01%  │    0x00007eff9c63f5de:   mov    0x1b8(%rsp),%rdx
   0.05%  │    0x00007eff9c63f5e6:   shl    $0x14,%rdx
          │    0x00007eff9c63f5ea:   and    $0xfffffff,%rdx
   0.06%  │    0x00007eff9c63f5f1:   mov    0x1b8(%rsp),%rsi
   0.01%  │    0x00007eff9c63f5f9:   shl    $0x18,%rsi
   0.04%  │    0x00007eff9c63f5fd:   and    $0xfffffff,%rsi
          │    0x00007eff9c63f604:   mov    0x1b8(%rsp),%rax
   0.06%  │    0x00007eff9c63f60c:   sar    $0x8,%rax
   0.01%  │    0x00007eff9c63f610:   mov    0x1b8(%rsp),%rbp
   0.03%  │    0x00007eff9c63f618:   sar    $0x4,%rbp
          │    0x00007eff9c63f61c:   mov    0x1c0(%rsp),%r13
   0.06%  │    0x00007eff9c63f624:   shl    $0x8,%r13
   0.00%  │    0x00007eff9c63f628:   and    $0xfffffff,%r13
   0.06%  │    0x00007eff9c63f62f:   mov    0x150(%rsp),%r14
          │    0x00007eff9c63f637:   add    %r13,%r14
   0.07%  │    0x00007eff9c63f63a:   sub    %rcx,%r14
   0.00%  │    0x00007eff9c63f63d:   add    %rbx,%r14
   0.06%  │    0x00007eff9c63f640:   sub    %r10,%r14
          │    0x00007eff9c63f643:   add    0x138(%rsp),%r14
   0.10%  │    0x00007eff9c63f64b:   add    0x130(%rsp),%r14
   0.04%  │    0x00007eff9c63f653:   add    0x198(%rsp),%r14
   0.06%  │    0x00007eff9c63f65b:   add    0xc0(%rsp),%r14              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@878 (line 165)
   0.06%  │    0x00007eff9c63f663:   mov    0x1c0(%rsp),%r10
   0.05%  │    0x00007eff9c63f66b:   shl    $0xc,%r10
   0.00%  │    0x00007eff9c63f66f:   and    $0xfffffff,%r10
   0.00%  │    0x00007eff9c63f676:   vmovq  %xmm13,%rcx
   0.06%  │    0x00007eff9c63f67b:   sub    %r10,%rcx
   0.05%  │    0x00007eff9c63f67e:   mov    0x1c0(%rsp),%r10
   0.00%  │    0x00007eff9c63f686:   sar    $0x14,%r10
   0.00%  │    0x00007eff9c63f68a:   add    %r10,%rcx
   0.08%  │    0x00007eff9c63f68d:   sub    %rdi,%rcx
   0.08%  │    0x00007eff9c63f690:   add    %r11,%rcx
   0.03%  │    0x00007eff9c63f693:   add    0x190(%rsp),%rcx
   0.06%  │    0x00007eff9c63f69b:   add    0xf8(%rsp),%rcx
   0.07%  │    0x00007eff9c63f6a3:   add    0xf0(%rsp),%rcx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@783 (line 156)
   0.12%  │    0x00007eff9c63f6ab:   mov    0x1c0(%rsp),%r10             ;   {no_reloc}
   0.00%  │    0x00007eff9c63f6b3:   sar    $0x10,%r10
   0.00%  │    0x00007eff9c63f6b7:   mov    0x158(%rsp),%r11
   0.00%  │    0x00007eff9c63f6bf:   sub    %r10,%r11
   0.12%  │    0x00007eff9c63f6c2:   add    %rdx,%r11
   0.01%  │    0x00007eff9c63f6c5:   add    %r8,%r11
   0.02%  │    0x00007eff9c63f6c8:   add    %r9,%r11
   0.02%  │    0x00007eff9c63f6cb:   add    0x100(%rsp),%r11             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@688 (line 147)
   0.13%  │    0x00007eff9c63f6d3:   mov    %r11,%rbx
   0.00%  │    0x00007eff9c63f6d6:   mov    0x1c0(%rsp),%r10
   0.00%  │    0x00007eff9c63f6de:   shl    $0x14,%r10
   0.00%  │    0x00007eff9c63f6e2:   and    $0xfffffff,%r10
   0.11%  │    0x00007eff9c63f6e9:   vmovq  %xmm12,%r11
   0.00%  │    0x00007eff9c63f6ee:   add    %r10,%r11
   0.01%  │    0x00007eff9c63f6f1:   add    %rsi,%r11
   0.01%  │    0x00007eff9c63f6f4:   add    %rax,%r11
   0.12%  │    0x00007eff9c63f6f7:   add    0x140(%rsp),%r11             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@593 (line 138)
   0.02%  │    0x00007eff9c63f6ff:   mov    %r11,%rdi
   0.01%  │    0x00007eff9c63f702:   mov    0x1c0(%rsp),%r10
          │    0x00007eff9c63f70a:   shl    $0x18,%r10
   0.10%  │    0x00007eff9c63f70e:   and    $0xfffffff,%r10
   0.02%  │    0x00007eff9c63f715:   mov    0xd8(%rsp),%r8
   0.00%  │    0x00007eff9c63f71d:   add    %r10,%r8
          │    0x00007eff9c63f720:   mov    0x1c0(%rsp),%r10
   0.12%  │    0x00007eff9c63f728:   sar    $0x8,%r10
   0.02%  │    0x00007eff9c63f72c:   add    %r10,%r8
   0.00%  │    0x00007eff9c63f72f:   add    %rbp,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@498 (line 129)
   0.02%  │    0x00007eff9c63f732:   mov    0x1c0(%rsp),%r10
   0.10%  │    0x00007eff9c63f73a:   sar    $0x4,%r10
   0.01%  │    0x00007eff9c63f73e:   mov    0x1e0(%rsp),%r11
   0.01%  │    0x00007eff9c63f746:   sar    $0x14,%r11
   0.02%  │    0x00007eff9c63f74a:   vmovq  %xmm9,%r9
   0.08%  │    0x00007eff9c63f74f:   add    %r11,%r9
   0.01%  │    0x00007eff9c63f752:   sub    0xd0(%rsp),%r9
   0.01%  │    0x00007eff9c63f75a:   add    0x160(%rsp),%r9
   0.06%  │    0x00007eff9c63f762:   add    0xe0(%rsp),%r9
   0.11%  │    0x00007eff9c63f76a:   add    0xe8(%rsp),%r9
   0.06%  │    0x00007eff9c63f772:   add    %r10,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@403 (line 120)
   0.07%  │    0x00007eff9c63f775:   vmovsd %xmm3,(%rsp)
   0.00%  │    0x00007eff9c63f77a:   vmovsd %xmm4,0x8(%rsp)
   0.03%  │    0x00007eff9c63f780:   vmovsd %xmm5,0x10(%rsp)
   0.04%  │    0x00007eff9c63f786:   vmovsd %xmm6,0x18(%rsp)
   0.06%  │    0x00007eff9c63f78c:   mov    %r14,0x20(%rsp)
   0.11%  │    0x00007eff9c63f791:   mov    %rcx,0x28(%rsp)
   0.10%  │    0x00007eff9c63f796:   mov    %rbx,0x30(%rsp)
   0.09%  │    0x00007eff9c63f79b:   mov    %rdi,0x38(%rsp)
   0.03%  │    0x00007eff9c63f7a0:   mov    %r8,0x40(%rsp)
   0.05%  │    0x00007eff9c63f7a5:   mov    %r9,0x48(%rsp)
   0.10%  │    0x00007eff9c63f7aa:   xor    %r10d,%r10d                  ;   {no_reloc}
          │    0x00007eff9c63f7ad:   mov    %r10,0x50(%rsp)
   0.03%  │    0x00007eff9c63f7b2:   vmovsd %xmm2,0x58(%rsp)
   0.04%  │    0x00007eff9c63f7b8:   vmovsd %xmm1,0x60(%rsp)
   0.06%  │    0x00007eff9c63f7be:   vmovsd %xmm0,0x68(%rsp)
   0.11%  │    0x00007eff9c63f7c4:   mov    0x1a0(%rsp),%r10
   0.00%  │    0x00007eff9c63f7cc:   mov    %r10,0x70(%rsp)
   0.11%  │    0x00007eff9c63f7d1:   mov    0x1a8(%rsp),%r10
   0.01%  │    0x00007eff9c63f7d9:   mov    %r10,0x78(%rsp)
   0.12%  │    0x00007eff9c63f7de:   mov    0x1b0(%rsp),%r10
   0.01%  │    0x00007eff9c63f7e6:   mov    %r10,0x80(%rsp)
   0.09%  │    0x00007eff9c63f7ee:   mov    0x1b8(%rsp),%r10
   0.01%  │    0x00007eff9c63f7f6:   mov    %r10,0x88(%rsp)
   0.11%  │    0x00007eff9c63f7fe:   mov    0x1c0(%rsp),%r10
   0.00%  │    0x00007eff9c63f806:   mov    %r10,0x90(%rsp)
   0.08%  │    0x00007eff9c63f80e:   mov    0x1c8(%rsp),%r10
   0.02%  │    0x00007eff9c63f816:   mov    %r10,0x98(%rsp)
   0.14%  │    0x00007eff9c63f81e:   mov    0x1d0(%rsp),%r10
   0.00%  │    0x00007eff9c63f826:   mov    %r10,0xa0(%rsp)
   0.11%  │    0x00007eff9c63f82e:   mov    0x1d8(%rsp),%r10
   0.01%  │    0x00007eff9c63f836:   mov    %r10,0xa8(%rsp)
   0.10%  │    0x00007eff9c63f83e:   mov    0x1e0(%rsp),%r10
   0.01%  │    0x00007eff9c63f846:   mov    %r10,0xb0(%rsp)
   0.14%  │    0x00007eff9c63f84e:   xor    %r10d,%r10d
   0.01%  │    0x00007eff9c63f851:   mov    %r10,0xb8(%rsp)
   0.11%  │    0x00007eff9c63f859:   vmovq  %xmm7,%rsi
   0.00%  │    0x00007eff9c63f85e:   vmovq  %xmm8,%rdx
          │    0x00007eff9c63f863:   vmovq  %xmm15,%rcx
   0.02%  │    0x00007eff9c63f868:   vmovq  %xmm11,%r8
   0.12%  │    0x00007eff9c63f86d:   vmovq  %xmm10,%r9
   0.00%  │    0x00007eff9c63f872:   vmovq  %xmm14,%rdi
          │    0x00007eff9c63f877:   call   0x00007eff9c0c4380           ; ImmutableOopMap {}
          │                                                              ;*invokevirtual carryReduce0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@1296 (line 201)
          │                                                              ;   {optimized virtual_call}
   0.03%  │    0x00007eff9c63f87c:   nopl   0xc6c(%rax,%rax,1)           ;   {other}
   0.02%  │    0x00007eff9c63f884:   add    $0x120,%rsp
   0.06%  │    0x00007eff9c63f88b:   pop    %rbp
   0.05%  │ ↗  0x00007eff9c63f88c:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭│  0x00007eff9c63f893:   ja     0x00007eff9c63f8aa
   0.08%  │││  0x00007eff9c63f899:   ret                                 ;*invokevirtual carryReduce0 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@1296 (line 201)
          │││  0x00007eff9c63f89a:   mov    %rax,%rsi
          │││  0x00007eff9c63f89d:   add    $0x120,%rsp
          │││  0x00007eff9c63f8a4:   pop    %rbp
          │││  0x00007eff9c63f8a5:   jmp    0x00007eff9c19d580           ;   {runtime_call _rethrow_Java}
          │↘╰  0x00007eff9c63f8aa:   movabs $0x7eff9c63f88c,%r10         ;   {internal_word}
          │    0x00007eff9c63f8b4:   mov    %r10,0x468(%r15)
          │    0x00007eff9c63f8bb:   jmp    0x00007eff9c0cb000           ;   {runtime_call SafepointBlob}
          ↘    0x00007eff9c63f8c0:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
               0x00007eff9c63f8c5:   jmp    0x00007eff9c63edde
....................................................................................................
  20.43%  <total for region 2>

....[Hottest Regions]...............................................................................
  33.06%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::mult, version 2, compile id 643 
  20.43%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce, version 2, compile id 629 
   7.49%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce0, version 2, compile id 616 
   3.10%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier::lookup, version 2, compile id 742 
   3.07%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce, version 2, compile id 628 
   2.80%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::square, version 2, compile id 689 
   2.74%         c2, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 747 
   2.58%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   2.19%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::carryReduce0, version 2, compile id 725 
   2.12%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::square, version 2, compile id 689 
   1.63%         c2, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 747 
   1.57%         c2, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 747 
   1.22%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::carryReduce, version 2, compile id 724 
   1.22%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::carryReduce0, version 2, compile id 725 
   1.09%         c2, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 747 
   1.01%              kernel  [unknown] 
   0.74%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::square, version 2, compile id 737 
   0.70%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::carryReduce2, version 2, compile id 696 
   0.67%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::carryReduce1, version 2, compile id 726 
   0.58%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::mult, version 2, compile id 762 
  10.00%  <...other 826 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  33.06%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::mult, version 2, compile id 643 
  20.43%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce, version 2, compile id 629 
   8.47%         c2, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 747 
   7.49%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce0, version 2, compile id 616 
   5.24%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::square, version 2, compile id 689 
   3.41%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::carryReduce0, version 2, compile id 725 
   3.31%         c2, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 807 
   3.10%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier::lookup, version 2, compile id 742 
   3.07%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce, version 2, compile id 628 
   2.58%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.98%              kernel  [unknown] 
   1.70%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::mult, version 2, compile id 762 
   1.28%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::square, version 2, compile id 737 
   1.22%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::carryReduce, version 2, compile id 724 
   0.78%         c2, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 4, compile id 893 
   0.70%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::carryReduce2, version 2, compile id 696 
   0.67%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::carryReduce1, version 2, compile id 726 
   0.37%         c2, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 1002 
   0.18%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier$Default::pointMultiply, version 3, compile id 1072 
   0.07%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial::setLimbsValuePositive, version 2, compile id 1041 
   0.87%  <...other 105 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.06%         c2, level 4
   2.66%        runtime stub
   1.98%              kernel
   0.12%           libjvm.so
   0.06%        libc-2.31.so
   0.03%         interpreter
   0.03%                    
   0.02%  libpthread-2.31.so
   0.01%              [vdso]
   0.01%      hsdis-amd64.so
   0.01%    perf-1934001.map
   0.01%          ld-2.31.so
   0.00%         c1, level 3
   0.00%      libz.so.1.2.11
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign
# Parameters: (algorithm = secp384r1, messageLength = 2048)

# Run progress: 50.00% complete, ETA 00:11:17
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5901.304 us/op
# Warmup Iteration   2: 2117.741 us/op
# Warmup Iteration   3: 2105.114 us/op
# Warmup Iteration   4: 2103.246 us/op
# Warmup Iteration   5: 2101.489 us/op
Iteration   1: 2101.515 us/op
Iteration   2: 2101.918 us/op
Iteration   3: 2101.247 us/op
Iteration   4: 2101.633 us/op
Iteration   5: 2101.550 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign":
  2101.573 ±(99.9%) 0.930 us/op [Average]
  (min, avg, max) = (2101.247, 2101.573, 2101.918), stdev = 0.242
  CI (99.9%): [2100.643, 2102.503] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign:asm":
PrintAssembly processed: 319797 total address lines.
Perf output processed (skipped 56.939 seconds):
 Column 1: cycles (50554 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, sun.security.util.math.intpoly.IntegerPolynomialP384::mult, version 2, compile id 650 

             # parm2:    r8:r8     = &apos;[J&apos;
             #           [sp+0x490]  (sp of caller)
             0x00007fbd50641a60:   mov    0x8(%rsi),%r10d
             0x00007fbd50641a64:   movabs $0x7fbccf000000,%r11
             0x00007fbd50641a6e:   add    %r11,%r10
             0x00007fbd50641a71:   cmp    %r10,%rax
             0x00007fbd50641a74:   jne    0x00007fbd500c4080           ;   {runtime_call ic_miss_stub}
             0x00007fbd50641a7a:   xchg   %ax,%ax
             0x00007fbd50641a7c:   nopl   0x0(%rax)
           [Verified Entry Point]
   0.05%     0x00007fbd50641a80:   mov    %eax,-0x14000(%rsp)
   0.11%     0x00007fbd50641a87:   push   %rbp
   0.03%     0x00007fbd50641a88:   sub    $0x480,%rsp
   0.03%     0x00007fbd50641a8f:   nop
   0.07%     0x00007fbd50641a90:   cmpl   $0x0,0x20(%r15)
   0.04%     0x00007fbd50641a98:   jne    0x00007fbd50642f7a           ;*synchronization entry
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@-1 (line 379)
   0.02%     0x00007fbd50641a9e:   vmovq  %r8,%xmm0
   0.01%     0x00007fbd50641aa3:   mov    0xc(%rdx),%r10d              ; implicit exception: dispatches to 0x00007fbd50642f3c
   0.04%     0x00007fbd50641aa7:   cmp    $0xd,%r10d
          ╭  0x00007fbd50641aab:   jbe    0x00007fbd50642ec6
   0.02%  │  0x00007fbd50641ab1:   mov    0xc(%rcx),%r11d              ; implicit exception: dispatches to 0x00007fbd50642f50
   0.02%  │  0x00007fbd50641ab5:   mov    0x10(%rdx),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@2 (line 379)
   0.02%  │  0x00007fbd50641ab9:   nopl   0x0(%rax)
   0.05%  │  0x00007fbd50641ac0:   cmp    $0xd,%r11d
          │  0x00007fbd50641ac4:   jbe    0x00007fbd50642ef4
   0.04%  │  0x00007fbd50641aca:   vmovq  %rsi,%xmm13
   0.01%  │  0x00007fbd50641acf:   vmovq  %rcx,%xmm1
   0.01%  │  0x00007fbd50641ad4:   mov    0x10(%rcx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@5 (line 379)
   0.05%  │  0x00007fbd50641ad8:   mov    0x18(%rdx),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@18 (line 380)
   0.02%  │  0x00007fbd50641adc:   vmovq  %r10,%xmm9
   0.01%  │  0x00007fbd50641ae1:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@6 (line 379)
   0.01%  │  0x00007fbd50641ae5:   vmovq  %r10,%xmm14
   0.05%  │  0x00007fbd50641aea:   mov    %r11,%rdi
   0.01%  │  0x00007fbd50641aed:   mov    %r8,0xb8(%rsp)
   0.02%  │  0x00007fbd50641af5:   imul   %r8,%rdi
   0.01%  │  0x00007fbd50641af9:   mov    0x20(%rdx),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@43 (line 381)
   0.07%  │  0x00007fbd50641afd:   mov    0x28(%rdx),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@76 (line 382)
   0.02%  │  0x00007fbd50641b01:   mov    %r11,%rsi
   0.01%  │  0x00007fbd50641b04:   mov    %r10,0xc0(%rsp)
   0.01%  │  0x00007fbd50641b0c:   imul   %r10,%rsi
   0.06%  │  0x00007fbd50641b10:   mov    %r11,%r10
   0.01%  │  0x00007fbd50641b13:   mov    %r8,0xc8(%rsp)
   0.01%  │  0x00007fbd50641b1b:   imul   %r8,%r11
   0.01%  │  0x00007fbd50641b1f:   mov    %r11,0xd0(%rsp)
   0.06%  │  0x00007fbd50641b27:   mov    0x30(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@117 (line 383)
   0.01%  │  0x00007fbd50641b2b:   mov    %r11,0xd8(%rsp)
   0.02%  │  0x00007fbd50641b33:   mov    0x38(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@166 (line 384)
   0.01%  │  0x00007fbd50641b37:   mov    %r11,0xe0(%rsp)
   0.06%  │  0x00007fbd50641b3f:   mov    %r10,%r13
   0.01%  │  0x00007fbd50641b42:   imul   0xd8(%rsp),%r13
   0.15%  │  0x00007fbd50641b4b:   mov    %r10,%r11
   0.01%  │  0x00007fbd50641b4e:   imul   0xe0(%rsp),%r11
   0.10%  │  0x00007fbd50641b57:   mov    %r11,0xe8(%rsp)
   0.14%  │  0x00007fbd50641b5f:   mov    0x40(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@225 (line 385)
   0.01%  │  0x00007fbd50641b63:   mov    %r11,0xf0(%rsp)
   0.00%  │  0x00007fbd50641b6b:   mov    0x48(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@294 (line 386)
   0.00%  │  0x00007fbd50641b6f:   mov    %r11,0xf8(%rsp)              ;   {no_reloc}
   0.10%  │  0x00007fbd50641b77:   mov    %r10,%r11
   0.01%  │  0x00007fbd50641b7a:   imul   0xf0(%rsp),%r11
   0.02%  │  0x00007fbd50641b83:   mov    %r11,0x100(%rsp)
   0.09%  │  0x00007fbd50641b8b:   mov    %r10,%r11
   0.02%  │  0x00007fbd50641b8e:   imul   0xf8(%rsp),%r11
   0.05%  │  0x00007fbd50641b97:   mov    %r11,0x108(%rsp)
   0.10%  │  0x00007fbd50641b9f:   mov    0x50(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@373 (line 387)
   0.03%  │  0x00007fbd50641ba3:   mov    %r11,0x110(%rsp)
   0.01%  │  0x00007fbd50641bab:   mov    0x58(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@462 (line 388)
   0.00%  │  0x00007fbd50641baf:   mov    %r11,0x118(%rsp)
   0.05%  │  0x00007fbd50641bb7:   mov    %r10,%r11
   0.02%  │  0x00007fbd50641bba:   imul   0x110(%rsp),%r11
   0.07%  │  0x00007fbd50641bc3:   mov    %r11,0x120(%rsp)
   0.11%  │  0x00007fbd50641bcb:   mov    %r10,%r11
   0.02%  │  0x00007fbd50641bce:   imul   0x118(%rsp),%r11
   0.03%  │  0x00007fbd50641bd7:   mov    %r11,0x128(%rsp)
   0.06%  │  0x00007fbd50641bdf:   mov    0x60(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@561 (line 389)
   0.03%  │  0x00007fbd50641be3:   mov    %r11,0x130(%rsp)
   0.01%  │  0x00007fbd50641beb:   mov    0x68(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@670 (line 390)
   0.01%  │  0x00007fbd50641bef:   mov    %r11,0x138(%rsp)
   0.05%  │  0x00007fbd50641bf7:   mov    %r10,%r11
   0.04%  │  0x00007fbd50641bfa:   imul   0x130(%rsp),%r11
   0.04%  │  0x00007fbd50641c03:   mov    %r11,0x140(%rsp)
   0.07%  │  0x00007fbd50641c0b:   mov    %r10,%r11
   0.03%  │  0x00007fbd50641c0e:   imul   0x138(%rsp),%r11
   0.07%  │  0x00007fbd50641c17:   mov    %r11,0x148(%rsp)
   0.09%  │  0x00007fbd50641c1f:   mov    0x70(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@789 (line 391)
   0.02%  │  0x00007fbd50641c23:   mov    %r11,0x150(%rsp)
   0.02%  │  0x00007fbd50641c2b:   mov    0x78(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@918 (line 392)
   0.01%  │  0x00007fbd50641c2f:   mov    %r11,0x158(%rsp)
   0.07%  │  0x00007fbd50641c37:   mov    %r10,%r11
   0.02%  │  0x00007fbd50641c3a:   imul   0x150(%rsp),%r11
   0.07%  │  0x00007fbd50641c43:   mov    %r11,0x160(%rsp)
   0.10%  │  0x00007fbd50641c4b:   imul   0x158(%rsp),%r10
   0.04%  │  0x00007fbd50641c54:   mov    %r10,0x168(%rsp)
   0.07%  │  0x00007fbd50641c5c:   mov    0x18(%rcx),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@14 (line 380)
   0.01%  │  0x00007fbd50641c60:   vmovq  %xmm1,%r10
   0.04%  │  0x00007fbd50641c65:   mov    0x20(%r10),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@31 (line 381)
   0.02%  │  0x00007fbd50641c69:   mov    %rcx,%r10
   0.08%  │  0x00007fbd50641c6c:   imul   0x158(%rsp),%r10             ;   {no_reloc}
   0.01%  │  0x00007fbd50641c75:   mov    %r10,0x170(%rsp)
   0.05%  │  0x00007fbd50641c7d:   mov    %r8,%r10
   0.01%  │  0x00007fbd50641c80:   imul   0x158(%rsp),%r10
   0.04%  │  0x00007fbd50641c89:   mov    %r10,0x178(%rsp)
   0.03%  │  0x00007fbd50641c91:   mov    %r8,%r10
   0.03%  │  0x00007fbd50641c94:   imul   0x150(%rsp),%r10
   0.01%  │  0x00007fbd50641c9d:   mov    %r10,0x180(%rsp)
   0.04%  │  0x00007fbd50641ca5:   mov    %r8,%r10
   0.02%  │  0x00007fbd50641ca8:   imul   0x138(%rsp),%r10
   0.04%  │  0x00007fbd50641cb1:   mov    %r10,0x188(%rsp)
   0.02%  │  0x00007fbd50641cb9:   mov    %r8,%r10
   0.02%  │  0x00007fbd50641cbc:   imul   0x130(%rsp),%r10
   0.02%  │  0x00007fbd50641cc5:   mov    %r10,0x190(%rsp)
   0.04%  │  0x00007fbd50641ccd:   mov    %r8,%r10
   0.02%  │  0x00007fbd50641cd0:   imul   0x118(%rsp),%r10
   0.03%  │  0x00007fbd50641cd9:   mov    %r10,0x198(%rsp)
   0.02%  │  0x00007fbd50641ce1:   mov    %r8,%r10
   0.01%  │  0x00007fbd50641ce4:   imul   0x110(%rsp),%r10
   0.01%  │  0x00007fbd50641ced:   mov    %r10,0x1a0(%rsp)
   0.05%  │  0x00007fbd50641cf5:   mov    %r8,%r10
   0.00%  │  0x00007fbd50641cf8:   imul   0xf8(%rsp),%r10
   0.02%  │  0x00007fbd50641d01:   mov    %r10,0x1a8(%rsp)
   0.06%  │  0x00007fbd50641d09:   mov    %r8,%r10
   0.02%  │  0x00007fbd50641d0c:   imul   0xf0(%rsp),%r10
   0.01%  │  0x00007fbd50641d15:   mov    %r10,0x1b0(%rsp)
   0.06%  │  0x00007fbd50641d1d:   mov    %r8,%r10
   0.01%  │  0x00007fbd50641d20:   imul   0xe0(%rsp),%r10
   0.01%  │  0x00007fbd50641d29:   mov    %r10,0x1b8(%rsp)
   0.06%  │  0x00007fbd50641d31:   mov    %r8,%r10
   0.01%  │  0x00007fbd50641d34:   imul   0xd8(%rsp),%r10
   0.01%  │  0x00007fbd50641d3d:   mov    %r10,0x1c0(%rsp)
   0.04%  │  0x00007fbd50641d45:   mov    %r8,%r10
   0.01%  │  0x00007fbd50641d48:   imul   0xc8(%rsp),%r10
   0.02%  │  0x00007fbd50641d51:   mov    %r10,0x1c8(%rsp)
   0.07%  │  0x00007fbd50641d59:   mov    %r8,%r10
   0.01%  │  0x00007fbd50641d5c:   imul   0xc0(%rsp),%r10
   0.00%  │  0x00007fbd50641d65:   mov    0xb8(%rsp),%r11
   0.02%  │  0x00007fbd50641d6d:   imul   %r8,%r11
   0.06%  │  0x00007fbd50641d71:   vmovq  %xmm9,%r9                    ;   {no_reloc}
   0.01%  │  0x00007fbd50641d76:   imul   %r8,%r9
          │  0x00007fbd50641d7a:   mov    %r9,%rax
   0.02%  │  0x00007fbd50641d7d:   mov    %rcx,%r8
   0.05%  │  0x00007fbd50641d80:   imul   0x150(%rsp),%r8
   0.01%  │  0x00007fbd50641d89:   mov    %r8,0x1d0(%rsp)
   0.16%  │  0x00007fbd50641d91:   mov    %rcx,%r8
   0.00%  │  0x00007fbd50641d94:   imul   0x138(%rsp),%r8
          │  0x00007fbd50641d9d:   mov    %r8,0x1d8(%rsp)
   0.09%  │  0x00007fbd50641da5:   mov    %rcx,%r8
   0.00%  │  0x00007fbd50641da8:   imul   0x130(%rsp),%r8
   0.01%  │  0x00007fbd50641db1:   mov    %r8,0x1e0(%rsp)
   0.12%  │  0x00007fbd50641db9:   mov    %rcx,%r8
          │  0x00007fbd50641dbc:   imul   0x118(%rsp),%r8
          │  0x00007fbd50641dc5:   mov    %r8,0x1e8(%rsp)
   0.15%  │  0x00007fbd50641dcd:   mov    %rcx,%r8
          │  0x00007fbd50641dd0:   imul   0x110(%rsp),%r8
   0.01%  │  0x00007fbd50641dd9:   mov    %r8,0x1f0(%rsp)
   0.13%  │  0x00007fbd50641de1:   mov    %rcx,%r8
          │  0x00007fbd50641de4:   imul   0xf8(%rsp),%r8
   0.01%  │  0x00007fbd50641ded:   mov    %r8,0x1f8(%rsp)
   0.10%  │  0x00007fbd50641df5:   mov    %rcx,%r8
          │  0x00007fbd50641df8:   imul   0xf0(%rsp),%r8
   0.00%  │  0x00007fbd50641e01:   mov    %r8,0x200(%rsp)
   0.12%  │  0x00007fbd50641e09:   mov    %rcx,%rdx
   0.00%  │  0x00007fbd50641e0c:   imul   0xe0(%rsp),%rdx
          │  0x00007fbd50641e15:   mov    %rcx,%r8
   0.00%  │  0x00007fbd50641e18:   imul   0xd8(%rsp),%r8
   0.09%  │  0x00007fbd50641e21:   mov    %r8,0x208(%rsp)
   0.09%  │  0x00007fbd50641e29:   mov    %rcx,%r8
          │  0x00007fbd50641e2c:   imul   0xc8(%rsp),%r8
          │  0x00007fbd50641e35:   mov    %rcx,%r9
          │  0x00007fbd50641e38:   imul   0xc0(%rsp),%r9
   0.11%  │  0x00007fbd50641e41:   mov    %rcx,%rbx
          │  0x00007fbd50641e44:   imul   0xb8(%rsp),%rbx
   0.00%  │  0x00007fbd50641e4d:   add    %rbx,%rax
   0.06%  │  0x00007fbd50641e50:   add    %rsi,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@48 (line 381)
   0.13%  │  0x00007fbd50641e53:   vmovq  %rax,%xmm15
   0.23%  │  0x00007fbd50641e58:   vmovq  %xmm9,%rbx
          │  0x00007fbd50641e5d:   imul   %rcx,%rbx
          │  0x00007fbd50641e61:   add    %rdi,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@23 (line 380)
          │  0x00007fbd50641e64:   mov    %rbx,0x210(%rsp)
   0.10%  │  0x00007fbd50641e6c:   vmovq  %xmm1,%rcx                   ;   {no_reloc}
          │  0x00007fbd50641e71:   mov    0x28(%rcx),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@56 (line 382)
   0.01%  │  0x00007fbd50641e75:   vmovq  %xmm1,%rbx
          │  0x00007fbd50641e7a:   mov    0x30(%rbx),%rdi              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@89 (line 383)
   0.10%  │  0x00007fbd50641e7e:   mov    %rcx,%rbx
          │  0x00007fbd50641e81:   imul   0x158(%rsp),%rbx
   0.01%  │  0x00007fbd50641e8a:   mov    %rbx,0x218(%rsp)
   0.01%  │  0x00007fbd50641e92:   mov    %rdi,%rbx
   0.09%  │  0x00007fbd50641e95:   imul   0x158(%rsp),%rbx
          │  0x00007fbd50641e9e:   mov    %rbx,0x220(%rsp)
   0.01%  │  0x00007fbd50641ea6:   mov    %rdi,%rbx
   0.00%  │  0x00007fbd50641ea9:   imul   0x150(%rsp),%rbx
   0.10%  │  0x00007fbd50641eb2:   mov    %rbx,0x228(%rsp)
   0.01%  │  0x00007fbd50641eba:   mov    %rdi,%rbx
          │  0x00007fbd50641ebd:   imul   0x138(%rsp),%rbx
   0.00%  │  0x00007fbd50641ec6:   mov    %rbx,0x230(%rsp)
   0.11%  │  0x00007fbd50641ece:   mov    %rdi,%rbx
          │  0x00007fbd50641ed1:   imul   0x130(%rsp),%rbx
          │  0x00007fbd50641eda:   mov    %rbx,0x238(%rsp)
   0.04%  │  0x00007fbd50641ee2:   mov    %rdi,%rbx
   0.06%  │  0x00007fbd50641ee5:   imul   0x118(%rsp),%rbx
          │  0x00007fbd50641eee:   mov    %rbx,0x240(%rsp)
   0.03%  │  0x00007fbd50641ef6:   mov    %rdi,%rbx
   0.00%  │  0x00007fbd50641ef9:   imul   0x110(%rsp),%rbx
   0.09%  │  0x00007fbd50641f02:   mov    %rbx,0x248(%rsp)
   0.02%  │  0x00007fbd50641f0a:   mov    %rdi,%rbx
          │  0x00007fbd50641f0d:   imul   0xf8(%rsp),%rbx
          │  0x00007fbd50641f16:   mov    %rbx,0x250(%rsp)
   0.10%  │  0x00007fbd50641f1e:   mov    %rdi,%rbx
          │  0x00007fbd50641f21:   imul   0xf0(%rsp),%rbx
          │  0x00007fbd50641f2a:   mov    %rbx,0x258(%rsp)
   0.09%  │  0x00007fbd50641f32:   mov    %rdi,%rbx
   0.01%  │  0x00007fbd50641f35:   imul   0xe0(%rsp),%rbx
          │  0x00007fbd50641f3e:   mov    %rbx,0x260(%rsp)
   0.08%  │  0x00007fbd50641f46:   mov    %rdi,%rbx
          │  0x00007fbd50641f49:   imul   0xd8(%rsp),%rbx
   0.02%  │  0x00007fbd50641f52:   mov    %rbx,0x268(%rsp)
   0.08%  │  0x00007fbd50641f5a:   mov    0xc8(%rsp),%rbx
          │  0x00007fbd50641f62:   imul   %rdi,%rbx
          │  0x00007fbd50641f66:   mov    %rbx,0x270(%rsp)
   0.13%  │  0x00007fbd50641f6e:   mov    0xc0(%rsp),%rsi              ;   {no_reloc}
   0.00%  │  0x00007fbd50641f76:   imul   %rdi,%rsi
          │  0x00007fbd50641f7a:   mov    0xb8(%rsp),%rax
          │  0x00007fbd50641f82:   imul   %rdi,%rax
   0.07%  │  0x00007fbd50641f86:   vmovq  %xmm9,%rbx
          │  0x00007fbd50641f8b:   imul   %rdi,%rbx
          │  0x00007fbd50641f8f:   mov    %rcx,%rdi
          │  0x00007fbd50641f92:   imul   0x150(%rsp),%rdi
   0.10%  │  0x00007fbd50641f9b:   mov    %rdi,0x278(%rsp)
   0.12%  │  0x00007fbd50641fa3:   mov    %rcx,%rdi
          │  0x00007fbd50641fa6:   imul   0x138(%rsp),%rdi
          │  0x00007fbd50641faf:   mov    %rdi,0x280(%rsp)
   0.10%  │  0x00007fbd50641fb7:   mov    %rcx,%rdi
          │  0x00007fbd50641fba:   imul   0x130(%rsp),%rdi
          │  0x00007fbd50641fc3:   mov    %rdi,0x288(%rsp)
   0.09%  │  0x00007fbd50641fcb:   mov    %rcx,%rdi
          │  0x00007fbd50641fce:   imul   0x118(%rsp),%rdi
          │  0x00007fbd50641fd7:   mov    %rdi,0x290(%rsp)
   0.14%  │  0x00007fbd50641fdf:   mov    %rcx,%rdi
          │  0x00007fbd50641fe2:   imul   0x110(%rsp),%rdi
          │  0x00007fbd50641feb:   mov    %rdi,0x298(%rsp)
   0.12%  │  0x00007fbd50641ff3:   mov    %rcx,%rdi
          │  0x00007fbd50641ff6:   imul   0xf8(%rsp),%rdi
          │  0x00007fbd50641fff:   mov    %rdi,0x2a0(%rsp)
   0.07%  │  0x00007fbd50642007:   mov    %rcx,%rdi
   0.02%  │  0x00007fbd5064200a:   imul   0xf0(%rsp),%rdi
          │  0x00007fbd50642013:   mov    %rdi,0x2a8(%rsp)
   0.08%  │  0x00007fbd5064201b:   mov    %rcx,%rdi
          │  0x00007fbd5064201e:   imul   0xe0(%rsp),%rdi
   0.01%  │  0x00007fbd50642027:   mov    %rdi,0x2b0(%rsp)
   0.11%  │  0x00007fbd5064202f:   mov    %rcx,%rdi
          │  0x00007fbd50642032:   imul   0xd8(%rsp),%rdi
          │  0x00007fbd5064203b:   mov    %rdi,0x2b8(%rsp)
   0.12%  │  0x00007fbd50642043:   mov    %rcx,%rbp
          │  0x00007fbd50642046:   imul   0xc8(%rsp),%rbp
          │  0x00007fbd5064204f:   mov    0xc0(%rsp),%r14
          │  0x00007fbd50642057:   imul   %rcx,%r14
   0.09%  │  0x00007fbd5064205b:   mov    0xb8(%rsp),%rdi
          │  0x00007fbd50642063:   imul   %rcx,%rdi
          │  0x00007fbd50642067:   add    %rdi,%rbx
   0.10%  │  0x00007fbd5064206a:   add    %r10,%rbx
   0.55%  │  0x00007fbd5064206d:   add    %r8,%rbx                     ;   {no_reloc}
          │  0x00007fbd50642070:   add    %r13,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@122 (line 383)
          │  0x00007fbd50642073:   vmovq  %rbx,%xmm2
   0.00%  │  0x00007fbd50642078:   vmovq  %xmm9,%r10
   0.09%  │  0x00007fbd5064207d:   imul   %rcx,%r10
          │  0x00007fbd50642081:   add    %r11,%r10
          │  0x00007fbd50642084:   add    %r9,%r10
   0.00%  │  0x00007fbd50642087:   add    0xd0(%rsp),%r10              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@81 (line 382)
   0.11%  │  0x00007fbd5064208f:   mov    %r10,0xd0(%rsp)
          │  0x00007fbd50642097:   vmovq  %xmm1,%r10
          │  0x00007fbd5064209c:   mov    0x38(%r10),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@130 (line 384)
          │  0x00007fbd506420a0:   vmovq  %xmm1,%r11
   0.11%  │  0x00007fbd506420a5:   mov    0x40(%r11),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@180 (line 385)
          │  0x00007fbd506420a9:   mov    %r10,%r11
          │  0x00007fbd506420ac:   imul   0x158(%rsp),%r11
   0.01%  │  0x00007fbd506420b5:   mov    %r11,0x2c0(%rsp)
   0.10%  │  0x00007fbd506420bd:   mov    %rcx,%r11
   0.00%  │  0x00007fbd506420c0:   imul   0x158(%rsp),%r11
          │  0x00007fbd506420c9:   mov    %r11,0x2c8(%rsp)
   0.00%  │  0x00007fbd506420d1:   mov    %rcx,%r11
   0.12%  │  0x00007fbd506420d4:   imul   0x150(%rsp),%r11
   0.01%  │  0x00007fbd506420dd:   mov    %r11,0x2d0(%rsp)
   0.00%  │  0x00007fbd506420e5:   mov    %rcx,%r11
   0.00%  │  0x00007fbd506420e8:   imul   0x138(%rsp),%r11
   0.11%  │  0x00007fbd506420f1:   mov    %r11,0x2d8(%rsp)
   0.00%  │  0x00007fbd506420f9:   mov    %rcx,%r11
          │  0x00007fbd506420fc:   imul   0x130(%rsp),%r11
   0.00%  │  0x00007fbd50642105:   mov    %r11,0x2e0(%rsp)
   0.09%  │  0x00007fbd5064210d:   mov    %rcx,%r11
   0.00%  │  0x00007fbd50642110:   imul   0x118(%rsp),%r11
          │  0x00007fbd50642119:   mov    %r11,0x2e8(%rsp)
   0.04%  │  0x00007fbd50642121:   mov    %rcx,%r11
   0.04%  │  0x00007fbd50642124:   imul   0x110(%rsp),%r11
   0.00%  │  0x00007fbd5064212d:   mov    %r11,0x2f0(%rsp)
   0.06%  │  0x00007fbd50642135:   mov    %rcx,%r11
   0.00%  │  0x00007fbd50642138:   imul   0xf8(%rsp),%r11
   0.04%  │  0x00007fbd50642141:   mov    %r11,0x2f8(%rsp)
   0.07%  │  0x00007fbd50642149:   mov    %rcx,%r11
          │  0x00007fbd5064214c:   imul   0xf0(%rsp),%r11
   0.00%  │  0x00007fbd50642155:   mov    %r11,0x300(%rsp)
   0.12%  │  0x00007fbd5064215d:   mov    0xe0(%rsp),%r11
          │  0x00007fbd50642165:   imul   %rcx,%r11
          │  0x00007fbd50642169:   mov    %r11,0x308(%rsp)             ;   {no_reloc}
   0.03%  │  0x00007fbd50642171:   mov    0xd8(%rsp),%r11
   0.06%  │  0x00007fbd50642179:   imul   %rcx,%r11
   0.00%  │  0x00007fbd5064217d:   mov    %r11,0x310(%rsp)
   0.03%  │  0x00007fbd50642185:   mov    0xc8(%rsp),%r11
   0.00%  │  0x00007fbd5064218d:   imul   %rcx,%r11
   0.06%  │  0x00007fbd50642191:   mov    %r11,0x318(%rsp)
   0.03%  │  0x00007fbd50642199:   mov    0xc0(%rsp),%r11
          │  0x00007fbd506421a1:   imul   %rcx,%r11
   0.00%  │  0x00007fbd506421a5:   mov    0xb8(%rsp),%r8
   0.06%  │  0x00007fbd506421ad:   imul   %rcx,%r8
   0.04%  │  0x00007fbd506421b1:   vmovq  %xmm9,%r9
          │  0x00007fbd506421b6:   imul   %rcx,%r9
   0.00%  │  0x00007fbd506421ba:   mov    %r10,%rcx
   0.07%  │  0x00007fbd506421bd:   imul   0x150(%rsp),%rcx
   0.08%  │  0x00007fbd506421c6:   mov    %rcx,0x320(%rsp)
   0.12%  │  0x00007fbd506421ce:   mov    %r10,%rcx
          │  0x00007fbd506421d1:   imul   0x138(%rsp),%rcx
   0.02%  │  0x00007fbd506421da:   mov    %rcx,0x328(%rsp)
   0.08%  │  0x00007fbd506421e2:   mov    %r10,%rcx
          │  0x00007fbd506421e5:   imul   0x130(%rsp),%rcx
   0.00%  │  0x00007fbd506421ee:   mov    %rcx,0x330(%rsp)
   0.11%  │  0x00007fbd506421f6:   mov    %r10,%rcx
   0.00%  │  0x00007fbd506421f9:   imul   0x118(%rsp),%rcx
          │  0x00007fbd50642202:   mov    %rcx,0x338(%rsp)
   0.08%  │  0x00007fbd5064220a:   mov    %r10,%rcx
   0.01%  │  0x00007fbd5064220d:   imul   0x110(%rsp),%rcx
   0.00%  │  0x00007fbd50642216:   mov    %rcx,0x340(%rsp)
   0.17%  │  0x00007fbd5064221e:   mov    %r10,%rcx
   0.00%  │  0x00007fbd50642221:   imul   0xf8(%rsp),%rcx
   0.02%  │  0x00007fbd5064222a:   mov    %rcx,0x348(%rsp)
   0.09%  │  0x00007fbd50642232:   mov    %r10,%rcx
   0.03%  │  0x00007fbd50642235:   imul   0xf0(%rsp),%rcx
          │  0x00007fbd5064223e:   mov    %rcx,0x350(%rsp)
   0.07%  │  0x00007fbd50642246:   mov    %r10,%r13
   0.00%  │  0x00007fbd50642249:   imul   0xe0(%rsp),%r13
   0.03%  │  0x00007fbd50642252:   mov    0xd8(%rsp),%rcx
          │  0x00007fbd5064225a:   imul   %r10,%rcx
   0.06%  │  0x00007fbd5064225e:   mov    %rcx,0x358(%rsp)
   0.08%  │  0x00007fbd50642266:   mov    0xc8(%rsp),%rcx              ;   {no_reloc}
   0.01%  │  0x00007fbd5064226e:   imul   %r10,%rcx
   0.00%  │  0x00007fbd50642272:   mov    0xc0(%rsp),%rbx
   0.01%  │  0x00007fbd5064227a:   imul   %r10,%rbx
   0.10%  │  0x00007fbd5064227e:   mov    0xb8(%rsp),%rdi
   0.01%  │  0x00007fbd50642286:   imul   %r10,%rdi
   0.01%  │  0x00007fbd5064228a:   add    %rdi,%r9
   0.14%  │  0x00007fbd5064228d:   add    %rsi,%r9
   0.08%  │  0x00007fbd50642290:   add    %rbp,%r9
   0.11%  │  0x00007fbd50642293:   add    0x1c0(%rsp),%r9
   0.13%  │  0x00007fbd5064229b:   add    %rdx,%r9
   0.10%  │  0x00007fbd5064229e:   add    0x100(%rsp),%r9              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@230 (line 385)
   0.12%  │  0x00007fbd506422a6:   vmovq  %r9,%xmm3
   0.16%  │  0x00007fbd506422ab:   vmovq  %xmm9,%r9
          │  0x00007fbd506422b0:   imul   %r10,%r9
          │  0x00007fbd506422b4:   add    %rax,%r9
          │  0x00007fbd506422b7:   add    %r14,%r9
   0.13%  │  0x00007fbd506422ba:   add    0x1c8(%rsp),%r9
          │  0x00007fbd506422c2:   add    0x208(%rsp),%r9
          │  0x00007fbd506422ca:   add    0xe8(%rsp),%r9               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@171 (line 384)
          │  0x00007fbd506422d2:   vmovq  %r9,%xmm4
   0.12%  │  0x00007fbd506422d7:   vmovq  %xmm1,%r10
          │  0x00007fbd506422dc:   mov    0x48(%r10),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@239 (line 386)
   0.00%  │  0x00007fbd506422e0:   vmovq  %xmm1,%r9
          │  0x00007fbd506422e5:   mov    0x50(%r9),%rdx               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@308 (line 387)
   0.10%  │  0x00007fbd506422e9:   mov    %r10,%r9
          │  0x00007fbd506422ec:   imul   0x158(%rsp),%r9
   0.00%  │  0x00007fbd506422f5:   mov    %r9,0xe8(%rsp)
   0.00%  │  0x00007fbd506422fd:   mov    %rdx,%r9
   0.12%  │  0x00007fbd50642300:   imul   0x158(%rsp),%r9
          │  0x00007fbd50642309:   mov    %r9,0x100(%rsp)
          │  0x00007fbd50642311:   mov    %rdx,%r9
          │  0x00007fbd50642314:   imul   0x150(%rsp),%r9
   0.09%  │  0x00007fbd5064231d:   mov    %r9,0x1c0(%rsp)
   0.00%  │  0x00007fbd50642325:   mov    %rdx,%r9
          │  0x00007fbd50642328:   imul   0x138(%rsp),%r9
   0.00%  │  0x00007fbd50642331:   mov    %r9,0x1c8(%rsp)
   0.11%  │  0x00007fbd50642339:   mov    %rdx,%r9
          │  0x00007fbd5064233c:   imul   0x130(%rsp),%r9
          │  0x00007fbd50642345:   mov    %r9,0x208(%rsp)
   0.05%  │  0x00007fbd5064234d:   mov    %rdx,%r9
   0.06%  │  0x00007fbd50642350:   imul   0x118(%rsp),%r9
          │  0x00007fbd50642359:   mov    %r9,0x360(%rsp)
          │  0x00007fbd50642361:   mov    %rdx,%r9
   0.06%  │  0x00007fbd50642364:   imul   0x110(%rsp),%r9              ;   {no_reloc}
   0.06%  │  0x00007fbd5064236d:   mov    %r9,0x368(%rsp)
          │  0x00007fbd50642375:   mov    0xf8(%rsp),%r9
          │  0x00007fbd5064237d:   imul   %rdx,%r9
   0.04%  │  0x00007fbd50642381:   mov    %r9,0x370(%rsp)
   0.06%  │  0x00007fbd50642389:   mov    0xf0(%rsp),%r9
          │  0x00007fbd50642391:   imul   %rdx,%r9
          │  0x00007fbd50642395:   mov    %r9,0x378(%rsp)
   0.17%  │  0x00007fbd5064239d:   mov    0xe0(%rsp),%r9
   0.01%  │  0x00007fbd506423a5:   imul   %rdx,%r9
          │  0x00007fbd506423a9:   mov    %r9,0x380(%rsp)
   0.03%  │  0x00007fbd506423b1:   mov    0xd8(%rsp),%r9
   0.05%  │  0x00007fbd506423b9:   imul   %rdx,%r9
   0.01%  │  0x00007fbd506423bd:   mov    %r9,0x388(%rsp)
   0.05%  │  0x00007fbd506423c5:   mov    0xc8(%rsp),%r9
          │  0x00007fbd506423cd:   imul   %rdx,%r9
   0.04%  │  0x00007fbd506423d1:   mov    %r9,0x390(%rsp)
   0.16%  │  0x00007fbd506423d9:   mov    0xc0(%rsp),%r9
          │  0x00007fbd506423e1:   imul   %rdx,%r9
          │  0x00007fbd506423e5:   mov    0xb8(%rsp),%rdi
          │  0x00007fbd506423ed:   imul   %rdx,%rdi
   0.09%  │  0x00007fbd506423f1:   vmovq  %xmm9,%rax
          │  0x00007fbd506423f6:   imul   %rdx,%rax
          │  0x00007fbd506423fa:   mov    %r10,%rdx
          │  0x00007fbd506423fd:   imul   0x150(%rsp),%rdx
   0.15%  │  0x00007fbd50642406:   mov    %rdx,0x398(%rsp)
   0.10%  │  0x00007fbd5064240e:   mov    %r10,%rdx
          │  0x00007fbd50642411:   imul   0x138(%rsp),%rdx
          │  0x00007fbd5064241a:   mov    %rdx,0x3a0(%rsp)
   0.10%  │  0x00007fbd50642422:   mov    %r10,%rdx
          │  0x00007fbd50642425:   imul   0x130(%rsp),%rdx
          │  0x00007fbd5064242e:   mov    %rdx,0x3a8(%rsp)
   0.12%  │  0x00007fbd50642436:   mov    %r10,%rdx
   0.01%  │  0x00007fbd50642439:   imul   0x118(%rsp),%rdx
          │  0x00007fbd50642442:   mov    %rdx,0x3b0(%rsp)
   0.10%  │  0x00007fbd5064244a:   mov    %r10,%rdx
          │  0x00007fbd5064244d:   imul   0x110(%rsp),%rdx
   0.00%  │  0x00007fbd50642456:   mov    %rdx,0x3b8(%rsp)
   0.16%  │  0x00007fbd5064245e:   mov    %r10,%rdx
          │  0x00007fbd50642461:   imul   0xf8(%rsp),%rdx
          │  0x00007fbd5064246a:   mov    %rdx,0x3c0(%rsp)             ;   {no_reloc}
   0.18%  │  0x00007fbd50642472:   mov    0xf0(%rsp),%rdx
          │  0x00007fbd5064247a:   imul   %r10,%rdx
          │  0x00007fbd5064247e:   mov    %rdx,0x3c8(%rsp)
   0.08%  │  0x00007fbd50642486:   mov    0xe0(%rsp),%rdx
   0.00%  │  0x00007fbd5064248e:   imul   %r10,%rdx
          │  0x00007fbd50642492:   mov    %rdx,0x3d0(%rsp)
   0.15%  │  0x00007fbd5064249a:   mov    0xd8(%rsp),%rdx
          │  0x00007fbd506424a2:   imul   %r10,%rdx
   0.00%  │  0x00007fbd506424a6:   mov    %rdx,0x3d8(%rsp)
   0.09%  │  0x00007fbd506424ae:   mov    0xc8(%rsp),%rdx
          │  0x00007fbd506424b6:   imul   %r10,%rdx
          │  0x00007fbd506424ba:   mov    0xc0(%rsp),%rsi
   0.00%  │  0x00007fbd506424c2:   imul   %r10,%rsi
   0.11%  │  0x00007fbd506424c6:   mov    0xb8(%rsp),%rbp
          │  0x00007fbd506424ce:   imul   %r10,%rbp
          │  0x00007fbd506424d2:   add    %rbp,%rax
   0.10%  │  0x00007fbd506424d5:   add    %r11,%rax
   0.11%  │  0x00007fbd506424d8:   add    %rcx,%rax
   0.29%  │  0x00007fbd506424db:   add    0x268(%rsp),%rax
   0.12%  │  0x00007fbd506424e3:   add    0x2b0(%rsp),%rax
   0.12%  │  0x00007fbd506424eb:   add    0x1b0(%rsp),%rax
   0.11%  │  0x00007fbd506424f3:   add    0x1f8(%rsp),%rax
   0.13%  │  0x00007fbd506424fb:   add    0x120(%rsp),%rax             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@378 (line 387)
   0.12%  │  0x00007fbd50642503:   vmovq  %rax,%xmm5
   0.20%  │  0x00007fbd50642508:   vmovq  %xmm9,%r11
          │  0x00007fbd5064250d:   imul   %r10,%r11
          │  0x00007fbd50642511:   add    %r8,%r11
          │  0x00007fbd50642514:   add    %rbx,%r11
   0.12%  │  0x00007fbd50642517:   add    0x270(%rsp),%r11
          │  0x00007fbd5064251f:   add    0x2b8(%rsp),%r11
          │  0x00007fbd50642527:   add    0x1b8(%rsp),%r11
          │  0x00007fbd5064252f:   add    0x200(%rsp),%r11
   0.11%  │  0x00007fbd50642537:   add    0x108(%rsp),%r11             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@299 (line 386)
          │  0x00007fbd5064253f:   vmovq  %r11,%xmm6
          │  0x00007fbd50642544:   vmovq  %xmm1,%r10
          │  0x00007fbd50642549:   mov    0x58(%r10),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@387 (line 388)
   0.10%  │  0x00007fbd5064254d:   vmovq  %xmm1,%r11
          │  0x00007fbd50642552:   mov    0x60(%r11),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@476 (line 389)
          │  0x00007fbd50642556:   mov    %r10,%r11
          │  0x00007fbd50642559:   imul   0x158(%rsp),%r11
   0.11%  │  0x00007fbd50642562:   mov    %r11,0x108(%rsp)             ;   {no_reloc}
   0.00%  │  0x00007fbd5064256a:   mov    %r8,%r11
          │  0x00007fbd5064256d:   imul   0x158(%rsp),%r11
          │  0x00007fbd50642576:   mov    %r11,0x120(%rsp)
   0.09%  │  0x00007fbd5064257e:   mov    %r8,%r11
          │  0x00007fbd50642581:   imul   0x150(%rsp),%r11
          │  0x00007fbd5064258a:   mov    %r11,0x1b0(%rsp)
          │  0x00007fbd50642592:   mov    %r8,%r11
   0.12%  │  0x00007fbd50642595:   imul   0x138(%rsp),%r11
   0.00%  │  0x00007fbd5064259e:   mov    %r11,0x1b8(%rsp)
   0.00%  │  0x00007fbd506425a6:   mov    %r8,%r11
          │  0x00007fbd506425a9:   imul   0x130(%rsp),%r11
   0.09%  │  0x00007fbd506425b2:   mov    %r11,0x1f8(%rsp)
          │  0x00007fbd506425ba:   mov    0x118(%rsp),%r11
          │  0x00007fbd506425c2:   imul   %r8,%r11
          │  0x00007fbd506425c6:   mov    %r11,0x200(%rsp)
   0.09%  │  0x00007fbd506425ce:   mov    0x110(%rsp),%r11
          │  0x00007fbd506425d6:   imul   %r8,%r11
          │  0x00007fbd506425da:   mov    %r11,0x268(%rsp)
          │  0x00007fbd506425e2:   mov    0xf8(%rsp),%r11
   0.09%  │  0x00007fbd506425ea:   imul   %r8,%r11
          │  0x00007fbd506425ee:   mov    %r11,0x270(%rsp)
          │  0x00007fbd506425f6:   mov    0xf0(%rsp),%r11
          │  0x00007fbd506425fe:   imul   %r8,%r11
   0.10%  │  0x00007fbd50642602:   mov    %r11,0x2b0(%rsp)
          │  0x00007fbd5064260a:   mov    0xe0(%rsp),%r11
          │  0x00007fbd50642612:   imul   %r8,%r11
          │  0x00007fbd50642616:   mov    %r11,0x2b8(%rsp)
   0.11%  │  0x00007fbd5064261e:   mov    0xd8(%rsp),%r11
          │  0x00007fbd50642626:   imul   %r8,%r11
   0.00%  │  0x00007fbd5064262a:   mov    %r11,0x3e0(%rsp)
   0.05%  │  0x00007fbd50642632:   mov    0xc8(%rsp),%r11
   0.04%  │  0x00007fbd5064263a:   imul   %r8,%r11
          │  0x00007fbd5064263e:   mov    %r11,0x3e8(%rsp)
   0.05%  │  0x00007fbd50642646:   mov    0xc0(%rsp),%r11
          │  0x00007fbd5064264e:   imul   %r8,%r11
   0.04%  │  0x00007fbd50642652:   mov    %r11,0x3f0(%rsp)
   0.06%  │  0x00007fbd5064265a:   mov    0xb8(%rsp),%r11
          │  0x00007fbd50642662:   imul   %r8,%r11
          │  0x00007fbd50642666:   mov    %r11,0x3f8(%rsp)             ;   {no_reloc}
   0.21%  │  0x00007fbd5064266e:   vmovq  %xmm9,%r11
          │  0x00007fbd50642673:   imul   %r8,%r11
          │  0x00007fbd50642677:   mov    %r10,%r8
          │  0x00007fbd5064267a:   imul   0x150(%rsp),%r8
   0.10%  │  0x00007fbd50642683:   mov    %r8,0x400(%rsp)
   0.05%  │  0x00007fbd5064268b:   mov    %r10,%r8
          │  0x00007fbd5064268e:   imul   0x138(%rsp),%r8
          │  0x00007fbd50642697:   mov    %r8,0x408(%rsp)
   0.15%  │  0x00007fbd5064269f:   mov    %r10,%r8
          │  0x00007fbd506426a2:   imul   0x130(%rsp),%r8
          │  0x00007fbd506426ab:   mov    %r8,0x410(%rsp)
   0.15%  │  0x00007fbd506426b3:   mov    %r10,%r8
          │  0x00007fbd506426b6:   imul   0x118(%rsp),%r8
          │  0x00007fbd506426bf:   mov    %r8,0x418(%rsp)
   0.10%  │  0x00007fbd506426c7:   mov    0x110(%rsp),%r8
          │  0x00007fbd506426cf:   imul   %r10,%r8
   0.00%  │  0x00007fbd506426d3:   mov    %r8,0x420(%rsp)
   0.11%  │  0x00007fbd506426db:   mov    0xf8(%rsp),%r8
          │  0x00007fbd506426e3:   imul   %r10,%r8
          │  0x00007fbd506426e7:   mov    %r8,0x428(%rsp)
   0.15%  │  0x00007fbd506426ef:   mov    0xf0(%rsp),%r8
          │  0x00007fbd506426f7:   imul   %r10,%r8
          │  0x00007fbd506426fb:   mov    %r8,0x430(%rsp)
   0.11%  │  0x00007fbd50642703:   mov    0xe0(%rsp),%r8
          │  0x00007fbd5064270b:   imul   %r10,%r8
          │  0x00007fbd5064270f:   mov    %r8,0x438(%rsp)
   0.10%  │  0x00007fbd50642717:   mov    0xd8(%rsp),%r8
          │  0x00007fbd5064271f:   imul   %r10,%r8
          │  0x00007fbd50642723:   mov    %r8,0x440(%rsp)
   0.10%  │  0x00007fbd5064272b:   mov    0xc8(%rsp),%rbp
          │  0x00007fbd50642733:   imul   %r10,%rbp
   0.05%  │  0x00007fbd50642737:   mov    0xc0(%rsp),%r14
          │  0x00007fbd5064273f:   imul   %r10,%r14
   0.06%  │  0x00007fbd50642743:   mov    0xb8(%rsp),%r8
   0.00%  │  0x00007fbd5064274b:   imul   %r10,%r8
   0.05%  │  0x00007fbd5064274f:   add    %r8,%r11
   0.15%  │  0x00007fbd50642752:   add    %r9,%r11
   0.06%  │  0x00007fbd50642755:   add    %rdx,%r11
   0.11%  │  0x00007fbd50642758:   add    0x310(%rsp),%r11
   0.12%  │  0x00007fbd50642760:   add    %r13,%r11
   0.12%  │  0x00007fbd50642763:   add    0x258(%rsp),%r11             ;   {no_reloc}
   0.09%  │  0x00007fbd5064276b:   add    0x2a0(%rsp),%r11
   0.10%  │  0x00007fbd50642773:   add    0x1a0(%rsp),%r11
   0.08%  │  0x00007fbd5064277b:   add    0x1e8(%rsp),%r11
   0.10%  │  0x00007fbd50642783:   add    0x140(%rsp),%r11             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@566 (line 389)
   0.11%  │  0x00007fbd5064278b:   vmovq  %r11,%xmm7
   0.21%  │  0x00007fbd50642790:   vmovq  %xmm9,%r11
          │  0x00007fbd50642795:   imul   %r10,%r11
          │  0x00007fbd50642799:   add    %rdi,%r11
          │  0x00007fbd5064279c:   add    %rsi,%r11
   0.09%  │  0x00007fbd5064279f:   add    0x318(%rsp),%r11
          │  0x00007fbd506427a7:   add    0x358(%rsp),%r11
          │  0x00007fbd506427af:   add    0x260(%rsp),%r11
          │  0x00007fbd506427b7:   add    0x2a8(%rsp),%r11
   0.27%  │  0x00007fbd506427bf:   add    0x1a8(%rsp),%r11
   0.05%  │  0x00007fbd506427c7:   add    0x1f0(%rsp),%r11
   1.40%  │  0x00007fbd506427cf:   add    0x128(%rsp),%r11             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@467 (line 388)
   0.09%  │  0x00007fbd506427d7:   vmovq  %r11,%xmm8
   0.18%  │  0x00007fbd506427dc:   vmovq  %xmm1,%r10
          │  0x00007fbd506427e1:   mov    0x68(%r10),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@575 (line 390)
          │  0x00007fbd506427e5:   vmovq  %xmm1,%r11
          │  0x00007fbd506427ea:   mov    0x70(%r11),%rbx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@684 (line 391)
   0.12%  │  0x00007fbd506427ee:   mov    %r10,%r11
          │  0x00007fbd506427f1:   imul   0x158(%rsp),%r11
          │  0x00007fbd506427fa:   mov    %r11,0x128(%rsp)
          │  0x00007fbd50642802:   mov    %rbx,%r11
   0.13%  │  0x00007fbd50642805:   imul   0x158(%rsp),%r11
          │  0x00007fbd5064280e:   mov    %rbx,%r8
          │  0x00007fbd50642811:   imul   0x150(%rsp),%r8
          │  0x00007fbd5064281a:   mov    0x138(%rsp),%r9
   0.11%  │  0x00007fbd50642822:   imul   %rbx,%r9
          │  0x00007fbd50642826:   mov    %r9,0x140(%rsp)
          │  0x00007fbd5064282e:   mov    0x130(%rsp),%r9
          │  0x00007fbd50642836:   imul   %rbx,%r9
   0.09%  │  0x00007fbd5064283a:   mov    %r9,0x1a0(%rsp)
          │  0x00007fbd50642842:   mov    0x118(%rsp),%r9
          │  0x00007fbd5064284a:   imul   %rbx,%r9
          │  0x00007fbd5064284e:   mov    %r9,0x1a8(%rsp)
   0.10%  │  0x00007fbd50642856:   mov    0x110(%rsp),%r9
          │  0x00007fbd5064285e:   imul   %rbx,%r9
          │  0x00007fbd50642862:   mov    %r9,0x1e8(%rsp)              ;   {no_reloc}
          │  0x00007fbd5064286a:   mov    0xf8(%rsp),%r9
   0.11%  │  0x00007fbd50642872:   imul   %rbx,%r9
          │  0x00007fbd50642876:   mov    %r9,0x1f0(%rsp)
          │  0x00007fbd5064287e:   mov    0xf0(%rsp),%r9
          │  0x00007fbd50642886:   imul   %rbx,%r9
   0.11%  │  0x00007fbd5064288a:   mov    %r9,0x258(%rsp)
          │  0x00007fbd50642892:   mov    0xe0(%rsp),%r9
          │  0x00007fbd5064289a:   imul   %rbx,%r9
          │  0x00007fbd5064289e:   mov    %r9,0x260(%rsp)
   0.09%  │  0x00007fbd506428a6:   mov    0xd8(%rsp),%r9
          │  0x00007fbd506428ae:   imul   %rbx,%r9
          │  0x00007fbd506428b2:   mov    %r9,0x2a0(%rsp)
   0.05%  │  0x00007fbd506428ba:   mov    0xc8(%rsp),%r9
   0.06%  │  0x00007fbd506428c2:   imul   %rbx,%r9
          │  0x00007fbd506428c6:   mov    %r9,0x2a8(%rsp)
   0.05%  │  0x00007fbd506428ce:   mov    0xc0(%rsp),%r9
          │  0x00007fbd506428d6:   imul   %rbx,%r9
   0.06%  │  0x00007fbd506428da:   mov    %r9,0x310(%rsp)
   0.03%  │  0x00007fbd506428e2:   mov    0xb8(%rsp),%r9
          │  0x00007fbd506428ea:   imul   %rbx,%r9
          │  0x00007fbd506428ee:   vmovq  %xmm9,%rcx
   0.05%  │  0x00007fbd506428f3:   imul   %rbx,%rcx
   0.04%  │  0x00007fbd506428f7:   mov    %r10,%rbx
          │  0x00007fbd506428fa:   imul   0x150(%rsp),%rbx
   0.05%  │  0x00007fbd50642903:   mov    %r10,%rdi
   0.07%  │  0x00007fbd50642906:   imul   0x138(%rsp),%rdi
          │  0x00007fbd5064290f:   mov    0x130(%rsp),%rdx
          │  0x00007fbd50642917:   imul   %r10,%rdx
   0.04%  │  0x00007fbd5064291b:   mov    0x118(%rsp),%rsi
   0.06%  │  0x00007fbd50642923:   imul   %r10,%rsi
   0.05%  │  0x00007fbd50642927:   mov    0x110(%rsp),%rax
          │  0x00007fbd5064292f:   imul   %r10,%rax
   0.04%  │  0x00007fbd50642933:   mov    %rax,0x318(%rsp)
   0.14%  │  0x00007fbd5064293b:   mov    0xf8(%rsp),%rax
          │  0x00007fbd50642943:   imul   %r10,%rax
          │  0x00007fbd50642947:   mov    %rax,0x358(%rsp)
   0.06%  │  0x00007fbd5064294f:   mov    0xf0(%rsp),%rax
   0.06%  │  0x00007fbd50642957:   imul   %r10,%rax
          │  0x00007fbd5064295b:   mov    %rax,0x448(%rsp)
   0.04%  │  0x00007fbd50642963:   mov    0xe0(%rsp),%rax              ;   {no_reloc}
          │  0x00007fbd5064296b:   imul   %r10,%rax
   0.05%  │  0x00007fbd5064296f:   mov    %rax,0x450(%rsp)
   0.04%  │  0x00007fbd50642977:   mov    0xd8(%rsp),%rax
          │  0x00007fbd5064297f:   imul   %r10,%rax
          │  0x00007fbd50642983:   mov    %rax,0x458(%rsp)
   0.09%  │  0x00007fbd5064298b:   mov    0xc8(%rsp),%rax
          │  0x00007fbd50642993:   imul   %r10,%rax
          │  0x00007fbd50642997:   mov    %rax,0x460(%rsp)
   0.05%  │  0x00007fbd5064299f:   mov    0xc0(%rsp),%rax
   0.08%  │  0x00007fbd506429a7:   imul   %r10,%rax
          │  0x00007fbd506429ab:   mov    0xb8(%rsp),%r13
          │  0x00007fbd506429b3:   imul   %r10,%r13
   0.04%  │  0x00007fbd506429b7:   add    %r13,%rcx
   0.05%  │  0x00007fbd506429ba:   add    0x3f0(%rsp),%rcx
   0.03%  │  0x00007fbd506429c2:   add    %rbp,%rcx
   0.03%  │  0x00007fbd506429c5:   add    0x388(%rsp),%rcx
   0.13%  │  0x00007fbd506429cd:   add    0x3d0(%rsp),%rcx
   0.12%  │  0x00007fbd506429d5:   add    0x300(%rsp),%rcx
   0.03%  │  0x00007fbd506429dd:   add    0x348(%rsp),%rcx
   0.04%  │  0x00007fbd506429e5:   add    0x248(%rsp),%rcx
   0.05%  │  0x00007fbd506429ed:   add    0x290(%rsp),%rcx
   0.10%  │  0x00007fbd506429f5:   add    0x190(%rsp),%rcx
   0.05%  │  0x00007fbd506429fd:   add    0x1d8(%rsp),%rcx
   0.04%  │  0x00007fbd50642a05:   add    0x160(%rsp),%rcx             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@794 (line 391)
   0.06%  │  0x00007fbd50642a0d:   mov    %rcx,%rbp
   0.05%  │  0x00007fbd50642a10:   vmovq  %xmm9,%rcx
          │  0x00007fbd50642a15:   imul   %r10,%rcx
          │  0x00007fbd50642a19:   add    0x3f8(%rsp),%rcx
   0.04%  │  0x00007fbd50642a21:   add    %r14,%rcx
   0.04%  │  0x00007fbd50642a24:   add    0x390(%rsp),%rcx
          │  0x00007fbd50642a2c:   add    0x3d8(%rsp),%rcx
          │  0x00007fbd50642a34:   add    0x308(%rsp),%rcx
   0.03%  │  0x00007fbd50642a3c:   add    0x350(%rsp),%rcx
   0.06%  │  0x00007fbd50642a44:   add    0x250(%rsp),%rcx
          │  0x00007fbd50642a4c:   add    0x298(%rsp),%rcx
          │  0x00007fbd50642a54:   add    0x198(%rsp),%rcx
   0.04%  │  0x00007fbd50642a5c:   add    0x1e0(%rsp),%rcx
   0.07%  │  0x00007fbd50642a64:   add    0x148(%rsp),%rcx             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@675 (line 390)
          │                                                            ;   {no_reloc}
   0.00%  │  0x00007fbd50642a6c:   mov    %rcx,%r13
          │  0x00007fbd50642a6f:   vmovq  %xmm1,%r10
   0.05%  │  0x00007fbd50642a74:   mov    0x78(%r10),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@803 (line 392)
   0.06%  │  0x00007fbd50642a78:   vmovq  %xmm9,%r10
   0.00%  │  0x00007fbd50642a7d:   imul   %rcx,%r10
          │  0x00007fbd50642a81:   add    %r9,%r10
   0.04%  │  0x00007fbd50642a84:   add    %rax,%r10
   0.07%  │  0x00007fbd50642a87:   add    0x3e8(%rsp),%r10
   0.00%  │  0x00007fbd50642a8f:   add    0x440(%rsp),%r10
   0.00%  │  0x00007fbd50642a97:   add    0x380(%rsp),%r10
   0.05%  │  0x00007fbd50642a9f:   add    0x3c8(%rsp),%r10
   0.06%  │  0x00007fbd50642aa7:   add    0x2f8(%rsp),%r10
   0.06%  │  0x00007fbd50642aaf:   add    0x340(%rsp),%r10
   0.04%  │  0x00007fbd50642ab7:   add    0x240(%rsp),%r10
   0.04%  │  0x00007fbd50642abf:   add    0x288(%rsp),%r10
   0.11%  │  0x00007fbd50642ac7:   add    0x188(%rsp),%r10
   0.05%  │  0x00007fbd50642acf:   add    0x1d0(%rsp),%r10
   0.06%  │  0x00007fbd50642ad7:   add    0x168(%rsp),%r10             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@923 (line 392)
   0.09%  │  0x00007fbd50642adf:   mov    %r10,%r14
   0.01%  │  0x00007fbd50642ae2:   mov    %rcx,%r10
          │  0x00007fbd50642ae5:   imul   0x158(%rsp),%r10             ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1816 (line 405)
          │  0x00007fbd50642aee:   vmovq  %r10,%xmm1
   0.11%  │  0x00007fbd50642af3:   mov    0x150(%rsp),%r10
   0.00%  │  0x00007fbd50642afb:   imul   %rcx,%r10
          │  0x00007fbd50642aff:   add    %r11,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1805 (line 404)
          │  0x00007fbd50642b02:   vmovq  %r10,%xmm9
   0.10%  │  0x00007fbd50642b07:   mov    0x138(%rsp),%r10
   0.01%  │  0x00007fbd50642b0f:   imul   %rcx,%r10
          │  0x00007fbd50642b13:   add    %r8,%r10
          │  0x00007fbd50642b16:   add    0x128(%rsp),%r10             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1784 (line 403)
   0.08%  │  0x00007fbd50642b1e:   vmovq  %r10,%xmm10
   0.00%  │  0x00007fbd50642b23:   mov    0x130(%rsp),%r10
          │  0x00007fbd50642b2b:   imul   %rcx,%r10
          │  0x00007fbd50642b2f:   add    0x140(%rsp),%r10
   0.12%  │  0x00007fbd50642b37:   add    %rbx,%r10
   0.00%  │  0x00007fbd50642b3a:   add    0x120(%rsp),%r10             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1753 (line 402)
          │  0x00007fbd50642b42:   vmovq  %r10,%xmm11
          │  0x00007fbd50642b47:   mov    0x118(%rsp),%r10
   0.11%  │  0x00007fbd50642b4f:   imul   %rcx,%r10
   0.00%  │  0x00007fbd50642b53:   add    0x1a0(%rsp),%r10
          │  0x00007fbd50642b5b:   add    %rdi,%r10
          │  0x00007fbd50642b5e:   add    0x1b0(%rsp),%r10             ;   {no_reloc}
   0.09%  │  0x00007fbd50642b66:   add    0x108(%rsp),%r10             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1712 (line 401)
   0.01%  │  0x00007fbd50642b6e:   vmovq  %r10,%xmm12
   0.08%  │  0x00007fbd50642b73:   mov    0x110(%rsp),%rdi
          │  0x00007fbd50642b7b:   imul   %rcx,%rdi
   0.06%  │  0x00007fbd50642b7f:   add    0x1a8(%rsp),%rdi
   0.01%  │  0x00007fbd50642b87:   add    %rdx,%rdi
   0.05%  │  0x00007fbd50642b8a:   add    0x1b8(%rsp),%rdi
          │  0x00007fbd50642b92:   add    0x400(%rsp),%rdi
   0.08%  │  0x00007fbd50642b9a:   add    0x100(%rsp),%rdi             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1661 (line 400)
   0.01%  │  0x00007fbd50642ba2:   mov    0xf8(%rsp),%rax
   0.03%  │  0x00007fbd50642baa:   imul   %rcx,%rax
          │  0x00007fbd50642bae:   add    0x1e8(%rsp),%rax
   0.05%  │  0x00007fbd50642bb6:   add    %rsi,%rax
   0.01%  │  0x00007fbd50642bb9:   add    0x1f8(%rsp),%rax
   0.03%  │  0x00007fbd50642bc1:   add    0x408(%rsp),%rax
          │  0x00007fbd50642bc9:   add    0x1c0(%rsp),%rax
   0.07%  │  0x00007fbd50642bd1:   add    0xe8(%rsp),%rax              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1600 (line 399)
   0.06%  │  0x00007fbd50642bd9:   mov    0xf0(%rsp),%r10
          │  0x00007fbd50642be1:   imul   %rcx,%r10
          │  0x00007fbd50642be5:   add    0x1f0(%rsp),%r10
   0.05%  │  0x00007fbd50642bed:   add    0x318(%rsp),%r10
   0.04%  │  0x00007fbd50642bf5:   add    0x200(%rsp),%r10
          │  0x00007fbd50642bfd:   add    0x410(%rsp),%r10
          │  0x00007fbd50642c05:   add    0x1c8(%rsp),%r10
   0.04%  │  0x00007fbd50642c0d:   add    0x398(%rsp),%r10
   0.09%  │  0x00007fbd50642c15:   add    0x2c8(%rsp),%r10             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1529 (line 398)
   0.03%  │  0x00007fbd50642c1d:   mov    0xe0(%rsp),%r11
          │  0x00007fbd50642c25:   imul   %rcx,%r11
   0.05%  │  0x00007fbd50642c29:   add    0x258(%rsp),%r11
   0.01%  │  0x00007fbd50642c31:   add    0x358(%rsp),%r11
   0.05%  │  0x00007fbd50642c39:   add    0x268(%rsp),%r11
   0.02%  │  0x00007fbd50642c41:   add    0x418(%rsp),%r11
   0.07%  │  0x00007fbd50642c49:   add    0x208(%rsp),%r11
   0.03%  │  0x00007fbd50642c51:   add    0x3a0(%rsp),%r11
   0.03%  │  0x00007fbd50642c59:   add    0x2d0(%rsp),%r11
   0.01%  │  0x00007fbd50642c61:   add    0x2c0(%rsp),%r11             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1448 (line 397)
          │                                                            ;   {no_reloc}
   0.08%  │  0x00007fbd50642c69:   mov    0xd8(%rsp),%r8
   0.01%  │  0x00007fbd50642c71:   imul   %rcx,%r8
          │  0x00007fbd50642c75:   add    0x260(%rsp),%r8
          │  0x00007fbd50642c7d:   add    0x448(%rsp),%r8
   0.09%  │  0x00007fbd50642c85:   add    0x270(%rsp),%r8
   0.01%  │  0x00007fbd50642c8d:   add    0x420(%rsp),%r8
          │  0x00007fbd50642c95:   add    0x360(%rsp),%r8
          │  0x00007fbd50642c9d:   add    0x3a8(%rsp),%r8
   0.09%  │  0x00007fbd50642ca5:   add    0x2d8(%rsp),%r8
   0.05%  │  0x00007fbd50642cad:   add    0x320(%rsp),%r8
   0.06%  │  0x00007fbd50642cb5:   add    0x220(%rsp),%r8              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1359 (line 396)
   0.08%  │  0x00007fbd50642cbd:   mov    0xc8(%rsp),%r9
   0.02%  │  0x00007fbd50642cc5:   imul   %rcx,%r9
          │  0x00007fbd50642cc9:   add    0x2a0(%rsp),%r9
          │  0x00007fbd50642cd1:   add    0x450(%rsp),%r9
   0.08%  │  0x00007fbd50642cd9:   add    0x2b0(%rsp),%r9
   0.01%  │  0x00007fbd50642ce1:   add    0x428(%rsp),%r9
   0.02%  │  0x00007fbd50642ce9:   add    0x368(%rsp),%r9
   0.05%  │  0x00007fbd50642cf1:   add    0x3b0(%rsp),%r9
   0.10%  │  0x00007fbd50642cf9:   add    0x2e0(%rsp),%r9
   0.07%  │  0x00007fbd50642d01:   add    0x328(%rsp),%r9
   0.09%  │  0x00007fbd50642d09:   add    0x228(%rsp),%r9
   0.11%  │  0x00007fbd50642d11:   add    0x218(%rsp),%r9              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1262 (line 395)
   0.12%  │  0x00007fbd50642d19:   mov    0xc0(%rsp),%rbx
   0.00%  │  0x00007fbd50642d21:   imul   %rcx,%rbx
          │  0x00007fbd50642d25:   add    0x2a8(%rsp),%rbx
          │  0x00007fbd50642d2d:   add    0x458(%rsp),%rbx
   0.11%  │  0x00007fbd50642d35:   add    0x2b8(%rsp),%rbx
          │  0x00007fbd50642d3d:   add    0x430(%rsp),%rbx
   0.00%  │  0x00007fbd50642d45:   add    0x370(%rsp),%rbx
   0.02%  │  0x00007fbd50642d4d:   add    0x3b8(%rsp),%rbx
   0.09%  │  0x00007fbd50642d55:   add    0x2e8(%rsp),%rbx
   0.07%  │  0x00007fbd50642d5d:   add    0x330(%rsp),%rbx             ;   {no_reloc}
   0.09%  │  0x00007fbd50642d65:   add    0x230(%rsp),%rbx
   0.09%  │  0x00007fbd50642d6d:   add    0x278(%rsp),%rbx
   0.11%  │  0x00007fbd50642d75:   add    0x178(%rsp),%rbx             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1157 (line 394)
   0.09%  │  0x00007fbd50642d7d:   mov    0xb8(%rsp),%rsi
          │  0x00007fbd50642d85:   imul   %rcx,%rsi
          │  0x00007fbd50642d89:   add    0x310(%rsp),%rsi
   0.01%  │  0x00007fbd50642d91:   add    0x460(%rsp),%rsi
   0.10%  │  0x00007fbd50642d99:   add    0x3e0(%rsp),%rsi
          │  0x00007fbd50642da1:   add    0x438(%rsp),%rsi
          │  0x00007fbd50642da9:   add    0x378(%rsp),%rsi
   0.04%  │  0x00007fbd50642db1:   add    0x3c0(%rsp),%rsi
   0.13%  │  0x00007fbd50642db9:   add    0x2f0(%rsp),%rsi
   0.08%  │  0x00007fbd50642dc1:   add    0x338(%rsp),%rsi
   0.22%  │  0x00007fbd50642dc9:   add    0x238(%rsp),%rsi
   0.11%  │  0x00007fbd50642dd1:   add    0x280(%rsp),%rsi
   0.08%  │  0x00007fbd50642dd9:   add    0x180(%rsp),%rsi
   0.11%  │  0x00007fbd50642de1:   add    0x170(%rsp),%rsi             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1044 (line 393)
   0.10%  │  0x00007fbd50642de9:   vmovq  %xmm0,%rdx
          │  0x00007fbd50642dee:   vmovsd %xmm2,(%rsp)
          │  0x00007fbd50642df3:   vmovsd %xmm4,0x8(%rsp)
          │  0x00007fbd50642df9:   vmovsd %xmm3,0x10(%rsp)
   0.10%  │  0x00007fbd50642dff:   vmovsd %xmm6,0x18(%rsp)
          │  0x00007fbd50642e05:   vmovsd %xmm5,0x20(%rsp)
          │  0x00007fbd50642e0b:   vmovsd %xmm8,0x28(%rsp)
   0.01%  │  0x00007fbd50642e11:   vmovsd %xmm7,0x30(%rsp)
   0.08%  │  0x00007fbd50642e17:   mov    %r13,0x38(%rsp)
   0.03%  │  0x00007fbd50642e1c:   mov    %rbp,0x40(%rsp)
          │  0x00007fbd50642e21:   mov    %r14,0x48(%rsp)
   0.03%  │  0x00007fbd50642e26:   mov    %rsi,0x50(%rsp)
   0.05%  │  0x00007fbd50642e2b:   mov    %rbx,0x58(%rsp)
   0.09%  │  0x00007fbd50642e30:   mov    %r9,0x60(%rsp)
   0.02%  │  0x00007fbd50642e35:   mov    %r8,0x68(%rsp)
   0.03%  │  0x00007fbd50642e3a:   mov    %r11,0x70(%rsp)
   0.06%  │  0x00007fbd50642e3f:   mov    %r10,0x78(%rsp)
   0.07%  │  0x00007fbd50642e44:   mov    %rax,0x80(%rsp)
   0.05%  │  0x00007fbd50642e4c:   mov    %rdi,0x88(%rsp)
   0.08%  │  0x00007fbd50642e54:   vmovsd %xmm12,0x90(%rsp)
   0.09%  │  0x00007fbd50642e5d:   vmovsd %xmm11,0x98(%rsp)            ;   {no_reloc}
   0.08%  │  0x00007fbd50642e66:   vmovsd %xmm10,0xa0(%rsp)
   0.11%  │  0x00007fbd50642e6f:   vmovsd %xmm9,0xa8(%rsp)
   0.09%  │  0x00007fbd50642e78:   vmovsd %xmm1,0xb0(%rsp)
   0.10%  │  0x00007fbd50642e81:   vmovq  %xmm13,%rsi
          │  0x00007fbd50642e86:   vmovq  %xmm14,%rcx
          │  0x00007fbd50642e8b:   mov    0x210(%rsp),%r8
          │  0x00007fbd50642e93:   vmovq  %xmm15,%r9
   0.11%  │  0x00007fbd50642e98:   mov    0xd0(%rsp),%rdi
          │  0x00007fbd50642ea0:   data16 xchg %ax,%ax
          │  0x00007fbd50642ea3:   call   0x00007fbd500c4380           ; ImmutableOopMap {}
          │                                                            ;*invokevirtual carryReduce {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1875 (line 407)
          │                                                            ;   {optimized virtual_call}
          │  0x00007fbd50642ea8:   nopl   0x1618(%rax,%rax,1)          ;*invokevirtual carryReduce {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1875 (line 407)
          │                                                            ;   {other}
   0.06%  │  0x00007fbd50642eb0:   add    $0x480,%rsp
   0.08%  │  0x00007fbd50642eb7:   pop    %rbp
   0.03%  │  0x00007fbd50642eb8:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007fbd50642ebf:   ja     0x00007fbd50642f64
   0.04%  │  0x00007fbd50642ec5:   ret    
          ↘  0x00007fbd50642ec6:   mov    %rsi,%rbp
             0x00007fbd50642ec9:   mov    %rcx,0xc0(%rsp)
             0x00007fbd50642ed1:   mov    %r8,0xc8(%rsp)
             0x00007fbd50642ed9:   mov    %rdx,0xd0(%rsp)
             0x00007fbd50642ee1:   mov    $0xffffffe4,%esi
             0x00007fbd50642ee6:   nop
             0x00007fbd50642ee7:   call   0x00007fbd500c9f00           ; ImmutableOopMap {rbp=Oop [192]=Oop [200]=Oop [208]=Oop }
                                                                       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@2 (line 379)
                                                                       ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  33.33%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce, version 2, compile id 629 

               # parm26:   [sp+0x1d8]   = long
               # parm27:   [sp+0x1e0]   = long
               0x00007fbd5063ed20:   mov    0x8(%rsi),%r10d
               0x00007fbd5063ed24:   movabs $0x7fbccf000000,%r11
               0x00007fbd5063ed2e:   add    %r11,%r10
               0x00007fbd5063ed31:   cmp    %r10,%rax
               0x00007fbd5063ed34:   jne    0x00007fbd500c4080           ;   {runtime_call ic_miss_stub}
               0x00007fbd5063ed3a:   xchg   %ax,%ax
               0x00007fbd5063ed3c:   nopl   0x0(%rax)
             [Verified Entry Point]
   0.15%       0x00007fbd5063ed40:   mov    %eax,-0x14000(%rsp)
               0x00007fbd5063ed47:   push   %rbp
   0.15%       0x00007fbd5063ed48:   sub    $0x120,%rsp
               0x00007fbd5063ed4f:   nop
               0x00007fbd5063ed50:   cmpl   $0x0,0x20(%r15)
   0.12%  ╭    0x00007fbd5063ed58:   jne    0x00007fbd5063f840           ;*synchronization entry
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@-1 (line 81)
          │    0x00007fbd5063ed5e:   mov    %r9,%rbp
          │    0x00007fbd5063ed61:   mov    %r8,%rax
          │    0x00007fbd5063ed64:   mov    %rcx,%r14
   0.15%  │    0x00007fbd5063ed67:   vmovq  %rdx,%xmm8
          │    0x00007fbd5063ed6c:   vmovq  %rsi,%xmm7
          │    0x00007fbd5063ed71:   mov    0x1e0(%rsp),%r10
          │    0x00007fbd5063ed79:   sar    $0x10,%r10
   0.17%  │    0x00007fbd5063ed7d:   mov    0x180(%rsp),%r11
          │    0x00007fbd5063ed85:   sub    %r10,%r11
          │    0x00007fbd5063ed88:   mov    0x1e0(%rsp),%r10
          │    0x00007fbd5063ed90:   shl    $0x14,%r10
   0.13%  │    0x00007fbd5063ed94:   mov    0x1e0(%rsp),%r8
          │    0x00007fbd5063ed9c:   shl    $0x18,%r8
          │    0x00007fbd5063eda0:   and    $0xfffffff,%r10
          │    0x00007fbd5063eda7:   mov    0x188(%rsp),%r9
   0.13%  │    0x00007fbd5063edaf:   add    %r10,%r9
          │    0x00007fbd5063edb2:   and    $0xfffffff,%r8
          │    0x00007fbd5063edb9:   mov    0x190(%rsp),%rcx
          │    0x00007fbd5063edc1:   add    %r8,%rcx
   0.12%  │    0x00007fbd5063edc4:   mov    0x1e0(%rsp),%r10
          │    0x00007fbd5063edcc:   sar    $0x8,%r10
          │    0x00007fbd5063edd0:   add    %r10,%rcx
          │    0x00007fbd5063edd3:   mov    0x1e0(%rsp),%r8
   0.15%  │    0x00007fbd5063eddb:   sar    $0x4,%r8
          │    0x00007fbd5063eddf:   mov    0x198(%rsp),%r10
          │    0x00007fbd5063ede7:   add    %r8,%r10                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@23 (line 84)
          │    0x00007fbd5063edea:   mov    0x1e0(%rsp),%rbx
   0.14%  │    0x00007fbd5063edf2:   shl    $0x8,%rbx
          │    0x00007fbd5063edf6:   mov    %r10,%r8
          │    0x00007fbd5063edf9:   sar    $0x8,%r8
          │    0x00007fbd5063edfd:   mov    %r8,0x180(%rsp)
   0.12%  │    0x00007fbd5063ee05:   and    $0xfffffff,%rbx
          │    0x00007fbd5063ee0c:   mov    0x170(%rsp),%rdx
          │    0x00007fbd5063ee14:   add    %rbx,%rdx
          │    0x00007fbd5063ee17:   mov    %r10,%r8
   0.13%  │    0x00007fbd5063ee1a:   shl    $0x18,%r8
          │    0x00007fbd5063ee1e:   vmovq  %r10,%xmm0
          │    0x00007fbd5063ee23:   shl    $0x14,%r10
          │    0x00007fbd5063ee27:   and    $0xfffffff,%r8
   0.11%  │    0x00007fbd5063ee2e:   mov    %r8,0x170(%rsp)              ;   {no_reloc}
          │    0x00007fbd5063ee36:   and    $0xfffffff,%r10
          │    0x00007fbd5063ee3d:   mov    %r10,0x188(%rsp)
   0.00%  │    0x00007fbd5063ee45:   vmovq  %xmm0,%r10
   0.15%  │    0x00007fbd5063ee4a:   sar    $0x10,%r10
   0.06%  │    0x00007fbd5063ee4e:   mov    %r10,0x190(%rsp)
   0.14%  │    0x00007fbd5063ee56:   vmovq  %xmm0,%r10
          │    0x00007fbd5063ee5b:   sar    $0x14,%r10
   0.25%  │    0x00007fbd5063ee5f:   mov    %r10,0x198(%rsp)
   0.12%  │    0x00007fbd5063ee67:   vmovq  %xmm0,%r10
   0.05%  │    0x00007fbd5063ee6c:   shl    $0xc,%r10
          │    0x00007fbd5063ee70:   vmovq  %xmm0,%r8
   0.03%  │    0x00007fbd5063ee75:   shl    $0x8,%r8
   0.07%  │    0x00007fbd5063ee79:   and    $0xfffffff,%r10
   0.04%  │    0x00007fbd5063ee80:   and    $0xfffffff,%r8
   0.01%  │    0x00007fbd5063ee87:   add    %r8,%rdi
   0.03%  │    0x00007fbd5063ee8a:   vmovq  %xmm0,%r8
   0.07%  │    0x00007fbd5063ee8f:   sar    $0x4,%r8
   0.07%  │    0x00007fbd5063ee93:   mov    %r8,0xc0(%rsp)
          │    0x00007fbd5063ee9b:   mov    0x1e0(%rsp),%r8
   0.02%  │    0x00007fbd5063eea3:   shl    $0xc,%r8
   0.06%  │    0x00007fbd5063eea7:   and    $0xfffffff,%r8
   0.04%  │    0x00007fbd5063eeae:   mov    0x178(%rsp),%rbx
          │    0x00007fbd5063eeb6:   sub    %r8,%rbx
   0.02%  │    0x00007fbd5063eeb9:   vmovq  %rbx,%xmm9
   0.05%  │    0x00007fbd5063eebe:   mov    0x1d8(%rsp),%r8
   0.04%  │    0x00007fbd5063eec6:   shl    $0x14,%r8
          │    0x00007fbd5063eeca:   and    $0xfffffff,%r8
   0.04%  │    0x00007fbd5063eed1:   add    %r8,%r11
   0.07%  │    0x00007fbd5063eed4:   mov    %r11,%rsi
   0.03%  │    0x00007fbd5063eed7:   mov    0x1d8(%rsp),%r11
          │    0x00007fbd5063eedf:   shl    $0x18,%r11
   0.03%  │    0x00007fbd5063eee3:   and    $0xfffffff,%r11
   0.05%  │    0x00007fbd5063eeea:   add    %r11,%r9
   0.04%  │    0x00007fbd5063eeed:   mov    0x1d8(%rsp),%r11
          │    0x00007fbd5063eef5:   sar    $0x8,%r11
   0.03%  │    0x00007fbd5063eef9:   add    %r11,%r9
   0.05%  │    0x00007fbd5063eefc:   mov    0x1d8(%rsp),%r11
   0.03%  │    0x00007fbd5063ef04:   sar    $0x4,%r11
          │    0x00007fbd5063ef08:   lea    (%rcx,%r11,1),%r8
   0.02%  │    0x00007fbd5063ef0c:   vmovq  %r8,%xmm1
   0.06%  │    0x00007fbd5063ef11:   mov    0x1d8(%rsp),%r11
   0.04%  │    0x00007fbd5063ef19:   shl    $0x8,%r11
          │    0x00007fbd5063ef1d:   and    $0xfffffff,%r11
   0.03%  │    0x00007fbd5063ef24:   mov    0x168(%rsp),%r8
   0.06%  │    0x00007fbd5063ef2c:   add    %r11,%r8
   0.05%  │    0x00007fbd5063ef2f:   mov    %r8,%r13
          │    0x00007fbd5063ef32:   vmovq  %xmm1,%r11                   ;   {no_reloc}
   0.03%  │    0x00007fbd5063ef37:   sar    $0x8,%r11
   0.11%  │    0x00007fbd5063ef3b:   mov    %r11,0x168(%rsp)
   0.09%  │    0x00007fbd5063ef43:   vmovq  %xmm1,%r11
          │    0x00007fbd5063ef48:   shl    $0x18,%r11
   0.20%  │    0x00007fbd5063ef4c:   and    $0xfffffff,%r11
   0.11%  │    0x00007fbd5063ef53:   mov    %r11,0x178(%rsp)
   0.17%  │    0x00007fbd5063ef5b:   vmovq  %xmm1,%r11
          │    0x00007fbd5063ef60:   shl    $0x14,%r11
          │    0x00007fbd5063ef64:   and    $0xfffffff,%r11
   0.03%  │    0x00007fbd5063ef6b:   vmovq  %xmm1,%r8
   0.11%  │    0x00007fbd5063ef70:   sar    $0x10,%r8
          │    0x00007fbd5063ef74:   vmovq  %xmm1,%rcx
          │    0x00007fbd5063ef79:   sar    $0x14,%rcx
   0.04%  │    0x00007fbd5063ef7d:   vmovq  %xmm1,%rbx
   0.07%  │    0x00007fbd5063ef82:   shl    $0xc,%rbx
          │    0x00007fbd5063ef86:   and    $0xfffffff,%rbx
          │    0x00007fbd5063ef8d:   sub    %rbx,%rdi
   0.04%  │    0x00007fbd5063ef90:   add    %rcx,%rdi
   0.08%  │    0x00007fbd5063ef93:   vmovq  %rdi,%xmm3
   0.02%  │    0x00007fbd5063ef98:   vmovq  %xmm1,%rcx
          │    0x00007fbd5063ef9d:   shl    $0x8,%rcx
   0.04%  │    0x00007fbd5063efa1:   and    $0xfffffff,%rcx
   0.08%  │    0x00007fbd5063efa8:   add    %rcx,%rbp
   0.00%  │    0x00007fbd5063efab:   vmovq  %xmm1,%rcx
          │    0x00007fbd5063efb0:   sar    $0x4,%rcx
   0.04%  │    0x00007fbd5063efb4:   mov    %rcx,0xc8(%rsp)
   0.10%  │    0x00007fbd5063efbc:   mov    0x1d8(%rsp),%rcx
   0.01%  │    0x00007fbd5063efc4:   shl    $0xc,%rcx
          │    0x00007fbd5063efc8:   and    $0xfffffff,%rcx
   0.06%  │    0x00007fbd5063efcf:   sub    %rcx,%rdx
   0.12%  │    0x00007fbd5063efd2:   mov    0x1d8(%rsp),%rcx
   0.00%  │    0x00007fbd5063efda:   sar    $0x14,%rcx
          │    0x00007fbd5063efde:   add    %rcx,%rdx
   0.03%  │    0x00007fbd5063efe1:   vmovq  %rdx,%xmm4
   0.09%  │    0x00007fbd5063efe6:   mov    0x1d8(%rsp),%rcx
          │    0x00007fbd5063efee:   sar    $0x10,%rcx
          │    0x00007fbd5063eff2:   mov    %rcx,0xd0(%rsp)
   0.05%  │    0x00007fbd5063effa:   mov    0x1d0(%rsp),%rcx
   0.09%  │    0x00007fbd5063f002:   shl    $0x18,%rcx
   0.01%  │    0x00007fbd5063f006:   and    $0xfffffff,%rcx
          │    0x00007fbd5063f00d:   lea    (%rsi,%rcx,1),%rbx
   0.03%  │    0x00007fbd5063f011:   mov    0x1d0(%rsp),%rcx
   0.09%  │    0x00007fbd5063f019:   sar    $0x8,%rcx
   0.00%  │    0x00007fbd5063f01d:   add    %rcx,%rbx
          │    0x00007fbd5063f020:   vmovq  %rbx,%xmm5
   0.03%  │    0x00007fbd5063f025:   mov    0x1d0(%rsp),%rcx
   0.08%  │    0x00007fbd5063f02d:   sar    $0x4,%rcx
          │    0x00007fbd5063f031:   add    %rcx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@213 (line 102)
          │                                                              ;   {no_reloc}
          │    0x00007fbd5063f034:   vmovq  %r9,%xmm2
   0.05%  │    0x00007fbd5063f039:   mov    0x1d0(%rsp),%r9
   0.09%  │    0x00007fbd5063f041:   shl    $0x8,%r9
   0.00%  │    0x00007fbd5063f045:   and    $0xfffffff,%r9
          │    0x00007fbd5063f04c:   mov    0x160(%rsp),%rcx
   0.03%  │    0x00007fbd5063f054:   add    %r9,%rcx
   0.09%  │    0x00007fbd5063f057:   vmovq  %rcx,%xmm6
   0.00%  │    0x00007fbd5063f05c:   vmovq  %xmm2,%r9
   0.02%  │    0x00007fbd5063f061:   sar    $0x8,%r9
   0.41%  │    0x00007fbd5063f065:   vmovq  %xmm2,%rcx
   0.04%  │    0x00007fbd5063f06a:   shl    $0x18,%rcx
   0.00%  │    0x00007fbd5063f06e:   and    $0xfffffff,%rcx
   0.00%  │    0x00007fbd5063f075:   vmovq  %xmm2,%rbx
   0.08%  │    0x00007fbd5063f07a:   shl    $0x14,%rbx
   0.16%  │    0x00007fbd5063f07e:   and    $0xfffffff,%rbx
   0.03%  │    0x00007fbd5063f085:   vmovq  %xmm2,%rdi
          │    0x00007fbd5063f08a:   sar    $0x10,%rdi
   0.29%  │    0x00007fbd5063f08e:   vmovq  %xmm3,%rdx
   0.02%  │    0x00007fbd5063f093:   sub    %rdi,%rdx
   0.04%  │    0x00007fbd5063f096:   vmovq  %rdx,%xmm3
   0.02%  │    0x00007fbd5063f09b:   vmovq  %xmm2,%rdi
   0.08%  │    0x00007fbd5063f0a0:   sar    $0x14,%rdi
   0.01%  │    0x00007fbd5063f0a4:   vmovq  %xmm2,%rdx
   0.03%  │    0x00007fbd5063f0a9:   shl    $0xc,%rdx
   0.02%  │    0x00007fbd5063f0ad:   and    $0xfffffff,%rdx
   0.07%  │    0x00007fbd5063f0b4:   mov    %rbp,%rsi
   0.01%  │    0x00007fbd5063f0b7:   sub    %rdx,%rsi
   0.04%  │    0x00007fbd5063f0ba:   add    %rdi,%rsi
   0.01%  │    0x00007fbd5063f0bd:   vmovq  %rsi,%xmm10
   0.09%  │    0x00007fbd5063f0c2:   vmovq  %xmm2,%rdi
   0.01%  │    0x00007fbd5063f0c7:   shl    $0x8,%rdi
   0.03%  │    0x00007fbd5063f0cb:   and    $0xfffffff,%rdi
   0.01%  │    0x00007fbd5063f0d2:   lea    (%rax,%rdi,1),%rdx
   0.10%  │    0x00007fbd5063f0d6:   vmovq  %rdx,%xmm11
   0.01%  │    0x00007fbd5063f0db:   vmovq  %xmm2,%rdi
   0.04%  │    0x00007fbd5063f0e0:   sar    $0x4,%rdi
   0.01%  │    0x00007fbd5063f0e4:   mov    0x1d0(%rsp),%rdx
   0.08%  │    0x00007fbd5063f0ec:   shl    $0xc,%rdx
          │    0x00007fbd5063f0f0:   and    $0xfffffff,%rdx
   0.03%  │    0x00007fbd5063f0f7:   mov    %r13,%rsi
   0.01%  │    0x00007fbd5063f0fa:   sub    %rdx,%rsi
   0.09%  │    0x00007fbd5063f0fd:   mov    0x1d0(%rsp),%rdx
   0.01%  │    0x00007fbd5063f105:   sar    $0x14,%rdx
   0.03%  │    0x00007fbd5063f109:   add    %rdx,%rsi
   0.01%  │    0x00007fbd5063f10c:   vmovq  %rsi,%xmm12
   0.09%  │    0x00007fbd5063f111:   mov    0x1d0(%rsp),%rdx
   0.01%  │    0x00007fbd5063f119:   sar    $0x10,%rdx
   0.02%  │    0x00007fbd5063f11d:   vmovq  %xmm4,%rsi
   0.01%  │    0x00007fbd5063f122:   sub    %rdx,%rsi
   0.09%  │    0x00007fbd5063f125:   vmovq  %rsi,%xmm4
   0.01%  │    0x00007fbd5063f12a:   mov    0x1d0(%rsp),%rdx             ;   {no_reloc}
   0.03%  │    0x00007fbd5063f132:   shl    $0x14,%rdx
   0.01%  │    0x00007fbd5063f136:   and    $0xfffffff,%rdx
   0.09%  │    0x00007fbd5063f13d:   mov    %rdx,0x160(%rsp)
   0.00%  │    0x00007fbd5063f145:   mov    0x1c8(%rsp),%rdx
   0.03%  │    0x00007fbd5063f14d:   sar    $0x4,%rdx
   0.01%  │    0x00007fbd5063f151:   vmovq  %xmm5,%rsi
   0.10%  │    0x00007fbd5063f156:   add    %rdx,%rsi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@308 (line 111)
   0.01%  │    0x00007fbd5063f159:   vmovq  %rsi,%xmm5
   0.04%  │    0x00007fbd5063f15e:   mov    0x1c8(%rsp),%rdx
   0.01%  │    0x00007fbd5063f166:   shl    $0x8,%rdx
   0.08%  │    0x00007fbd5063f16a:   and    $0xfffffff,%rdx
   0.01%  │    0x00007fbd5063f171:   mov    0x158(%rsp),%rsi
   0.03%  │    0x00007fbd5063f179:   add    %rdx,%rsi
   0.00%  │    0x00007fbd5063f17c:   vmovq  %rsi,%xmm13
   0.08%  │    0x00007fbd5063f181:   vmovq  %xmm5,%rdx
   0.00%  │    0x00007fbd5063f186:   sar    $0x8,%rdx
   0.29%  │    0x00007fbd5063f18a:   vmovq  %xmm5,%rsi
   0.01%  │    0x00007fbd5063f18f:   shl    $0x18,%rsi
   0.09%  │    0x00007fbd5063f193:   and    $0xfffffff,%rsi
   0.00%  │    0x00007fbd5063f19a:   vmovq  %xmm5,%rax
   0.05%  │    0x00007fbd5063f19f:   shl    $0x14,%rax
   0.05%  │    0x00007fbd5063f1a3:   and    $0xfffffff,%rax
   0.16%  │    0x00007fbd5063f1a9:   vmovq  %xmm3,%rbp
   0.01%  │    0x00007fbd5063f1ae:   add    %rax,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@1177 (line 193)
   0.09%  │    0x00007fbd5063f1b1:   vmovq  %rbp,%xmm14
   0.01%  │    0x00007fbd5063f1b6:   vmovq  %xmm5,%rax
   0.12%  │    0x00007fbd5063f1bb:   sar    $0x10,%rax
   0.02%  │    0x00007fbd5063f1bf:   vmovq  %xmm10,%rbp
   0.07%  │    0x00007fbd5063f1c4:   sub    %rax,%rbp                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@1211 (line 196)
   0.01%  │    0x00007fbd5063f1c7:   vmovq  %rbp,%xmm10
   0.10%  │    0x00007fbd5063f1cc:   vmovq  %xmm5,%rax
   0.03%  │    0x00007fbd5063f1d1:   sar    $0x14,%rax
   0.05%  │    0x00007fbd5063f1d5:   vmovq  %xmm5,%rbp
   0.03%  │    0x00007fbd5063f1da:   shl    $0xc,%rbp
   0.05%  │    0x00007fbd5063f1de:   and    $0xfffffff,%rbp
   0.01%  │    0x00007fbd5063f1e5:   vmovq  %xmm11,%r13
   0.07%  │    0x00007fbd5063f1ea:   sub    %rbp,%r13
   0.01%  │    0x00007fbd5063f1ed:   add    %rax,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@1233 (line 198)
   0.06%  │    0x00007fbd5063f1f0:   vmovq  %r13,%xmm11
   0.02%  │    0x00007fbd5063f1f5:   vmovq  %xmm5,%rbp
   0.04%  │    0x00007fbd5063f1fa:   shl    $0x8,%rbp
   0.01%  │    0x00007fbd5063f1fe:   vmovq  %xmm5,%rax
   0.05%  │    0x00007fbd5063f203:   sar    $0x4,%rax
   0.01%  │    0x00007fbd5063f207:   mov    %rax,%r13
   0.06%  │    0x00007fbd5063f20a:   and    $0xfffffff,%rbp
   0.02%  │    0x00007fbd5063f211:   lea    (%r14,%rbp,1),%rax
   0.06%  │    0x00007fbd5063f215:   vmovq  %rax,%xmm15
   0.01%  │    0x00007fbd5063f21a:   mov    0x1c8(%rsp),%rax
   0.04%  │    0x00007fbd5063f222:   shl    $0xc,%rax
   0.01%  │    0x00007fbd5063f226:   and    $0xfffffff,%rax
   0.05%  │    0x00007fbd5063f22c:   vmovq  %xmm6,%rbp                   ;   {no_reloc}
   0.01%  │    0x00007fbd5063f231:   sub    %rax,%rbp
   0.04%  │    0x00007fbd5063f234:   mov    0x1c8(%rsp),%rax
   0.01%  │    0x00007fbd5063f23c:   sar    $0x14,%rax
   0.06%  │    0x00007fbd5063f240:   add    %rax,%rbp
   0.01%  │    0x00007fbd5063f243:   mov    %rbp,0x158(%rsp)
   0.03%  │    0x00007fbd5063f24b:   mov    0x1c8(%rsp),%rax
   0.01%  │    0x00007fbd5063f253:   sar    $0x10,%rax
   0.07%  │    0x00007fbd5063f257:   vmovq  %xmm12,%rbp
   0.02%  │    0x00007fbd5063f25c:   sub    %rax,%rbp
   0.04%  │    0x00007fbd5063f25f:   vmovq  %rbp,%xmm12
   0.01%  │    0x00007fbd5063f264:   mov    0x1c8(%rsp),%rax
   0.07%  │    0x00007fbd5063f26c:   shl    $0x14,%rax
   0.03%  │    0x00007fbd5063f270:   and    $0xfffffff,%rax
   0.05%  │    0x00007fbd5063f276:   vmovq  %xmm4,%rbp
   0.01%  │    0x00007fbd5063f27b:   add    %rax,%rbp
   0.05%  │    0x00007fbd5063f27e:   mov    %rbp,0xd8(%rsp)
   0.01%  │    0x00007fbd5063f286:   mov    0x1c8(%rsp),%rax
   0.05%  │    0x00007fbd5063f28e:   shl    $0x18,%rax
   0.01%  │    0x00007fbd5063f292:   and    $0xfffffff,%rax
   0.08%  │    0x00007fbd5063f298:   mov    %rax,0xe0(%rsp)
   0.02%  │    0x00007fbd5063f2a0:   mov    0x1c8(%rsp),%rax
   0.05%  │    0x00007fbd5063f2a8:   sar    $0x8,%rax
   0.01%  │    0x00007fbd5063f2ac:   mov    %rax,0xe8(%rsp)
   0.05%  │    0x00007fbd5063f2b4:   mov    0x1a0(%rsp),%rax
   0.02%  │    0x00007fbd5063f2bc:   shl    $0x8,%rax
   0.04%  │    0x00007fbd5063f2c0:   and    $0xfffffff,%rax
   0.01%  │    0x00007fbd5063f2c6:   mov    0x130(%rsp),%rbp
   0.08%  │    0x00007fbd5063f2ce:   add    %rax,%rbp
   0.01%  │    0x00007fbd5063f2d1:   sub    %r10,%rbp
   0.03%  │    0x00007fbd5063f2d4:   add    0x198(%rsp),%rbp
   0.00%  │    0x00007fbd5063f2dc:   sub    %r8,%rbp
   0.06%  │    0x00007fbd5063f2df:   add    %rbx,%rbp
   0.02%  │    0x00007fbd5063f2e2:   add    %rsi,%rbp
   0.04%  │    0x00007fbd5063f2e5:   add    %rdx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@1187 (line 194)
   0.02%  │    0x00007fbd5063f2e8:   vmovq  %rbp,%xmm3
   0.07%  │    0x00007fbd5063f2ed:   mov    0x1a0(%rsp),%r10
   0.02%  │    0x00007fbd5063f2f5:   shl    $0xc,%r10
   0.05%  │    0x00007fbd5063f2f9:   and    $0xfffffff,%r10
   0.01%  │    0x00007fbd5063f300:   mov    0x1a0(%rsp),%r8
   0.07%  │    0x00007fbd5063f308:   sar    $0x14,%r8
   0.02%  │    0x00007fbd5063f30c:   mov    0x1a0(%rsp),%rax
   0.05%  │    0x00007fbd5063f314:   sar    $0x10,%rax
   0.02%  │    0x00007fbd5063f318:   mov    0x1a0(%rsp),%rbx
   0.05%  │    0x00007fbd5063f320:   shl    $0x14,%rbx
   0.01%  │    0x00007fbd5063f324:   and    $0xfffffff,%rbx
   0.04%  │    0x00007fbd5063f32b:   mov    0x1a0(%rsp),%rdx             ;   {no_reloc}
   0.01%  │    0x00007fbd5063f333:   shl    $0x18,%rdx
   0.05%  │    0x00007fbd5063f337:   and    $0xfffffff,%rdx
   0.01%  │    0x00007fbd5063f33e:   mov    %rdx,0x130(%rsp)
   0.04%  │    0x00007fbd5063f346:   mov    0x1a0(%rsp),%rdx
   0.00%  │    0x00007fbd5063f34e:   sar    $0x8,%rdx
   0.06%  │    0x00007fbd5063f352:   mov    %rdx,0x198(%rsp)
   0.02%  │    0x00007fbd5063f35a:   mov    0x1a0(%rsp),%rdx
   0.06%  │    0x00007fbd5063f362:   sar    $0x4,%rdx
   0.01%  │    0x00007fbd5063f366:   mov    %rdx,0xf0(%rsp)
   0.05%  │    0x00007fbd5063f36e:   mov    0x1a8(%rsp),%rdx
   0.01%  │    0x00007fbd5063f376:   shl    $0x8,%rdx
   0.04%  │    0x00007fbd5063f37a:   and    $0xfffffff,%rdx
   0.02%  │    0x00007fbd5063f381:   mov    0x138(%rsp),%rsi
   0.07%  │    0x00007fbd5063f389:   add    %rdx,%rsi
   0.01%  │    0x00007fbd5063f38c:   sub    %r10,%rsi
   0.04%  │    0x00007fbd5063f38f:   add    %r8,%rsi
   0.01%  │    0x00007fbd5063f392:   sub    0x190(%rsp),%rsi
   0.07%  │    0x00007fbd5063f39a:   add    %r11,%rsi
   0.01%  │    0x00007fbd5063f39d:   add    %rcx,%rsi
   0.04%  │    0x00007fbd5063f3a0:   add    %r9,%rsi
   0.02%  │    0x00007fbd5063f3a3:   add    %r13,%rsi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@1163 (line 192)
   0.05%  │    0x00007fbd5063f3a6:   vmovq  %rsi,%xmm4
   0.02%  │    0x00007fbd5063f3ab:   mov    0x1a8(%rsp),%r10
   0.03%  │    0x00007fbd5063f3b3:   shl    $0xc,%r10
   0.01%  │    0x00007fbd5063f3b7:   and    $0xfffffff,%r10
   0.08%  │    0x00007fbd5063f3be:   mov    0x1a8(%rsp),%r11
   0.02%  │    0x00007fbd5063f3c6:   sar    $0x14,%r11
   0.03%  │    0x00007fbd5063f3ca:   mov    0x1a8(%rsp),%rdx
   0.00%  │    0x00007fbd5063f3d2:   sar    $0x10,%rdx
   0.06%  │    0x00007fbd5063f3d6:   mov    0x1a8(%rsp),%r8
   0.01%  │    0x00007fbd5063f3de:   shl    $0x14,%r8
   0.06%  │    0x00007fbd5063f3e2:   and    $0xfffffff,%r8
   0.02%  │    0x00007fbd5063f3e9:   mov    %r8,0x138(%rsp)
   0.07%  │    0x00007fbd5063f3f1:   mov    0x1a8(%rsp),%r8
   0.01%  │    0x00007fbd5063f3f9:   shl    $0x18,%r8
   0.03%  │    0x00007fbd5063f3fd:   and    $0xfffffff,%r8
   0.01%  │    0x00007fbd5063f404:   mov    %r8,0x190(%rsp)
   0.08%  │    0x00007fbd5063f40c:   mov    0x1a8(%rsp),%r8
   0.01%  │    0x00007fbd5063f414:   sar    $0x8,%r8
   0.04%  │    0x00007fbd5063f418:   mov    %r8,0xf8(%rsp)
   0.00%  │    0x00007fbd5063f420:   mov    0x1a8(%rsp),%r8
   0.04%  │    0x00007fbd5063f428:   sar    $0x4,%r8
   0.01%  │    0x00007fbd5063f42c:   mov    %r8,0x100(%rsp)              ;   {no_reloc}
   0.05%  │    0x00007fbd5063f434:   mov    0x1b0(%rsp),%r8
   0.01%  │    0x00007fbd5063f43c:   shl    $0x8,%r8
   0.07%  │    0x00007fbd5063f440:   and    $0xfffffff,%r8
   0.01%  │    0x00007fbd5063f447:   mov    0x140(%rsp),%r9
   0.05%  │    0x00007fbd5063f44f:   add    %r8,%r9
   0.00%  │    0x00007fbd5063f452:   sub    %r10,%r9
   0.07%  │    0x00007fbd5063f455:   add    %r11,%r9
   0.01%  │    0x00007fbd5063f458:   sub    %rax,%r9
   0.07%  │    0x00007fbd5063f45b:   add    0x188(%rsp),%r9
   0.01%  │    0x00007fbd5063f463:   add    0x178(%rsp),%r9
   0.06%  │    0x00007fbd5063f46b:   add    0x168(%rsp),%r9
   0.01%  │    0x00007fbd5063f473:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@1068 (line 183)
   0.05%  │    0x00007fbd5063f476:   vmovq  %r9,%xmm5
   0.01%  │    0x00007fbd5063f47b:   mov    0x1b0(%rsp),%rcx
   0.08%  │    0x00007fbd5063f483:   shl    $0xc,%rcx
   0.01%  │    0x00007fbd5063f487:   and    $0xfffffff,%rcx
   0.04%  │    0x00007fbd5063f48e:   mov    0x1b0(%rsp),%rdi
   0.01%  │    0x00007fbd5063f496:   sar    $0x14,%rdi
   0.07%  │    0x00007fbd5063f49a:   mov    0x1b0(%rsp),%r10
   0.01%  │    0x00007fbd5063f4a2:   sar    $0x10,%r10
   0.04%  │    0x00007fbd5063f4a6:   mov    0x1b0(%rsp),%r11
   0.02%  │    0x00007fbd5063f4ae:   shl    $0x14,%r11
   0.08%  │    0x00007fbd5063f4b2:   and    $0xfffffff,%r11
   0.01%  │    0x00007fbd5063f4b9:   mov    0x1b0(%rsp),%r8
   0.04%  │    0x00007fbd5063f4c1:   shl    $0x18,%r8
   0.03%  │    0x00007fbd5063f4c5:   and    $0xfffffff,%r8
   0.07%  │    0x00007fbd5063f4cc:   mov    0x1b0(%rsp),%r9
   0.01%  │    0x00007fbd5063f4d4:   sar    $0x8,%r9
   0.04%  │    0x00007fbd5063f4d8:   mov    0x1b0(%rsp),%rsi
   0.01%  │    0x00007fbd5063f4e0:   sar    $0x4,%rsi
   0.07%  │    0x00007fbd5063f4e4:   mov    %rsi,0x140(%rsp)
   0.02%  │    0x00007fbd5063f4ec:   mov    0x1b8(%rsp),%rsi
   0.05%  │    0x00007fbd5063f4f4:   shl    $0x8,%rsi
   0.01%  │    0x00007fbd5063f4f8:   and    $0xfffffff,%rsi
   0.05%  │    0x00007fbd5063f4ff:   mov    0x148(%rsp),%rax
   0.01%  │    0x00007fbd5063f507:   add    %rsi,%rax
   0.05%  │    0x00007fbd5063f50a:   sub    %rcx,%rax
   0.01%  │    0x00007fbd5063f50d:   add    %rdi,%rax
   0.06%  │    0x00007fbd5063f510:   sub    %rdx,%rax
   0.02%  │    0x00007fbd5063f513:   add    %rbx,%rax
   0.09%  │    0x00007fbd5063f516:   add    0x170(%rsp),%rax
   0.02%  │    0x00007fbd5063f51e:   add    0x180(%rsp),%rax
   0.08%  │    0x00007fbd5063f526:   add    0xc8(%rsp),%rax              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@973 (line 174)
          │                                                              ;   {no_reloc}
   0.02%  │    0x00007fbd5063f52e:   vmovq  %rax,%xmm6
   0.14%  │    0x00007fbd5063f533:   mov    0x1b8(%rsp),%rcx
   0.00%  │    0x00007fbd5063f53b:   shl    $0xc,%rcx
   0.04%  │    0x00007fbd5063f53f:   and    $0xfffffff,%rcx
   0.01%  │    0x00007fbd5063f546:   mov    0x1b8(%rsp),%rbx
   0.07%  │    0x00007fbd5063f54e:   sar    $0x14,%rbx
   0.01%  │    0x00007fbd5063f552:   mov    0x1b8(%rsp),%rdi
   0.03%  │    0x00007fbd5063f55a:   sar    $0x10,%rdi
   0.01%  │    0x00007fbd5063f55e:   mov    0x1b8(%rsp),%rdx
   0.06%  │    0x00007fbd5063f566:   shl    $0x14,%rdx
   0.00%  │    0x00007fbd5063f56a:   and    $0xfffffff,%rdx
   0.05%  │    0x00007fbd5063f571:   mov    0x1b8(%rsp),%rsi
   0.01%  │    0x00007fbd5063f579:   shl    $0x18,%rsi
   0.05%  │    0x00007fbd5063f57d:   and    $0xfffffff,%rsi
   0.00%  │    0x00007fbd5063f584:   mov    0x1b8(%rsp),%rax
   0.05%  │    0x00007fbd5063f58c:   sar    $0x8,%rax
   0.00%  │    0x00007fbd5063f590:   mov    0x1b8(%rsp),%rbp
   0.08%  │    0x00007fbd5063f598:   sar    $0x4,%rbp
   0.00%  │    0x00007fbd5063f59c:   mov    0x1c0(%rsp),%r13
   0.04%  │    0x00007fbd5063f5a4:   shl    $0x8,%r13
   0.01%  │    0x00007fbd5063f5a8:   and    $0xfffffff,%r13
   0.05%  │    0x00007fbd5063f5af:   mov    0x150(%rsp),%r14
   0.01%  │    0x00007fbd5063f5b7:   add    %r13,%r14
   0.05%  │    0x00007fbd5063f5ba:   sub    %rcx,%r14
   0.01%  │    0x00007fbd5063f5bd:   add    %rbx,%r14
   0.07%  │    0x00007fbd5063f5c0:   sub    %r10,%r14
   0.01%  │    0x00007fbd5063f5c3:   add    0x138(%rsp),%r14
   0.09%  │    0x00007fbd5063f5cb:   add    0x130(%rsp),%r14
   0.04%  │    0x00007fbd5063f5d3:   add    0x198(%rsp),%r14
   0.06%  │    0x00007fbd5063f5db:   add    0xc0(%rsp),%r14              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@878 (line 165)
   0.08%  │    0x00007fbd5063f5e3:   mov    0x1c0(%rsp),%r10
   0.05%  │    0x00007fbd5063f5eb:   shl    $0xc,%r10
   0.01%  │    0x00007fbd5063f5ef:   and    $0xfffffff,%r10
   0.00%  │    0x00007fbd5063f5f6:   vmovq  %xmm13,%rcx
   0.06%  │    0x00007fbd5063f5fb:   sub    %r10,%rcx
   0.06%  │    0x00007fbd5063f5fe:   mov    0x1c0(%rsp),%r10
   0.01%  │    0x00007fbd5063f606:   sar    $0x14,%r10
   0.00%  │    0x00007fbd5063f60a:   add    %r10,%rcx
   0.09%  │    0x00007fbd5063f60d:   sub    %rdi,%rcx
   0.06%  │    0x00007fbd5063f610:   add    %r11,%rcx
   0.02%  │    0x00007fbd5063f613:   add    0x190(%rsp),%rcx
   0.04%  │    0x00007fbd5063f61b:   add    0xf8(%rsp),%rcx
   0.06%  │    0x00007fbd5063f623:   add    0xf0(%rsp),%rcx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@783 (line 156)
   0.15%  │    0x00007fbd5063f62b:   mov    0x1c0(%rsp),%r10             ;   {no_reloc}
   0.00%  │    0x00007fbd5063f633:   sar    $0x10,%r10
   0.00%  │    0x00007fbd5063f637:   mov    0x158(%rsp),%r11
   0.01%  │    0x00007fbd5063f63f:   sub    %r10,%r11
   0.09%  │    0x00007fbd5063f642:   add    %rdx,%r11
   0.01%  │    0x00007fbd5063f645:   add    %r8,%r11
   0.01%  │    0x00007fbd5063f648:   add    %r9,%r11
   0.02%  │    0x00007fbd5063f64b:   add    0x100(%rsp),%r11             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@688 (line 147)
   0.11%  │    0x00007fbd5063f653:   mov    %r11,%rbx
          │    0x00007fbd5063f656:   mov    0x1c0(%rsp),%r10
          │    0x00007fbd5063f65e:   shl    $0x14,%r10
   0.01%  │    0x00007fbd5063f662:   and    $0xfffffff,%r10
   0.12%  │    0x00007fbd5063f669:   vmovq  %xmm12,%r11
          │    0x00007fbd5063f66e:   add    %r10,%r11
   0.00%  │    0x00007fbd5063f671:   add    %rsi,%r11
   0.02%  │    0x00007fbd5063f674:   add    %rax,%r11
   0.14%  │    0x00007fbd5063f677:   add    0x140(%rsp),%r11             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@593 (line 138)
   0.02%  │    0x00007fbd5063f67f:   mov    %r11,%rdi
          │    0x00007fbd5063f682:   mov    0x1c0(%rsp),%r10
   0.00%  │    0x00007fbd5063f68a:   shl    $0x18,%r10
   0.10%  │    0x00007fbd5063f68e:   and    $0xfffffff,%r10
   0.02%  │    0x00007fbd5063f695:   mov    0xd8(%rsp),%r8
   0.00%  │    0x00007fbd5063f69d:   add    %r10,%r8
   0.00%  │    0x00007fbd5063f6a0:   mov    0x1c0(%rsp),%r10
   0.08%  │    0x00007fbd5063f6a8:   sar    $0x8,%r10
   0.02%  │    0x00007fbd5063f6ac:   add    %r10,%r8
   0.00%  │    0x00007fbd5063f6af:   add    %rbp,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@498 (line 129)
   0.02%  │    0x00007fbd5063f6b2:   mov    0x1c0(%rsp),%r10
   0.08%  │    0x00007fbd5063f6ba:   sar    $0x4,%r10
   0.02%  │    0x00007fbd5063f6be:   mov    0x1e0(%rsp),%r11
   0.00%  │    0x00007fbd5063f6c6:   sar    $0x14,%r11
   0.03%  │    0x00007fbd5063f6ca:   vmovq  %xmm9,%r9
   0.10%  │    0x00007fbd5063f6cf:   add    %r11,%r9
   0.03%  │    0x00007fbd5063f6d2:   sub    0xd0(%rsp),%r9
   0.01%  │    0x00007fbd5063f6da:   add    0x160(%rsp),%r9
   0.07%  │    0x00007fbd5063f6e2:   add    0xe0(%rsp),%r9
   0.12%  │    0x00007fbd5063f6ea:   add    0xe8(%rsp),%r9
   0.09%  │    0x00007fbd5063f6f2:   add    %r10,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@403 (line 120)
   0.09%  │    0x00007fbd5063f6f5:   vmovsd %xmm3,(%rsp)
   0.00%  │    0x00007fbd5063f6fa:   vmovsd %xmm4,0x8(%rsp)
   0.03%  │    0x00007fbd5063f700:   vmovsd %xmm5,0x10(%rsp)
   0.04%  │    0x00007fbd5063f706:   vmovsd %xmm6,0x18(%rsp)
   0.08%  │    0x00007fbd5063f70c:   mov    %r14,0x20(%rsp)
   0.12%  │    0x00007fbd5063f711:   mov    %rcx,0x28(%rsp)
   0.10%  │    0x00007fbd5063f716:   mov    %rbx,0x30(%rsp)
   0.10%  │    0x00007fbd5063f71b:   mov    %rdi,0x38(%rsp)
   0.02%  │    0x00007fbd5063f720:   mov    %r8,0x40(%rsp)
   0.08%  │    0x00007fbd5063f725:   mov    %r9,0x48(%rsp)
   0.12%  │    0x00007fbd5063f72a:   xor    %r10d,%r10d                  ;   {no_reloc}
   0.01%  │    0x00007fbd5063f72d:   mov    %r10,0x50(%rsp)
   0.05%  │    0x00007fbd5063f732:   vmovsd %xmm2,0x58(%rsp)
   0.04%  │    0x00007fbd5063f738:   vmovsd %xmm1,0x60(%rsp)
   0.08%  │    0x00007fbd5063f73e:   vmovsd %xmm0,0x68(%rsp)
   0.10%  │    0x00007fbd5063f744:   mov    0x1a0(%rsp),%r10
          │    0x00007fbd5063f74c:   mov    %r10,0x70(%rsp)
   0.09%  │    0x00007fbd5063f751:   mov    0x1a8(%rsp),%r10
   0.02%  │    0x00007fbd5063f759:   mov    %r10,0x78(%rsp)
   0.10%  │    0x00007fbd5063f75e:   mov    0x1b0(%rsp),%r10
          │    0x00007fbd5063f766:   mov    %r10,0x80(%rsp)
   0.09%  │    0x00007fbd5063f76e:   mov    0x1b8(%rsp),%r10
   0.01%  │    0x00007fbd5063f776:   mov    %r10,0x88(%rsp)
   0.10%  │    0x00007fbd5063f77e:   mov    0x1c0(%rsp),%r10
   0.00%  │    0x00007fbd5063f786:   mov    %r10,0x90(%rsp)
   0.11%  │    0x00007fbd5063f78e:   mov    0x1c8(%rsp),%r10
   0.01%  │    0x00007fbd5063f796:   mov    %r10,0x98(%rsp)
   0.12%  │    0x00007fbd5063f79e:   mov    0x1d0(%rsp),%r10
   0.00%  │    0x00007fbd5063f7a6:   mov    %r10,0xa0(%rsp)
   0.11%  │    0x00007fbd5063f7ae:   mov    0x1d8(%rsp),%r10
   0.01%  │    0x00007fbd5063f7b6:   mov    %r10,0xa8(%rsp)
   0.12%  │    0x00007fbd5063f7be:   mov    0x1e0(%rsp),%r10
   0.01%  │    0x00007fbd5063f7c6:   mov    %r10,0xb0(%rsp)
   0.11%  │    0x00007fbd5063f7ce:   xor    %r10d,%r10d
   0.01%  │    0x00007fbd5063f7d1:   mov    %r10,0xb8(%rsp)
   0.10%  │    0x00007fbd5063f7d9:   vmovq  %xmm7,%rsi
   0.00%  │    0x00007fbd5063f7de:   vmovq  %xmm8,%rdx
          │    0x00007fbd5063f7e3:   vmovq  %xmm15,%rcx
   0.01%  │    0x00007fbd5063f7e8:   vmovq  %xmm11,%r8
   0.12%  │    0x00007fbd5063f7ed:   vmovq  %xmm10,%r9
   0.00%  │    0x00007fbd5063f7f2:   vmovq  %xmm14,%rdi
          │    0x00007fbd5063f7f7:   call   0x00007fbd500c4380           ; ImmutableOopMap {}
          │                                                              ;*invokevirtual carryReduce0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@1296 (line 201)
          │                                                              ;   {optimized virtual_call}
   0.02%  │    0x00007fbd5063f7fc:   nopl   0xc6c(%rax,%rax,1)           ;   {other}
   0.04%  │    0x00007fbd5063f804:   add    $0x120,%rsp
   0.07%  │    0x00007fbd5063f80b:   pop    %rbp
   0.04%  │ ↗  0x00007fbd5063f80c:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭│  0x00007fbd5063f813:   ja     0x00007fbd5063f82a
   0.10%  │││  0x00007fbd5063f819:   ret                                 ;*invokevirtual carryReduce0 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@1296 (line 201)
          │││  0x00007fbd5063f81a:   mov    %rax,%rsi
          │││  0x00007fbd5063f81d:   add    $0x120,%rsp
          │││  0x00007fbd5063f824:   pop    %rbp
          │││  0x00007fbd5063f825:   jmp    0x00007fbd5019d380           ;   {runtime_call _rethrow_Java}
          │↘╰  0x00007fbd5063f82a:   movabs $0x7fbd5063f80c,%r10         ;   {internal_word}
          │    0x00007fbd5063f834:   mov    %r10,0x468(%r15)
          │    0x00007fbd5063f83b:   jmp    0x00007fbd500cb000           ;   {runtime_call SafepointBlob}
          ↘    0x00007fbd5063f840:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
               0x00007fbd5063f845:   jmp    0x00007fbd5063ed5e
....................................................................................................
  20.57%  <total for region 2>

....[Hottest Regions]...............................................................................
  33.33%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::mult, version 2, compile id 650 
  20.57%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce, version 2, compile id 629 
   7.66%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce0, version 2, compile id 617 
   4.22%         c2, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 746 
   3.19%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce, version 2, compile id 628 
   3.12%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier::lookup, version 2, compile id 741 
   2.70%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::square, version 2, compile id 699 
   2.53%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   2.15%         c2, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 746 
   2.08%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::square, version 2, compile id 699 
   1.48%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::carryReduce0, version 2, compile id 735 
   1.32%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::carryReduce0, version 2, compile id 735 
   1.11%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::carryReduce, version 2, compile id 731 
   0.85%         c2, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 746 
   0.84%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::carryReduce0, version 2, compile id 735 
   0.73%         c2, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 746 
   0.71%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::carryReduce1, version 2, compile id 736 
   0.65%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::carryReduce2, version 2, compile id 692 
   0.46%         c2, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 746 
   0.45%              kernel  [unknown] 
   9.83%  <...other 845 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  33.33%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::mult, version 2, compile id 650 
  20.57%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce, version 2, compile id 629 
   8.41%         c2, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 746 
   7.66%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce0, version 2, compile id 617 
   5.07%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::square, version 2, compile id 699 
   3.65%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::carryReduce0, version 2, compile id 735 
   3.19%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce, version 2, compile id 628 
   3.18%         c2, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 794 
   3.14%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier::lookup, version 2, compile id 741 
   2.53%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.68%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::mult, version 2, compile id 762 
   1.38%              kernel  [unknown] 
   1.35%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::square, version 2, compile id 748 
   1.11%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::carryReduce, version 2, compile id 731 
   0.71%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::carryReduce1, version 2, compile id 736 
   0.70%         c2, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 4, compile id 898 
   0.65%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::carryReduce2, version 2, compile id 692 
   0.36%         c2, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 988 
   0.25%        runtime stub  StubRoutines::sha512_implCompressMB 
   0.17%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier$Default::pointMultiply, version 3, compile id 1061 
   0.91%  <...other 119 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.49%         c2, level 4
   2.82%        runtime stub
   1.38%              kernel
   0.15%           libjvm.so
   0.06%        libc-2.31.so
   0.03%                    
   0.02%         interpreter
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.00%          ld-2.31.so
   0.00%        libjimage.so
   0.00%              [vdso]
   0.00%    perf-1934073.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign
# Parameters: (algorithm = secp384r1, messageLength = 16384)

# Run progress: 58.33% complete, ETA 00:09:23
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6357.901 us/op
# Warmup Iteration   2: 2178.702 us/op
# Warmup Iteration   3: 2272.290 us/op
# Warmup Iteration   4: 2148.779 us/op
# Warmup Iteration   5: 2148.050 us/op
Iteration   1: 2147.906 us/op
Iteration   2: 2147.789 us/op
Iteration   3: 2148.101 us/op
Iteration   4: 2148.015 us/op
Iteration   5: 2147.596 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign":
  2147.881 ±(99.9%) 0.762 us/op [Average]
  (min, avg, max) = (2147.596, 2147.881, 2148.101), stdev = 0.198
  CI (99.9%): [2147.119, 2148.644] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign:asm":
PrintAssembly processed: 323751 total address lines.
Perf output processed (skipped 56.804 seconds):
 Column 1: cycles (50609 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, sun.security.util.math.intpoly.IntegerPolynomialP384::mult, version 2, compile id 663 

             # parm2:    r8:r8     = &apos;[J&apos;
             #           [sp+0x490]  (sp of caller)
             0x00007f3e0c6427e0:   mov    0x8(%rsi),%r10d
             0x00007f3e0c6427e4:   movabs $0x7f3d8f000000,%r11
             0x00007f3e0c6427ee:   add    %r11,%r10
             0x00007f3e0c6427f1:   cmp    %r10,%rax
             0x00007f3e0c6427f4:   jne    0x00007f3e0c0c4080           ;   {runtime_call ic_miss_stub}
             0x00007f3e0c6427fa:   xchg   %ax,%ax
             0x00007f3e0c6427fc:   nopl   0x0(%rax)
           [Verified Entry Point]
   0.05%     0x00007f3e0c642800:   mov    %eax,-0x14000(%rsp)
   0.09%     0x00007f3e0c642807:   push   %rbp
   0.02%     0x00007f3e0c642808:   sub    $0x480,%rsp
   0.02%     0x00007f3e0c64280f:   nop
   0.05%     0x00007f3e0c642810:   cmpl   $0x0,0x20(%r15)
   0.03%     0x00007f3e0c642818:   jne    0x00007f3e0c643cfa           ;*synchronization entry
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@-1 (line 379)
   0.02%     0x00007f3e0c64281e:   vmovq  %r8,%xmm0
   0.01%     0x00007f3e0c642823:   mov    0xc(%rdx),%r10d              ; implicit exception: dispatches to 0x00007f3e0c643cbc
   0.04%     0x00007f3e0c642827:   cmp    $0xd,%r10d
          ╭  0x00007f3e0c64282b:   jbe    0x00007f3e0c643c46
   0.04%  │  0x00007f3e0c642831:   mov    0xc(%rcx),%r11d              ; implicit exception: dispatches to 0x00007f3e0c643cd0
   0.01%  │  0x00007f3e0c642835:   mov    0x10(%rdx),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@2 (line 379)
   0.01%  │  0x00007f3e0c642839:   nopl   0x0(%rax)
   0.07%  │  0x00007f3e0c642840:   cmp    $0xd,%r11d
          │  0x00007f3e0c642844:   jbe    0x00007f3e0c643c74
   0.03%  │  0x00007f3e0c64284a:   vmovq  %rsi,%xmm13
   0.01%  │  0x00007f3e0c64284f:   vmovq  %rcx,%xmm1
   0.01%  │  0x00007f3e0c642854:   mov    0x10(%rcx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@5 (line 379)
   0.04%  │  0x00007f3e0c642858:   mov    0x18(%rdx),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@18 (line 380)
   0.04%  │  0x00007f3e0c64285c:   vmovq  %r10,%xmm9
   0.01%  │  0x00007f3e0c642861:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@6 (line 379)
   0.01%  │  0x00007f3e0c642865:   vmovq  %r10,%xmm14
   0.05%  │  0x00007f3e0c64286a:   mov    %r11,%rdi
   0.01%  │  0x00007f3e0c64286d:   mov    %r8,0xb8(%rsp)
   0.01%  │  0x00007f3e0c642875:   imul   %r8,%rdi
   0.01%  │  0x00007f3e0c642879:   mov    0x20(%rdx),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@43 (line 381)
   0.08%  │  0x00007f3e0c64287d:   mov    0x28(%rdx),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@76 (line 382)
   0.02%  │  0x00007f3e0c642881:   mov    %r11,%rsi
   0.01%  │  0x00007f3e0c642884:   mov    %r10,0xc0(%rsp)
   0.01%  │  0x00007f3e0c64288c:   imul   %r10,%rsi
   0.06%  │  0x00007f3e0c642890:   mov    %r11,%r10
   0.03%  │  0x00007f3e0c642893:   mov    %r8,0xc8(%rsp)
   0.02%  │  0x00007f3e0c64289b:   imul   %r8,%r11
   0.02%  │  0x00007f3e0c64289f:   mov    %r11,0xd0(%rsp)
   0.06%  │  0x00007f3e0c6428a7:   mov    0x30(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@117 (line 383)
   0.01%  │  0x00007f3e0c6428ab:   mov    %r11,0xd8(%rsp)
   0.02%  │  0x00007f3e0c6428b3:   mov    0x38(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@166 (line 384)
   0.01%  │  0x00007f3e0c6428b7:   mov    %r11,0xe0(%rsp)
   0.06%  │  0x00007f3e0c6428bf:   mov    %r10,%r13
   0.03%  │  0x00007f3e0c6428c2:   imul   0xd8(%rsp),%r13
   0.13%  │  0x00007f3e0c6428cb:   mov    %r10,%r11
   0.00%  │  0x00007f3e0c6428ce:   imul   0xe0(%rsp),%r11
   0.10%  │  0x00007f3e0c6428d7:   mov    %r11,0xe8(%rsp)
   0.14%  │  0x00007f3e0c6428df:   mov    0x40(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@225 (line 385)
   0.01%  │  0x00007f3e0c6428e3:   mov    %r11,0xf0(%rsp)
   0.00%  │  0x00007f3e0c6428eb:   mov    0x48(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@294 (line 386)
   0.01%  │  0x00007f3e0c6428ef:   mov    %r11,0xf8(%rsp)              ;   {no_reloc}
   0.08%  │  0x00007f3e0c6428f7:   mov    %r10,%r11
   0.01%  │  0x00007f3e0c6428fa:   imul   0xf0(%rsp),%r11
   0.03%  │  0x00007f3e0c642903:   mov    %r11,0x100(%rsp)
   0.09%  │  0x00007f3e0c64290b:   mov    %r10,%r11
   0.03%  │  0x00007f3e0c64290e:   imul   0xf8(%rsp),%r11
   0.05%  │  0x00007f3e0c642917:   mov    %r11,0x108(%rsp)
   0.06%  │  0x00007f3e0c64291f:   mov    0x50(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@373 (line 387)
   0.03%  │  0x00007f3e0c642923:   mov    %r11,0x110(%rsp)
   0.01%  │  0x00007f3e0c64292b:   mov    0x58(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@462 (line 388)
   0.00%  │  0x00007f3e0c64292f:   mov    %r11,0x118(%rsp)
   0.05%  │  0x00007f3e0c642937:   mov    %r10,%r11
   0.02%  │  0x00007f3e0c64293a:   imul   0x110(%rsp),%r11
   0.06%  │  0x00007f3e0c642943:   mov    %r11,0x120(%rsp)
   0.10%  │  0x00007f3e0c64294b:   mov    %r10,%r11
   0.01%  │  0x00007f3e0c64294e:   imul   0x118(%rsp),%r11
   0.03%  │  0x00007f3e0c642957:   mov    %r11,0x128(%rsp)
   0.07%  │  0x00007f3e0c64295f:   mov    0x60(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@561 (line 389)
   0.04%  │  0x00007f3e0c642963:   mov    %r11,0x130(%rsp)
   0.01%  │  0x00007f3e0c64296b:   mov    0x68(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@670 (line 390)
   0.01%  │  0x00007f3e0c64296f:   mov    %r11,0x138(%rsp)
   0.05%  │  0x00007f3e0c642977:   mov    %r10,%r11
   0.02%  │  0x00007f3e0c64297a:   imul   0x130(%rsp),%r11
   0.05%  │  0x00007f3e0c642983:   mov    %r11,0x140(%rsp)
   0.07%  │  0x00007f3e0c64298b:   mov    %r10,%r11
   0.03%  │  0x00007f3e0c64298e:   imul   0x138(%rsp),%r11
   0.09%  │  0x00007f3e0c642997:   mov    %r11,0x148(%rsp)
   0.06%  │  0x00007f3e0c64299f:   mov    0x70(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@789 (line 391)
   0.01%  │  0x00007f3e0c6429a3:   mov    %r11,0x150(%rsp)
   0.02%  │  0x00007f3e0c6429ab:   mov    0x78(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@918 (line 392)
   0.03%  │  0x00007f3e0c6429af:   mov    %r11,0x158(%rsp)
   0.04%  │  0x00007f3e0c6429b7:   mov    %r10,%r11
   0.02%  │  0x00007f3e0c6429ba:   imul   0x150(%rsp),%r11
   0.12%  │  0x00007f3e0c6429c3:   mov    %r11,0x160(%rsp)
   0.10%  │  0x00007f3e0c6429cb:   imul   0x158(%rsp),%r10
   0.03%  │  0x00007f3e0c6429d4:   mov    %r10,0x168(%rsp)
   0.09%  │  0x00007f3e0c6429dc:   mov    0x18(%rcx),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@14 (line 380)
   0.00%  │  0x00007f3e0c6429e0:   vmovq  %xmm1,%r10
   0.04%  │  0x00007f3e0c6429e5:   mov    0x20(%r10),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@31 (line 381)
   0.01%  │  0x00007f3e0c6429e9:   mov    %rcx,%r10
   0.05%  │  0x00007f3e0c6429ec:   imul   0x158(%rsp),%r10             ;   {no_reloc}
   0.01%  │  0x00007f3e0c6429f5:   mov    %r10,0x170(%rsp)
   0.05%  │  0x00007f3e0c6429fd:   mov    %r8,%r10
   0.01%  │  0x00007f3e0c642a00:   imul   0x158(%rsp),%r10
   0.04%  │  0x00007f3e0c642a09:   mov    %r10,0x178(%rsp)
   0.04%  │  0x00007f3e0c642a11:   mov    %r8,%r10
   0.04%  │  0x00007f3e0c642a14:   imul   0x150(%rsp),%r10
   0.01%  │  0x00007f3e0c642a1d:   mov    %r10,0x180(%rsp)
   0.05%  │  0x00007f3e0c642a25:   mov    %r8,%r10
   0.01%  │  0x00007f3e0c642a28:   imul   0x138(%rsp),%r10
   0.03%  │  0x00007f3e0c642a31:   mov    %r10,0x188(%rsp)
   0.02%  │  0x00007f3e0c642a39:   mov    %r8,%r10
   0.03%  │  0x00007f3e0c642a3c:   imul   0x130(%rsp),%r10
   0.02%  │  0x00007f3e0c642a45:   mov    %r10,0x190(%rsp)
   0.03%  │  0x00007f3e0c642a4d:   mov    %r8,%r10
   0.02%  │  0x00007f3e0c642a50:   imul   0x118(%rsp),%r10
   0.03%  │  0x00007f3e0c642a59:   mov    %r10,0x198(%rsp)
   0.02%  │  0x00007f3e0c642a61:   mov    %r8,%r10
   0.03%  │  0x00007f3e0c642a64:   imul   0x110(%rsp),%r10
   0.01%  │  0x00007f3e0c642a6d:   mov    %r10,0x1a0(%rsp)
   0.06%  │  0x00007f3e0c642a75:   mov    %r8,%r10
   0.01%  │  0x00007f3e0c642a78:   imul   0xf8(%rsp),%r10
   0.02%  │  0x00007f3e0c642a81:   mov    %r10,0x1a8(%rsp)
   0.05%  │  0x00007f3e0c642a89:   mov    %r8,%r10
   0.02%  │  0x00007f3e0c642a8c:   imul   0xf0(%rsp),%r10
   0.01%  │  0x00007f3e0c642a95:   mov    %r10,0x1b0(%rsp)
   0.06%  │  0x00007f3e0c642a9d:   mov    %r8,%r10
   0.01%  │  0x00007f3e0c642aa0:   imul   0xe0(%rsp),%r10
   0.01%  │  0x00007f3e0c642aa9:   mov    %r10,0x1b8(%rsp)
   0.08%  │  0x00007f3e0c642ab1:   mov    %r8,%r10
   0.01%  │  0x00007f3e0c642ab4:   imul   0xd8(%rsp),%r10
   0.00%  │  0x00007f3e0c642abd:   mov    %r10,0x1c0(%rsp)
   0.08%  │  0x00007f3e0c642ac5:   mov    %r8,%r10
          │  0x00007f3e0c642ac8:   imul   0xc8(%rsp),%r10
   0.02%  │  0x00007f3e0c642ad1:   mov    %r10,0x1c8(%rsp)
   0.08%  │  0x00007f3e0c642ad9:   mov    %r8,%r10
   0.01%  │  0x00007f3e0c642adc:   imul   0xc0(%rsp),%r10
   0.00%  │  0x00007f3e0c642ae5:   mov    0xb8(%rsp),%r11
   0.02%  │  0x00007f3e0c642aed:   imul   %r8,%r11
   0.06%  │  0x00007f3e0c642af1:   vmovq  %xmm9,%r9                    ;   {no_reloc}
   0.02%  │  0x00007f3e0c642af6:   imul   %r8,%r9
          │  0x00007f3e0c642afa:   mov    %r9,%rax
   0.02%  │  0x00007f3e0c642afd:   mov    %rcx,%r8
   0.08%  │  0x00007f3e0c642b00:   imul   0x150(%rsp),%r8
   0.01%  │  0x00007f3e0c642b09:   mov    %r8,0x1d0(%rsp)
   0.16%  │  0x00007f3e0c642b11:   mov    %rcx,%r8
          │  0x00007f3e0c642b14:   imul   0x138(%rsp),%r8
          │  0x00007f3e0c642b1d:   mov    %r8,0x1d8(%rsp)
   0.11%  │  0x00007f3e0c642b25:   mov    %rcx,%r8
          │  0x00007f3e0c642b28:   imul   0x130(%rsp),%r8
   0.00%  │  0x00007f3e0c642b31:   mov    %r8,0x1e0(%rsp)
   0.10%  │  0x00007f3e0c642b39:   mov    %rcx,%r8
   0.00%  │  0x00007f3e0c642b3c:   imul   0x118(%rsp),%r8
          │  0x00007f3e0c642b45:   mov    %r8,0x1e8(%rsp)
   0.10%  │  0x00007f3e0c642b4d:   mov    %rcx,%r8
   0.00%  │  0x00007f3e0c642b50:   imul   0x110(%rsp),%r8
   0.00%  │  0x00007f3e0c642b59:   mov    %r8,0x1f0(%rsp)
   0.10%  │  0x00007f3e0c642b61:   mov    %rcx,%r8
          │  0x00007f3e0c642b64:   imul   0xf8(%rsp),%r8
          │  0x00007f3e0c642b6d:   mov    %r8,0x1f8(%rsp)
   0.08%  │  0x00007f3e0c642b75:   mov    %rcx,%r8
          │  0x00007f3e0c642b78:   imul   0xf0(%rsp),%r8
          │  0x00007f3e0c642b81:   mov    %r8,0x200(%rsp)
   0.10%  │  0x00007f3e0c642b89:   mov    %rcx,%rdx
          │  0x00007f3e0c642b8c:   imul   0xe0(%rsp),%rdx
          │  0x00007f3e0c642b95:   mov    %rcx,%r8
   0.00%  │  0x00007f3e0c642b98:   imul   0xd8(%rsp),%r8
   0.08%  │  0x00007f3e0c642ba1:   mov    %r8,0x208(%rsp)
   0.10%  │  0x00007f3e0c642ba9:   mov    %rcx,%r8
          │  0x00007f3e0c642bac:   imul   0xc8(%rsp),%r8
          │  0x00007f3e0c642bb5:   mov    %rcx,%r9
          │  0x00007f3e0c642bb8:   imul   0xc0(%rsp),%r9
   0.09%  │  0x00007f3e0c642bc1:   mov    %rcx,%rbx
          │  0x00007f3e0c642bc4:   imul   0xb8(%rsp),%rbx
          │  0x00007f3e0c642bcd:   add    %rbx,%rax
   0.05%  │  0x00007f3e0c642bd0:   add    %rsi,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@48 (line 381)
   0.10%  │  0x00007f3e0c642bd3:   vmovq  %rax,%xmm15
   0.20%  │  0x00007f3e0c642bd8:   vmovq  %xmm9,%rbx
          │  0x00007f3e0c642bdd:   imul   %rcx,%rbx
          │  0x00007f3e0c642be1:   add    %rdi,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@23 (line 380)
          │  0x00007f3e0c642be4:   mov    %rbx,0x210(%rsp)
   0.13%  │  0x00007f3e0c642bec:   vmovq  %xmm1,%rcx                   ;   {no_reloc}
          │  0x00007f3e0c642bf1:   mov    0x28(%rcx),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@56 (line 382)
   0.01%  │  0x00007f3e0c642bf5:   vmovq  %xmm1,%rbx
          │  0x00007f3e0c642bfa:   mov    0x30(%rbx),%rdi              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@89 (line 383)
   0.09%  │  0x00007f3e0c642bfe:   mov    %rcx,%rbx
          │  0x00007f3e0c642c01:   imul   0x158(%rsp),%rbx
   0.00%  │  0x00007f3e0c642c0a:   mov    %rbx,0x218(%rsp)
   0.02%  │  0x00007f3e0c642c12:   mov    %rdi,%rbx
   0.07%  │  0x00007f3e0c642c15:   imul   0x158(%rsp),%rbx
          │  0x00007f3e0c642c1e:   mov    %rbx,0x220(%rsp)
   0.01%  │  0x00007f3e0c642c26:   mov    %rdi,%rbx
   0.00%  │  0x00007f3e0c642c29:   imul   0x150(%rsp),%rbx
   0.10%  │  0x00007f3e0c642c32:   mov    %rbx,0x228(%rsp)
   0.01%  │  0x00007f3e0c642c3a:   mov    %rdi,%rbx
          │  0x00007f3e0c642c3d:   imul   0x138(%rsp),%rbx
   0.00%  │  0x00007f3e0c642c46:   mov    %rbx,0x230(%rsp)
   0.11%  │  0x00007f3e0c642c4e:   mov    %rdi,%rbx
          │  0x00007f3e0c642c51:   imul   0x130(%rsp),%rbx
          │  0x00007f3e0c642c5a:   mov    %rbx,0x238(%rsp)
   0.06%  │  0x00007f3e0c642c62:   mov    %rdi,%rbx
   0.06%  │  0x00007f3e0c642c65:   imul   0x118(%rsp),%rbx
          │  0x00007f3e0c642c6e:   mov    %rbx,0x240(%rsp)
   0.03%  │  0x00007f3e0c642c76:   mov    %rdi,%rbx
          │  0x00007f3e0c642c79:   imul   0x110(%rsp),%rbx
   0.06%  │  0x00007f3e0c642c82:   mov    %rbx,0x248(%rsp)
   0.05%  │  0x00007f3e0c642c8a:   mov    %rdi,%rbx
          │  0x00007f3e0c642c8d:   imul   0xf8(%rsp),%rbx
          │  0x00007f3e0c642c96:   mov    %rbx,0x250(%rsp)
   0.10%  │  0x00007f3e0c642c9e:   mov    %rdi,%rbx
          │  0x00007f3e0c642ca1:   imul   0xf0(%rsp),%rbx
          │  0x00007f3e0c642caa:   mov    %rbx,0x258(%rsp)
   0.08%  │  0x00007f3e0c642cb2:   mov    %rdi,%rbx
   0.01%  │  0x00007f3e0c642cb5:   imul   0xe0(%rsp),%rbx
          │  0x00007f3e0c642cbe:   mov    %rbx,0x260(%rsp)
   0.09%  │  0x00007f3e0c642cc6:   mov    %rdi,%rbx
          │  0x00007f3e0c642cc9:   imul   0xd8(%rsp),%rbx
   0.02%  │  0x00007f3e0c642cd2:   mov    %rbx,0x268(%rsp)
   0.07%  │  0x00007f3e0c642cda:   mov    0xc8(%rsp),%rbx
          │  0x00007f3e0c642ce2:   imul   %rdi,%rbx
   0.00%  │  0x00007f3e0c642ce6:   mov    %rbx,0x270(%rsp)
   0.13%  │  0x00007f3e0c642cee:   mov    0xc0(%rsp),%rsi              ;   {no_reloc}
          │  0x00007f3e0c642cf6:   imul   %rdi,%rsi
          │  0x00007f3e0c642cfa:   mov    0xb8(%rsp),%rax
          │  0x00007f3e0c642d02:   imul   %rdi,%rax
   0.10%  │  0x00007f3e0c642d06:   vmovq  %xmm9,%rbx
          │  0x00007f3e0c642d0b:   imul   %rdi,%rbx
          │  0x00007f3e0c642d0f:   mov    %rcx,%rdi
   0.00%  │  0x00007f3e0c642d12:   imul   0x150(%rsp),%rdi
   0.13%  │  0x00007f3e0c642d1b:   mov    %rdi,0x278(%rsp)
   0.11%  │  0x00007f3e0c642d23:   mov    %rcx,%rdi
          │  0x00007f3e0c642d26:   imul   0x138(%rsp),%rdi
          │  0x00007f3e0c642d2f:   mov    %rdi,0x280(%rsp)
   0.08%  │  0x00007f3e0c642d37:   mov    %rcx,%rdi
          │  0x00007f3e0c642d3a:   imul   0x130(%rsp),%rdi
          │  0x00007f3e0c642d43:   mov    %rdi,0x288(%rsp)
   0.09%  │  0x00007f3e0c642d4b:   mov    %rcx,%rdi
          │  0x00007f3e0c642d4e:   imul   0x118(%rsp),%rdi
          │  0x00007f3e0c642d57:   mov    %rdi,0x290(%rsp)
   0.15%  │  0x00007f3e0c642d5f:   mov    %rcx,%rdi
          │  0x00007f3e0c642d62:   imul   0x110(%rsp),%rdi
          │  0x00007f3e0c642d6b:   mov    %rdi,0x298(%rsp)
   0.14%  │  0x00007f3e0c642d73:   mov    %rcx,%rdi
          │  0x00007f3e0c642d76:   imul   0xf8(%rsp),%rdi
          │  0x00007f3e0c642d7f:   mov    %rdi,0x2a0(%rsp)
   0.07%  │  0x00007f3e0c642d87:   mov    %rcx,%rdi
   0.02%  │  0x00007f3e0c642d8a:   imul   0xf0(%rsp),%rdi
          │  0x00007f3e0c642d93:   mov    %rdi,0x2a8(%rsp)
   0.07%  │  0x00007f3e0c642d9b:   mov    %rcx,%rdi
          │  0x00007f3e0c642d9e:   imul   0xe0(%rsp),%rdi
   0.04%  │  0x00007f3e0c642da7:   mov    %rdi,0x2b0(%rsp)
   0.09%  │  0x00007f3e0c642daf:   mov    %rcx,%rdi
   0.00%  │  0x00007f3e0c642db2:   imul   0xd8(%rsp),%rdi
          │  0x00007f3e0c642dbb:   mov    %rdi,0x2b8(%rsp)
   0.12%  │  0x00007f3e0c642dc3:   mov    %rcx,%rbp
          │  0x00007f3e0c642dc6:   imul   0xc8(%rsp),%rbp
          │  0x00007f3e0c642dcf:   mov    0xc0(%rsp),%r14
          │  0x00007f3e0c642dd7:   imul   %rcx,%r14
   0.12%  │  0x00007f3e0c642ddb:   mov    0xb8(%rsp),%rdi
          │  0x00007f3e0c642de3:   imul   %rcx,%rdi
          │  0x00007f3e0c642de7:   add    %rdi,%rbx
   0.09%  │  0x00007f3e0c642dea:   add    %r10,%rbx
   0.57%  │  0x00007f3e0c642ded:   add    %r8,%rbx                     ;   {no_reloc}
          │  0x00007f3e0c642df0:   add    %r13,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@122 (line 383)
          │  0x00007f3e0c642df3:   vmovq  %rbx,%xmm2
          │  0x00007f3e0c642df8:   vmovq  %xmm9,%r10
   0.10%  │  0x00007f3e0c642dfd:   imul   %rcx,%r10
          │  0x00007f3e0c642e01:   add    %r11,%r10
          │  0x00007f3e0c642e04:   add    %r9,%r10
          │  0x00007f3e0c642e07:   add    0xd0(%rsp),%r10              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@81 (line 382)
   0.10%  │  0x00007f3e0c642e0f:   mov    %r10,0xd0(%rsp)
          │  0x00007f3e0c642e17:   vmovq  %xmm1,%r10
          │  0x00007f3e0c642e1c:   mov    0x38(%r10),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@130 (line 384)
   0.00%  │  0x00007f3e0c642e20:   vmovq  %xmm1,%r11
   0.10%  │  0x00007f3e0c642e25:   mov    0x40(%r11),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@180 (line 385)
          │  0x00007f3e0c642e29:   mov    %r10,%r11
          │  0x00007f3e0c642e2c:   imul   0x158(%rsp),%r11
   0.00%  │  0x00007f3e0c642e35:   mov    %r11,0x2c0(%rsp)
   0.10%  │  0x00007f3e0c642e3d:   mov    %rcx,%r11
   0.00%  │  0x00007f3e0c642e40:   imul   0x158(%rsp),%r11
          │  0x00007f3e0c642e49:   mov    %r11,0x2c8(%rsp)
          │  0x00007f3e0c642e51:   mov    %rcx,%r11
   0.08%  │  0x00007f3e0c642e54:   imul   0x150(%rsp),%r11
          │  0x00007f3e0c642e5d:   mov    %r11,0x2d0(%rsp)
   0.00%  │  0x00007f3e0c642e65:   mov    %rcx,%r11
          │  0x00007f3e0c642e68:   imul   0x138(%rsp),%r11
   0.09%  │  0x00007f3e0c642e71:   mov    %r11,0x2d8(%rsp)
          │  0x00007f3e0c642e79:   mov    %rcx,%r11
          │  0x00007f3e0c642e7c:   imul   0x130(%rsp),%r11
   0.00%  │  0x00007f3e0c642e85:   mov    %r11,0x2e0(%rsp)
   0.10%  │  0x00007f3e0c642e8d:   mov    %rcx,%r11
          │  0x00007f3e0c642e90:   imul   0x118(%rsp),%r11
          │  0x00007f3e0c642e99:   mov    %r11,0x2e8(%rsp)
   0.05%  │  0x00007f3e0c642ea1:   mov    %rcx,%r11
   0.03%  │  0x00007f3e0c642ea4:   imul   0x110(%rsp),%r11
          │  0x00007f3e0c642ead:   mov    %r11,0x2f0(%rsp)
   0.06%  │  0x00007f3e0c642eb5:   mov    %rcx,%r11
          │  0x00007f3e0c642eb8:   imul   0xf8(%rsp),%r11
   0.03%  │  0x00007f3e0c642ec1:   mov    %r11,0x2f8(%rsp)
   0.07%  │  0x00007f3e0c642ec9:   mov    %rcx,%r11
          │  0x00007f3e0c642ecc:   imul   0xf0(%rsp),%r11
          │  0x00007f3e0c642ed5:   mov    %r11,0x300(%rsp)
   0.13%  │  0x00007f3e0c642edd:   mov    0xe0(%rsp),%r11
          │  0x00007f3e0c642ee5:   imul   %rcx,%r11
          │  0x00007f3e0c642ee9:   mov    %r11,0x308(%rsp)             ;   {no_reloc}
   0.05%  │  0x00007f3e0c642ef1:   mov    0xd8(%rsp),%r11
   0.08%  │  0x00007f3e0c642ef9:   imul   %rcx,%r11
   0.00%  │  0x00007f3e0c642efd:   mov    %r11,0x310(%rsp)
   0.04%  │  0x00007f3e0c642f05:   mov    0xc8(%rsp),%r11
          │  0x00007f3e0c642f0d:   imul   %rcx,%r11
   0.07%  │  0x00007f3e0c642f11:   mov    %r11,0x318(%rsp)
   0.04%  │  0x00007f3e0c642f19:   mov    0xc0(%rsp),%r11
          │  0x00007f3e0c642f21:   imul   %rcx,%r11
          │  0x00007f3e0c642f25:   mov    0xb8(%rsp),%r8
   0.07%  │  0x00007f3e0c642f2d:   imul   %rcx,%r8
   0.02%  │  0x00007f3e0c642f31:   vmovq  %xmm9,%r9
          │  0x00007f3e0c642f36:   imul   %rcx,%r9
   0.00%  │  0x00007f3e0c642f3a:   mov    %r10,%rcx
   0.08%  │  0x00007f3e0c642f3d:   imul   0x150(%rsp),%rcx
   0.09%  │  0x00007f3e0c642f46:   mov    %rcx,0x320(%rsp)
   0.10%  │  0x00007f3e0c642f4e:   mov    %r10,%rcx
          │  0x00007f3e0c642f51:   imul   0x138(%rsp),%rcx
   0.02%  │  0x00007f3e0c642f5a:   mov    %rcx,0x328(%rsp)
   0.08%  │  0x00007f3e0c642f62:   mov    %r10,%rcx
          │  0x00007f3e0c642f65:   imul   0x130(%rsp),%rcx
          │  0x00007f3e0c642f6e:   mov    %rcx,0x330(%rsp)
   0.12%  │  0x00007f3e0c642f76:   mov    %r10,%rcx
   0.00%  │  0x00007f3e0c642f79:   imul   0x118(%rsp),%rcx
          │  0x00007f3e0c642f82:   mov    %rcx,0x338(%rsp)
   0.09%  │  0x00007f3e0c642f8a:   mov    %r10,%rcx
   0.02%  │  0x00007f3e0c642f8d:   imul   0x110(%rsp),%rcx
   0.00%  │  0x00007f3e0c642f96:   mov    %rcx,0x340(%rsp)
   0.18%  │  0x00007f3e0c642f9e:   mov    %r10,%rcx
          │  0x00007f3e0c642fa1:   imul   0xf8(%rsp),%rcx
   0.01%  │  0x00007f3e0c642faa:   mov    %rcx,0x348(%rsp)
   0.12%  │  0x00007f3e0c642fb2:   mov    %r10,%rcx
   0.04%  │  0x00007f3e0c642fb5:   imul   0xf0(%rsp),%rcx
          │  0x00007f3e0c642fbe:   mov    %rcx,0x350(%rsp)
   0.07%  │  0x00007f3e0c642fc6:   mov    %r10,%r13
   0.00%  │  0x00007f3e0c642fc9:   imul   0xe0(%rsp),%r13
   0.04%  │  0x00007f3e0c642fd2:   mov    0xd8(%rsp),%rcx
          │  0x00007f3e0c642fda:   imul   %r10,%rcx
   0.05%  │  0x00007f3e0c642fde:   mov    %rcx,0x358(%rsp)
   0.10%  │  0x00007f3e0c642fe6:   mov    0xc8(%rsp),%rcx              ;   {no_reloc}
   0.01%  │  0x00007f3e0c642fee:   imul   %r10,%rcx
          │  0x00007f3e0c642ff2:   mov    0xc0(%rsp),%rbx
   0.02%  │  0x00007f3e0c642ffa:   imul   %r10,%rbx
   0.08%  │  0x00007f3e0c642ffe:   mov    0xb8(%rsp),%rdi
   0.01%  │  0x00007f3e0c643006:   imul   %r10,%rdi
   0.00%  │  0x00007f3e0c64300a:   add    %rdi,%r9
   0.08%  │  0x00007f3e0c64300d:   add    %rsi,%r9
   0.11%  │  0x00007f3e0c643010:   add    %rbp,%r9
   0.10%  │  0x00007f3e0c643013:   add    0x1c0(%rsp),%r9
   0.09%  │  0x00007f3e0c64301b:   add    %rdx,%r9
   0.11%  │  0x00007f3e0c64301e:   add    0x100(%rsp),%r9              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@230 (line 385)
   0.09%  │  0x00007f3e0c643026:   vmovq  %r9,%xmm3
   0.21%  │  0x00007f3e0c64302b:   vmovq  %xmm9,%r9
          │  0x00007f3e0c643030:   imul   %r10,%r9
          │  0x00007f3e0c643034:   add    %rax,%r9
          │  0x00007f3e0c643037:   add    %r14,%r9
   0.09%  │  0x00007f3e0c64303a:   add    0x1c8(%rsp),%r9
          │  0x00007f3e0c643042:   add    0x208(%rsp),%r9
          │  0x00007f3e0c64304a:   add    0xe8(%rsp),%r9               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@171 (line 384)
          │  0x00007f3e0c643052:   vmovq  %r9,%xmm4
   0.10%  │  0x00007f3e0c643057:   vmovq  %xmm1,%r10
          │  0x00007f3e0c64305c:   mov    0x48(%r10),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@239 (line 386)
          │  0x00007f3e0c643060:   vmovq  %xmm1,%r9
          │  0x00007f3e0c643065:   mov    0x50(%r9),%rdx               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@308 (line 387)
   0.09%  │  0x00007f3e0c643069:   mov    %r10,%r9
          │  0x00007f3e0c64306c:   imul   0x158(%rsp),%r9
          │  0x00007f3e0c643075:   mov    %r9,0xe8(%rsp)
   0.00%  │  0x00007f3e0c64307d:   mov    %rdx,%r9
   0.10%  │  0x00007f3e0c643080:   imul   0x158(%rsp),%r9
          │  0x00007f3e0c643089:   mov    %r9,0x100(%rsp)
          │  0x00007f3e0c643091:   mov    %rdx,%r9
          │  0x00007f3e0c643094:   imul   0x150(%rsp),%r9
   0.11%  │  0x00007f3e0c64309d:   mov    %r9,0x1c0(%rsp)
          │  0x00007f3e0c6430a5:   mov    %rdx,%r9
          │  0x00007f3e0c6430a8:   imul   0x138(%rsp),%r9
          │  0x00007f3e0c6430b1:   mov    %r9,0x1c8(%rsp)
   0.11%  │  0x00007f3e0c6430b9:   mov    %rdx,%r9
          │  0x00007f3e0c6430bc:   imul   0x130(%rsp),%r9
          │  0x00007f3e0c6430c5:   mov    %r9,0x208(%rsp)
   0.05%  │  0x00007f3e0c6430cd:   mov    %rdx,%r9
   0.04%  │  0x00007f3e0c6430d0:   imul   0x118(%rsp),%r9
          │  0x00007f3e0c6430d9:   mov    %r9,0x360(%rsp)
          │  0x00007f3e0c6430e1:   mov    %rdx,%r9
   0.04%  │  0x00007f3e0c6430e4:   imul   0x110(%rsp),%r9              ;   {no_reloc}
   0.04%  │  0x00007f3e0c6430ed:   mov    %r9,0x368(%rsp)
   0.00%  │  0x00007f3e0c6430f5:   mov    0xf8(%rsp),%r9
          │  0x00007f3e0c6430fd:   imul   %rdx,%r9
   0.05%  │  0x00007f3e0c643101:   mov    %r9,0x370(%rsp)
   0.06%  │  0x00007f3e0c643109:   mov    0xf0(%rsp),%r9
          │  0x00007f3e0c643111:   imul   %rdx,%r9
          │  0x00007f3e0c643115:   mov    %r9,0x378(%rsp)
   0.17%  │  0x00007f3e0c64311d:   mov    0xe0(%rsp),%r9
   0.00%  │  0x00007f3e0c643125:   imul   %rdx,%r9
          │  0x00007f3e0c643129:   mov    %r9,0x380(%rsp)
   0.05%  │  0x00007f3e0c643131:   mov    0xd8(%rsp),%r9
   0.05%  │  0x00007f3e0c643139:   imul   %rdx,%r9
   0.00%  │  0x00007f3e0c64313d:   mov    %r9,0x388(%rsp)
   0.04%  │  0x00007f3e0c643145:   mov    0xc8(%rsp),%r9
          │  0x00007f3e0c64314d:   imul   %rdx,%r9
   0.05%  │  0x00007f3e0c643151:   mov    %r9,0x390(%rsp)
   0.16%  │  0x00007f3e0c643159:   mov    0xc0(%rsp),%r9
          │  0x00007f3e0c643161:   imul   %rdx,%r9
          │  0x00007f3e0c643165:   mov    0xb8(%rsp),%rdi
          │  0x00007f3e0c64316d:   imul   %rdx,%rdi
   0.09%  │  0x00007f3e0c643171:   vmovq  %xmm9,%rax
          │  0x00007f3e0c643176:   imul   %rdx,%rax
          │  0x00007f3e0c64317a:   mov    %r10,%rdx
          │  0x00007f3e0c64317d:   imul   0x150(%rsp),%rdx
   0.16%  │  0x00007f3e0c643186:   mov    %rdx,0x398(%rsp)
   0.08%  │  0x00007f3e0c64318e:   mov    %r10,%rdx
          │  0x00007f3e0c643191:   imul   0x138(%rsp),%rdx
          │  0x00007f3e0c64319a:   mov    %rdx,0x3a0(%rsp)
   0.09%  │  0x00007f3e0c6431a2:   mov    %r10,%rdx
          │  0x00007f3e0c6431a5:   imul   0x130(%rsp),%rdx
          │  0x00007f3e0c6431ae:   mov    %rdx,0x3a8(%rsp)
   0.13%  │  0x00007f3e0c6431b6:   mov    %r10,%rdx
   0.00%  │  0x00007f3e0c6431b9:   imul   0x118(%rsp),%rdx
          │  0x00007f3e0c6431c2:   mov    %rdx,0x3b0(%rsp)
   0.09%  │  0x00007f3e0c6431ca:   mov    %r10,%rdx
          │  0x00007f3e0c6431cd:   imul   0x110(%rsp),%rdx
   0.00%  │  0x00007f3e0c6431d6:   mov    %rdx,0x3b8(%rsp)
   0.14%  │  0x00007f3e0c6431de:   mov    %r10,%rdx
          │  0x00007f3e0c6431e1:   imul   0xf8(%rsp),%rdx
          │  0x00007f3e0c6431ea:   mov    %rdx,0x3c0(%rsp)             ;   {no_reloc}
   0.16%  │  0x00007f3e0c6431f2:   mov    0xf0(%rsp),%rdx
          │  0x00007f3e0c6431fa:   imul   %r10,%rdx
          │  0x00007f3e0c6431fe:   mov    %rdx,0x3c8(%rsp)
   0.14%  │  0x00007f3e0c643206:   mov    0xe0(%rsp),%rdx
          │  0x00007f3e0c64320e:   imul   %r10,%rdx
          │  0x00007f3e0c643212:   mov    %rdx,0x3d0(%rsp)
   0.17%  │  0x00007f3e0c64321a:   mov    0xd8(%rsp),%rdx
          │  0x00007f3e0c643222:   imul   %r10,%rdx
          │  0x00007f3e0c643226:   mov    %rdx,0x3d8(%rsp)
   0.10%  │  0x00007f3e0c64322e:   mov    0xc8(%rsp),%rdx
          │  0x00007f3e0c643236:   imul   %r10,%rdx
          │  0x00007f3e0c64323a:   mov    0xc0(%rsp),%rsi
          │  0x00007f3e0c643242:   imul   %r10,%rsi
   0.10%  │  0x00007f3e0c643246:   mov    0xb8(%rsp),%rbp
          │  0x00007f3e0c64324e:   imul   %r10,%rbp
          │  0x00007f3e0c643252:   add    %rbp,%rax
   0.12%  │  0x00007f3e0c643255:   add    %r11,%rax
   0.10%  │  0x00007f3e0c643258:   add    %rcx,%rax
   0.22%  │  0x00007f3e0c64325b:   add    0x268(%rsp),%rax
   0.10%  │  0x00007f3e0c643263:   add    0x2b0(%rsp),%rax
   0.11%  │  0x00007f3e0c64326b:   add    0x1b0(%rsp),%rax
   0.08%  │  0x00007f3e0c643273:   add    0x1f8(%rsp),%rax
   0.12%  │  0x00007f3e0c64327b:   add    0x120(%rsp),%rax             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@378 (line 387)
   0.08%  │  0x00007f3e0c643283:   vmovq  %rax,%xmm5
   0.16%  │  0x00007f3e0c643288:   vmovq  %xmm9,%r11
          │  0x00007f3e0c64328d:   imul   %r10,%r11
          │  0x00007f3e0c643291:   add    %r8,%r11
          │  0x00007f3e0c643294:   add    %rbx,%r11
   0.09%  │  0x00007f3e0c643297:   add    0x270(%rsp),%r11
          │  0x00007f3e0c64329f:   add    0x2b8(%rsp),%r11
          │  0x00007f3e0c6432a7:   add    0x1b8(%rsp),%r11
          │  0x00007f3e0c6432af:   add    0x200(%rsp),%r11
   0.10%  │  0x00007f3e0c6432b7:   add    0x108(%rsp),%r11             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@299 (line 386)
          │  0x00007f3e0c6432bf:   vmovq  %r11,%xmm6
          │  0x00007f3e0c6432c4:   vmovq  %xmm1,%r10
          │  0x00007f3e0c6432c9:   mov    0x58(%r10),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@387 (line 388)
   0.09%  │  0x00007f3e0c6432cd:   vmovq  %xmm1,%r11
          │  0x00007f3e0c6432d2:   mov    0x60(%r11),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@476 (line 389)
          │  0x00007f3e0c6432d6:   mov    %r10,%r11
          │  0x00007f3e0c6432d9:   imul   0x158(%rsp),%r11
   0.12%  │  0x00007f3e0c6432e2:   mov    %r11,0x108(%rsp)             ;   {no_reloc}
          │  0x00007f3e0c6432ea:   mov    %r8,%r11
          │  0x00007f3e0c6432ed:   imul   0x158(%rsp),%r11
          │  0x00007f3e0c6432f6:   mov    %r11,0x120(%rsp)
   0.08%  │  0x00007f3e0c6432fe:   mov    %r8,%r11
          │  0x00007f3e0c643301:   imul   0x150(%rsp),%r11
          │  0x00007f3e0c64330a:   mov    %r11,0x1b0(%rsp)
   0.00%  │  0x00007f3e0c643312:   mov    %r8,%r11
   0.09%  │  0x00007f3e0c643315:   imul   0x138(%rsp),%r11
          │  0x00007f3e0c64331e:   mov    %r11,0x1b8(%rsp)
          │  0x00007f3e0c643326:   mov    %r8,%r11
          │  0x00007f3e0c643329:   imul   0x130(%rsp),%r11
   0.09%  │  0x00007f3e0c643332:   mov    %r11,0x1f8(%rsp)
   0.00%  │  0x00007f3e0c64333a:   mov    0x118(%rsp),%r11
          │  0x00007f3e0c643342:   imul   %r8,%r11
          │  0x00007f3e0c643346:   mov    %r11,0x200(%rsp)
   0.09%  │  0x00007f3e0c64334e:   mov    0x110(%rsp),%r11
          │  0x00007f3e0c643356:   imul   %r8,%r11
          │  0x00007f3e0c64335a:   mov    %r11,0x268(%rsp)
          │  0x00007f3e0c643362:   mov    0xf8(%rsp),%r11
   0.09%  │  0x00007f3e0c64336a:   imul   %r8,%r11
          │  0x00007f3e0c64336e:   mov    %r11,0x270(%rsp)
          │  0x00007f3e0c643376:   mov    0xf0(%rsp),%r11
          │  0x00007f3e0c64337e:   imul   %r8,%r11
   0.10%  │  0x00007f3e0c643382:   mov    %r11,0x2b0(%rsp)
          │  0x00007f3e0c64338a:   mov    0xe0(%rsp),%r11
          │  0x00007f3e0c643392:   imul   %r8,%r11
          │  0x00007f3e0c643396:   mov    %r11,0x2b8(%rsp)
   0.08%  │  0x00007f3e0c64339e:   mov    0xd8(%rsp),%r11
          │  0x00007f3e0c6433a6:   imul   %r8,%r11
          │  0x00007f3e0c6433aa:   mov    %r11,0x3e0(%rsp)
   0.04%  │  0x00007f3e0c6433b2:   mov    0xc8(%rsp),%r11
   0.05%  │  0x00007f3e0c6433ba:   imul   %r8,%r11
          │  0x00007f3e0c6433be:   mov    %r11,0x3e8(%rsp)
   0.04%  │  0x00007f3e0c6433c6:   mov    0xc0(%rsp),%r11
          │  0x00007f3e0c6433ce:   imul   %r8,%r11
   0.06%  │  0x00007f3e0c6433d2:   mov    %r11,0x3f0(%rsp)
   0.04%  │  0x00007f3e0c6433da:   mov    0xb8(%rsp),%r11
          │  0x00007f3e0c6433e2:   imul   %r8,%r11
          │  0x00007f3e0c6433e6:   mov    %r11,0x3f8(%rsp)             ;   {no_reloc}
   0.17%  │  0x00007f3e0c6433ee:   vmovq  %xmm9,%r11
          │  0x00007f3e0c6433f3:   imul   %r8,%r11
          │  0x00007f3e0c6433f7:   mov    %r10,%r8
          │  0x00007f3e0c6433fa:   imul   0x150(%rsp),%r8
   0.09%  │  0x00007f3e0c643403:   mov    %r8,0x400(%rsp)
   0.06%  │  0x00007f3e0c64340b:   mov    %r10,%r8
          │  0x00007f3e0c64340e:   imul   0x138(%rsp),%r8
          │  0x00007f3e0c643417:   mov    %r8,0x408(%rsp)
   0.16%  │  0x00007f3e0c64341f:   mov    %r10,%r8
          │  0x00007f3e0c643422:   imul   0x130(%rsp),%r8
          │  0x00007f3e0c64342b:   mov    %r8,0x410(%rsp)
   0.13%  │  0x00007f3e0c643433:   mov    %r10,%r8
          │  0x00007f3e0c643436:   imul   0x118(%rsp),%r8
          │  0x00007f3e0c64343f:   mov    %r8,0x418(%rsp)
   0.08%  │  0x00007f3e0c643447:   mov    0x110(%rsp),%r8
          │  0x00007f3e0c64344f:   imul   %r10,%r8
          │  0x00007f3e0c643453:   mov    %r8,0x420(%rsp)
   0.09%  │  0x00007f3e0c64345b:   mov    0xf8(%rsp),%r8
          │  0x00007f3e0c643463:   imul   %r10,%r8
          │  0x00007f3e0c643467:   mov    %r8,0x428(%rsp)
   0.16%  │  0x00007f3e0c64346f:   mov    0xf0(%rsp),%r8
          │  0x00007f3e0c643477:   imul   %r10,%r8
          │  0x00007f3e0c64347b:   mov    %r8,0x430(%rsp)
   0.10%  │  0x00007f3e0c643483:   mov    0xe0(%rsp),%r8
          │  0x00007f3e0c64348b:   imul   %r10,%r8
          │  0x00007f3e0c64348f:   mov    %r8,0x438(%rsp)
   0.13%  │  0x00007f3e0c643497:   mov    0xd8(%rsp),%r8
          │  0x00007f3e0c64349f:   imul   %r10,%r8
          │  0x00007f3e0c6434a3:   mov    %r8,0x440(%rsp)
   0.09%  │  0x00007f3e0c6434ab:   mov    0xc8(%rsp),%rbp
          │  0x00007f3e0c6434b3:   imul   %r10,%rbp
   0.04%  │  0x00007f3e0c6434b7:   mov    0xc0(%rsp),%r14
          │  0x00007f3e0c6434bf:   imul   %r10,%r14
   0.04%  │  0x00007f3e0c6434c3:   mov    0xb8(%rsp),%r8
          │  0x00007f3e0c6434cb:   imul   %r10,%r8
   0.05%  │  0x00007f3e0c6434cf:   add    %r8,%r11
   0.16%  │  0x00007f3e0c6434d2:   add    %r9,%r11
   0.05%  │  0x00007f3e0c6434d5:   add    %rdx,%r11
   0.12%  │  0x00007f3e0c6434d8:   add    0x310(%rsp),%r11
   0.11%  │  0x00007f3e0c6434e0:   add    %r13,%r11
   0.12%  │  0x00007f3e0c6434e3:   add    0x258(%rsp),%r11             ;   {no_reloc}
   0.10%  │  0x00007f3e0c6434eb:   add    0x2a0(%rsp),%r11
   0.09%  │  0x00007f3e0c6434f3:   add    0x1a0(%rsp),%r11
   0.10%  │  0x00007f3e0c6434fb:   add    0x1e8(%rsp),%r11
   0.09%  │  0x00007f3e0c643503:   add    0x140(%rsp),%r11             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@566 (line 389)
   0.09%  │  0x00007f3e0c64350b:   vmovq  %r11,%xmm7
   0.22%  │  0x00007f3e0c643510:   vmovq  %xmm9,%r11
          │  0x00007f3e0c643515:   imul   %r10,%r11
          │  0x00007f3e0c643519:   add    %rdi,%r11
          │  0x00007f3e0c64351c:   add    %rsi,%r11
   0.11%  │  0x00007f3e0c64351f:   add    0x318(%rsp),%r11
          │  0x00007f3e0c643527:   add    0x358(%rsp),%r11
          │  0x00007f3e0c64352f:   add    0x260(%rsp),%r11
          │  0x00007f3e0c643537:   add    0x2a8(%rsp),%r11
   0.28%  │  0x00007f3e0c64353f:   add    0x1a8(%rsp),%r11
   0.05%  │  0x00007f3e0c643547:   add    0x1f0(%rsp),%r11
   1.41%  │  0x00007f3e0c64354f:   add    0x128(%rsp),%r11             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@467 (line 388)
   0.10%  │  0x00007f3e0c643557:   vmovq  %r11,%xmm8
   0.17%  │  0x00007f3e0c64355c:   vmovq  %xmm1,%r10
          │  0x00007f3e0c643561:   mov    0x68(%r10),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@575 (line 390)
          │  0x00007f3e0c643565:   vmovq  %xmm1,%r11
          │  0x00007f3e0c64356a:   mov    0x70(%r11),%rbx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@684 (line 391)
   0.11%  │  0x00007f3e0c64356e:   mov    %r10,%r11
          │  0x00007f3e0c643571:   imul   0x158(%rsp),%r11
          │  0x00007f3e0c64357a:   mov    %r11,0x128(%rsp)
          │  0x00007f3e0c643582:   mov    %rbx,%r11
   0.12%  │  0x00007f3e0c643585:   imul   0x158(%rsp),%r11
          │  0x00007f3e0c64358e:   mov    %rbx,%r8
          │  0x00007f3e0c643591:   imul   0x150(%rsp),%r8
          │  0x00007f3e0c64359a:   mov    0x138(%rsp),%r9
   0.10%  │  0x00007f3e0c6435a2:   imul   %rbx,%r9
          │  0x00007f3e0c6435a6:   mov    %r9,0x140(%rsp)
          │  0x00007f3e0c6435ae:   mov    0x130(%rsp),%r9
          │  0x00007f3e0c6435b6:   imul   %rbx,%r9
   0.13%  │  0x00007f3e0c6435ba:   mov    %r9,0x1a0(%rsp)
          │  0x00007f3e0c6435c2:   mov    0x118(%rsp),%r9
          │  0x00007f3e0c6435ca:   imul   %rbx,%r9
          │  0x00007f3e0c6435ce:   mov    %r9,0x1a8(%rsp)
   0.11%  │  0x00007f3e0c6435d6:   mov    0x110(%rsp),%r9
          │  0x00007f3e0c6435de:   imul   %rbx,%r9
          │  0x00007f3e0c6435e2:   mov    %r9,0x1e8(%rsp)              ;   {no_reloc}
          │  0x00007f3e0c6435ea:   mov    0xf8(%rsp),%r9
   0.11%  │  0x00007f3e0c6435f2:   imul   %rbx,%r9
          │  0x00007f3e0c6435f6:   mov    %r9,0x1f0(%rsp)
          │  0x00007f3e0c6435fe:   mov    0xf0(%rsp),%r9
          │  0x00007f3e0c643606:   imul   %rbx,%r9
   0.08%  │  0x00007f3e0c64360a:   mov    %r9,0x258(%rsp)
          │  0x00007f3e0c643612:   mov    0xe0(%rsp),%r9
          │  0x00007f3e0c64361a:   imul   %rbx,%r9
          │  0x00007f3e0c64361e:   mov    %r9,0x260(%rsp)
   0.10%  │  0x00007f3e0c643626:   mov    0xd8(%rsp),%r9
          │  0x00007f3e0c64362e:   imul   %rbx,%r9
          │  0x00007f3e0c643632:   mov    %r9,0x2a0(%rsp)
   0.02%  │  0x00007f3e0c64363a:   mov    0xc8(%rsp),%r9
   0.06%  │  0x00007f3e0c643642:   imul   %rbx,%r9
          │  0x00007f3e0c643646:   mov    %r9,0x2a8(%rsp)
   0.04%  │  0x00007f3e0c64364e:   mov    0xc0(%rsp),%r9
          │  0x00007f3e0c643656:   imul   %rbx,%r9
   0.04%  │  0x00007f3e0c64365a:   mov    %r9,0x310(%rsp)
   0.04%  │  0x00007f3e0c643662:   mov    0xb8(%rsp),%r9
          │  0x00007f3e0c64366a:   imul   %rbx,%r9
          │  0x00007f3e0c64366e:   vmovq  %xmm9,%rcx
   0.05%  │  0x00007f3e0c643673:   imul   %rbx,%rcx
   0.05%  │  0x00007f3e0c643677:   mov    %r10,%rbx
          │  0x00007f3e0c64367a:   imul   0x150(%rsp),%rbx
   0.07%  │  0x00007f3e0c643683:   mov    %r10,%rdi
   0.06%  │  0x00007f3e0c643686:   imul   0x138(%rsp),%rdi
          │  0x00007f3e0c64368f:   mov    0x130(%rsp),%rdx
          │  0x00007f3e0c643697:   imul   %r10,%rdx
   0.04%  │  0x00007f3e0c64369b:   mov    0x118(%rsp),%rsi
   0.06%  │  0x00007f3e0c6436a3:   imul   %r10,%rsi
   0.05%  │  0x00007f3e0c6436a7:   mov    0x110(%rsp),%rax
          │  0x00007f3e0c6436af:   imul   %r10,%rax
   0.03%  │  0x00007f3e0c6436b3:   mov    %rax,0x318(%rsp)
   0.15%  │  0x00007f3e0c6436bb:   mov    0xf8(%rsp),%rax
          │  0x00007f3e0c6436c3:   imul   %r10,%rax
          │  0x00007f3e0c6436c7:   mov    %rax,0x358(%rsp)
   0.04%  │  0x00007f3e0c6436cf:   mov    0xf0(%rsp),%rax
   0.06%  │  0x00007f3e0c6436d7:   imul   %r10,%rax
          │  0x00007f3e0c6436db:   mov    %rax,0x448(%rsp)
   0.02%  │  0x00007f3e0c6436e3:   mov    0xe0(%rsp),%rax              ;   {no_reloc}
          │  0x00007f3e0c6436eb:   imul   %r10,%rax
   0.07%  │  0x00007f3e0c6436ef:   mov    %rax,0x450(%rsp)
   0.07%  │  0x00007f3e0c6436f7:   mov    0xd8(%rsp),%rax
          │  0x00007f3e0c6436ff:   imul   %r10,%rax
          │  0x00007f3e0c643703:   mov    %rax,0x458(%rsp)
   0.11%  │  0x00007f3e0c64370b:   mov    0xc8(%rsp),%rax
          │  0x00007f3e0c643713:   imul   %r10,%rax
          │  0x00007f3e0c643717:   mov    %rax,0x460(%rsp)
   0.04%  │  0x00007f3e0c64371f:   mov    0xc0(%rsp),%rax
   0.03%  │  0x00007f3e0c643727:   imul   %r10,%rax
          │  0x00007f3e0c64372b:   mov    0xb8(%rsp),%r13
          │  0x00007f3e0c643733:   imul   %r10,%r13
   0.02%  │  0x00007f3e0c643737:   add    %r13,%rcx
   0.05%  │  0x00007f3e0c64373a:   add    0x3f0(%rsp),%rcx
   0.05%  │  0x00007f3e0c643742:   add    %rbp,%rcx
   0.04%  │  0x00007f3e0c643745:   add    0x388(%rsp),%rcx
   0.13%  │  0x00007f3e0c64374d:   add    0x3d0(%rsp),%rcx
   0.08%  │  0x00007f3e0c643755:   add    0x300(%rsp),%rcx
   0.06%  │  0x00007f3e0c64375d:   add    0x348(%rsp),%rcx
   0.06%  │  0x00007f3e0c643765:   add    0x248(%rsp),%rcx
   0.04%  │  0x00007f3e0c64376d:   add    0x290(%rsp),%rcx
   0.10%  │  0x00007f3e0c643775:   add    0x190(%rsp),%rcx
   0.05%  │  0x00007f3e0c64377d:   add    0x1d8(%rsp),%rcx
   0.04%  │  0x00007f3e0c643785:   add    0x160(%rsp),%rcx             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@794 (line 391)
   0.04%  │  0x00007f3e0c64378d:   mov    %rcx,%rbp
   0.07%  │  0x00007f3e0c643790:   vmovq  %xmm9,%rcx
          │  0x00007f3e0c643795:   imul   %r10,%rcx
          │  0x00007f3e0c643799:   add    0x3f8(%rsp),%rcx
   0.03%  │  0x00007f3e0c6437a1:   add    %r14,%rcx
   0.06%  │  0x00007f3e0c6437a4:   add    0x390(%rsp),%rcx
          │  0x00007f3e0c6437ac:   add    0x3d8(%rsp),%rcx
          │  0x00007f3e0c6437b4:   add    0x308(%rsp),%rcx
   0.03%  │  0x00007f3e0c6437bc:   add    0x350(%rsp),%rcx
   0.08%  │  0x00007f3e0c6437c4:   add    0x250(%rsp),%rcx
          │  0x00007f3e0c6437cc:   add    0x298(%rsp),%rcx
   0.00%  │  0x00007f3e0c6437d4:   add    0x198(%rsp),%rcx
   0.06%  │  0x00007f3e0c6437dc:   add    0x1e0(%rsp),%rcx
   0.04%  │  0x00007f3e0c6437e4:   add    0x148(%rsp),%rcx             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@675 (line 390)
          │                                                            ;   {no_reloc}
          │  0x00007f3e0c6437ec:   mov    %rcx,%r13
          │  0x00007f3e0c6437ef:   vmovq  %xmm1,%r10
   0.04%  │  0x00007f3e0c6437f4:   mov    0x78(%r10),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@803 (line 392)
   0.05%  │  0x00007f3e0c6437f8:   vmovq  %xmm9,%r10
   0.00%  │  0x00007f3e0c6437fd:   imul   %rcx,%r10
          │  0x00007f3e0c643801:   add    %r9,%r10
   0.05%  │  0x00007f3e0c643804:   add    %rax,%r10
   0.05%  │  0x00007f3e0c643807:   add    0x3e8(%rsp),%r10
          │  0x00007f3e0c64380f:   add    0x440(%rsp),%r10
   0.00%  │  0x00007f3e0c643817:   add    0x380(%rsp),%r10
   0.04%  │  0x00007f3e0c64381f:   add    0x3c8(%rsp),%r10
   0.06%  │  0x00007f3e0c643827:   add    0x2f8(%rsp),%r10
   0.04%  │  0x00007f3e0c64382f:   add    0x340(%rsp),%r10
   0.04%  │  0x00007f3e0c643837:   add    0x240(%rsp),%r10
   0.04%  │  0x00007f3e0c64383f:   add    0x288(%rsp),%r10
   0.10%  │  0x00007f3e0c643847:   add    0x188(%rsp),%r10
   0.08%  │  0x00007f3e0c64384f:   add    0x1d0(%rsp),%r10
   0.05%  │  0x00007f3e0c643857:   add    0x168(%rsp),%r10             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@923 (line 392)
   0.09%  │  0x00007f3e0c64385f:   mov    %r10,%r14
   0.01%  │  0x00007f3e0c643862:   mov    %rcx,%r10
          │  0x00007f3e0c643865:   imul   0x158(%rsp),%r10             ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1816 (line 405)
          │  0x00007f3e0c64386e:   vmovq  %r10,%xmm1
   0.09%  │  0x00007f3e0c643873:   mov    0x150(%rsp),%r10
   0.01%  │  0x00007f3e0c64387b:   imul   %rcx,%r10
          │  0x00007f3e0c64387f:   add    %r11,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1805 (line 404)
          │  0x00007f3e0c643882:   vmovq  %r10,%xmm9
   0.08%  │  0x00007f3e0c643887:   mov    0x138(%rsp),%r10
   0.01%  │  0x00007f3e0c64388f:   imul   %rcx,%r10
          │  0x00007f3e0c643893:   add    %r8,%r10
          │  0x00007f3e0c643896:   add    0x128(%rsp),%r10             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1784 (line 403)
   0.09%  │  0x00007f3e0c64389e:   vmovq  %r10,%xmm10
   0.01%  │  0x00007f3e0c6438a3:   mov    0x130(%rsp),%r10
          │  0x00007f3e0c6438ab:   imul   %rcx,%r10
          │  0x00007f3e0c6438af:   add    0x140(%rsp),%r10
   0.12%  │  0x00007f3e0c6438b7:   add    %rbx,%r10
   0.01%  │  0x00007f3e0c6438ba:   add    0x120(%rsp),%r10             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1753 (line 402)
          │  0x00007f3e0c6438c2:   vmovq  %r10,%xmm11
          │  0x00007f3e0c6438c7:   mov    0x118(%rsp),%r10
   0.10%  │  0x00007f3e0c6438cf:   imul   %rcx,%r10
   0.00%  │  0x00007f3e0c6438d3:   add    0x1a0(%rsp),%r10
          │  0x00007f3e0c6438db:   add    %rdi,%r10
          │  0x00007f3e0c6438de:   add    0x1b0(%rsp),%r10             ;   {no_reloc}
   0.09%  │  0x00007f3e0c6438e6:   add    0x108(%rsp),%r10             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1712 (line 401)
   0.00%  │  0x00007f3e0c6438ee:   vmovq  %r10,%xmm12
   0.07%  │  0x00007f3e0c6438f3:   mov    0x110(%rsp),%rdi
          │  0x00007f3e0c6438fb:   imul   %rcx,%rdi
   0.06%  │  0x00007f3e0c6438ff:   add    0x1a8(%rsp),%rdi
   0.00%  │  0x00007f3e0c643907:   add    %rdx,%rdi
   0.05%  │  0x00007f3e0c64390a:   add    0x1b8(%rsp),%rdi
          │  0x00007f3e0c643912:   add    0x400(%rsp),%rdi
   0.04%  │  0x00007f3e0c64391a:   add    0x100(%rsp),%rdi             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1661 (line 400)
   0.01%  │  0x00007f3e0c643922:   mov    0xf8(%rsp),%rax
   0.05%  │  0x00007f3e0c64392a:   imul   %rcx,%rax
          │  0x00007f3e0c64392e:   add    0x1e8(%rsp),%rax
   0.04%  │  0x00007f3e0c643936:   add    %rsi,%rax
   0.00%  │  0x00007f3e0c643939:   add    0x1f8(%rsp),%rax
   0.03%  │  0x00007f3e0c643941:   add    0x408(%rsp),%rax
          │  0x00007f3e0c643949:   add    0x1c0(%rsp),%rax
   0.05%  │  0x00007f3e0c643951:   add    0xe8(%rsp),%rax              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1600 (line 399)
   0.06%  │  0x00007f3e0c643959:   mov    0xf0(%rsp),%r10
          │  0x00007f3e0c643961:   imul   %rcx,%r10
          │  0x00007f3e0c643965:   add    0x1f0(%rsp),%r10
   0.06%  │  0x00007f3e0c64396d:   add    0x318(%rsp),%r10
   0.05%  │  0x00007f3e0c643975:   add    0x200(%rsp),%r10
          │  0x00007f3e0c64397d:   add    0x410(%rsp),%r10
          │  0x00007f3e0c643985:   add    0x1c8(%rsp),%r10
   0.05%  │  0x00007f3e0c64398d:   add    0x398(%rsp),%r10
   0.09%  │  0x00007f3e0c643995:   add    0x2c8(%rsp),%r10             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1529 (line 398)
   0.05%  │  0x00007f3e0c64399d:   mov    0xe0(%rsp),%r11
          │  0x00007f3e0c6439a5:   imul   %rcx,%r11
   0.05%  │  0x00007f3e0c6439a9:   add    0x258(%rsp),%r11
   0.00%  │  0x00007f3e0c6439b1:   add    0x358(%rsp),%r11
   0.06%  │  0x00007f3e0c6439b9:   add    0x268(%rsp),%r11
   0.02%  │  0x00007f3e0c6439c1:   add    0x418(%rsp),%r11
   0.06%  │  0x00007f3e0c6439c9:   add    0x208(%rsp),%r11
   0.02%  │  0x00007f3e0c6439d1:   add    0x3a0(%rsp),%r11
   0.05%  │  0x00007f3e0c6439d9:   add    0x2d0(%rsp),%r11
   0.02%  │  0x00007f3e0c6439e1:   add    0x2c0(%rsp),%r11             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1448 (line 397)
          │                                                            ;   {no_reloc}
   0.09%  │  0x00007f3e0c6439e9:   mov    0xd8(%rsp),%r8
   0.01%  │  0x00007f3e0c6439f1:   imul   %rcx,%r8
          │  0x00007f3e0c6439f5:   add    0x260(%rsp),%r8
          │  0x00007f3e0c6439fd:   add    0x448(%rsp),%r8
   0.10%  │  0x00007f3e0c643a05:   add    0x270(%rsp),%r8
   0.01%  │  0x00007f3e0c643a0d:   add    0x420(%rsp),%r8
          │  0x00007f3e0c643a15:   add    0x360(%rsp),%r8
          │  0x00007f3e0c643a1d:   add    0x3a8(%rsp),%r8
   0.09%  │  0x00007f3e0c643a25:   add    0x2d8(%rsp),%r8
   0.03%  │  0x00007f3e0c643a2d:   add    0x320(%rsp),%r8
   0.06%  │  0x00007f3e0c643a35:   add    0x220(%rsp),%r8              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1359 (line 396)
   0.05%  │  0x00007f3e0c643a3d:   mov    0xc8(%rsp),%r9
   0.03%  │  0x00007f3e0c643a45:   imul   %rcx,%r9
          │  0x00007f3e0c643a49:   add    0x2a0(%rsp),%r9
          │  0x00007f3e0c643a51:   add    0x450(%rsp),%r9
   0.08%  │  0x00007f3e0c643a59:   add    0x2b0(%rsp),%r9
   0.04%  │  0x00007f3e0c643a61:   add    0x428(%rsp),%r9
   0.01%  │  0x00007f3e0c643a69:   add    0x368(%rsp),%r9
   0.05%  │  0x00007f3e0c643a71:   add    0x3b0(%rsp),%r9
   0.08%  │  0x00007f3e0c643a79:   add    0x2e0(%rsp),%r9
   0.08%  │  0x00007f3e0c643a81:   add    0x328(%rsp),%r9
   0.10%  │  0x00007f3e0c643a89:   add    0x228(%rsp),%r9
   0.11%  │  0x00007f3e0c643a91:   add    0x218(%rsp),%r9              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1262 (line 395)
   0.11%  │  0x00007f3e0c643a99:   mov    0xc0(%rsp),%rbx
   0.01%  │  0x00007f3e0c643aa1:   imul   %rcx,%rbx
          │  0x00007f3e0c643aa5:   add    0x2a8(%rsp),%rbx
          │  0x00007f3e0c643aad:   add    0x458(%rsp),%rbx
   0.12%  │  0x00007f3e0c643ab5:   add    0x2b8(%rsp),%rbx
   0.00%  │  0x00007f3e0c643abd:   add    0x430(%rsp),%rbx
          │  0x00007f3e0c643ac5:   add    0x370(%rsp),%rbx
   0.02%  │  0x00007f3e0c643acd:   add    0x3b8(%rsp),%rbx
   0.12%  │  0x00007f3e0c643ad5:   add    0x2e8(%rsp),%rbx
   0.05%  │  0x00007f3e0c643add:   add    0x330(%rsp),%rbx             ;   {no_reloc}
   0.09%  │  0x00007f3e0c643ae5:   add    0x230(%rsp),%rbx
   0.09%  │  0x00007f3e0c643aed:   add    0x278(%rsp),%rbx
   0.09%  │  0x00007f3e0c643af5:   add    0x178(%rsp),%rbx             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1157 (line 394)
   0.10%  │  0x00007f3e0c643afd:   mov    0xb8(%rsp),%rsi
          │  0x00007f3e0c643b05:   imul   %rcx,%rsi
          │  0x00007f3e0c643b09:   add    0x310(%rsp),%rsi
   0.01%  │  0x00007f3e0c643b11:   add    0x460(%rsp),%rsi
   0.07%  │  0x00007f3e0c643b19:   add    0x3e0(%rsp),%rsi
          │  0x00007f3e0c643b21:   add    0x438(%rsp),%rsi
          │  0x00007f3e0c643b29:   add    0x378(%rsp),%rsi
   0.04%  │  0x00007f3e0c643b31:   add    0x3c0(%rsp),%rsi
   0.13%  │  0x00007f3e0c643b39:   add    0x2f0(%rsp),%rsi
   0.08%  │  0x00007f3e0c643b41:   add    0x338(%rsp),%rsi
   0.15%  │  0x00007f3e0c643b49:   add    0x238(%rsp),%rsi
   0.09%  │  0x00007f3e0c643b51:   add    0x280(%rsp),%rsi
   0.08%  │  0x00007f3e0c643b59:   add    0x180(%rsp),%rsi
   0.09%  │  0x00007f3e0c643b61:   add    0x170(%rsp),%rsi             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1044 (line 393)
   0.10%  │  0x00007f3e0c643b69:   vmovq  %xmm0,%rdx
          │  0x00007f3e0c643b6e:   vmovsd %xmm2,(%rsp)
          │  0x00007f3e0c643b73:   vmovsd %xmm4,0x8(%rsp)
          │  0x00007f3e0c643b79:   vmovsd %xmm3,0x10(%rsp)
   0.12%  │  0x00007f3e0c643b7f:   vmovsd %xmm6,0x18(%rsp)
          │  0x00007f3e0c643b85:   vmovsd %xmm5,0x20(%rsp)
          │  0x00007f3e0c643b8b:   vmovsd %xmm8,0x28(%rsp)
   0.01%  │  0x00007f3e0c643b91:   vmovsd %xmm7,0x30(%rsp)
   0.08%  │  0x00007f3e0c643b97:   mov    %r13,0x38(%rsp)
   0.01%  │  0x00007f3e0c643b9c:   mov    %rbp,0x40(%rsp)
          │  0x00007f3e0c643ba1:   mov    %r14,0x48(%rsp)
   0.04%  │  0x00007f3e0c643ba6:   mov    %rsi,0x50(%rsp)
   0.06%  │  0x00007f3e0c643bab:   mov    %rbx,0x58(%rsp)
   0.09%  │  0x00007f3e0c643bb0:   mov    %r9,0x60(%rsp)
   0.01%  │  0x00007f3e0c643bb5:   mov    %r8,0x68(%rsp)
   0.03%  │  0x00007f3e0c643bba:   mov    %r11,0x70(%rsp)
   0.05%  │  0x00007f3e0c643bbf:   mov    %r10,0x78(%rsp)
   0.08%  │  0x00007f3e0c643bc4:   mov    %rax,0x80(%rsp)
   0.05%  │  0x00007f3e0c643bcc:   mov    %rdi,0x88(%rsp)
   0.08%  │  0x00007f3e0c643bd4:   vmovsd %xmm12,0x90(%rsp)
   0.13%  │  0x00007f3e0c643bdd:   vmovsd %xmm11,0x98(%rsp)            ;   {no_reloc}
   0.07%  │  0x00007f3e0c643be6:   vmovsd %xmm10,0xa0(%rsp)
   0.11%  │  0x00007f3e0c643bef:   vmovsd %xmm9,0xa8(%rsp)
   0.10%  │  0x00007f3e0c643bf8:   vmovsd %xmm1,0xb0(%rsp)
   0.11%  │  0x00007f3e0c643c01:   vmovq  %xmm13,%rsi
          │  0x00007f3e0c643c06:   vmovq  %xmm14,%rcx
          │  0x00007f3e0c643c0b:   mov    0x210(%rsp),%r8
          │  0x00007f3e0c643c13:   vmovq  %xmm15,%r9
   0.10%  │  0x00007f3e0c643c18:   mov    0xd0(%rsp),%rdi
          │  0x00007f3e0c643c20:   data16 xchg %ax,%ax
          │  0x00007f3e0c643c23:   call   0x00007f3e0c0c4380           ; ImmutableOopMap {}
          │                                                            ;*invokevirtual carryReduce {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1875 (line 407)
          │                                                            ;   {optimized virtual_call}
   0.00%  │  0x00007f3e0c643c28:   nopl   0x1618(%rax,%rax,1)          ;*invokevirtual carryReduce {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@1875 (line 407)
          │                                                            ;   {other}
   0.02%  │  0x00007f3e0c643c30:   add    $0x480,%rsp
   0.06%  │  0x00007f3e0c643c37:   pop    %rbp
   0.02%  │  0x00007f3e0c643c38:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f3e0c643c3f:   ja     0x00007f3e0c643ce4
   0.05%  │  0x00007f3e0c643c45:   ret    
          ↘  0x00007f3e0c643c46:   mov    %rsi,%rbp
             0x00007f3e0c643c49:   mov    %rcx,0xc0(%rsp)
             0x00007f3e0c643c51:   mov    %r8,0xc8(%rsp)
             0x00007f3e0c643c59:   mov    %rdx,0xd0(%rsp)
             0x00007f3e0c643c61:   mov    $0xffffffe4,%esi
             0x00007f3e0c643c66:   nop
             0x00007f3e0c643c67:   call   0x00007f3e0c0c9f00           ; ImmutableOopMap {rbp=Oop [192]=Oop [200]=Oop [208]=Oop }
                                                                       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomialP384::mult@2 (line 379)
                                                                       ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  32.43%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce, version 2, compile id 625 

               # parm26:   [sp+0x1d8]   = long
               # parm27:   [sp+0x1e0]   = long
               0x00007f3e0c63eda0:   mov    0x8(%rsi),%r10d
               0x00007f3e0c63eda4:   movabs $0x7f3d8f000000,%r11
               0x00007f3e0c63edae:   add    %r11,%r10
               0x00007f3e0c63edb1:   cmp    %r10,%rax
               0x00007f3e0c63edb4:   jne    0x00007f3e0c0c4080           ;   {runtime_call ic_miss_stub}
               0x00007f3e0c63edba:   xchg   %ax,%ax
               0x00007f3e0c63edbc:   nopl   0x0(%rax)
             [Verified Entry Point]
   0.15%       0x00007f3e0c63edc0:   mov    %eax,-0x14000(%rsp)
               0x00007f3e0c63edc7:   push   %rbp
   0.09%       0x00007f3e0c63edc8:   sub    $0x120,%rsp
               0x00007f3e0c63edcf:   nop
               0x00007f3e0c63edd0:   cmpl   $0x0,0x20(%r15)
   0.17%  ╭    0x00007f3e0c63edd8:   jne    0x00007f3e0c63f8c0           ;*synchronization entry
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@-1 (line 81)
          │    0x00007f3e0c63edde:   mov    %r9,%rbp
          │    0x00007f3e0c63ede1:   mov    %r8,%rax
          │    0x00007f3e0c63ede4:   mov    %rcx,%r14
   0.15%  │    0x00007f3e0c63ede7:   vmovq  %rdx,%xmm8
          │    0x00007f3e0c63edec:   vmovq  %rsi,%xmm7
          │    0x00007f3e0c63edf1:   mov    0x1e0(%rsp),%r10
          │    0x00007f3e0c63edf9:   sar    $0x10,%r10
   0.13%  │    0x00007f3e0c63edfd:   mov    0x180(%rsp),%r11
          │    0x00007f3e0c63ee05:   sub    %r10,%r11
          │    0x00007f3e0c63ee08:   mov    0x1e0(%rsp),%r10
          │    0x00007f3e0c63ee10:   shl    $0x14,%r10
   0.14%  │    0x00007f3e0c63ee14:   mov    0x1e0(%rsp),%r8
          │    0x00007f3e0c63ee1c:   shl    $0x18,%r8
          │    0x00007f3e0c63ee20:   and    $0xfffffff,%r10
          │    0x00007f3e0c63ee27:   mov    0x188(%rsp),%r9
   0.13%  │    0x00007f3e0c63ee2f:   add    %r10,%r9
          │    0x00007f3e0c63ee32:   and    $0xfffffff,%r8
          │    0x00007f3e0c63ee39:   mov    0x190(%rsp),%rcx
          │    0x00007f3e0c63ee41:   add    %r8,%rcx
   0.14%  │    0x00007f3e0c63ee44:   mov    0x1e0(%rsp),%r10
          │    0x00007f3e0c63ee4c:   sar    $0x8,%r10
          │    0x00007f3e0c63ee50:   add    %r10,%rcx
          │    0x00007f3e0c63ee53:   mov    0x1e0(%rsp),%r8
   0.15%  │    0x00007f3e0c63ee5b:   sar    $0x4,%r8
          │    0x00007f3e0c63ee5f:   mov    0x198(%rsp),%r10
          │    0x00007f3e0c63ee67:   add    %r8,%r10                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@23 (line 84)
          │    0x00007f3e0c63ee6a:   mov    0x1e0(%rsp),%rbx
   0.14%  │    0x00007f3e0c63ee72:   shl    $0x8,%rbx
          │    0x00007f3e0c63ee76:   mov    %r10,%r8
          │    0x00007f3e0c63ee79:   sar    $0x8,%r8
          │    0x00007f3e0c63ee7d:   mov    %r8,0x180(%rsp)
   0.15%  │    0x00007f3e0c63ee85:   and    $0xfffffff,%rbx
          │    0x00007f3e0c63ee8c:   mov    0x170(%rsp),%rdx
          │    0x00007f3e0c63ee94:   add    %rbx,%rdx
          │    0x00007f3e0c63ee97:   mov    %r10,%r8
   0.10%  │    0x00007f3e0c63ee9a:   shl    $0x18,%r8
          │    0x00007f3e0c63ee9e:   vmovq  %r10,%xmm0
          │    0x00007f3e0c63eea3:   shl    $0x14,%r10
          │    0x00007f3e0c63eea7:   and    $0xfffffff,%r8
   0.11%  │    0x00007f3e0c63eeae:   mov    %r8,0x170(%rsp)              ;   {no_reloc}
          │    0x00007f3e0c63eeb6:   and    $0xfffffff,%r10
          │    0x00007f3e0c63eebd:   mov    %r10,0x188(%rsp)
          │    0x00007f3e0c63eec5:   vmovq  %xmm0,%r10
   0.14%  │    0x00007f3e0c63eeca:   sar    $0x10,%r10
   0.06%  │    0x00007f3e0c63eece:   mov    %r10,0x190(%rsp)
   0.15%  │    0x00007f3e0c63eed6:   vmovq  %xmm0,%r10
          │    0x00007f3e0c63eedb:   sar    $0x14,%r10
   0.29%  │    0x00007f3e0c63eedf:   mov    %r10,0x198(%rsp)
   0.11%  │    0x00007f3e0c63eee7:   vmovq  %xmm0,%r10
   0.04%  │    0x00007f3e0c63eeec:   shl    $0xc,%r10
          │    0x00007f3e0c63eef0:   vmovq  %xmm0,%r8
   0.02%  │    0x00007f3e0c63eef5:   shl    $0x8,%r8
   0.07%  │    0x00007f3e0c63eef9:   and    $0xfffffff,%r10
   0.05%  │    0x00007f3e0c63ef00:   and    $0xfffffff,%r8
   0.01%  │    0x00007f3e0c63ef07:   add    %r8,%rdi
   0.03%  │    0x00007f3e0c63ef0a:   vmovq  %xmm0,%r8
   0.04%  │    0x00007f3e0c63ef0f:   sar    $0x4,%r8
   0.05%  │    0x00007f3e0c63ef13:   mov    %r8,0xc0(%rsp)
          │    0x00007f3e0c63ef1b:   mov    0x1e0(%rsp),%r8
   0.03%  │    0x00007f3e0c63ef23:   shl    $0xc,%r8
   0.07%  │    0x00007f3e0c63ef27:   and    $0xfffffff,%r8
   0.05%  │    0x00007f3e0c63ef2e:   mov    0x178(%rsp),%rbx
          │    0x00007f3e0c63ef36:   sub    %r8,%rbx
   0.03%  │    0x00007f3e0c63ef39:   vmovq  %rbx,%xmm9
   0.05%  │    0x00007f3e0c63ef3e:   mov    0x1d8(%rsp),%r8
   0.04%  │    0x00007f3e0c63ef46:   shl    $0x14,%r8
          │    0x00007f3e0c63ef4a:   and    $0xfffffff,%r8
   0.01%  │    0x00007f3e0c63ef51:   add    %r8,%r11
   0.06%  │    0x00007f3e0c63ef54:   mov    %r11,%rsi
   0.06%  │    0x00007f3e0c63ef57:   mov    0x1d8(%rsp),%r11
          │    0x00007f3e0c63ef5f:   shl    $0x18,%r11
   0.02%  │    0x00007f3e0c63ef63:   and    $0xfffffff,%r11
   0.04%  │    0x00007f3e0c63ef6a:   add    %r11,%r9
   0.05%  │    0x00007f3e0c63ef6d:   mov    0x1d8(%rsp),%r11
          │    0x00007f3e0c63ef75:   sar    $0x8,%r11
   0.03%  │    0x00007f3e0c63ef79:   add    %r11,%r9
   0.04%  │    0x00007f3e0c63ef7c:   mov    0x1d8(%rsp),%r11
   0.04%  │    0x00007f3e0c63ef84:   sar    $0x4,%r11
          │    0x00007f3e0c63ef88:   lea    (%rcx,%r11,1),%r8
   0.03%  │    0x00007f3e0c63ef8c:   vmovq  %r8,%xmm1
   0.07%  │    0x00007f3e0c63ef91:   mov    0x1d8(%rsp),%r11
   0.03%  │    0x00007f3e0c63ef99:   shl    $0x8,%r11
          │    0x00007f3e0c63ef9d:   and    $0xfffffff,%r11
   0.03%  │    0x00007f3e0c63efa4:   mov    0x168(%rsp),%r8
   0.07%  │    0x00007f3e0c63efac:   add    %r11,%r8
   0.04%  │    0x00007f3e0c63efaf:   mov    %r8,%r13
          │    0x00007f3e0c63efb2:   vmovq  %xmm1,%r11                   ;   {no_reloc}
   0.04%  │    0x00007f3e0c63efb7:   sar    $0x8,%r11
   0.11%  │    0x00007f3e0c63efbb:   mov    %r11,0x168(%rsp)
   0.08%  │    0x00007f3e0c63efc3:   vmovq  %xmm1,%r11
          │    0x00007f3e0c63efc8:   shl    $0x18,%r11
   0.19%  │    0x00007f3e0c63efcc:   and    $0xfffffff,%r11
   0.10%  │    0x00007f3e0c63efd3:   mov    %r11,0x178(%rsp)
   0.15%  │    0x00007f3e0c63efdb:   vmovq  %xmm1,%r11
          │    0x00007f3e0c63efe0:   shl    $0x14,%r11
          │    0x00007f3e0c63efe4:   and    $0xfffffff,%r11
   0.04%  │    0x00007f3e0c63efeb:   vmovq  %xmm1,%r8
   0.07%  │    0x00007f3e0c63eff0:   sar    $0x10,%r8
          │    0x00007f3e0c63eff4:   vmovq  %xmm1,%rcx
          │    0x00007f3e0c63eff9:   sar    $0x14,%rcx
   0.03%  │    0x00007f3e0c63effd:   vmovq  %xmm1,%rbx
   0.07%  │    0x00007f3e0c63f002:   shl    $0xc,%rbx
          │    0x00007f3e0c63f006:   and    $0xfffffff,%rbx
          │    0x00007f3e0c63f00d:   sub    %rbx,%rdi
   0.05%  │    0x00007f3e0c63f010:   add    %rcx,%rdi
   0.08%  │    0x00007f3e0c63f013:   vmovq  %rdi,%xmm3
   0.00%  │    0x00007f3e0c63f018:   vmovq  %xmm1,%rcx
          │    0x00007f3e0c63f01d:   shl    $0x8,%rcx
   0.05%  │    0x00007f3e0c63f021:   and    $0xfffffff,%rcx
   0.08%  │    0x00007f3e0c63f028:   add    %rcx,%rbp
          │    0x00007f3e0c63f02b:   vmovq  %xmm1,%rcx
          │    0x00007f3e0c63f030:   sar    $0x4,%rcx
   0.05%  │    0x00007f3e0c63f034:   mov    %rcx,0xc8(%rsp)
   0.09%  │    0x00007f3e0c63f03c:   mov    0x1d8(%rsp),%rcx
          │    0x00007f3e0c63f044:   shl    $0xc,%rcx
          │    0x00007f3e0c63f048:   and    $0xfffffff,%rcx
   0.04%  │    0x00007f3e0c63f04f:   sub    %rcx,%rdx
   0.08%  │    0x00007f3e0c63f052:   mov    0x1d8(%rsp),%rcx
   0.00%  │    0x00007f3e0c63f05a:   sar    $0x14,%rcx
          │    0x00007f3e0c63f05e:   add    %rcx,%rdx
   0.04%  │    0x00007f3e0c63f061:   vmovq  %rdx,%xmm4
   0.08%  │    0x00007f3e0c63f066:   mov    0x1d8(%rsp),%rcx
   0.00%  │    0x00007f3e0c63f06e:   sar    $0x10,%rcx
          │    0x00007f3e0c63f072:   mov    %rcx,0xd0(%rsp)
   0.04%  │    0x00007f3e0c63f07a:   mov    0x1d0(%rsp),%rcx
   0.05%  │    0x00007f3e0c63f082:   shl    $0x18,%rcx
          │    0x00007f3e0c63f086:   and    $0xfffffff,%rcx
          │    0x00007f3e0c63f08d:   lea    (%rsi,%rcx,1),%rbx
   0.04%  │    0x00007f3e0c63f091:   mov    0x1d0(%rsp),%rcx
   0.08%  │    0x00007f3e0c63f099:   sar    $0x8,%rcx
   0.00%  │    0x00007f3e0c63f09d:   add    %rcx,%rbx
          │    0x00007f3e0c63f0a0:   vmovq  %rbx,%xmm5
   0.03%  │    0x00007f3e0c63f0a5:   mov    0x1d0(%rsp),%rcx
   0.08%  │    0x00007f3e0c63f0ad:   sar    $0x4,%rcx
   0.00%  │    0x00007f3e0c63f0b1:   add    %rcx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@213 (line 102)
          │                                                              ;   {no_reloc}
          │    0x00007f3e0c63f0b4:   vmovq  %r9,%xmm2
   0.05%  │    0x00007f3e0c63f0b9:   mov    0x1d0(%rsp),%r9
   0.08%  │    0x00007f3e0c63f0c1:   shl    $0x8,%r9
   0.00%  │    0x00007f3e0c63f0c5:   and    $0xfffffff,%r9
          │    0x00007f3e0c63f0cc:   mov    0x160(%rsp),%rcx
   0.03%  │    0x00007f3e0c63f0d4:   add    %r9,%rcx
   0.06%  │    0x00007f3e0c63f0d7:   vmovq  %rcx,%xmm6
   0.00%  │    0x00007f3e0c63f0dc:   vmovq  %xmm2,%r9
   0.01%  │    0x00007f3e0c63f0e1:   sar    $0x8,%r9
   0.38%  │    0x00007f3e0c63f0e5:   vmovq  %xmm2,%rcx
   0.04%  │    0x00007f3e0c63f0ea:   shl    $0x18,%rcx
   0.01%  │    0x00007f3e0c63f0ee:   and    $0xfffffff,%rcx
   0.01%  │    0x00007f3e0c63f0f5:   vmovq  %xmm2,%rbx
   0.12%  │    0x00007f3e0c63f0fa:   shl    $0x14,%rbx
   0.16%  │    0x00007f3e0c63f0fe:   and    $0xfffffff,%rbx
   0.04%  │    0x00007f3e0c63f105:   vmovq  %xmm2,%rdi
          │    0x00007f3e0c63f10a:   sar    $0x10,%rdi
   0.29%  │    0x00007f3e0c63f10e:   vmovq  %xmm3,%rdx
   0.01%  │    0x00007f3e0c63f113:   sub    %rdi,%rdx
   0.03%  │    0x00007f3e0c63f116:   vmovq  %rdx,%xmm3
   0.02%  │    0x00007f3e0c63f11b:   vmovq  %xmm2,%rdi
   0.10%  │    0x00007f3e0c63f120:   sar    $0x14,%rdi
   0.01%  │    0x00007f3e0c63f124:   vmovq  %xmm2,%rdx
   0.03%  │    0x00007f3e0c63f129:   shl    $0xc,%rdx
   0.01%  │    0x00007f3e0c63f12d:   and    $0xfffffff,%rdx
   0.08%  │    0x00007f3e0c63f134:   mov    %rbp,%rsi
   0.01%  │    0x00007f3e0c63f137:   sub    %rdx,%rsi
   0.04%  │    0x00007f3e0c63f13a:   add    %rdi,%rsi
   0.02%  │    0x00007f3e0c63f13d:   vmovq  %rsi,%xmm10
   0.09%  │    0x00007f3e0c63f142:   vmovq  %xmm2,%rdi
   0.01%  │    0x00007f3e0c63f147:   shl    $0x8,%rdi
   0.03%  │    0x00007f3e0c63f14b:   and    $0xfffffff,%rdi
   0.01%  │    0x00007f3e0c63f152:   lea    (%rax,%rdi,1),%rdx
   0.09%  │    0x00007f3e0c63f156:   vmovq  %rdx,%xmm11
   0.00%  │    0x00007f3e0c63f15b:   vmovq  %xmm2,%rdi
   0.03%  │    0x00007f3e0c63f160:   sar    $0x4,%rdi
   0.01%  │    0x00007f3e0c63f164:   mov    0x1d0(%rsp),%rdx
   0.07%  │    0x00007f3e0c63f16c:   shl    $0xc,%rdx
   0.00%  │    0x00007f3e0c63f170:   and    $0xfffffff,%rdx
   0.03%  │    0x00007f3e0c63f177:   mov    %r13,%rsi
   0.00%  │    0x00007f3e0c63f17a:   sub    %rdx,%rsi
   0.07%  │    0x00007f3e0c63f17d:   mov    0x1d0(%rsp),%rdx
   0.00%  │    0x00007f3e0c63f185:   sar    $0x14,%rdx
   0.04%  │    0x00007f3e0c63f189:   add    %rdx,%rsi
   0.02%  │    0x00007f3e0c63f18c:   vmovq  %rsi,%xmm12
   0.08%  │    0x00007f3e0c63f191:   mov    0x1d0(%rsp),%rdx
   0.01%  │    0x00007f3e0c63f199:   sar    $0x10,%rdx
   0.04%  │    0x00007f3e0c63f19d:   vmovq  %xmm4,%rsi
   0.01%  │    0x00007f3e0c63f1a2:   sub    %rdx,%rsi
   0.07%  │    0x00007f3e0c63f1a5:   vmovq  %rsi,%xmm4
   0.01%  │    0x00007f3e0c63f1aa:   mov    0x1d0(%rsp),%rdx             ;   {no_reloc}
   0.03%  │    0x00007f3e0c63f1b2:   shl    $0x14,%rdx
   0.01%  │    0x00007f3e0c63f1b6:   and    $0xfffffff,%rdx
   0.09%  │    0x00007f3e0c63f1bd:   mov    %rdx,0x160(%rsp)
   0.01%  │    0x00007f3e0c63f1c5:   mov    0x1c8(%rsp),%rdx
   0.03%  │    0x00007f3e0c63f1cd:   sar    $0x4,%rdx
   0.01%  │    0x00007f3e0c63f1d1:   vmovq  %xmm5,%rsi
   0.09%  │    0x00007f3e0c63f1d6:   add    %rdx,%rsi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@308 (line 111)
   0.00%  │    0x00007f3e0c63f1d9:   vmovq  %rsi,%xmm5
   0.03%  │    0x00007f3e0c63f1de:   mov    0x1c8(%rsp),%rdx
   0.01%  │    0x00007f3e0c63f1e6:   shl    $0x8,%rdx
   0.08%  │    0x00007f3e0c63f1ea:   and    $0xfffffff,%rdx
   0.00%  │    0x00007f3e0c63f1f1:   mov    0x158(%rsp),%rsi
   0.05%  │    0x00007f3e0c63f1f9:   add    %rdx,%rsi
   0.01%  │    0x00007f3e0c63f1fc:   vmovq  %rsi,%xmm13
   0.08%  │    0x00007f3e0c63f201:   vmovq  %xmm5,%rdx
   0.01%  │    0x00007f3e0c63f206:   sar    $0x8,%rdx
   0.32%  │    0x00007f3e0c63f20a:   vmovq  %xmm5,%rsi
   0.01%  │    0x00007f3e0c63f20f:   shl    $0x18,%rsi
   0.08%  │    0x00007f3e0c63f213:   and    $0xfffffff,%rsi
   0.02%  │    0x00007f3e0c63f21a:   vmovq  %xmm5,%rax
   0.06%  │    0x00007f3e0c63f21f:   shl    $0x14,%rax
   0.05%  │    0x00007f3e0c63f223:   and    $0xfffffff,%rax
   0.09%  │    0x00007f3e0c63f229:   vmovq  %xmm3,%rbp
   0.01%  │    0x00007f3e0c63f22e:   add    %rax,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@1177 (line 193)
   0.05%  │    0x00007f3e0c63f231:   vmovq  %rbp,%xmm14
   0.02%  │    0x00007f3e0c63f236:   vmovq  %xmm5,%rax
   0.09%  │    0x00007f3e0c63f23b:   sar    $0x10,%rax
   0.02%  │    0x00007f3e0c63f23f:   vmovq  %xmm10,%rbp
   0.05%  │    0x00007f3e0c63f244:   sub    %rax,%rbp                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@1211 (line 196)
   0.03%  │    0x00007f3e0c63f247:   vmovq  %rbp,%xmm10
   0.09%  │    0x00007f3e0c63f24c:   vmovq  %xmm5,%rax
   0.02%  │    0x00007f3e0c63f251:   sar    $0x14,%rax
   0.03%  │    0x00007f3e0c63f255:   vmovq  %xmm5,%rbp
   0.01%  │    0x00007f3e0c63f25a:   shl    $0xc,%rbp
   0.06%  │    0x00007f3e0c63f25e:   and    $0xfffffff,%rbp
   0.02%  │    0x00007f3e0c63f265:   vmovq  %xmm11,%r13
   0.07%  │    0x00007f3e0c63f26a:   sub    %rbp,%r13
   0.02%  │    0x00007f3e0c63f26d:   add    %rax,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@1233 (line 198)
   0.07%  │    0x00007f3e0c63f270:   vmovq  %r13,%xmm11
   0.01%  │    0x00007f3e0c63f275:   vmovq  %xmm5,%rbp
   0.04%  │    0x00007f3e0c63f27a:   shl    $0x8,%rbp
   0.01%  │    0x00007f3e0c63f27e:   vmovq  %xmm5,%rax
   0.06%  │    0x00007f3e0c63f283:   sar    $0x4,%rax
   0.02%  │    0x00007f3e0c63f287:   mov    %rax,%r13
   0.04%  │    0x00007f3e0c63f28a:   and    $0xfffffff,%rbp
   0.01%  │    0x00007f3e0c63f291:   lea    (%r14,%rbp,1),%rax
   0.06%  │    0x00007f3e0c63f295:   vmovq  %rax,%xmm15
   0.02%  │    0x00007f3e0c63f29a:   mov    0x1c8(%rsp),%rax
   0.03%  │    0x00007f3e0c63f2a2:   shl    $0xc,%rax
   0.01%  │    0x00007f3e0c63f2a6:   and    $0xfffffff,%rax
   0.05%  │    0x00007f3e0c63f2ac:   vmovq  %xmm6,%rbp                   ;   {no_reloc}
   0.01%  │    0x00007f3e0c63f2b1:   sub    %rax,%rbp
   0.04%  │    0x00007f3e0c63f2b4:   mov    0x1c8(%rsp),%rax
   0.00%  │    0x00007f3e0c63f2bc:   sar    $0x14,%rax
   0.05%  │    0x00007f3e0c63f2c0:   add    %rax,%rbp
   0.01%  │    0x00007f3e0c63f2c3:   mov    %rbp,0x158(%rsp)
   0.03%  │    0x00007f3e0c63f2cb:   mov    0x1c8(%rsp),%rax
   0.01%  │    0x00007f3e0c63f2d3:   sar    $0x10,%rax
   0.04%  │    0x00007f3e0c63f2d7:   vmovq  %xmm12,%rbp
   0.02%  │    0x00007f3e0c63f2dc:   sub    %rax,%rbp
   0.03%  │    0x00007f3e0c63f2df:   vmovq  %rbp,%xmm12
   0.02%  │    0x00007f3e0c63f2e4:   mov    0x1c8(%rsp),%rax
   0.05%  │    0x00007f3e0c63f2ec:   shl    $0x14,%rax
   0.02%  │    0x00007f3e0c63f2f0:   and    $0xfffffff,%rax
   0.04%  │    0x00007f3e0c63f2f6:   vmovq  %xmm4,%rbp
   0.01%  │    0x00007f3e0c63f2fb:   add    %rax,%rbp
   0.08%  │    0x00007f3e0c63f2fe:   mov    %rbp,0xd8(%rsp)
   0.02%  │    0x00007f3e0c63f306:   mov    0x1c8(%rsp),%rax
   0.03%  │    0x00007f3e0c63f30e:   shl    $0x18,%rax
   0.01%  │    0x00007f3e0c63f312:   and    $0xfffffff,%rax
   0.06%  │    0x00007f3e0c63f318:   mov    %rax,0xe0(%rsp)
   0.03%  │    0x00007f3e0c63f320:   mov    0x1c8(%rsp),%rax
   0.05%  │    0x00007f3e0c63f328:   sar    $0x8,%rax
   0.02%  │    0x00007f3e0c63f32c:   mov    %rax,0xe8(%rsp)
   0.06%  │    0x00007f3e0c63f334:   mov    0x1a0(%rsp),%rax
   0.02%  │    0x00007f3e0c63f33c:   shl    $0x8,%rax
   0.06%  │    0x00007f3e0c63f340:   and    $0xfffffff,%rax
   0.02%  │    0x00007f3e0c63f346:   mov    0x130(%rsp),%rbp
   0.06%  │    0x00007f3e0c63f34e:   add    %rax,%rbp
   0.02%  │    0x00007f3e0c63f351:   sub    %r10,%rbp
   0.05%  │    0x00007f3e0c63f354:   add    0x198(%rsp),%rbp
   0.01%  │    0x00007f3e0c63f35c:   sub    %r8,%rbp
   0.06%  │    0x00007f3e0c63f35f:   add    %rbx,%rbp
   0.01%  │    0x00007f3e0c63f362:   add    %rsi,%rbp
   0.05%  │    0x00007f3e0c63f365:   add    %rdx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@1187 (line 194)
   0.01%  │    0x00007f3e0c63f368:   vmovq  %rbp,%xmm3
   0.05%  │    0x00007f3e0c63f36d:   mov    0x1a0(%rsp),%r10
   0.02%  │    0x00007f3e0c63f375:   shl    $0xc,%r10
   0.05%  │    0x00007f3e0c63f379:   and    $0xfffffff,%r10
   0.00%  │    0x00007f3e0c63f380:   mov    0x1a0(%rsp),%r8
   0.05%  │    0x00007f3e0c63f388:   sar    $0x14,%r8
          │    0x00007f3e0c63f38c:   mov    0x1a0(%rsp),%rax
   0.04%  │    0x00007f3e0c63f394:   sar    $0x10,%rax
   0.02%  │    0x00007f3e0c63f398:   mov    0x1a0(%rsp),%rbx
   0.07%  │    0x00007f3e0c63f3a0:   shl    $0x14,%rbx
   0.02%  │    0x00007f3e0c63f3a4:   and    $0xfffffff,%rbx
   0.03%  │    0x00007f3e0c63f3ab:   mov    0x1a0(%rsp),%rdx             ;   {no_reloc}
   0.00%  │    0x00007f3e0c63f3b3:   shl    $0x18,%rdx
   0.04%  │    0x00007f3e0c63f3b7:   and    $0xfffffff,%rdx
   0.02%  │    0x00007f3e0c63f3be:   mov    %rdx,0x130(%rsp)
   0.03%  │    0x00007f3e0c63f3c6:   mov    0x1a0(%rsp),%rdx
   0.01%  │    0x00007f3e0c63f3ce:   sar    $0x8,%rdx
   0.06%  │    0x00007f3e0c63f3d2:   mov    %rdx,0x198(%rsp)
   0.01%  │    0x00007f3e0c63f3da:   mov    0x1a0(%rsp),%rdx
   0.04%  │    0x00007f3e0c63f3e2:   sar    $0x4,%rdx
   0.01%  │    0x00007f3e0c63f3e6:   mov    %rdx,0xf0(%rsp)
   0.06%  │    0x00007f3e0c63f3ee:   mov    0x1a8(%rsp),%rdx
   0.02%  │    0x00007f3e0c63f3f6:   shl    $0x8,%rdx
   0.06%  │    0x00007f3e0c63f3fa:   and    $0xfffffff,%rdx
   0.01%  │    0x00007f3e0c63f401:   mov    0x138(%rsp),%rsi
   0.06%  │    0x00007f3e0c63f409:   add    %rdx,%rsi
          │    0x00007f3e0c63f40c:   sub    %r10,%rsi
   0.05%  │    0x00007f3e0c63f40f:   add    %r8,%rsi
   0.01%  │    0x00007f3e0c63f412:   sub    0x190(%rsp),%rsi
   0.06%  │    0x00007f3e0c63f41a:   add    %r11,%rsi
   0.02%  │    0x00007f3e0c63f41d:   add    %rcx,%rsi
   0.06%  │    0x00007f3e0c63f420:   add    %r9,%rsi
   0.01%  │    0x00007f3e0c63f423:   add    %r13,%rsi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@1163 (line 192)
   0.06%  │    0x00007f3e0c63f426:   vmovq  %rsi,%xmm4
   0.01%  │    0x00007f3e0c63f42b:   mov    0x1a8(%rsp),%r10
   0.04%  │    0x00007f3e0c63f433:   shl    $0xc,%r10
   0.01%  │    0x00007f3e0c63f437:   and    $0xfffffff,%r10
   0.06%  │    0x00007f3e0c63f43e:   mov    0x1a8(%rsp),%r11
   0.01%  │    0x00007f3e0c63f446:   sar    $0x14,%r11
   0.04%  │    0x00007f3e0c63f44a:   mov    0x1a8(%rsp),%rdx
   0.01%  │    0x00007f3e0c63f452:   sar    $0x10,%rdx
   0.08%  │    0x00007f3e0c63f456:   mov    0x1a8(%rsp),%r8
   0.01%  │    0x00007f3e0c63f45e:   shl    $0x14,%r8
   0.06%  │    0x00007f3e0c63f462:   and    $0xfffffff,%r8
   0.01%  │    0x00007f3e0c63f469:   mov    %r8,0x138(%rsp)
   0.06%  │    0x00007f3e0c63f471:   mov    0x1a8(%rsp),%r8
   0.01%  │    0x00007f3e0c63f479:   shl    $0x18,%r8
   0.05%  │    0x00007f3e0c63f47d:   and    $0xfffffff,%r8
   0.01%  │    0x00007f3e0c63f484:   mov    %r8,0x190(%rsp)
   0.07%  │    0x00007f3e0c63f48c:   mov    0x1a8(%rsp),%r8
   0.02%  │    0x00007f3e0c63f494:   sar    $0x8,%r8
   0.04%  │    0x00007f3e0c63f498:   mov    %r8,0xf8(%rsp)
   0.02%  │    0x00007f3e0c63f4a0:   mov    0x1a8(%rsp),%r8
   0.05%  │    0x00007f3e0c63f4a8:   sar    $0x4,%r8
   0.01%  │    0x00007f3e0c63f4ac:   mov    %r8,0x100(%rsp)              ;   {no_reloc}
   0.05%  │    0x00007f3e0c63f4b4:   mov    0x1b0(%rsp),%r8
   0.02%  │    0x00007f3e0c63f4bc:   shl    $0x8,%r8
   0.05%  │    0x00007f3e0c63f4c0:   and    $0xfffffff,%r8
   0.02%  │    0x00007f3e0c63f4c7:   mov    0x140(%rsp),%r9
   0.05%  │    0x00007f3e0c63f4cf:   add    %r8,%r9
   0.01%  │    0x00007f3e0c63f4d2:   sub    %r10,%r9
   0.04%  │    0x00007f3e0c63f4d5:   add    %r11,%r9
   0.02%  │    0x00007f3e0c63f4d8:   sub    %rax,%r9
   0.04%  │    0x00007f3e0c63f4db:   add    0x188(%rsp),%r9
   0.02%  │    0x00007f3e0c63f4e3:   add    0x178(%rsp),%r9
   0.05%  │    0x00007f3e0c63f4eb:   add    0x168(%rsp),%r9
   0.01%  │    0x00007f3e0c63f4f3:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@1068 (line 183)
   0.05%  │    0x00007f3e0c63f4f6:   vmovq  %r9,%xmm5
   0.03%  │    0x00007f3e0c63f4fb:   mov    0x1b0(%rsp),%rcx
   0.07%  │    0x00007f3e0c63f503:   shl    $0xc,%rcx
   0.03%  │    0x00007f3e0c63f507:   and    $0xfffffff,%rcx
   0.04%  │    0x00007f3e0c63f50e:   mov    0x1b0(%rsp),%rdi
   0.01%  │    0x00007f3e0c63f516:   sar    $0x14,%rdi
   0.05%  │    0x00007f3e0c63f51a:   mov    0x1b0(%rsp),%r10
   0.01%  │    0x00007f3e0c63f522:   sar    $0x10,%r10
   0.04%  │    0x00007f3e0c63f526:   mov    0x1b0(%rsp),%r11
   0.02%  │    0x00007f3e0c63f52e:   shl    $0x14,%r11
   0.05%  │    0x00007f3e0c63f532:   and    $0xfffffff,%r11
   0.01%  │    0x00007f3e0c63f539:   mov    0x1b0(%rsp),%r8
   0.04%  │    0x00007f3e0c63f541:   shl    $0x18,%r8
   0.02%  │    0x00007f3e0c63f545:   and    $0xfffffff,%r8
   0.04%  │    0x00007f3e0c63f54c:   mov    0x1b0(%rsp),%r9
   0.01%  │    0x00007f3e0c63f554:   sar    $0x8,%r9
   0.03%  │    0x00007f3e0c63f558:   mov    0x1b0(%rsp),%rsi
   0.03%  │    0x00007f3e0c63f560:   sar    $0x4,%rsi
   0.05%  │    0x00007f3e0c63f564:   mov    %rsi,0x140(%rsp)
   0.02%  │    0x00007f3e0c63f56c:   mov    0x1b8(%rsp),%rsi
   0.05%  │    0x00007f3e0c63f574:   shl    $0x8,%rsi
   0.02%  │    0x00007f3e0c63f578:   and    $0xfffffff,%rsi
   0.06%  │    0x00007f3e0c63f57f:   mov    0x148(%rsp),%rax
   0.02%  │    0x00007f3e0c63f587:   add    %rsi,%rax
   0.04%  │    0x00007f3e0c63f58a:   sub    %rcx,%rax
   0.01%  │    0x00007f3e0c63f58d:   add    %rdi,%rax
   0.05%  │    0x00007f3e0c63f590:   sub    %rdx,%rax
   0.02%  │    0x00007f3e0c63f593:   add    %rbx,%rax
   0.10%  │    0x00007f3e0c63f596:   add    0x170(%rsp),%rax
   0.01%  │    0x00007f3e0c63f59e:   add    0x180(%rsp),%rax
   0.08%  │    0x00007f3e0c63f5a6:   add    0xc8(%rsp),%rax              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@973 (line 174)
          │                                                              ;   {no_reloc}
   0.02%  │    0x00007f3e0c63f5ae:   vmovq  %rax,%xmm6
   0.08%  │    0x00007f3e0c63f5b3:   mov    0x1b8(%rsp),%rcx
   0.01%  │    0x00007f3e0c63f5bb:   shl    $0xc,%rcx
   0.04%  │    0x00007f3e0c63f5bf:   and    $0xfffffff,%rcx
   0.01%  │    0x00007f3e0c63f5c6:   mov    0x1b8(%rsp),%rbx
   0.06%  │    0x00007f3e0c63f5ce:   sar    $0x14,%rbx
   0.01%  │    0x00007f3e0c63f5d2:   mov    0x1b8(%rsp),%rdi
   0.05%  │    0x00007f3e0c63f5da:   sar    $0x10,%rdi
   0.02%  │    0x00007f3e0c63f5de:   mov    0x1b8(%rsp),%rdx
   0.07%  │    0x00007f3e0c63f5e6:   shl    $0x14,%rdx
   0.01%  │    0x00007f3e0c63f5ea:   and    $0xfffffff,%rdx
   0.04%  │    0x00007f3e0c63f5f1:   mov    0x1b8(%rsp),%rsi
   0.00%  │    0x00007f3e0c63f5f9:   shl    $0x18,%rsi
   0.08%  │    0x00007f3e0c63f5fd:   and    $0xfffffff,%rsi
   0.01%  │    0x00007f3e0c63f604:   mov    0x1b8(%rsp),%rax
   0.05%  │    0x00007f3e0c63f60c:   sar    $0x8,%rax
   0.01%  │    0x00007f3e0c63f610:   mov    0x1b8(%rsp),%rbp
   0.04%  │    0x00007f3e0c63f618:   sar    $0x4,%rbp
   0.00%  │    0x00007f3e0c63f61c:   mov    0x1c0(%rsp),%r13
   0.05%  │    0x00007f3e0c63f624:   shl    $0x8,%r13
   0.01%  │    0x00007f3e0c63f628:   and    $0xfffffff,%r13
   0.11%  │    0x00007f3e0c63f62f:   mov    0x150(%rsp),%r14
   0.00%  │    0x00007f3e0c63f637:   add    %r13,%r14
   0.06%  │    0x00007f3e0c63f63a:   sub    %rcx,%r14
   0.02%  │    0x00007f3e0c63f63d:   add    %rbx,%r14
   0.05%  │    0x00007f3e0c63f640:   sub    %r10,%r14
   0.01%  │    0x00007f3e0c63f643:   add    0x138(%rsp),%r14
   0.08%  │    0x00007f3e0c63f64b:   add    0x130(%rsp),%r14
   0.06%  │    0x00007f3e0c63f653:   add    0x198(%rsp),%r14
   0.06%  │    0x00007f3e0c63f65b:   add    0xc0(%rsp),%r14              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@878 (line 165)
   0.09%  │    0x00007f3e0c63f663:   mov    0x1c0(%rsp),%r10
   0.03%  │    0x00007f3e0c63f66b:   shl    $0xc,%r10
   0.01%  │    0x00007f3e0c63f66f:   and    $0xfffffff,%r10
   0.00%  │    0x00007f3e0c63f676:   vmovq  %xmm13,%rcx
   0.10%  │    0x00007f3e0c63f67b:   sub    %r10,%rcx
   0.05%  │    0x00007f3e0c63f67e:   mov    0x1c0(%rsp),%r10
   0.01%  │    0x00007f3e0c63f686:   sar    $0x14,%r10
   0.00%  │    0x00007f3e0c63f68a:   add    %r10,%rcx
   0.07%  │    0x00007f3e0c63f68d:   sub    %rdi,%rcx
   0.03%  │    0x00007f3e0c63f690:   add    %r11,%rcx
   0.02%  │    0x00007f3e0c63f693:   add    0x190(%rsp),%rcx
   0.05%  │    0x00007f3e0c63f69b:   add    0xf8(%rsp),%rcx
   0.10%  │    0x00007f3e0c63f6a3:   add    0xf0(%rsp),%rcx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@783 (line 156)
   0.13%  │    0x00007f3e0c63f6ab:   mov    0x1c0(%rsp),%r10             ;   {no_reloc}
          │    0x00007f3e0c63f6b3:   sar    $0x10,%r10
          │    0x00007f3e0c63f6b7:   mov    0x158(%rsp),%r11
   0.01%  │    0x00007f3e0c63f6bf:   sub    %r10,%r11
   0.12%  │    0x00007f3e0c63f6c2:   add    %rdx,%r11
   0.00%  │    0x00007f3e0c63f6c5:   add    %r8,%r11
   0.00%  │    0x00007f3e0c63f6c8:   add    %r9,%r11
   0.03%  │    0x00007f3e0c63f6cb:   add    0x100(%rsp),%r11             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@688 (line 147)
   0.11%  │    0x00007f3e0c63f6d3:   mov    %r11,%rbx
   0.00%  │    0x00007f3e0c63f6d6:   mov    0x1c0(%rsp),%r10
          │    0x00007f3e0c63f6de:   shl    $0x14,%r10
   0.01%  │    0x00007f3e0c63f6e2:   and    $0xfffffff,%r10
   0.12%  │    0x00007f3e0c63f6e9:   vmovq  %xmm12,%r11
   0.01%  │    0x00007f3e0c63f6ee:   add    %r10,%r11
   0.00%  │    0x00007f3e0c63f6f1:   add    %rsi,%r11
   0.02%  │    0x00007f3e0c63f6f4:   add    %rax,%r11
   0.13%  │    0x00007f3e0c63f6f7:   add    0x140(%rsp),%r11             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@593 (line 138)
   0.02%  │    0x00007f3e0c63f6ff:   mov    %r11,%rdi
   0.00%  │    0x00007f3e0c63f702:   mov    0x1c0(%rsp),%r10
   0.01%  │    0x00007f3e0c63f70a:   shl    $0x18,%r10
   0.08%  │    0x00007f3e0c63f70e:   and    $0xfffffff,%r10
   0.02%  │    0x00007f3e0c63f715:   mov    0xd8(%rsp),%r8
   0.01%  │    0x00007f3e0c63f71d:   add    %r10,%r8
   0.01%  │    0x00007f3e0c63f720:   mov    0x1c0(%rsp),%r10
   0.11%  │    0x00007f3e0c63f728:   sar    $0x8,%r10
   0.01%  │    0x00007f3e0c63f72c:   add    %r10,%r8
   0.00%  │    0x00007f3e0c63f72f:   add    %rbp,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@498 (line 129)
   0.01%  │    0x00007f3e0c63f732:   mov    0x1c0(%rsp),%r10
   0.06%  │    0x00007f3e0c63f73a:   sar    $0x4,%r10
   0.03%  │    0x00007f3e0c63f73e:   mov    0x1e0(%rsp),%r11
   0.00%  │    0x00007f3e0c63f746:   sar    $0x14,%r11
   0.03%  │    0x00007f3e0c63f74a:   vmovq  %xmm9,%r9
   0.07%  │    0x00007f3e0c63f74f:   add    %r11,%r9
   0.01%  │    0x00007f3e0c63f752:   sub    0xd0(%rsp),%r9
   0.01%  │    0x00007f3e0c63f75a:   add    0x160(%rsp),%r9
   0.04%  │    0x00007f3e0c63f762:   add    0xe0(%rsp),%r9
   0.11%  │    0x00007f3e0c63f76a:   add    0xe8(%rsp),%r9
   0.09%  │    0x00007f3e0c63f772:   add    %r10,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@403 (line 120)
   0.09%  │    0x00007f3e0c63f775:   vmovsd %xmm3,(%rsp)
   0.00%  │    0x00007f3e0c63f77a:   vmovsd %xmm4,0x8(%rsp)
   0.01%  │    0x00007f3e0c63f780:   vmovsd %xmm5,0x10(%rsp)
   0.02%  │    0x00007f3e0c63f786:   vmovsd %xmm6,0x18(%rsp)
   0.08%  │    0x00007f3e0c63f78c:   mov    %r14,0x20(%rsp)
   0.14%  │    0x00007f3e0c63f791:   mov    %rcx,0x28(%rsp)
   0.10%  │    0x00007f3e0c63f796:   mov    %rbx,0x30(%rsp)
   0.09%  │    0x00007f3e0c63f79b:   mov    %rdi,0x38(%rsp)
   0.02%  │    0x00007f3e0c63f7a0:   mov    %r8,0x40(%rsp)
   0.07%  │    0x00007f3e0c63f7a5:   mov    %r9,0x48(%rsp)
   0.12%  │    0x00007f3e0c63f7aa:   xor    %r10d,%r10d                  ;   {no_reloc}
   0.00%  │    0x00007f3e0c63f7ad:   mov    %r10,0x50(%rsp)
   0.03%  │    0x00007f3e0c63f7b2:   vmovsd %xmm2,0x58(%rsp)
   0.03%  │    0x00007f3e0c63f7b8:   vmovsd %xmm1,0x60(%rsp)
   0.07%  │    0x00007f3e0c63f7be:   vmovsd %xmm0,0x68(%rsp)
   0.11%  │    0x00007f3e0c63f7c4:   mov    0x1a0(%rsp),%r10
          │    0x00007f3e0c63f7cc:   mov    %r10,0x70(%rsp)
   0.14%  │    0x00007f3e0c63f7d1:   mov    0x1a8(%rsp),%r10
   0.02%  │    0x00007f3e0c63f7d9:   mov    %r10,0x78(%rsp)
   0.11%  │    0x00007f3e0c63f7de:   mov    0x1b0(%rsp),%r10
   0.00%  │    0x00007f3e0c63f7e6:   mov    %r10,0x80(%rsp)
   0.14%  │    0x00007f3e0c63f7ee:   mov    0x1b8(%rsp),%r10
   0.02%  │    0x00007f3e0c63f7f6:   mov    %r10,0x88(%rsp)
   0.13%  │    0x00007f3e0c63f7fe:   mov    0x1c0(%rsp),%r10
   0.00%  │    0x00007f3e0c63f806:   mov    %r10,0x90(%rsp)
   0.09%  │    0x00007f3e0c63f80e:   mov    0x1c8(%rsp),%r10
   0.02%  │    0x00007f3e0c63f816:   mov    %r10,0x98(%rsp)
   0.12%  │    0x00007f3e0c63f81e:   mov    0x1d0(%rsp),%r10
   0.00%  │    0x00007f3e0c63f826:   mov    %r10,0xa0(%rsp)
   0.14%  │    0x00007f3e0c63f82e:   mov    0x1d8(%rsp),%r10
   0.01%  │    0x00007f3e0c63f836:   mov    %r10,0xa8(%rsp)
   0.11%  │    0x00007f3e0c63f83e:   mov    0x1e0(%rsp),%r10
   0.00%  │    0x00007f3e0c63f846:   mov    %r10,0xb0(%rsp)
   0.12%  │    0x00007f3e0c63f84e:   xor    %r10d,%r10d
   0.01%  │    0x00007f3e0c63f851:   mov    %r10,0xb8(%rsp)
   0.10%  │    0x00007f3e0c63f859:   vmovq  %xmm7,%rsi
   0.00%  │    0x00007f3e0c63f85e:   vmovq  %xmm8,%rdx
          │    0x00007f3e0c63f863:   vmovq  %xmm15,%rcx
   0.01%  │    0x00007f3e0c63f868:   vmovq  %xmm11,%r8
   0.11%  │    0x00007f3e0c63f86d:   vmovq  %xmm10,%r9
   0.00%  │    0x00007f3e0c63f872:   vmovq  %xmm14,%rdi
   0.00%  │    0x00007f3e0c63f877:   call   0x00007f3e0c0c4380           ; ImmutableOopMap {}
          │                                                              ;*invokevirtual carryReduce0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@1296 (line 201)
          │                                                              ;   {optimized virtual_call}
   0.03%  │    0x00007f3e0c63f87c:   nopl   0xc6c(%rax,%rax,1)           ;   {other}
   0.01%  │    0x00007f3e0c63f884:   add    $0x120,%rsp
   0.08%  │    0x00007f3e0c63f88b:   pop    %rbp
   0.03%  │ ↗  0x00007f3e0c63f88c:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭│  0x00007f3e0c63f893:   ja     0x00007f3e0c63f8aa
   0.10%  │││  0x00007f3e0c63f899:   ret                                 ;*invokevirtual carryReduce0 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce@1296 (line 201)
          │││  0x00007f3e0c63f89a:   mov    %rax,%rsi
          │││  0x00007f3e0c63f89d:   add    $0x120,%rsp
          │││  0x00007f3e0c63f8a4:   pop    %rbp
          │││  0x00007f3e0c63f8a5:   jmp    0x00007f3e0c19d380           ;   {runtime_call _rethrow_Java}
          │↘╰  0x00007f3e0c63f8aa:   movabs $0x7f3e0c63f88c,%r10         ;   {internal_word}
          │    0x00007f3e0c63f8b4:   mov    %r10,0x468(%r15)
          │    0x00007f3e0c63f8bb:   jmp    0x00007f3e0c0cb000           ;   {runtime_call SafepointBlob}
          ↘    0x00007f3e0c63f8c0:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
               0x00007f3e0c63f8c5:   jmp    0x00007f3e0c63edde
....................................................................................................
  20.06%  <total for region 2>

....[Hottest Regions]...............................................................................
  32.43%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::mult, version 2, compile id 663 
  20.06%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce, version 2, compile id 625 
   7.72%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce0, version 2, compile id 614 
   3.02%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce, version 2, compile id 664 
   2.98%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier::lookup, version 2, compile id 759 
   2.82%         c2, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 758 
   2.68%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::square, version 2, compile id 702 
   2.58%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   2.34%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::square, version 2, compile id 702 
   1.96%         c2, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 758 
   1.24%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::carryReduce0, version 2, compile id 749 
   1.21%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::carryReduce, version 2, compile id 748 
   1.08%         c2, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 758 
   0.95%        runtime stub  StubRoutines::sha512_implCompressMB 
   0.95%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::carryReduce0, version 2, compile id 749 
   0.95%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::carryReduce0, version 2, compile id 749 
   0.77%         c2, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 758 
   0.72%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::carryReduce1, version 2, compile id 753 
   0.70%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::carryReduce2, version 2, compile id 709 
   0.64%         c2, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 758 
  12.19%  <...other 852 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  32.43%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::mult, version 2, compile id 663 
  20.06%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce, version 2, compile id 625 
   8.33%         c2, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 758 
   7.72%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce0, version 2, compile id 614 
   5.02%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::square, version 2, compile id 702 
   3.43%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::carryReduce0, version 2, compile id 749 
   3.28%         c2, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 800 
   3.02%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::carryReduce, version 2, compile id 664 
   2.98%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier::lookup, version 2, compile id 759 
   2.58%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.76%              kernel  [unknown] 
   1.74%        runtime stub  StubRoutines::sha512_implCompressMB 
   1.73%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::mult, version 2, compile id 777 
   1.25%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::square, version 2, compile id 769 
   1.21%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::carryReduce, version 2, compile id 748 
   0.72%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::carryReduce1, version 2, compile id 753 
   0.70%         c2, level 4  sun.security.util.math.intpoly.P384OrderField::carryReduce2, version 2, compile id 709 
   0.61%         c2, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 4, compile id 887 
   0.41%         c2, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 992 
   0.15%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier$Default::pointMultiply, version 3, compile id 1063 
   0.85%  <...other 115 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  93.62%         c2, level 4
   4.35%        runtime stub
   1.76%              kernel
   0.12%           libjvm.so
   0.07%        libc-2.31.so
   0.02%         interpreter
   0.02%                    
   0.01%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.00%      hsdis-amd64.so
   0.00%    perf-1934140.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign
# Parameters: (algorithm = secp521r1, messageLength = 64)

# Run progress: 66.67% complete, ETA 00:07:29
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 10989.452 us/op
# Warmup Iteration   2: 4325.921 us/op
# Warmup Iteration   3: 4285.473 us/op
# Warmup Iteration   4: 4278.356 us/op
# Warmup Iteration   5: 4271.653 us/op
Iteration   1: 4272.922 us/op
Iteration   2: 4271.322 us/op
Iteration   3: 4272.060 us/op
Iteration   4: 4271.874 us/op
Iteration   5: 4271.722 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign":
  4271.980 ±(99.9%) 2.282 us/op [Average]
  (min, avg, max) = (4271.322, 4271.980, 4272.922), stdev = 0.593
  CI (99.9%): [4269.698, 4274.262] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign:asm":
PrintAssembly processed: 328417 total address lines.
Perf output processed (skipped 57.152 seconds):
 Column 1: cycles (51025 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, sun.security.util.math.intpoly.IntegerPolynomialP521::mult, version 2, compile id 663 

 <region is too big to display, has 1594 lines, but threshold is 1000>
....................................................................................................
  43.41%  <total for region 1>

....[Hottest Regions]...............................................................................
  43.41%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::mult, version 2, compile id 663 
   8.99%         c1, level 1  sun.security.util.math.intpoly.IntegerPolynomialP521::carryReduce, version 2, compile id 647 
   6.93%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::carryReduce0, version 2, compile id 631 
   3.27%         c1, level 1  sun.security.util.math.intpoly.P521OrderField::carryReduce0, version 2, compile id 734 
   2.93%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::square, version 2, compile id 710 
   2.86%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::carryReduce, version 2, compile id 642 
   2.69%         c1, level 1  sun.security.util.math.intpoly.P521OrderField::carryReduce1, version 2, compile id 738 
   2.29%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier::lookup, version 2, compile id 742 
   2.04%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.54%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::square, version 2, compile id 710 
   1.50%         c1, level 1  sun.security.util.math.intpoly.P521OrderField::carryReduce, version 2, compile id 733 
   1.29%              kernel  [unknown] 
   1.19%         c1, level 1  sun.security.util.math.intpoly.P521OrderField::carryReduce0, version 2, compile id 734 
   0.89%         c1, level 1  sun.security.util.math.intpoly.P521OrderField::carryReduce2, version 2, compile id 739 
   0.72%         c1, level 1  sun.security.util.math.intpoly.P521OrderField::carryReduce1, version 2, compile id 738 
   0.69%         c2, level 4  sun.security.util.math.intpoly.P521OrderField::carryReduce3, version 2, compile id 694 
   0.68%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::square, version 2, compile id 710 
   0.64%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::square, version 2, compile id 710 
   0.64%         c1, level 1  sun.security.util.math.intpoly.P521OrderField::carryReduce1, version 2, compile id 738 
   0.52%         c2, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 752 
  14.29%  <...other 929 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  43.41%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::mult, version 2, compile id 663 
   8.99%         c1, level 1  sun.security.util.math.intpoly.IntegerPolynomialP521::carryReduce, version 2, compile id 647 
   6.93%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::carryReduce0, version 2, compile id 631 
   6.83%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::square, version 2, compile id 710 
   5.32%         c2, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 752 
   4.46%         c1, level 1  sun.security.util.math.intpoly.P521OrderField::carryReduce0, version 2, compile id 734 
   4.05%         c1, level 1  sun.security.util.math.intpoly.P521OrderField::carryReduce1, version 2, compile id 738 
   2.86%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::carryReduce, version 2, compile id 642 
   2.50%              kernel  [unknown] 
   2.30%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier::lookup, version 2, compile id 742 
   2.24%         c2, level 4  sun.security.util.math.intpoly.P521OrderField::mult, version 2, compile id 774 
   2.04%         c2, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 803 
   2.04%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.56%         c2, level 4  sun.security.util.math.intpoly.P521OrderField::square, version 2, compile id 758 
   1.50%         c1, level 1  sun.security.util.math.intpoly.P521OrderField::carryReduce, version 2, compile id 733 
   0.89%         c1, level 1  sun.security.util.math.intpoly.P521OrderField::carryReduce2, version 2, compile id 739 
   0.69%         c2, level 4  sun.security.util.math.intpoly.P521OrderField::carryReduce3, version 2, compile id 694 
   0.35%         c2, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 4, compile id 913 
   0.17%         c2, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 1026 
   0.10%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier$Default::pointMultiply, version 3, compile id 1065 
   0.76%  <...other 118 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  75.18%         c2, level 4
  19.89%         c1, level 1
   2.50%              kernel
   2.07%        runtime stub
   0.17%           libjvm.so
   0.08%        libc-2.31.so
   0.04%                    
   0.02%         interpreter
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
   0.01%    perf-1934210.map
   0.00%          ld-2.31.so
   0.00%         c1, level 3
   0.00%          libjava.so
   0.00%    Unknown, level 0
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign
# Parameters: (algorithm = secp521r1, messageLength = 512)

# Run progress: 75.00% complete, ETA 00:05:36
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 11341.784 us/op
# Warmup Iteration   2: 4368.945 us/op
# Warmup Iteration   3: 4276.396 us/op
# Warmup Iteration   4: 4277.737 us/op
# Warmup Iteration   5: 4269.259 us/op
Iteration   1: 4270.877 us/op
Iteration   2: 4268.492 us/op
Iteration   3: 4268.065 us/op
Iteration   4: 4269.229 us/op
Iteration   5: 4268.957 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign":
  4269.124 ±(99.9%) 4.144 us/op [Average]
  (min, avg, max) = (4268.065, 4269.124, 4270.877), stdev = 1.076
  CI (99.9%): [4264.980, 4273.267] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign:asm":
PrintAssembly processed: 334279 total address lines.
Perf output processed (skipped 57.214 seconds):
 Column 1: cycles (50899 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, sun.security.util.math.intpoly.IntegerPolynomialP521::mult, version 2, compile id 635 

 <region is too big to display, has 1594 lines, but threshold is 1000>
....................................................................................................
  42.95%  <total for region 1>

....[Hottest Regions]...............................................................................
  42.95%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::mult, version 2, compile id 635 
   9.50%         c1, level 1  sun.security.util.math.intpoly.IntegerPolynomialP521::carryReduce, version 2, compile id 633 
   6.91%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::carryReduce0, version 2, compile id 618 
   3.84%         c1, level 1  sun.security.util.math.intpoly.P521OrderField::carryReduce1, version 2, compile id 731 
   2.88%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::carryReduce, version 2, compile id 631 
   2.82%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::square, version 2, compile id 692 
   2.33%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier::lookup, version 2, compile id 728 
   1.82%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.75%         c1, level 1  sun.security.util.math.intpoly.P521OrderField::carryReduce0, version 2, compile id 730 
   1.60%         c1, level 1  sun.security.util.math.intpoly.P521OrderField::carryReduce0, version 2, compile id 730 
   1.46%         c1, level 1  sun.security.util.math.intpoly.P521OrderField::carryReduce, version 2, compile id 729 
   1.09%              kernel  [unknown] 
   0.98%         c1, level 1  sun.security.util.math.intpoly.P521OrderField::carryReduce0, version 2, compile id 730 
   0.88%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::square, version 2, compile id 692 
   0.77%         c1, level 1  sun.security.util.math.intpoly.P521OrderField::carryReduce2, version 2, compile id 732 
   0.73%         c2, level 4  sun.security.util.math.intpoly.P521OrderField::carryReduce3, version 2, compile id 683 
   0.72%         c2, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 733 
   0.72%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::square, version 2, compile id 692 
   0.62%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::square, version 2, compile id 692 
   0.62%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::square, version 2, compile id 692 
  15.01%  <...other 909 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  42.95%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::mult, version 2, compile id 635 
   9.50%         c1, level 1  sun.security.util.math.intpoly.IntegerPolynomialP521::carryReduce, version 2, compile id 633 
   6.91%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::carryReduce0, version 2, compile id 618 
   6.65%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::square, version 2, compile id 692 
   5.54%         c2, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 733 
   4.33%         c1, level 1  sun.security.util.math.intpoly.P521OrderField::carryReduce0, version 2, compile id 730 
   4.22%         c1, level 1  sun.security.util.math.intpoly.P521OrderField::carryReduce1, version 2, compile id 731 
   2.88%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::carryReduce, version 2, compile id 631 
   2.34%              kernel  [unknown] 
   2.33%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier::lookup, version 2, compile id 728 
   2.25%         c2, level 4  sun.security.util.math.intpoly.P521OrderField::mult, version 2, compile id 742 
   2.13%         c2, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 784 
   1.82%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.63%         c2, level 4  sun.security.util.math.intpoly.P521OrderField::square, version 2, compile id 735 
   1.46%         c1, level 1  sun.security.util.math.intpoly.P521OrderField::carryReduce, version 2, compile id 729 
   0.82%         c1, level 1  sun.security.util.math.intpoly.P521OrderField::carryReduce2, version 2, compile id 732 
   0.73%         c2, level 4  sun.security.util.math.intpoly.P521OrderField::carryReduce3, version 2, compile id 683 
   0.40%         c2, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 4, compile id 875 
   0.18%         c2, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 1013 
   0.12%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier$Default::pointMultiply, version 3, compile id 1059 
   0.81%  <...other 112 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  75.10%         c2, level 4
  20.34%         c1, level 1
   2.34%              kernel
   1.94%        runtime stub
   0.13%           libjvm.so
   0.06%        libc-2.31.so
   0.02%         interpreter
   0.02%                    
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%         c1, level 3
   0.00%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign
# Parameters: (algorithm = secp521r1, messageLength = 2048)

# Run progress: 83.33% complete, ETA 00:03:44
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 10928.104 us/op
# Warmup Iteration   2: 4316.322 us/op
# Warmup Iteration   3: 4294.333 us/op
# Warmup Iteration   4: 4290.774 us/op
# Warmup Iteration   5: 4287.641 us/op
Iteration   1: 4289.278 us/op
Iteration   2: 4288.179 us/op
Iteration   3: 4287.511 us/op
Iteration   4: 4287.797 us/op
Iteration   5: 4287.864 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign":
  4288.126 ±(99.9%) 2.643 us/op [Average]
  (min, avg, max) = (4287.511, 4288.126, 4289.278), stdev = 0.686
  CI (99.9%): [4285.483, 4290.769] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign:asm":
PrintAssembly processed: 329309 total address lines.
Perf output processed (skipped 57.320 seconds):
 Column 1: cycles (50812 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, sun.security.util.math.intpoly.IntegerPolynomialP521::mult, version 2, compile id 695 

 <region is too big to display, has 1594 lines, but threshold is 1000>
....................................................................................................
  43.03%  <total for region 1>

....[Hottest Regions]...............................................................................
  43.03%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::mult, version 2, compile id 695 
   9.54%         c1, level 1  sun.security.util.math.intpoly.IntegerPolynomialP521::carryReduce, version 2, compile id 694 
   6.90%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::carryReduce0, version 2, compile id 653 
   4.05%         c1, level 1  sun.security.util.math.intpoly.P521OrderField::carryReduce1, version 2, compile id 797 
   3.39%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::square, version 2, compile id 751 
   2.91%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::carryReduce, version 2, compile id 663 
   2.90%         c1, level 1  sun.security.util.math.intpoly.P521OrderField::carryReduce0, version 2, compile id 790 
   2.21%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier::lookup, version 2, compile id 796 
   1.77%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.62%         c1, level 1  sun.security.util.math.intpoly.P521OrderField::carryReduce0, version 2, compile id 790 
   1.54%         c1, level 1  sun.security.util.math.intpoly.P521OrderField::carryReduce, version 2, compile id 798 
   1.04%              kernel  [unknown] 
   0.76%         c1, level 1  sun.security.util.math.intpoly.P521OrderField::carryReduce2, version 2, compile id 799 
   0.74%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::square, version 2, compile id 751 
   0.69%         c2, level 4  sun.security.util.math.intpoly.P521OrderField::carryReduce3, version 2, compile id 743 
   0.60%         c2, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 802 
   0.57%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::square, version 2, compile id 751 
   0.49%         c2, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 802 
   0.46%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::square, version 2, compile id 751 
   0.40%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::square, version 2, compile id 751 
  14.40%  <...other 844 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  43.03%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::mult, version 2, compile id 695 
   9.54%         c1, level 1  sun.security.util.math.intpoly.IntegerPolynomialP521::carryReduce, version 2, compile id 694 
   6.90%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::carryReduce0, version 2, compile id 653 
   6.56%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::square, version 2, compile id 751 
   5.57%         c2, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 802 
   4.52%         c1, level 1  sun.security.util.math.intpoly.P521OrderField::carryReduce0, version 2, compile id 790 
   4.34%         c1, level 1  sun.security.util.math.intpoly.P521OrderField::carryReduce1, version 2, compile id 797 
   2.91%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::carryReduce, version 2, compile id 663 
   2.23%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier::lookup, version 2, compile id 796 
   2.22%         c2, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 853 
   2.21%         c2, level 4  sun.security.util.math.intpoly.P521OrderField::mult, version 2, compile id 811 
   1.92%              kernel  [unknown] 
   1.77%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.61%         c2, level 4  sun.security.util.math.intpoly.P521OrderField::square, version 2, compile id 803 
   1.54%         c1, level 1  sun.security.util.math.intpoly.P521OrderField::carryReduce, version 2, compile id 798 
   0.80%         c1, level 1  sun.security.util.math.intpoly.P521OrderField::carryReduce2, version 2, compile id 799 
   0.69%         c2, level 4  sun.security.util.math.intpoly.P521OrderField::carryReduce3, version 2, compile id 743 
   0.38%         c2, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 953 
   0.28%        runtime stub  StubRoutines::sha512_implCompressMB 
   0.19%         c2, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 1051 
   0.81%  <...other 102 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  75.03%         c2, level 4
  20.73%         c1, level 1
   2.06%        runtime stub
   1.92%              kernel
   0.11%           libjvm.so
   0.07%        libc-2.31.so
   0.03%                    
   0.02%         interpreter
   0.01%  libpthread-2.31.so
   0.00%      hsdis-amd64.so
   0.00%    perf-1934345.map
   0.00%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign
# Parameters: (algorithm = secp521r1, messageLength = 16384)

# Run progress: 91.67% complete, ETA 00:01:52
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 11014.157 us/op
# Warmup Iteration   2: 4334.481 us/op
# Warmup Iteration   3: 4315.959 us/op
# Warmup Iteration   4: 4311.319 us/op
# Warmup Iteration   5: 4309.244 us/op
Iteration   1: 4310.477 us/op
Iteration   2: 4308.939 us/op
Iteration   3: 4309.137 us/op
Iteration   4: 4308.905 us/op
Iteration   5: 4309.322 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign":
  4309.356 ±(99.9%) 2.498 us/op [Average]
  (min, avg, max) = (4308.905, 4309.356, 4310.477), stdev = 0.649
  CI (99.9%): [4306.858, 4311.854] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign:asm":
PrintAssembly processed: 333908 total address lines.
Perf output processed (skipped 57.358 seconds):
 Column 1: cycles (50777 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, sun.security.util.math.intpoly.IntegerPolynomialP521::mult, version 2, compile id 665 

 <region is too big to display, has 1594 lines, but threshold is 1000>
....................................................................................................
  43.12%  <total for region 1>

....[Hottest Regions]...............................................................................
  43.12%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::mult, version 2, compile id 665 
   9.31%         c1, level 1  sun.security.util.math.intpoly.IntegerPolynomialP521::carryReduce, version 2, compile id 663 
   6.69%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::carryReduce0, version 2, compile id 648 
   3.83%         c1, level 1  sun.security.util.math.intpoly.P521OrderField::carryReduce0, version 2, compile id 785 
   3.20%         c1, level 1  sun.security.util.math.intpoly.P521OrderField::carryReduce1, version 2, compile id 786 
   2.84%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::square, version 2, compile id 751 
   2.77%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::carryReduce, version 2, compile id 661 
   2.20%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier::lookup, version 2, compile id 773 
   1.85%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.56%         c1, level 1  sun.security.util.math.intpoly.P521OrderField::carryReduce, version 2, compile id 788 
   1.38%         c2, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 784 
   1.36%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::square, version 2, compile id 751 
   1.02%              kernel  [unknown] 
   0.97%         c1, level 1  sun.security.util.math.intpoly.P521OrderField::carryReduce1, version 2, compile id 786 
   0.84%         c1, level 1  sun.security.util.math.intpoly.P521OrderField::carryReduce2, version 2, compile id 787 
   0.81%        runtime stub  StubRoutines::sha512_implCompressMB 
   0.78%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::square, version 2, compile id 751 
   0.71%         c2, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 784 
   0.66%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::square, version 2, compile id 751 
   0.66%         c2, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 784 
  13.45%  <...other 809 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  43.12%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::mult, version 2, compile id 665 
   9.31%         c1, level 1  sun.security.util.math.intpoly.IntegerPolynomialP521::carryReduce, version 2, compile id 663 
   6.77%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::square, version 2, compile id 751 
   6.69%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::carryReduce0, version 2, compile id 648 
   5.40%         c2, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 784 
   4.22%         c1, level 1  sun.security.util.math.intpoly.P521OrderField::carryReduce0, version 2, compile id 785 
   4.18%         c1, level 1  sun.security.util.math.intpoly.P521OrderField::carryReduce1, version 2, compile id 786 
   2.77%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::carryReduce, version 2, compile id 661 
   2.25%         c2, level 4  sun.security.util.math.intpoly.P521OrderField::mult, version 2, compile id 797 
   2.22%         c2, level 4  sun.security.ec.ECOperations$PointMultiplier::lookup, version 2, compile id 773 
   2.15%         c2, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 840 
   1.85%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.84%              kernel  [unknown] 
   1.73%         c2, level 4  sun.security.util.math.intpoly.P521OrderField::square, version 2, compile id 789 
   1.56%         c1, level 1  sun.security.util.math.intpoly.P521OrderField::carryReduce, version 2, compile id 788 
   0.98%        runtime stub  StubRoutines::sha512_implCompressMB 
   0.87%         c1, level 1  sun.security.util.math.intpoly.P521OrderField::carryReduce2, version 2, compile id 787 
   0.73%         c2, level 4  sun.security.util.math.intpoly.P521OrderField::carryReduce3, version 2, compile id 742 
   0.39%         c2, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 915 
   0.16%         c2, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 1037 
   0.82%  <...other 105 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  74.89%         c2, level 4
  20.14%         c1, level 1
   2.85%        runtime stub
   1.84%              kernel
   0.13%           libjvm.so
   0.05%        libc-2.31.so
   0.04%                    
   0.03%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%  libpthread-2.31.so
   0.00%    perf-1934413.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:22:24

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

Benchmark                         (algorithm)  (messageLength)  Mode  Cnt     Score   Error  Units
DsaEcSignatureBenchmark.sign        secp256r1               64  avgt    5   337.698 ± 0.339  us/op
DsaEcSignatureBenchmark.sign:asm    secp256r1               64  avgt            NaN            ---
DsaEcSignatureBenchmark.sign        secp256r1              512  avgt    5   340.844 ± 0.380  us/op
DsaEcSignatureBenchmark.sign:asm    secp256r1              512  avgt            NaN            ---
DsaEcSignatureBenchmark.sign        secp256r1             2048  avgt    5   346.664 ± 2.675  us/op
DsaEcSignatureBenchmark.sign:asm    secp256r1             2048  avgt            NaN            ---
DsaEcSignatureBenchmark.sign        secp256r1            16384  avgt    5   394.474 ± 0.397  us/op
DsaEcSignatureBenchmark.sign:asm    secp256r1            16384  avgt            NaN            ---
DsaEcSignatureBenchmark.sign        secp384r1               64  avgt    5  2100.951 ± 3.228  us/op
DsaEcSignatureBenchmark.sign:asm    secp384r1               64  avgt            NaN            ---
DsaEcSignatureBenchmark.sign        secp384r1              512  avgt    5  2103.115 ± 2.436  us/op
DsaEcSignatureBenchmark.sign:asm    secp384r1              512  avgt            NaN            ---
DsaEcSignatureBenchmark.sign        secp384r1             2048  avgt    5  2101.573 ± 0.930  us/op
DsaEcSignatureBenchmark.sign:asm    secp384r1             2048  avgt            NaN            ---
DsaEcSignatureBenchmark.sign        secp384r1            16384  avgt    5  2147.881 ± 0.762  us/op
DsaEcSignatureBenchmark.sign:asm    secp384r1            16384  avgt            NaN            ---
DsaEcSignatureBenchmark.sign        secp521r1               64  avgt    5  4271.980 ± 2.282  us/op
DsaEcSignatureBenchmark.sign:asm    secp521r1               64  avgt            NaN            ---
DsaEcSignatureBenchmark.sign        secp521r1              512  avgt    5  4269.124 ± 4.144  us/op
DsaEcSignatureBenchmark.sign:asm    secp521r1              512  avgt            NaN            ---
DsaEcSignatureBenchmark.sign        secp521r1             2048  avgt    5  4288.126 ± 2.643  us/op
DsaEcSignatureBenchmark.sign:asm    secp521r1             2048  avgt            NaN            ---
DsaEcSignatureBenchmark.sign        secp521r1            16384  avgt    5  4309.356 ± 2.498  us/op
DsaEcSignatureBenchmark.sign:asm    secp521r1            16384  avgt            NaN            ---
