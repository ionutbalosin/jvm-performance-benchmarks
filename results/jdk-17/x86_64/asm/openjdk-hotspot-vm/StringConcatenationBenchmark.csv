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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.plus_operator
# Parameters: (capacity = 128, coder = LATIN1)

# Run progress: 0.00% complete, ETA 00:13:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 980.868 ns/op
# Warmup Iteration   2: 768.628 ns/op
# Warmup Iteration   3: 767.881 ns/op
# Warmup Iteration   4: 768.278 ns/op
# Warmup Iteration   5: 767.777 ns/op
Iteration   1: 767.932 ns/op
Iteration   2: 767.889 ns/op
Iteration   3: 768.203 ns/op
Iteration   4: 767.774 ns/op
Iteration   5: 767.839 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.plus_operator":
  767.927 ±(99.9%) 0.635 ns/op [Average]
  (min, avg, max) = (767.774, 767.927, 768.203), stdev = 0.165
  CI (99.9%): [767.293, 768.562] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.plus_operator:·asm":
PrintAssembly processed: 156242 total address lines.
Perf output processed (skipped 55.627 seconds):
 Column 1: cycles (50833 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 607 

   0.05%                0x00007f9c00f6d28f:   vmovd  %xmm0,%r9d
                        0x00007f9c00f6d294:   test   %r9d,%r9d
                        0x00007f9c00f6d297:   je     0x00007f9c00f6e0a8           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@891 (line 680)
                        0x00007f9c00f6d29d:   movabs $0x8000000000000000,%rdx
                        0x00007f9c00f6d2a7:   cmp    %rdx,%rax
          ╭             0x00007f9c00f6d2aa:   jne    0x00007f9c00f6d2b4
          │             0x00007f9c00f6d2ac:   xor    %edx,%edx
          │             0x00007f9c00f6d2ae:   cmp    $0xffffffffffffffff,%r10
          │╭            0x00007f9c00f6d2b2:   je     0x00007f9c00f6d2b9
   0.06%  ↘│            0x00007f9c00f6d2b4:   cqto   
           │            0x00007f9c00f6d2b6:   idiv   %r10
   1.84%   ↘            0x00007f9c00f6d2b9:   vmovq  %rax,%xmm0
                        0x00007f9c00f6d2be:   mov    %r8,%rdi
                        0x00007f9c00f6d2c1:   shl    %rdi
   0.01%                0x00007f9c00f6d2c4:   mov    %rdx,%r9
   0.01%                0x00007f9c00f6d2c7:   shl    $0x3,%r9
                        0x00007f9c00f6d2cb:   shl    %rdx
                        0x00007f9c00f6d2ce:   add    %r9,%rdx                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.02%                0x00007f9c00f6d2d1:   shl    $0x3,%r8
   0.02%                0x00007f9c00f6d2d5:   add    %r8,%rdi                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
                        0x00007f9c00f6d2d8:   test   %rdi,%rdi
                        0x00007f9c00f6d2db:   nopl   0x0(%rax,%rax,1)
   0.02%                0x00007f9c00f6d2e0:   jle    0x00007f9c00f6dfdc           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
   0.01%                0x00007f9c00f6d2e6:   cmp    %rdi,%rdx
                        0x00007f9c00f6d2e9:   jl     0x00007f9c00f6d889           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
                        0x00007f9c00f6d2ef:   xor    %r9d,%r9d                    ;*istore {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@994 (line 689)
                        0x00007f9c00f6d2f2:   mov    %rdi,%rax
   0.04%                0x00007f9c00f6d2f5:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
   0.02%                0x00007f9c00f6d2f8:   cmp    %r14,%rax
                        0x00007f9c00f6d2fb:   nopl   0x0(%rax,%rax,1)
                        0x00007f9c00f6d300:   jg     0x00007f9c00f6d894           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
   0.03%                0x00007f9c00f6d306:   vmovq  %rdx,%xmm1
   0.02%                0x00007f9c00f6d30b:   xor    %r13d,%r13d                  ;*istore {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1012 (line 690)
                        0x00007f9c00f6d30e:   cmp    $0x1,%ecx
                        0x00007f9c00f6d311:   jle    0x00007f9c00f6db44
                        0x00007f9c00f6d317:   vmovq  %xmm0,%r8
   0.04%                0x00007f9c00f6d31c:   mov    %r8d,%r8d
   0.03%                0x00007f9c00f6d31f:   add    $0x30,%r8d
                        0x00007f9c00f6d323:   vmovd  %xmm3,%ebx
                        0x00007f9c00f6d327:   mov    %r8w,0x12(%r12,%rbx,8)       ;*castore {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.02%                0x00007f9c00f6d32d:   vmovq  %xmm1,%r8
   0.02%                0x00007f9c00f6d332:   cmp    %rdi,%r8
            ╭           0x00007f9c00f6d335:   jl     0x00007f9c00f6d4d4           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
            │           0x00007f9c00f6d33b:   nopl   0x0(%rax,%rax,1)
            │           0x00007f9c00f6d340:   test   %r13d,%r13d
            │           0x00007f9c00f6d343:   jne    0x00007f9c00f6e22c           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
   0.03%    │           0x00007f9c00f6d349:   vmovq  %xmm1,%rax
   0.02%    │           0x00007f9c00f6d34e:   movabs $0x8000000000000000,%rdx
            │           0x00007f9c00f6d358:   cmp    %rdx,%rax
            │╭          0x00007f9c00f6d35b:   jne    0x00007f9c00f6d365
            ││          0x00007f9c00f6d35d:   xor    %edx,%edx
            ││          0x00007f9c00f6d35f:   cmp    $0xffffffffffffffff,%r10
            ││╭         0x00007f9c00f6d363:   je     0x00007f9c00f6d36a
            │↘│         0x00007f9c00f6d365:   cqto   
   0.03%    │ │         0x00007f9c00f6d367:   idiv   %r10
   1.99%    │ ↘         0x00007f9c00f6d36a:   vmovq  %rax,%xmm0
            │           0x00007f9c00f6d36f:   mov    %rdi,%rsi
            │           0x00007f9c00f6d372:   shl    %rsi
   0.05%    │           0x00007f9c00f6d375:   mov    %rdx,%r8
   0.01%    │           0x00007f9c00f6d378:   shl    $0x3,%r8
            │           0x00007f9c00f6d37c:   shl    %rdx
            │           0x00007f9c00f6d37f:   add    %r8,%rdx                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
            │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.03%    │           0x00007f9c00f6d382:   shl    $0x3,%rdi
   0.01%    │           0x00007f9c00f6d386:   add    %rdi,%rsi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
            │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
            │           0x00007f9c00f6d389:   test   %rsi,%rsi
            │           0x00007f9c00f6d38c:   jle    0x00007f9c00f6e239           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
            │           0x00007f9c00f6d392:   cmp    %rsi,%rdx
            │           0x00007f9c00f6d395:   jl     0x00007f9c00f6d8a5           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.03%    │           0x00007f9c00f6d39b:   xor    %r9d,%r9d                    ;*istore {reexecute=0 rethrow=0 return_oop=0}
            │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@994 (line 689)
   0.01%    │           0x00007f9c00f6d39e:   mov    %rsi,%rax
            │           0x00007f9c00f6d3a1:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
            │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
            │           0x00007f9c00f6d3a4:   cmp    %r14,%rax
            │           0x00007f9c00f6d3a7:   jg     0x00007f9c00f6d8b0           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
   0.04%    │           0x00007f9c00f6d3ad:   xor    %r13d,%r13d                  ;*istore {reexecute=0 rethrow=0 return_oop=0}
            │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1012 (line 690)
   0.00%    │           0x00007f9c00f6d3b0:   mov    %ecx,(%rsp)
            │           0x00007f9c00f6d3b3:   vmovq  %r10,%xmm4
            │           0x00007f9c00f6d3b8:   lea    (%r12,%rbx,8),%rbp
   0.03%    │           0x00007f9c00f6d3bc:   nopl   0x0(%rax)
   0.01%    │           0x00007f9c00f6d3c0:   cmp    $0x2,%ecx
            │           0x00007f9c00f6d3c3:   jle    0x00007f9c00f6dc24           ;*castore {reexecute=0 rethrow=0 return_oop=0}
            │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
            │           0x00007f9c00f6d3c9:   mov    (%rsp),%r10d
            │           0x00007f9c00f6d3cd:   sub    %r11d,%r10d
   0.04%    │           0x00007f9c00f6d3d0:   mov    (%rsp),%r8d
   0.00%    │           0x00007f9c00f6d3d4:   xor    %ecx,%ecx
            │           0x00007f9c00f6d3d6:   cmp    %r11d,%r8d
            │           0x00007f9c00f6d3d9:   cmovl  %ecx,%r10d
   0.03%    │           0x00007f9c00f6d3dd:   cmp    $0x3e8,%r10d
   0.01%    │           0x00007f9c00f6d3e4:   mov    $0x3e8,%ebx
   0.00%    │           0x00007f9c00f6d3e9:   cmova  %ebx,%r10d
   0.04%    │           0x00007f9c00f6d3ed:   add    %r11d,%r10d
   0.02%    │           0x00007f9c00f6d3f0:   vmovq  %rdx,%xmm1
   0.00%    │  ╭        0x00007f9c00f6d3f5:   jmp    0x00007f9c00f6d420
            │  │        0x00007f9c00f6d3f7:   nopw   0x0(%rax,%rax,1)
   0.03%    │  │   ↗    0x00007f9c00f6d400:   xor    %r8d,%r8d                    ;*istore {reexecute=0 rethrow=0 return_oop=0}
            │  │   │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1012 (line 690)
   0.51%    │  │   │↗   0x00007f9c00f6d403:   cmp    %r10d,%ecx
            │  │   ││   0x00007f9c00f6d406:   jge    0x00007f9c00f6d905
   0.09%    │  │   ││   0x00007f9c00f6d40c:   mov    %r11d,%edi
   0.05%    │  │   ││   0x00007f9c00f6d40f:   mov    %ecx,%r11d
   0.03%    │  │   ││   0x00007f9c00f6d412:   mov    %r8d,%r13d
   0.56%    │  │   ││   0x00007f9c00f6d415:   mov    %rbx,%rsi
   0.10%    │  │   ││   0x00007f9c00f6d418:   vmovq  %rdx,%xmm1
   0.05%    │  │   ││   0x00007f9c00f6d41d:   mov    %edi,%r9d                    ;*castore {reexecute=0 rethrow=0 return_oop=0}
            │  │   ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.03%    │  ↘   ││   0x00007f9c00f6d420:   vmovq  %xmm0,%r8
   0.48%    │      ││   0x00007f9c00f6d425:   mov    %r8d,%ebx
   0.08%    │      ││   0x00007f9c00f6d428:   mov    %r11d,%ecx
   0.03%    │      ││   0x00007f9c00f6d42b:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │      ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1029 (line 700)
   0.03%    │      ││   0x00007f9c00f6d42d:   add    $0x30,%ebx
   0.57%    │      ││   0x00007f9c00f6d430:   mov    %bx,0x10(%rbp,%r11,2)        ;*castore {reexecute=0 rethrow=0 return_oop=0}
            │      ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.11%    │      ││   0x00007f9c00f6d436:   vmovq  %xmm1,%r11
   0.06%    │      ││   0x00007f9c00f6d43b:   nopl   0x0(%rax,%rax,1)
   0.02%    │      ││   0x00007f9c00f6d440:   cmp    %rsi,%r11
            │   ╭  ││   0x00007f9c00f6d443:   jl     0x00007f9c00f6d4d9           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            │   │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
   0.54%    │   │  ││   0x00007f9c00f6d449:   test   %r13d,%r13d
            │   │  ││   0x00007f9c00f6d44c:   jne    0x00007f9c00f6d92e           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            │   │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
   0.10%    │   │  ││   0x00007f9c00f6d452:   vmovq  %xmm1,%rax
   0.00%    │   │  ││   0x00007f9c00f6d457:   vmovq  %xmm4,%r11
   0.03%    │   │  ││   0x00007f9c00f6d45c:   movabs $0x8000000000000000,%rdx
   0.56%    │   │  ││   0x00007f9c00f6d466:   cmp    %rdx,%rax
            │   │╭ ││   0x00007f9c00f6d469:   jne    0x00007f9c00f6d473
            │   ││ ││   0x00007f9c00f6d46b:   xor    %edx,%edx
            │   ││ ││   0x00007f9c00f6d46d:   cmp    $0xffffffffffffffff,%r11
            │   ││╭││   0x00007f9c00f6d471:   je     0x00007f9c00f6d478
   0.11%    │   │↘│││   0x00007f9c00f6d473:   cqto   
   0.00%    │   │ │││   0x00007f9c00f6d475:   idiv   %r11
  26.90%    │   │ ↘││   0x00007f9c00f6d478:   vmovq  %rax,%xmm0
   0.01%    │   │  ││   0x00007f9c00f6d47d:   mov    %rsi,%rbx
   0.04%    │   │  ││   0x00007f9c00f6d480:   shl    %rbx
   0.59%    │   │  ││   0x00007f9c00f6d483:   mov    %rdx,%r11
   0.11%    │   │  ││   0x00007f9c00f6d486:   shl    $0x3,%r11
   0.00%    │   │  ││   0x00007f9c00f6d48a:   shl    %rdx
   0.03%    │   │  ││   0x00007f9c00f6d48d:   add    %r11,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
            │   │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.51%    │   │  ││   0x00007f9c00f6d490:   mov    %rsi,%r11
   0.08%    │   │  ││   0x00007f9c00f6d493:   shl    $0x3,%r11
   0.01%    │   │  ││   0x00007f9c00f6d497:   add    %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
            │   │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
   0.04%    │   │  ││   0x00007f9c00f6d49a:   nopw   0x0(%rax,%rax,1)
   0.53%    │   │  ││   0x00007f9c00f6d4a0:   test   %rbx,%rbx
            │   │  ││   0x00007f9c00f6d4a3:   jle    0x00007f9c00f6d96c           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │   │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
   0.09%    │   │  ││   0x00007f9c00f6d4a9:   cmp    %rbx,%rdx
            │   │  ││   0x00007f9c00f6d4ac:   jl     0x00007f9c00f6d54c           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │   │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.00%    │   │  ││   0x00007f9c00f6d4b2:   xor    %r11d,%r11d                  ;*istore {reexecute=0 rethrow=0 return_oop=0}
            │   │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@994 (line 689)
   0.07%    │   │  ││   0x00007f9c00f6d4b5:   mov    %rdx,%rax
   0.58%    │   │  ││   0x00007f9c00f6d4b8:   add    %rbx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
            │   │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
   0.08%    │   │  ││   0x00007f9c00f6d4bb:   nopl   0x0(%rax,%rax,1)
   0.01%    │   │  ││   0x00007f9c00f6d4c0:   cmp    %r14,%rax
            │   │  ╰│   0x00007f9c00f6d4c3:   jle    0x00007f9c00f6d400           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │   │   │                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
   0.03%    │   │   │   0x00007f9c00f6d4c9:   mov    $0x1,%r8d
            │   │   ╰   0x00007f9c00f6d4cf:   jmp    0x00007f9c00f6d403
            ↘   │       0x00007f9c00f6d4d4:   mov    $0x2,%ecx                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
                │                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1067 (line 704)
                ↘       0x00007f9c00f6d4d9:   vmovq  %xmm1,%r10
   0.01%                0x00007f9c00f6d4de:   shl    %r10
   0.04%                0x00007f9c00f6d4e1:   sub    %r14,%r10                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1048 (line 702)
                        0x00007f9c00f6d4e4:   vmovq  %xmm1,%r11
                        0x00007f9c00f6d4e9:   test   %r11,%r11
                        0x00007f9c00f6d4ec:   je     0x00007f9c00f6e0d0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1056 (line 703)
   0.00%                0x00007f9c00f6d4f2:   vmovq  %xmm2,%r11
   0.04%                0x00007f9c00f6d4f7:   mov    %ecx,0x14(%r11)              ;*putfield nDigits {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1442 (line 762)
   0.00%                0x00007f9c00f6d4fb:   mov    %r12d,0xc(%r11)              ;*putfield decExponent {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1431 (line 760)
                        0x00007f9c00f6d4ff:   mov    %r12d,0x10(%r11)             ;*putfield firstDigitIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1436 (line 761)
   0.01%                0x00007f9c00f6d503:   cmp    %r14,%rax
                        0x00007f9c00f6d506:   jle    0x00007f9c00f6e108           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1447 (line 766)
   0.04%                0x00007f9c00f6d50c:   test   %r9d,%r9d
                        0x00007f9c00f6d50f:   je     0x00007f9c00f6d697           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1452 (line 767)
                        0x00007f9c00f6d515:   xor    %r11d,%r11d
                        0x00007f9c00f6d518:   cmp    %r11,%r10
   0.01%                0x00007f9c00f6d51b:   mov    $0xffffffff,%ebp
   0.04%             ╭  0x00007f9c00f6d520:   jl     0x00007f9c00f6d52a
                     │  0x00007f9c00f6d522:   setne  %bpl
                     │  0x00007f9c00f6d526:   movzbl %bpl,%ebp                    ;*lcmp {reexecute=0 rethrow=0 return_oop=0}
                     │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1458 (line 768)
                     ↘  0x00007f9c00f6d52a:   test   %r10,%r10
                        0x00007f9c00f6d52d:   je     0x00007f9c00f6e25a
                        0x00007f9c00f6d533:   test   %r10,%r10
                        0x00007f9c00f6d536:   jle    0x00007f9c00f6d6e2           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1459 (line 768)
                        0x00007f9c00f6d53c:   mov    $0xffffff45,%esi
                        0x00007f9c00f6d541:   vmovsd %xmm2,(%rsp)
....................................................................................................
  38.71%  <total for region 1>

....[Hottest Regions]...............................................................................
  38.71%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 607 
   8.80%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 607 
   7.08%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   6.56%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 607 
   5.79%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::plus_operator, version 2, compile id 684 
   4.91%         c2, level 4  java.lang.StringConcatHelper::stringOf, version 2, compile id 668 
   3.61%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::plus_operator, version 2, compile id 684 
   3.38%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::plus_operator, version 2, compile id 684 
   3.35%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::plus_operator, version 2, compile id 684 
   2.36%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::plus_operator, version 2, compile id 684 
   2.09%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::plus_operator, version 2, compile id 684 
   1.79%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::plus_operator, version 2, compile id 684 
   1.78%         c2, level 4  java.lang.StringConcatHelper::stringOf, version 2, compile id 668 
   1.69%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::getChars, version 2, compile id 671 
   1.55%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::plus_operator, version 2, compile id 684 
   1.20%        runtime stub  StubRoutines::jshort_disjoint_arraycopy 
   0.90%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::plus_operator, version 2, compile id 684 
   0.60%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 607 
   0.53%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.StringConcatenationBenchmark_plus_operator_jmhTest::plus_operator_avgt_jmhStub, version 5, compile id 716 
   0.47%              kernel  [unknown] 
   2.87%  <...other 451 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  54.66%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 607 
  25.58%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::plus_operator, version 2, compile id 684 
   7.08%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   6.74%         c2, level 4  java.lang.StringConcatHelper::stringOf, version 2, compile id 668 
   1.90%              kernel  [unknown] 
   1.69%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::getChars, version 2, compile id 671 
   1.20%        runtime stub  StubRoutines::jshort_disjoint_arraycopy 
   0.53%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.StringConcatenationBenchmark_plus_operator_jmhTest::plus_operator_avgt_jmhStub, version 5, compile id 716 
   0.06%                      <unknown> 
   0.03%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.03%        libc-2.31.so  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%           libjvm.so  OtherRegionsTable::occupied 
   0.02%        libc-2.31.so  __strxfrm_l 
   0.01%           libjvm.so  AbsSeq::dsd 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%           libjvm.so  HeapRegionClaimer::claim_region 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  xmlStream::write_text 
   0.36%  <...other 132 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  89.20%         c2, level 4
   8.27%        runtime stub
   1.90%              kernel
   0.39%           libjvm.so
   0.10%        libc-2.31.so
   0.06%                    
   0.02%          ld-2.31.so
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.01%              [vdso]
   0.01%      hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.plus_operator
# Parameters: (capacity = 128, coder = UTF16)

# Run progress: 12.50% complete, ETA 00:12:38
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 882.376 ns/op
# Warmup Iteration   2: 690.889 ns/op
# Warmup Iteration   3: 690.213 ns/op
# Warmup Iteration   4: 690.539 ns/op
# Warmup Iteration   5: 690.271 ns/op
Iteration   1: 689.753 ns/op
Iteration   2: 689.693 ns/op
Iteration   3: 689.917 ns/op
Iteration   4: 689.808 ns/op
Iteration   5: 689.815 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.plus_operator":
  689.797 ±(99.9%) 0.319 ns/op [Average]
  (min, avg, max) = (689.693, 689.797, 689.917), stdev = 0.083
  CI (99.9%): [689.478, 690.116] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.plus_operator:·asm":
PrintAssembly processed: 158858 total address lines.
Perf output processed (skipped 55.712 seconds):
 Column 1: cycles (50716 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 613 

   0.05%               0x00007efc88f6c70c:   vmovd  %xmm1,%r11d
                       0x00007efc88f6c711:   test   %r11d,%r11d
                       0x00007efc88f6c714:   je     0x00007efc88f6d56c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@891 (line 680)
                       0x00007efc88f6c71a:   movabs $0x8000000000000000,%rdx
                       0x00007efc88f6c724:   cmp    %rdx,%rax
          ╭            0x00007efc88f6c727:   jne    0x00007efc88f6c731
          │            0x00007efc88f6c729:   xor    %edx,%edx
          │            0x00007efc88f6c72b:   cmp    $0xffffffffffffffff,%r10
          │╭           0x00007efc88f6c72f:   je     0x00007efc88f6c736
   0.06%  ↘│           0x00007efc88f6c731:   cqto   
           │           0x00007efc88f6c733:   idiv   %r10
   2.05%   ↘           0x00007efc88f6c736:   vmovq  %rax,%xmm0
                       0x00007efc88f6c73b:   mov    %rbx,%rdi
                       0x00007efc88f6c73e:   shl    %rdi
   0.04%               0x00007efc88f6c741:   mov    %rdx,%r11
   0.02%               0x00007efc88f6c744:   shl    $0x3,%r11
                       0x00007efc88f6c748:   shl    %rdx
                       0x00007efc88f6c74b:   add    %r11,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.05%               0x00007efc88f6c74e:   shl    $0x3,%rbx
   0.01%               0x00007efc88f6c752:   add    %rbx,%rdi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
   0.00%               0x00007efc88f6c755:   test   %rdi,%rdi
                       0x00007efc88f6c758:   jle    0x00007efc88f6d4a0           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
                       0x00007efc88f6c75e:   xchg   %ax,%ax
   0.06%               0x00007efc88f6c760:   cmp    %rdi,%rdx
                       0x00007efc88f6c763:   jl     0x00007efc88f6cd05           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.02%               0x00007efc88f6c769:   xor    %r9d,%r9d                    ;*istore {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@994 (line 689)
                       0x00007efc88f6c76c:   mov    %rdi,%rax
                       0x00007efc88f6c76f:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
   0.04%               0x00007efc88f6c772:   cmp    0x28(%rsp),%rax
                       0x00007efc88f6c777:   jg     0x00007efc88f6cd10           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
   0.01%               0x00007efc88f6c77d:   vmovq  %rdx,%xmm1
   0.00%               0x00007efc88f6c782:   xor    %r14d,%r14d                  ;*istore {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1012 (line 690)
                       0x00007efc88f6c785:   cmp    $0x1,%ecx
                       0x00007efc88f6c788:   jle    0x00007efc88f6cfe8
   0.04%               0x00007efc88f6c78e:   vmovq  %xmm0,%r11
   0.01%               0x00007efc88f6c793:   mov    %r11d,%ebx
                       0x00007efc88f6c796:   add    $0x30,%ebx
                       0x00007efc88f6c799:   mov    %bx,0x12(%r12,%r13,8)        ;*castore {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.05%               0x00007efc88f6c79f:   vmovq  %xmm1,%r11
   0.01%               0x00007efc88f6c7a4:   cmp    %rdi,%r11
                       0x00007efc88f6c7a7:   jl     0x00007efc88f6cd25           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
   0.01%               0x00007efc88f6c7ad:   test   %r14d,%r14d
                       0x00007efc88f6c7b0:   jne    0x00007efc88f6d6ec           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
                       0x00007efc88f6c7b6:   vmovq  %xmm1,%rax
   0.04%               0x00007efc88f6c7bb:   movabs $0x8000000000000000,%rdx
   0.01%               0x00007efc88f6c7c5:   cmp    %rdx,%rax
            ╭          0x00007efc88f6c7c8:   jne    0x00007efc88f6c7d2
            │          0x00007efc88f6c7ca:   xor    %edx,%edx
            │          0x00007efc88f6c7cc:   cmp    $0xffffffffffffffff,%r10
            │╭         0x00007efc88f6c7d0:   je     0x00007efc88f6c7d7
   0.00%    ↘│         0x00007efc88f6c7d2:   cqto   
             │         0x00007efc88f6c7d4:   idiv   %r10
   2.42%     ↘         0x00007efc88f6c7d7:   vmovq  %rax,%xmm0
                       0x00007efc88f6c7dc:   mov    %rdi,%rsi
                       0x00007efc88f6c7df:   shl    %rsi
   0.04%               0x00007efc88f6c7e2:   mov    %rdx,%r11
   0.02%               0x00007efc88f6c7e5:   shl    $0x3,%r11
   0.00%               0x00007efc88f6c7e9:   shl    %rdx
                       0x00007efc88f6c7ec:   add    %r11,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.05%               0x00007efc88f6c7ef:   shl    $0x3,%rdi
   0.02%               0x00007efc88f6c7f3:   add    %rdi,%rsi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
                       0x00007efc88f6c7f6:   test   %rsi,%rsi
                       0x00007efc88f6c7f9:   jle    0x00007efc88f6d6f9           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
                       0x00007efc88f6c7ff:   nop
   0.04%               0x00007efc88f6c800:   cmp    %rsi,%rdx
                       0x00007efc88f6c803:   jl     0x00007efc88f6cd2f           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.02%               0x00007efc88f6c809:   xor    %r9d,%r9d                    ;*istore {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@994 (line 689)
                       0x00007efc88f6c80c:   mov    %rsi,%rax
                       0x00007efc88f6c80f:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
   0.05%               0x00007efc88f6c812:   cmp    0x28(%rsp),%rax
                       0x00007efc88f6c817:   jg     0x00007efc88f6cd3a           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
   0.02%               0x00007efc88f6c81d:   xor    %r14d,%r14d                  ;*istore {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1012 (line 690)
                       0x00007efc88f6c820:   mov    %ecx,(%rsp)
   0.00%               0x00007efc88f6c823:   vmovq  %r10,%xmm3
   0.05%               0x00007efc88f6c828:   vmovd  %r13d,%xmm4
   0.02%               0x00007efc88f6c82d:   lea    (%r12,%r13,8),%rbp
                       0x00007efc88f6c831:   cmp    $0x2,%ecx
                       0x00007efc88f6c834:   jle    0x00007efc88f6d0c0           ;*castore {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
                       0x00007efc88f6c83a:   mov    (%rsp),%r10d
   0.05%               0x00007efc88f6c83e:   sub    %r8d,%r10d
   0.01%               0x00007efc88f6c841:   mov    (%rsp),%r11d
                       0x00007efc88f6c845:   xor    %ecx,%ecx
                       0x00007efc88f6c847:   cmp    %r8d,%r11d
   0.06%               0x00007efc88f6c84a:   cmovl  %ecx,%r10d
   0.02%               0x00007efc88f6c84e:   cmp    $0x3e8,%r10d
                       0x00007efc88f6c855:   mov    $0x3e8,%r11d
                       0x00007efc88f6c85b:   cmova  %r11d,%r10d
   0.06%               0x00007efc88f6c85f:   add    %r8d,%r10d
                       0x00007efc88f6c862:   vmovq  %rdx,%xmm1
              ╭        0x00007efc88f6c867:   jmp    0x00007efc88f6c88d
              │        0x00007efc88f6c869:   nopl   0x0(%rax)
   0.00%      │   ↗    0x00007efc88f6c870:   xor    %r11d,%r11d                  ;*istore {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1012 (line 690)
   0.01%      │   │↗   0x00007efc88f6c873:   cmp    %r10d,%ecx
              │   ││   0x00007efc88f6c876:   jge    0x00007efc88f6cd97
   0.67%      │   ││   0x00007efc88f6c87c:   mov    %r8d,%r9d
   0.14%      │   ││   0x00007efc88f6c87f:   mov    %ecx,%r8d
   0.00%      │   ││   0x00007efc88f6c882:   mov    %r11d,%r14d
   0.01%      │   ││   0x00007efc88f6c885:   mov    %rbx,%rsi
   0.69%      │   ││   0x00007efc88f6c888:   vmovq  %rdx,%xmm1                   ;*castore {reexecute=0 rethrow=0 return_oop=0}
              │   ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.15%      ↘   ││   0x00007efc88f6c88d:   vmovq  %xmm0,%r11
   0.01%          ││   0x00007efc88f6c892:   mov    %r11d,%r11d
   0.02%          ││   0x00007efc88f6c895:   mov    %r8d,%ecx
   0.64%          ││   0x00007efc88f6c898:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1029 (line 700)
   0.17%          ││   0x00007efc88f6c89a:   add    $0x30,%r11d
   0.01%          ││   0x00007efc88f6c89e:   mov    %r11w,0x10(%rbp,%r8,2)       ;*castore {reexecute=0 rethrow=0 return_oop=0}
                  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.01%          ││   0x00007efc88f6c8a4:   vmovq  %xmm1,%r11
   0.65%          ││   0x00007efc88f6c8a9:   cmp    %rsi,%r11
               ╭  ││   0x00007efc88f6c8ac:   jl     0x00007efc88f6c936           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
               │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
   0.11%       │  ││   0x00007efc88f6c8b2:   test   %r14d,%r14d
               │  ││   0x00007efc88f6c8b5:   jne    0x00007efc88f6cdc5           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
               │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
   0.01%       │  ││   0x00007efc88f6c8bb:   vmovq  %xmm1,%rax
   0.02%       │  ││   0x00007efc88f6c8c0:   vmovq  %xmm3,%r11
   0.67%       │  ││   0x00007efc88f6c8c5:   movabs $0x8000000000000000,%rdx
   0.11%       │  ││   0x00007efc88f6c8cf:   cmp    %rdx,%rax
               │╭ ││   0x00007efc88f6c8d2:   jne    0x00007efc88f6c8dc
               ││ ││   0x00007efc88f6c8d4:   xor    %edx,%edx
               ││ ││   0x00007efc88f6c8d6:   cmp    $0xffffffffffffffff,%r11
               ││╭││   0x00007efc88f6c8da:   je     0x00007efc88f6c8e1
   0.01%       │↘│││   0x00007efc88f6c8dc:   cqto   
   0.01%       │ │││   0x00007efc88f6c8de:   idiv   %r11
  30.95%       │ ↘││   0x00007efc88f6c8e1:   vmovq  %rax,%xmm0
   0.00%       │  ││   0x00007efc88f6c8e6:   mov    %rsi,%rbx
   0.01%       │  ││   0x00007efc88f6c8e9:   shl    %rbx
   0.64%       │  ││   0x00007efc88f6c8ec:   mov    %rdx,%r11
   0.07%       │  ││   0x00007efc88f6c8ef:   shl    $0x3,%r11
               │  ││   0x00007efc88f6c8f3:   shl    %rdx
   0.01%       │  ││   0x00007efc88f6c8f6:   add    %r11,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
               │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.66%       │  ││   0x00007efc88f6c8f9:   mov    %rsi,%r11
   0.07%       │  ││   0x00007efc88f6c8fc:   shl    $0x3,%r11
               │  ││   0x00007efc88f6c900:   add    %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
               │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
   0.01%       │  ││   0x00007efc88f6c903:   test   %rbx,%rbx
               │  ││   0x00007efc88f6c906:   jle    0x00007efc88f6ce08           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
               │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
   0.66%       │  ││   0x00007efc88f6c90c:   cmp    %rbx,%rdx
               │  ││   0x00007efc88f6c90f:   jl     0x00007efc88f6c9b8           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
               │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.07%       │  ││   0x00007efc88f6c915:   xor    %r8d,%r8d                    ;*istore {reexecute=0 rethrow=0 return_oop=0}
               │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@994 (line 689)
   0.05%       │  ││   0x00007efc88f6c918:   mov    %rdx,%rax
   0.01%       │  ││   0x00007efc88f6c91b:   add    %rbx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
               │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
   0.65%       │  ││   0x00007efc88f6c91e:   xchg   %ax,%ax
   0.07%       │  ││   0x00007efc88f6c920:   cmp    0x28(%rsp),%rax
               │  ╰│   0x00007efc88f6c925:   jle    0x00007efc88f6c870           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
               │   │                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
   0.06%       │   │   0x00007efc88f6c92b:   mov    $0x1,%r11d
               │   ╰   0x00007efc88f6c931:   jmp    0x00007efc88f6c873
   0.05%       ↘       0x00007efc88f6c936:   vmovd  %xmm4,%r13d                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1067 (line 704)
                       0x00007efc88f6c93b:   vmovq  %xmm1,%r10
   0.00%               0x00007efc88f6c940:   shl    %r10
   0.00%               0x00007efc88f6c943:   sub    0x28(%rsp),%r10              ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1048 (line 702)
   0.07%               0x00007efc88f6c948:   vmovq  %xmm1,%r11
                       0x00007efc88f6c94d:   test   %r11,%r11
                       0x00007efc88f6c950:   je     0x00007efc88f6d590           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1056 (line 703)
   0.01%               0x00007efc88f6c956:   vmovq  %xmm2,%r11
                       0x00007efc88f6c95b:   mov    %ecx,0x14(%r11)              ;*putfield nDigits {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1442 (line 762)
   0.05%               0x00007efc88f6c95f:   mov    %r12d,0xc(%r11)              ;*putfield decExponent {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1431 (line 760)
                       0x00007efc88f6c963:   mov    %r12d,0x10(%r11)             ;*putfield firstDigitIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1436 (line 761)
   0.00%               0x00007efc88f6c967:   cmp    0x28(%rsp),%rax
                       0x00007efc88f6c96c:   jle    0x00007efc88f6d5c8           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1447 (line 766)
                       0x00007efc88f6c972:   test   %r9d,%r9d
                       0x00007efc88f6c975:   je     0x00007efc88f6cb19           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1452 (line 767)
   0.06%               0x00007efc88f6c97b:   xor    %r11d,%r11d
                       0x00007efc88f6c97e:   cmp    %r11,%r10
   0.00%               0x00007efc88f6c981:   mov    $0xffffffff,%ebp
   0.00%            ╭  0x00007efc88f6c986:   jl     0x00007efc88f6c990
                    │  0x00007efc88f6c988:   setne  %bpl
                    │  0x00007efc88f6c98c:   movzbl %bpl,%ebp                    ;*lcmp {reexecute=0 rethrow=0 return_oop=0}
                    │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1458 (line 768)
   0.04%            ↘  0x00007efc88f6c990:   test   %r10,%r10
                       0x00007efc88f6c993:   je     0x00007efc88f6d71a
                       0x00007efc88f6c999:   test   %r10,%r10
   0.00%               0x00007efc88f6c99c:   nopl   0x0(%rax)
                       0x00007efc88f6c9a0:   jle    0x00007efc88f6cb62           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1459 (line 768)
                       0x00007efc88f6c9a6:   mov    $0xffffff45,%esi
                       0x00007efc88f6c9ab:   vmovsd %xmm2,(%rsp)
                       0x00007efc88f6c9b0:   data16 xchg %ax,%ax
                       0x00007efc88f6c9b3:   call   0x00007efc88a01600           ; ImmutableOopMap {[0]=Oop }
                                                                                 ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                                                 ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1494 (line 774)
                                                                                 ;   {runtime_call UncommonTrapBlob}
                       0x00007efc88f6c9b8:   mov    $0x1,%r8d
....................................................................................................
  43.88%  <total for region 1>

....[Hottest Regions]...............................................................................
  43.88%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 613 
   8.93%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 613 
   7.30%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 613 
   4.88%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::plus_operator, version 2, compile id 668 
   4.84%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::plus_operator, version 2, compile id 668 
   4.67%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::plus_operator, version 2, compile id 668 
   3.58%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::plus_operator, version 2, compile id 668 
   2.98%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::plus_operator, version 2, compile id 668 
   2.40%         c2, level 4  java.lang.Long::toString, version 2, compile id 666 
   2.25%         c2, level 4  java.lang.Long::toString, version 2, compile id 666 
   2.03%         c2, level 4  java.lang.Long::toString, version 2, compile id 666 
   1.72%        runtime stub  StubRoutines::jshort_disjoint_arraycopy 
   1.70%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::getChars, version 2, compile id 661 
   1.44%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.95%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::plus_operator, version 2, compile id 668 
   0.83%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::plus_operator, version 2, compile id 668 
   0.75%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 613 
   0.52%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.StringConcatenationBenchmark_plus_operator_jmhTest::plus_operator_avgt_jmhStub, version 5, compile id 698 
   0.50%              kernel  [unknown] 
   0.40%         c2, level 4  java.lang.Long::toString, version 2, compile id 666 
   3.45%  <...other 386 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  60.86%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 613 
  23.61%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::plus_operator, version 2, compile id 668 
   8.02%         c2, level 4  java.lang.Long::toString, version 2, compile id 666 
   1.72%        runtime stub  StubRoutines::jshort_disjoint_arraycopy 
   1.70%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::getChars, version 2, compile id 661 
   1.49%              kernel  [unknown] 
   1.44%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.52%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.StringConcatenationBenchmark_plus_operator_jmhTest::plus_operator_avgt_jmhStub, version 5, compile id 698 
   0.11%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%           libjvm.so  AbsSeq::dsd 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%           libjvm.so  SpinPause 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%           libjvm.so  OtherRegionsTable::occupied 
   0.01%           libjvm.so  G1RebuildFreeListTask::work 
   0.01%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.01%           libjvm.so  HeapRegionClaimer::claim_region 
   0.39%  <...other 127 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  94.70%         c2, level 4
   3.15%        runtime stub
   1.49%              kernel
   0.40%           libjvm.so
   0.11%                    
   0.07%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.string_buffer
# Parameters: (capacity = 128, coder = LATIN1)

# Run progress: 25.00% complete, ETA 00:10:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1005.045 ns/op
# Warmup Iteration   2: 897.534 ns/op
# Warmup Iteration   3: 893.719 ns/op
# Warmup Iteration   4: 893.666 ns/op
# Warmup Iteration   5: 893.488 ns/op
Iteration   1: 893.497 ns/op
Iteration   2: 893.807 ns/op
Iteration   3: 893.791 ns/op
Iteration   4: 893.926 ns/op
Iteration   5: 893.532 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.string_buffer":
  893.711 ±(99.9%) 0.721 ns/op [Average]
  (min, avg, max) = (893.497, 893.711, 893.926), stdev = 0.187
  CI (99.9%): [892.990, 894.431] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.string_buffer:·asm":
PrintAssembly processed: 136877 total address lines.
Perf output processed (skipped 55.455 seconds):
 Column 1: cycles (50571 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 512 

   0.03%                        0x00007fcd44f677ed:   test   %r10,%r10
                                0x00007fcd44f677f0:   je     0x00007fcd44f682f4           ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@778 (line 662)
                                0x00007fcd44f677f6:   movabs $0x8000000000000000,%rdx
                                0x00007fcd44f67800:   cmp    %rdx,%rax
          ╭                     0x00007fcd44f67803:   jne    0x00007fcd44f6780d
          │                     0x00007fcd44f67805:   xor    %edx,%edx
          │                     0x00007fcd44f67807:   cmp    $0xffffffffffffffff,%r10
          │╭                    0x00007fcd44f6780b:   je     0x00007fcd44f67812
          ↘│                    0x00007fcd44f6780d:   cqto   
   0.04%   │                    0x00007fcd44f6780f:   idiv   %r10
   1.36%   ↘                    0x00007fcd44f67812:   mov    %rax,%rcx
                                0x00007fcd44f67815:   mov    %rdi,%r8
                                0x00007fcd44f67818:   shl    %r8
   0.03%                        0x00007fcd44f6781b:   mov    %rdx,%r9
                                0x00007fcd44f6781e:   shl    $0x3,%r9
                                0x00007fcd44f67822:   shl    %rdx
                                0x00007fcd44f67825:   mov    %rdx,%rax
   0.03%                        0x00007fcd44f67828:   add    %r9,%rax                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@790 (line 663)
                                0x00007fcd44f6782b:   mov    %ecx,%ebx                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@779 (line 662)
                                0x00007fcd44f6782d:   shl    $0x3,%rdi
                                0x00007fcd44f67831:   add    %rdi,%r8                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@798 (line 664)
   0.04%                        0x00007fcd44f67834:   mov    %r10,%r14
                                0x00007fcd44f67837:   shl    %r14
                                0x00007fcd44f6783a:   mov    %r10,%r9
                                0x00007fcd44f6783d:   shl    $0x3,%r9
   0.04%                        0x00007fcd44f67841:   add    %r9,%r14                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@768 (line 655)
                                0x00007fcd44f67844:   cmp    %r8,%rax
                                0x00007fcd44f67847:   jl     0x00007fcd44f68824           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@806 (line 665)
                                0x00007fcd44f6784d:   mov    %rax,%r9
                                0x00007fcd44f67850:   add    %r8,%r9                      ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@820 (line 666)
   0.04%                        0x00007fcd44f67853:   cmp    %r14,%r9
                                0x00007fcd44f67856:   jg     0x00007fcd44f68890           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@824 (line 666)
                                0x00007fcd44f6785c:   nopl   0x0(%rax)
                                0x00007fcd44f67860:   test   %ebx,%ebx
                                0x00007fcd44f67862:   je     0x00007fcd44f688fc           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@859 (line 668)
                                0x00007fcd44f67868:   add    $0x30,%ebx                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@886 (line 672)
   0.04%                        0x00007fcd44f6786b:   mov    %ebx,%r13d
                                0x00007fcd44f6786e:   movzwl %r13w,%r13d                  ;*i2c {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@887 (line 672)
                                0x00007fcd44f67872:   vmovd  %xmm3,%r9d
                                0x00007fcd44f67877:   nopw   0x0(%rax,%rax,1)
   0.03%                        0x00007fcd44f67880:   mov    0xc(%r12,%r9,8),%ecx         ; implicit exception: dispatches to 0x00007fcd44f68aec
                                0x00007fcd44f67885:   cmp    $0x1,%ecx
                                0x00007fcd44f67888:   jbe    0x00007fcd44f68310
                                0x00007fcd44f6788e:   mov    %bx,0x10(%r12,%r9,8)         ;*castore {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@888 (line 672)
                                0x00007fcd44f67894:   vmovd  %xmm0,%r9d
   0.04%                        0x00007fcd44f67899:   test   %r9d,%r9d
                                0x00007fcd44f6789c:   nopl   0x0(%rax)
                                0x00007fcd44f678a0:   je     0x00007fcd44f68950           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@891 (line 680)
                                0x00007fcd44f678a6:   movabs $0x8000000000000000,%rdx
   0.05%                        0x00007fcd44f678b0:   cmp    %rdx,%rax
            ╭                   0x00007fcd44f678b3:   jne    0x00007fcd44f678bd
            │                   0x00007fcd44f678b5:   xor    %edx,%edx
            │                   0x00007fcd44f678b7:   cmp    $0xffffffffffffffff,%r10
            │╭                  0x00007fcd44f678bb:   je     0x00007fcd44f678c2
            ↘│                  0x00007fcd44f678bd:   cqto   
             │                  0x00007fcd44f678bf:   idiv   %r10
   1.45%     ↘                  0x00007fcd44f678c2:   vmovq  %rax,%xmm0
                                0x00007fcd44f678c7:   mov    %r8,%rdi
                                0x00007fcd44f678ca:   shl    %rdi
   0.05%                        0x00007fcd44f678cd:   mov    %rdx,%r9
   0.01%                        0x00007fcd44f678d0:   shl    $0x3,%r9
                                0x00007fcd44f678d4:   shl    %rdx
                                0x00007fcd44f678d7:   add    %r9,%rdx                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.02%                        0x00007fcd44f678da:   shl    $0x3,%r8
   0.00%                        0x00007fcd44f678de:   add    %r8,%rdi                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
   0.00%                        0x00007fcd44f678e1:   test   %rdi,%rdi
                                0x00007fcd44f678e4:   jle    0x00007fcd44f687dc           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
                                0x00007fcd44f678ea:   cmp    %rdi,%rdx
                                0x00007fcd44f678ed:   jl     0x00007fcd44f68089           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.03%                        0x00007fcd44f678f3:   xor    %r9d,%r9d                    ;*istore {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@994 (line 689)
   0.01%                        0x00007fcd44f678f6:   mov    %rdi,%rax
                                0x00007fcd44f678f9:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
                                0x00007fcd44f678fc:   nopl   0x0(%rax)
   0.03%                        0x00007fcd44f67900:   cmp    %r14,%rax
                                0x00007fcd44f67903:   jg     0x00007fcd44f68094           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
                                0x00007fcd44f67909:   vmovq  %rdx,%xmm1
                                0x00007fcd44f6790e:   xor    %r13d,%r13d                  ;*istore {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1012 (line 690)
                                0x00007fcd44f67911:   cmp    $0x1,%ecx
                                0x00007fcd44f67914:   jle    0x00007fcd44f68370
   0.04%                        0x00007fcd44f6791a:   vmovq  %xmm0,%r8
   0.01%                        0x00007fcd44f6791f:   mov    %r8d,%r8d
                                0x00007fcd44f67922:   add    $0x30,%r8d
                                0x00007fcd44f67926:   vmovd  %xmm3,%ebx
   0.03%                        0x00007fcd44f6792a:   mov    %r8w,0x12(%r12,%rbx,8)       ;*castore {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.01%                        0x00007fcd44f67930:   vmovq  %xmm1,%r8
                                0x00007fcd44f67935:   cmp    %rdi,%r8
              ╭                 0x00007fcd44f67938:   jl     0x00007fcd44f67cd4           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
              │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
              │                 0x00007fcd44f6793e:   xchg   %ax,%ax
   0.03%      │                 0x00007fcd44f67940:   test   %r13d,%r13d
              │                 0x00007fcd44f67943:   jne    0x00007fcd44f68a2c           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
              │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
   0.00%      │                 0x00007fcd44f67949:   vmovq  %xmm1,%rax
              │                 0x00007fcd44f6794e:   movabs $0x8000000000000000,%rdx
   0.00%      │                 0x00007fcd44f67958:   cmp    %rdx,%rax
              │╭                0x00007fcd44f6795b:   jne    0x00007fcd44f67965
              ││                0x00007fcd44f6795d:   xor    %edx,%edx
              ││                0x00007fcd44f6795f:   cmp    $0xffffffffffffffff,%r10
              ││╭               0x00007fcd44f67963:   je     0x00007fcd44f6796a
   0.03%      │↘│               0x00007fcd44f67965:   cqto   
   0.01%      │ │               0x00007fcd44f67967:   idiv   %r10
   1.77%      │ ↘               0x00007fcd44f6796a:   vmovq  %rax,%xmm0
              │                 0x00007fcd44f6796f:   mov    %rdi,%rsi
              │                 0x00007fcd44f67972:   shl    %rsi
   0.03%      │                 0x00007fcd44f67975:   mov    %rdx,%r8
   0.01%      │                 0x00007fcd44f67978:   shl    $0x3,%r8
              │                 0x00007fcd44f6797c:   shl    %rdx
              │                 0x00007fcd44f6797f:   add    %r8,%rdx                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
              │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.03%      │                 0x00007fcd44f67982:   shl    $0x3,%rdi
   0.01%      │                 0x00007fcd44f67986:   add    %rdi,%rsi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
              │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
              │                 0x00007fcd44f67989:   test   %rsi,%rsi
              │                 0x00007fcd44f6798c:   jle    0x00007fcd44f68a39           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
              │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
              │                 0x00007fcd44f67992:   cmp    %rsi,%rdx
              │                 0x00007fcd44f67995:   jl     0x00007fcd44f680a5           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.04%      │                 0x00007fcd44f6799b:   xor    %r9d,%r9d                    ;*istore {reexecute=0 rethrow=0 return_oop=0}
              │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@994 (line 689)
   0.01%      │                 0x00007fcd44f6799e:   mov    %rsi,%rax
              │                 0x00007fcd44f679a1:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
              │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
              │                 0x00007fcd44f679a4:   cmp    %r14,%rax
              │                 0x00007fcd44f679a7:   jg     0x00007fcd44f680b0           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
              │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
   0.05%      │                 0x00007fcd44f679ad:   xor    %r13d,%r13d                  ;*istore {reexecute=0 rethrow=0 return_oop=0}
              │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1012 (line 690)
   0.01%      │                 0x00007fcd44f679b0:   mov    %ecx,(%rsp)
              │                 0x00007fcd44f679b3:   vmovq  %r10,%xmm4
              │                 0x00007fcd44f679b8:   lea    (%r12,%rbx,8),%rbp
   0.04%      │                 0x00007fcd44f679bc:   nopl   0x0(%rax)
   0.01%      │                 0x00007fcd44f679c0:   cmp    $0x2,%ecx
              │                 0x00007fcd44f679c3:   jle    0x00007fcd44f685e8           ;*castore {reexecute=0 rethrow=0 return_oop=0}
              │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
              │                 0x00007fcd44f679c9:   mov    (%rsp),%r10d
              │                 0x00007fcd44f679cd:   sub    %r11d,%r10d
   0.04%      │                 0x00007fcd44f679d0:   mov    (%rsp),%r8d
   0.00%      │                 0x00007fcd44f679d4:   xor    %ecx,%ecx
              │                 0x00007fcd44f679d6:   cmp    %r11d,%r8d
              │                 0x00007fcd44f679d9:   cmovl  %ecx,%r10d
   0.02%      │                 0x00007fcd44f679dd:   cmp    $0x3e8,%r10d
   0.01%      │                 0x00007fcd44f679e4:   mov    $0x3e8,%ebx
              │                 0x00007fcd44f679e9:   cmova  %ebx,%r10d
   0.05%      │                 0x00007fcd44f679ed:   add    %r11d,%r10d
   0.01%      │                 0x00007fcd44f679f0:   vmovq  %rdx,%xmm1
              │  ╭              0x00007fcd44f679f5:   jmp    0x00007fcd44f67c30
              │  │              0x00007fcd44f679fa:   nopw   0x0(%rax,%rax,1)
              │  │              0x00007fcd44f67a00:   cmp    $0x20,%r10d
              │  │              0x00007fcd44f67a04:   jge    0x00007fcd44f687fc           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@393 (line 596)
              │  │              0x00007fcd44f67a0a:   mov    %r9d,%eax
   0.03%      │  │              0x00007fcd44f67a0d:   movabs $0x7ffd4d1d8,%r9             ;   {oop([I{0x00000007ffd4d1d8})}
              │  │              0x00007fcd44f67a17:   mov    0x10(%r9),%r10d
              │  │              0x00007fcd44f67a1b:   mov    0x14(%r9),%r9d               ;*iaload {reexecute=0 rethrow=0 return_oop=0}
              │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@403 (line 598)
              │  │              0x00007fcd44f67a1f:   mov    %edx,%ecx
   0.05%      │  │              0x00007fcd44f67a21:   shl    %cl,%r10d                    ;*ishl {reexecute=0 rethrow=0 return_oop=0}
              │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@418 (line 599)
   0.00%      │  │              0x00007fcd44f67a24:   imul   %r9d,%eax
   0.06%      │  │              0x00007fcd44f67a28:   mov    %r8d,%ecx
              │  │              0x00007fcd44f67a2b:   shl    %cl,%eax                     ;*ishl {reexecute=0 rethrow=0 return_oop=0}
              │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@407 (line 598)
   0.05%      │  │              0x00007fcd44f67a2d:   test   %r10d,%r10d
              │  │              0x00007fcd44f67a30:   je     0x00007fcd44f68304           ;*idiv {reexecute=0 rethrow=0 return_oop=0}
              │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@446 (line 608)
              │  │              0x00007fcd44f67a36:   cmp    $0x80000000,%eax
              │  │╭             0x00007fcd44f67a3b:   jne    0x00007fcd44f67a45
              │  ││             0x00007fcd44f67a3d:   xor    %edx,%edx
              │  ││             0x00007fcd44f67a3f:   cmp    $0xffffffff,%r10d
              │  ││╭            0x00007fcd44f67a43:   je     0x00007fcd44f67a49
              │  │↘│            0x00007fcd44f67a45:   cltd   
              │  │ │            0x00007fcd44f67a46:   idiv   %r10d
   0.61%      │  │ ↘            0x00007fcd44f67a49:   mov    %r9d,%r8d
   0.00%      │  │              0x00007fcd44f67a4c:   shl    %r8d
   0.00%      │  │              0x00007fcd44f67a4f:   mov    %edx,%ebx
              │  │              0x00007fcd44f67a51:   shl    $0x3,%ebx
   0.05%      │  │              0x00007fcd44f67a54:   shl    %edx
   0.00%      │  │              0x00007fcd44f67a56:   add    %ebx,%edx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
              │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@456 (line 609)
   0.04%      │  │              0x00007fcd44f67a58:   shl    $0x3,%r9d
              │  │              0x00007fcd44f67a5c:   add    %r9d,%r8d                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
              │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@463 (line 610)
              │  │              0x00007fcd44f67a5f:   mov    %r10d,%ebx
   0.01%      │  │              0x00007fcd44f67a62:   shl    %ebx
   0.03%      │  │              0x00007fcd44f67a64:   mov    %r10d,%r9d
              │  │              0x00007fcd44f67a67:   shl    $0x3,%r9d
              │  │              0x00007fcd44f67a6b:   add    %r9d,%ebx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
              │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@436 (line 601)
   0.01%      │  │              0x00007fcd44f67a6e:   mov    %ebx,0x1c(%rsp)
   0.03%      │  │              0x00007fcd44f67a72:   cmp    %r8d,%edx
              │  │              0x00007fcd44f67a75:   jl     0x00007fcd44f68864           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@470 (line 611)
              │  │              0x00007fcd44f67a7b:   mov    %edx,%ecx
              │  │              0x00007fcd44f67a7d:   add    %r8d,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
              │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@484 (line 612)
   0.00%      │  │              0x00007fcd44f67a80:   cmp    %ebx,%ecx
              │  │              0x00007fcd44f67a82:   jg     0x00007fcd44f688d0           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
              │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@487 (line 612)
   0.03%      │  │              0x00007fcd44f67a88:   mov    %eax,%r9d
              │  │              0x00007fcd44f67a8b:   test   %eax,%eax
              │  │              0x00007fcd44f67a8d:   je     0x00007fcd44f68928           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
              │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@522 (line 614)
              │  │              0x00007fcd44f67a93:   add    $0x30,%r9d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
              │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@549 (line 618)
   0.00%      │  │              0x00007fcd44f67a97:   mov    %r9d,%ecx
   0.03%      │  │              0x00007fcd44f67a9a:   movzwl %cx,%ecx                     ;*i2c {reexecute=0 rethrow=0 return_oop=0}
              │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@550 (line 618)
              │  │              0x00007fcd44f67a9d:   vmovd  %xmm3,%ebx
              │  │              0x00007fcd44f67aa1:   mov    0xc(%r12,%rbx,8),%edi        ; implicit exception: dispatches to 0x00007fcd44f68afc
   0.01%      │  │              0x00007fcd44f67aa6:   cmp    $0x1,%edi
              │  │              0x00007fcd44f67aa9:   jbe    0x00007fcd44f68344
   0.04%      │  │              0x00007fcd44f67aaf:   mov    %r9w,0x10(%r12,%rbx,8)       ;*castore {reexecute=0 rethrow=0 return_oop=0}
              │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@551 (line 618)
              │  │              0x00007fcd44f67ab5:   vmovd  %xmm0,%r9d
              │  │              0x00007fcd44f67aba:   nopw   0x0(%rax,%rax,1)
   0.01%      │  │              0x00007fcd44f67ac0:   test   %r9d,%r9d
              │  │              0x00007fcd44f67ac3:   je     0x00007fcd44f68978           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
              │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@554 (line 626)
   0.04%      │  │              0x00007fcd44f67ac9:   mov    %edx,%eax
              │  │              0x00007fcd44f67acb:   cmp    $0x80000000,%eax
              │  │  ╭           0x00007fcd44f67ad0:   jne    0x00007fcd44f67ada
              │  │  │           0x00007fcd44f67ad2:   xor    %edx,%edx
              │  │  │           0x00007fcd44f67ad4:   cmp    $0xffffffff,%r10d
              │  │  │╭          0x00007fcd44f67ad8:   je     0x00007fcd44f67ade
              │  │  ↘│          0x00007fcd44f67ada:   cltd   
   0.01%      │  │   │          0x00007fcd44f67adb:   idiv   %r10d
   0.95%      │  │   ↘          0x00007fcd44f67ade:   vmovd  %eax,%xmm0
   0.02%      │  │              0x00007fcd44f67ae2:   mov    %r8d,%ebx
   0.00%      │  │              0x00007fcd44f67ae5:   shl    %ebx
              │  │              0x00007fcd44f67ae7:   mov    %edx,%r9d
   0.02%      │  │              0x00007fcd44f67aea:   shl    $0x3,%r9d
   0.03%      │  │              0x00007fcd44f67aee:   shl    %edx
   0.02%      │  │              0x00007fcd44f67af0:   add    %r9d,%edx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
              │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@601 (line 631)
   0.03%      │  │              0x00007fcd44f67af3:   shl    $0x3,%r8d
              │  │              0x00007fcd44f67af7:   add    %r8d,%ebx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
              │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@608 (line 632)
              │  │              0x00007fcd44f67afa:   test   %ebx,%ebx
   0.01%      │  │              0x00007fcd44f67afc:   nopl   0x0(%rax)
   0.03%      │  │              0x00007fcd44f67b00:   jle    0x00007fcd44f687eb           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
              │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@639 (line 634)
   0.00%      │  │              0x00007fcd44f67b06:   cmp    %ebx,%edx
              │  │              0x00007fcd44f67b08:   jl     0x00007fcd44f6899c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@646 (line 635)
   0.01%      │  │              0x00007fcd44f67b0e:   mov    %ebx,%ecx
   0.00%      │  │              0x00007fcd44f67b10:   add    %edx,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
              │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@660 (line 636)
   0.04%      │  │              0x00007fcd44f67b12:   cmp    0x1c(%rsp),%ecx
              │  │              0x00007fcd44f67b16:   jg     0x00007fcd44f67ef5           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
              │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@663 (line 636)
   0.00%      │  │              0x00007fcd44f67b1c:   xor    %r9d,%r9d                    ;*istore {reexecute=0 rethrow=0 return_oop=0}
              │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@671 (line 636)
   0.00%      │  │              0x00007fcd44f67b1f:   nop
   0.01%      │  │              0x00007fcd44f67b20:   cmp    $0x1,%edi
              │  │              0x00007fcd44f67b23:   jle    0x00007fcd44f683d8
   0.05%      │  │              0x00007fcd44f67b29:   mov    %eax,%r8d
   0.00%      │  │              0x00007fcd44f67b2c:   add    $0x30,%r8d
              │  │              0x00007fcd44f67b30:   vmovd  %xmm3,%eax
   0.01%      │  │              0x00007fcd44f67b34:   mov    %r8w,0x12(%r12,%rax,8)       ;*castore {reexecute=0 rethrow=0 return_oop=0}
              │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
   0.02%      │  │              0x00007fcd44f67b3a:   nopw   0x0(%rax,%rax,1)
   0.00%      │  │              0x00007fcd44f67b40:   cmp    0x1c(%rsp),%ecx
              │  │              0x00007fcd44f67b44:   jg     0x00007fcd44f67f44           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
              │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@584 (line 629)
   0.00%      │  │              0x00007fcd44f67b4a:   mov    %edx,%eax
   0.01%      │  │              0x00007fcd44f67b4c:   cmp    $0x80000000,%eax
              │  │    ╭         0x00007fcd44f67b51:   jne    0x00007fcd44f67b5b
              │  │    │         0x00007fcd44f67b53:   xor    %edx,%edx
              │  │    │         0x00007fcd44f67b55:   cmp    $0xffffffff,%r10d
              │  │    │╭        0x00007fcd44f67b59:   je     0x00007fcd44f67b5f
   0.02%      │  │    ↘│        0x00007fcd44f67b5b:   cltd   
   0.00%      │  │     │        0x00007fcd44f67b5c:   idiv   %r10d
   1.01%      │  │     ↘        0x00007fcd44f67b5f:   vmovd  %eax,%xmm0
   0.03%      │  │              0x00007fcd44f67b63:   mov    %ebx,%r14d
   0.01%      │  │              0x00007fcd44f67b66:   shl    %r14d
              │  │              0x00007fcd44f67b69:   mov    %edx,%r9d
   0.02%      │  │              0x00007fcd44f67b6c:   shl    $0x3,%r9d
   0.01%      │  │              0x00007fcd44f67b70:   shl    %edx
   0.01%      │  │              0x00007fcd44f67b72:   add    %r9d,%edx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
              │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@601 (line 631)
   0.01%      │  │              0x00007fcd44f67b75:   shl    $0x3,%ebx
   0.01%      │  │              0x00007fcd44f67b78:   add    %ebx,%r14d                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
              │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@608 (line 632)
   0.02%      │  │              0x00007fcd44f67b7b:   nopl   0x0(%rax,%rax,1)
   0.01%      │  │              0x00007fcd44f67b80:   test   %r14d,%r14d
              │  │              0x00007fcd44f67b83:   jle    0x00007fcd44f68a46           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
              │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@639 (line 634)
   0.01%      │  │              0x00007fcd44f67b89:   cmp    %r14d,%edx
              │  │              0x00007fcd44f67b8c:   jl     0x00007fcd44f68a50           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@646 (line 635)
   0.00%      │  │              0x00007fcd44f67b92:   mov    %r14d,%r9d
   0.03%      │  │              0x00007fcd44f67b95:   add    %edx,%r9d
   0.01%      │  │              0x00007fcd44f67b98:   nopl   0x0(%rax,%rax,1)
   0.01%      │  │              0x00007fcd44f67ba0:   cmp    0x1c(%rsp),%r9d
              │  │              0x00007fcd44f67ba5:   jg     0x00007fcd44f67f4e           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
              │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@663 (line 636)
   0.00%      │  │              0x00007fcd44f67bab:   xor    %eax,%eax                    ;*istore {reexecute=0 rethrow=0 return_oop=0}
              │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@671 (line 636)
   0.02%      │  │              0x00007fcd44f67bad:   vmovd  %r10d,%xmm4
   0.01%      │  │              0x00007fcd44f67bb2:   mov    %edi,%r10d
              │  │              0x00007fcd44f67bb5:   mov    %edi,(%rsp)
   0.01%      │  │              0x00007fcd44f67bb8:   dec    %r10d
   0.03%      │  │              0x00007fcd44f67bbb:   vmovd  %xmm3,%r8d
   0.01%      │  │              0x00007fcd44f67bc0:   lea    (%r12,%r8,8),%rsi
   0.01%      │  │              0x00007fcd44f67bc4:   mov    $0x80000000,%r8d
   0.01%      │  │              0x00007fcd44f67bca:   cmp    %r10d,%edi
   0.02%      │  │              0x00007fcd44f67bcd:   cmovl  %r8d,%r10d
   0.01%      │  │              0x00007fcd44f67bd1:   cmp    $0x2,%r10d
              │  │              0x00007fcd44f67bd5:   jle    0x00007fcd44f686e7           ;*castore {reexecute=0 rethrow=0 return_oop=0}
              │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
   0.01%      │  │              0x00007fcd44f67bdb:   mov    %r10d,%ebx
   0.01%      │  │              0x00007fcd44f67bde:   sub    %r11d,%ebx
   0.02%      │  │              0x00007fcd44f67be1:   xor    %r8d,%r8d
   0.01%      │  │              0x00007fcd44f67be4:   cmp    %r11d,%r10d
   0.01%      │  │              0x00007fcd44f67be7:   cmovl  %r8d,%ebx
   0.01%      │  │              0x00007fcd44f67beb:   cmp    $0x7d0,%ebx
   0.02%      │  │              0x00007fcd44f67bf1:   mov    $0x7d0,%r9d
   0.01%      │  │              0x00007fcd44f67bf7:   cmova  %r9d,%ebx
   0.01%      │  │              0x00007fcd44f67bfb:   add    %r11d,%ebx
   0.01%      │  │              0x00007fcd44f67bfe:   mov    %edx,%r13d
   0.01%      │  │              0x00007fcd44f67c01:   jmp    0x00007fcd44f67d76
              │  │              0x00007fcd44f67c06:   data16 nopw 0x0(%rax,%rax,1)
   0.06%      │  │         ↗    0x00007fcd44f67c10:   xor    %r8d,%r8d                    ;*istore {reexecute=0 rethrow=0 return_oop=0}
              │  │         │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1012 (line 690)
   0.00%      │  │         │↗   0x00007fcd44f67c13:   cmp    %r10d,%ecx
              │  │         ││   0x00007fcd44f67c16:   jge    0x00007fcd44f68105
   0.01%      │  │         ││   0x00007fcd44f67c1c:   mov    %r11d,%edi
   0.47%      │  │         ││   0x00007fcd44f67c1f:   mov    %ecx,%r11d
   0.09%      │  │         ││   0x00007fcd44f67c22:   mov    %r8d,%r13d
   0.00%      │  │         ││   0x00007fcd44f67c25:   mov    %rbx,%rsi
   0.01%      │  │         ││   0x00007fcd44f67c28:   vmovq  %rdx,%xmm1
   0.53%      │  │         ││   0x00007fcd44f67c2d:   mov    %edi,%r9d                    ;*castore {reexecute=0 rethrow=0 return_oop=0}
              │  │         ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.10%      │  ↘         ││   0x00007fcd44f67c30:   vmovq  %xmm0,%r8
   0.03%      │            ││   0x00007fcd44f67c35:   mov    %r8d,%ebx
   0.02%      │            ││   0x00007fcd44f67c38:   mov    %r11d,%ecx
   0.51%      │            ││   0x00007fcd44f67c3b:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              │            ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1029 (line 700)
   0.09%      │            ││   0x00007fcd44f67c3d:   add    $0x30,%ebx
   0.03%      │            ││   0x00007fcd44f67c40:   mov    %bx,0x10(%rbp,%r11,2)        ;*castore {reexecute=0 rethrow=0 return_oop=0}
              │            ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.01%      │            ││   0x00007fcd44f67c46:   vmovq  %xmm1,%r11
   0.50%      │            ││   0x00007fcd44f67c4b:   cmp    %rsi,%r11
              │         ╭  ││   0x00007fcd44f67c4e:   jl     0x00007fcd44f67cd9           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
              │         │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
   0.05%      │         │  ││   0x00007fcd44f67c54:   test   %r13d,%r13d
              │         │  ││   0x00007fcd44f67c57:   jne    0x00007fcd44f6812e           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
              │         │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
   0.04%      │         │  ││   0x00007fcd44f67c5d:   vmovq  %xmm1,%rax
   0.02%      │         │  ││   0x00007fcd44f67c62:   vmovq  %xmm4,%r11
   0.51%      │         │  ││   0x00007fcd44f67c67:   movabs $0x8000000000000000,%rdx
   0.06%      │         │  ││   0x00007fcd44f67c71:   cmp    %rdx,%rax
              │         │╭ ││   0x00007fcd44f67c74:   jne    0x00007fcd44f67c7e
              │         ││ ││   0x00007fcd44f67c76:   xor    %edx,%edx
              │         ││ ││   0x00007fcd44f67c78:   cmp    $0xffffffffffffffff,%r11
              │         ││╭││   0x00007fcd44f67c7c:   je     0x00007fcd44f67c83
   0.02%      │         │↘│││   0x00007fcd44f67c7e:   cqto   
   0.03%      │         │ │││   0x00007fcd44f67c80:   idiv   %r11
  24.05%      │         │ ↘││   0x00007fcd44f67c83:   vmovq  %rax,%xmm0
   0.00%      │         │  ││   0x00007fcd44f67c88:   mov    %rsi,%rbx
   0.01%      │         │  ││   0x00007fcd44f67c8b:   shl    %rbx
   0.49%      │         │  ││   0x00007fcd44f67c8e:   mov    %rdx,%r11
   0.04%      │         │  ││   0x00007fcd44f67c91:   shl    $0x3,%r11
              │         │  ││   0x00007fcd44f67c95:   shl    %rdx
   0.01%      │         │  ││   0x00007fcd44f67c98:   add    %r11,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
              │         │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.53%      │         │  ││   0x00007fcd44f67c9b:   mov    %rsi,%r11
   0.06%      │         │  ││   0x00007fcd44f67c9e:   shl    $0x3,%r11
   0.00%      │         │  ││   0x00007fcd44f67ca2:   add    %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
              │         │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
   0.01%      │         │  ││   0x00007fcd44f67ca5:   test   %rbx,%rbx
              │         │  ││   0x00007fcd44f67ca8:   jle    0x00007fcd44f6816c           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
              │         │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
   0.59%      │         │  ││   0x00007fcd44f67cae:   cmp    %rbx,%rdx
              │         │  ││   0x00007fcd44f67cb1:   jl     0x00007fcd44f67d4c           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              │         │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.06%      │         │  ││   0x00007fcd44f67cb7:   xor    %r11d,%r11d                  ;*istore {reexecute=0 rethrow=0 return_oop=0}
              │         │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@994 (line 689)
   0.04%      │         │  ││   0x00007fcd44f67cba:   mov    %rdx,%rax
   0.01%      │         │  ││   0x00007fcd44f67cbd:   add    %rbx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
              │         │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
   0.46%      │         │  ││   0x00007fcd44f67cc0:   cmp    %r14,%rax
              │         │  ╰│   0x00007fcd44f67cc3:   jle    0x00007fcd44f67c10           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
              │         │   │                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
              │         │   │   0x00007fcd44f67cc9:   mov    $0x1,%r8d
   0.06%      │         │   ╰   0x00007fcd44f67ccf:   jmp    0x00007fcd44f67c13
              ↘         │       0x00007fcd44f67cd4:   mov    $0x2,%ecx                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
                        │                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1067 (line 704)
   0.05%                ↘       0x00007fcd44f67cd9:   vmovq  %xmm1,%r10
                                0x00007fcd44f67cde:   shl    %r10
                                0x00007fcd44f67ce1:   sub    %r14,%r10                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1048 (line 702)
                                0x00007fcd44f67ce4:   vmovq  %xmm1,%r11
   0.05%                        0x00007fcd44f67ce9:   test   %r11,%r11
                                0x00007fcd44f67cec:   je     0x00007fcd44f689d8           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1056 (line 703)
                                0x00007fcd44f67cf2:   vmovq  %xmm2,%r11
                                0x00007fcd44f67cf7:   mov    %ecx,0x14(%r11)              ;*putfield nDigits {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1442 (line 762)
   0.00%                        0x00007fcd44f67cfb:   mov    %r12d,0xc(%r11)              ;*putfield decExponent {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1431 (line 760)
   0.04%                        0x00007fcd44f67cff:   mov    %r12d,0x10(%r11)             ;*putfield firstDigitIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1436 (line 761)
                                0x00007fcd44f67d03:   cmp    %r14,%rax
                                0x00007fcd44f67d06:   jle    0x00007fcd44f68a10           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1447 (line 766)
                                0x00007fcd44f67d0c:   test   %r9d,%r9d
                                0x00007fcd44f67d0f:   je     0x00007fcd44f67e97           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1452 (line 767)
   0.00%                        0x00007fcd44f67d15:   xor    %r11d,%r11d
   0.03%                        0x00007fcd44f67d18:   cmp    %r11,%r10
                                0x00007fcd44f67d1b:   mov    $0xffffffff,%ebp
                             ╭  0x00007fcd44f67d20:   jl     0x00007fcd44f67d2a
                             │  0x00007fcd44f67d22:   setne  %bpl
                             │  0x00007fcd44f67d26:   movzbl %bpl,%ebp                    ;*lcmp {reexecute=0 rethrow=0 return_oop=0}
                             │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1458 (line 768)
   0.00%                     ↘  0x00007fcd44f67d2a:   test   %r10,%r10
                                0x00007fcd44f67d2d:   je     0x00007fcd44f68a5a
   0.03%                        0x00007fcd44f67d33:   test   %r10,%r10
                                0x00007fcd44f67d36:   jle    0x00007fcd44f67ee2           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1459 (line 768)
                                0x00007fcd44f67d3c:   mov    $0xffffff45,%esi
                                0x00007fcd44f67d41:   vmovsd %xmm2,(%rsp)
                                0x00007fcd44f67d46:   nop
                                0x00007fcd44f67d47:   call   0x00007fcd44a01600           ; ImmutableOopMap {[0]=Oop }
                                                                                          ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                                                          ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1494 (line 774)
                                                                                          ;   {runtime_call UncommonTrapBlob}
                                0x00007fcd44f67d4c:   mov    $0x1,%r11d
....................................................................................................
  39.31%  <total for region 1>

....[Hottest Regions]...............................................................................
  39.31%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 512 
   5.86%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   5.83%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_buffer, version 2, compile id 534 
   5.70%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 512 
   3.80%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::appendTo, version 2, compile id 526 
   3.57%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::appendTo, version 2, compile id 526 
   2.96%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_buffer, version 2, compile id 534 
   2.73%         c2, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 532 
   2.61%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_buffer, version 2, compile id 534 
   2.16%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_buffer, version 2, compile id 534 
   2.06%         c2, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 532 
   1.92%         c2, level 4  java.lang.AbstractStringBuilder::append, version 4, compile id 567 
   1.85%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 512 
   1.84%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_buffer, version 2, compile id 534 
   1.72%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.68%         c2, level 4  java.lang.AbstractStringBuilder::append, version 4, compile id 567 
   1.61%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::getChars, version 2, compile id 527 
   1.59%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_buffer, version 2, compile id 534 
   1.06%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_buffer, version 2, compile id 534 
   1.05%        runtime stub  StubRoutines::jshort_disjoint_arraycopy 
   9.07%  <...other 383 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  47.48%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 512 
  20.57%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_buffer, version 2, compile id 534 
   8.23%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::appendTo, version 2, compile id 526 
   6.20%         c2, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 532 
   5.86%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   5.31%         c2, level 4  java.lang.AbstractStringBuilder::append, version 4, compile id 567 
   1.72%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.61%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::getChars, version 2, compile id 527 
   1.18%              kernel  [unknown] 
   1.05%        runtime stub  StubRoutines::jshort_disjoint_arraycopy 
   0.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.StringConcatenationBenchmark_string_buffer_jmhTest::string_buffer_avgt_jmhStub, version 5, compile id 570 
   0.06%                      <unknown> 
   0.05%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.05%        libc-2.31.so  [unknown] 
   0.04%           libjvm.so  OtherRegionsTable::occupied 
   0.02%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  HeapRegionManager::par_iterate 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.02%           libjvm.so  frame::sender_for_compiled_frame 
   0.44%  <...other 134 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  89.46%         c2, level 4
   8.63%        runtime stub
   1.18%              kernel
   0.49%           libjvm.so
   0.10%        libc-2.31.so
   0.06%                    
   0.02%          ld-2.31.so
   0.02%  libpthread-2.31.so
   0.02%              [vdso]
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.00%     perf-111432.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.string_buffer
# Parameters: (capacity = 128, coder = UTF16)

# Run progress: 37.50% complete, ETA 00:09:01
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1018.898 ns/op
# Warmup Iteration   2: 898.263 ns/op
# Warmup Iteration   3: 895.607 ns/op
# Warmup Iteration   4: 895.546 ns/op
# Warmup Iteration   5: 895.693 ns/op
Iteration   1: 895.667 ns/op
Iteration   2: 895.407 ns/op
Iteration   3: 896.349 ns/op
Iteration   4: 895.818 ns/op
Iteration   5: 895.573 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.string_buffer":
  895.763 ±(99.9%) 1.386 ns/op [Average]
  (min, avg, max) = (895.407, 895.763, 896.349), stdev = 0.360
  CI (99.9%): [894.376, 897.149] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.string_buffer:·asm":
PrintAssembly processed: 143152 total address lines.
Perf output processed (skipped 55.719 seconds):
 Column 1: cycles (50974 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 527 

                                 0x00007f34d4f68bdd:   vmovss %xmm0,0x10(%rsp)
                                 0x00007f34d4f68be3:   mov    %ecx,0x14(%rsp)
                                 0x00007f34d4f68be7:   mov    %r10d,0x18(%rsp)
                                 0x00007f34d4f68bec:   mov    %r11d,0x1c(%rsp)
                                 0x00007f34d4f68bf1:   mov    %r9d,0x20(%rsp)
                                 0x00007f34d4f68bf6:   nop
                                 0x00007f34d4f68bf7:   call   0x00007f34d4a01600           ; ImmutableOopMap {rbp=Oop }
                                                                                           ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                                           ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@111 (line 448)
                                                                                           ;   {runtime_call UncommonTrapBlob}
   0.03%                         0x00007f34d4f68bfc:   mov    %r11d,%eax
                                 0x00007f34d4f68bff:   mov    %ecx,%r13d
   0.01%                         0x00007f34d4f68c02:   vcvtsi2sd %edx,%xmm1,%xmm1
   0.08%                         0x00007f34d4f68c06:   movabs $0x3ff0000000000000,%r11
                                 0x00007f34d4f68c10:   vmulsd -0x118(%rip),%xmm1,%xmm1        # 0x00007f34d4f68b00
                                                                                           ;   {section_word}
   0.01%                         0x00007f34d4f68c18:   movabs $0xfffffffffffff,%r9
   0.05%                         0x00007f34d4f68c22:   mov    %rbx,%rcx
   0.05%                         0x00007f34d4f68c25:   and    %r9,%rcx
                                 0x00007f34d4f68c28:   or     %rcx,%r11
   0.01%                         0x00007f34d4f68c2b:   vmovq  %r11,%xmm3
   0.05%                         0x00007f34d4f68c30:   vsubsd -0x130(%rip),%xmm3,%xmm3        # 0x00007f34d4f68b08
                                                                                           ;   {section_word}
   0.02%                         0x00007f34d4f68c38:   vmulsd -0x130(%rip),%xmm3,%xmm3        # 0x00007f34d4f68b10
                                                                                           ;   {section_word}
                                 0x00007f34d4f68c40:   vaddsd -0x130(%rip),%xmm3,%xmm3        # 0x00007f34d4f68b18
                                                                                           ;   {section_word}
   0.01%                         0x00007f34d4f68c48:   vaddsd %xmm1,%xmm3,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@32 (line 821)
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.03%                         0x00007f34d4f68c4c:   vmovq  %xmm1,%r9                    ;*invokestatic doubleToRawLongBits {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@37 (line 822)
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.04%                         0x00007f34d4f68c51:   movabs $0x8000000000000000,%r11
                                 0x00007f34d4f68c5b:   mov    %r9,%rcx
   0.01%                         0x00007f34d4f68c5e:   and    %r11,%rcx                    ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@63 (line 824)
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.03%                         0x00007f34d4f68c61:   movabs $0x7ff0000000000000,%r11
   0.05%                         0x00007f34d4f68c6b:   mov    %r9,%rsi
                                 0x00007f34d4f68c6e:   and    %r11,%rsi
   0.00%                         0x00007f34d4f68c71:   sar    $0x34,%rsi
   0.03%                         0x00007f34d4f68c75:   mov    %esi,%r11d
   0.04%                         0x00007f34d4f68c78:   add    $0xfffffc01,%r11d            ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@55 (line 823)
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
                                 0x00007f34d4f68c7f:   nop
   0.00%                         0x00007f34d4f68c80:   test   %rcx,%rcx
                                 0x00007f34d4f68c83:   je     0x00007f34d4f699d8           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@66 (line 824)
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.05%                         0x00007f34d4f68c89:   test   %r11d,%r11d
                                 0x00007f34d4f68c8c:   jge    0x00007f34d4f69a30           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@78 (line 825)
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.04%                         0x00007f34d4f68c92:   movabs $0x7fffffffffffffff,%r11
                                 0x00007f34d4f68c9c:   and    %r11,%r9                     ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@157 (line 830)
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.01%                         0x00007f34d4f68c9f:   nop
   0.04%                         0x00007f34d4f68ca0:   test   %r9,%r9
                                 0x00007f34d4f68ca3:   je     0x00007f34d4f69a70           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@160 (line 830)
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.04%                         0x00007f34d4f68ca9:   add    %eax,%edx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@194 (line 521)
                                 0x00007f34d4f68cab:   mov    %rbx,%r9
   0.01%                         0x00007f34d4f68cae:   mov    %r13d,%ecx
   0.05%                         0x00007f34d4f68cb1:   shr    %cl,%r9                      ;*lushr {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@228 (line 537)
   0.04%                         0x00007f34d4f68cb4:   mov    %edx,%esi
   0.04%                         0x00007f34d4f68cb6:   sub    %r8d,%esi
   0.03%                         0x00007f34d4f68cb9:   mov    %ecx,%ebx
                                 0x00007f34d4f68cbb:   add    %edx,%ebx
   0.02%                         0x00007f34d4f68cbd:   mov    %ebx,%ecx
   0.04%                         0x00007f34d4f68cbf:   add    $0xffffffcd,%ecx             ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@236 (line 538)
   0.03%                         0x00007f34d4f68cc2:   cmp    %eax,%ecx
                                 0x00007f34d4f68cc4:   mov    %eax,%r11d
   0.01%                         0x00007f34d4f68cc7:   cmovl  %ecx,%r11d                   ;*invokestatic min {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@243 (line 539)
   0.03%                         0x00007f34d4f68ccb:   sub    %r11d,%esi                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@266 (line 542)
   0.03%                         0x00007f34d4f68cce:   mov    %eax,%edx
                                 0x00007f34d4f68cd0:   sub    %r11d,%edx                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@259 (line 541)
   0.01%                         0x00007f34d4f68cd3:   sub    %r11d,%ebx
   0.06%                         0x00007f34d4f68cd6:   mov    %esi,%r11d
   0.04%                         0x00007f34d4f68cd9:   inc    %r11d                        ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@266 (line 542)
                                 0x00007f34d4f68cdc:   mov    %ebx,%ecx
   0.01%                         0x00007f34d4f68cde:   add    $0xffffffcd,%ecx             ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@252 (line 540)
   0.05%                         0x00007f34d4f68ce1:   cmp    $0x1,%r10d
                                 0x00007f34d4f68ce5:   je     0x00007f34d4f69ab8           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@272 (line 550)
   0.03%                         0x00007f34d4f68ceb:   test   %r11d,%r11d
                                 0x00007f34d4f68cee:   jge    0x00007f34d4f69ae4           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@280 (line 554)
                                 0x00007f34d4f68cf4:   sub    %esi,%edx                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@294 (line 559)
   0.01%                         0x00007f34d4f68cf6:   mov    0x14(%rdi),%ecx              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@322 (line 591)
   0.05%                         0x00007f34d4f68cf9:   mov    %ebx,%r8d
   0.03%                         0x00007f34d4f68cfc:   sub    %esi,%r8d
   0.00%                         0x00007f34d4f68cff:   mov    %edx,%r10d
   0.01%                         0x00007f34d4f68d02:   add    %ecx,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@365 (line 594)
   0.04%                         0x00007f34d4f68d05:   add    %esi,%r13d
   0.05%                         0x00007f34d4f68d08:   sub    %r13d,%ebx
                                 0x00007f34d4f68d0b:   add    %ecx,%ebx
   0.01%                         0x00007f34d4f68d0d:   dec    %edx                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@294 (line 559)
   0.04%                         0x00007f34d4f68d0f:   inc    %ebx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@330 (line 591)
   0.06%                         0x00007f34d4f68d11:   add    $0xffffffcc,%r8d             ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@287 (line 558)
                                 0x00007f34d4f68d15:   cmp    $0x40,%ebx
                                 0x00007f34d4f68d18:   jge    0x00007f34d4f69b10           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@372 (line 595)
                                 0x00007f34d4f68d1e:   xchg   %ax,%ax
   0.04%                         0x00007f34d4f68d20:   cmp    $0x40,%r10d
                                 0x00007f34d4f68d24:   jge    0x00007f34d4f69b3c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@379 (line 595)
   0.04%                         0x00007f34d4f68d2a:   vmovq  %xmm2,%r11
                                 0x00007f34d4f68d2f:   mov    0x1c(%r11),%ecx              ;*getfield digits {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@537 (line 618)
   0.01%                         0x00007f34d4f68d33:   vmovd  %ecx,%xmm3
   0.04%                         0x00007f34d4f68d37:   mov    $0x2,%r11d                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@698 (line 646)
   0.03%                         0x00007f34d4f68d3d:   data16 xchg %ax,%ax
                                 0x00007f34d4f68d40:   cmp    $0x20,%ebx
          ╭                      0x00007f34d4f68d43:   jl     0x00007f34d4f68f7a           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@386 (line 596)
          │                      0x00007f34d4f68d49:   movabs $0x7ffd4d220,%rcx            ;   {oop([J{0x00000007ffd4d220})}
   0.03%  │                      0x00007f34d4f68d53:   mov    0x10(%rcx),%r10
          │                      0x00007f34d4f68d57:   mov    0x18(%rcx),%rdi              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@734 (line 652)
          │                      0x00007f34d4f68d5b:   mov    %edx,%ecx
          │                      0x00007f34d4f68d5d:   shl    %cl,%r10                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@749 (line 653)
   0.04%  │                      0x00007f34d4f68d60:   imul   %rdi,%r9
          │                      0x00007f34d4f68d64:   mov    %r9,%rax
   0.05%  │                      0x00007f34d4f68d67:   mov    %r8d,%ecx
          │                      0x00007f34d4f68d6a:   shl    %cl,%rax                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@738 (line 652)
   0.04%  │                      0x00007f34d4f68d6d:   test   %r10,%r10
          │                      0x00007f34d4f68d70:   je     0x00007f34d4f69874           ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@778 (line 662)
   0.00%  │                      0x00007f34d4f68d76:   movabs $0x8000000000000000,%rdx
          │                      0x00007f34d4f68d80:   cmp    %rdx,%rax
          │╭                     0x00007f34d4f68d83:   jne    0x00007f34d4f68d8d
          ││                     0x00007f34d4f68d85:   xor    %edx,%edx
          ││                     0x00007f34d4f68d87:   cmp    $0xffffffffffffffff,%r10
          ││╭                    0x00007f34d4f68d8b:   je     0x00007f34d4f68d92
          │↘│                    0x00007f34d4f68d8d:   cqto   
   0.04%  │ │                    0x00007f34d4f68d8f:   idiv   %r10
   1.35%  │ ↘                    0x00007f34d4f68d92:   mov    %rax,%rcx
          │                      0x00007f34d4f68d95:   mov    %rdi,%r8
          │                      0x00007f34d4f68d98:   shl    %r8
   0.04%  │                      0x00007f34d4f68d9b:   mov    %rdx,%r9
          │                      0x00007f34d4f68d9e:   shl    $0x3,%r9
          │                      0x00007f34d4f68da2:   shl    %rdx
          │                      0x00007f34d4f68da5:   mov    %rdx,%rax
   0.05%  │                      0x00007f34d4f68da8:   add    %r9,%rax                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@790 (line 663)
          │                      0x00007f34d4f68dab:   mov    %ecx,%ebx                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@779 (line 662)
          │                      0x00007f34d4f68dad:   shl    $0x3,%rdi
          │                      0x00007f34d4f68db1:   add    %rdi,%r8                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@798 (line 664)
   0.04%  │                      0x00007f34d4f68db4:   mov    %r10,%r14
          │                      0x00007f34d4f68db7:   shl    %r14
   0.00%  │                      0x00007f34d4f68dba:   mov    %r10,%r9
          │                      0x00007f34d4f68dbd:   shl    $0x3,%r9
   0.03%  │                      0x00007f34d4f68dc1:   add    %r9,%r14                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@768 (line 655)
          │                      0x00007f34d4f68dc4:   cmp    %r8,%rax
          │                      0x00007f34d4f68dc7:   jl     0x00007f34d4f69da4           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@806 (line 665)
          │                      0x00007f34d4f68dcd:   mov    %rax,%r9
          │                      0x00007f34d4f68dd0:   add    %r8,%r9                      ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@820 (line 666)
   0.05%  │                      0x00007f34d4f68dd3:   cmp    %r14,%r9
          │                      0x00007f34d4f68dd6:   jg     0x00007f34d4f69e10           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@824 (line 666)
          │                      0x00007f34d4f68ddc:   nopl   0x0(%rax)
          │                      0x00007f34d4f68de0:   test   %ebx,%ebx
          │                      0x00007f34d4f68de2:   je     0x00007f34d4f69e7c           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@859 (line 668)
          │                      0x00007f34d4f68de8:   add    $0x30,%ebx                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@886 (line 672)
   0.03%  │                      0x00007f34d4f68deb:   mov    %ebx,%r13d
   0.00%  │                      0x00007f34d4f68dee:   movzwl %r13w,%r13d                  ;*i2c {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@887 (line 672)
          │                      0x00007f34d4f68df2:   vmovd  %xmm3,%r9d
          │                      0x00007f34d4f68df7:   nopw   0x0(%rax,%rax,1)
   0.05%  │                      0x00007f34d4f68e00:   mov    0xc(%r12,%r9,8),%ecx         ; implicit exception: dispatches to 0x00007f34d4f6a06c
          │                      0x00007f34d4f68e05:   cmp    $0x1,%ecx
          │                      0x00007f34d4f68e08:   jbe    0x00007f34d4f69890
          │                      0x00007f34d4f68e0e:   mov    %bx,0x10(%r12,%r9,8)         ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@888 (line 672)
          │                      0x00007f34d4f68e14:   vmovd  %xmm0,%r9d
   0.02%  │                      0x00007f34d4f68e19:   test   %r9d,%r9d
          │                      0x00007f34d4f68e1c:   nopl   0x0(%rax)
          │                      0x00007f34d4f68e20:   je     0x00007f34d4f69ed0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@891 (line 680)
          │                      0x00007f34d4f68e26:   movabs $0x8000000000000000,%rdx
   0.07%  │                      0x00007f34d4f68e30:   cmp    %rdx,%rax
          │  ╭                   0x00007f34d4f68e33:   jne    0x00007f34d4f68e3d
          │  │                   0x00007f34d4f68e35:   xor    %edx,%edx
          │  │                   0x00007f34d4f68e37:   cmp    $0xffffffffffffffff,%r10
          │  │╭                  0x00007f34d4f68e3b:   je     0x00007f34d4f68e42
          │  ↘│                  0x00007f34d4f68e3d:   cqto   
          │   │                  0x00007f34d4f68e3f:   idiv   %r10
   1.56%  │   ↘                  0x00007f34d4f68e42:   vmovq  %rax,%xmm0
          │                      0x00007f34d4f68e47:   mov    %r8,%rdi
          │                      0x00007f34d4f68e4a:   shl    %rdi
   0.04%  │                      0x00007f34d4f68e4d:   mov    %rdx,%r9
   0.01%  │                      0x00007f34d4f68e50:   shl    $0x3,%r9
          │                      0x00007f34d4f68e54:   shl    %rdx
          │                      0x00007f34d4f68e57:   add    %r9,%rdx                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.02%  │                      0x00007f34d4f68e5a:   shl    $0x3,%r8
   0.01%  │                      0x00007f34d4f68e5e:   add    %r8,%rdi                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
   0.01%  │                      0x00007f34d4f68e61:   test   %rdi,%rdi
          │                      0x00007f34d4f68e64:   jle    0x00007f34d4f69d5c           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
          │                      0x00007f34d4f68e6a:   cmp    %rdi,%rdx
          │                      0x00007f34d4f68e6d:   jl     0x00007f34d4f69609           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.05%  │                      0x00007f34d4f68e73:   xor    %r9d,%r9d                    ;*istore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@994 (line 689)
   0.00%  │                      0x00007f34d4f68e76:   mov    %rdi,%rax
   0.00%  │                      0x00007f34d4f68e79:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
          │                      0x00007f34d4f68e7c:   nopl   0x0(%rax)
   0.04%  │                      0x00007f34d4f68e80:   cmp    %r14,%rax
          │                      0x00007f34d4f68e83:   jg     0x00007f34d4f69614           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
   0.00%  │                      0x00007f34d4f68e89:   vmovq  %rdx,%xmm1
   0.00%  │                      0x00007f34d4f68e8e:   xor    %r13d,%r13d                  ;*istore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1012 (line 690)
          │                      0x00007f34d4f68e91:   cmp    $0x1,%ecx
          │                      0x00007f34d4f68e94:   jle    0x00007f34d4f698f0
   0.03%  │                      0x00007f34d4f68e9a:   vmovq  %xmm0,%r8
   0.00%  │                      0x00007f34d4f68e9f:   mov    %r8d,%r8d
   0.00%  │                      0x00007f34d4f68ea2:   add    $0x30,%r8d
          │                      0x00007f34d4f68ea6:   vmovd  %xmm3,%ebx
   0.03%  │                      0x00007f34d4f68eaa:   mov    %r8w,0x12(%r12,%rbx,8)       ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.01%  │                      0x00007f34d4f68eb0:   vmovq  %xmm1,%r8
   0.01%  │                      0x00007f34d4f68eb5:   cmp    %rdi,%r8
          │    ╭                 0x00007f34d4f68eb8:   jl     0x00007f34d4f69254           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
          │    │                 0x00007f34d4f68ebe:   xchg   %ax,%ax
   0.03%  │    │                 0x00007f34d4f68ec0:   test   %r13d,%r13d
          │    │                 0x00007f34d4f68ec3:   jne    0x00007f34d4f69fac           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
   0.01%  │    │                 0x00007f34d4f68ec9:   vmovq  %xmm1,%rax
   0.00%  │    │                 0x00007f34d4f68ece:   movabs $0x8000000000000000,%rdx
          │    │                 0x00007f34d4f68ed8:   cmp    %rdx,%rax
          │    │╭                0x00007f34d4f68edb:   jne    0x00007f34d4f68ee5
          │    ││                0x00007f34d4f68edd:   xor    %edx,%edx
          │    ││                0x00007f34d4f68edf:   cmp    $0xffffffffffffffff,%r10
          │    ││╭               0x00007f34d4f68ee3:   je     0x00007f34d4f68eea
   0.03%  │    │↘│               0x00007f34d4f68ee5:   cqto   
          │    │ │               0x00007f34d4f68ee7:   idiv   %r10
   1.74%  │    │ ↘               0x00007f34d4f68eea:   vmovq  %rax,%xmm0
          │    │                 0x00007f34d4f68eef:   mov    %rdi,%rsi
          │    │                 0x00007f34d4f68ef2:   shl    %rsi
   0.03%  │    │                 0x00007f34d4f68ef5:   mov    %rdx,%r8
   0.01%  │    │                 0x00007f34d4f68ef8:   shl    $0x3,%r8
          │    │                 0x00007f34d4f68efc:   shl    %rdx
          │    │                 0x00007f34d4f68eff:   add    %r8,%rdx                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.06%  │    │                 0x00007f34d4f68f02:   shl    $0x3,%rdi
   0.00%  │    │                 0x00007f34d4f68f06:   add    %rdi,%rsi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
          │    │                 0x00007f34d4f68f09:   test   %rsi,%rsi
          │    │                 0x00007f34d4f68f0c:   jle    0x00007f34d4f69fb9           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
          │    │                 0x00007f34d4f68f12:   cmp    %rsi,%rdx
          │    │                 0x00007f34d4f68f15:   jl     0x00007f34d4f69625           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.04%  │    │                 0x00007f34d4f68f1b:   xor    %r9d,%r9d                    ;*istore {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@994 (line 689)
   0.01%  │    │                 0x00007f34d4f68f1e:   mov    %rsi,%rax
          │    │                 0x00007f34d4f68f21:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
          │    │                 0x00007f34d4f68f24:   cmp    %r14,%rax
          │    │                 0x00007f34d4f68f27:   jg     0x00007f34d4f69630           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
   0.04%  │    │                 0x00007f34d4f68f2d:   xor    %r13d,%r13d                  ;*istore {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1012 (line 690)
   0.01%  │    │                 0x00007f34d4f68f30:   mov    %ecx,(%rsp)
          │    │                 0x00007f34d4f68f33:   vmovq  %r10,%xmm4
          │    │                 0x00007f34d4f68f38:   lea    (%r12,%rbx,8),%rbp
   0.04%  │    │                 0x00007f34d4f68f3c:   nopl   0x0(%rax)
   0.01%  │    │                 0x00007f34d4f68f40:   cmp    $0x2,%ecx
          │    │                 0x00007f34d4f68f43:   jle    0x00007f34d4f69b68           ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
          │    │                 0x00007f34d4f68f49:   mov    (%rsp),%r10d
          │    │                 0x00007f34d4f68f4d:   sub    %r11d,%r10d
   0.03%  │    │                 0x00007f34d4f68f50:   mov    (%rsp),%r8d
   0.00%  │    │                 0x00007f34d4f68f54:   xor    %ecx,%ecx
          │    │                 0x00007f34d4f68f56:   cmp    %r11d,%r8d
          │    │                 0x00007f34d4f68f59:   cmovl  %ecx,%r10d
   0.04%  │    │                 0x00007f34d4f68f5d:   cmp    $0x3e8,%r10d
   0.01%  │    │                 0x00007f34d4f68f64:   mov    $0x3e8,%ebx
          │    │                 0x00007f34d4f68f69:   cmova  %ebx,%r10d
   0.03%  │    │                 0x00007f34d4f68f6d:   add    %r11d,%r10d
   0.01%  │    │                 0x00007f34d4f68f70:   vmovq  %rdx,%xmm1
          │    │  ╭              0x00007f34d4f68f75:   jmp    0x00007f34d4f691b0
   0.01%  ↘    │  │              0x00007f34d4f68f7a:   nopw   0x0(%rax,%rax,1)
               │  │              0x00007f34d4f68f80:   cmp    $0x20,%r10d
               │  │              0x00007f34d4f68f84:   jge    0x00007f34d4f69d7c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@393 (line 596)
   0.05%       │  │              0x00007f34d4f68f8a:   mov    %r9d,%eax
               │  │              0x00007f34d4f68f8d:   movabs $0x7ffd4d1d8,%r9             ;   {oop([I{0x00000007ffd4d1d8})}
   0.01%       │  │              0x00007f34d4f68f97:   mov    0x10(%r9),%r10d
               │  │              0x00007f34d4f68f9b:   mov    0x14(%r9),%r9d               ;*iaload {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@403 (line 598)
   0.04%       │  │              0x00007f34d4f68f9f:   mov    %edx,%ecx
               │  │              0x00007f34d4f68fa1:   shl    %cl,%r10d                    ;*ishl {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@418 (line 599)
   0.05%       │  │              0x00007f34d4f68fa4:   imul   %r9d,%eax
               │  │              0x00007f34d4f68fa8:   mov    %r8d,%ecx
   0.00%       │  │              0x00007f34d4f68fab:   shl    %cl,%eax                     ;*ishl {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@407 (line 598)
   0.05%       │  │              0x00007f34d4f68fad:   test   %r10d,%r10d
               │  │              0x00007f34d4f68fb0:   je     0x00007f34d4f69884           ;*idiv {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@446 (line 608)
   0.00%       │  │              0x00007f34d4f68fb6:   cmp    $0x80000000,%eax
               │  │╭             0x00007f34d4f68fbb:   jne    0x00007f34d4f68fc5
               │  ││             0x00007f34d4f68fbd:   xor    %edx,%edx
               │  ││             0x00007f34d4f68fbf:   cmp    $0xffffffff,%r10d
               │  ││╭            0x00007f34d4f68fc3:   je     0x00007f34d4f68fc9
               │  │↘│            0x00007f34d4f68fc5:   cltd   
   0.04%       │  │ │            0x00007f34d4f68fc6:   idiv   %r10d
   0.45%       │  │ ↘            0x00007f34d4f68fc9:   mov    %r9d,%r8d
   0.02%       │  │              0x00007f34d4f68fcc:   shl    %r8d
   0.01%       │  │              0x00007f34d4f68fcf:   mov    %edx,%ebx
               │  │              0x00007f34d4f68fd1:   shl    $0x3,%ebx
   0.02%       │  │              0x00007f34d4f68fd4:   shl    %edx
   0.02%       │  │              0x00007f34d4f68fd6:   add    %ebx,%edx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@456 (line 609)
   0.03%       │  │              0x00007f34d4f68fd8:   shl    $0x3,%r9d
               │  │              0x00007f34d4f68fdc:   add    %r9d,%r8d                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@463 (line 610)
               │  │              0x00007f34d4f68fdf:   mov    %r10d,%ebx
   0.01%       │  │              0x00007f34d4f68fe2:   shl    %ebx
   0.03%       │  │              0x00007f34d4f68fe4:   mov    %r10d,%r9d
               │  │              0x00007f34d4f68fe7:   shl    $0x3,%r9d
   0.00%       │  │              0x00007f34d4f68feb:   add    %r9d,%ebx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@436 (line 601)
   0.02%       │  │              0x00007f34d4f68fee:   mov    %ebx,0x1c(%rsp)
   0.03%       │  │              0x00007f34d4f68ff2:   cmp    %r8d,%edx
               │  │              0x00007f34d4f68ff5:   jl     0x00007f34d4f69de4           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@470 (line 611)
               │  │              0x00007f34d4f68ffb:   mov    %edx,%ecx
   0.00%       │  │              0x00007f34d4f68ffd:   add    %r8d,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@484 (line 612)
   0.01%       │  │              0x00007f34d4f69000:   cmp    %ebx,%ecx
               │  │              0x00007f34d4f69002:   jg     0x00007f34d4f69e50           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@487 (line 612)
   0.02%       │  │              0x00007f34d4f69008:   mov    %eax,%r9d
               │  │              0x00007f34d4f6900b:   test   %eax,%eax
               │  │              0x00007f34d4f6900d:   je     0x00007f34d4f69ea8           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@522 (line 614)
               │  │              0x00007f34d4f69013:   add    $0x30,%r9d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@549 (line 618)
   0.02%       │  │              0x00007f34d4f69017:   mov    %r9d,%ecx
   0.02%       │  │              0x00007f34d4f6901a:   movzwl %cx,%ecx                     ;*i2c {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@550 (line 618)
               │  │              0x00007f34d4f6901d:   vmovd  %xmm3,%ebx
   0.00%       │  │              0x00007f34d4f69021:   mov    0xc(%r12,%rbx,8),%edi        ; implicit exception: dispatches to 0x00007f34d4f6a07c
   0.03%       │  │              0x00007f34d4f69026:   cmp    $0x1,%edi
               │  │              0x00007f34d4f69029:   jbe    0x00007f34d4f698c4
   0.03%       │  │              0x00007f34d4f6902f:   mov    %r9w,0x10(%r12,%rbx,8)       ;*castore {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@551 (line 618)
               │  │              0x00007f34d4f69035:   vmovd  %xmm0,%r9d
               │  │              0x00007f34d4f6903a:   nopw   0x0(%rax,%rax,1)
   0.01%       │  │              0x00007f34d4f69040:   test   %r9d,%r9d
               │  │              0x00007f34d4f69043:   je     0x00007f34d4f69ef8           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@554 (line 626)
   0.05%       │  │              0x00007f34d4f69049:   mov    %edx,%eax
               │  │              0x00007f34d4f6904b:   cmp    $0x80000000,%eax
               │  │  ╭           0x00007f34d4f69050:   jne    0x00007f34d4f6905a
               │  │  │           0x00007f34d4f69052:   xor    %edx,%edx
               │  │  │           0x00007f34d4f69054:   cmp    $0xffffffff,%r10d
               │  │  │╭          0x00007f34d4f69058:   je     0x00007f34d4f6905e
               │  │  ↘│          0x00007f34d4f6905a:   cltd   
   0.01%       │  │   │          0x00007f34d4f6905b:   idiv   %r10d
   0.90%       │  │   ↘          0x00007f34d4f6905e:   vmovd  %eax,%xmm0
   0.02%       │  │              0x00007f34d4f69062:   mov    %r8d,%ebx
   0.02%       │  │              0x00007f34d4f69065:   shl    %ebx
               │  │              0x00007f34d4f69067:   mov    %edx,%r9d
   0.02%       │  │              0x00007f34d4f6906a:   shl    $0x3,%r9d
   0.01%       │  │              0x00007f34d4f6906e:   shl    %edx
   0.02%       │  │              0x00007f34d4f69070:   add    %r9d,%edx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@601 (line 631)
   0.03%       │  │              0x00007f34d4f69073:   shl    $0x3,%r8d
   0.00%       │  │              0x00007f34d4f69077:   add    %r8d,%ebx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@608 (line 632)
   0.01%       │  │              0x00007f34d4f6907a:   test   %ebx,%ebx
   0.01%       │  │              0x00007f34d4f6907c:   nopl   0x0(%rax)
   0.02%       │  │              0x00007f34d4f69080:   jle    0x00007f34d4f69d6b           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@639 (line 634)
   0.01%       │  │              0x00007f34d4f69086:   cmp    %ebx,%edx
               │  │              0x00007f34d4f69088:   jl     0x00007f34d4f69f1c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@646 (line 635)
   0.01%       │  │              0x00007f34d4f6908e:   mov    %ebx,%ecx
   0.01%       │  │              0x00007f34d4f69090:   add    %edx,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@660 (line 636)
   0.01%       │  │              0x00007f34d4f69092:   cmp    0x1c(%rsp),%ecx
               │  │              0x00007f34d4f69096:   jg     0x00007f34d4f69475           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@663 (line 636)
   0.01%       │  │              0x00007f34d4f6909c:   xor    %r9d,%r9d                    ;*istore {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@671 (line 636)
   0.01%       │  │              0x00007f34d4f6909f:   nop
   0.01%       │  │              0x00007f34d4f690a0:   cmp    $0x1,%edi
               │  │              0x00007f34d4f690a3:   jle    0x00007f34d4f69958
   0.02%       │  │              0x00007f34d4f690a9:   mov    %eax,%r8d
   0.01%       │  │              0x00007f34d4f690ac:   add    $0x30,%r8d
   0.01%       │  │              0x00007f34d4f690b0:   vmovd  %xmm3,%eax
   0.00%       │  │              0x00007f34d4f690b4:   mov    %r8w,0x12(%r12,%rax,8)       ;*castore {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
   0.01%       │  │              0x00007f34d4f690ba:   nopw   0x0(%rax,%rax,1)
   0.01%       │  │              0x00007f34d4f690c0:   cmp    0x1c(%rsp),%ecx
               │  │              0x00007f34d4f690c4:   jg     0x00007f34d4f694c4           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@584 (line 629)
   0.01%       │  │              0x00007f34d4f690ca:   mov    %edx,%eax
   0.01%       │  │              0x00007f34d4f690cc:   cmp    $0x80000000,%eax
               │  │    ╭         0x00007f34d4f690d1:   jne    0x00007f34d4f690db
               │  │    │         0x00007f34d4f690d3:   xor    %edx,%edx
               │  │    │         0x00007f34d4f690d5:   cmp    $0xffffffff,%r10d
               │  │    │╭        0x00007f34d4f690d9:   je     0x00007f34d4f690df
   0.01%       │  │    ↘│        0x00007f34d4f690db:   cltd   
   0.00%       │  │     │        0x00007f34d4f690dc:   idiv   %r10d
   0.99%       │  │     ↘        0x00007f34d4f690df:   vmovd  %eax,%xmm0
   0.02%       │  │              0x00007f34d4f690e3:   mov    %ebx,%r14d
   0.00%       │  │              0x00007f34d4f690e6:   shl    %r14d
               │  │              0x00007f34d4f690e9:   mov    %edx,%r9d
   0.03%       │  │              0x00007f34d4f690ec:   shl    $0x3,%r9d
   0.01%       │  │              0x00007f34d4f690f0:   shl    %edx
   0.01%       │  │              0x00007f34d4f690f2:   add    %r9d,%edx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@601 (line 631)
               │  │              0x00007f34d4f690f5:   shl    $0x3,%ebx
   0.01%       │  │              0x00007f34d4f690f8:   add    %ebx,%r14d                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@608 (line 632)
   0.01%       │  │              0x00007f34d4f690fb:   nopl   0x0(%rax,%rax,1)
   0.01%       │  │              0x00007f34d4f69100:   test   %r14d,%r14d
               │  │              0x00007f34d4f69103:   jle    0x00007f34d4f69fc6           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@639 (line 634)
   0.00%       │  │              0x00007f34d4f69109:   cmp    %r14d,%edx
               │  │              0x00007f34d4f6910c:   jl     0x00007f34d4f69fd0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@646 (line 635)
   0.02%       │  │              0x00007f34d4f69112:   mov    %r14d,%r9d
   0.02%       │  │              0x00007f34d4f69115:   add    %edx,%r9d
   0.01%       │  │              0x00007f34d4f69118:   nopl   0x0(%rax,%rax,1)
   0.01%       │  │              0x00007f34d4f69120:   cmp    0x1c(%rsp),%r9d
               │  │              0x00007f34d4f69125:   jg     0x00007f34d4f694ce           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@663 (line 636)
   0.02%       │  │              0x00007f34d4f6912b:   xor    %eax,%eax                    ;*istore {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@671 (line 636)
   0.01%       │  │              0x00007f34d4f6912d:   vmovd  %r10d,%xmm4
   0.01%       │  │              0x00007f34d4f69132:   mov    %edi,%r10d
   0.00%       │  │              0x00007f34d4f69135:   mov    %edi,(%rsp)
   0.01%       │  │              0x00007f34d4f69138:   dec    %r10d
   0.02%       │  │              0x00007f34d4f6913b:   vmovd  %xmm3,%r8d
   0.01%       │  │              0x00007f34d4f69140:   lea    (%r12,%r8,8),%rsi
   0.01%       │  │              0x00007f34d4f69144:   mov    $0x80000000,%r8d
   0.01%       │  │              0x00007f34d4f6914a:   cmp    %r10d,%edi
   0.02%       │  │              0x00007f34d4f6914d:   cmovl  %r8d,%r10d
   0.01%       │  │              0x00007f34d4f69151:   cmp    $0x2,%r10d
               │  │              0x00007f34d4f69155:   jle    0x00007f34d4f69c67           ;*castore {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
   0.00%       │  │              0x00007f34d4f6915b:   mov    %r10d,%ebx
   0.01%       │  │              0x00007f34d4f6915e:   sub    %r11d,%ebx
   0.02%       │  │              0x00007f34d4f69161:   xor    %r8d,%r8d
   0.01%       │  │              0x00007f34d4f69164:   cmp    %r11d,%r10d
   0.01%       │  │              0x00007f34d4f69167:   cmovl  %r8d,%ebx
   0.01%       │  │              0x00007f34d4f6916b:   cmp    $0x7d0,%ebx
   0.02%       │  │              0x00007f34d4f69171:   mov    $0x7d0,%r9d
   0.01%       │  │              0x00007f34d4f69177:   cmova  %r9d,%ebx
   0.02%       │  │              0x00007f34d4f6917b:   add    %r11d,%ebx
   0.03%       │  │              0x00007f34d4f6917e:   mov    %edx,%r13d
   0.01%       │  │              0x00007f34d4f69181:   jmp    0x00007f34d4f692f6
               │  │              0x00007f34d4f69186:   data16 nopw 0x0(%rax,%rax,1)
   0.05%       │  │         ↗    0x00007f34d4f69190:   xor    %r8d,%r8d                    ;*istore {reexecute=0 rethrow=0 return_oop=0}
               │  │         │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1012 (line 690)
               │  │         │↗   0x00007f34d4f69193:   cmp    %r10d,%ecx
               │  │         ││   0x00007f34d4f69196:   jge    0x00007f34d4f69685
   0.01%       │  │         ││   0x00007f34d4f6919c:   mov    %r11d,%edi
   0.43%       │  │         ││   0x00007f34d4f6919f:   mov    %ecx,%r11d
   0.09%       │  │         ││   0x00007f34d4f691a2:   mov    %r8d,%r13d
               │  │         ││   0x00007f34d4f691a5:   mov    %rbx,%rsi
   0.01%       │  │         ││   0x00007f34d4f691a8:   vmovq  %rdx,%xmm1
   0.52%       │  │         ││   0x00007f34d4f691ad:   mov    %edi,%r9d                    ;*castore {reexecute=0 rethrow=0 return_oop=0}
               │  │         ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.12%       │  ↘         ││   0x00007f34d4f691b0:   vmovq  %xmm0,%r8
   0.05%       │            ││   0x00007f34d4f691b5:   mov    %r8d,%ebx
   0.02%       │            ││   0x00007f34d4f691b8:   mov    %r11d,%ecx
   0.51%       │            ││   0x00007f34d4f691bb:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
               │            ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1029 (line 700)
   0.08%       │            ││   0x00007f34d4f691bd:   add    $0x30,%ebx
   0.04%       │            ││   0x00007f34d4f691c0:   mov    %bx,0x10(%rbp,%r11,2)        ;*castore {reexecute=0 rethrow=0 return_oop=0}
               │            ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.01%       │            ││   0x00007f34d4f691c6:   vmovq  %xmm1,%r11
   0.46%       │            ││   0x00007f34d4f691cb:   cmp    %rsi,%r11
               │         ╭  ││   0x00007f34d4f691ce:   jl     0x00007f34d4f69259           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
               │         │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
   0.04%       │         │  ││   0x00007f34d4f691d4:   test   %r13d,%r13d
               │         │  ││   0x00007f34d4f691d7:   jne    0x00007f34d4f696ae           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
               │         │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
   0.04%       │         │  ││   0x00007f34d4f691dd:   vmovq  %xmm1,%rax
   0.02%       │         │  ││   0x00007f34d4f691e2:   vmovq  %xmm4,%r11
   0.48%       │         │  ││   0x00007f34d4f691e7:   movabs $0x8000000000000000,%rdx
   0.06%       │         │  ││   0x00007f34d4f691f1:   cmp    %rdx,%rax
               │         │╭ ││   0x00007f34d4f691f4:   jne    0x00007f34d4f691fe
               │         ││ ││   0x00007f34d4f691f6:   xor    %edx,%edx
               │         ││ ││   0x00007f34d4f691f8:   cmp    $0xffffffffffffffff,%r11
               │         ││╭││   0x00007f34d4f691fc:   je     0x00007f34d4f69203
   0.04%       │         │↘│││   0x00007f34d4f691fe:   cqto   
   0.01%       │         │ │││   0x00007f34d4f69200:   idiv   %r11
  23.77%       │         │ ↘││   0x00007f34d4f69203:   vmovq  %rax,%xmm0
               │         │  ││   0x00007f34d4f69208:   mov    %rsi,%rbx
   0.01%       │         │  ││   0x00007f34d4f6920b:   shl    %rbx
   0.55%       │         │  ││   0x00007f34d4f6920e:   mov    %rdx,%r11
   0.05%       │         │  ││   0x00007f34d4f69211:   shl    $0x3,%r11
   0.00%       │         │  ││   0x00007f34d4f69215:   shl    %rdx
   0.02%       │         │  ││   0x00007f34d4f69218:   add    %r11,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
               │         │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.56%       │         │  ││   0x00007f34d4f6921b:   mov    %rsi,%r11
   0.06%       │         │  ││   0x00007f34d4f6921e:   shl    $0x3,%r11
   0.00%       │         │  ││   0x00007f34d4f69222:   add    %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
               │         │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
   0.02%       │         │  ││   0x00007f34d4f69225:   test   %rbx,%rbx
               │         │  ││   0x00007f34d4f69228:   jle    0x00007f34d4f696ec           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
               │         │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
   0.50%       │         │  ││   0x00007f34d4f6922e:   cmp    %rbx,%rdx
               │         │  ││   0x00007f34d4f69231:   jl     0x00007f34d4f692cc           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
               │         │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.05%       │         │  ││   0x00007f34d4f69237:   xor    %r11d,%r11d                  ;*istore {reexecute=0 rethrow=0 return_oop=0}
               │         │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@994 (line 689)
   0.04%       │         │  ││   0x00007f34d4f6923a:   mov    %rdx,%rax
   0.01%       │         │  ││   0x00007f34d4f6923d:   add    %rbx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
               │         │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
   0.52%       │         │  ││   0x00007f34d4f69240:   cmp    %r14,%rax
               │         │  ╰│   0x00007f34d4f69243:   jle    0x00007f34d4f69190           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
               │         │   │                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
   0.00%       │         │   │   0x00007f34d4f69249:   mov    $0x1,%r8d
   0.05%       │         │   ╰   0x00007f34d4f6924f:   jmp    0x00007f34d4f69193
               ↘         │       0x00007f34d4f69254:   mov    $0x2,%ecx                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
                         │                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1067 (line 704)
   0.05%                 ↘       0x00007f34d4f69259:   vmovq  %xmm1,%r10
                                 0x00007f34d4f6925e:   shl    %r10
                                 0x00007f34d4f69261:   sub    %r14,%r10                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1048 (line 702)
   0.01%                         0x00007f34d4f69264:   vmovq  %xmm1,%r11
   0.05%                         0x00007f34d4f69269:   test   %r11,%r11
                                 0x00007f34d4f6926c:   je     0x00007f34d4f69f58           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1056 (line 703)
                                 0x00007f34d4f69272:   vmovq  %xmm2,%r11
                                 0x00007f34d4f69277:   mov    %ecx,0x14(%r11)              ;*putfield nDigits {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1442 (line 762)
   0.00%                         0x00007f34d4f6927b:   mov    %r12d,0xc(%r11)              ;*putfield decExponent {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1431 (line 760)
   0.04%                         0x00007f34d4f6927f:   mov    %r12d,0x10(%r11)             ;*putfield firstDigitIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1436 (line 761)
                                 0x00007f34d4f69283:   cmp    %r14,%rax
                                 0x00007f34d4f69286:   jle    0x00007f34d4f69f90           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1447 (line 766)
                                 0x00007f34d4f6928c:   test   %r9d,%r9d
                                 0x00007f34d4f6928f:   je     0x00007f34d4f69417           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1452 (line 767)
                                 0x00007f34d4f69295:   xor    %r11d,%r11d
   0.03%                         0x00007f34d4f69298:   cmp    %r11,%r10
                                 0x00007f34d4f6929b:   mov    $0xffffffff,%ebp
                              ╭  0x00007f34d4f692a0:   jl     0x00007f34d4f692aa
                              │  0x00007f34d4f692a2:   setne  %bpl
                              │  0x00007f34d4f692a6:   movzbl %bpl,%ebp                    ;*lcmp {reexecute=0 rethrow=0 return_oop=0}
                              │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1458 (line 768)
   0.00%                      ↘  0x00007f34d4f692aa:   test   %r10,%r10
                                 0x00007f34d4f692ad:   je     0x00007f34d4f69fda
   0.03%                         0x00007f34d4f692b3:   test   %r10,%r10
                                 0x00007f34d4f692b6:   jle    0x00007f34d4f69462           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1459 (line 768)
                                 0x00007f34d4f692bc:   mov    $0xffffff45,%esi
                                 0x00007f34d4f692c1:   vmovsd %xmm2,(%rsp)
                                 0x00007f34d4f692c6:   nop
                                 0x00007f34d4f692c7:   call   0x00007f34d4a01600           ; ImmutableOopMap {[0]=Oop }
                                                                                           ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                                                           ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1494 (line 774)
                                                                                           ;   {runtime_call UncommonTrapBlob}
                                 0x00007f34d4f692cc:   mov    $0x1,%r11d
....................................................................................................
  40.84%  <total for region 1>

....[Hottest Regions]...............................................................................
  40.84%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 527 
   5.89%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_buffer, version 2, compile id 581 
   5.38%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 527 
   4.16%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   3.62%         c2, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 577 
   3.49%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::appendTo, version 2, compile id 569 
   2.59%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::appendTo, version 2, compile id 569 
   2.32%         c2, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 513 
   2.31%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_buffer, version 2, compile id 581 
   2.20%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_buffer, version 2, compile id 581 
   2.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_buffer, version 2, compile id 581 
   2.02%         c2, level 4  java.lang.Long::toString, version 2, compile id 576 
   1.99%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.77%         c2, level 4  java.lang.Long::toString, version 2, compile id 576 
   1.60%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::getChars, version 2, compile id 561 
   1.59%         c2, level 4  java.lang.Long::toString, version 2, compile id 576 
   1.41%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_buffer, version 2, compile id 581 
   1.34%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_buffer, version 2, compile id 581 
   1.18%         c2, level 4  java.lang.StringUTF16::newBytesFor, version 2, compile id 574 
   1.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_buffer, version 2, compile id 581 
  11.20%  <...other 446 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  46.83%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 527 
  16.76%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_buffer, version 2, compile id 581 
   6.80%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::appendTo, version 2, compile id 569 
   5.84%         c2, level 4  java.lang.Long::toString, version 2, compile id 576 
   5.81%         c2, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 513 
   4.99%         c2, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 577 
   4.16%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.99%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.96%              kernel  [unknown] 
   1.60%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::getChars, version 2, compile id 561 
   1.18%         c2, level 4  java.lang.StringUTF16::newBytesFor, version 2, compile id 574 
   1.03%        runtime stub  StubRoutines::jshort_disjoint_arraycopy 
   0.09%                      <unknown> 
   0.08%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.StringConcatenationBenchmark_string_buffer_jmhTest::string_buffer_avgt_jmhStub, version 5, compile id 613 
   0.05%        libc-2.31.so  [unknown] 
   0.04%           libjvm.so  OtherRegionsTable::occupied 
   0.04%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.03%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.03%           libjvm.so  HeapRegionManager::allocate_free_region 
   0.03%           libjvm.so  CodeHeap::find_blob_unsafe 
   0.68%  <...other 155 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  89.88%         c2, level 4
   7.18%        runtime stub
   1.96%              kernel
   0.69%           libjvm.so
   0.11%        libc-2.31.so
   0.09%                    
   0.03%          ld-2.31.so
   0.03%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%              [vdso]
   0.01%         interpreter
   0.00%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.string_builder
# Parameters: (capacity = 128, coder = LATIN1)

# Run progress: 50.00% complete, ETA 00:07:13
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 962.133 ns/op
# Warmup Iteration   2: 862.258 ns/op
# Warmup Iteration   3: 854.119 ns/op
# Warmup Iteration   4: 854.316 ns/op
# Warmup Iteration   5: 854.228 ns/op
Iteration   1: 856.189 ns/op
Iteration   2: 853.864 ns/op
Iteration   3: 854.198 ns/op
Iteration   4: 854.473 ns/op
Iteration   5: 854.019 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.string_builder":
  854.549 ±(99.9%) 3.637 ns/op [Average]
  (min, avg, max) = (853.864, 854.549, 856.189), stdev = 0.944
  CI (99.9%): [850.912, 858.185] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.string_builder:·asm":
PrintAssembly processed: 137056 total address lines.
Perf output processed (skipped 55.479 seconds):
 Column 1: cycles (50678 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 504 

   0.05%                0x00007f85dcf6668f:   vmovd  %xmm0,%r9d
                        0x00007f85dcf66694:   test   %r9d,%r9d
                        0x00007f85dcf66697:   je     0x00007f85dcf674a8           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@891 (line 680)
                        0x00007f85dcf6669d:   movabs $0x8000000000000000,%rdx
                        0x00007f85dcf666a7:   cmp    %rdx,%rax
          ╭             0x00007f85dcf666aa:   jne    0x00007f85dcf666b4
          │             0x00007f85dcf666ac:   xor    %edx,%edx
          │             0x00007f85dcf666ae:   cmp    $0xffffffffffffffff,%r10
          │╭            0x00007f85dcf666b2:   je     0x00007f85dcf666b9
   0.04%  ↘│            0x00007f85dcf666b4:   cqto   
           │            0x00007f85dcf666b6:   idiv   %r10
   1.54%   ↘            0x00007f85dcf666b9:   vmovq  %rax,%xmm0
   0.00%                0x00007f85dcf666be:   mov    %r8,%rdi
                        0x00007f85dcf666c1:   shl    %rdi
   0.04%                0x00007f85dcf666c4:   mov    %rdx,%r9
   0.00%                0x00007f85dcf666c7:   shl    $0x3,%r9
   0.00%                0x00007f85dcf666cb:   shl    %rdx
                        0x00007f85dcf666ce:   add    %r9,%rdx                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.04%                0x00007f85dcf666d1:   shl    $0x3,%r8
   0.01%                0x00007f85dcf666d5:   add    %r8,%rdi                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
   0.00%                0x00007f85dcf666d8:   test   %rdi,%rdi
                        0x00007f85dcf666db:   nopl   0x0(%rax,%rax,1)
   0.04%                0x00007f85dcf666e0:   jle    0x00007f85dcf673dc           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
   0.00%                0x00007f85dcf666e6:   cmp    %rdi,%rdx
                        0x00007f85dcf666e9:   jl     0x00007f85dcf66c89           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.00%                0x00007f85dcf666ef:   xor    %r9d,%r9d                    ;*istore {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@994 (line 689)
                        0x00007f85dcf666f2:   mov    %rdi,%rax
   0.03%                0x00007f85dcf666f5:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
   0.00%                0x00007f85dcf666f8:   cmp    %r14,%rax
   0.00%                0x00007f85dcf666fb:   nopl   0x0(%rax,%rax,1)
                        0x00007f85dcf66700:   jg     0x00007f85dcf66c94           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
   0.07%                0x00007f85dcf66706:   vmovq  %rdx,%xmm1
   0.00%                0x00007f85dcf6670b:   xor    %r13d,%r13d                  ;*istore {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1012 (line 690)
   0.00%                0x00007f85dcf6670e:   cmp    $0x1,%ecx
                        0x00007f85dcf66711:   jle    0x00007f85dcf66f44
                        0x00007f85dcf66717:   vmovq  %xmm0,%r8
   0.04%                0x00007f85dcf6671c:   mov    %r8d,%r8d
   0.01%                0x00007f85dcf6671f:   add    $0x30,%r8d
                        0x00007f85dcf66723:   vmovd  %xmm3,%ebx
                        0x00007f85dcf66727:   mov    %r8w,0x12(%r12,%rbx,8)       ;*castore {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.04%                0x00007f85dcf6672d:   vmovq  %xmm1,%r8
                        0x00007f85dcf66732:   cmp    %rdi,%r8
            ╭           0x00007f85dcf66735:   jl     0x00007f85dcf668d4           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
            │           0x00007f85dcf6673b:   nopl   0x0(%rax,%rax,1)
            │           0x00007f85dcf66740:   test   %r13d,%r13d
            │           0x00007f85dcf66743:   jne    0x00007f85dcf6762c           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
   0.05%    │           0x00007f85dcf66749:   vmovq  %xmm1,%rax
   0.01%    │           0x00007f85dcf6674e:   movabs $0x8000000000000000,%rdx
   0.00%    │           0x00007f85dcf66758:   cmp    %rdx,%rax
            │╭          0x00007f85dcf6675b:   jne    0x00007f85dcf66765
            ││          0x00007f85dcf6675d:   xor    %edx,%edx
            ││          0x00007f85dcf6675f:   cmp    $0xffffffffffffffff,%r10
            ││╭         0x00007f85dcf66763:   je     0x00007f85dcf6676a
            │↘│         0x00007f85dcf66765:   cqto   
   0.03%    │ │         0x00007f85dcf66767:   idiv   %r10
   1.92%    │ ↘         0x00007f85dcf6676a:   vmovq  %rax,%xmm0
   0.00%    │           0x00007f85dcf6676f:   mov    %rdi,%rsi
            │           0x00007f85dcf66772:   shl    %rsi
   0.03%    │           0x00007f85dcf66775:   mov    %rdx,%r8
   0.00%    │           0x00007f85dcf66778:   shl    $0x3,%r8
            │           0x00007f85dcf6677c:   shl    %rdx
            │           0x00007f85dcf6677f:   add    %r8,%rdx                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
            │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.04%    │           0x00007f85dcf66782:   shl    $0x3,%rdi
   0.01%    │           0x00007f85dcf66786:   add    %rdi,%rsi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
            │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
            │           0x00007f85dcf66789:   test   %rsi,%rsi
            │           0x00007f85dcf6678c:   jle    0x00007f85dcf67639           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
            │           0x00007f85dcf66792:   cmp    %rsi,%rdx
            │           0x00007f85dcf66795:   jl     0x00007f85dcf66ca5           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.03%    │           0x00007f85dcf6679b:   xor    %r9d,%r9d                    ;*istore {reexecute=0 rethrow=0 return_oop=0}
            │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@994 (line 689)
   0.00%    │           0x00007f85dcf6679e:   mov    %rsi,%rax
   0.00%    │           0x00007f85dcf667a1:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
            │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
            │           0x00007f85dcf667a4:   cmp    %r14,%rax
            │           0x00007f85dcf667a7:   jg     0x00007f85dcf66cb0           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
   0.04%    │           0x00007f85dcf667ad:   xor    %r13d,%r13d                  ;*istore {reexecute=0 rethrow=0 return_oop=0}
            │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1012 (line 690)
   0.00%    │           0x00007f85dcf667b0:   mov    %ecx,(%rsp)
   0.00%    │           0x00007f85dcf667b3:   vmovq  %r10,%xmm4
            │           0x00007f85dcf667b8:   lea    (%r12,%rbx,8),%rbp
   0.03%    │           0x00007f85dcf667bc:   nopl   0x0(%rax)
   0.01%    │           0x00007f85dcf667c0:   cmp    $0x2,%ecx
            │           0x00007f85dcf667c3:   jle    0x00007f85dcf67024           ;*castore {reexecute=0 rethrow=0 return_oop=0}
            │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.00%    │           0x00007f85dcf667c9:   mov    (%rsp),%r10d
            │           0x00007f85dcf667cd:   sub    %r11d,%r10d
   0.03%    │           0x00007f85dcf667d0:   mov    (%rsp),%r8d
   0.00%    │           0x00007f85dcf667d4:   xor    %ecx,%ecx
            │           0x00007f85dcf667d6:   cmp    %r11d,%r8d
            │           0x00007f85dcf667d9:   cmovl  %ecx,%r10d
   0.04%    │           0x00007f85dcf667dd:   cmp    $0x3e8,%r10d
   0.00%    │           0x00007f85dcf667e4:   mov    $0x3e8,%ebx
            │           0x00007f85dcf667e9:   cmova  %ebx,%r10d
   0.03%    │           0x00007f85dcf667ed:   add    %r11d,%r10d
   0.01%    │           0x00007f85dcf667f0:   vmovq  %rdx,%xmm1
   0.00%    │  ╭        0x00007f85dcf667f5:   jmp    0x00007f85dcf66820
            │  │        0x00007f85dcf667f7:   nopw   0x0(%rax,%rax,1)
   0.03%    │  │   ↗    0x00007f85dcf66800:   xor    %r8d,%r8d                    ;*istore {reexecute=0 rethrow=0 return_oop=0}
            │  │   │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1012 (line 690)
   0.46%    │  │   │↗   0x00007f85dcf66803:   cmp    %r10d,%ecx
            │  │   ││   0x00007f85dcf66806:   jge    0x00007f85dcf66d05
   0.08%    │  │   ││   0x00007f85dcf6680c:   mov    %r11d,%edi
   0.05%    │  │   ││   0x00007f85dcf6680f:   mov    %ecx,%r11d
   0.03%    │  │   ││   0x00007f85dcf66812:   mov    %r8d,%r13d
   0.50%    │  │   ││   0x00007f85dcf66815:   mov    %rbx,%rsi
   0.06%    │  │   ││   0x00007f85dcf66818:   vmovq  %rdx,%xmm1
   0.05%    │  │   ││   0x00007f85dcf6681d:   mov    %edi,%r9d                    ;*castore {reexecute=0 rethrow=0 return_oop=0}
            │  │   ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.03%    │  ↘   ││   0x00007f85dcf66820:   vmovq  %xmm0,%r8
   0.47%    │      ││   0x00007f85dcf66825:   mov    %r8d,%ebx
   0.07%    │      ││   0x00007f85dcf66828:   mov    %r11d,%ecx
   0.05%    │      ││   0x00007f85dcf6682b:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │      ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1029 (line 700)
   0.01%    │      ││   0x00007f85dcf6682d:   add    $0x30,%ebx
   0.57%    │      ││   0x00007f85dcf66830:   mov    %bx,0x10(%rbp,%r11,2)        ;*castore {reexecute=0 rethrow=0 return_oop=0}
            │      ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.08%    │      ││   0x00007f85dcf66836:   vmovq  %xmm1,%r11
   0.06%    │      ││   0x00007f85dcf6683b:   nopl   0x0(%rax,%rax,1)
   0.03%    │      ││   0x00007f85dcf66840:   cmp    %rsi,%r11
            │   ╭  ││   0x00007f85dcf66843:   jl     0x00007f85dcf668d9           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            │   │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
   0.51%    │   │  ││   0x00007f85dcf66849:   test   %r13d,%r13d
            │   │  ││   0x00007f85dcf6684c:   jne    0x00007f85dcf66d2e           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            │   │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
   0.11%    │   │  ││   0x00007f85dcf66852:   vmovq  %xmm1,%rax
   0.00%    │   │  ││   0x00007f85dcf66857:   vmovq  %xmm4,%r11
   0.03%    │   │  ││   0x00007f85dcf6685c:   movabs $0x8000000000000000,%rdx
   0.46%    │   │  ││   0x00007f85dcf66866:   cmp    %rdx,%rax
            │   │╭ ││   0x00007f85dcf66869:   jne    0x00007f85dcf66873
            │   ││ ││   0x00007f85dcf6686b:   xor    %edx,%edx
            │   ││ ││   0x00007f85dcf6686d:   cmp    $0xffffffffffffffff,%r11
            │   ││╭││   0x00007f85dcf66871:   je     0x00007f85dcf66878
   0.06%    │   │↘│││   0x00007f85dcf66873:   cqto   
   0.01%    │   │ │││   0x00007f85dcf66875:   idiv   %r11
  24.63%    │   │ ↘││   0x00007f85dcf66878:   vmovq  %rax,%xmm0
   0.01%    │   │  ││   0x00007f85dcf6687d:   mov    %rsi,%rbx
   0.02%    │   │  ││   0x00007f85dcf66880:   shl    %rbx
   0.49%    │   │  ││   0x00007f85dcf66883:   mov    %rdx,%r11
   0.08%    │   │  ││   0x00007f85dcf66886:   shl    $0x3,%r11
   0.01%    │   │  ││   0x00007f85dcf6688a:   shl    %rdx
   0.03%    │   │  ││   0x00007f85dcf6688d:   add    %r11,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
            │   │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.51%    │   │  ││   0x00007f85dcf66890:   mov    %rsi,%r11
   0.07%    │   │  ││   0x00007f85dcf66893:   shl    $0x3,%r11
   0.00%    │   │  ││   0x00007f85dcf66897:   add    %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
            │   │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
   0.03%    │   │  ││   0x00007f85dcf6689a:   nopw   0x0(%rax,%rax,1)
   0.50%    │   │  ││   0x00007f85dcf668a0:   test   %rbx,%rbx
            │   │  ││   0x00007f85dcf668a3:   jle    0x00007f85dcf66d6c           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │   │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
   0.09%    │   │  ││   0x00007f85dcf668a9:   cmp    %rbx,%rdx
            │   │  ││   0x00007f85dcf668ac:   jl     0x00007f85dcf6694c           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │   │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.01%    │   │  ││   0x00007f85dcf668b2:   xor    %r11d,%r11d                  ;*istore {reexecute=0 rethrow=0 return_oop=0}
            │   │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@994 (line 689)
   0.06%    │   │  ││   0x00007f85dcf668b5:   mov    %rdx,%rax
   0.52%    │   │  ││   0x00007f85dcf668b8:   add    %rbx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
            │   │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
   0.08%    │   │  ││   0x00007f85dcf668bb:   nopl   0x0(%rax,%rax,1)
   0.01%    │   │  ││   0x00007f85dcf668c0:   cmp    %r14,%rax
            │   │  ╰│   0x00007f85dcf668c3:   jle    0x00007f85dcf66800           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │   │   │                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
   0.05%    │   │   │   0x00007f85dcf668c9:   mov    $0x1,%r8d
            │   │   ╰   0x00007f85dcf668cf:   jmp    0x00007f85dcf66803
            ↘   │       0x00007f85dcf668d4:   mov    $0x2,%ecx                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
                │                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1067 (line 704)
                ↘       0x00007f85dcf668d9:   vmovq  %xmm1,%r10
                        0x00007f85dcf668de:   shl    %r10
   0.04%                0x00007f85dcf668e1:   sub    %r14,%r10                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1048 (line 702)
                        0x00007f85dcf668e4:   vmovq  %xmm1,%r11
                        0x00007f85dcf668e9:   test   %r11,%r11
                        0x00007f85dcf668ec:   je     0x00007f85dcf674d0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1056 (line 703)
   0.01%                0x00007f85dcf668f2:   vmovq  %xmm2,%r11
   0.05%                0x00007f85dcf668f7:   mov    %ecx,0x14(%r11)              ;*putfield nDigits {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1442 (line 762)
                        0x00007f85dcf668fb:   mov    %r12d,0xc(%r11)              ;*putfield decExponent {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1431 (line 760)
                        0x00007f85dcf668ff:   mov    %r12d,0x10(%r11)             ;*putfield firstDigitIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1436 (line 761)
   0.01%                0x00007f85dcf66903:   cmp    %r14,%rax
                        0x00007f85dcf66906:   jle    0x00007f85dcf67508           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1447 (line 766)
   0.04%                0x00007f85dcf6690c:   test   %r9d,%r9d
                        0x00007f85dcf6690f:   je     0x00007f85dcf66a97           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1452 (line 767)
                        0x00007f85dcf66915:   xor    %r11d,%r11d
                        0x00007f85dcf66918:   cmp    %r11,%r10
                        0x00007f85dcf6691b:   mov    $0xffffffff,%ebp
   0.04%             ╭  0x00007f85dcf66920:   jl     0x00007f85dcf6692a
                     │  0x00007f85dcf66922:   setne  %bpl
                     │  0x00007f85dcf66926:   movzbl %bpl,%ebp                    ;*lcmp {reexecute=0 rethrow=0 return_oop=0}
                     │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1458 (line 768)
                     ↘  0x00007f85dcf6692a:   test   %r10,%r10
                        0x00007f85dcf6692d:   je     0x00007f85dcf6765a
                        0x00007f85dcf66933:   test   %r10,%r10
                        0x00007f85dcf66936:   jle    0x00007f85dcf66ae2           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1459 (line 768)
                        0x00007f85dcf6693c:   mov    $0xffffff45,%esi
                        0x00007f85dcf66941:   vmovsd %xmm2,(%rsp)
....................................................................................................
  35.42%  <total for region 1>

....[Hottest Regions]...............................................................................
  35.42%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 504 
   7.56%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 504 
   6.43%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   5.68%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 504 
   3.88%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_builder, version 2, compile id 531 
   3.55%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_builder, version 2, compile id 531 
   3.31%         c2, level 4  java.lang.Long::toString, version 2, compile id 529 
   3.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_builder, version 2, compile id 531 
   2.81%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_builder, version 2, compile id 531 
   2.24%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_builder, version 2, compile id 531 
   2.23%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_builder, version 2, compile id 531 
   2.03%         c2, level 4  java.lang.AbstractStringBuilder::append, version 4, compile id 564 
   1.81%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.69%         c2, level 4  java.lang.Long::toString, version 2, compile id 529 
   1.66%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::getChars, version 2, compile id 522 
   1.62%         c2, level 4  java.lang.AbstractStringBuilder::append, version 4, compile id 564 
   1.57%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_builder, version 2, compile id 531 
   1.39%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_builder, version 2, compile id 531 
   1.13%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_builder, version 2, compile id 531 
   1.12%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_builder, version 2, compile id 531 
   9.85%  <...other 419 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  49.30%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 504 
  25.69%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_builder, version 2, compile id 531 
   6.43%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   5.91%         c2, level 4  java.lang.AbstractStringBuilder::append, version 4, compile id 564 
   5.49%         c2, level 4  java.lang.Long::toString, version 2, compile id 529 
   1.81%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.66%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::getChars, version 2, compile id 522 
   1.42%              kernel  [unknown] 
   0.98%        runtime stub  StubRoutines::jshort_disjoint_arraycopy 
   0.61%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.StringConcatenationBenchmark_string_builder_jmhTest::string_builder_avgt_jmhStub, version 5, compile id 567 
   0.14%                      <unknown> 
   0.03%           libjvm.so  OtherRegionsTable::occupied 
   0.02%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%           libjvm.so  CodeHeap::find_blob_unsafe 
   0.02%           libjvm.so  HeapRegionClaimer::claim_region 
   0.01%           libjvm.so  HeapRegionManager::par_iterate 
   0.01%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%        libc-2.31.so  __strchr_sse2 
   0.42%  <...other 131 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  88.66%         c2, level 4
   9.21%        runtime stub
   1.42%              kernel
   0.43%           libjvm.so
   0.14%                    
   0.07%        libc-2.31.so
   0.02%          ld-2.31.so
   0.02%         interpreter
   0.01%  libpthread-2.31.so
   0.01%              [vdso]
   0.01%      hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.string_builder
# Parameters: (capacity = 128, coder = UTF16)

# Run progress: 62.50% complete, ETA 00:05:24
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 990.467 ns/op
# Warmup Iteration   2: 860.570 ns/op
# Warmup Iteration   3: 859.114 ns/op
# Warmup Iteration   4: 858.781 ns/op
# Warmup Iteration   5: 858.439 ns/op
Iteration   1: 859.143 ns/op
Iteration   2: 858.968 ns/op
Iteration   3: 859.007 ns/op
Iteration   4: 859.605 ns/op
Iteration   5: 859.107 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.string_builder":
  859.166 ±(99.9%) 0.985 ns/op [Average]
  (min, avg, max) = (858.968, 859.166, 859.605), stdev = 0.256
  CI (99.9%): [858.181, 860.151] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.string_builder:·asm":
PrintAssembly processed: 139436 total address lines.
Perf output processed (skipped 55.488 seconds):
 Column 1: cycles (50781 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 515 

                                 0x00007f7a44f664e3:   mov    %ecx,0x14(%rsp)
                                 0x00007f7a44f664e7:   mov    %r10d,0x18(%rsp)
                                 0x00007f7a44f664ec:   mov    %r11d,0x1c(%rsp)
                                 0x00007f7a44f664f1:   mov    %r9d,0x20(%rsp)
                                 0x00007f7a44f664f6:   nop
                                 0x00007f7a44f664f7:   call   0x00007f7a44a01600           ; ImmutableOopMap {rbp=Oop }
                                                                                           ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                                           ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@111 (line 448)
                                                                                           ;   {runtime_call UncommonTrapBlob}
                                 0x00007f7a44f664fc:   mov    %r11d,%eax
   0.06%                         0x00007f7a44f664ff:   mov    %ecx,%r13d
                                 0x00007f7a44f66502:   vcvtsi2sd %edx,%xmm1,%xmm1
   0.06%                         0x00007f7a44f66506:   movabs $0x3ff0000000000000,%r11
   0.04%                         0x00007f7a44f66510:   vmulsd -0x118(%rip),%xmm1,%xmm1        # 0x00007f7a44f66400
                                                                                           ;   {section_word}
                                 0x00007f7a44f66518:   movabs $0xfffffffffffff,%r9
   0.03%                         0x00007f7a44f66522:   mov    %rbx,%rcx
                                 0x00007f7a44f66525:   and    %r9,%rcx
   0.05%                         0x00007f7a44f66528:   or     %rcx,%r11
                                 0x00007f7a44f6652b:   vmovq  %r11,%xmm3
   0.02%                         0x00007f7a44f66530:   vsubsd -0x130(%rip),%xmm3,%xmm3        # 0x00007f7a44f66408
                                                                                           ;   {section_word}
                                 0x00007f7a44f66538:   vmulsd -0x130(%rip),%xmm3,%xmm3        # 0x00007f7a44f66410
                                                                                           ;   {section_word}
   0.04%                         0x00007f7a44f66540:   vaddsd -0x130(%rip),%xmm3,%xmm3        # 0x00007f7a44f66418
                                                                                           ;   {section_word}
                                 0x00007f7a44f66548:   vaddsd %xmm1,%xmm3,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@32 (line 821)
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.05%                         0x00007f7a44f6654c:   vmovq  %xmm1,%r9                    ;*invokestatic doubleToRawLongBits {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@37 (line 822)
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.10%                         0x00007f7a44f66551:   movabs $0x8000000000000000,%r11
   0.03%                         0x00007f7a44f6655b:   mov    %r9,%rcx
                                 0x00007f7a44f6655e:   and    %r11,%rcx                    ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@63 (line 824)
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.01%                         0x00007f7a44f66561:   movabs $0x7ff0000000000000,%r11
   0.04%                         0x00007f7a44f6656b:   mov    %r9,%rsi
   0.03%                         0x00007f7a44f6656e:   and    %r11,%rsi
                                 0x00007f7a44f66571:   sar    $0x34,%rsi
   0.02%                         0x00007f7a44f66575:   mov    %esi,%r11d
   0.04%                         0x00007f7a44f66578:   add    $0xfffffc01,%r11d            ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@55 (line 823)
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.06%                         0x00007f7a44f6657f:   nop
                                 0x00007f7a44f66580:   test   %rcx,%rcx
                                 0x00007f7a44f66583:   je     0x00007f7a44f672d8           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@66 (line 824)
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.01%                         0x00007f7a44f66589:   test   %r11d,%r11d
                                 0x00007f7a44f6658c:   jge    0x00007f7a44f67330           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@78 (line 825)
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.02%                         0x00007f7a44f66592:   movabs $0x7fffffffffffffff,%r11
   0.03%                         0x00007f7a44f6659c:   and    %r11,%r9                     ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@157 (line 830)
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
                                 0x00007f7a44f6659f:   nop
   0.01%                         0x00007f7a44f665a0:   test   %r9,%r9
                                 0x00007f7a44f665a3:   je     0x00007f7a44f67370           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@160 (line 830)
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.04%                         0x00007f7a44f665a9:   add    %eax,%edx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@194 (line 521)
   0.07%                         0x00007f7a44f665ab:   mov    %rbx,%r9
                                 0x00007f7a44f665ae:   mov    %r13d,%ecx
   0.01%                         0x00007f7a44f665b1:   shr    %cl,%r9                      ;*lushr {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@228 (line 537)
   0.09%                         0x00007f7a44f665b4:   mov    %edx,%esi
   0.01%                         0x00007f7a44f665b6:   sub    %r8d,%esi
   0.03%                         0x00007f7a44f665b9:   mov    %ecx,%ebx
   0.04%                         0x00007f7a44f665bb:   add    %edx,%ebx
                                 0x00007f7a44f665bd:   mov    %ebx,%ecx
   0.00%                         0x00007f7a44f665bf:   add    $0xffffffcd,%ecx             ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@236 (line 538)
   0.03%                         0x00007f7a44f665c2:   cmp    %eax,%ecx
   0.05%                         0x00007f7a44f665c4:   mov    %eax,%r11d
                                 0x00007f7a44f665c7:   cmovl  %ecx,%r11d                   ;*invokestatic min {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@243 (line 539)
   0.02%                         0x00007f7a44f665cb:   sub    %r11d,%esi                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@266 (line 542)
   0.03%                         0x00007f7a44f665ce:   mov    %eax,%edx
   0.04%                         0x00007f7a44f665d0:   sub    %r11d,%edx                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@259 (line 541)
                                 0x00007f7a44f665d3:   sub    %r11d,%ebx
   0.01%                         0x00007f7a44f665d6:   mov    %esi,%r11d
   0.04%                         0x00007f7a44f665d9:   inc    %r11d                        ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@266 (line 542)
   0.04%                         0x00007f7a44f665dc:   mov    %ebx,%ecx
                                 0x00007f7a44f665de:   add    $0xffffffcd,%ecx             ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@252 (line 540)
   0.02%                         0x00007f7a44f665e1:   cmp    $0x1,%r10d
                                 0x00007f7a44f665e5:   je     0x00007f7a44f673b8           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@272 (line 550)
   0.03%                         0x00007f7a44f665eb:   test   %r11d,%r11d
                                 0x00007f7a44f665ee:   jge    0x00007f7a44f673e4           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@280 (line 554)
   0.05%                         0x00007f7a44f665f4:   sub    %esi,%edx                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@294 (line 559)
                                 0x00007f7a44f665f6:   mov    0x14(%rdi),%ecx              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@322 (line 591)
   0.01%                         0x00007f7a44f665f9:   mov    %ebx,%r8d
   0.03%                         0x00007f7a44f665fc:   sub    %esi,%r8d
   0.04%                         0x00007f7a44f665ff:   mov    %edx,%r10d
                                 0x00007f7a44f66602:   add    %ecx,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@365 (line 594)
   0.01%                         0x00007f7a44f66605:   add    %esi,%r13d
   0.03%                         0x00007f7a44f66608:   sub    %r13d,%ebx
   0.03%                         0x00007f7a44f6660b:   add    %ecx,%ebx
                                 0x00007f7a44f6660d:   dec    %edx                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@294 (line 559)
   0.01%                         0x00007f7a44f6660f:   inc    %ebx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@330 (line 591)
   0.05%                         0x00007f7a44f66611:   add    $0xffffffcc,%r8d             ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@287 (line 558)
   0.04%                         0x00007f7a44f66615:   cmp    $0x40,%ebx
                                 0x00007f7a44f66618:   jge    0x00007f7a44f67410           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@372 (line 595)
                                 0x00007f7a44f6661e:   xchg   %ax,%ax
   0.01%                         0x00007f7a44f66620:   cmp    $0x40,%r10d
                                 0x00007f7a44f66624:   jge    0x00007f7a44f6743c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@379 (line 595)
   0.02%                         0x00007f7a44f6662a:   vmovq  %xmm2,%r11
   0.03%                         0x00007f7a44f6662f:   mov    0x1c(%r11),%ecx              ;*getfield digits {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@537 (line 618)
                                 0x00007f7a44f66633:   vmovd  %ecx,%xmm3
   0.01%                         0x00007f7a44f66637:   mov    $0x2,%r11d                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@698 (line 646)
   0.04%                         0x00007f7a44f6663d:   data16 xchg %ax,%ax
   0.05%                         0x00007f7a44f66640:   cmp    $0x20,%ebx
          ╭                      0x00007f7a44f66643:   jl     0x00007f7a44f6687a           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@386 (line 596)
          │                      0x00007f7a44f66649:   movabs $0x7ffd4d220,%rcx            ;   {oop([J{0x00000007ffd4d220})}
          │                      0x00007f7a44f66653:   mov    0x10(%rcx),%r10
          │                      0x00007f7a44f66657:   mov    0x18(%rcx),%rdi              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@734 (line 652)
   0.03%  │                      0x00007f7a44f6665b:   mov    %edx,%ecx
          │                      0x00007f7a44f6665d:   shl    %cl,%r10                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@749 (line 653)
   0.05%  │                      0x00007f7a44f66660:   imul   %rdi,%r9
   0.00%  │                      0x00007f7a44f66664:   mov    %r9,%rax
          │                      0x00007f7a44f66667:   mov    %r8d,%ecx
          │                      0x00007f7a44f6666a:   shl    %cl,%rax                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@738 (line 652)
   0.04%  │                      0x00007f7a44f6666d:   test   %r10,%r10
          │                      0x00007f7a44f66670:   je     0x00007f7a44f67174           ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@778 (line 662)
          │                      0x00007f7a44f66676:   movabs $0x8000000000000000,%rdx
   0.05%  │                      0x00007f7a44f66680:   cmp    %rdx,%rax
          │╭                     0x00007f7a44f66683:   jne    0x00007f7a44f6668d
          ││                     0x00007f7a44f66685:   xor    %edx,%edx
          ││                     0x00007f7a44f66687:   cmp    $0xffffffffffffffff,%r10
          ││╭                    0x00007f7a44f6668b:   je     0x00007f7a44f66692
          │↘│                    0x00007f7a44f6668d:   cqto   
          │ │                    0x00007f7a44f6668f:   idiv   %r10
   1.42%  │ ↘                    0x00007f7a44f66692:   mov    %rax,%rcx
          │                      0x00007f7a44f66695:   mov    %rdi,%r8
          │                      0x00007f7a44f66698:   shl    %r8
   0.04%  │                      0x00007f7a44f6669b:   mov    %rdx,%r9
          │                      0x00007f7a44f6669e:   shl    $0x3,%r9
          │                      0x00007f7a44f666a2:   shl    %rdx
          │                      0x00007f7a44f666a5:   mov    %rdx,%rax
   0.04%  │                      0x00007f7a44f666a8:   add    %r9,%rax                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@790 (line 663)
          │                      0x00007f7a44f666ab:   mov    %ecx,%ebx                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@779 (line 662)
          │                      0x00007f7a44f666ad:   shl    $0x3,%rdi
          │                      0x00007f7a44f666b1:   add    %rdi,%r8                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@798 (line 664)
   0.05%  │                      0x00007f7a44f666b4:   mov    %r10,%r14
          │                      0x00007f7a44f666b7:   shl    %r14
          │                      0x00007f7a44f666ba:   mov    %r10,%r9
   0.00%  │                      0x00007f7a44f666bd:   shl    $0x3,%r9
   0.05%  │                      0x00007f7a44f666c1:   add    %r9,%r14                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@768 (line 655)
          │                      0x00007f7a44f666c4:   cmp    %r8,%rax
          │                      0x00007f7a44f666c7:   jl     0x00007f7a44f676a4           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@806 (line 665)
          │                      0x00007f7a44f666cd:   mov    %rax,%r9
          │                      0x00007f7a44f666d0:   add    %r8,%r9                      ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@820 (line 666)
   0.07%  │                      0x00007f7a44f666d3:   cmp    %r14,%r9
          │                      0x00007f7a44f666d6:   jg     0x00007f7a44f67710           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@824 (line 666)
          │                      0x00007f7a44f666dc:   nopl   0x0(%rax)
          │                      0x00007f7a44f666e0:   test   %ebx,%ebx
          │                      0x00007f7a44f666e2:   je     0x00007f7a44f6777c           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@859 (line 668)
   0.00%  │                      0x00007f7a44f666e8:   add    $0x30,%ebx                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@886 (line 672)
   0.05%  │                      0x00007f7a44f666eb:   mov    %ebx,%r13d
          │                      0x00007f7a44f666ee:   movzwl %r13w,%r13d                  ;*i2c {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@887 (line 672)
          │                      0x00007f7a44f666f2:   vmovd  %xmm3,%r9d
          │                      0x00007f7a44f666f7:   nopw   0x0(%rax,%rax,1)
   0.05%  │                      0x00007f7a44f66700:   mov    0xc(%r12,%r9,8),%ecx         ; implicit exception: dispatches to 0x00007f7a44f6796c
          │                      0x00007f7a44f66705:   cmp    $0x1,%ecx
          │                      0x00007f7a44f66708:   jbe    0x00007f7a44f67190
          │                      0x00007f7a44f6670e:   mov    %bx,0x10(%r12,%r9,8)         ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@888 (line 672)
          │                      0x00007f7a44f66714:   vmovd  %xmm0,%r9d
   0.05%  │                      0x00007f7a44f66719:   test   %r9d,%r9d
          │                      0x00007f7a44f6671c:   nopl   0x0(%rax)
          │                      0x00007f7a44f66720:   je     0x00007f7a44f677d0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@891 (line 680)
          │                      0x00007f7a44f66726:   movabs $0x8000000000000000,%rdx
   0.06%  │                      0x00007f7a44f66730:   cmp    %rdx,%rax
          │  ╭                   0x00007f7a44f66733:   jne    0x00007f7a44f6673d
          │  │                   0x00007f7a44f66735:   xor    %edx,%edx
          │  │                   0x00007f7a44f66737:   cmp    $0xffffffffffffffff,%r10
          │  │╭                  0x00007f7a44f6673b:   je     0x00007f7a44f66742
          │  ↘│                  0x00007f7a44f6673d:   cqto   
          │   │                  0x00007f7a44f6673f:   idiv   %r10
   1.64%  │   ↘                  0x00007f7a44f66742:   vmovq  %rax,%xmm0
   0.00%  │                      0x00007f7a44f66747:   mov    %r8,%rdi
          │                      0x00007f7a44f6674a:   shl    %rdi
   0.02%  │                      0x00007f7a44f6674d:   mov    %rdx,%r9
   0.01%  │                      0x00007f7a44f66750:   shl    $0x3,%r9
   0.01%  │                      0x00007f7a44f66754:   shl    %rdx
          │                      0x00007f7a44f66757:   add    %r9,%rdx                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.04%  │                      0x00007f7a44f6675a:   shl    $0x3,%r8
   0.01%  │                      0x00007f7a44f6675e:   add    %r8,%rdi                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
   0.00%  │                      0x00007f7a44f66761:   test   %rdi,%rdi
          │                      0x00007f7a44f66764:   jle    0x00007f7a44f6765c           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
          │                      0x00007f7a44f6676a:   cmp    %rdi,%rdx
          │                      0x00007f7a44f6676d:   jl     0x00007f7a44f66f09           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.04%  │                      0x00007f7a44f66773:   xor    %r9d,%r9d                    ;*istore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@994 (line 689)
   0.00%  │                      0x00007f7a44f66776:   mov    %rdi,%rax
   0.01%  │                      0x00007f7a44f66779:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
          │                      0x00007f7a44f6677c:   nopl   0x0(%rax)
   0.03%  │                      0x00007f7a44f66780:   cmp    %r14,%rax
          │                      0x00007f7a44f66783:   jg     0x00007f7a44f66f14           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
          │                      0x00007f7a44f66789:   vmovq  %rdx,%xmm1
   0.01%  │                      0x00007f7a44f6678e:   xor    %r13d,%r13d                  ;*istore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1012 (line 690)
          │                      0x00007f7a44f66791:   cmp    $0x1,%ecx
          │                      0x00007f7a44f66794:   jle    0x00007f7a44f671f0
   0.03%  │                      0x00007f7a44f6679a:   vmovq  %xmm0,%r8
   0.00%  │                      0x00007f7a44f6679f:   mov    %r8d,%r8d
   0.00%  │                      0x00007f7a44f667a2:   add    $0x30,%r8d
          │                      0x00007f7a44f667a6:   vmovd  %xmm3,%ebx
   0.04%  │                      0x00007f7a44f667aa:   mov    %r8w,0x12(%r12,%rbx,8)       ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.01%  │                      0x00007f7a44f667b0:   vmovq  %xmm1,%r8
   0.00%  │                      0x00007f7a44f667b5:   cmp    %rdi,%r8
          │    ╭                 0x00007f7a44f667b8:   jl     0x00007f7a44f66b54           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
          │    │                 0x00007f7a44f667be:   xchg   %ax,%ax
   0.04%  │    │                 0x00007f7a44f667c0:   test   %r13d,%r13d
          │    │                 0x00007f7a44f667c3:   jne    0x00007f7a44f678ac           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
   0.00%  │    │                 0x00007f7a44f667c9:   vmovq  %xmm1,%rax
   0.00%  │    │                 0x00007f7a44f667ce:   movabs $0x8000000000000000,%rdx
          │    │                 0x00007f7a44f667d8:   cmp    %rdx,%rax
          │    │╭                0x00007f7a44f667db:   jne    0x00007f7a44f667e5
          │    ││                0x00007f7a44f667dd:   xor    %edx,%edx
          │    ││                0x00007f7a44f667df:   cmp    $0xffffffffffffffff,%r10
          │    ││╭               0x00007f7a44f667e3:   je     0x00007f7a44f667ea
   0.02%  │    │↘│               0x00007f7a44f667e5:   cqto   
   0.01%  │    │ │               0x00007f7a44f667e7:   idiv   %r10
   1.86%  │    │ ↘               0x00007f7a44f667ea:   vmovq  %rax,%xmm0
          │    │                 0x00007f7a44f667ef:   mov    %rdi,%rsi
          │    │                 0x00007f7a44f667f2:   shl    %rsi
   0.04%  │    │                 0x00007f7a44f667f5:   mov    %rdx,%r8
   0.01%  │    │                 0x00007f7a44f667f8:   shl    $0x3,%r8
   0.00%  │    │                 0x00007f7a44f667fc:   shl    %rdx
          │    │                 0x00007f7a44f667ff:   add    %r8,%rdx                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.04%  │    │                 0x00007f7a44f66802:   shl    $0x3,%rdi
   0.00%  │    │                 0x00007f7a44f66806:   add    %rdi,%rsi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
          │    │                 0x00007f7a44f66809:   test   %rsi,%rsi
          │    │                 0x00007f7a44f6680c:   jle    0x00007f7a44f678b9           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
          │    │                 0x00007f7a44f66812:   cmp    %rsi,%rdx
          │    │                 0x00007f7a44f66815:   jl     0x00007f7a44f66f25           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.04%  │    │                 0x00007f7a44f6681b:   xor    %r9d,%r9d                    ;*istore {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@994 (line 689)
   0.01%  │    │                 0x00007f7a44f6681e:   mov    %rsi,%rax
          │    │                 0x00007f7a44f66821:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
          │    │                 0x00007f7a44f66824:   cmp    %r14,%rax
          │    │                 0x00007f7a44f66827:   jg     0x00007f7a44f66f30           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
   0.02%  │    │                 0x00007f7a44f6682d:   xor    %r13d,%r13d                  ;*istore {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1012 (line 690)
   0.00%  │    │                 0x00007f7a44f66830:   mov    %ecx,(%rsp)
          │    │                 0x00007f7a44f66833:   vmovq  %r10,%xmm4
          │    │                 0x00007f7a44f66838:   lea    (%r12,%rbx,8),%rbp
   0.05%  │    │                 0x00007f7a44f6683c:   nopl   0x0(%rax)
   0.01%  │    │                 0x00007f7a44f66840:   cmp    $0x2,%ecx
          │    │                 0x00007f7a44f66843:   jle    0x00007f7a44f67468           ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
          │    │                 0x00007f7a44f66849:   mov    (%rsp),%r10d
          │    │                 0x00007f7a44f6684d:   sub    %r11d,%r10d
   0.04%  │    │                 0x00007f7a44f66850:   mov    (%rsp),%r8d
   0.01%  │    │                 0x00007f7a44f66854:   xor    %ecx,%ecx
          │    │                 0x00007f7a44f66856:   cmp    %r11d,%r8d
          │    │                 0x00007f7a44f66859:   cmovl  %ecx,%r10d
   0.04%  │    │                 0x00007f7a44f6685d:   cmp    $0x3e8,%r10d
   0.01%  │    │                 0x00007f7a44f66864:   mov    $0x3e8,%ebx
   0.00%  │    │                 0x00007f7a44f66869:   cmova  %ebx,%r10d
   0.04%  │    │                 0x00007f7a44f6686d:   add    %r11d,%r10d
   0.01%  │    │                 0x00007f7a44f66870:   vmovq  %rdx,%xmm1
          │    │  ╭              0x00007f7a44f66875:   jmp    0x00007f7a44f66ab0
          ↘    │  │              0x00007f7a44f6687a:   nopw   0x0(%rax,%rax,1)
   0.01%       │  │              0x00007f7a44f66880:   cmp    $0x20,%r10d
               │  │              0x00007f7a44f66884:   jge    0x00007f7a44f6767c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@393 (line 596)
   0.03%       │  │              0x00007f7a44f6688a:   mov    %r9d,%eax
   0.00%       │  │              0x00007f7a44f6688d:   movabs $0x7ffd4d1d8,%r9             ;   {oop([I{0x00000007ffd4d1d8})}
               │  │              0x00007f7a44f66897:   mov    0x10(%r9),%r10d
   0.02%       │  │              0x00007f7a44f6689b:   mov    0x14(%r9),%r9d               ;*iaload {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@403 (line 598)
   0.02%       │  │              0x00007f7a44f6689f:   mov    %edx,%ecx
               │  │              0x00007f7a44f668a1:   shl    %cl,%r10d                    ;*ishl {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@418 (line 599)
   0.04%       │  │              0x00007f7a44f668a4:   imul   %r9d,%eax
               │  │              0x00007f7a44f668a8:   mov    %r8d,%ecx
               │  │              0x00007f7a44f668ab:   shl    %cl,%eax                     ;*ishl {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@407 (line 598)
   0.04%       │  │              0x00007f7a44f668ad:   test   %r10d,%r10d
               │  │              0x00007f7a44f668b0:   je     0x00007f7a44f67184           ;*idiv {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@446 (line 608)
               │  │              0x00007f7a44f668b6:   cmp    $0x80000000,%eax
               │  │╭             0x00007f7a44f668bb:   jne    0x00007f7a44f668c5
               │  ││             0x00007f7a44f668bd:   xor    %edx,%edx
               │  ││             0x00007f7a44f668bf:   cmp    $0xffffffff,%r10d
               │  ││╭            0x00007f7a44f668c3:   je     0x00007f7a44f668c9
   0.01%       │  │↘│            0x00007f7a44f668c5:   cltd   
   0.03%       │  │ │            0x00007f7a44f668c6:   idiv   %r10d
   0.56%       │  │ ↘            0x00007f7a44f668c9:   mov    %r9d,%r8d
   0.01%       │  │              0x00007f7a44f668cc:   shl    %r8d
   0.01%       │  │              0x00007f7a44f668cf:   mov    %edx,%ebx
               │  │              0x00007f7a44f668d1:   shl    $0x3,%ebx
   0.02%       │  │              0x00007f7a44f668d4:   shl    %edx
   0.01%       │  │              0x00007f7a44f668d6:   add    %ebx,%edx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@456 (line 609)
   0.03%       │  │              0x00007f7a44f668d8:   shl    $0x3,%r9d
               │  │              0x00007f7a44f668dc:   add    %r9d,%r8d                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@463 (line 610)
               │  │              0x00007f7a44f668df:   mov    %r10d,%ebx
   0.00%       │  │              0x00007f7a44f668e2:   shl    %ebx
   0.02%       │  │              0x00007f7a44f668e4:   mov    %r10d,%r9d
               │  │              0x00007f7a44f668e7:   shl    $0x3,%r9d
               │  │              0x00007f7a44f668eb:   add    %r9d,%ebx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@436 (line 601)
   0.01%       │  │              0x00007f7a44f668ee:   mov    %ebx,0x1c(%rsp)
   0.04%       │  │              0x00007f7a44f668f2:   cmp    %r8d,%edx
               │  │              0x00007f7a44f668f5:   jl     0x00007f7a44f676e4           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@470 (line 611)
               │  │              0x00007f7a44f668fb:   mov    %edx,%ecx
               │  │              0x00007f7a44f668fd:   add    %r8d,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@484 (line 612)
   0.02%       │  │              0x00007f7a44f66900:   cmp    %ebx,%ecx
               │  │              0x00007f7a44f66902:   jg     0x00007f7a44f67750           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@487 (line 612)
   0.03%       │  │              0x00007f7a44f66908:   mov    %eax,%r9d
               │  │              0x00007f7a44f6690b:   test   %eax,%eax
               │  │              0x00007f7a44f6690d:   je     0x00007f7a44f677a8           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@522 (line 614)
               │  │              0x00007f7a44f66913:   add    $0x30,%r9d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@549 (line 618)
   0.01%       │  │              0x00007f7a44f66917:   mov    %r9d,%ecx
   0.03%       │  │              0x00007f7a44f6691a:   movzwl %cx,%ecx                     ;*i2c {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@550 (line 618)
               │  │              0x00007f7a44f6691d:   vmovd  %xmm3,%ebx
               │  │              0x00007f7a44f66921:   mov    0xc(%r12,%rbx,8),%edi        ; implicit exception: dispatches to 0x00007f7a44f6797c
   0.01%       │  │              0x00007f7a44f66926:   cmp    $0x1,%edi
               │  │              0x00007f7a44f66929:   jbe    0x00007f7a44f671c4
   0.03%       │  │              0x00007f7a44f6692f:   mov    %r9w,0x10(%r12,%rbx,8)       ;*castore {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@551 (line 618)
               │  │              0x00007f7a44f66935:   vmovd  %xmm0,%r9d
               │  │              0x00007f7a44f6693a:   nopw   0x0(%rax,%rax,1)
   0.01%       │  │              0x00007f7a44f66940:   test   %r9d,%r9d
               │  │              0x00007f7a44f66943:   je     0x00007f7a44f677f8           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@554 (line 626)
   0.03%       │  │              0x00007f7a44f66949:   mov    %edx,%eax
               │  │              0x00007f7a44f6694b:   cmp    $0x80000000,%eax
               │  │  ╭           0x00007f7a44f66950:   jne    0x00007f7a44f6695a
               │  │  │           0x00007f7a44f66952:   xor    %edx,%edx
               │  │  │           0x00007f7a44f66954:   cmp    $0xffffffff,%r10d
               │  │  │╭          0x00007f7a44f66958:   je     0x00007f7a44f6695e
               │  │  ↘│          0x00007f7a44f6695a:   cltd   
   0.01%       │  │   │          0x00007f7a44f6695b:   idiv   %r10d
   0.96%       │  │   ↘          0x00007f7a44f6695e:   vmovd  %eax,%xmm0
   0.02%       │  │              0x00007f7a44f66962:   mov    %r8d,%ebx
   0.02%       │  │              0x00007f7a44f66965:   shl    %ebx
               │  │              0x00007f7a44f66967:   mov    %edx,%r9d
   0.01%       │  │              0x00007f7a44f6696a:   shl    $0x3,%r9d
   0.02%       │  │              0x00007f7a44f6696e:   shl    %edx
   0.01%       │  │              0x00007f7a44f66970:   add    %r9d,%edx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@601 (line 631)
   0.02%       │  │              0x00007f7a44f66973:   shl    $0x3,%r8d
   0.00%       │  │              0x00007f7a44f66977:   add    %r8d,%ebx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@608 (line 632)
   0.02%       │  │              0x00007f7a44f6697a:   test   %ebx,%ebx
   0.01%       │  │              0x00007f7a44f6697c:   nopl   0x0(%rax)
   0.02%       │  │              0x00007f7a44f66980:   jle    0x00007f7a44f6766b           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@639 (line 634)
   0.00%       │  │              0x00007f7a44f66986:   cmp    %ebx,%edx
               │  │              0x00007f7a44f66988:   jl     0x00007f7a44f6781c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@646 (line 635)
   0.01%       │  │              0x00007f7a44f6698e:   mov    %ebx,%ecx
   0.00%       │  │              0x00007f7a44f66990:   add    %edx,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@660 (line 636)
   0.01%       │  │              0x00007f7a44f66992:   cmp    0x1c(%rsp),%ecx
               │  │              0x00007f7a44f66996:   jg     0x00007f7a44f66d75           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@663 (line 636)
               │  │              0x00007f7a44f6699c:   xor    %r9d,%r9d                    ;*istore {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@671 (line 636)
   0.00%       │  │              0x00007f7a44f6699f:   nop
   0.01%       │  │              0x00007f7a44f669a0:   cmp    $0x1,%edi
               │  │              0x00007f7a44f669a3:   jle    0x00007f7a44f67258
   0.02%       │  │              0x00007f7a44f669a9:   mov    %eax,%r8d
   0.01%       │  │              0x00007f7a44f669ac:   add    $0x30,%r8d
   0.00%       │  │              0x00007f7a44f669b0:   vmovd  %xmm3,%eax
   0.02%       │  │              0x00007f7a44f669b4:   mov    %r8w,0x12(%r12,%rax,8)       ;*castore {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
   0.02%       │  │              0x00007f7a44f669ba:   nopw   0x0(%rax,%rax,1)
   0.01%       │  │              0x00007f7a44f669c0:   cmp    0x1c(%rsp),%ecx
               │  │              0x00007f7a44f669c4:   jg     0x00007f7a44f66dc4           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@584 (line 629)
   0.01%       │  │              0x00007f7a44f669ca:   mov    %edx,%eax
   0.01%       │  │              0x00007f7a44f669cc:   cmp    $0x80000000,%eax
               │  │    ╭         0x00007f7a44f669d1:   jne    0x00007f7a44f669db
               │  │    │         0x00007f7a44f669d3:   xor    %edx,%edx
               │  │    │         0x00007f7a44f669d5:   cmp    $0xffffffff,%r10d
               │  │    │╭        0x00007f7a44f669d9:   je     0x00007f7a44f669df
   0.02%       │  │    ↘│        0x00007f7a44f669db:   cltd   
   0.00%       │  │     │        0x00007f7a44f669dc:   idiv   %r10d
   0.99%       │  │     ↘        0x00007f7a44f669df:   vmovd  %eax,%xmm0
   0.02%       │  │              0x00007f7a44f669e3:   mov    %ebx,%r14d
   0.00%       │  │              0x00007f7a44f669e6:   shl    %r14d
               │  │              0x00007f7a44f669e9:   mov    %edx,%r9d
   0.06%       │  │              0x00007f7a44f669ec:   shl    $0x3,%r9d
   0.01%       │  │              0x00007f7a44f669f0:   shl    %edx
   0.01%       │  │              0x00007f7a44f669f2:   add    %r9d,%edx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@601 (line 631)
   0.01%       │  │              0x00007f7a44f669f5:   shl    $0x3,%ebx
   0.01%       │  │              0x00007f7a44f669f8:   add    %ebx,%r14d                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@608 (line 632)
   0.02%       │  │              0x00007f7a44f669fb:   nopl   0x0(%rax,%rax,1)
               │  │              0x00007f7a44f66a00:   test   %r14d,%r14d
               │  │              0x00007f7a44f66a03:   jle    0x00007f7a44f678c6           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@639 (line 634)
   0.01%       │  │              0x00007f7a44f66a09:   cmp    %r14d,%edx
               │  │              0x00007f7a44f66a0c:   jl     0x00007f7a44f678d0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@646 (line 635)
   0.01%       │  │              0x00007f7a44f66a12:   mov    %r14d,%r9d
   0.02%       │  │              0x00007f7a44f66a15:   add    %edx,%r9d
               │  │              0x00007f7a44f66a18:   nopl   0x0(%rax,%rax,1)
   0.01%       │  │              0x00007f7a44f66a20:   cmp    0x1c(%rsp),%r9d
               │  │              0x00007f7a44f66a25:   jg     0x00007f7a44f66dce           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@663 (line 636)
   0.02%       │  │              0x00007f7a44f66a2b:   xor    %eax,%eax                    ;*istore {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@671 (line 636)
   0.01%       │  │              0x00007f7a44f66a2d:   vmovd  %r10d,%xmm4
   0.01%       │  │              0x00007f7a44f66a32:   mov    %edi,%r10d
   0.00%       │  │              0x00007f7a44f66a35:   mov    %edi,(%rsp)
   0.02%       │  │              0x00007f7a44f66a38:   dec    %r10d
   0.02%       │  │              0x00007f7a44f66a3b:   vmovd  %xmm3,%r8d
   0.01%       │  │              0x00007f7a44f66a40:   lea    (%r12,%r8,8),%rsi
   0.01%       │  │              0x00007f7a44f66a44:   mov    $0x80000000,%r8d
   0.02%       │  │              0x00007f7a44f66a4a:   cmp    %r10d,%edi
   0.02%       │  │              0x00007f7a44f66a4d:   cmovl  %r8d,%r10d
   0.00%       │  │              0x00007f7a44f66a51:   cmp    $0x2,%r10d
               │  │              0x00007f7a44f66a55:   jle    0x00007f7a44f67567           ;*castore {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
   0.02%       │  │              0x00007f7a44f66a5b:   mov    %r10d,%ebx
   0.02%       │  │              0x00007f7a44f66a5e:   sub    %r11d,%ebx
   0.02%       │  │              0x00007f7a44f66a61:   xor    %r8d,%r8d
   0.00%       │  │              0x00007f7a44f66a64:   cmp    %r11d,%r10d
   0.01%       │  │              0x00007f7a44f66a67:   cmovl  %r8d,%ebx
   0.01%       │  │              0x00007f7a44f66a6b:   cmp    $0x7d0,%ebx
   0.01%       │  │              0x00007f7a44f66a71:   mov    $0x7d0,%r9d
   0.01%       │  │              0x00007f7a44f66a77:   cmova  %r9d,%ebx
   0.02%       │  │              0x00007f7a44f66a7b:   add    %r11d,%ebx
   0.03%       │  │              0x00007f7a44f66a7e:   mov    %edx,%r13d
   0.01%       │  │              0x00007f7a44f66a81:   jmp    0x00007f7a44f66bf6
               │  │              0x00007f7a44f66a86:   data16 nopw 0x0(%rax,%rax,1)
   0.06%       │  │         ↗    0x00007f7a44f66a90:   xor    %r8d,%r8d                    ;*istore {reexecute=0 rethrow=0 return_oop=0}
               │  │         │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1012 (line 690)
   0.00%       │  │         │↗   0x00007f7a44f66a93:   cmp    %r10d,%ecx
               │  │         ││   0x00007f7a44f66a96:   jge    0x00007f7a44f66f85
   0.01%       │  │         ││   0x00007f7a44f66a9c:   mov    %r11d,%edi
   0.50%       │  │         ││   0x00007f7a44f66a9f:   mov    %ecx,%r11d
   0.11%       │  │         ││   0x00007f7a44f66aa2:   mov    %r8d,%r13d
   0.00%       │  │         ││   0x00007f7a44f66aa5:   mov    %rbx,%rsi
   0.01%       │  │         ││   0x00007f7a44f66aa8:   vmovq  %rdx,%xmm1
   0.50%       │  │         ││   0x00007f7a44f66aad:   mov    %edi,%r9d                    ;*castore {reexecute=0 rethrow=0 return_oop=0}
               │  │         ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.12%       │  ↘         ││   0x00007f7a44f66ab0:   vmovq  %xmm0,%r8
   0.03%       │            ││   0x00007f7a44f66ab5:   mov    %r8d,%ebx
   0.03%       │            ││   0x00007f7a44f66ab8:   mov    %r11d,%ecx
   0.46%       │            ││   0x00007f7a44f66abb:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
               │            ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1029 (line 700)
   0.12%       │            ││   0x00007f7a44f66abd:   add    $0x30,%ebx
   0.04%       │            ││   0x00007f7a44f66ac0:   mov    %bx,0x10(%rbp,%r11,2)        ;*castore {reexecute=0 rethrow=0 return_oop=0}
               │            ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.01%       │            ││   0x00007f7a44f66ac6:   vmovq  %xmm1,%r11
   0.49%       │            ││   0x00007f7a44f66acb:   cmp    %rsi,%r11
               │         ╭  ││   0x00007f7a44f66ace:   jl     0x00007f7a44f66b59           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
               │         │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
   0.05%       │         │  ││   0x00007f7a44f66ad4:   test   %r13d,%r13d
               │         │  ││   0x00007f7a44f66ad7:   jne    0x00007f7a44f66fae           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
               │         │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
   0.05%       │         │  ││   0x00007f7a44f66add:   vmovq  %xmm1,%rax
   0.03%       │         │  ││   0x00007f7a44f66ae2:   vmovq  %xmm4,%r11
   0.50%       │         │  ││   0x00007f7a44f66ae7:   movabs $0x8000000000000000,%rdx
   0.05%       │         │  ││   0x00007f7a44f66af1:   cmp    %rdx,%rax
               │         │╭ ││   0x00007f7a44f66af4:   jne    0x00007f7a44f66afe
               │         ││ ││   0x00007f7a44f66af6:   xor    %edx,%edx
               │         ││ ││   0x00007f7a44f66af8:   cmp    $0xffffffffffffffff,%r11
               │         ││╭││   0x00007f7a44f66afc:   je     0x00007f7a44f66b03
   0.04%       │         │↘│││   0x00007f7a44f66afe:   cqto   
   0.02%       │         │ │││   0x00007f7a44f66b00:   idiv   %r11
  24.86%       │         │ ↘││   0x00007f7a44f66b03:   vmovq  %rax,%xmm0
   0.00%       │         │  ││   0x00007f7a44f66b08:   mov    %rsi,%rbx
   0.01%       │         │  ││   0x00007f7a44f66b0b:   shl    %rbx
   0.53%       │         │  ││   0x00007f7a44f66b0e:   mov    %rdx,%r11
   0.07%       │         │  ││   0x00007f7a44f66b11:   shl    $0x3,%r11
   0.00%       │         │  ││   0x00007f7a44f66b15:   shl    %rdx
   0.01%       │         │  ││   0x00007f7a44f66b18:   add    %r11,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
               │         │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.57%       │         │  ││   0x00007f7a44f66b1b:   mov    %rsi,%r11
   0.07%       │         │  ││   0x00007f7a44f66b1e:   shl    $0x3,%r11
               │         │  ││   0x00007f7a44f66b22:   add    %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
               │         │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
   0.00%       │         │  ││   0x00007f7a44f66b25:   test   %rbx,%rbx
               │         │  ││   0x00007f7a44f66b28:   jle    0x00007f7a44f66fec           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
               │         │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
   0.50%       │         │  ││   0x00007f7a44f66b2e:   cmp    %rbx,%rdx
               │         │  ││   0x00007f7a44f66b31:   jl     0x00007f7a44f66bcc           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
               │         │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.07%       │         │  ││   0x00007f7a44f66b37:   xor    %r11d,%r11d                  ;*istore {reexecute=0 rethrow=0 return_oop=0}
               │         │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@994 (line 689)
   0.04%       │         │  ││   0x00007f7a44f66b3a:   mov    %rdx,%rax
   0.01%       │         │  ││   0x00007f7a44f66b3d:   add    %rbx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
               │         │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
   0.50%       │         │  ││   0x00007f7a44f66b40:   cmp    %r14,%rax
               │         │  ╰│   0x00007f7a44f66b43:   jle    0x00007f7a44f66a90           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
               │         │   │                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
               │         │   │   0x00007f7a44f66b49:   mov    $0x1,%r8d
   0.03%       │         │   ╰   0x00007f7a44f66b4f:   jmp    0x00007f7a44f66a93
               ↘         │       0x00007f7a44f66b54:   mov    $0x2,%ecx                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
                         │                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1067 (line 704)
   0.06%                 ↘       0x00007f7a44f66b59:   vmovq  %xmm1,%r10
                                 0x00007f7a44f66b5e:   shl    %r10
   0.00%                         0x00007f7a44f66b61:   sub    %r14,%r10                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1048 (line 702)
                                 0x00007f7a44f66b64:   vmovq  %xmm1,%r11
   0.06%                         0x00007f7a44f66b69:   test   %r11,%r11
                                 0x00007f7a44f66b6c:   je     0x00007f7a44f67858           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1056 (line 703)
                                 0x00007f7a44f66b72:   vmovq  %xmm2,%r11
                                 0x00007f7a44f66b77:   mov    %ecx,0x14(%r11)              ;*putfield nDigits {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1442 (line 762)
   0.00%                         0x00007f7a44f66b7b:   mov    %r12d,0xc(%r11)              ;*putfield decExponent {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1431 (line 760)
   0.05%                         0x00007f7a44f66b7f:   mov    %r12d,0x10(%r11)             ;*putfield firstDigitIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1436 (line 761)
                                 0x00007f7a44f66b83:   cmp    %r14,%rax
                                 0x00007f7a44f66b86:   jle    0x00007f7a44f67890           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1447 (line 766)
                                 0x00007f7a44f66b8c:   test   %r9d,%r9d
                                 0x00007f7a44f66b8f:   je     0x00007f7a44f66d17           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1452 (line 767)
   0.00%                         0x00007f7a44f66b95:   xor    %r11d,%r11d
   0.05%                         0x00007f7a44f66b98:   cmp    %r11,%r10
                                 0x00007f7a44f66b9b:   mov    $0xffffffff,%ebp
   0.00%                      ╭  0x00007f7a44f66ba0:   jl     0x00007f7a44f66baa
                              │  0x00007f7a44f66ba2:   setne  %bpl
                              │  0x00007f7a44f66ba6:   movzbl %bpl,%ebp                    ;*lcmp {reexecute=0 rethrow=0 return_oop=0}
                              │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1458 (line 768)
                              ↘  0x00007f7a44f66baa:   test   %r10,%r10
                                 0x00007f7a44f66bad:   je     0x00007f7a44f678da
   0.06%                         0x00007f7a44f66bb3:   test   %r10,%r10
                                 0x00007f7a44f66bb6:   jle    0x00007f7a44f66d62           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1459 (line 768)
                                 0x00007f7a44f66bbc:   mov    $0xffffff45,%esi
                                 0x00007f7a44f66bc1:   vmovsd %xmm2,(%rsp)
                                 0x00007f7a44f66bc6:   nop
                                 0x00007f7a44f66bc7:   call   0x00007f7a44a01600           ; ImmutableOopMap {[0]=Oop }
                                                                                           ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                                                           ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1494 (line 774)
                                                                                           ;   {runtime_call UncommonTrapBlob}
                                 0x00007f7a44f66bcc:   mov    $0x1,%r11d
....................................................................................................
  42.70%  <total for region 1>

....[Hottest Regions]...............................................................................
  42.70%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 515 
   5.77%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 515 
   5.17%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_builder, version 2, compile id 565 
   4.86%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   3.76%         c2, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 562 
   3.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_builder, version 2, compile id 565 
   2.69%         c2, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 546 
   2.27%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_builder, version 2, compile id 565 
   2.24%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   2.12%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_builder, version 2, compile id 565 
   2.10%         c2, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 546 
   2.09%         c2, level 4  java.lang.Long::toString, version 2, compile id 561 
   2.07%         c2, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 546 
   1.85%         c2, level 4  java.lang.Long::toString, version 2, compile id 561 
   1.75%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_builder, version 2, compile id 565 
   1.61%         c2, level 4  java.lang.Long::toString, version 2, compile id 561 
   1.42%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_builder, version 2, compile id 565 
   1.40%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::getChars, version 2, compile id 555 
   1.19%        runtime stub  StubRoutines::jshort_disjoint_arraycopy 
   1.16%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_builder, version 2, compile id 565 
   8.77%  <...other 423 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  49.03%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 515 
  19.58%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_builder, version 2, compile id 565 
   7.69%         c2, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 546 
   5.55%         c2, level 4  java.lang.Long::toString, version 2, compile id 561 
   5.25%         c2, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 562 
   4.86%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.24%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.54%              kernel  [unknown] 
   1.40%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::getChars, version 2, compile id 555 
   1.19%        runtime stub  StubRoutines::jshort_disjoint_arraycopy 
   0.57%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.StringConcatenationBenchmark_string_builder_jmhTest::string_builder_avgt_jmhStub, version 5, compile id 599 
   0.21%                      <unknown> 
   0.04%           libjvm.so  HeapRegionClaimer::claim_region 
   0.03%           libjvm.so  HeapRegionManager::par_iterate 
   0.03%           libjvm.so  CodeHeap::find_blob_unsafe 
   0.02%           libjvm.so  G1FromCardCache::clear 
   0.02%           libjvm.so  CodeCache::find_blob 
   0.02%           libjvm.so  OtherRegionsTable::occupied 
   0.02%           libjvm.so  TypeArrayKlass::allocate_common 
   0.02%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.69%  <...other 152 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  89.06%         c2, level 4
   8.29%        runtime stub
   1.54%              kernel
   0.73%           libjvm.so
   0.21%                    
   0.07%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
   0.00%     perf-111609.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.string_format
# Parameters: (capacity = 128, coder = LATIN1)

# Run progress: 75.00% complete, ETA 00:03:36
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1848.053 ns/op
# Warmup Iteration   2: 1548.482 ns/op
# Warmup Iteration   3: 1547.076 ns/op
# Warmup Iteration   4: 1547.184 ns/op
# Warmup Iteration   5: 1551.680 ns/op
Iteration   1: 1550.616 ns/op
Iteration   2: 1551.709 ns/op
Iteration   3: 1550.152 ns/op
Iteration   4: 1550.167 ns/op
Iteration   5: 1550.277 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.string_format":
  1550.584 ±(99.9%) 2.526 ns/op [Average]
  (min, avg, max) = (1550.152, 1550.584, 1551.709), stdev = 0.656
  CI (99.9%): [1548.058, 1553.110] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.string_format:·asm":
PrintAssembly processed: 150064 total address lines.
Perf output processed (skipped 55.555 seconds):
 Column 1: cycles (51202 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.Formatter::format, version 2, compile id 599 

                                                                         ; - java.util.Formatter::format@12 (line 2671)
               0x00007fc8e0f7a853:   mov    %r15,%rsi
               0x00007fc8e0f7a856:   data16 nopw 0x0(%rax,%rax,1)
               0x00007fc8e0f7a860:   vzeroupper 
               0x00007fc8e0f7a863:   movabs $0x7fc8f61f3390,%r10
               0x00007fc8e0f7a86d:   call   *%r10                        ;*invokespecial &lt;init&gt; {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.Formatter$FormatSpecifier::&lt;init&gt;@6 (line 2867)
                                                                         ; - java.util.Formatter::parse@126 (line 2738)
                                                                         ; - java.util.Formatter::format@12 (line 2671)
               0x00007fc8e0f7a870:   mov    0x40(%rsp),%r10
   0.00%       0x00007fc8e0f7a875:   mov    0x14(%r10),%r9d
               0x00007fc8e0f7a879:   test   %r9d,%r9d
   0.06%       0x00007fc8e0f7a87c:   nopl   0x0(%rax)
   0.00%       0x00007fc8e0f7a880:   je     0x00007fc8e0f7b565           ;*aastore {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.ArrayList::add@14 (line 455)
                                                                         ; - java.util.ArrayList::add@20 (line 467)
                                                                         ; - java.util.Formatter::parse@129 (line 2738)
                                                                         ; - java.util.Formatter::format@12 (line 2671)
               0x00007fc8e0f7a886:   mov    0x48(%rsp),%r10
               0x00007fc8e0f7a88b:   mov    0xc(%r10),%ebx               ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.Formatter::format@32 (line 2673)
   0.04%       0x00007fc8e0f7a88f:   movsbl 0x10(%r10),%edx
               0x00007fc8e0f7a894:   mov    0x40(%rsp),%r10
               0x00007fc8e0f7a899:   movsbl 0x10(%r10),%edi              ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.Formatter::format@29 (line 2672)
   0.01%       0x00007fc8e0f7a89e:   xchg   %ax,%ax                      ;*aastore {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.ArrayList::add@14 (line 455)
                                                                         ; - java.util.ArrayList::add@20 (line 467)
                                                                         ; - java.util.Formatter::parse@129 (line 2738)
                                                                         ; - java.util.Formatter::format@12 (line 2671)
   0.19%    ↗  0x00007fc8e0f7a8a0:   mov    0xc(%r12,%r9,8),%r10d        ;*invokevirtual isLatin1 {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.String::charAt@1 (line 1512)
            │                                                            ; - java.util.Formatter::parse@105 (line 2736)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
            │  0x00007fc8e0f7a8a5:   mov    %r10d,%r11d
   0.00%    │  0x00007fc8e0f7a8a8:   mov    %edi,%ecx
   0.00%    │  0x00007fc8e0f7a8aa:   sar    %cl,%r11d                    ;*invokevirtual isLatin1 {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.String::indexOf@1 (line 2419)
            │                                                            ; - java.util.Formatter::parse@29 (line 2720)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.21%    │  0x00007fc8e0f7a8ad:   cmp    %edi,%edx
            │  0x00007fc8e0f7a8af:   jne    0x00007fc8e0f7b50c           ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.Formatter::parse@105 (line 2736)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
            │  0x00007fc8e0f7a8b5:   mov    0x48(%rsp),%r8
   0.10%    │  0x00007fc8e0f7a8ba:   mov    0x14(%r8),%r8d
   0.00%    │  0x00007fc8e0f7a8be:   xchg   %ax,%ax
   0.07%    │  0x00007fc8e0f7a8c0:   cmp    %edx,%edi
            │  0x00007fc8e0f7a8c2:   jne    0x00007fc8e0f7b338           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.StringLatin1::charAt@7 (line 47)
            │                                                            ; - java.lang.String::charAt@12 (line 1513)
            │                                                            ; - java.util.Formatter::parse@105 (line 2736)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
            │  0x00007fc8e0f7a8c8:   mov    %edx,%ecx
   0.10%    │  0x00007fc8e0f7a8ca:   shl    %cl,%r11d                    ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.String::isLatin1@6 (line 4549)
            │                                                            ; - java.lang.String::indexOf@1 (line 2419)
            │                                                            ; - java.util.Formatter::parse@29 (line 2720)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.11%    │  0x00007fc8e0f7a8cd:   shl    %cl,%ebx                     ;*invokevirtual isLatin1 {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.String::indexOf@1 (line 2419)
            │                                                            ; - java.util.Formatter::parse@29 (line 2720)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.16%    │  0x00007fc8e0f7a8cf:   mov    0xc(%r12,%r8,8),%edi         ; implicit exception: dispatches to 0x00007fc8e0f7b8e8
   0.00%    │  0x00007fc8e0f7a8d4:   test   %ebx,%ebx
            │  0x00007fc8e0f7a8d6:   jl     0x00007fc8e0f7b294
   0.10%    │  0x00007fc8e0f7a8dc:   nopl   0x0(%rax)
            │  0x00007fc8e0f7a8e0:   cmp    %r11d,%r10d
            │  0x00007fc8e0f7a8e3:   jb     0x00007fc8e0f7b294
   0.06%    │  0x00007fc8e0f7a8e9:   mov    %ebx,%r10d
   0.01%    │  0x00007fc8e0f7a8ec:   add    %r11d,%r10d
   0.08%    │  0x00007fc8e0f7a8ef:   cmp    %r10d,%edi
            │  0x00007fc8e0f7a8f2:   jb     0x00007fc8e0f7b294
            │  0x00007fc8e0f7a8f8:   test   %r11d,%r11d
   0.05%    │  0x00007fc8e0f7a8fb:   nopl   0x0(%rax,%rax,1)
   0.00%    │  0x00007fc8e0f7a900:   jl     0x00007fc8e0f7b294           ;*invokespecial &lt;init&gt; {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.Formatter$FormatSpecifier::&lt;init&gt;@6 (line 2867)
            │                                                            ; - java.util.Formatter::parse@126 (line 2738)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.10%    │  0x00007fc8e0f7a906:   test   %r11d,%r11d
          ╭ │  0x00007fc8e0f7a909:   je     0x00007fc8e0f7a930           ;*invokeinterface index {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - java.util.Formatter::format@48 (line 2674)
   0.00%  │ │  0x00007fc8e0f7a90b:   lea    (%r12,%r8,8),%r10            ;*invokevirtual valueOf {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - java.util.Formatter$Flags::contains@10 (line 4598)
          │ │                                                            ; - java.util.Formatter$FormatSpecifier::printString@68 (line 3051)
          │ │                                                            ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
          │ │                                                            ; - java.util.Formatter::format@202 (line 2689)
   0.09%  │ │  0x00007fc8e0f7a90f:   lea    0x10(%r10,%rbx,1),%rsi       ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - java.util.Formatter::format@57 (line 2676)
   0.01%  │ │  0x00007fc8e0f7a914:   movslq %r11d,%rdx                   ;*invokeinterface index {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - java.util.Formatter::format@48 (line 2674)
   0.04%  │ │  0x00007fc8e0f7a917:   lea    (%r12,%r9,8),%r10            ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - java.util.Formatter$Flags::contains@8 (line 4598)
          │ │                                                            ; - java.util.Formatter$FormatSpecifier::printString@68 (line 3051)
          │ │                                                            ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
          │ │                                                            ; - java.util.Formatter::format@202 (line 2689)
          │ │  0x00007fc8e0f7a91b:   lea    0x10(%r12,%r9,8),%rdi        ;*invokeinterface index {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - java.util.Formatter::format@48 (line 2674)
   0.11%  │ │  0x00007fc8e0f7a920:   vzeroupper 
   0.17%  │ │  0x00007fc8e0f7a923:   movabs $0x7fc8e09e2d20,%r10
   0.00%  │ │  0x00007fc8e0f7a92d:   call   *%r10                        ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - java.util.Formatter::format@57 (line 2676)
   0.29%  ↘ │  0x00007fc8e0f7a930:   mov    0x48(%rsp),%r10
   0.83%    │  0x00007fc8e0f7a935:   mov    0x50(%rsp),%r8d
   0.00%    │  0x00007fc8e0f7a93a:   add    %r8d,0xc(%r10)               ;*invokevirtual coder {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.String::length@6 (line 1477)
            │                                                            ; - java.util.Formatter::parse@11 (line 2717)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
   1.41%    │  0x00007fc8e0f7a93e:   mov    0x20(%rsp),%r11d
            │  0x00007fc8e0f7a943:   inc    %r11d                        ;*return {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.Object::&lt;init&gt;@0 (line 44)
            │                                                            ; - java.util.AbstractCollection::&lt;init&gt;@1 (line 68)
            │                                                            ; - java.util.AbstractList::&lt;init&gt;@1 (line 78)
            │                                                            ; - java.util.ArrayList::&lt;init&gt;@1 (line 168)
            │                                                            ; - java.util.Formatter::parse@4 (line 2715)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
            │  0x00007fc8e0f7a946:   cmp    0x24(%rsp),%r11d
            │  0x00007fc8e0f7a94b:   jge    0x00007fc8e0f7ad4b           ;*putfield f {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.Formatter$FormatSpecifier::&lt;init&gt;@18 (line 2796)
            │                                                            ; - java.util.Formatter::parse@126 (line 2738)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.00%    │  0x00007fc8e0f7a951:   mov    0x8(%rsp),%rax
   0.15%    │  0x00007fc8e0f7a956:   mov    0x10(%rsp),%r10
   0.00%    │  0x00007fc8e0f7a95b:   mov    0x24(%rsp),%r9d
            │  0x00007fc8e0f7a960:   mov    0x28(%rsp),%esi
   0.00%    │  0x00007fc8e0f7a964:   mov    0x2c(%rsp),%edi
   0.12%    │  0x00007fc8e0f7a968:   mov    0x30(%rsp),%r13
            │  0x00007fc8e0f7a96d:   mov    %r11d,%r8d                   ;*invokevirtual isLatin1 {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.String::charAt@1 (line 1512)
            │                                                            ; - java.util.Formatter::parse@105 (line 2736)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.02%    │  0x00007fc8e0f7a970:   mov    0x10(%r13,%r11,4),%ebx       ;*putfield width {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.Formatter$FormatSpecifier::&lt;init&gt;@23 (line 2797)
            │                                                            ; - java.util.Formatter::parse@126 (line 2738)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.00%    │  0x00007fc8e0f7a975:   mov    0x8(%r12,%rbx,8),%ecx        ; implicit exception: dispatches to 0x00007fc8e0f7b818
   0.53%    │  0x00007fc8e0f7a97a:   nopw   0x0(%rax,%rax,1)
            │  0x00007fc8e0f7a980:   cmp    $0x243f28,%ecx               ;   {metadata(&apos;java/util/Formatter$FormatSpecifier&apos;)}
            │  0x00007fc8e0f7a986:   jne    0x00007fc8e0f7b7c0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.String::charAt@4 (line 1512)
            │                                                            ; - java.util.Formatter::parse@105 (line 2736)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.17%    │  0x00007fc8e0f7a98c:   shl    $0x3,%rbx
            │  0x00007fc8e0f7a990:   mov    0xc(%rbx),%edx               ;*invokestatic indexOf {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.String::indexOf@13 (line 2419)
            │                                                            ; - java.util.Formatter::parse@29 (line 2720)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.01%    │  0x00007fc8e0f7a993:   test   %edx,%edx
            │  0x00007fc8e0f7a995:   jne    0x00007fc8e0f7b204           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.String::charAt@8 (line 1513)
            │                                                            ; - java.util.Formatter::parse@105 (line 2736)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.18%    │  0x00007fc8e0f7a99b:   nopl   0x0(%rax,%rax,1)
   0.00%    │  0x00007fc8e0f7a9a0:   cmp    %edi,%r8d
            │  0x00007fc8e0f7a9a3:   jg     0x00007fc8e0f7b430           ;*invokestatic charAt {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.String::charAt@12 (line 1513)
            │                                                            ; - java.util.Formatter::parse@105 (line 2736)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
            │  0x00007fc8e0f7a9a9:   cmp    %esi,%r8d
            │  0x00007fc8e0f7a9ac:   jae    0x00007fc8e0f7b0f0           ;*invokevirtual valueOf {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.Formatter$Flags::contains@10 (line 4598)
            │                                                            ; - java.util.Formatter$FormatSpecifier::printString@68 (line 3051)
            │                                                            ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
            │                                                            ; - java.util.Formatter::format@202 (line 2689)
            │  0x00007fc8e0f7a9b2:   mov    0x10(%rax,%r8,4),%edx        ;*invokestatic charAt {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.String::charAt@12 (line 1513)
            │                                                            ; - java.util.Formatter::parse@105 (line 2736)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.16%    │  0x00007fc8e0f7a9b7:   movzbl 0x1a(%rbx),%ebp              ;*invokestatic canEncode {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.StringLatin1::indexOf@1 (line 203)
            │                                                            ; - java.lang.String::indexOf@13 (line 2419)
            │                                                            ; - java.util.Formatter::parse@29 (line 2720)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.00%    │  0x00007fc8e0f7a9bb:   test   %ebp,%ebp
            │  0x00007fc8e0f7a9bd:   data16 xchg %ax,%ax
            │  0x00007fc8e0f7a9c0:   jne    0x00007fc8e0f7b464           ;*invokestatic charAt {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.String::charAt@12 (line 1513)
            │                                                            ; - java.util.Formatter::parse@105 (line 2736)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.18%    │  0x00007fc8e0f7a9c6:   movzwl 0x18(%rbx),%ebp              ;*iload_0 {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.StringLatin1::canEncode@0 (line 54)
            │                                                            ; - java.lang.StringLatin1::indexOf@1 (line 203)
            │                                                            ; - java.lang.String::indexOf@13 (line 2419)
            │                                                            ; - java.util.Formatter::parse@29 (line 2720)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.00%    │  0x00007fc8e0f7a9ca:   cmp    $0x73,%ebp
            │  0x00007fc8e0f7a9cd:   jne    0x00007fc8e0f7b238           ;*invokestatic charAt {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.String::charAt@12 (line 1513)
            │                                                            ; - java.util.Formatter::parse@105 (line 2736)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
            │  0x00007fc8e0f7a9d3:   mov    0x8(%r12,%rdx,8),%ecx        ; implicit exception: dispatches to 0x00007fc8e0f7b844
            │                                                            ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.ArrayList::get@0 (line 427)
            │                                                            ; - java.util.Formatter::format@36 (line 2673)
            │  0x00007fc8e0f7a9d8:   mov    %r8d,0x38(%rsp)
   0.18%    │  0x00007fc8e0f7a9dd:   mov    %r13,0x30(%rsp)
   0.00%    │  0x00007fc8e0f7a9e2:   mov    %edi,0x2c(%rsp)
   0.00%    │  0x00007fc8e0f7a9e6:   mov    %esi,0x28(%rsp)
            │  0x00007fc8e0f7a9ea:   mov    %r9d,0x24(%rsp)
   0.16%    │  0x00007fc8e0f7a9ef:   mov    %r11d,0x20(%rsp)
   0.02%    │  0x00007fc8e0f7a9f4:   mov    %r10,0x10(%rsp)
   0.01%    │  0x00007fc8e0f7a9f9:   mov    %rax,0x8(%rsp)
   0.01%    │  0x00007fc8e0f7a9fe:   movabs $0x800000000,%rsi
   0.14%    │  0x00007fc8e0f7aa08:   add    %rcx,%rsi
   0.01%    │  0x00007fc8e0f7aa0b:   mov    0x20(%rsi),%r10
   0.34%    │  0x00007fc8e0f7aa0f:   movabs $0x800243af0,%r11            ;   {metadata(&apos;java/util/Formattable&apos;)}
            │  0x00007fc8e0f7aa19:   cmp    %r11,%r10
   0.15%    │  0x00007fc8e0f7aa1c:   nopl   0x0(%rax)
            │  0x00007fc8e0f7aa20:   je     0x00007fc8e0f7b120
   0.12%    │  0x00007fc8e0f7aa26:   movabs $0x800243af0,%rax            ;   {metadata(&apos;java/util/Formattable&apos;)}
   0.00%    │  0x00007fc8e0f7aa30:   mov    0x28(%rsi),%rdi
   0.18%    │  0x00007fc8e0f7aa34:   mov    (%rdi),%ecx
   0.36%    │  0x00007fc8e0f7aa36:   add    $0x8,%rdi
            │  0x00007fc8e0f7aa3a:   test   %rax,%rax
   1.38%    │  0x00007fc8e0f7aa3d:   repnz scas %es:(%rdi),%rax
   6.19%   ╭│  0x00007fc8e0f7aa40:   jne    0x00007fc8e0f7aa4a
           ││  0x00007fc8e0f7aa46:   mov    %rax,0x20(%rsi)
   1.09%   ↘│  0x00007fc8e0f7aa4a:   je     0x00007fc8e0f7b120           ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.Objects::checkIndex@3 (line 359)
            │                                                            ; - java.util.ArrayList::get@5 (line 427)
            │                                                            ; - java.util.Formatter::format@36 (line 2673)
   0.32%    │  0x00007fc8e0f7aa50:   mov    0x1c(%rbx),%r8d              ;*putfield elementData {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.ArrayList::grow@56 (line 239)
            │                                                            ; - java.util.ArrayList::grow@7 (line 244)
            │                                                            ; - java.util.ArrayList::add@7 (line 454)
            │                                                            ; - java.util.ArrayList::add@20 (line 467)
            │                                                            ; - java.util.Formatter::parse@129 (line 2738)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.84%    │  0x00007fc8e0f7aa54:   test   %r8d,%r8d
            │  0x00007fc8e0f7aa57:   je     0x00007fc8e0f7b140           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.StringLatin1::charAt@1 (line 47)
            │                                                            ; - java.lang.String::charAt@12 (line 1513)
            │                                                            ; - java.util.Formatter::parse@105 (line 2736)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.18%    │  0x00007fc8e0f7aa5d:   mov    %rbx,0x40(%rsp)
   0.32%    │  0x00007fc8e0f7aa62:   movabs $0x7fee33c60,%r10            ;   {oop(a &apos;java/util/Formatter$Flags&apos;{0x00000007fee33c60})}
            │  0x00007fc8e0f7aa6c:   mov    0xc(%r10),%r10d
   0.21%    │  0x00007fc8e0f7aa70:   mov    %r10d,%ebp
            │  0x00007fc8e0f7aa73:   and    0xc(%r12,%r8,8),%ebp         ;*invokestatic canEncode {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.StringLatin1::indexOf@1 (line 203)
            │                                                            ; - java.lang.String::indexOf@13 (line 2419)
            │                                                            ; - java.util.Formatter::parse@29 (line 2720)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.33%    │  0x00007fc8e0f7aa78:   cmp    %r10d,%ebp
   0.17%    │  0x00007fc8e0f7aa7b:   nopl   0x0(%rax,%rax,1)
            │  0x00007fc8e0f7aa80:   je     0x00007fc8e0f7b498           ;*new {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.Formatter::parse@119 (line 2738)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.16%    │  0x00007fc8e0f7aa86:   lea    (%r12,%rdx,8),%rsi           ;*synchronization entry
            │                                                            ; - java.util.Formatter$Flags::valueOf@-1 (line 4594)
            │                                                            ; - java.util.Formatter$Flags::contains@10 (line 4598)
            │                                                            ; - java.util.Formatter$FormatSpecifier::printString@68 (line 3051)
            │                                                            ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
            │                                                            ; - java.util.Formatter::format@202 (line 2689)
            │  0x00007fc8e0f7aa8a:   mov    (%rsp),%rbp
            │  0x00007fc8e0f7aa8e:   vzeroupper 
   0.20%    │  0x00007fc8e0f7aa91:   movabs $0x80000eba0,%rax
            │  0x00007fc8e0f7aa9b:   call   0x00007fc8e09f8aa0           ; ImmutableOopMap {rbp=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop [48]=Oop [64]=Oop }
            │                                                            ;*invokevirtual toString {reexecute=0 rethrow=0 return_oop=1}
            │                                                            ; - java.util.Formatter$FormatSpecifier::printString@99 (line 3056)
            │                                                            ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
            │                                                            ; - java.util.Formatter::format@202 (line 2689)
            │                                                            ;   {virtual_call}
   0.40%    │  0x00007fc8e0f7aaa0:   mov    0x40(%rsp),%r8
   0.60%    │  0x00007fc8e0f7aaa5:   mov    0x14(%r8),%ebp               ;*synchronization entry
            │                                                            ; - java.lang.StringLatin1::indexOf@-1 (line 203)
            │                                                            ; - java.lang.String::indexOf@13 (line 2419)
            │                                                            ; - java.util.Formatter::parse@29 (line 2720)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.62%    │  0x00007fc8e0f7aaa9:   cmp    $0xffffffff,%ebp
            │  0x00007fc8e0f7aaac:   jne    0x00007fc8e0f7b4c0           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.StringLatin1::charAt@1 (line 47)
            │                                                            ; - java.lang.String::charAt@12 (line 1513)
            │                                                            ; - java.util.Formatter::parse@105 (line 2736)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.21%    │  0x00007fc8e0f7aab2:   mov    0x1c(%r8),%r11d              ;*putfield elementData {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.ArrayList::grow@56 (line 239)
            │                                                            ; - java.util.ArrayList::grow@7 (line 244)
            │                                                            ; - java.util.ArrayList::add@7 (line 454)
            │                                                            ; - java.util.ArrayList::add@20 (line 467)
            │                                                            ; - java.util.Formatter::parse@129 (line 2738)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.01%    │  0x00007fc8e0f7aab6:   test   %r11d,%r11d
            │  0x00007fc8e0f7aab9:   je     0x00007fc8e0f7b15c           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.StringLatin1::charAt@1 (line 47)
            │                                                            ; - java.lang.String::charAt@12 (line 1513)
            │                                                            ; - java.util.Formatter::parse@105 (line 2736)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.12%    │  0x00007fc8e0f7aabf:   movabs $0x7fee33c50,%r10            ;   {oop(a &apos;java/util/Formatter$Flags&apos;{0x00000007fee33c50})}
   0.00%    │  0x00007fc8e0f7aac9:   mov    0xc(%r10),%r9d
   0.05%    │  0x00007fc8e0f7aacd:   mov    %r9d,%ebp
            │  0x00007fc8e0f7aad0:   and    0xc(%r12,%r11,8),%ebp        ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.StringLatin1::indexOf@4 (line 203)
            │                                                            ; - java.lang.String::indexOf@13 (line 2419)
            │                                                            ; - java.util.Formatter::parse@29 (line 2720)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.58%    │  0x00007fc8e0f7aad5:   cmp    %r9d,%ebp
            │  0x00007fc8e0f7aad8:   je     0x00007fc8e0f7b4e4           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.StringLatin1::charAt@1 (line 47)
            │                                                            ; - java.lang.String::charAt@12 (line 1513)
            │                                                            ; - java.util.Formatter::parse@105 (line 2736)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.18%    │  0x00007fc8e0f7aade:   mov    0x20(%r8),%r11d              ;*putfield elementData {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.ArrayList::grow@56 (line 239)
            │                                                            ; - java.util.ArrayList::grow@7 (line 244)
            │                                                            ; - java.util.ArrayList::add@7 (line 454)
            │                                                            ; - java.util.ArrayList::add@20 (line 467)
            │                                                            ; - java.util.Formatter::parse@129 (line 2738)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
            │  0x00007fc8e0f7aae2:   mov    0x10(%r12,%r11,8),%r9d       ; implicit exception: dispatches to 0x00007fc8e0f7b870
            │                                                            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.StringLatin1::charAt@6 (line 47)
            │                                                            ; - java.lang.String::charAt@12 (line 1513)
            │                                                            ; - java.util.Formatter::parse@105 (line 2736)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.10%    │  0x00007fc8e0f7aae7:   mov    0x10(%r8),%ebp               ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.StringLatin1::indexOf@10 (line 206)
            │                                                            ; - java.lang.String::indexOf@13 (line 2419)
            │                                                            ; - java.util.Formatter::parse@29 (line 2720)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.00%    │  0x00007fc8e0f7aaeb:   cmp    $0xffffffff,%ebp
            │  0x00007fc8e0f7aaee:   jne    0x00007fc8e0f7b315
   0.08%    │  0x00007fc8e0f7aaf4:   mov    0x8(%r12,%r9,8),%r11d        ; implicit exception: dispatches to 0x00007fc8e0f7b88c
   0.81%    │  0x00007fc8e0f7aaf9:   nopl   0x0(%rax)
            │  0x00007fc8e0f7ab00:   cmp    $0xf6c8,%r11d                ;   {metadata(&apos;java/lang/StringBuilder&apos;)}
            │  0x00007fc8e0f7ab07:   jne    0x00007fc8e0f7b26c           ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.StringLatin1::charAt@6 (line 47)
            │                                                            ; - java.lang.String::charAt@12 (line 1513)
            │                                                            ; - java.util.Formatter::parse@105 (line 2736)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.20%    │  0x00007fc8e0f7ab0d:   lea    (%r12,%r9,8),%r11            ;*invokevirtual indexOf {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.Formatter::parse@29 (line 2720)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.00%    │  0x00007fc8e0f7ab11:   mov    0x14(%rax),%r9d              ; implicit exception: dispatches to 0x00007fc8e0f7b914
            │                                                            ;*invokevirtual grow {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.ArrayList::add@7 (line 454)
            │                                                            ; - java.util.ArrayList::add@20 (line 467)
            │                                                            ; - java.util.Formatter::parse@129 (line 2738)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.00%    │  0x00007fc8e0f7ab15:   mov    0xc(%r12,%r9,8),%r10d        ; implicit exception: dispatches to 0x00007fc8e0f7b8b0
            │                                                            ;*invokevirtual isLatin1 {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.String::charAt@1 (line 1512)
            │                                                            ; - java.util.Formatter::parse@105 (line 2736)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.02%    │  0x00007fc8e0f7ab1a:   mov    %r11,0x48(%rsp)
   0.17%    │  0x00007fc8e0f7ab1f:   mov    %rax,0x40(%rsp)
            │  0x00007fc8e0f7ab24:   mov    0x14(%r11),%r8d              ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.StringLatin1::charAt@6 (line 47)
            │                                                            ; - java.lang.String::charAt@12 (line 1513)
            │                                                            ; - java.util.Formatter::parse@105 (line 2736)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.00%    │  0x00007fc8e0f7ab28:   mov    %r8d,0x3c(%rsp)
   0.11%    │  0x00007fc8e0f7ab2d:   mov    0xc(%r12,%r8,8),%r11d        ; implicit exception: dispatches to 0x00007fc8e0f7b8cc
            │                                                            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.StringLatin1::indexOf@10 (line 206)
            │                                                            ; - java.lang.String::indexOf@13 (line 2419)
            │                                                            ; - java.util.Formatter::parse@29 (line 2720)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.55%    │  0x00007fc8e0f7ab32:   mov    0x48(%rsp),%r8
            │  0x00007fc8e0f7ab37:   mov    0xc(%r8),%ebx                ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.Formatter$Conversion::isText@1 (line 4780)
            │                                                            ; - java.util.Formatter$FormatSpecifier::&lt;init&gt;@64 (line 2873)
            │                                                            ; - java.util.Formatter::parse@126 (line 2738)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.01%    │  0x00007fc8e0f7ab3b:   movsbl 0x10(%rax),%edi              ;*invokevirtual isLatin1 {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.String::charAt@1 (line 1512)
            │                                                            ; - java.util.Formatter::parse@105 (line 2736)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.00%    │  0x00007fc8e0f7ab3f:   mov    0x48(%rsp),%r8
   0.17%    │  0x00007fc8e0f7ab44:   movsbl 0x10(%r8),%edx               ;*invokestatic charAt {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.String::charAt@12 (line 1513)
            │                                                            ; - java.util.Formatter::parse@105 (line 2736)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
            │  0x00007fc8e0f7ab49:   mov    %edi,%ecx
   0.01%    │  0x00007fc8e0f7ab4b:   sar    %cl,%r10d                    ;*synchronization entry
            │                                                            ; - java.lang.String::indexOf@-1 (line 2419)
            │                                                            ; - java.util.Formatter::parse@29 (line 2720)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.16%    │  0x00007fc8e0f7ab4e:   mov    %r10d,0x50(%rsp)
   0.01%    │  0x00007fc8e0f7ab53:   mov    %r11d,%r10d
            │  0x00007fc8e0f7ab56:   mov    %edx,%ecx
   0.16%    │  0x00007fc8e0f7ab58:   sar    %cl,%r10d
   0.00%    │  0x00007fc8e0f7ab5b:   mov    0x50(%rsp),%ebp
   0.16%    │  0x00007fc8e0f7ab5f:   add    %ebx,%ebp                    ;*invokestatic of {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.Character::isUpperCase@1 (line 9563)
            │                                                            ; - java.lang.Character::isUpperCase@1 (line 9533)
            │                                                            ; - java.util.Formatter$FormatSpecifier::&lt;init&gt;@42 (line 2869)
            │                                                            ; - java.util.Formatter::parse@126 (line 2738)
            │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.00%    │  0x00007fc8e0f7ab61:   mov    %ebp,%r8d
   0.00%    │  0x00007fc8e0f7ab64:   sub    %r10d,%r8d
   0.00%    │  0x00007fc8e0f7ab67:   test   %r8d,%r8d
            ╰  0x00007fc8e0f7ab6a:   jle    0x00007fc8e0f7a8a0           ;*invokestatic isUpperCase {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.Character::isUpperCase@1 (line 9533)
                                                                         ; - java.util.Formatter$FormatSpecifier::&lt;init&gt;@42 (line 2869)
                                                                         ; - java.util.Formatter::parse@126 (line 2738)
                                                                         ; - java.util.Formatter::format@12 (line 2671)
   0.03%       0x00007fc8e0f7ab70:   mov    $0x2,%r9d
               0x00007fc8e0f7ab76:   shl    %cl,%r9d
   0.07%       0x00007fc8e0f7ab79:   shl    %cl,%ebp
               0x00007fc8e0f7ab7b:   add    %r11d,%r9d                   ;*invokestatic of {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.Character::isUpperCase@1 (line 9563)
                                                                         ; - java.lang.Character::isUpperCase@1 (line 9533)
                                                                         ; - java.util.Formatter$FormatSpecifier::&lt;init&gt;@42 (line 2869)
                                                                         ; - java.util.Formatter::parse@126 (line 2738)
                                                                         ; - java.util.Formatter::format@12 (line 2671)
   0.04%       0x00007fc8e0f7ab7e:   sub    %r11d,%ebp
               0x00007fc8e0f7ab81:   cmp    %r9d,%ebp
               0x00007fc8e0f7ab84:   mov    %ebp,%r8d
               0x00007fc8e0f7ab87:   cmovl  %r9d,%r8d
   0.05%       0x00007fc8e0f7ab8b:   add    %r11d,%r8d                   ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.StringLatin1::indexOf@10 (line 206)
                                                                         ; - java.lang.String::indexOf@13 (line 2419)
                                                                         ; - java.util.Formatter::parse@29 (line 2720)
                                                                         ; - java.util.Formatter::format@12 (line 2671)
               0x00007fc8e0f7ab8e:   mov    %r8d,%r10d
               0x00007fc8e0f7ab91:   dec    %r10d
               0x00007fc8e0f7ab94:   nopl   0x0(%rax,%rax,1)
   0.05%       0x00007fc8e0f7ab9c:   data16 data16 xchg %ax,%ax
               0x00007fc8e0f7aba0:   cmp    $0x7ffffff7,%r10d
               0x00007fc8e0f7aba7:   jae    0x00007fc8e0f7b655           ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.StringLatin1::charAt@6 (line 47)
                                                                         ; - java.lang.String::charAt@12 (line 1513)
                                                                         ; - java.util.Formatter::parse@105 (line 2736)
                                                                         ; - java.util.Formatter::format@12 (line 2671)
               0x00007fc8e0f7abad:   cmp    $0x7fffffff,%r8d
               0x00007fc8e0f7abb4:   je     0x00007fc8e0f7b694           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.StringLatin1::charAt@7 (line 47)
                                                                         ; - java.lang.String::charAt@12 (line 1513)
                                                                         ; - java.util.Formatter::parse@105 (line 2736)
                                                                         ; - java.util.Formatter::format@12 (line 2671)
   0.00%       0x00007fc8e0f7abba:   sar    %cl,%r8d
   0.15%       0x00007fc8e0f7abbd:   shl    %cl,%r8d                     ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.StringLatin1::indexOf@13 (line 207)
                                                                         ; - java.lang.String::indexOf@13 (line 2419)
                                                                         ; - java.util.Formatter::parse@29 (line 2720)
                                                                         ; - java.util.Formatter::format@12 (line 2671)
   0.01%       0x00007fc8e0f7abc0:   mov    %r8d,0x54(%rsp)
   0.04%       0x00007fc8e0f7abc5:   cmp    $0x100000,%r8d
               0x00007fc8e0f7abcc:   ja     0x00007fc8e0f7b558           ;*putfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.ArrayList::grow@56 (line 239)
                                                                         ; - java.util.ArrayList::grow@7 (line 244)
                                                                         ; - java.util.ArrayList::add@7 (line 454)
                                                                         ; - java.util.ArrayList::add@20 (line 467)
                                                                         ; - java.util.Formatter::parse@129 (line 2738)
                                                                         ; - java.util.Formatter::format@12 (line 2671)
               0x00007fc8e0f7abd2:   movslq %r8d,%r10                    ;*anewarray {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.ArrayList::grow@52 (line 239)
                                                                         ; - java.util.ArrayList::grow@7 (line 244)
                                                                         ; - java.util.ArrayList::add@7 (line 454)
                                                                         ; - java.util.ArrayList::add@20 (line 467)
                                                                         ; - java.util.Formatter::parse@129 (line 2738)
                                                                         ; - java.util.Formatter::format@12 (line 2671)
   0.01%       0x00007fc8e0f7abd5:   cmp    %r8d,%r11d
               0x00007fc8e0f7abd8:   mov    %r8d,%ebp
   0.05%       0x00007fc8e0f7abdb:   cmovl  %r11d,%ebp                   ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.CharacterDataLatin1::isUpperCase@7 (line 96)
                                                                         ; - java.lang.Character::isUpperCase@5 (line 9563)
                                                                         ; - java.lang.Character::isUpperCase@1 (line 9533)
                                                                         ; - java.util.Formatter$FormatSpecifier::&lt;init&gt;@42 (line 2869)
                                                                         ; - java.util.Formatter::parse@126 (line 2738)
                                                                         ; - java.util.Formatter::format@12 (line 2671)
   0.00%       0x00007fc8e0f7abdf:   nop
   0.00%       0x00007fc8e0f7abe0:   cmp    %ebp,%r11d
               0x00007fc8e0f7abe3:   jb     0x00007fc8e0f7b5f3
   0.00%       0x00007fc8e0f7abe9:   cmp    %ebp,%r8d
               0x00007fc8e0f7abec:   jb     0x00007fc8e0f7b5f3           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.CharacterData::of@4 (line 72)
                                                                         ; - java.lang.Character::isUpperCase@1 (line 9563)
                                                                         ; - java.lang.Character::isUpperCase@1 (line 9533)
                                                                         ; - java.util.Formatter$FormatSpecifier::&lt;init&gt;@42 (line 2869)
                                                                         ; - java.util.Formatter::parse@126 (line 2738)
                                                                         ; - java.util.Formatter::format@12 (line 2671)
   0.04%       0x00007fc8e0f7abf2:   add    $0x17,%r10                   ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.ArrayList::add@17 (line 467)
                                                                         ; - java.util.Formatter::parse@129 (line 2738)
                                                                         ; - java.util.Formatter::format@12 (line 2671)
               0x00007fc8e0f7abf6:   mov    %r10,0x58(%rsp)
   0.01%       0x00007fc8e0f7abfb:   and    $0xfffffffffffffff8,%r10     ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.CharacterDataLatin1::isUpperCase@7 (line 96)
                                                                         ; - java.lang.Character::isUpperCase@5 (line 9563)
                                                                         ; - java.lang.Character::isUpperCase@1 (line 9533)
                                                                         ; - java.util.Formatter$FormatSpecifier::&lt;init&gt;@42 (line 2869)
                                                                         ; - java.util.Formatter::parse@126 (line 2738)
                                                                         ; - java.util.Formatter::format@12 (line 2671)
               0x00007fc8e0f7abff:   mov    %r10,0x60(%rsp)
   0.04%       0x00007fc8e0f7ac04:   cmp    $0x100000,%r8d
               0x00007fc8e0f7ac0b:   ja     0x00007fc8e0f7afec
   0.00%       0x00007fc8e0f7ac11:   mov    0x108(%r15),%rbx
   0.00%       0x00007fc8e0f7ac18:   mov    %rbx,%r11
               0x00007fc8e0f7ac1b:   mov    0x60(%rsp),%r10
   0.04%       0x00007fc8e0f7ac20:   add    %r10,%r11
   0.00%       0x00007fc8e0f7ac23:   cmp    0x118(%r15),%r11
               0x00007fc8e0f7ac2a:   jae    0x00007fc8e0f7afec           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.StringLatin1::indexOf@23 (line 209)
                                                                         ; - java.lang.String::indexOf@13 (line 2419)
                                                                         ; - java.util.Formatter::parse@29 (line 2720)
                                                                         ; - java.util.Formatter::format@12 (line 2671)
   0.00%       0x00007fc8e0f7ac30:   mov    %r11,0x108(%r15)
   0.06%       0x00007fc8e0f7ac37:   prefetchw 0xc0(%r11)
   0.19%       0x00007fc8e0f7ac3f:   movq   $0x1,(%rbx)
               0x00007fc8e0f7ac46:   prefetchw 0x100(%r11)
   0.04%       0x00007fc8e0f7ac4e:   movl   $0x6848,0x8(%rbx)            ;   {metadata({type array byte})}
               0x00007fc8e0f7ac55:   mov    %r8d,0xc(%rbx)
   0.04%       0x00007fc8e0f7ac59:   prefetchw 0x140(%r11)
   0.02%       0x00007fc8e0f7ac61:   prefetchw 0x180(%r11)               ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.CharacterDataLatin1::isUpperCase@7 (line 96)
                                                                         ; - java.lang.Character::isUpperCase@5 (line 9563)
                                                                         ; - java.lang.Character::isUpperCase@1 (line 9533)
                                                                         ; - java.util.Formatter$FormatSpecifier::&lt;init&gt;@42 (line 2869)
                                                                         ; - java.util.Formatter::parse@126 (line 2738)
                                                                         ; - java.util.Formatter::format@12 (line 2671)
   0.03%       0x00007fc8e0f7ac69:   mov    %rbx,%r10
               0x00007fc8e0f7ac6c:   add    $0x10,%r10
   0.04%       0x00007fc8e0f7ac70:   mov    0x58(%rsp),%r9
               0x00007fc8e0f7ac75:   shr    $0x3,%r9
               0x00007fc8e0f7ac79:   mov    %rbx,%r13
               0x00007fc8e0f7ac7c:   shr    $0x3,%r13
   0.07%       0x00007fc8e0f7ac80:   test   %ebp,%ebp
               0x00007fc8e0f7ac82:   je     0x00007fc8e0f7b584           ;*invokevirtual elementData {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.ArrayList::get@11 (line 428)
                                                                         ; - java.util.Formatter::format@36 (line 2673)
               0x00007fc8e0f7ac88:   mov    0x3c(%rsp),%r8d
   0.00%       0x00007fc8e0f7ac8d:   shl    $0x3,%r8                     ;*invokevirtual valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.Formatter$Flags::contains@5 (line 4598)
                                                                         ; - java.util.Formatter$FormatSpecifier::printString@68 (line 3051)
                                                                         ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                         ; - java.util.Formatter::format@202 (line 2689)
               0x00007fc8e0f7ac91:   mov    0x3c(%rsp),%r11d
   0.03%       0x00007fc8e0f7ac96:   lea    0x10(%r12,%r11,8),%r8
               0x00007fc8e0f7ac9b:   nopl   0x0(%rax,%rax,1)
   0.01%       0x00007fc8e0f7aca0:   cmp    0x54(%rsp),%ebp
               0x00007fc8e0f7aca4:   jl     0x00007fc8e0f7aeca           ;*synchronization entry
                                                                         ; - java.util.ArrayList::elementData@-1 (line 411)
                                                                         ; - java.util.ArrayList::get@11 (line 428)
                                                                         ; - java.util.Formatter::format@36 (line 2673)
               0x00007fc8e0f7acaa:   mov    0x60(%rsp),%rdx
               0x00007fc8e0f7acaf:   add    $0xfffffffffffffff0,%rdx
               0x00007fc8e0f7acb3:   shr    $0x3,%rdx                    ;*getfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.ArrayList::elementData@1 (line 411)
                                                                         ; - java.util.ArrayList::get@11 (line 428)
                                                                         ; - java.util.Formatter::format@36 (line 2673)
....................................................................................................
  25.70%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 555 

   0.02%                0x00007fc8e0f6c10f:   vmovd  %xmm0,%r9d
                        0x00007fc8e0f6c114:   test   %r9d,%r9d
                        0x00007fc8e0f6c117:   je     0x00007fc8e0f6cf28           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@891 (line 680)
                        0x00007fc8e0f6c11d:   movabs $0x8000000000000000,%rdx
                        0x00007fc8e0f6c127:   cmp    %rdx,%rax
          ╭             0x00007fc8e0f6c12a:   jne    0x00007fc8e0f6c134
          │             0x00007fc8e0f6c12c:   xor    %edx,%edx
          │             0x00007fc8e0f6c12e:   cmp    $0xffffffffffffffff,%r10
          │╭            0x00007fc8e0f6c132:   je     0x00007fc8e0f6c139
   0.03%  ↘│            0x00007fc8e0f6c134:   cqto   
           │            0x00007fc8e0f6c136:   idiv   %r10
   0.91%   ↘            0x00007fc8e0f6c139:   vmovq  %rax,%xmm0
   0.00%                0x00007fc8e0f6c13e:   mov    %r8,%rdi
                        0x00007fc8e0f6c141:   shl    %rdi
   0.02%                0x00007fc8e0f6c144:   mov    %rdx,%r9
                        0x00007fc8e0f6c147:   shl    $0x3,%r9
   0.00%                0x00007fc8e0f6c14b:   shl    %rdx
                        0x00007fc8e0f6c14e:   add    %r9,%rdx                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.03%                0x00007fc8e0f6c151:   shl    $0x3,%r8
   0.00%                0x00007fc8e0f6c155:   add    %r8,%rdi                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
   0.00%                0x00007fc8e0f6c158:   test   %rdi,%rdi
                        0x00007fc8e0f6c15b:   nopl   0x0(%rax,%rax,1)
   0.02%                0x00007fc8e0f6c160:   jle    0x00007fc8e0f6ce5c           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
   0.00%                0x00007fc8e0f6c166:   cmp    %rdi,%rdx
                        0x00007fc8e0f6c169:   jl     0x00007fc8e0f6c709           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
                        0x00007fc8e0f6c16f:   xor    %r9d,%r9d                    ;*istore {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@994 (line 689)
                        0x00007fc8e0f6c172:   mov    %rdi,%rax
   0.02%                0x00007fc8e0f6c175:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
                        0x00007fc8e0f6c178:   cmp    %r14,%rax
                        0x00007fc8e0f6c17b:   nopl   0x0(%rax,%rax,1)
                        0x00007fc8e0f6c180:   jg     0x00007fc8e0f6c714           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
   0.03%                0x00007fc8e0f6c186:   vmovq  %rdx,%xmm1
                        0x00007fc8e0f6c18b:   xor    %r13d,%r13d                  ;*istore {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1012 (line 690)
                        0x00007fc8e0f6c18e:   cmp    $0x1,%ecx
                        0x00007fc8e0f6c191:   jle    0x00007fc8e0f6c9c4
                        0x00007fc8e0f6c197:   vmovq  %xmm0,%r8
   0.03%                0x00007fc8e0f6c19c:   mov    %r8d,%r8d
   0.01%                0x00007fc8e0f6c19f:   add    $0x30,%r8d
                        0x00007fc8e0f6c1a3:   vmovd  %xmm3,%ebx
                        0x00007fc8e0f6c1a7:   mov    %r8w,0x12(%r12,%rbx,8)       ;*castore {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.02%                0x00007fc8e0f6c1ad:   vmovq  %xmm1,%r8
   0.00%                0x00007fc8e0f6c1b2:   cmp    %rdi,%r8
            ╭           0x00007fc8e0f6c1b5:   jl     0x00007fc8e0f6c354           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
            │           0x00007fc8e0f6c1bb:   nopl   0x0(%rax,%rax,1)
            │           0x00007fc8e0f6c1c0:   test   %r13d,%r13d
            │           0x00007fc8e0f6c1c3:   jne    0x00007fc8e0f6d0ac           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
   0.03%    │           0x00007fc8e0f6c1c9:   vmovq  %xmm1,%rax
   0.00%    │           0x00007fc8e0f6c1ce:   movabs $0x8000000000000000,%rdx
            │           0x00007fc8e0f6c1d8:   cmp    %rdx,%rax
            │╭          0x00007fc8e0f6c1db:   jne    0x00007fc8e0f6c1e5
            ││          0x00007fc8e0f6c1dd:   xor    %edx,%edx
            ││          0x00007fc8e0f6c1df:   cmp    $0xffffffffffffffff,%r10
            ││╭         0x00007fc8e0f6c1e3:   je     0x00007fc8e0f6c1ea
            │↘│         0x00007fc8e0f6c1e5:   cqto   
   0.02%    │ │         0x00007fc8e0f6c1e7:   idiv   %r10
   0.95%    │ ↘         0x00007fc8e0f6c1ea:   vmovq  %rax,%xmm0
            │           0x00007fc8e0f6c1ef:   mov    %rdi,%rsi
            │           0x00007fc8e0f6c1f2:   shl    %rsi
   0.01%    │           0x00007fc8e0f6c1f5:   mov    %rdx,%r8
   0.00%    │           0x00007fc8e0f6c1f8:   shl    $0x3,%r8
            │           0x00007fc8e0f6c1fc:   shl    %rdx
            │           0x00007fc8e0f6c1ff:   add    %r8,%rdx                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
            │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.02%    │           0x00007fc8e0f6c202:   shl    $0x3,%rdi
   0.00%    │           0x00007fc8e0f6c206:   add    %rdi,%rsi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
            │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
   0.00%    │           0x00007fc8e0f6c209:   test   %rsi,%rsi
            │           0x00007fc8e0f6c20c:   jle    0x00007fc8e0f6d0b9           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
            │           0x00007fc8e0f6c212:   cmp    %rsi,%rdx
            │           0x00007fc8e0f6c215:   jl     0x00007fc8e0f6c725           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.02%    │           0x00007fc8e0f6c21b:   xor    %r9d,%r9d                    ;*istore {reexecute=0 rethrow=0 return_oop=0}
            │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@994 (line 689)
   0.01%    │           0x00007fc8e0f6c21e:   mov    %rsi,%rax
            │           0x00007fc8e0f6c221:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
            │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
            │           0x00007fc8e0f6c224:   cmp    %r14,%rax
            │           0x00007fc8e0f6c227:   jg     0x00007fc8e0f6c730           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
   0.02%    │           0x00007fc8e0f6c22d:   xor    %r13d,%r13d                  ;*istore {reexecute=0 rethrow=0 return_oop=0}
            │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1012 (line 690)
   0.00%    │           0x00007fc8e0f6c230:   mov    %ecx,(%rsp)
            │           0x00007fc8e0f6c233:   vmovq  %r10,%xmm4
            │           0x00007fc8e0f6c238:   lea    (%r12,%rbx,8),%rbp
   0.02%    │           0x00007fc8e0f6c23c:   nopl   0x0(%rax)
   0.00%    │           0x00007fc8e0f6c240:   cmp    $0x2,%ecx
            │           0x00007fc8e0f6c243:   jle    0x00007fc8e0f6caa4           ;*castore {reexecute=0 rethrow=0 return_oop=0}
            │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
            │           0x00007fc8e0f6c249:   mov    (%rsp),%r10d
            │           0x00007fc8e0f6c24d:   sub    %r11d,%r10d
   0.03%    │           0x00007fc8e0f6c250:   mov    (%rsp),%r8d
   0.00%    │           0x00007fc8e0f6c254:   xor    %ecx,%ecx
            │           0x00007fc8e0f6c256:   cmp    %r11d,%r8d
            │           0x00007fc8e0f6c259:   cmovl  %ecx,%r10d
   0.03%    │           0x00007fc8e0f6c25d:   cmp    $0x3e8,%r10d
   0.00%    │           0x00007fc8e0f6c264:   mov    $0x3e8,%ebx
            │           0x00007fc8e0f6c269:   cmova  %ebx,%r10d
   0.02%    │           0x00007fc8e0f6c26d:   add    %r11d,%r10d
   0.00%    │           0x00007fc8e0f6c270:   vmovq  %rdx,%xmm1
            │  ╭        0x00007fc8e0f6c275:   jmp    0x00007fc8e0f6c2a0
            │  │        0x00007fc8e0f6c277:   nopw   0x0(%rax,%rax,1)
   0.01%    │  │   ↗    0x00007fc8e0f6c280:   xor    %r8d,%r8d                    ;*istore {reexecute=0 rethrow=0 return_oop=0}
            │  │   │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1012 (line 690)
   0.25%    │  │   │↗   0x00007fc8e0f6c283:   cmp    %r10d,%ecx
            │  │   ││   0x00007fc8e0f6c286:   jge    0x00007fc8e0f6c785
   0.05%    │  │   ││   0x00007fc8e0f6c28c:   mov    %r11d,%edi
   0.03%    │  │   ││   0x00007fc8e0f6c28f:   mov    %ecx,%r11d
   0.01%    │  │   ││   0x00007fc8e0f6c292:   mov    %r8d,%r13d
   0.25%    │  │   ││   0x00007fc8e0f6c295:   mov    %rbx,%rsi
   0.05%    │  │   ││   0x00007fc8e0f6c298:   vmovq  %rdx,%xmm1
   0.04%    │  │   ││   0x00007fc8e0f6c29d:   mov    %edi,%r9d                    ;*castore {reexecute=0 rethrow=0 return_oop=0}
            │  │   ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.01%    │  ↘   ││   0x00007fc8e0f6c2a0:   vmovq  %xmm0,%r8
   0.26%    │      ││   0x00007fc8e0f6c2a5:   mov    %r8d,%ebx
   0.05%    │      ││   0x00007fc8e0f6c2a8:   mov    %r11d,%ecx
   0.03%    │      ││   0x00007fc8e0f6c2ab:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │      ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1029 (line 700)
   0.01%    │      ││   0x00007fc8e0f6c2ad:   add    $0x30,%ebx
   0.30%    │      ││   0x00007fc8e0f6c2b0:   mov    %bx,0x10(%rbp,%r11,2)        ;*castore {reexecute=0 rethrow=0 return_oop=0}
            │      ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.06%    │      ││   0x00007fc8e0f6c2b6:   vmovq  %xmm1,%r11
   0.02%    │      ││   0x00007fc8e0f6c2bb:   nopl   0x0(%rax,%rax,1)
   0.02%    │      ││   0x00007fc8e0f6c2c0:   cmp    %rsi,%r11
            │   ╭  ││   0x00007fc8e0f6c2c3:   jl     0x00007fc8e0f6c359           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            │   │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
   0.34%    │   │  ││   0x00007fc8e0f6c2c9:   test   %r13d,%r13d
            │   │  ││   0x00007fc8e0f6c2cc:   jne    0x00007fc8e0f6c7ae           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            │   │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
   0.04%    │   │  ││   0x00007fc8e0f6c2d2:   vmovq  %xmm1,%rax
   0.00%    │   │  ││   0x00007fc8e0f6c2d7:   vmovq  %xmm4,%r11
   0.01%    │   │  ││   0x00007fc8e0f6c2dc:   movabs $0x8000000000000000,%rdx
   0.25%    │   │  ││   0x00007fc8e0f6c2e6:   cmp    %rdx,%rax
            │   │╭ ││   0x00007fc8e0f6c2e9:   jne    0x00007fc8e0f6c2f3
            │   ││ ││   0x00007fc8e0f6c2eb:   xor    %edx,%edx
            │   ││ ││   0x00007fc8e0f6c2ed:   cmp    $0xffffffffffffffff,%r11
            │   ││╭││   0x00007fc8e0f6c2f1:   je     0x00007fc8e0f6c2f8
   0.05%    │   │↘│││   0x00007fc8e0f6c2f3:   cqto   
            │   │ │││   0x00007fc8e0f6c2f5:   idiv   %r11
  13.45%    │   │ ↘││   0x00007fc8e0f6c2f8:   vmovq  %rax,%xmm0
   0.00%    │   │  ││   0x00007fc8e0f6c2fd:   mov    %rsi,%rbx
   0.02%    │   │  ││   0x00007fc8e0f6c300:   shl    %rbx
   0.26%    │   │  ││   0x00007fc8e0f6c303:   mov    %rdx,%r11
   0.05%    │   │  ││   0x00007fc8e0f6c306:   shl    $0x3,%r11
            │   │  ││   0x00007fc8e0f6c30a:   shl    %rdx
   0.01%    │   │  ││   0x00007fc8e0f6c30d:   add    %r11,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
            │   │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.26%    │   │  ││   0x00007fc8e0f6c310:   mov    %rsi,%r11
   0.04%    │   │  ││   0x00007fc8e0f6c313:   shl    $0x3,%r11
   0.01%    │   │  ││   0x00007fc8e0f6c317:   add    %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
            │   │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
   0.01%    │   │  ││   0x00007fc8e0f6c31a:   nopw   0x0(%rax,%rax,1)
   0.29%    │   │  ││   0x00007fc8e0f6c320:   test   %rbx,%rbx
            │   │  ││   0x00007fc8e0f6c323:   jle    0x00007fc8e0f6c7ec           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │   │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
   0.04%    │   │  ││   0x00007fc8e0f6c329:   cmp    %rbx,%rdx
            │   │  ││   0x00007fc8e0f6c32c:   jl     0x00007fc8e0f6c3cc           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │   │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.00%    │   │  ││   0x00007fc8e0f6c332:   xor    %r11d,%r11d                  ;*istore {reexecute=0 rethrow=0 return_oop=0}
            │   │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@994 (line 689)
   0.03%    │   │  ││   0x00007fc8e0f6c335:   mov    %rdx,%rax
   0.27%    │   │  ││   0x00007fc8e0f6c338:   add    %rbx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
            │   │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
   0.03%    │   │  ││   0x00007fc8e0f6c33b:   nopl   0x0(%rax,%rax,1)
   0.00%    │   │  ││   0x00007fc8e0f6c340:   cmp    %r14,%rax
            │   │  ╰│   0x00007fc8e0f6c343:   jle    0x00007fc8e0f6c280           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │   │   │                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
   0.01%    │   │   │   0x00007fc8e0f6c349:   mov    $0x1,%r8d
            │   │   ╰   0x00007fc8e0f6c34f:   jmp    0x00007fc8e0f6c283
            ↘   │       0x00007fc8e0f6c354:   mov    $0x2,%ecx                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
                │                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1067 (line 704)
                ↘       0x00007fc8e0f6c359:   vmovq  %xmm1,%r10
   0.00%                0x00007fc8e0f6c35e:   shl    %r10
   0.03%                0x00007fc8e0f6c361:   sub    %r14,%r10                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1048 (line 702)
                        0x00007fc8e0f6c364:   vmovq  %xmm1,%r11
                        0x00007fc8e0f6c369:   test   %r11,%r11
                        0x00007fc8e0f6c36c:   je     0x00007fc8e0f6cf50           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1056 (line 703)
                        0x00007fc8e0f6c372:   vmovq  %xmm2,%r11
   0.03%                0x00007fc8e0f6c377:   mov    %ecx,0x14(%r11)              ;*putfield nDigits {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1442 (line 762)
                        0x00007fc8e0f6c37b:   mov    %r12d,0xc(%r11)              ;*putfield decExponent {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1431 (line 760)
                        0x00007fc8e0f6c37f:   mov    %r12d,0x10(%r11)             ;*putfield firstDigitIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1436 (line 761)
   0.00%                0x00007fc8e0f6c383:   cmp    %r14,%rax
                        0x00007fc8e0f6c386:   jle    0x00007fc8e0f6cf88           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1447 (line 766)
   0.02%                0x00007fc8e0f6c38c:   test   %r9d,%r9d
                        0x00007fc8e0f6c38f:   je     0x00007fc8e0f6c517           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1452 (line 767)
                        0x00007fc8e0f6c395:   xor    %r11d,%r11d
                        0x00007fc8e0f6c398:   cmp    %r11,%r10
   0.00%                0x00007fc8e0f6c39b:   mov    $0xffffffff,%ebp
   0.03%             ╭  0x00007fc8e0f6c3a0:   jl     0x00007fc8e0f6c3aa
                     │  0x00007fc8e0f6c3a2:   setne  %bpl
                     │  0x00007fc8e0f6c3a6:   movzbl %bpl,%ebp                    ;*lcmp {reexecute=0 rethrow=0 return_oop=0}
                     │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1458 (line 768)
                     ↘  0x00007fc8e0f6c3aa:   test   %r10,%r10
                        0x00007fc8e0f6c3ad:   je     0x00007fc8e0f6d0da
                        0x00007fc8e0f6c3b3:   test   %r10,%r10
                        0x00007fc8e0f6c3b6:   jle    0x00007fc8e0f6c562           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1459 (line 768)
                        0x00007fc8e0f6c3bc:   mov    $0xffffff45,%esi
                        0x00007fc8e0f6c3c1:   vmovsd %xmm2,(%rsp)
....................................................................................................
  19.34%  <total for region 2>

....[Hottest Regions]...............................................................................
  25.70%         c2, level 4  java.util.Formatter::format, version 2, compile id 599 
  19.34%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 555 
   8.28%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   4.03%         c2, level 4  java.util.Formatter::format, version 2, compile id 599 
   3.93%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 555 
   3.36%         c2, level 4  java.lang.Long::toString, version 2, compile id 609 
   3.26%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 555 
   3.01%         c2, level 4  java.lang.Double::toString, version 2, compile id 623 
   2.05%         c2, level 4  java.util.Formatter::format, version 2, compile id 599 
   1.93%         c2, level 4  java.util.Formatter::format, version 2, compile id 599 
   1.77%         c2, level 4  java.lang.Long::toString, version 2, compile id 609 
   1.69%         c2, level 4  java.lang.Long::toString, version 2, compile id 605 
   1.37%              kernel  [unknown] 
   1.14%         c2, level 4  java.lang.Integer::toString, version 2, compile id 621 
   1.11%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format, version 2, compile id 615 
   1.09%         c2, level 4  java.lang.Float::toString, version 2, compile id 619 
   1.07%         c2, level 4  java.lang.Float::toString, version 2, compile id 619 
   1.03%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.00%         c2, level 4  java.lang.String::toString, version 2, compile id 520 
   0.96%         c2, level 4  java.lang.Boolean::toString, version 2, compile id 625 
  12.88%  <...other 432 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  35.85%         c2, level 4  java.util.Formatter::format, version 2, compile id 599 
  26.91%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 555 
   8.28%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   5.96%         c2, level 4  java.lang.Long::toString, version 2, compile id 609 
   3.32%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format, version 2, compile id 615 
   3.26%         c2, level 4  java.lang.Double::toString, version 2, compile id 623 
   2.87%         c2, level 4  java.lang.Float::toString, version 2, compile id 619 
   2.64%              kernel  [unknown] 
   2.51%         c2, level 4  java.lang.Integer::toString, version 2, compile id 621 
   1.69%         c2, level 4  java.lang.Long::toString, version 2, compile id 605 
   1.03%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.00%         c2, level 4  java.lang.String::toString, version 2, compile id 520 
   0.96%         c2, level 4  java.lang.Boolean::toString, version 2, compile id 625 
   0.84%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::getChars, version 2, compile id 611 
   0.76%                      <unknown> 
   0.64%        runtime stub  StubRoutines::jshort_disjoint_arraycopy 
   0.52%         c2, level 4  java.util.Formatter$Conversion::isValid, version 2, compile id 552 
   0.35%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.StringConcatenationBenchmark_string_format_jmhTest::string_format_avgt_jmhStub, version 5, compile id 651 
   0.03%        libc-2.31.so  [unknown] 
   0.03%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.56%  <...other 142 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  86.04%         c2, level 4
   9.95%        runtime stub
   2.64%              kernel
   0.76%                    
   0.44%           libjvm.so
   0.12%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.string_format
# Parameters: (capacity = 128, coder = UTF16)

# Run progress: 87.50% complete, ETA 00:01:47
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1835.904 ns/op
# Warmup Iteration   2: 1538.025 ns/op
# Warmup Iteration   3: 1536.606 ns/op
# Warmup Iteration   4: 1536.724 ns/op
# Warmup Iteration   5: 1535.888 ns/op
Iteration   1: 1536.085 ns/op
Iteration   2: 1535.955 ns/op
Iteration   3: 1536.137 ns/op
Iteration   4: 1535.523 ns/op
Iteration   5: 1535.814 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.string_format":
  1535.903 ±(99.9%) 0.949 ns/op [Average]
  (min, avg, max) = (1535.523, 1535.903, 1536.137), stdev = 0.246
  CI (99.9%): [1534.954, 1536.852] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.string_format:·asm":
PrintAssembly processed: 152109 total address lines.
Perf output processed (skipped 55.567 seconds):
 Column 1: cycles (51031 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 563 

                                 0x00007f928cf6d3e3:   mov    %ecx,0x14(%rsp)
                                 0x00007f928cf6d3e7:   mov    %r10d,0x18(%rsp)
                                 0x00007f928cf6d3ec:   mov    %r11d,0x1c(%rsp)
                                 0x00007f928cf6d3f1:   mov    %r9d,0x20(%rsp)
                                 0x00007f928cf6d3f6:   nop
                                 0x00007f928cf6d3f7:   call   0x00007f928ca01600           ; ImmutableOopMap {rbp=Oop }
                                                                                           ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                                           ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@111 (line 448)
                                                                                           ;   {runtime_call UncommonTrapBlob}
                                 0x00007f928cf6d3fc:   mov    %r11d,%eax
   0.00%                         0x00007f928cf6d3ff:   mov    %ecx,%r13d
   0.03%                         0x00007f928cf6d402:   vcvtsi2sd %edx,%xmm1,%xmm1
   0.03%                         0x00007f928cf6d406:   movabs $0x3ff0000000000000,%r11
                                 0x00007f928cf6d410:   vmulsd -0x118(%rip),%xmm1,%xmm1        # 0x00007f928cf6d300
                                                                                           ;   {section_word}
   0.03%                         0x00007f928cf6d418:   movabs $0xfffffffffffff,%r9
   0.01%                         0x00007f928cf6d422:   mov    %rbx,%rcx
                                 0x00007f928cf6d425:   and    %r9,%rcx
                                 0x00007f928cf6d428:   or     %rcx,%r11
   0.02%                         0x00007f928cf6d42b:   vmovq  %r11,%xmm3
   0.02%                         0x00007f928cf6d430:   vsubsd -0x130(%rip),%xmm3,%xmm3        # 0x00007f928cf6d308
                                                                                           ;   {section_word}
                                 0x00007f928cf6d438:   vmulsd -0x130(%rip),%xmm3,%xmm3        # 0x00007f928cf6d310
                                                                                           ;   {section_word}
                                 0x00007f928cf6d440:   vaddsd -0x130(%rip),%xmm3,%xmm3        # 0x00007f928cf6d318
                                                                                           ;   {section_word}
   0.03%                         0x00007f928cf6d448:   vaddsd %xmm1,%xmm3,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@32 (line 821)
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.03%                         0x00007f928cf6d44c:   vmovq  %xmm1,%r9                    ;*invokestatic doubleToRawLongBits {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@37 (line 822)
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.00%                         0x00007f928cf6d451:   movabs $0x8000000000000000,%r11
                                 0x00007f928cf6d45b:   mov    %r9,%rcx
   0.03%                         0x00007f928cf6d45e:   and    %r11,%rcx                    ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@63 (line 824)
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.02%                         0x00007f928cf6d461:   movabs $0x7ff0000000000000,%r11
                                 0x00007f928cf6d46b:   mov    %r9,%rsi
                                 0x00007f928cf6d46e:   and    %r11,%rsi
   0.02%                         0x00007f928cf6d471:   sar    $0x34,%rsi
   0.04%                         0x00007f928cf6d475:   mov    %esi,%r11d
                                 0x00007f928cf6d478:   add    $0xfffffc01,%r11d            ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@55 (line 823)
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
                                 0x00007f928cf6d47f:   nop
   0.02%                         0x00007f928cf6d480:   test   %rcx,%rcx
                                 0x00007f928cf6d483:   je     0x00007f928cf6e1d8           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@66 (line 824)
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.01%                         0x00007f928cf6d489:   test   %r11d,%r11d
                                 0x00007f928cf6d48c:   jge    0x00007f928cf6e230           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@78 (line 825)
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
                                 0x00007f928cf6d492:   movabs $0x7fffffffffffffff,%r11
                                 0x00007f928cf6d49c:   and    %r11,%r9                     ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@157 (line 830)
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.02%                         0x00007f928cf6d49f:   nop
   0.01%                         0x00007f928cf6d4a0:   test   %r9,%r9
                                 0x00007f928cf6d4a3:   je     0x00007f928cf6e270           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@160 (line 830)
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
                                 0x00007f928cf6d4a9:   add    %eax,%edx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@194 (line 521)
   0.00%                         0x00007f928cf6d4ab:   mov    %rbx,%r9
   0.03%                         0x00007f928cf6d4ae:   mov    %r13d,%ecx
   0.02%                         0x00007f928cf6d4b1:   shr    %cl,%r9                      ;*lushr {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@228 (line 537)
   0.03%                         0x00007f928cf6d4b4:   mov    %edx,%esi
   0.02%                         0x00007f928cf6d4b6:   sub    %r8d,%esi
                                 0x00007f928cf6d4b9:   mov    %ecx,%ebx
                                 0x00007f928cf6d4bb:   add    %edx,%ebx
   0.03%                         0x00007f928cf6d4bd:   mov    %ebx,%ecx
   0.02%                         0x00007f928cf6d4bf:   add    $0xffffffcd,%ecx             ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@236 (line 538)
                                 0x00007f928cf6d4c2:   cmp    %eax,%ecx
                                 0x00007f928cf6d4c4:   mov    %eax,%r11d
   0.02%                         0x00007f928cf6d4c7:   cmovl  %ecx,%r11d                   ;*invokestatic min {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@243 (line 539)
   0.02%                         0x00007f928cf6d4cb:   sub    %r11d,%esi                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@266 (line 542)
                                 0x00007f928cf6d4ce:   mov    %eax,%edx
                                 0x00007f928cf6d4d0:   sub    %r11d,%edx                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@259 (line 541)
   0.03%                         0x00007f928cf6d4d3:   sub    %r11d,%ebx
   0.02%                         0x00007f928cf6d4d6:   mov    %esi,%r11d
                                 0x00007f928cf6d4d9:   inc    %r11d                        ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@266 (line 542)
                                 0x00007f928cf6d4dc:   mov    %ebx,%ecx
   0.03%                         0x00007f928cf6d4de:   add    $0xffffffcd,%ecx             ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@252 (line 540)
   0.03%                         0x00007f928cf6d4e1:   cmp    $0x1,%r10d
                                 0x00007f928cf6d4e5:   je     0x00007f928cf6e2b8           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@272 (line 550)
                                 0x00007f928cf6d4eb:   test   %r11d,%r11d
                                 0x00007f928cf6d4ee:   jge    0x00007f928cf6e2e4           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@280 (line 554)
                                 0x00007f928cf6d4f4:   sub    %esi,%edx                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@294 (line 559)
   0.03%                         0x00007f928cf6d4f6:   mov    0x14(%rdi),%ecx              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@322 (line 591)
   0.01%                         0x00007f928cf6d4f9:   mov    %ebx,%r8d
                                 0x00007f928cf6d4fc:   sub    %esi,%r8d
   0.00%                         0x00007f928cf6d4ff:   mov    %edx,%r10d
   0.03%                         0x00007f928cf6d502:   add    %ecx,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@365 (line 594)
   0.02%                         0x00007f928cf6d505:   add    %esi,%r13d
                                 0x00007f928cf6d508:   sub    %r13d,%ebx
                                 0x00007f928cf6d50b:   add    %ecx,%ebx
   0.02%                         0x00007f928cf6d50d:   dec    %edx                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@294 (line 559)
   0.02%                         0x00007f928cf6d50f:   inc    %ebx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@330 (line 591)
                                 0x00007f928cf6d511:   add    $0xffffffcc,%r8d             ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@287 (line 558)
                                 0x00007f928cf6d515:   cmp    $0x40,%ebx
                                 0x00007f928cf6d518:   jge    0x00007f928cf6e310           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@372 (line 595)
   0.03%                         0x00007f928cf6d51e:   xchg   %ax,%ax
   0.02%                         0x00007f928cf6d520:   cmp    $0x40,%r10d
                                 0x00007f928cf6d524:   jge    0x00007f928cf6e33c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@379 (line 595)
                                 0x00007f928cf6d52a:   vmovq  %xmm2,%r11
   0.00%                         0x00007f928cf6d52f:   mov    0x1c(%r11),%ecx              ;*getfield digits {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@537 (line 618)
   0.02%                         0x00007f928cf6d533:   vmovd  %ecx,%xmm3
   0.02%                         0x00007f928cf6d537:   mov    $0x2,%r11d                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@698 (line 646)
                                 0x00007f928cf6d53d:   data16 xchg %ax,%ax
   0.00%                         0x00007f928cf6d540:   cmp    $0x20,%ebx
          ╭                      0x00007f928cf6d543:   jl     0x00007f928cf6d77a           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@386 (line 596)
   0.03%  │                      0x00007f928cf6d549:   movabs $0x7ffd4d220,%rcx            ;   {oop([J{0x00000007ffd4d220})}
          │                      0x00007f928cf6d553:   mov    0x10(%rcx),%r10
          │                      0x00007f928cf6d557:   mov    0x18(%rcx),%rdi              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@734 (line 652)
          │                      0x00007f928cf6d55b:   mov    %edx,%ecx
   0.03%  │                      0x00007f928cf6d55d:   shl    %cl,%r10                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@749 (line 653)
          │                      0x00007f928cf6d560:   imul   %rdi,%r9
   0.02%  │                      0x00007f928cf6d564:   mov    %r9,%rax
          │                      0x00007f928cf6d567:   mov    %r8d,%ecx
          │                      0x00007f928cf6d56a:   shl    %cl,%rax                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@738 (line 652)
   0.02%  │                      0x00007f928cf6d56d:   test   %r10,%r10
          │                      0x00007f928cf6d570:   je     0x00007f928cf6e074           ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@778 (line 662)
          │                      0x00007f928cf6d576:   movabs $0x8000000000000000,%rdx
          │                      0x00007f928cf6d580:   cmp    %rdx,%rax
          │╭                     0x00007f928cf6d583:   jne    0x00007f928cf6d58d
          ││                     0x00007f928cf6d585:   xor    %edx,%edx
          ││                     0x00007f928cf6d587:   cmp    $0xffffffffffffffff,%r10
          ││╭                    0x00007f928cf6d58b:   je     0x00007f928cf6d592
   0.02%  │↘│                    0x00007f928cf6d58d:   cqto   
          │ │                    0x00007f928cf6d58f:   idiv   %r10
   0.57%  │ ↘                    0x00007f928cf6d592:   mov    %rax,%rcx
          │                      0x00007f928cf6d595:   mov    %rdi,%r8
          │                      0x00007f928cf6d598:   shl    %r8
   0.02%  │                      0x00007f928cf6d59b:   mov    %rdx,%r9
          │                      0x00007f928cf6d59e:   shl    $0x3,%r9
          │                      0x00007f928cf6d5a2:   shl    %rdx
          │                      0x00007f928cf6d5a5:   mov    %rdx,%rax
   0.03%  │                      0x00007f928cf6d5a8:   add    %r9,%rax                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@790 (line 663)
          │                      0x00007f928cf6d5ab:   mov    %ecx,%ebx                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@779 (line 662)
          │                      0x00007f928cf6d5ad:   shl    $0x3,%rdi
          │                      0x00007f928cf6d5b1:   add    %rdi,%r8                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@798 (line 664)
   0.03%  │                      0x00007f928cf6d5b4:   mov    %r10,%r14
          │                      0x00007f928cf6d5b7:   shl    %r14
          │                      0x00007f928cf6d5ba:   mov    %r10,%r9
          │                      0x00007f928cf6d5bd:   shl    $0x3,%r9
   0.03%  │                      0x00007f928cf6d5c1:   add    %r9,%r14                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@768 (line 655)
          │                      0x00007f928cf6d5c4:   cmp    %r8,%rax
          │                      0x00007f928cf6d5c7:   jl     0x00007f928cf6e5a4           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@806 (line 665)
          │                      0x00007f928cf6d5cd:   mov    %rax,%r9
          │                      0x00007f928cf6d5d0:   add    %r8,%r9                      ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@820 (line 666)
   0.02%  │                      0x00007f928cf6d5d3:   cmp    %r14,%r9
          │                      0x00007f928cf6d5d6:   jg     0x00007f928cf6e610           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@824 (line 666)
   0.00%  │                      0x00007f928cf6d5dc:   nopl   0x0(%rax)
          │                      0x00007f928cf6d5e0:   test   %ebx,%ebx
          │                      0x00007f928cf6d5e2:   je     0x00007f928cf6e67c           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@859 (line 668)
          │                      0x00007f928cf6d5e8:   add    $0x30,%ebx                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@886 (line 672)
   0.03%  │                      0x00007f928cf6d5eb:   mov    %ebx,%r13d
   0.01%  │                      0x00007f928cf6d5ee:   movzwl %r13w,%r13d                  ;*i2c {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@887 (line 672)
          │                      0x00007f928cf6d5f2:   vmovd  %xmm3,%r9d
   0.00%  │                      0x00007f928cf6d5f7:   nopw   0x0(%rax,%rax,1)
   0.02%  │                      0x00007f928cf6d600:   mov    0xc(%r12,%r9,8),%ecx         ; implicit exception: dispatches to 0x00007f928cf6e86c
          │                      0x00007f928cf6d605:   cmp    $0x1,%ecx
          │                      0x00007f928cf6d608:   jbe    0x00007f928cf6e090
          │                      0x00007f928cf6d60e:   mov    %bx,0x10(%r12,%r9,8)         ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@888 (line 672)
   0.00%  │                      0x00007f928cf6d614:   vmovd  %xmm0,%r9d
   0.02%  │                      0x00007f928cf6d619:   test   %r9d,%r9d
   0.00%  │                      0x00007f928cf6d61c:   nopl   0x0(%rax)
          │                      0x00007f928cf6d620:   je     0x00007f928cf6e6d0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@891 (line 680)
          │                      0x00007f928cf6d626:   movabs $0x8000000000000000,%rdx
   0.03%  │                      0x00007f928cf6d630:   cmp    %rdx,%rax
          │  ╭                   0x00007f928cf6d633:   jne    0x00007f928cf6d63d
          │  │                   0x00007f928cf6d635:   xor    %edx,%edx
          │  │                   0x00007f928cf6d637:   cmp    $0xffffffffffffffff,%r10
          │  │╭                  0x00007f928cf6d63b:   je     0x00007f928cf6d642
          │  ↘│                  0x00007f928cf6d63d:   cqto   
          │   │                  0x00007f928cf6d63f:   idiv   %r10
   0.87%  │   ↘                  0x00007f928cf6d642:   vmovq  %rax,%xmm0
   0.01%  │                      0x00007f928cf6d647:   mov    %r8,%rdi
          │                      0x00007f928cf6d64a:   shl    %rdi
   0.00%  │                      0x00007f928cf6d64d:   mov    %rdx,%r9
          │                      0x00007f928cf6d650:   shl    $0x3,%r9
   0.00%  │                      0x00007f928cf6d654:   shl    %rdx
          │                      0x00007f928cf6d657:   add    %r9,%rdx                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.02%  │                      0x00007f928cf6d65a:   shl    $0x3,%r8
   0.00%  │                      0x00007f928cf6d65e:   add    %r8,%rdi                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
   0.00%  │                      0x00007f928cf6d661:   test   %rdi,%rdi
          │                      0x00007f928cf6d664:   jle    0x00007f928cf6e55c           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
          │                      0x00007f928cf6d66a:   cmp    %rdi,%rdx
          │                      0x00007f928cf6d66d:   jl     0x00007f928cf6de09           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.03%  │                      0x00007f928cf6d673:   xor    %r9d,%r9d                    ;*istore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@994 (line 689)
   0.00%  │                      0x00007f928cf6d676:   mov    %rdi,%rax
   0.00%  │                      0x00007f928cf6d679:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
          │                      0x00007f928cf6d67c:   nopl   0x0(%rax)
   0.02%  │                      0x00007f928cf6d680:   cmp    %r14,%rax
          │                      0x00007f928cf6d683:   jg     0x00007f928cf6de14           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
          │                      0x00007f928cf6d689:   vmovq  %rdx,%xmm1
   0.00%  │                      0x00007f928cf6d68e:   xor    %r13d,%r13d                  ;*istore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1012 (line 690)
          │                      0x00007f928cf6d691:   cmp    $0x1,%ecx
          │                      0x00007f928cf6d694:   jle    0x00007f928cf6e0f0
   0.02%  │                      0x00007f928cf6d69a:   vmovq  %xmm0,%r8
   0.00%  │                      0x00007f928cf6d69f:   mov    %r8d,%r8d
   0.01%  │                      0x00007f928cf6d6a2:   add    $0x30,%r8d
          │                      0x00007f928cf6d6a6:   vmovd  %xmm3,%ebx
   0.02%  │                      0x00007f928cf6d6aa:   mov    %r8w,0x12(%r12,%rbx,8)       ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
          │                      0x00007f928cf6d6b0:   vmovq  %xmm1,%r8
   0.01%  │                      0x00007f928cf6d6b5:   cmp    %rdi,%r8
          │    ╭                 0x00007f928cf6d6b8:   jl     0x00007f928cf6da54           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
          │    │                 0x00007f928cf6d6be:   xchg   %ax,%ax
   0.03%  │    │                 0x00007f928cf6d6c0:   test   %r13d,%r13d
          │    │                 0x00007f928cf6d6c3:   jne    0x00007f928cf6e7ac           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
   0.00%  │    │                 0x00007f928cf6d6c9:   vmovq  %xmm1,%rax
   0.01%  │    │                 0x00007f928cf6d6ce:   movabs $0x8000000000000000,%rdx
          │    │                 0x00007f928cf6d6d8:   cmp    %rdx,%rax
          │    │╭                0x00007f928cf6d6db:   jne    0x00007f928cf6d6e5
          │    ││                0x00007f928cf6d6dd:   xor    %edx,%edx
          │    ││                0x00007f928cf6d6df:   cmp    $0xffffffffffffffff,%r10
          │    ││╭               0x00007f928cf6d6e3:   je     0x00007f928cf6d6ea
   0.03%  │    │↘│               0x00007f928cf6d6e5:   cqto   
   0.00%  │    │ │               0x00007f928cf6d6e7:   idiv   %r10
   1.01%  │    │ ↘               0x00007f928cf6d6ea:   vmovq  %rax,%xmm0
   0.00%  │    │                 0x00007f928cf6d6ef:   mov    %rdi,%rsi
          │    │                 0x00007f928cf6d6f2:   shl    %rsi
   0.02%  │    │                 0x00007f928cf6d6f5:   mov    %rdx,%r8
   0.01%  │    │                 0x00007f928cf6d6f8:   shl    $0x3,%r8
          │    │                 0x00007f928cf6d6fc:   shl    %rdx
          │    │                 0x00007f928cf6d6ff:   add    %r8,%rdx                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.03%  │    │                 0x00007f928cf6d702:   shl    $0x3,%rdi
   0.01%  │    │                 0x00007f928cf6d706:   add    %rdi,%rsi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
   0.00%  │    │                 0x00007f928cf6d709:   test   %rsi,%rsi
          │    │                 0x00007f928cf6d70c:   jle    0x00007f928cf6e7b9           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
          │    │                 0x00007f928cf6d712:   cmp    %rsi,%rdx
          │    │                 0x00007f928cf6d715:   jl     0x00007f928cf6de25           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.02%  │    │                 0x00007f928cf6d71b:   xor    %r9d,%r9d                    ;*istore {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@994 (line 689)
   0.01%  │    │                 0x00007f928cf6d71e:   mov    %rsi,%rax
   0.00%  │    │                 0x00007f928cf6d721:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
          │    │                 0x00007f928cf6d724:   cmp    %r14,%rax
          │    │                 0x00007f928cf6d727:   jg     0x00007f928cf6de30           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
   0.01%  │    │                 0x00007f928cf6d72d:   xor    %r13d,%r13d                  ;*istore {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1012 (line 690)
   0.01%  │    │                 0x00007f928cf6d730:   mov    %ecx,(%rsp)
          │    │                 0x00007f928cf6d733:   vmovq  %r10,%xmm4
          │    │                 0x00007f928cf6d738:   lea    (%r12,%rbx,8),%rbp
   0.03%  │    │                 0x00007f928cf6d73c:   nopl   0x0(%rax)
   0.00%  │    │                 0x00007f928cf6d740:   cmp    $0x2,%ecx
          │    │                 0x00007f928cf6d743:   jle    0x00007f928cf6e368           ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
          │    │                 0x00007f928cf6d749:   mov    (%rsp),%r10d
          │    │                 0x00007f928cf6d74d:   sub    %r11d,%r10d
   0.03%  │    │                 0x00007f928cf6d750:   mov    (%rsp),%r8d
   0.01%  │    │                 0x00007f928cf6d754:   xor    %ecx,%ecx
          │    │                 0x00007f928cf6d756:   cmp    %r11d,%r8d
          │    │                 0x00007f928cf6d759:   cmovl  %ecx,%r10d
   0.02%  │    │                 0x00007f928cf6d75d:   cmp    $0x3e8,%r10d
   0.00%  │    │                 0x00007f928cf6d764:   mov    $0x3e8,%ebx
          │    │                 0x00007f928cf6d769:   cmova  %ebx,%r10d
   0.03%  │    │                 0x00007f928cf6d76d:   add    %r11d,%r10d
   0.00%  │    │                 0x00007f928cf6d770:   vmovq  %rdx,%xmm1
          │    │  ╭              0x00007f928cf6d775:   jmp    0x00007f928cf6d9b0
          ↘    │  │              0x00007f928cf6d77a:   nopw   0x0(%rax,%rax,1)
   0.02%       │  │              0x00007f928cf6d780:   cmp    $0x20,%r10d
               │  │              0x00007f928cf6d784:   jge    0x00007f928cf6e57c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@393 (line 596)
               │  │              0x00007f928cf6d78a:   mov    %r9d,%eax
               │  │              0x00007f928cf6d78d:   movabs $0x7ffd4d1d8,%r9             ;   {oop([I{0x00000007ffd4d1d8})}
               │  │              0x00007f928cf6d797:   mov    0x10(%r9),%r10d
   0.02%       │  │              0x00007f928cf6d79b:   mov    0x14(%r9),%r9d               ;*iaload {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@403 (line 598)
               │  │              0x00007f928cf6d79f:   mov    %edx,%ecx
   0.00%       │  │              0x00007f928cf6d7a1:   shl    %cl,%r10d                    ;*ishl {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@418 (line 599)
   0.04%       │  │              0x00007f928cf6d7a4:   imul   %r9d,%eax
   0.00%       │  │              0x00007f928cf6d7a8:   mov    %r8d,%ecx
               │  │              0x00007f928cf6d7ab:   shl    %cl,%eax                     ;*ishl {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@407 (line 598)
   0.03%       │  │              0x00007f928cf6d7ad:   test   %r10d,%r10d
               │  │              0x00007f928cf6d7b0:   je     0x00007f928cf6e084           ;*idiv {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@446 (line 608)
               │  │              0x00007f928cf6d7b6:   cmp    $0x80000000,%eax
               │  │╭             0x00007f928cf6d7bb:   jne    0x00007f928cf6d7c5
               │  ││             0x00007f928cf6d7bd:   xor    %edx,%edx
               │  ││             0x00007f928cf6d7bf:   cmp    $0xffffffff,%r10d
               │  ││╭            0x00007f928cf6d7c3:   je     0x00007f928cf6d7c9
   0.02%       │  │↘│            0x00007f928cf6d7c5:   cltd   
               │  │ │            0x00007f928cf6d7c6:   idiv   %r10d
   0.21%       │  │ ↘            0x00007f928cf6d7c9:   mov    %r9d,%r8d
   0.01%       │  │              0x00007f928cf6d7cc:   shl    %r8d
               │  │              0x00007f928cf6d7cf:   mov    %edx,%ebx
   0.00%       │  │              0x00007f928cf6d7d1:   shl    $0x3,%ebx
   0.02%       │  │              0x00007f928cf6d7d4:   shl    %edx
   0.01%       │  │              0x00007f928cf6d7d6:   add    %ebx,%edx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@456 (line 609)
   0.03%       │  │              0x00007f928cf6d7d8:   shl    $0x3,%r9d
               │  │              0x00007f928cf6d7dc:   add    %r9d,%r8d                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@463 (line 610)
               │  │              0x00007f928cf6d7df:   mov    %r10d,%ebx
   0.00%       │  │              0x00007f928cf6d7e2:   shl    %ebx
   0.02%       │  │              0x00007f928cf6d7e4:   mov    %r10d,%r9d
               │  │              0x00007f928cf6d7e7:   shl    $0x3,%r9d
               │  │              0x00007f928cf6d7eb:   add    %r9d,%ebx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@436 (line 601)
   0.00%       │  │              0x00007f928cf6d7ee:   mov    %ebx,0x1c(%rsp)
   0.01%       │  │              0x00007f928cf6d7f2:   cmp    %r8d,%edx
               │  │              0x00007f928cf6d7f5:   jl     0x00007f928cf6e5e4           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@470 (line 611)
               │  │              0x00007f928cf6d7fb:   mov    %edx,%ecx
               │  │              0x00007f928cf6d7fd:   add    %r8d,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@484 (line 612)
   0.00%       │  │              0x00007f928cf6d800:   cmp    %ebx,%ecx
               │  │              0x00007f928cf6d802:   jg     0x00007f928cf6e650           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@487 (line 612)
   0.02%       │  │              0x00007f928cf6d808:   mov    %eax,%r9d
               │  │              0x00007f928cf6d80b:   test   %eax,%eax
               │  │              0x00007f928cf6d80d:   je     0x00007f928cf6e6a8           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@522 (line 614)
               │  │              0x00007f928cf6d813:   add    $0x30,%r9d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@549 (line 618)
   0.01%       │  │              0x00007f928cf6d817:   mov    %r9d,%ecx
   0.02%       │  │              0x00007f928cf6d81a:   movzwl %cx,%ecx                     ;*i2c {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@550 (line 618)
               │  │              0x00007f928cf6d81d:   vmovd  %xmm3,%ebx
               │  │              0x00007f928cf6d821:   mov    0xc(%r12,%rbx,8),%edi        ; implicit exception: dispatches to 0x00007f928cf6e87c
   0.01%       │  │              0x00007f928cf6d826:   cmp    $0x1,%edi
               │  │              0x00007f928cf6d829:   jbe    0x00007f928cf6e0c4
   0.01%       │  │              0x00007f928cf6d82f:   mov    %r9w,0x10(%r12,%rbx,8)       ;*castore {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@551 (line 618)
               │  │              0x00007f928cf6d835:   vmovd  %xmm0,%r9d
               │  │              0x00007f928cf6d83a:   nopw   0x0(%rax,%rax,1)
   0.00%       │  │              0x00007f928cf6d840:   test   %r9d,%r9d
               │  │              0x00007f928cf6d843:   je     0x00007f928cf6e6f8           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@554 (line 626)
   0.02%       │  │              0x00007f928cf6d849:   mov    %edx,%eax
               │  │              0x00007f928cf6d84b:   cmp    $0x80000000,%eax
               │  │  ╭           0x00007f928cf6d850:   jne    0x00007f928cf6d85a
               │  │  │           0x00007f928cf6d852:   xor    %edx,%edx
               │  │  │           0x00007f928cf6d854:   cmp    $0xffffffff,%r10d
               │  │  │╭          0x00007f928cf6d858:   je     0x00007f928cf6d85e
               │  │  ↘│          0x00007f928cf6d85a:   cltd   
   0.01%       │  │   │          0x00007f928cf6d85b:   idiv   %r10d
   0.51%       │  │   ↘          0x00007f928cf6d85e:   vmovd  %eax,%xmm0
   0.01%       │  │              0x00007f928cf6d862:   mov    %r8d,%ebx
               │  │              0x00007f928cf6d865:   shl    %ebx
               │  │              0x00007f928cf6d867:   mov    %edx,%r9d
   0.02%       │  │              0x00007f928cf6d86a:   shl    $0x3,%r9d
   0.01%       │  │              0x00007f928cf6d86e:   shl    %edx
               │  │              0x00007f928cf6d870:   add    %r9d,%edx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@601 (line 631)
   0.01%       │  │              0x00007f928cf6d873:   shl    $0x3,%r8d
   0.00%       │  │              0x00007f928cf6d877:   add    %r8d,%ebx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@608 (line 632)
   0.01%       │  │              0x00007f928cf6d87a:   test   %ebx,%ebx
   0.01%       │  │              0x00007f928cf6d87c:   nopl   0x0(%rax)
   0.02%       │  │              0x00007f928cf6d880:   jle    0x00007f928cf6e56b           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@639 (line 634)
               │  │              0x00007f928cf6d886:   cmp    %ebx,%edx
               │  │              0x00007f928cf6d888:   jl     0x00007f928cf6e71c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@646 (line 635)
   0.01%       │  │              0x00007f928cf6d88e:   mov    %ebx,%ecx
   0.00%       │  │              0x00007f928cf6d890:   add    %edx,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@660 (line 636)
   0.01%       │  │              0x00007f928cf6d892:   cmp    0x1c(%rsp),%ecx
               │  │              0x00007f928cf6d896:   jg     0x00007f928cf6dc75           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@663 (line 636)
   0.01%       │  │              0x00007f928cf6d89c:   xor    %r9d,%r9d                    ;*istore {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@671 (line 636)
   0.01%       │  │              0x00007f928cf6d89f:   nop
   0.00%       │  │              0x00007f928cf6d8a0:   cmp    $0x1,%edi
               │  │              0x00007f928cf6d8a3:   jle    0x00007f928cf6e158
   0.01%       │  │              0x00007f928cf6d8a9:   mov    %eax,%r8d
   0.01%       │  │              0x00007f928cf6d8ac:   add    $0x30,%r8d
   0.01%       │  │              0x00007f928cf6d8b0:   vmovd  %xmm3,%eax
   0.00%       │  │              0x00007f928cf6d8b4:   mov    %r8w,0x12(%r12,%rax,8)       ;*castore {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
   0.01%       │  │              0x00007f928cf6d8ba:   nopw   0x0(%rax,%rax,1)
   0.00%       │  │              0x00007f928cf6d8c0:   cmp    0x1c(%rsp),%ecx
               │  │              0x00007f928cf6d8c4:   jg     0x00007f928cf6dcc4           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@584 (line 629)
   0.01%       │  │              0x00007f928cf6d8ca:   mov    %edx,%eax
   0.00%       │  │              0x00007f928cf6d8cc:   cmp    $0x80000000,%eax
               │  │    ╭         0x00007f928cf6d8d1:   jne    0x00007f928cf6d8db
               │  │    │         0x00007f928cf6d8d3:   xor    %edx,%edx
               │  │    │         0x00007f928cf6d8d5:   cmp    $0xffffffff,%r10d
               │  │    │╭        0x00007f928cf6d8d9:   je     0x00007f928cf6d8df
   0.01%       │  │    ↘│        0x00007f928cf6d8db:   cltd   
   0.01%       │  │     │        0x00007f928cf6d8dc:   idiv   %r10d
   0.48%       │  │     ↘        0x00007f928cf6d8df:   vmovd  %eax,%xmm0
   0.01%       │  │              0x00007f928cf6d8e3:   mov    %ebx,%r14d
   0.01%       │  │              0x00007f928cf6d8e6:   shl    %r14d
               │  │              0x00007f928cf6d8e9:   mov    %edx,%r9d
   0.01%       │  │              0x00007f928cf6d8ec:   shl    $0x3,%r9d
   0.01%       │  │              0x00007f928cf6d8f0:   shl    %edx
   0.00%       │  │              0x00007f928cf6d8f2:   add    %r9d,%edx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@601 (line 631)
   0.01%       │  │              0x00007f928cf6d8f5:   shl    $0x3,%ebx
   0.01%       │  │              0x00007f928cf6d8f8:   add    %ebx,%r14d                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@608 (line 632)
   0.01%       │  │              0x00007f928cf6d8fb:   nopl   0x0(%rax,%rax,1)
   0.01%       │  │              0x00007f928cf6d900:   test   %r14d,%r14d
               │  │              0x00007f928cf6d903:   jle    0x00007f928cf6e7c6           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@639 (line 634)
   0.00%       │  │              0x00007f928cf6d909:   cmp    %r14d,%edx
               │  │              0x00007f928cf6d90c:   jl     0x00007f928cf6e7d0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@646 (line 635)
   0.01%       │  │              0x00007f928cf6d912:   mov    %r14d,%r9d
   0.01%       │  │              0x00007f928cf6d915:   add    %edx,%r9d
   0.00%       │  │              0x00007f928cf6d918:   nopl   0x0(%rax,%rax,1)
   0.00%       │  │              0x00007f928cf6d920:   cmp    0x1c(%rsp),%r9d
               │  │              0x00007f928cf6d925:   jg     0x00007f928cf6dcce           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@663 (line 636)
   0.01%       │  │              0x00007f928cf6d92b:   xor    %eax,%eax                    ;*istore {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@671 (line 636)
   0.01%       │  │              0x00007f928cf6d92d:   vmovd  %r10d,%xmm4
   0.00%       │  │              0x00007f928cf6d932:   mov    %edi,%r10d
   0.00%       │  │              0x00007f928cf6d935:   mov    %edi,(%rsp)
   0.01%       │  │              0x00007f928cf6d938:   dec    %r10d
   0.01%       │  │              0x00007f928cf6d93b:   vmovd  %xmm3,%r8d
   0.00%       │  │              0x00007f928cf6d940:   lea    (%r12,%r8,8),%rsi
   0.00%       │  │              0x00007f928cf6d944:   mov    $0x80000000,%r8d
   0.02%       │  │              0x00007f928cf6d94a:   cmp    %r10d,%edi
   0.01%       │  │              0x00007f928cf6d94d:   cmovl  %r8d,%r10d
   0.01%       │  │              0x00007f928cf6d951:   cmp    $0x2,%r10d
               │  │              0x00007f928cf6d955:   jle    0x00007f928cf6e467           ;*castore {reexecute=0 rethrow=0 return_oop=0}
               │  │                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
               │  │              0x00007f928cf6d95b:   mov    %r10d,%ebx
   0.01%       │  │              0x00007f928cf6d95e:   sub    %r11d,%ebx
   0.01%       │  │              0x00007f928cf6d961:   xor    %r8d,%r8d
   0.01%       │  │              0x00007f928cf6d964:   cmp    %r11d,%r10d
   0.00%       │  │              0x00007f928cf6d967:   cmovl  %r8d,%ebx
   0.01%       │  │              0x00007f928cf6d96b:   cmp    $0x7d0,%ebx
   0.02%       │  │              0x00007f928cf6d971:   mov    $0x7d0,%r9d
   0.00%       │  │              0x00007f928cf6d977:   cmova  %r9d,%ebx
   0.01%       │  │              0x00007f928cf6d97b:   add    %r11d,%ebx
   0.01%       │  │              0x00007f928cf6d97e:   mov    %edx,%r13d
   0.01%       │  │              0x00007f928cf6d981:   jmp    0x00007f928cf6daf6
               │  │              0x00007f928cf6d986:   data16 nopw 0x0(%rax,%rax,1)
   0.03%       │  │         ↗    0x00007f928cf6d990:   xor    %r8d,%r8d                    ;*istore {reexecute=0 rethrow=0 return_oop=0}
               │  │         │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1012 (line 690)
   0.00%       │  │         │↗   0x00007f928cf6d993:   cmp    %r10d,%ecx
               │  │         ││   0x00007f928cf6d996:   jge    0x00007f928cf6de85
   0.00%       │  │         ││   0x00007f928cf6d99c:   mov    %r11d,%edi
   0.31%       │  │         ││   0x00007f928cf6d99f:   mov    %ecx,%r11d
   0.05%       │  │         ││   0x00007f928cf6d9a2:   mov    %r8d,%r13d
   0.00%       │  │         ││   0x00007f928cf6d9a5:   mov    %rbx,%rsi
   0.00%       │  │         ││   0x00007f928cf6d9a8:   vmovq  %rdx,%xmm1
   0.27%       │  │         ││   0x00007f928cf6d9ad:   mov    %edi,%r9d                    ;*castore {reexecute=0 rethrow=0 return_oop=0}
               │  │         ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.04%       │  ↘         ││   0x00007f928cf6d9b0:   vmovq  %xmm0,%r8
   0.02%       │            ││   0x00007f928cf6d9b5:   mov    %r8d,%ebx
   0.01%       │            ││   0x00007f928cf6d9b8:   mov    %r11d,%ecx
   0.28%       │            ││   0x00007f928cf6d9bb:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
               │            ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1029 (line 700)
   0.07%       │            ││   0x00007f928cf6d9bd:   add    $0x30,%ebx
   0.02%       │            ││   0x00007f928cf6d9c0:   mov    %bx,0x10(%rbp,%r11,2)        ;*castore {reexecute=0 rethrow=0 return_oop=0}
               │            ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.01%       │            ││   0x00007f928cf6d9c6:   vmovq  %xmm1,%r11
   0.27%       │            ││   0x00007f928cf6d9cb:   cmp    %rsi,%r11
               │         ╭  ││   0x00007f928cf6d9ce:   jl     0x00007f928cf6da59           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
               │         │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
   0.02%       │         │  ││   0x00007f928cf6d9d4:   test   %r13d,%r13d
               │         │  ││   0x00007f928cf6d9d7:   jne    0x00007f928cf6deae           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
               │         │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
   0.03%       │         │  ││   0x00007f928cf6d9dd:   vmovq  %xmm1,%rax
   0.01%       │         │  ││   0x00007f928cf6d9e2:   vmovq  %xmm4,%r11
   0.27%       │         │  ││   0x00007f928cf6d9e7:   movabs $0x8000000000000000,%rdx
   0.04%       │         │  ││   0x00007f928cf6d9f1:   cmp    %rdx,%rax
               │         │╭ ││   0x00007f928cf6d9f4:   jne    0x00007f928cf6d9fe
               │         ││ ││   0x00007f928cf6d9f6:   xor    %edx,%edx
               │         ││ ││   0x00007f928cf6d9f8:   cmp    $0xffffffffffffffff,%r11
               │         ││╭││   0x00007f928cf6d9fc:   je     0x00007f928cf6da03
   0.03%       │         │↘│││   0x00007f928cf6d9fe:   cqto   
   0.01%       │         │ │││   0x00007f928cf6da00:   idiv   %r11
  14.05%       │         │ ↘││   0x00007f928cf6da03:   vmovq  %rax,%xmm0
               │         │  ││   0x00007f928cf6da08:   mov    %rsi,%rbx
   0.01%       │         │  ││   0x00007f928cf6da0b:   shl    %rbx
   0.30%       │         │  ││   0x00007f928cf6da0e:   mov    %rdx,%r11
   0.02%       │         │  ││   0x00007f928cf6da11:   shl    $0x3,%r11
               │         │  ││   0x00007f928cf6da15:   shl    %rdx
   0.01%       │         │  ││   0x00007f928cf6da18:   add    %r11,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
               │         │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.30%       │         │  ││   0x00007f928cf6da1b:   mov    %rsi,%r11
   0.03%       │         │  ││   0x00007f928cf6da1e:   shl    $0x3,%r11
   0.00%       │         │  ││   0x00007f928cf6da22:   add    %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
               │         │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
   0.01%       │         │  ││   0x00007f928cf6da25:   test   %rbx,%rbx
               │         │  ││   0x00007f928cf6da28:   jle    0x00007f928cf6deec           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
               │         │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
   0.33%       │         │  ││   0x00007f928cf6da2e:   cmp    %rbx,%rdx
               │         │  ││   0x00007f928cf6da31:   jl     0x00007f928cf6dacc           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
               │         │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.02%       │         │  ││   0x00007f928cf6da37:   xor    %r11d,%r11d                  ;*istore {reexecute=0 rethrow=0 return_oop=0}
               │         │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@994 (line 689)
   0.02%       │         │  ││   0x00007f928cf6da3a:   mov    %rdx,%rax
               │         │  ││   0x00007f928cf6da3d:   add    %rbx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
               │         │  ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
   0.30%       │         │  ││   0x00007f928cf6da40:   cmp    %r14,%rax
               │         │  ╰│   0x00007f928cf6da43:   jle    0x00007f928cf6d990           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
               │         │   │                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
               │         │   │   0x00007f928cf6da49:   mov    $0x1,%r8d
   0.03%       │         │   ╰   0x00007f928cf6da4f:   jmp    0x00007f928cf6d993
               ↘         │       0x00007f928cf6da54:   mov    $0x2,%ecx                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
                         │                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1067 (line 704)
   0.03%                 ↘       0x00007f928cf6da59:   vmovq  %xmm1,%r10
                                 0x00007f928cf6da5e:   shl    %r10
                                 0x00007f928cf6da61:   sub    %r14,%r10                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1048 (line 702)
                                 0x00007f928cf6da64:   vmovq  %xmm1,%r11
   0.03%                         0x00007f928cf6da69:   test   %r11,%r11
                                 0x00007f928cf6da6c:   je     0x00007f928cf6e758           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1056 (line 703)
                                 0x00007f928cf6da72:   vmovq  %xmm2,%r11
                                 0x00007f928cf6da77:   mov    %ecx,0x14(%r11)              ;*putfield nDigits {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1442 (line 762)
                                 0x00007f928cf6da7b:   mov    %r12d,0xc(%r11)              ;*putfield decExponent {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1431 (line 760)
   0.03%                         0x00007f928cf6da7f:   mov    %r12d,0x10(%r11)             ;*putfield firstDigitIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1436 (line 761)
                                 0x00007f928cf6da83:   cmp    %r14,%rax
                                 0x00007f928cf6da86:   jle    0x00007f928cf6e790           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1447 (line 766)
                                 0x00007f928cf6da8c:   test   %r9d,%r9d
                                 0x00007f928cf6da8f:   je     0x00007f928cf6dc17           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1452 (line 767)
   0.00%                         0x00007f928cf6da95:   xor    %r11d,%r11d
   0.01%                         0x00007f928cf6da98:   cmp    %r11,%r10
                                 0x00007f928cf6da9b:   mov    $0xffffffff,%ebp
                              ╭  0x00007f928cf6daa0:   jl     0x00007f928cf6daaa
                              │  0x00007f928cf6daa2:   setne  %bpl
                              │  0x00007f928cf6daa6:   movzbl %bpl,%ebp                    ;*lcmp {reexecute=0 rethrow=0 return_oop=0}
                              │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1458 (line 768)
   0.00%                      ↘  0x00007f928cf6daaa:   test   %r10,%r10
                                 0x00007f928cf6daad:   je     0x00007f928cf6e7da
   0.02%                         0x00007f928cf6dab3:   test   %r10,%r10
                                 0x00007f928cf6dab6:   jle    0x00007f928cf6dc62           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1459 (line 768)
                                 0x00007f928cf6dabc:   mov    $0xffffff45,%esi
                                 0x00007f928cf6dac1:   vmovsd %xmm2,(%rsp)
                                 0x00007f928cf6dac6:   nop
                                 0x00007f928cf6dac7:   call   0x00007f928ca01600           ; ImmutableOopMap {[0]=Oop }
                                                                                           ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                                                           ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1494 (line 774)
                                                                                           ;   {runtime_call UncommonTrapBlob}
                                 0x00007f928cf6dacc:   mov    $0x1,%r11d
....................................................................................................
  23.50%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.util.Formatter::format, version 2, compile id 609 

                 0x00007f928cf775bf:   add    $0xfffffffffffffff8,%r10     ;*invokestatic indexOf {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.String::indexOf@13 (line 2419)
                                                                           ; - java.util.Formatter::parse@29 (line 2720)
                                                                           ; - java.util.Formatter::format@12 (line 2671)
                 0x00007f928cf775c3:   mov    %r10,0x40(%r15)              ;*invokevirtual grow {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.ArrayList::add@7 (line 454)
                                                                           ; - java.util.ArrayList::add@20 (line 467)
                                                                           ; - java.util.Formatter::parse@129 (line 2738)
                                                                           ; - java.util.Formatter::format@12 (line 2671)
                 0x00007f928cf775c7:   jmp    0x00007f928cf770ef
   0.01%         0x00007f928cf775cc:   mov    0x2c(%rsp),%r11d
   0.02%      ↗  0x00007f928cf775d1:   test   %r9d,%r9d
          ╭   │  0x00007f928cf775d4:   jle    0x00007f928cf7781b           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                            ; - java.util.Formatter::parse@22 (line 2719)
          │   │                                                            ; - java.util.Formatter::format@12 (line 2671)
          │   │  0x00007f928cf775da:   mov    %r9d,%ecx                    ;*invokevirtual isLatin1 {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                            ; - java.lang.String::indexOf@1 (line 2419)
          │   │                                                            ; - java.util.Formatter::parse@29 (line 2720)
          │   │                                                            ; - java.util.Formatter::format@12 (line 2671)
          │   │  0x00007f928cf775dd:   data16 xchg %ax,%ax
   0.00%  │   │  0x00007f928cf775e0:   test   %ecx,%ecx
          │   │  0x00007f928cf775e2:   je     0x00007f928cf77e16           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                            ; - java.util.Formatter::parse@211 (line 2753)
          │   │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.00%  │   │  0x00007f928cf775e8:   movslq %ecx,%r8
   0.00%  │   │  0x00007f928cf775eb:   movslq %r9d,%rcx
   0.00%  │   │  0x00007f928cf775ee:   dec    %rcx
          │   │  0x00007f928cf775f1:   cmp    %r8,%rcx
          │   │  0x00007f928cf775f4:   jae    0x00007f928cf77e3c           ;*putfield elementData {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                            ; - java.util.ArrayList::grow@41 (line 237)
          │   │                                                            ; - java.util.ArrayList::grow@7 (line 244)
          │   │                                                            ; - java.util.ArrayList::add@7 (line 454)
          │   │                                                            ; - java.util.ArrayList::add@20 (line 467)
          │   │                                                            ; - java.util.Formatter::parse@129 (line 2738)
          │   │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.02%  │   │  0x00007f928cf775fa:   mov    0x14(%r10),%edx              ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                            ; - java.lang.StringLatin1::charAt@25 (line 50)
          │   │                                                            ; - java.lang.String::charAt@12 (line 1513)
          │   │                                                            ; - java.util.Formatter::parse@105 (line 2736)
          │   │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.00%  │   │  0x00007f928cf775fe:   xchg   %ax,%ax
   0.00%  │   │  0x00007f928cf77600:   mov    0xc(%r12,%rdx,8),%ebx        ; implicit exception: dispatches to 0x00007f928cf77fc8
          │   │                                                            ;*putfield elementData {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                            ; - java.util.ArrayList::grow@41 (line 237)
          │   │                                                            ; - java.util.ArrayList::grow@7 (line 244)
          │   │                                                            ; - java.util.ArrayList::add@7 (line 454)
          │   │                                                            ; - java.util.ArrayList::add@20 (line 467)
          │   │                                                            ; - java.util.Formatter::parse@129 (line 2738)
          │   │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.01%  │   │  0x00007f928cf77605:   test   %ebx,%ebx
          │   │  0x00007f928cf77607:   jbe    0x00007f928cf77e4a           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                            ; - java.util.Formatter::parse@22 (line 2719)
          │   │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.02%  │   │  0x00007f928cf7760d:   movslq %ebx,%r8
          │   │  0x00007f928cf77610:   cmp    %r8,%rcx
          │   │  0x00007f928cf77613:   jae    0x00007f928cf77e43           ;*putfield elementData {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                            ; - java.util.ArrayList::grow@41 (line 237)
          │   │                                                            ; - java.util.ArrayList::grow@7 (line 244)
          │   │                                                            ; - java.util.ArrayList::add@7 (line 454)
          │   │                                                            ; - java.util.ArrayList::add@20 (line 467)
          │   │                                                            ; - java.util.Formatter::parse@129 (line 2738)
          │   │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.01%  │   │  0x00007f928cf77619:   mov    0x10(%rsp),%rax
          │   │  0x00007f928cf7761e:   xchg   %ax,%ax
          │   │  0x00007f928cf77620:   mov    0xc(%rax),%esi               ; implicit exception: dispatches to 0x00007f928cf77e1b
          │   │                                                            ;*invokevirtual parse {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.00%  │   │  0x00007f928cf77623:   mov    %esi,%edi
   0.02%  │   │  0x00007f928cf77625:   dec    %edi                         ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                            ; - java.lang.String::isLatin1@7 (line 4549)
          │   │                                                            ; - java.lang.String::indexOf@1 (line 2419)
          │   │                                                            ; - java.util.Formatter::parse@29 (line 2720)
          │   │                                                            ; - java.util.Formatter::format@12 (line 2671)
          │   │  0x00007f928cf77627:   lea    (%r12,%rdx,8),%r13
          │   │  0x00007f928cf7762b:   xor    %r8d,%r8d
   0.01%  │╭  │  0x00007f928cf7762e:   jmp    0x00007f928cf7764f           ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - java.lang.StringLatin1::charAt@21 (line 50)
          ││  │                                                            ; - java.lang.String::charAt@12 (line 1513)
          ││  │                                                            ; - java.util.Formatter::parse@105 (line 2736)
          ││  │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.11%  ││ ↗│  0x00007f928cf77630:   mov    0x8(%rsp),%rax
   0.00%  ││ ││  0x00007f928cf77635:   mov    0x10(%rsp),%r10
   0.00%  ││ ││  0x00007f928cf7763a:   mov    0x24(%rsp),%r9d
   0.02%  ││ ││  0x00007f928cf7763f:   mov    0x28(%rsp),%esi
   0.15%  ││ ││  0x00007f928cf77643:   mov    0x2c(%rsp),%edi
          ││ ││  0x00007f928cf77647:   mov    0x30(%rsp),%r13
   0.04%  ││ ││  0x00007f928cf7764c:   mov    %r11d,%r8d                   ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││ ││                                                            ; - java.util.Formatter::parse@36 (line 2721)
          ││ ││                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.03%  │↘ ││  0x00007f928cf7764f:   mov    0x10(%r13,%r11,4),%ecx       ;*invokestatic charAt {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.lang.String::charAt@12 (line 1513)
          │  ││                                                            ; - java.util.Formatter::parse@105 (line 2736)
          │  ││                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.56%  │  ││  0x00007f928cf77654:   mov    0x8(%r12,%rcx,8),%edx        ; implicit exception: dispatches to 0x00007f928cf77f1c
   0.63%  │  ││  0x00007f928cf77659:   nopl   0x0(%rax)
          │  ││  0x00007f928cf77660:   cmp    $0x243f28,%edx               ;   {metadata(&apos;java/util/Formatter$FormatSpecifier&apos;)}
          │  ││  0x00007f928cf77666:   jne    0x00007f928cf77ed0           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.util.Formatter::parse@36 (line 2721)
          │  ││                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.18%  │  ││  0x00007f928cf7766c:   lea    (%r12,%rcx,8),%rbx
   0.00%  │  ││  0x00007f928cf77670:   mov    0xc(%rbx),%edx               ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.lang.String::isLatin1@3 (line 4549)
          │  ││                                                            ; - java.lang.String::indexOf@1 (line 2419)
          │  ││                                                            ; - java.util.Formatter::parse@29 (line 2720)
          │  ││                                                            ; - java.util.Formatter::format@12 (line 2671)
          │  ││  0x00007f928cf77673:   test   %edx,%edx
          │  ││  0x00007f928cf77675:   jne    0x00007f928cf77b9c
   0.15%  │  ││  0x00007f928cf7767b:   nopl   0x0(%rax,%rax,1)
          │  ││  0x00007f928cf77680:   cmp    %edi,%r8d
          │  ││  0x00007f928cf77683:   jg     0x00007f928cf77d0c           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.util.Formatter::parse@62 (line 2727)
          │  ││                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.01%  │  ││  0x00007f928cf77689:   cmp    %esi,%r8d
          │  ││  0x00007f928cf7768c:   jae    0x00007f928cf77ae0           ;*synchronization entry
          │  ││                                                            ; - java.util.Formatter::format@-1 (line 2664)
          │  ││  0x00007f928cf77692:   mov    0x10(%rax,%r8,4),%edx        ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.util.Formatter::parse@62 (line 2727)
          │  ││                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.14%  │  ││  0x00007f928cf77697:   movzbl 0x1a(%rbx),%ebp              ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.lang.String::isLatin1@10 (line 4549)
          │  ││                                                            ; - java.lang.String::indexOf@1 (line 2419)
          │  ││                                                            ; - java.util.Formatter::parse@29 (line 2720)
          │  ││                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.00%  │  ││  0x00007f928cf7769b:   test   %ebp,%ebp
   0.00%  │  ││  0x00007f928cf7769d:   data16 xchg %ax,%ax
          │  ││  0x00007f928cf776a0:   jne    0x00007f928cf77d40           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.util.Formatter::parse@62 (line 2727)
          │  ││                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.17%  │  ││  0x00007f928cf776a6:   movzwl 0x18(%rbx),%ebp              ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.lang.String::isLatin1@10 (line 4549)
          │  ││                                                            ; - java.lang.String::indexOf@1 (line 2419)
          │  ││                                                            ; - java.util.Formatter::parse@29 (line 2720)
          │  ││                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.00%  │  ││  0x00007f928cf776aa:   cmp    $0x73,%ebp
          │  ││  0x00007f928cf776ad:   jne    0x00007f928cf77bcc           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.util.Formatter::parse@62 (line 2727)
          │  ││                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.00%  │  ││  0x00007f928cf776b3:   mov    0x8(%r12,%rdx,8),%ecx        ; implicit exception: dispatches to 0x00007f928cf77f44
          │  ││  0x00007f928cf776b8:   mov    %r8d,0x38(%rsp)
   0.17%  │  ││  0x00007f928cf776bd:   mov    %r13,0x30(%rsp)
   0.00%  │  ││  0x00007f928cf776c2:   mov    %edi,0x2c(%rsp)
          │  ││  0x00007f928cf776c6:   mov    %esi,0x28(%rsp)
          │  ││  0x00007f928cf776ca:   mov    %r9d,0x24(%rsp)
   0.17%  │  ││  0x00007f928cf776cf:   mov    %r11d,0x20(%rsp)
   0.04%  │  ││  0x00007f928cf776d4:   mov    %r10,0x10(%rsp)
   0.02%  │  ││  0x00007f928cf776d9:   mov    %rax,0x8(%rsp)
   0.02%  │  ││  0x00007f928cf776de:   movabs $0x800000000,%rsi
   0.15%  │  ││  0x00007f928cf776e8:   add    %rcx,%rsi
   0.03%  │  ││  0x00007f928cf776eb:   mov    0x20(%rsi),%r10
   0.24%  │  ││  0x00007f928cf776ef:   movabs $0x800243af0,%r11            ;   {metadata(&apos;java/util/Formattable&apos;)}
   0.00%  │  ││  0x00007f928cf776f9:   cmp    %r11,%r10
   0.15%  │  ││  0x00007f928cf776fc:   nopl   0x0(%rax)
          │  ││  0x00007f928cf77700:   je     0x00007f928cf77b10
   0.09%  │  ││  0x00007f928cf77706:   movabs $0x800243af0,%rax            ;   {metadata(&apos;java/util/Formattable&apos;)}
          │  ││  0x00007f928cf77710:   mov    0x28(%rsi),%rdi
   0.11%  │  ││  0x00007f928cf77714:   mov    (%rdi),%ecx
   0.55%  │  ││  0x00007f928cf77716:   add    $0x8,%rdi
   0.00%  │  ││  0x00007f928cf7771a:   test   %rax,%rax
   1.44%  │  ││  0x00007f928cf7771d:   repnz scas %es:(%rdi),%rax
   6.31%  │ ╭││  0x00007f928cf77720:   jne    0x00007f928cf7772a
          │ │││  0x00007f928cf77726:   mov    %rax,0x20(%rsi)
   1.00%  │ ↘││  0x00007f928cf7772a:   je     0x00007f928cf77b10           ;*aastore {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.util.ArrayList::add@14 (line 455)
          │  ││                                                            ; - java.util.ArrayList::add@20 (line 467)
          │  ││                                                            ; - java.util.Formatter::parse@129 (line 2738)
          │  ││                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.33%  │  ││  0x00007f928cf77730:   mov    0x1c(%rbx),%r8d
   0.75%  │  ││  0x00007f928cf77734:   test   %r8d,%r8d
          │  ││  0x00007f928cf77737:   je     0x00007f928cf77b30           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.util.Formatter::parse@90 (line 2732)
          │  ││                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.19%  │  ││  0x00007f928cf7773d:   mov    %rbx,0x40(%rsp)
   0.07%  │  ││  0x00007f928cf77742:   movabs $0x7fee33d88,%r10            ;   {oop(a &apos;java/util/Formatter$Flags&apos;{0x00000007fee33d88})}
          │  ││  0x00007f928cf7774c:   mov    0xc(%r10),%r10d              ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.lang.String::indexOf@4 (line 2419)
          │  ││                                                            ; - java.util.Formatter::parse@29 (line 2720)
          │  ││                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.22%  │  ││  0x00007f928cf77750:   mov    %r10d,%ebp
          │  ││  0x00007f928cf77753:   and    0xc(%r12,%r8,8),%ebp         ;*synchronization entry
          │  ││                                                            ; - java.lang.String::indexOf@-1 (line 2419)
          │  ││                                                            ; - java.util.Formatter::parse@29 (line 2720)
          │  ││                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.53%  │  ││  0x00007f928cf77758:   cmp    %r10d,%ebp
   0.19%  │  ││  0x00007f928cf7775b:   nopl   0x0(%rax,%rax,1)
          │  ││  0x00007f928cf77760:   je     0x00007f928cf77d74           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.lang.StringLatin1::charAt@1 (line 47)
          │  ││                                                            ; - java.lang.String::charAt@12 (line 1513)
          │  ││                                                            ; - java.util.Formatter::parse@105 (line 2736)
          │  ││                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.14%  │  ││  0x00007f928cf77766:   lea    (%r12,%rdx,8),%rsi           ;*invokevirtual parse {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.util.Formatter::format@12 (line 2671)
          │  ││  0x00007f928cf7776a:   mov    (%rsp),%rbp
          │  ││  0x00007f928cf7776e:   data16 xchg %ax,%ax
          │  ││  0x00007f928cf77771:   movabs $0x80000eba0,%rax
   0.18%  │  ││  0x00007f928cf7777b:   call   0x00007f928c9f8ae0           ; ImmutableOopMap {rbp=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop [48]=Oop [64]=Oop }
          │  ││                                                            ;*invokevirtual toString {reexecute=0 rethrow=0 return_oop=1}
          │  ││                                                            ; - java.util.Formatter$FormatSpecifier::printString@99 (line 3056)
          │  ││                                                            ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
          │  ││                                                            ; - java.util.Formatter::format@202 (line 2689)
          │  ││                                                            ;   {virtual_call}
   0.46%  │  ││  0x00007f928cf77780:   mov    0x40(%rsp),%r8
   0.65%  │  ││  0x00007f928cf77785:   mov    0x14(%r8),%ebp               ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.lang.String::indexOf@4 (line 2419)
          │  ││                                                            ; - java.util.Formatter::parse@29 (line 2720)
          │  ││                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.63%  │  ││  0x00007f928cf77789:   cmp    $0xffffffff,%ebp
          │  ││  0x00007f928cf7778c:   jne    0x00007f928cf77d9c           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.util.Formatter::parse@90 (line 2732)
          │  ││                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.22%  │  ││  0x00007f928cf77792:   mov    0x1c(%r8),%r10d              ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.util.Formatter$Conversion::isText@1 (line 4780)
          │  ││                                                            ; - java.util.Formatter$FormatSpecifier::&lt;init&gt;@64 (line 2873)
          │  ││                                                            ; - java.util.Formatter::parse@126 (line 2738)
          │  ││                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.00%  │  ││  0x00007f928cf77796:   test   %r10d,%r10d
          │  ││  0x00007f928cf77799:   je     0x00007f928cf77b4c           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.util.Formatter::parse@90 (line 2732)
          │  ││                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.09%  │  ││  0x00007f928cf7779f:   movabs $0x7fee33d78,%r11            ;   {oop(a &apos;java/util/Formatter$Flags&apos;{0x00000007fee33d78})}
          │  ││  0x00007f928cf777a9:   mov    0xc(%r11),%r9d               ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.lang.String::indexOf@7 (line 2419)
          │  ││                                                            ; - java.util.Formatter::parse@29 (line 2720)
          │  ││                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.10%  │  ││  0x00007f928cf777ad:   mov    %r9d,%ebp
   0.00%  │  ││  0x00007f928cf777b0:   and    0xc(%r12,%r10,8),%ebp        ;*invokevirtual indexOf {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.util.Formatter::parse@29 (line 2720)
          │  ││                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.61%  │  ││  0x00007f928cf777b5:   cmp    %r9d,%ebp
          │  ││  0x00007f928cf777b8:   je     0x00007f928cf77dbc           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.util.Formatter::parse@90 (line 2732)
          │  ││                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.16%  │  ││  0x00007f928cf777be:   mov    0x20(%r8),%r10d              ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.util.Formatter$Conversion::isText@1 (line 4780)
          │  ││                                                            ; - java.util.Formatter$FormatSpecifier::&lt;init&gt;@64 (line 2873)
          │  ││                                                            ; - java.util.Formatter::parse@126 (line 2738)
          │  ││                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.00%  │  ││  0x00007f928cf777c2:   mov    0x10(%r12,%r10,8),%r9d       ; implicit exception: dispatches to 0x00007f928cf77f6c
          │  ││                                                            ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.util.Formatter::parse@105 (line 2736)
          │  ││                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.09%  │  ││  0x00007f928cf777c7:   mov    0x10(%r8),%ebp               ;*invokestatic indexOf {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.lang.String::indexOf@13 (line 2419)
          │  ││                                                            ; - java.util.Formatter::parse@29 (line 2720)
          │  ││                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.00%  │  ││  0x00007f928cf777cb:   cmp    $0xffffffff,%ebp
          │  ││  0x00007f928cf777ce:   jne    0x00007f928cf77c59           ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.util.Formatter::parse@105 (line 2736)
          │  ││                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.12%  │  ││  0x00007f928cf777d4:   mov    0x8(%r12,%r9,8),%r10d        ; implicit exception: dispatches to 0x00007f928cf77f88
   0.75%  │  ││  0x00007f928cf777d9:   nopl   0x0(%rax)
          │  ││  0x00007f928cf777e0:   cmp    $0xf6c8,%r10d                ;   {metadata(&apos;java/lang/StringBuilder&apos;)}
          │  ││  0x00007f928cf777e7:   jne    0x00007f928cf77c00           ;*invokestatic indexOfChar {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.lang.StringLatin1::indexOf@32 (line 213)
          │  ││                                                            ; - java.lang.String::indexOf@13 (line 2419)
          │  ││                                                            ; - java.util.Formatter::parse@29 (line 2720)
          │  ││                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.14%  │  ││  0x00007f928cf777ed:   lea    (%r12,%r9,8),%rbp            ;*invokevirtual parse {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.01%  │  ││  0x00007f928cf777f1:   mov    %rax,%rdx
          │  ││  0x00007f928cf777f4:   test   %rax,%rax
          │  ││  0x00007f928cf777f7:   je     0x00007f928cf77de0           ;*invokestatic indexOfChar {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.lang.StringLatin1::indexOf@32 (line 213)
          │  ││                                                            ; - java.lang.String::indexOf@13 (line 2419)
          │  ││                                                            ; - java.util.Formatter::parse@29 (line 2720)
          │  ││                                                            ; - java.util.Formatter::format@12 (line 2671)
          │  ││  0x00007f928cf777fd:   mov    %rbp,%rsi
   0.20%  │  ││  0x00007f928cf77800:   data16 xchg %ax,%ax
          │  ││  0x00007f928cf77803:   call   0x00007f928cf6ade0           ; ImmutableOopMap {rbp=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop [48]=Oop }
          │  ││                                                            ;*invokevirtual append {reexecute=0 rethrow=0 return_oop=1}
          │  ││                                                            ; - java.lang.StringBuilder::append@2 (line 91)
          │  ││                                                            ; - java.lang.AbstractStringBuilder::append@21 (line 622)
          │  ││                                                            ; - java.lang.StringBuilder::append@2 (line 209)
          │  ││                                                            ; - java.lang.StringBuilder::append@2 (line 91)
          │  ││                                                            ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
          │  ││                                                            ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
          │  ││                                                            ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
          │  ││                                                            ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
          │  ││                                                            ; - java.util.Formatter::format@202 (line 2689)
          │  ││                                                            ;   {optimized virtual_call}
   0.04%  │  ││  0x00007f928cf77808:   mov    0x20(%rsp),%r11d
   0.31%  │  ││  0x00007f928cf7780d:   inc    %r11d                        ;*invokespecial &lt;init&gt; {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.util.AbstractList::&lt;init&gt;@1 (line 78)
          │  ││                                                            ; - java.util.ArrayList::&lt;init&gt;@1 (line 168)
          │  ││                                                            ; - java.util.Formatter::parse@4 (line 2715)
          │  ││                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.10%  │  ││  0x00007f928cf77810:   cmp    0x24(%rsp),%r11d
          │  ╰│  0x00007f928cf77815:   jl     0x00007f928cf77630           ;*new {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                            ; - java.util.Formatter::parse@0 (line 2715)
          │   │                                                            ; - java.util.Formatter::format@12 (line 2671)
   0.00%  ↘   │  0x00007f928cf7781b:   mov    0x18(%rsp),%rax
   0.00%      │  0x00007f928cf77820:   add    $0x80,%rsp
   0.02%      │  0x00007f928cf77827:   pop    %rbp
   0.01%      │  0x00007f928cf77828:   cmp    0x340(%r15),%rsp             ;   {poll_return}
              │  0x00007f928cf7782f:   ja     0x00007f928cf7813c
   0.01%      │  0x00007f928cf77835:   ret    
              │  0x00007f928cf77836:   xor    %r11d,%r11d
              │  0x00007f928cf77839:   xor    %r9d,%r9d
              │  0x00007f928cf7783c:   nopl   0x0(%rax)
              ╰  0x00007f928cf77840:   jmp    0x00007f928cf775d1
                 0x00007f928cf77845:   mov    0x38(%rsp),%ebp
                 0x00007f928cf77849:   sub    %r8d,%ebp
                 0x00007f928cf7784c:   mov    %r8d,%r9d
                 0x00007f928cf7784f:   sar    %r9d                         ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.StringLatin1::charAt@21 (line 50)
                                                                           ; - java.lang.String::charAt@12 (line 1513)
....................................................................................................
  20.16%  <total for region 2>

....[Hottest Regions]...............................................................................
  23.50%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 563 
  20.16%         c2, level 4  java.util.Formatter::format, version 2, compile id 609 
   5.25%         c2, level 4  java.lang.StringBuilder::append, version 4, compile id 557 
   4.50%         c2, level 4  java.util.Formatter::format, version 2, compile id 609 
   4.31%         c2, level 4  java.util.Formatter::format, version 2, compile id 609 
   4.01%         c2, level 4  java.lang.Long::toString, version 2, compile id 616 
   3.10%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 563 
   3.00%         c2, level 4  java.lang.Double::toString, version 2, compile id 629 
   2.86%         c2, level 4  java.lang.StringBuilder::append, version 4, compile id 557 
   2.78%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.18%         c2, level 4  java.lang.Float::toString, version 2, compile id 632 
   1.91%         c2, level 4  java.lang.Long::toString, version 2, compile id 616 
   1.84%         c2, level 4  java.lang.Long::toString, version 2, compile id 613 
   1.53%         c2, level 4  java.lang.Integer::toString, version 2, compile id 630 
   1.17%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.15%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format, version 2, compile id 626 
   1.02%         c2, level 4  java.lang.StringBuilder::append, version 4, compile id 557 
   0.98%              kernel  [unknown] 
   0.95%         c2, level 4  java.lang.Integer::toString, version 2, compile id 630 
   0.95%         c2, level 4  java.lang.Boolean::toString, version 2, compile id 636 
  12.84%  <...other 460 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  29.47%         c2, level 4  java.util.Formatter::format, version 2, compile id 609 
  26.99%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 563 
  10.25%         c2, level 4  java.lang.StringBuilder::append, version 4, compile id 557 
   6.47%         c2, level 4  java.lang.Long::toString, version 2, compile id 616 
   3.24%         c2, level 4  java.lang.Double::toString, version 2, compile id 629 
   2.95%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format, version 2, compile id 626 
   2.90%         c2, level 4  java.lang.Float::toString, version 2, compile id 632 
   2.78%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.53%         c2, level 4  java.lang.Integer::toString, version 2, compile id 630 
   1.97%              kernel  [unknown] 
   1.84%         c2, level 4  java.lang.Long::toString, version 2, compile id 613 
   1.46%         c2, level 4  java.lang.StringBuilder::toString, version 2, compile id 628 
   1.17%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   0.95%         c2, level 4  java.lang.Boolean::toString, version 2, compile id 636 
   0.93%         c2, level 4  java.lang.String::toString, version 2, compile id 540 
   0.81%                      <unknown> 
   0.74%         c2, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::getChars, version 2, compile id 611 
   0.66%         c2, level 4  java.util.Formatter$Conversion::isValid, version 2, compile id 565 
   0.59%        runtime stub  StubRoutines::jshort_disjoint_arraycopy 
   0.39%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.StringConcatenationBenchmark_string_format_jmhTest::string_format_avgt_jmhStub, version 5, compile id 661 
   0.92%  <...other 172 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  91.76%         c2, level 4
   4.54%        runtime stub
   1.97%              kernel
   0.81%                    
   0.69%           libjvm.so
   0.14%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.02%          ld-2.31.so
   0.01%         interpreter
   0.00%              [vdso]
   0.00%     perf-111781.map
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:14:23

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

Benchmark                                         (capacity)  (coder)  Mode  Cnt     Score   Error  Units
StringConcatenationBenchmark.plus_operator               128   LATIN1  avgt    5   767.927 ± 0.635  ns/op
StringConcatenationBenchmark.plus_operator:·asm          128   LATIN1  avgt            NaN            ---
StringConcatenationBenchmark.plus_operator               128    UTF16  avgt    5   689.797 ± 0.319  ns/op
StringConcatenationBenchmark.plus_operator:·asm          128    UTF16  avgt            NaN            ---
StringConcatenationBenchmark.string_buffer               128   LATIN1  avgt    5   893.711 ± 0.721  ns/op
StringConcatenationBenchmark.string_buffer:·asm          128   LATIN1  avgt            NaN            ---
StringConcatenationBenchmark.string_buffer               128    UTF16  avgt    5   895.763 ± 1.386  ns/op
StringConcatenationBenchmark.string_buffer:·asm          128    UTF16  avgt            NaN            ---
StringConcatenationBenchmark.string_builder              128   LATIN1  avgt    5   854.549 ± 3.637  ns/op
StringConcatenationBenchmark.string_builder:·asm         128   LATIN1  avgt            NaN            ---
StringConcatenationBenchmark.string_builder              128    UTF16  avgt    5   859.166 ± 0.985  ns/op
StringConcatenationBenchmark.string_builder:·asm         128    UTF16  avgt            NaN            ---
StringConcatenationBenchmark.string_format               128   LATIN1  avgt    5  1550.584 ± 2.526  ns/op
StringConcatenationBenchmark.string_format:·asm          128   LATIN1  avgt            NaN            ---
StringConcatenationBenchmark.string_format               128    UTF16  avgt    5  1535.903 ± 0.949  ns/op
StringConcatenationBenchmark.string_format:·asm          128    UTF16  avgt            NaN            ---
